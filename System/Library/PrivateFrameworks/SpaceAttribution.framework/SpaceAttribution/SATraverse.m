@interface SATraverse
+ (id)getFileSize:(id)a3;
- (BOOL)isNodeID:(unint64_t)a3 oldestForDStreamID:(unint64_t)a4 path:(id)a5;
- (BOOL)popDir:(id *)a3 at:(int64_t *)a4 ofParentPath:(id *)a5;
- (SATraverse)init;
- (SATraverse)traverseWithPath:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (id)getItemSizeAtPath:(id)a3;
- (void)debugLogStatistics;
- (void)pushDir:(id)a3 at:(int64_t)a4 withParentPath:(id)a5;
@end

@implementation SATraverse

- (SATraverse)init
{
  v13.receiver = self;
  v13.super_class = SATraverse;
  v2 = [(SATraverse *)&v13 init];
  if (v2)
  {
    v3 = +[NSDate date];
    startTime = v2->_startTime;
    v2->_startTime = v3;

    v5 = objc_opt_new();
    dir_content_cache = v2->_dir_content_cache;
    v2->_dir_content_cache = v5;

    v7 = objc_opt_new();
    knownDstreamIDs = v2->_knownDstreamIDs;
    v2->_knownDstreamIDs = v7;

    v9 = objc_opt_new();
    knownInodeIDs = v2->_knownInodeIDs;
    v2->_knownInodeIDs = v9;

    initialPath = v2->_initialPath;
    v2->_initialPath = 0;

    v2->_fs_num = 0;
  }

  return v2;
}

- (void)debugLogStatistics
{
  v3 = SALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10003F094(self);
  }

  v4 = SALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10003F100(self);
  }

  v5 = SALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10003F16C(self);
  }

  v6 = SALog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10003F1D8(self);
  }

  v7 = SALog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10003F244(self);
  }

  v8 = SALog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10003F2B0(self);
  }

  v9 = SALog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10003F31C(self);
  }

  v10 = SALog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10003F388(self);
  }

  v11 = SALog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_10003F3F4(self);
  }

  v12 = SALog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10003F460(self, v12);
  }
}

- (void)pushDir:(id)a3 at:(int64_t)a4 withParentPath:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[SADirContentCacheEntry alloc] initWithData:v9 idx:a4 andParentPath:v8];

  [(NSMutableArray *)self->_dir_content_cache addObject:v10];
  if ([(NSMutableArray *)self->_dir_content_cache count]> self->_dir_content_max_count)
  {
    self->_dir_content_max_count = [(NSMutableArray *)self->_dir_content_cache count];
  }
}

- (BOOL)popDir:(id *)a3 at:(int64_t *)a4 ofParentPath:(id *)a5
{
  v9 = [(NSMutableArray *)self->_dir_content_cache count];
  if (v9)
  {
    v10 = [(NSMutableArray *)self->_dir_content_cache lastObject];
    *a3 = [v10 dir_content];
    *a4 = [v10 index];
    *a5 = [v10 parent_path];
    [(NSMutableArray *)self->_dir_content_cache removeLastObject];
  }

  return v9 != 0;
}

