@interface PBFCompressionHelper
+ (BOOL)unarchiveFileAtURL:(id)l toURL:(id)rL;
+ (int)unTarFileWithFd:(id)fd toPath:(id)path;
+ (int)unpackageTarData:(void *)data size:(unint64_t)size parentDir:(const char *)dir;
@end

@implementation PBFCompressionHelper

+ (int)unpackageTarData:(void *)data size:(unint64_t)size parentDir:(const char *)dir
{
  v19 = *MEMORY[0x277D85DE8];
  memset(&v17, 0, sizeof(v17));
  if (stat(dir, &v17) == -1 && mkdir(dir, 0x1C0u))
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

+ (int)unTarFileWithFd:(id)fd toPath:(id)path
{
  v21 = *MEMORY[0x277D85DE8];
  fdCopy = fd;
  pathCopy = path;
  v8 = dup([fdCopy fileDescriptor]);
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
      availableData = PBFLogCommon();
      if (os_log_type_enabled(availableData, OS_LOG_TYPE_INFO))
      {
        v11 = __error();
        v12 = strerror(*v11);
        *buf = 136315138;
        v20 = v12;
        _os_log_impl(&dword_21B526000, availableData, OS_LOG_TYPE_INFO, "failed stat %s", buf, 0xCu);
      }

      v13 = -1;
    }

    else
    {
      availableData = [fdCopy availableData];
      v14 = [self unpackageTarData:-[NSObject bytes](availableData size:"bytes") parentDir:{v18.st_size, objc_msgSend(pathCopy, "UTF8String")}];
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

+ (BOOL)unarchiveFileAtURL:(id)l toURL:(id)rL
{
  v6 = MEMORY[0x277CCA9F8];
  rLCopy = rL;
  path = [l path];
  v9 = [v6 fileHandleForReadingAtPath:path];

  path2 = [rLCopy path];

  LOBYTE(self) = [self unTarFileWithFd:v9 toPath:path2] == 0;
  return self;
}

@end