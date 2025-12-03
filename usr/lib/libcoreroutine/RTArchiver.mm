@interface RTArchiver
+ (BOOL)extractArchiveAtURL:(id)l error:(id *)error;
- (RTArchiver)initWithOutputURL:(id)l compress:(BOOL)compress;
- (void)addDirectoryToArchive:(id)archive;
- (void)addFileToArchive:(id)archive;
- (void)closeArchive;
- (void)dealloc;
@end

@implementation RTArchiver

- (RTArchiver)initWithOutputURL:(id)l compress:(BOOL)compress
{
  compressCopy = compress;
  v23 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (!lCopy)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTArchiver initWithOutputURL:compress:]";
      v21 = 1024;
      v22 = 42;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outputURL (in %s:%d)", buf, 0x12u);
    }

    goto LABEL_15;
  }

  v18.receiver = self;
  v18.super_class = RTArchiver;
  self = [(RTArchiver *)&v18 init];
  if (self)
  {
    self->_archive = archive_write_new();
    if (compressCopy)
    {
      v7 = archive_write_add_filter_gzip();
    }

    else
    {
      v7 = archive_write_add_filter_none();
    }

    v9 = v7;
    if (!v7)
    {
      v10 = archive_write_set_format_pax();
      if (!v10)
      {
        path = [lCopy path];
        uTF8String = [path UTF8String];

        v15 = open_dprotected_np(uTF8String, 514, 2, 0, 416);
        self->_archive_fd = v15;
        if (v15 < 0)
        {
          v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = *__error();
            *buf = 138412546;
            v20 = lCopy;
            v21 = 1024;
            v22 = v17;
            _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Unable to create archive at path %@ with data protection, errno, %{errno}d", buf, 0x12u);
          }

          archive_write_close();
          goto LABEL_15;
        }

        v10 = archive_write_open_fd();
        self->_valid = 1;
        if (!v10)
        {
          goto LABEL_16;
        }
      }

      v9 = v10;
    }

    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v20 = lCopy;
      v21 = 1024;
      v22 = v9;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Error creating archive at path %@ %d", buf, 0x12u);
    }

    [(RTArchiver *)self closeArchive];
LABEL_15:

    self = 0;
  }

LABEL_16:

  return self;
}

- (void)dealloc
{
  [(RTArchiver *)self closeArchive];
  v3.receiver = self;
  v3.super_class = RTArchiver;
  [(RTArchiver *)&v3 dealloc];
}

- (void)addFileToArchive:(id)archive
{
  v37 = *MEMORY[0x277D85DE8];
  archiveCopy = archive;
  v4 = archiveCopy;
  if (!archiveCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v32 = "[RTArchiver addFileToArchive:]";
      v33 = 1024;
      v34 = 99;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: filePath (in %s:%d)", buf, 0x12u);
    }

    goto LABEL_9;
  }

  path = [archiveCopy path];
  uTF8String = [path UTF8String];

  if (!uTF8String)
  {
    goto LABEL_10;
  }

  stat(uTF8String, &v24);
  archive_entry_new();
  archive_entry_copy_stat();
  relativePath = [v4 relativePath];
  [relativePath UTF8String];
  archive_entry_set_pathname();

  if (archive_write_header())
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      path2 = [v4 path];
      v21 = archive_errno();
      v22 = archive_error_string();
      *buf = 138412802;
      v32 = path2;
      v33 = 1024;
      v34 = v21;
      v35 = 2080;
      v36 = v22;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "failed to write header for file, %@, status, %d, reason: %s", buf, 0x1Cu);
    }

    goto LABEL_10;
  }

  v10 = open(uTF8String, 0);
  if (v10 == -1)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      path3 = [v4 path];
      v16 = *__error();
      v17 = *__error();
      *buf = 138412802;
      v32 = path3;
      v33 = 1024;
      v34 = v16;
      v35 = 1024;
      LODWORD(v36) = v17;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "failed to open file, %@, error, %d %{errno}d", buf, 0x18u);
    }

LABEL_9:

    goto LABEL_10;
  }

  v11 = v10;
  v12 = read(v10, buf, 0x2000uLL);
  if (v12 >= 1)
  {
    v13 = v12;
    while (1)
    {
      v14 = archive_write_data();
      if (v14 != v13)
      {
        break;
      }

      v13 = read(v11, buf, 0x2000uLL);
      if (v13 <= 0)
      {
        goto LABEL_22;
      }
    }

    v18 = v14;
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      path4 = [v4 path];
      *v25 = 138412802;
      v26 = path4;
      v27 = 2048;
      v28 = v13;
      v29 = 2048;
      v30 = v18;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "error writing file, %@, request to write %ld bytes but wrote %ld bytes", v25, 0x20u);
    }
  }

LABEL_22:
  archive_entry_free();
  close(v11);
LABEL_10:
}