- (SATraverse)traverseWithPath:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v54 = a3;
  v9 = a5;
  v10 = objc_opt_new();
  objc_storeStrong(&self->_initialPath, a3);
  self->_options = a4;
  v11 = [(NSString *)self->_initialPath copy];
  v12 = objc_autoreleasePoolPush();
  initialPath = self->_initialPath;
  v64 = 0;
  v14 = [v10 attributesOfItemAtPath:initialPath error:&v64];
  v15 = v64;
  v55 = [v14 fileSystemNumber];
  if (self->_fs_num != v55)
  {
    [(NSMutableSet *)self->_knownDstreamIDs removeAllObjects];
    [(NSMutableSet *)self->_knownInodeIDs removeAllObjects];
    self->_fs_num = v55;
  }

  objc_autoreleasePoolPop(v12);
  v16 = 0;
  v63 = 0;
  *&v17 = 138412546;
  v53 = v17;
  v57 = v10;
  while (1)
  {
    v18 = objc_autoreleasePoolPush();
    if (v63)
    {
      break;
    }

    v62 = v15;
    v20 = [v10 contentsOfDirectoryAtPath:v11 error:&v62];
    v19 = v62;

    if (v19)
    {
      ++self->_cantEnumerateDir;

      v20 = 0;
    }

    if ((self->_options & 2) != 0)
    {
      v21 = v9[2](v9, v11, 2, v19);
      if (v21)
      {
        ++self->_callback_stop;
        v44 = SALog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          sub_10003F4F4();
        }

        goto LABEL_54;
      }

      if ((v21 & 2) != 0)
      {

        v16 = 0;
        goto LABEL_35;
      }
    }

    v16 = v20;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_35:
    if ((self->_options & 4) != 0)
    {
      v35 = v9[2](v9, v11, 4, v19);

      if (v35)
      {
        ++self->_callback_stop;
        v44 = SALog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          sub_10003F56C(v11, v44, v45, v46, v47, v48, v49, v50);
        }

        v19 = 0;
        v20 = v16;
LABEL_54:
        v43 = v54;

        objc_autoreleasePoolPop(v18);
        v15 = v19;
        v16 = v20;
        goto LABEL_55;
      }

      v19 = 0;
    }

    v58 = v11;
    v59 = v16;
    v36 = [(SATraverse *)self popDir:&v59 at:&v63 ofParentPath:&v58, v53];
    v37 = v59;

    v34 = v58;
    ++v63;
    if ((v36 & 1) == 0)
    {
      objc_autoreleasePoolPop(v18);
      v41 = +[NSDate date];
      endTime = self->_endTime;
      self->_endTime = v41;

      v15 = v19;
      v16 = v37;
      v11 = v34;
      v43 = v54;
      goto LABEL_55;
    }

    v15 = v19;
    v16 = v37;
LABEL_40:
    objc_autoreleasePoolPop(v18);
    v11 = v34;
  }

  v19 = v15;
  if (!v16)
  {
    goto LABEL_35;
  }

LABEL_13:
  v22 = v63;
  if (v22 >= [v16 count])
  {
    goto LABEL_32;
  }

  [v16 objectAtIndexedSubscript:v63];
  v24 = v23 = v10;
  v25 = [v11 stringByAppendingPathComponent:v24];
  v61 = 0;
  if (![v23 fileExistsAtPath:v25 isDirectory:&v61])
  {
    ++self->_noPathOutOfReach;
    v15 = v19;
LABEL_30:
    ++v63;

    v19 = v15;
    if (v16)
    {
      v10 = v57;
LABEL_32:
      v33 = v63;
      if (v33 != [v16 count])
      {
        v15 = v19;
        v34 = v11;
        goto LABEL_40;
      }

      goto LABEL_35;
    }

    v10 = v57;
    goto LABEL_35;
  }

  v60 = v19;
  v26 = [v23 attributesOfItemAtPath:v25 error:&v60];
  v15 = v60;

  if (v61 == 1)
  {
    v56 = v26;
    v27 = [v26 fileSystemNumber];
    if (v55 == v27)
    {
      v28 = [v25 UTF8String];
      if ((self->_options & 0x10) != 0 && [SASupport isFilePurgeable:v28])
      {
        ++v63;
        ++self->_purgeableFolder;
      }

      else
      {
        ++self->_folderCnt;
        [(SATraverse *)self pushDir:v16 at:v63 withParentPath:v11];
        v40 = v25;

        v63 = 0;
        v11 = v40;
      }
    }

    else
    {
      v38 = v27;
      v39 = SALog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        *buf = v53;
        v66 = v25;
        v67 = 2048;
        v68 = v38;
        _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "fs_num at path %@ is %ld", buf, 0x16u);
      }

      ++v63;
      ++self->_onDifferentVolume;
    }

    v30 = v56;
    goto LABEL_46;
  }

  ++self->_filesDetected;
  options = self->_options;
  if ((options & 8) != 0)
  {
    v30 = v26;
    v31 = [v26 fileType];

    if (v31 == NSFileTypeSymbolicLink)
    {
      ++v63;
      ++self->_skipSymbolicLink;
LABEL_46:

      v34 = v11;
      v10 = v57;
      goto LABEL_40;
    }

    options = self->_options;
    v26 = v30;
  }

  if ((options & 1) == 0)
  {
LABEL_29:

    goto LABEL_30;
  }

  v32 = v9[2](v9, v25, 1, v15);
  if ((v32 & 1) == 0)
  {
    if ((v32 & 2) != 0)
    {

      v16 = 0;
    }

    goto LABEL_29;
  }

  ++self->_callback_stop;
  v52 = SALog();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v66 = v25;
    _os_log_debug_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "stop at path %@ (on file)", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v18);
  v43 = v54;
  v10 = v57;
