@interface ArchiveExtractor
- (BOOL)copyDataFromReadArchive:(archive *)archive toWriteDiskArchive:(archive *)diskArchive;
- (BOOL)extractArchiveAtURL:(id)l toDestinationDirectoryURL:(id)rL;
- (BOOL)performExtractionForArchive:(archive *)archive toDestinationDirectory:(id)directory;
- (BOOL)unarchiveData:(id)data toDestinationDirectory:(id)directory;
- (archive)createReadArchive;
- (archive)createWriteDiskArchive;
- (void)createReadArchive;
- (void)createWriteDiskArchive;
@end

@implementation ArchiveExtractor

- (archive)createReadArchive
{
  v2 = archive_read_new();
  if (!v2)
  {
    v5 = TRILogCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ArchiveExtractor createReadArchive];
    }

    goto LABEL_10;
  }

  v3 = v2;
  if (archive_read_support_format_zip())
  {
    v4 = TRILogCategory();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
LABEL_5:

      if (!archive_read_free())
      {
        return 0;
      }

      v5 = TRILogCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_269684000, v5, OS_LOG_TYPE_DEFAULT, "Unable to free archive_read (leaking)", v8, 2u);
      }

LABEL_10:

      return 0;
    }

LABEL_4:
    [ArchiveExtractor createReadArchive];
    goto LABEL_5;
  }

  support_filter_all = archive_read_support_filter_all();
  if (support_filter_all != -20 && support_filter_all)
  {
    v4 = TRILogCategory();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  return v3;
}

- (archive)createWriteDiskArchive
{
  v2 = archive_write_disk_new();
  if (v2)
  {
    if (archive_write_disk_set_standard_lookup())
    {
      v3 = TRILogCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        [ArchiveExtractor createWriteDiskArchive];
      }
    }

    else
    {
      if (!archive_write_disk_set_options())
      {
        return v2;
      }

      v3 = TRILogCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        [ArchiveExtractor createWriteDiskArchive];
      }
    }

    if (archive_write_free())
    {
      v4 = TRILogCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_269684000, v4, OS_LOG_TYPE_DEFAULT, "Unable to free archive_write_disk (leaking)", v6, 2u);
      }
    }

    return 0;
  }

  return v2;
}

- (BOOL)copyDataFromReadArchive:(archive *)archive toWriteDiskArchive:(archive *)diskArchive
{
  while (1)
  {
    data_block = archive_read_data_block();
    if (data_block)
    {
      break;
    }

    if (archive_write_data_block() < 0)
    {
      v5 = TRILogCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [ArchiveExtractor copyDataFromReadArchive:toWriteDiskArchive:];
      }

      goto LABEL_8;
    }
  }

  if (data_block == 1)
  {
    return data_block;
  }

  v5 = TRILogCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [ArchiveExtractor copyDataFromReadArchive:toWriteDiskArchive:];
  }

LABEL_8:

  LOBYTE(data_block) = 0;
  return data_block;
}

- (BOOL)performExtractionForArchive:(archive *)archive toDestinationDirectory:(id)directory
{
  v48 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v43 = 0;
  v8 = [defaultManager createDirectoryAtURL:directoryCopy withIntermediateDirectories:1 attributes:0 error:&v43];
  v9 = v43;

  if ((v8 & 1) == 0)
  {
    domain = [v9 domain];
    if ([domain isEqualToString:*MEMORY[0x277CCA050]])
    {
      code = [v9 code];

      if (code == 516)
      {
        goto LABEL_2;
      }
    }

    else
    {
    }

    v32 = TRILogCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [ArchiveExtractor performExtractionForArchive:toDestinationDirectory:];
    }

    goto LABEL_38;
  }

LABEL_2:

  createWriteDiskArchive = [(ArchiveExtractor *)self createWriteDiskArchive];
  if (!createWriteDiskArchive)
  {
    v9 = TRILogCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ArchiveExtractor performExtractionForArchive:toDestinationDirectory:];
    }