- (void)addDirectoryToArchive:(id)archive
{
  v39 = *MEMORY[0x277D85DE8];
  archiveCopy = archive;
  if (archiveCopy)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [archiveCopy path];
    v33 = 0;
    v6 = [defaultManager contentsOfDirectoryAtPath:path error:&v33];
    v7 = v33;

    if (v7)
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v36 = v7;
        _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "error while reading directory, %@", buf, 0xCu);
      }
    }

    else if (v6)
    {
      v26 = v6;
      buf[0] = 0;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      obj = v6;
      v9 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      v10 = 0x277CCA000uLL;
      if (v9)
      {
        v11 = v9;
        v12 = *v30;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v30 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v29 + 1) + 8 * i);
            v15 = objc_autoreleasePoolPush();
            path2 = [archiveCopy path];
            v17 = [path2 stringByAppendingPathComponent:v14];

            relativePath = [archiveCopy relativePath];
            v19 = [relativePath stringByAppendingPathComponent:v14];

            defaultManager2 = [*(v10 + 2560) defaultManager];
            v21 = [defaultManager2 fileExistsAtPath:v17 isDirectory:buf];

            if (v21)
            {
              v22 = MEMORY[0x277CBEBC0];
              v23 = buf[0];
              baseURL = [archiveCopy baseURL];
              v25 = [v22 fileURLWithPath:v19 isDirectory:v23 relativeToURL:baseURL];

              if (buf[0] == 1)
              {
                [(RTArchiver *)self addDirectoryToArchive:v25];
              }

              else
              {
                [(RTArchiver *)self addFileToArchive:v25];
              }

              v10 = 0x277CCA000;
            }

            objc_autoreleasePoolPop(v15);
          }

          v11 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v11);
      }

      v6 = v26;
      v7 = 0;
    }
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "[RTArchiver addDirectoryToArchive:]";
      v37 = 1024;
      v38 = 148;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: directory (in %s:%d)", buf, 0x12u);
    }
  }
}

- (void)closeArchive
{
  if (self->_valid)
  {
    archive_write_free();
    self->_valid = 0;
  }

  archive_fd = self->_archive_fd;
  if (archive_fd >= 1)
  {
    close(archive_fd);
    self->_archive_fd = -1;
  }
}

+ (BOOL)extractArchiveAtURL:(id)l error:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (!lCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v51 = "+[RTArchiver extractArchiveAtURL:error:]";
      v52 = 1024;
      v53 = 201;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: archiveURL (in %s:%d)", buf, 0x12u);
    }
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  v9 = [defaultManager fileExistsAtPath:path];

  if (v9)
  {
    archive_read_new();
    archive_read_support_format_all();
    archive_read_support_filter_all();
    path2 = [lCopy path];
    [path2 UTF8String];
    open_filename = archive_read_open_filename();

    if (open_filename)
    {
      if (error)
      {
        v12 = MEMORY[0x277CCA9B8];
        v13 = *MEMORY[0x277D01448];
        v46 = *MEMORY[0x277CCA450];
        v14 = MEMORY[0x277CCACA8];
        path3 = [lCopy path];
        v16 = [v14 stringWithFormat:@"failed to open archive, %@, %s", path3, archive_error_string()];
        v47 = v16;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        *error = [v12 errorWithDomain:v13 code:0 userInfo:v17];

        LOBYTE(error) = 0;
      }
    }

    else
    {
      archive_write_disk_new();
      archive_write_disk_set_options();
      v24 = MEMORY[0x277D86220];
      while (1)
      {
        next_header = archive_read_next_header();
        if (next_header)
        {
          break;
        }

        if (archive_write_header())
        {
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              v27 = archive_error_string();
              *buf = 136315138;
              v51 = v27;
              _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "failed to write header, archive_write_header, error, %s", buf, 0xCu);
            }
          }
        }

        else
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
              if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                goto LABEL_30;
              }

              v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                v30 = archive_error_string();
                *buf = 136315138;
                v51 = v30;
                v31 = v29;
                v32 = "failed to write data block, archive_write_data_block, error, %s";
                goto LABEL_28;
              }

              goto LABEL_29;
            }
          }

          if (data_block != 1 && os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              v33 = archive_error_string();
              *buf = 136315138;
              v51 = v33;
              v31 = v29;
              v32 = "failed to read data block, archive_read_data_block, error, %s";
LABEL_28:
              _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_INFO, v32, buf, 0xCu);
            }

LABEL_29:
          }

LABEL_30:
          if (archive_write_finish_entry())
          {
            if (error)
            {
              v34 = MEMORY[0x277CCA9B8];
              v35 = *MEMORY[0x277D01448];
              v42 = *MEMORY[0x277CCA450];
              v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to write archive, %s", archive_error_string()];
              v43 = v36;
              v37 = MEMORY[0x277CBEAC0];
              v38 = &v43;
              v39 = &v42;
              goto LABEL_37;
            }

            goto LABEL_38;
          }
        }
      }

      if (next_header == 1)
      {
        LOBYTE(error) = 1;
        goto LABEL_39;
      }

      if (error)
      {
        v34 = MEMORY[0x277CCA9B8];
        v35 = *MEMORY[0x277D01448];
        v44 = *MEMORY[0x277CCA450];
        v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to open archive, %s", archive_error_string()];
        v45 = v36;
        v37 = MEMORY[0x277CBEAC0];
        v38 = &v45;
        v39 = &v44;
LABEL_37:
        v40 = [v37 dictionaryWithObjects:v38 forKeys:v39 count:1];
        *error = [v34 errorWithDomain:v35 code:0 userInfo:v40];

LABEL_38:
        LOBYTE(error) = 0;
      }

LABEL_39:
      archive_read_free();
    }

    archive_read_free();
  }

  else if (error)
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277D01448];
    v48 = *MEMORY[0x277CCA450];
    v20 = MEMORY[0x277CCACA8];
    path4 = [lCopy path];
    v22 = [v20 stringWithFormat:@"archive doesn't exist at path, %@", path4];
    v49 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    *error = [v18 errorWithDomain:v19 code:0 userInfo:v23];

    LOBYTE(error) = 0;
  }

  return error;
}

@end