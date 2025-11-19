@interface PBFCompressionHelper
+ (BOOL)unarchiveFileAtURL:(id)a3 toURL:(id)a4;
+ (int)unTarFileWithFd:(id)a3 toPath:(id)a4;
+ (int)unpackageTarData:(void *)a3 size:(unint64_t)a4 parentDir:(const char *)a5;
@end

@implementation PBFCompressionHelper

+ (int)unpackageTarData:(void *)a3 size:(unint64_t)a4 parentDir:(const char *)a5
{
  v19 = *MEMORY[0x277D85DE8];
  memset(&v17, 0, sizeof(v17));
  if (stat(a5, &v17) == -1 && mkdir(a5, 0x1C0u))
  {
    return -1;
  }

  __strcpy_chk();
  __strcat_chk();
  v6 = open(v18, 2562, 384);
  if (v6 < 0)
  {
    return -1;
  }

  v7 = v6;
  v8 = mmap(0, 0x2800000uLL, 3, 1, v6, 0);
  if (v8 == -1)
  {
    close(v7);
    return -1;
  }

  v9 = v8;
  archive_read_new();
  archive_write_disk_new();
  support_filter_gzip = archive_read_support_filter_gzip();
  support_format_tar = archive_read_support_format_tar();
  v12 = archive_write_disk_set_standard_lookup();
  open_memory = archive_read_open_memory();
  result = -1;
  if (!support_filter_gzip && !support_format_tar && !v12 && !open_memory)
  {
    if (archive_read_next_header())
    {
LABEL_9:
      archive_write_free();
      archive_read_free();
      sync();
      munmap(v9, 0x2800000uLL);
      unlink(v18);
      close(v7);
      return 0;
    }

    while (1)
    {
      __strcpy_chk();
      __strcat_chk();
      archive_entry_pathname();
      __strcat_chk();
      archive_entry_set_pathname();
      if (archive_write_header())
      {
        return -1;
      }

      v15 = archive_entry_size();
      if (v15 > 41943040)
      {
        return -1;
      }

      v16 = v15;
      if (archive_read_data_into_fd() || archive_write_data() != v16 || lseek(v7, 0, 0) || ftruncate(v7, 0) || archive_write_finish_entry())
      {
        return -1;
      }

      if (archive_read_next_header())
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

+ (int)unTarFileWithFd:(id)a3 toPath:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = dup([v6 fileDescriptor]);
  if (v8 < 0)
  {
    v13 = -1;
  }

  else
  {
    v9 = v8;
    memset(&v18, 0, sizeof(v18));
    if (fstat(v8, &v18))
    {
      close(v9);
      v10 = PBFLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = __error();
        v12 = strerror(*v11);
        *buf = 136315138;
        v20 = v12;
        _os_log_impl(&dword_21B526000, v10, OS_LOG_TYPE_INFO, "failed stat %s", buf, 0xCu);
      }

      v13 = -1;
    }

    else
    {
      v10 = [v6 availableData];
      v14 = [a1 unpackageTarData:-[NSObject bytes](v10 size:"bytes") parentDir:{v18.st_size, objc_msgSend(v7, "UTF8String")}];
      v15 = PBFLogCommon();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
      if (v14)
      {
        if (v16)
        {
          *buf = 0;
          _os_log_impl(&dword_21B526000, v15, OS_LOG_TYPE_INFO, "failed to unpackage resources", buf, 2u);
        }

        v13 = -1;
      }

      else
      {
        if (v16)
        {
          *buf = 0;
          _os_log_impl(&dword_21B526000, v15, OS_LOG_TYPE_INFO, "unpackaged resources version", buf, 2u);
        }

        v13 = 0;
      }
    }
  }

  return v13;
}

+ (BOOL)unarchiveFileAtURL:(id)a3 toURL:(id)a4
{
  v6 = MEMORY[0x277CCA9F8];
  v7 = a4;
  v8 = [a3 path];
  v9 = [v6 fileHandleForReadingAtPath:v8];

  v10 = [v7 path];

  LOBYTE(a1) = [a1 unTarFileWithFd:v9 toPath:v10] == 0;
  return a1;
}

@end