@interface AXPhoenixDataArchiver
- (AXPhoenixDataArchiver)initWithPath:(id)a3;
- (void)addDirectoryToArchive:(id)a3 withDirName:(id)a4;
- (void)addFileToArchive:(id)a3 withFileName:(id)a4;
@end

@implementation AXPhoenixDataArchiver

- (AXPhoenixDataArchiver)initWithPath:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v13;
  v13 = 0;
  v11.receiver = v3;
  v11.super_class = AXPhoenixDataArchiver;
  v13 = [(AXPhoenixDataArchiver *)&v11 init];
  objc_storeStrong(&v13, v13);
  if (!v13)
  {
    goto LABEL_7;
  }

  [v13 setArchiver:archive_write_new()];
  [v13 archiver];
  archive_write_add_filter_gzip();
  [v13 archiver];
  archive_write_set_format_ustar();
  [v13 archiver];
  v8 = location[0];
  v4 = location[0];
  [v8 UTF8String];
  v10 = archive_write_open_filename();
  if (!v10)
  {
    v7 = location[0];
    v5 = location[0];
    chmod([v7 UTF8String], 0x1B4u);
LABEL_7:
    v14 = MEMORY[0x277D82BE0](v13);
    goto LABEL_8;
  }

  oslog = AXLogBackTap();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_3_8_32_8_64_4_0(v15, "[AXPhoenixDataArchiver initWithPath:]", location[0], v10);
    _os_log_error_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_ERROR, "[PHOENIX] %s Error creating archive at path %@ %d", v15, 0x1Cu);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&v13, 0);
  v14 = 0;
LABEL_8:
  objc_storeStrong(location, 0);
  objc_storeStrong(&v13, 0);
  *MEMORY[0x277D85DE8];
  return v14;
}

- (void)addFileToArchive:(id)a3 withFileName:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19 = 0;
  memset(&__b, 0, sizeof(__b));
  i = 0;
  v16 = 0;
  v10 = location[0];
  v4 = location[0];
  v15 = [v10 UTF8String];
  if (v15)
  {
    stat(v15, &__b);
    v19 = archive_entry_new();
    archive_entry_copy_stat();
    v8 = v20;
    v5 = v20;
    [v8 UTF8String];
    archive_entry_set_pathname();
    [(AXPhoenixDataArchiver *)v22 archiver];
    archive_write_header();
    v16 = open(v15, 0);
    if (v16 == -1)
    {
      v11 = AXLogBackTap();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v7 = location[0];
        v6 = __error();
        __os_log_helper_16_2_3_8_32_8_64_4_0(v23, "[AXPhoenixDataArchiver addFileToArchive:withFileName:]", v7, *v6);
        _os_log_impl(&dword_25E4AC000, v11, OS_LOG_TYPE_DEFAULT, "[PHOENIX] %s Error opening file %@:%d", v23, 0x1Cu);
      }

      objc_storeStrong(&v11, 0);
      v12 = 1;
    }

    else
    {
      for (i = read(v16, v25, 0x2000uLL); i > 0; i = read(v16, v25, 0x2000uLL))
      {
        [(AXPhoenixDataArchiver *)v22 archiver];
        archive_write_data();
      }

      archive_entry_free();
      close(v16);
      v12 = 0;
    }
  }

  else
  {
    oslog = AXLogBackTap();
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_32(v24, "[AXPhoenixDataArchiver addFileToArchive:withFileName:]");
      _os_log_impl(&dword_25E4AC000, oslog, type, "[PHOENIX] %s Error, requested to add nil file to archive", v24, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v12 = 1;
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)addDirectoryToArchive:(id)a3 withDirName:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v21 = [MEMORY[0x277CCAA00] defaultManager];
  v28 = [v21 contentsOfDirectoryAtPath:location[0] error:0];
  MEMORY[0x277D82BD8](v21);
  v27 = 0;
  memset(__b, 0, sizeof(__b));
  v22 = MEMORY[0x277D82BE0](v28);
  v23 = [v22 countByEnumeratingWithState:__b objects:v32 count:16];
  if (v23)
  {
    v17 = *__b[2];
    v18 = 0;
    v19 = v23;
    while (1)
    {
      v16 = v18;
      if (*__b[2] != v17)
      {
        objc_enumerationMutation(v22);
      }

      v26 = *(__b[1] + 8 * v18);
      v24 = [location[0] stringByAppendingPathComponent:v26];
      v14 = [MEMORY[0x277CCAA00] defaultManager];
      v15 = [v14 fileExistsAtPath:v24 isDirectory:&v27];
      MEMORY[0x277D82BD8](v14);
      if (v15)
      {
        if (v27)
        {
          v11 = v31;
          v10 = v24;
          v9 = v29;
          v13 = [v26 lastPathComponent];
          v12 = [v9 stringByAppendingPathComponent:?];
          [(AXPhoenixDataArchiver *)v11 addDirectoryToArchive:v10 withDirName:?];
          MEMORY[0x277D82BD8](v12);
          MEMORY[0x277D82BD8](v13);
        }

        else
        {
          v6 = v31;
          v5 = v24;
          v4 = v29;
          v8 = [v26 lastPathComponent];
          v7 = [v4 stringByAppendingPathComponent:?];
          [(AXPhoenixDataArchiver *)v6 addFileToArchive:v5 withFileName:?];
          MEMORY[0x277D82BD8](v7);
          MEMORY[0x277D82BD8](v8);
        }
      }

      objc_storeStrong(&v24, 0);
      ++v18;
      if (v16 + 1 >= v19)
      {
        v18 = 0;
        v19 = [v22 countByEnumeratingWithState:__b objects:v32 count:16];
        if (!v19)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v22);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

@end