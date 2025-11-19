@interface SSCompressionHelper
+ (id)sharedInstance;
- (char)getDataOutWithSize:(unint64_t)a3 withFlag:(unint64_t)a4 fd:(int *)a5;
- (int)unTarFileWithFd:(id)a3 toPath:(id)a4;
- (int)unpackageTarForFd:(int)a3 size:(unint64_t)a4 parentDir:(const char *)a5;
- (void)uncompressedContentsForCompressedFile:(id)a3 outPath:(id)a4;
@end

@implementation SSCompressionHelper

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SSCompressionHelper_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_shared;

  return v2;
}

uint64_t __37__SSCompressionHelper_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_shared = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (char)getDataOutWithSize:(unint64_t)a3 withFlag:(unint64_t)a4 fd:(int *)a5
{
  *a5 = -1;
  TemporaryFileOfSize = allocateTemporaryFileOfSize(a3, a4);
  if (TemporaryFileOfSize < 0)
  {
    v10 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SSCompressionHelper getDataOutWithSize:withFlag:fd:];
    }
  }

  else
  {
    v8 = TemporaryFileOfSize;
    result = mmap(0, a3, 3, 1, TemporaryFileOfSize, 0);
    if (result != -1)
    {
      *a5 = v8;
      return result;
    }

    close(v8);
    v10 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SSCompressionHelper getDataOutWithSize:withFlag:fd:];
    }
  }

  return 0;
}

- (void)uncompressedContentsForCompressedFile:(id)a3 outPath:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E695DEF0];
  v7 = a3;
  v25 = 0;
  v8 = [[v6 alloc] initWithContentsOfFile:v7 options:8 error:&v25];

  v9 = v25;
  if (v9)
  {
    v10 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SSCompressionHelper uncompressedContentsForCompressedFile:outPath:];
    }

    goto LABEL_16;
  }

  v24 = -1;
  v23 = -1;
  v11 = [v8 length];
  v12 = [v8 bytes];
  v13 = *(v12 - 1);
  v14 = doBlockDecompression(v12, v11 - 8, v13, &v24, COMPRESSION_LZFSE, &v23);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__SSCompressionHelper_uncompressedContentsForCompressedFile_outPath___block_invoke;
  aBlock[3] = &__block_descriptor_52_e5_v8__0l;
  v15 = v24;
  aBlock[4] = v24;
  aBlock[5] = v14;
  v22 = v23;
  v16 = _Block_copy(aBlock);
  v10 = v16;
  if (!v14)
  {
    v16[2](v16);
    v20 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [SSCompressionHelper uncompressedContentsForCompressedFile:outPath:];
    }

    goto LABEL_15;
  }

  v17 = open([v5 UTF8String], 514, 384);
  if (v17 < 0)
  {
    v20 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [SSCompressionHelper uncompressedContentsForCompressedFile:outPath:];
    }

LABEL_15:

    goto LABEL_16;
  }

  v18 = v17;
  if (write(v17, v15, v13) == -1)
  {
    v19 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SSCompressionHelper uncompressedContentsForCompressedFile:outPath:];
    }
  }

  close(v18);
  (*(v10 + 16))(v10);
LABEL_16:
}

uint64_t __69__SSCompressionHelper_uncompressedContentsForCompressedFile_outPath___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  result = munmap(*(a1 + 32), *(a1 + 40));
  v3 = *(a1 + 48);
  if (v3 != -1)
  {
    bzero(v5, 0x400uLL);
    if ((fcntl(v3, 50, v5) & 0x80000000) == 0 && v5[0])
    {
      unlink(v5);
    }

    result = close(*(a1 + 48));
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (int)unpackageTarForFd:(int)a3 size:(unint64_t)a4 parentDir:(const char *)a5
{
  v25 = *MEMORY[0x1E69E9840];
  memset(&v22, 0, sizeof(v22));
  if (stat(a5, &v22) == -1 && mkdir(a5, 0x1C0u))
  {
    goto LABEL_16;
  }

  bzero(v24, 0x400uLL);
  __strcpy_chk();
  __strcat_chk();
  v8 = open(v24, 2562, 384);
  if (v8 < 0)
  {
    goto LABEL_16;
  }

  v9 = v8;
  v10 = mmap(0, 0x2800000uLL, 3, 1, v8, 0);
  if (v10 == -1)
  {
    v17 = 41943040;
LABEL_15:
    munmap(0xFFFFFFFFFFFFFFFFLL, v17);
    close(v9);
LABEL_16:
    v16 = -1;
    goto LABEL_17;
  }

  v11 = v10;
  if (mmap(0, a4, 1, 1, a3, 0) == -1)
  {
    v17 = a4;
    goto LABEL_15;
  }

  archive_read_new();
  archive_write_disk_new();
  support_filter_bzip2 = archive_read_support_filter_bzip2();
  support_format_tar = archive_read_support_format_tar();
  v14 = archive_write_disk_set_standard_lookup();
  open_memory = archive_read_open_memory();
  v16 = -1;
  if (!support_filter_bzip2 && !support_format_tar && !v14 && !open_memory)
  {
    if (archive_read_next_header())
    {
LABEL_10:
      archive_write_free();
      archive_read_free();
      sync();
      munmap(v11, 0x2800000uLL);
      unlink(v24);
      v16 = 0;
    }

    else
    {
      while (1)
      {
        bzero(v23, 0x400uLL);
        __strcpy_chk();
        __strcat_chk();
        archive_entry_pathname();
        __strcat_chk();
        archive_entry_set_pathname();
        if (archive_write_header())
        {
          break;
        }

        v20 = archive_entry_size();
        if (v20 > 41943040)
        {
          break;
        }

        v21 = v20;
        if (archive_read_data_into_fd() || archive_write_data() != v21 || lseek(v9, 0, 0) || ftruncate(v9, 0) || archive_write_finish_entry())
        {
          break;
        }

        if (archive_read_next_header())
        {
          goto LABEL_10;
        }
      }

      munmap(v11, 0x2800000uLL);
      v16 = -1;
    }

    close(v9);
  }

LABEL_17:
  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

- (int)unTarFileWithFd:(id)a3 toPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dup([v6 fileDescriptor]);
  if ((v8 & 0x80000000) == 0)
  {
    v9 = v8;
    memset(&v15, 0, sizeof(v15));
    if (fstat(v8, &v15))
    {
      close(v9);
      v10 = PRSLogCategoryDefault();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [SSCompressionHelper unTarFileWithFd:v10 toPath:?];
      }
    }

    else
    {
      v11 = -[SSCompressionHelper unpackageTarForFd:size:parentDir:](self, "unpackageTarForFd:size:parentDir:", [v6 fileDescriptor], v15.st_size, objc_msgSend(v7, "UTF8String"));
      v12 = PRSLogCategoryDefault();
      v10 = v12;
      if (!v11)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&dword_1D9F69000, v10, OS_LOG_TYPE_DEFAULT, "[Model loading] unpackaged resources version", v14, 2u);
          v11 = 0;
        }

        goto LABEL_10;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [SSCompressionHelper unTarFileWithFd:toPath:];
      }
    }

    v11 = -1;
LABEL_10:

    goto LABEL_11;
  }

  v11 = -1;
LABEL_11:

  return v11;
}

@end