LABEL_38:
    v33 = 0;
    goto LABEL_58;
  }

  v11 = createWriteDiskArchive;
  uRLByResolvingSymlinksInPath = [directoryCopy URLByResolvingSymlinksInPath];

  *&v13 = 136315138;
  v39 = v13;
  while (1)
  {
    v42 = 0;
    next_header = archive_read_next_header();
    if (next_header)
    {
      if (next_header == 1)
      {
        v33 = 1;
        goto LABEL_50;
      }

      v34 = TRILogCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [ArchiveExtractor performExtractionForArchive:toDestinationDirectory:];
      }

      goto LABEL_45;
    }

    v15 = archive_entry_filetype();
    v16 = objc_autoreleasePoolPush();
    v17 = archive_entry_pathname_utf8();
    if (!v17)
    {
      v35 = TRILogCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [ArchiveExtractor performExtractionForArchive:toDestinationDirectory:];
      }

      objc_autoreleasePoolPop(v16);
      goto LABEL_49;
    }

    v18 = v17;
    v19 = -1;
    do
    {
      v20 = *(v17 + v19++ + 1);
    }

    while (v20 == 47);
    if (v19)
    {
      v21 = TRILogCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = strlen(v18);
        *buf = 134218240;
        v45 = v19;
        v46 = 2048;
        v47 = v22;
        _os_log_impl(&dword_269684000, v21, OS_LOG_TYPE_INFO, "archive_entry with absolute path encountered...ignoring leading %zu of %zu bytes.", buf, 0x16u);
      }
    }

    v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v18[v19]];
    v24 = v23;
    if (!v23)
    {
      v26 = TRILogCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = v39;
        v45 = &v18[v19];
        _os_log_error_impl(&dword_269684000, v26, OS_LOG_TYPE_ERROR, "Unable to initialize entry path with string %s", buf, 0xCu);
      }

      v27 = 1;
      goto LABEL_21;
    }

    v25 = [v23 length];
    if (!v25 && v15 != 0x4000)
    {
      break;
    }

    path = [uRLByResolvingSymlinksInPath path];
    v29 = [path stringByAppendingPathComponent:v24];

    [v29 fileSystemRepresentation];
    archive_entry_update_pathname_utf8();

    objc_autoreleasePoolPop(v16);
    archive_entry_perm();
    archive_entry_set_perm();
    if (v25)
    {
      if (archive_write_header())
      {
        v34 = TRILogCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [ArchiveExtractor performExtractionForArchive:toDestinationDirectory:];
        }

        goto LABEL_45;
      }

      if ((!archive_entry_size_is_set() || archive_entry_size() >= 1) && ![(ArchiveExtractor *)self copyDataFromReadArchive:archive toWriteDiskArchive:v11])
      {
        v34 = TRILogCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [ArchiveExtractor performExtractionForArchive:toDestinationDirectory:];
        }

        goto LABEL_45;
      }

      if (archive_write_finish_entry())
      {
        v34 = TRILogCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [ArchiveExtractor performExtractionForArchive:toDestinationDirectory:];
        }

LABEL_45:

        goto LABEL_49;
      }
    }
  }

  v26 = TRILogCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    [(ArchiveExtractor *)&v40 performExtractionForArchive:v41 toDestinationDirectory:v26];
  }

  v27 = 2;
LABEL_21:

  objc_autoreleasePoolPop(v16);
  if (v27 != 2)
  {
    v33 = 0;
    goto LABEL_59;
  }

LABEL_49:
  v33 = 0;
LABEL_50:
  if (archive_write_close())
  {
    v36 = TRILogCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [ArchiveExtractor performExtractionForArchive:toDestinationDirectory:];
    }

    v33 = 0;
  }

  if (archive_write_free())
  {
    v9 = TRILogCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ArchiveExtractor performExtractionForArchive:toDestinationDirectory:];
    }

    directoryCopy = uRLByResolvingSymlinksInPath;
LABEL_58:

    uRLByResolvingSymlinksInPath = directoryCopy;
  }

LABEL_59:

  v37 = *MEMORY[0x277D85DE8];
  return v33;
}

