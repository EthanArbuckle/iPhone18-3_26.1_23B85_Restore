@interface QLZipArchive
- (BOOL)_reopenWithError:(id *)a3;
- (QLZipArchive)initWithData:(id)a3 error:(id *)a4;
- (QLZipArchive)initWithURL:(id)a3 error:(id *)a4;
- (id)fileWrapper;
- (id)libarchiveError;
- (id)readCurrentDataWithEntry:(archive_entry *)a3 error:(id *)a4;
- (void)dealloc;
- (void)enumerateEntriesWithHandler:(id)a3;
@end

@implementation QLZipArchive

- (id)libarchiveError
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (self->_archive)
  {
    v2 = archive_error_string();
    if (v2)
    {
      v7 = *MEMORY[0x277CCA450];
      v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:v2];
      v8[0] = v3;
      v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    }

    else
    {
      v4 = 0;
    }

    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:archive_errno() userInfo:v4];
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:12 userInfo:0];
  }

  return v5;
}

- (QLZipArchive)initWithURL:(id)a3 error:(id *)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = QLZipArchive;
  v8 = [(QLZipArchive *)&v12 init];
  v9 = v8;
  if (v8 && (objc_storeStrong(&v8->_url, a3), ![(QLZipArchive *)v9 _reopenWithError:a4]))
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

- (QLZipArchive)initWithData:(id)a3 error:(id *)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = QLZipArchive;
  v8 = [(QLZipArchive *)&v12 init];
  v9 = v8;
  if (v8 && (objc_storeStrong(&v8->_data, a3), ![(QLZipArchive *)v9 _reopenWithError:a4]))
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

- (BOOL)_reopenWithError:(id *)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = archive_read_new();
  self->_archive = v5;
  if (v5)
  {
    if (archive_read_support_filter_all() || archive_read_support_format_all())
    {
      v6 = _qlsLogHandle;
      if (!_qlsLogHandle)
      {
        QLSInitLogging();
        v6 = _qlsLogHandle;
      }

      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      url = self->_url;
      v18 = 138412290;
      v19 = url;
      v8 = "Could not configure archive struct to unzip %@ #Conversion";
    }

    else
    {
      v14 = self->_url;
      if (v14 && ([(NSURL *)v14 fileSystemRepresentation], archive_read_open_filename()))
      {
        v6 = _qlsLogHandle;
        if (!_qlsLogHandle)
        {
          QLSInitLogging();
          v6 = _qlsLogHandle;
        }

        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_9;
        }

        v15 = self->_url;
        v18 = 138412290;
        v19 = v15;
        v8 = "Could not unzip %@ #Conversion";
      }

      else
      {
        data = self->_data;
        if (!data)
        {
          return 1;
        }

        [(NSData *)data bytes];
        [(NSData *)self->_data length];
        if (!archive_read_open_memory())
        {
          return 1;
        }

        v6 = _qlsLogHandle;
        if (!_qlsLogHandle)
        {
          QLSInitLogging();
          v6 = _qlsLogHandle;
        }

        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_9;
        }

        v17 = self->_url;
        v18 = 138412290;
        v19 = v17;
        v8 = "Could not unzip %@ #Conversion";
      }
    }

    _os_log_impl(&dword_2615AE000, v6, OS_LOG_TYPE_DEFAULT, v8, &v18, 0xCu);
LABEL_9:
    if (a3)
    {
      *a3 = [(QLZipArchive *)self libarchiveError];
    }

    archive_read_free();
    result = 0;
    self->_archive = 0;
    return result;
  }

  v10 = _qlsLogHandle;
  if (!_qlsLogHandle)
  {
    QLSInitLogging();
    v10 = _qlsLogHandle;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = self->_url;
    v18 = 138412290;
    v19 = v11;
    _os_log_impl(&dword_2615AE000, v10, OS_LOG_TYPE_DEFAULT, "Could not create archive struct to unzip %@ #Conversion", &v18, 0xCu);
  }

  if (!a3)
  {
    return 0;
  }

  v12 = [(QLZipArchive *)self libarchiveError];
  v13 = v12;
  result = 0;
  *a3 = v12;
  return result;
}

- (id)readCurrentDataWithEntry:(archive_entry *)a3 error:(id *)a4
{
  v4 = MEMORY[0x28223BE20](self, a2, a3, a4);
  v6 = v5;
  v7 = v4;
  v18 = *MEMORY[0x277D85DE8];
  if (archive_entry_size_is_set())
  {
    v8 = archive_entry_size();
    v9 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:v8];
    [v9 setLength:v8];
    [v9 mutableBytes];
    if (archive_read_data() < 1)
    {
      v13 = _qlsLogHandle;
      if (!_qlsLogHandle)
      {
        QLSInitLogging();
        v13 = _qlsLogHandle;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        v16 = 136315138;
        v17 = archive_error_string();
        _os_log_impl(&dword_2615AE000, v14, OS_LOG_TYPE_DEFAULT, "Error reading archive: %s #Conversion", &v16, 0xCu);
      }

      if (v6)
      {
        [v7 libarchiveError];
        *v6 = v10 = 0;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = v9;
    }
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB28]);
    data = archive_read_data();
    if (data)
    {
      v12 = data;
      do
      {
        [v10 appendBytes:&v16 length:v12];
        v12 = archive_read_data();
      }

      while (v12);
    }
  }

  return v10;
}