LABEL_55:

  return result;
}

- (BOOL)isNodeID:(unint64_t)a3 oldestForDStreamID:(unint64_t)a4 path:(id)a5
{
  v7 = a5;
  v12 = 0;
  v8 = [SACloneGroupsAnalyzer isNodeID:a3 oldestForDStreamID:a4 path:v7 error:&v12];
  v9 = v12;
  if (v9)
  {
    v10 = SALog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v14 = a4;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to iterate clone with DStream ID (%llu) with %@. Fallback to clone mapping", buf, 0x16u);
    }

    v8 = [SACloneTreeWalker isNodeID:a3 oldestForDStreamID:a4 forVolPath:v7];
  }

  return v8;
}

- (id)getItemSizeAtPath:(id)a3
{
  v4 = a3;
  v18 = 0;
  v5 = objc_opt_new();
  v6 = +[NSFileManager defaultManager];
  v7 = [v6 fileExistsAtPath:v4 isDirectory:&v18];

  if (v7)
  {
    v8 = +[NSFileManager defaultManager];
    v17 = 0;
    v9 = [v8 attributesOfItemAtPath:v4 error:&v17];
    v10 = v17;

    v11 = [0 objectForKeyedSubscript:NSFileTypeSymbolicLink];

    if (v11)
    {
      v12 = v5;
    }

    else if (v18 == 1)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100021958;
      v15[3] = &unk_1000652F8;
      v15[4] = self;
      v14 = v5;
      v16 = v14;
      [(SATraverse *)self traverseWithPath:v4 options:25 completionHandler:v15];
      v12 = v14;
    }

    else
    {
      v12 = [SATraverse getFileSize:v4];
      if ([v12 isFileCloned] && -[SATraverse isNodeID:oldestForDStreamID:path:](self, "isNodeID:oldestForDStreamID:path:", +[SASupport getInodeIDForPath:](SASupport, "getInodeIDForPath:", v4), +[SASupport getCloneDstreamIDForPath:](SASupport, "getCloneDstreamIDForPath:", v4), v4))
      {
        [v12 setDataSize:{objc_msgSend(v12, "cloneSize")}];
      }
    }
  }

  else
  {
    v12 = v5;
    v10 = 0;
  }

  return v12;
}

+ (id)getFileSize:(id)a3
{
  v3 = a3;
  v4 = [NSURL fileURLWithPath:v3];
  v5 = objc_opt_new();
  v22 = 0;
  v20 = v4;
  v21 = 0;
  [v4 getResourceValue:&v22 forKey:NSURLFileAllocatedSizeKey error:&v21];
  v6 = v22;
  v7 = v21;
  if (v7 || !v6)
  {
    v17 = SALog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      if (v7)
      {
        v19 = [NSString stringWithFormat:@" with error %@", v7];
      }

      else
      {
        v19 = &stru_100066450;
      }

      *buf = 138412546;
      v24 = v3;
      v25 = 2112;
      v26 = v19;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to get physical size for file (%@)%@", buf, 0x16u);
      if (v7)
      {
      }
    }

    v14 = 0;
    v15 = 0;
    v10 = 0;
    v12 = 0;
    v8 = 0;
    v16 = 0;
  }

  else
  {
    v8 = [v6 unsignedLongLongValue];
    v9 = [v3 fileSystemRepresentation];
    v10 = [SASupport isFileCloned:v9];
    v11 = [SASupport isFilePurgeable:v9];
    v12 = v11;
    if (v10)
    {
      v13 = v8;
    }

    else
    {
      v13 = 0;
    }

    if (v11)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    if (v11)
    {
      v15 = v8;
    }

    else
    {
      v15 = 0;
    }

    if (v11)
    {
      v16 = 0;
    }

    else
    {
      v16 = (v8 - v13);
    }
  }

  [v5 setPhysicalSize:v8];
  [v5 setDataSize:v16];
  [v5 setCloneSize:v14];
  [v5 setPurgeableSize:v15];
  [v5 setIsFileCloned:v10];
  [v5 setIsFilePurgeable:v12];

  return v5;
}

@end