- (BOOL)unarchiveData:(id)data toDestinationDirectory:(id)directory
{
  dataCopy = data;
  directoryCopy = directory;
  createReadArchive = [(ArchiveExtractor *)self createReadArchive];
  if (!createReadArchive)
  {
    v12 = TRILogCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ArchiveExtractor unarchiveData:toDestinationDirectory:];
    }

    v11 = 0;
    goto LABEL_16;
  }

  v9 = createReadArchive;
  [dataCopy bytes];
  [dataCopy length];
  if (archive_read_open_memory())
  {
    v10 = TRILogCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ArchiveExtractor unarchiveData:toDestinationDirectory:];
    }

    v11 = 0;
  }

  else
  {
    v11 = [(ArchiveExtractor *)self performExtractionForArchive:v9 toDestinationDirectory:directoryCopy];
    if (!archive_read_close())
    {
      goto LABEL_13;
    }

    v10 = TRILogCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ArchiveExtractor unarchiveData:toDestinationDirectory:];
    }
  }

LABEL_13:
  if (archive_read_free())
  {
    v12 = TRILogCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_269684000, v12, OS_LOG_TYPE_DEFAULT, "unable to free archive_read (leaking)", v14, 2u);
    }

LABEL_16:
  }

  return v11;
}

- (BOOL)extractArchiveAtURL:(id)l toDestinationDirectoryURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  path = [lCopy path];
  v14 = 0;
  v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:path options:8 error:&v14];
  v10 = v14;
  if (!v9)
  {
    v12 = TRILogCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ArchiveExtractor extractArchiveAtURL:toDestinationDirectoryURL:];
    }

    goto LABEL_8;
  }

  if (![(ArchiveExtractor *)self unarchiveData:v9 toDestinationDirectory:rLCopy])
  {
    v12 = TRILogCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ArchiveExtractor extractArchiveAtURL:toDestinationDirectoryURL:];
    }

LABEL_8:

    v11 = 0;
    goto LABEL_9;
  }

  v11 = 1;
LABEL_9:

  return v11;
}

- (void)createReadArchive
{
  v8 = *MEMORY[0x277D85DE8];
  archive_error_string();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_269684000, v0, v1, "archive_read_new unable to create new archive: %s.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)createWriteDiskArchive
{
  v8 = *MEMORY[0x277D85DE8];
  archive_error_string();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_269684000, v0, v1, "archive_write_disk unable to set options - %s.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)copyDataFromReadArchive:toWriteDiskArchive:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  archive_error_string();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_269684000, v0, v1, "archive_write_data_block failed - %s.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)copyDataFromReadArchive:toWriteDiskArchive:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  archive_error_string();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_269684000, v0, v1, "archive_read_data_block failed - %s.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)performExtractionForArchive:toDestinationDirectory:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4(&dword_269684000, v0, v1, "failed to create directory at %@ - %@.");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)performExtractionForArchive:(os_log_t)log toDestinationDirectory:.cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_269684000, log, OS_LOG_TYPE_ERROR, "archive_entry with no path after sanitization encountered.", buf, 2u);
}

- (void)performExtractionForArchive:toDestinationDirectory:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  archive_error_string();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_269684000, v0, v1, "archive_write_header failed - %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)performExtractionForArchive:toDestinationDirectory:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  archive_error_string();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_269684000, v0, v1, "error copying data to write archive - %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)performExtractionForArchive:toDestinationDirectory:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  archive_error_string();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_269684000, v0, v1, "archive_write_finish_entry failed - %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)performExtractionForArchive:toDestinationDirectory:.cold.7()
{
  v8 = *MEMORY[0x277D85DE8];
  archive_error_string();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_269684000, v0, v1, "archive_read_next_header failed - %s.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)unarchiveData:toDestinationDirectory:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  archive_error_string();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_269684000, v0, v1, "unable to open archive_read - %s.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)unarchiveData:toDestinationDirectory:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  archive_error_string();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_269684000, v0, v1, "unable to close archive_read - %s.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)extractArchiveAtURL:toDestinationDirectoryURL:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_269684000, v0, OS_LOG_TYPE_ERROR, "Error unarchiving file at %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)extractArchiveAtURL:toDestinationDirectoryURL:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4(&dword_269684000, v0, v1, "Error reading archive file at %@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end