- (void)enumerateEntriesWithHandler:(id)a3
{
  v4 = a3;
  v13 = 0;
  if (self->_archive)
  {
LABEL_4:
    while (1)
    {
      next_header = archive_read_next_header();
      if (next_header)
      {
        break;
      }

      v9 = objc_alloc_init(QLZipArchiveEntry);
      [(QLZipArchiveEntry *)v9 setArchive:self];
      [(QLZipArchiveEntry *)v9 setEntry:0];
      v4[2](v4, v9, 0, &v13);
      archive_read_data_skip();
      v10 = v13;

      if (v10)
      {
        goto LABEL_9;
      }
    }

    if (next_header != 1)
    {
      v11 = [(QLZipArchive *)self libarchiveError];
      (v4)[2](v4, 0, v11, &v13);
    }

LABEL_9:
    archive_read_free();
    self->_archive = 0;
  }

  else
  {
    v12 = 0;
    v5 = [(QLZipArchive *)self _reopenWithError:&v12];
    v6 = v12;
    v7 = v6;
    if (v5)
    {

      goto LABEL_4;
    }

    (v4)[2](v4, 0, v6, &v13);
  }
}

- (id)fileWrapper
{
  fileWrapper = self->_fileWrapper;
  if (fileWrapper)
  {
    v3 = fileWrapper;
  }

  else
  {
    v5 = objc_opt_new();
    v6 = objc_alloc(MEMORY[0x277CCAA20]);
    v7 = [v6 initDirectoryWithFileWrappers:MEMORY[0x277CBEC10]];
    v8 = self->_fileWrapper;
    self->_fileWrapper = v7;

    [v5 setObject:self->_fileWrapper forKey:@"/"];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __27__QLZipArchive_fileWrapper__block_invoke;
    v11[3] = &unk_279ADB640;
    v11[4] = self;
    v12 = v5;
    v9 = v5;
    [(QLZipArchive *)self enumerateEntriesWithHandler:v11];
    v3 = self->_fileWrapper;
  }

  return v3;
}

void __27__QLZipArchive_fileWrapper__block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 url];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_22;
  }

  v6 = [v4 URLByDeletingLastPathComponent];
  v7 = [v6 relativePath];
  if ([v7 isEqualToString:@"/"])
  {

    goto LABEL_5;
  }

  v8 = [v6 relativePath];
  v9 = [v8 isEqualToString:@"."];

  if (v9)
  {
LABEL_5:
    v10 = [*(a1 + 32) fileWrapper];
    if (v10)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  v11 = *(a1 + 40);
  v12 = [v6 relativePath];
  v10 = [v11 objectForKeyedSubscript:v12];

  if (v10)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = [v6 lastPathComponent];
  v14 = objc_alloc(MEMORY[0x277CCAA20]);
  v10 = [v14 initDirectoryWithFileWrappers:MEMORY[0x277CBEC10]];
  [v10 setPreferredFilename:v13];
  v15 = *(a1 + 40);
  v16 = [v6 relativePath];
  [v15 setObject:v10 forKey:v16];

  v17 = [v6 URLByDeletingLastPathComponent];
  v18 = [v17 relativePath];
  if ([v18 isEqualToString:@"/"])
  {
  }

  else
  {
    v19 = [v17 relativePath];
    v20 = [v19 isEqualToString:@"."];

    if (!v20)
    {
      v23 = *(a1 + 40);
      v21 = [v17 relativePath];
      v24 = [v23 objectForKeyedSubscript:v21];
      v25 = [v24 addFileWrapper:v10];

      goto LABEL_13;
    }
  }

  v21 = [*(a1 + 40) objectForKeyedSubscript:@"/"];
  v22 = [v21 addFileWrapper:v10];
LABEL_13:

LABEL_14:
  v31 = 0;
  v26 = [v3 readDataWithError:&v31];
  v27 = v31;
  if (v27 || ![v26 length])
  {
    v28 = _qlsLogHandle;
    if (!_qlsLogHandle)
    {
      QLSInitLogging();
      v28 = _qlsLogHandle;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v33 = v27;
      _os_log_impl(&dword_2615AE000, v28, OS_LOG_TYPE_ERROR, "Error while reading data: %@ #ZIPHandling", buf, 0xCu);
    }
  }

  else
  {
    v29 = [v5 lastPathComponent];
    v30 = [v10 addRegularFileWithContents:v26 preferredFilename:v29];
  }

LABEL_22:
}

- (void)dealloc
{
  if (self->_archive)
  {
    archive_read_free();
  }

  v3.receiver = self;
  v3.super_class = QLZipArchive;
  [(QLZipArchive *)&v3 dealloc];
}

@end