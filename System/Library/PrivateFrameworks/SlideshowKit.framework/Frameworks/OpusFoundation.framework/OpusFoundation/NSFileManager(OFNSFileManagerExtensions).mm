@interface NSFileManager(OFNSFileManagerExtensions)
+ (uint64_t)temporaryFilePathWithExtension:()OFNSFileManagerExtensions;
+ (uint64_t)temporaryFileURLWithExtension:()OFNSFileManagerExtensions;
- (FTS)copySource:()OFNSFileManagerExtensions toDestination:withProgressionBlock:;
- (uint64_t)createTemporaryDirectoryAppropriateForForPath:()OFNSFileManagerExtensions error:;
- (uint64_t)incrementalPathInDirectory:()OFNSFileManagerExtensions withFilename:andExtension:;
- (void)incrementalURLInDirectory:()OFNSFileManagerExtensions withFilename:andExtension:;
- (void)unarchiveItemAtPath:()OFNSFileManagerExtensions toDirectory:withProgressionBlock:;
@end

@implementation NSFileManager(OFNSFileManagerExtensions)

+ (uint64_t)temporaryFilePathWithExtension:()OFNSFileManagerExtensions
{
  v4 = NSTemporaryDirectory();
  v5 = [objc_msgSend(MEMORY[0x277CCACA8] "generateUUID")];

  return [(NSString *)v4 stringByAppendingPathComponent:v5];
}

+ (uint64_t)temporaryFileURLWithExtension:()OFNSFileManagerExtensions
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = [objc_opt_class() temporaryFilePathWithExtension:a3];

  return [v3 fileURLWithPath:v4];
}

- (uint64_t)createTemporaryDirectoryAppropriateForForPath:()OFNSFileManagerExtensions error:
{
  v11 = 0;
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = &v11;
  }

  v10 = 1;
  if (![self fileExistsAtPath:objc_msgSend(a3 isDirectory:{"stringByDeletingLastPathComponent"), &v10}] || v10 != 1)
  {
    return 0;
  }

  v7 = [self URLForDirectory:99 inDomain:1 appropriateForURL:objc_msgSend(MEMORY[0x277CBEBC0] create:"fileURLWithPath:" error:{objc_msgSend(a3, "stringByDeletingLastPathComponent")), 1, v6}];
  if (!*v6 && v7)
  {
    return [v7 path];
  }

  *v6 = 0;
  v7 = [self URLForDirectory:99 inDomain:1 appropriateForURL:objc_msgSend(MEMORY[0x277CBEBC0] create:"fileURLWithPath:" error:{@"/", 1, v6}];
  v8 = 0;
  if (!*v6)
  {
    if (v7)
    {
      return [v7 path];
    }
  }

  return v8;
}

