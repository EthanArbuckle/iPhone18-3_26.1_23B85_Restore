@interface PFCachingArchiveIndex
- (BOOL)createIndexFromArchiveFile:(id)a3 tempIndexFile:(id)a4;
- (BOOL)indexFileValid:(const char *)a3;
- (BOOL)loadOrCreateIndex;
- (BOOL)makeAndCacheIndexFileInDirectory:(id)a3 indexPath:(id)a4;
- (id)dataArchivePath;
- (id)indexPath:(id *)a3;
- (unique_ptr<pf::ArchiveLineParser,)archiveLineParserForIndexPath:(id)a3;
@end

@implementation PFCachingArchiveIndex

- (BOOL)loadOrCreateIndex
{
  v13 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&[PFCachingArchiveIndex loadOrCreateIndex]::cacheLock);
  if (!self->_loaded)
  {
    if ([(PFCachingArchiveIndex *)self indexSupported])
    {
      v9 = 0;
      v3 = [(PFCachingArchiveIndex *)self indexPath:&v9];
      v4 = v9;
      v5 = v3;
      v6 = [v3 fileSystemRepresentation];
      if (![(PFCachingArchiveIndex *)self indexFileValid:v6]&& [(PFCachingArchiveIndex *)self makeAndCacheIndexFileInDirectory:v4 indexPath:v3])
      {
        if (stat(v6, &v10) || (v10.st_mode & 0x80000000) == 0)
        {
          v7 = *__error();
          if (v7 != 2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v12 = v7;
            _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unexpected result checking if archive file exists: %d.", buf, 8u);
          }
        }

        else
        {
          [(PFCachingArchiveIndex *)self loadIndexFile:v6 fileSize:v10.st_size];
        }
      }
    }

    self->_loaded = 1;
  }

  os_unfair_lock_unlock(&[PFCachingArchiveIndex loadOrCreateIndex]::cacheLock);
  return 1;
}

- (BOOL)createIndexFromArchiveFile:(id)a3 tempIndexFile:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  archive_read_new();
  v20[1] = 0;
  archive_read_support_filter_bzip2();
  archive_read_support_format_raw();
  [v6 fileSystemRepresentation];
  if (archive_read_open_filename() || archive_read_next_header())
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __dst = 136315394;
      v22 = [(PFCachingArchiveIndex *)self indexLabel];
      v23 = 2080;
      v24 = archive_error_string();
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error opening %s source file: %s.", &__dst, 0x16u);
    }

    archive_read_free();
    v8 = 0;
  }

  else
  {
    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v20[0] = 0;
    v11 = [v10 removeItemAtPath:v7 error:v20];
    v12 = v20[0];

    if (v11 & 1) != 0 || [v12 code] == 4 && (objc_msgSend(v12, "domain"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", *MEMORY[0x1E696A250]), v14, (v15))
    {
      [(PFCachingArchiveIndex *)self archiveLineParserForIndexPath:v7];
      v18 = [(PFCachingArchiveIndex *)self indexLabel];
      do
      {
        data_block = archive_read_data_block();
      }

      while (!data_block);
      if (data_block == 1)
      {
        v8 = 1;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v17 = archive_error_string();
          *buf = 136315394;
          v26 = v18;
          v27 = 2080;
          v28 = v17;
          _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error decoding %s source archive file: %s.", buf, 0x16u);
        }

        v8 = 0;
      }

      archive_read_free();
      (*(*v19 + 24))();
      if (v19)
      {
        (*(*v19 + 8))();
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v16 = [(PFCachingArchiveIndex *)self indexLabel];
        __dst = 136315394;
        v22 = v16;
        v23 = 2112;
        v24 = v12;
        _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error removing old %s index: %@", &__dst, 0x16u);
      }

      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)makeAndCacheIndexFileInDirectory:(id)a3 indexPath:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 stringByAppendingString:@".tmp"];
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [(PFCachingArchiveIndex *)self dataArchivePath];
  if (!v10)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = [(PFCachingArchiveIndex *)self indexName];
      *buf = 138412290;
      v23 = v15;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error cannot use nil data archive path for %@.", buf, 0xCu);
    }

    goto LABEL_17;
  }

  v21 = 0;
  v11 = [v9 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v21];
  v12 = v21;
  if ((v11 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = [(PFCachingArchiveIndex *)self indexLabel];
      *buf = 136315650;
      v23 = v17;
      v24 = 2112;
      v25 = v6;
      v26 = 2112;
      v27 = v12;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error making cache directory for %s index %@: %@", buf, 0x20u);
    }

    goto LABEL_16;
  }

  [v9 removeItemAtPath:v7 error:0];
  if (![(PFCachingArchiveIndex *)self createIndexFromArchiveFile:v10 tempIndexFile:v8])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = [(PFCachingArchiveIndex *)self indexLabel];
      *buf = 136315394;
      v23 = v18;
      v24 = 2112;
      v25 = v12;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error creating %s index file %@", buf, 0x16u);
    }

LABEL_16:

LABEL_17:
    v13 = 0;
    goto LABEL_18;
  }

  v20 = 0;
  v13 = [v9 moveItemAtPath:v8 toPath:v7 error:&v20];
  v14 = v20;
  if ((v13 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = [(PFCachingArchiveIndex *)self indexLabel];
      *buf = 136315906;
      v23 = v19;
      v24 = 2112;
      v25 = v8;
      v26 = 2112;
      v27 = v7;
      v28 = 2112;
      v29 = v14;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error renaming %s index file %@ to %@: %@", buf, 0x2Au);
    }

    [v9 removeItemAtPath:v8 error:0];
  }

LABEL_18:
  return v13;
}

- (BOOL)indexFileValid:(const char *)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (!stat(a3, &v7) && v7.st_mode < 0)
  {
    return [(PFCachingArchiveIndex *)self loadIndexFile:a3 fileSize:v7.st_size];
  }

  v6 = *__error();
  if (v6 != 2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v9 = v6;
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unexpected result checking if archive file exists: %d.", buf, 8u);
  }

  return 0;
}

- (id)indexPath:(id *)a3
{
  v5 = NSTemporaryDirectory();
  v6 = [MEMORY[0x1E696AE30] processInfo];
  v7 = [v6 processName];
  v8 = [v5 stringByAppendingFormat:@"com.apple.%@", v7];

  v9 = [(PFCachingArchiveIndex *)self indexName];
  v10 = [v9 stringByAppendingPathExtension:@"index"];

  v11 = [v8 stringByAppendingPathComponent:v10];
  if (a3)
  {
    v12 = v8;
    *a3 = v8;
  }

  return v11;
}

- (id)dataArchivePath
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [(PFCachingArchiveIndex *)self indexName];
  v5 = [v3 pathForResource:v4 ofType:@"bz2"];

  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [(PFCachingArchiveIndex *)self indexName];
    v8 = [v3 bundlePath];
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error finding %{public}@ data archive resource in bundle %{public}@.", &v9, 0x16u);
  }

  return v5;
}

- (unique_ptr<pf::ArchiveLineParser,)archiveLineParserForIndexPath:(id)a3
{
  v4 = v3;
  v5.var0 = [(PFCachingArchiveIndex *)self doesNotRecognizeSelector:a2];
  *v4 = 0;
  return v5;
}

@end