- (uint64_t)incrementalPathInDirectory:()OFNSFileManagerExtensions withFilename:andExtension:
{
  v9 = [objc_msgSend(a3 stringByAppendingPathComponent:{a4), "stringByAppendingPathExtension:", a5}];
  if ([self fileExistsAtPath:v9])
  {
    v10 = 2;
    do
    {
      v9 = [a3 stringByAppendingPathComponent:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@ %lu.%@", a4, v10++, a5)}];
    }

    while (([self fileExistsAtPath:v9] & 1) != 0);
  }

  return v9;
}

- (void)incrementalURLInDirectory:()OFNSFileManagerExtensions withFilename:andExtension:
{
  v9 = [objc_msgSend(a3 URLByAppendingPathComponent:{a4), "URLByAppendingPathExtension:", a5}];
  if ([self fileExistsAtPath:{objc_msgSend(v9, "path")}])
  {
    v10 = 2;
    do
    {
      v9 = [objc_msgSend(a3 URLByAppendingPathComponent:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@ %lu.%@", a4, v10++, a5)), "standardizedURL"}];
    }

    while (([self fileExistsAtPath:{objc_msgSend(v9, "path")}] & 1) != 0);
  }

  return v9;
}

- (FTS)copySource:()OFNSFileManagerExtensions toDestination:withProgressionBlock:
{
  v18[2] = *MEMORY[0x277D85DE8];
  v18[0] = [a3 UTF8String];
  v18[1] = 0;
  result = fts_open(v18, 4, 0);
  if (result)
  {
    v9 = result;
    v10 = fts_read(result);
    for (i = 0; v10; v10 = fts_read(v9))
    {
      if ((v10->fts_info & 8) != 0)
      {
        i += v10->fts_statp->st_size;
      }
    }

    if (fts_close(v9))
    {
      return 0;
    }

    v12 = [a5 copy];
    v13 = objc_alloc(MEMORY[0x277CBEB18]);
    v14 = [MEMORY[0x277CCABB0] numberWithLongLong:i];
    v15 = [v13 initWithObjects:{v14, objc_msgSend(MEMORY[0x277CCABB0], "numberWithLongLong:", 0), v12, 0}];
    v16 = copyfile_state_alloc();
    copyfile_state_set(v16, 2u, [a3 UTF8String]);
    copyfile_state_set(v16, 6u, _sf_copyfile_callback);
    copyfile_state_set(v16, 7u, v15);
    v17 = copyfile(0, [a4 UTF8String], v16, 0x800Fu);
    copyfile_state_free(v16);

    result = (v17 >= 0);
    if ((v17 & 0x80000000) != 0 && OFLoggerLevel >= 7)
    {
      [OFLogger logMessageWithLevel:7 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Extensions/OFNSFileManagerExtensions.m" line:168 andFormat:@"Failed to copy %@ to %@ with error code %d", v17];
      return 0;
    }
  }

  return result;
}

- (void)unarchiveItemAtPath:()OFNSFileManagerExtensions toDirectory:withProgressionBlock:
{
  v44 = *MEMORY[0x277D85DE8];
  v42 = 0;
  v41 = 0;
  archive_read_new();
  v40 = 0;
  archive_read_support_compression_all();
  archive_read_support_format_all();
  [a3 UTF8String];
  [a3 length];
  if (archive_read_open_filename())
  {
    if (OFLoggerLevel >= 4)
    {
      [OFLogger logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Extensions/OFNSFileManagerExtensions.m" line:193 andFormat:@"%@ cannot be unarchived: %s", a3, archive_error_string()];
    }

    return 0;
  }

  for (i = 0; ; ++i)
  {
    next_header = archive_read_next_header();
    if (next_header)
    {
      break;
    }

    archive_read_data_skip();
  }

  if (next_header != 1)
  {
    if (OFLoggerLevel >= 4)
    {
      [OFLogger logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Extensions/OFNSFileManagerExtensions.m" line:206 andFormat:@"%@ cannot be unarchived: %s", a3, archive_error_string()];
    }

    archive_read_close();
    archive_read_finish();
    return 0;
  }

  archive_read_close();
  archive_read_finish();
  (*(a5 + 16))(a5, &v42, 0.0);
  if ((v42 & 1) == 0)
  {
    if (([self createDirectoryAtPath:a4 withIntermediateDirectories:1 attributes:0 error:&v41] & 1) == 0)
    {
      if (OFLoggerLevel >= 4)
      {
        [OFLogger logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Extensions/OFNSFileManagerExtensions.m" line:226 andFormat:@"%@ cannot be unarchived: Failed to create destination directory %@", a3, a4];
      }

      return 0;
    }

    v11 = [a4 stringByAppendingPathComponent:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @".%@", objc_msgSend(MEMORY[0x277CCACA8], "generateUUID"))}];
    if (([self createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:&v41] & 1) == 0)
    {
      if (OFLoggerLevel >= 4)
      {
        [OFLogger logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Extensions/OFNSFileManagerExtensions.m" line:235 andFormat:@"%@ cannot be unarchived: Failed to create temporary directory %@", a3, v11];
      }

      return 0;
    }

    archive_read_new();
    v12 = archive_write_disk_new();
    archive_read_support_compression_all();
    archive_read_support_format_all();
    archive_write_disk_set_options();
    archive_write_disk_set_standard_lookup();
    [a3 UTF8String];
    [a3 length];
    if (archive_read_open_filename())
    {
      if (OFLoggerLevel >= 4)
      {
        [OFLogger logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Extensions/OFNSFileManagerExtensions.m" line:251 andFormat:@"%@ cannot be unarchived: %s", a3, archive_error_string()];
      }

      return 0;
    }

    v31 = 0;
    v15 = i;
    while (2)
    {
      v16 = archive_read_next_header();
      if (v16)
      {
        if (v16 == 1)
        {
          v22 = [self contentsOfDirectoryAtPath:v11 error:&v41];
          if (!v41)
          {
            v30 = v11;
            v23 = v22;
            array = [MEMORY[0x277CBEB18] array];
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            obj = v23;
            v29 = [v23 countByEnumeratingWithState:&v33 objects:v43 count:16];
            if (v29)
            {
              v28 = *v34;
              while (2)
              {
                for (j = 0; j != v29; ++j)
                {
                  if (*v34 != v28)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v25 = *(*(&v33 + 1) + 8 * j);
                  v32 = [v30 stringByAppendingPathComponent:v25];
                  v26 = [self incrementalPathInDirectory:a4 withFilename:objc_msgSend(v25 andExtension:{"stringByDeletingPathExtension"), objc_msgSend(v25, "pathExtension")}];
                  if (([self moveItemAtPath:v32 toPath:v26 error:&v41] & 1) == 0)
                  {
                    if (OFLoggerLevel >= 4)
                    {
                      [OFLogger logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Extensions/OFNSFileManagerExtensions.m" line:342 andFormat:@"%@ cannot be unarchived: Failed to move file %@ to %@", a3, v32, v26];
                    }

                    array = 0;
                    goto LABEL_68;
                  }

                  [array addObject:v26];
                }

                v29 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
                if (v29)
                {
                  continue;
                }

                break;
              }
            }

            (*(a5 + 16))(a5, &v42, 1.0);
LABEL_68:
            v11 = v30;
            goto LABEL_42;
          }

          if (OFLoggerLevel >= 4)
          {
            +[OFLogger logMessageWithLevel:file:line:andFormat:](OFLogger, "logMessageWithLevel:file:line:andFormat:", 4, "/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Extensions/OFNSFileManagerExtensions.m", 328, @"%@ cannot be unarchived: %@", a3, [v41 localizedDescription]);
          }
        }

        else if (OFLoggerLevel >= 4)
        {
          [OFLogger logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Extensions/OFNSFileManagerExtensions.m" line:319 andFormat:@"%@ cannot be unarchived: %s", a3, archive_error_string()];
        }
      }

      else
      {
        v17 = v12;
        v18 = objc_autoreleasePoolPush();
        [objc_msgSend(v11 stringByAppendingPathComponent:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", archive_entry_pathname())), "UTF8String"}];
        archive_entry_set_pathname();
        if (archive_write_header())
        {
          v19 = v18;
          if (OFLoggerLevel >= 4)
          {
            [OFLogger logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Extensions/OFNSFileManagerExtensions.m" line:267 andFormat:@"%@ cannot be unarchived: %s", a3, archive_error_string()];
          }
        }

        else
        {
          v38 = 0;
          v39 = 0;
          v37 = 0;
          v19 = v18;
          v12 = v17;
          while (1)
          {
            data_block = archive_read_data_block();
            if (data_block)
            {
              break;
            }

            if (archive_write_data_block())
            {
              if (OFLoggerLevel <= 3)
              {
                goto LABEL_40;
              }

              v21 = 283;
              goto LABEL_39;
            }
          }

          if (data_block != 1)
          {
            if (OFLoggerLevel < 4)
            {
              goto LABEL_40;
            }

            v21 = 291;
LABEL_39:
            [OFLogger logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Extensions/OFNSFileManagerExtensions.m" line:v21 andFormat:@"%@ cannot be unarchived: %s", a3, archive_error_string()];
            goto LABEL_40;
          }

          if (archive_write_finish_entry())
          {
            if (OFLoggerLevel >= 4)
            {
              [OFLogger logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Extensions/OFNSFileManagerExtensions.m" line:299 andFormat:@"%@ cannot be unarchived: %s", a3, archive_error_string()];
            }
          }

          else
          {
            (*(a5 + 16))(a5, &v42, v31 / v15);
            if (v42 != 1)
            {
              ++v31;
              objc_autoreleasePoolPop(v19);
              continue;
            }

            if (OFLoggerLevel >= 5)
            {
              [OFLogger logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Extensions/OFNSFileManagerExtensions.m" line:308 andFormat:@"%@ cannot be unarchived: %s", a3, archive_error_string()];
            }
          }
        }

LABEL_40:
        objc_autoreleasePoolPop(v19);
      }

      break;
    }

    array = 0;
LABEL_42:
    archive_read_close();
    archive_read_finish();
    archive_write_close();
    archive_write_finish();
    [self removeItemAtPath:v11 error:0];
    return array;
  }

  return 0;
}

@end