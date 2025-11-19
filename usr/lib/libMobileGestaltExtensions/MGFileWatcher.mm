@interface MGFileWatcher
- (BOOL)updateWatcher;
- (MGFileWatcher)initWithPath:(id)a3 block:(id)a4;
- (void)cancel;
- (void)dealloc;
@end

@implementation MGFileWatcher

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MGFileWatcher;
  [(MGFileWatcher *)&v3 dealloc];
}

- (BOOL)updateWatcher
{
  dispatch_assert_queue_V2(self->_queue);
  v7 = objc_msgSend_fileSystemRepresentation(self->_path, v3, v4, v5, v6);
  v8 = open(v7, 0x8000);
  if (v8 == -1)
  {
    return 0;
  }

  v9 = v8;
  memset(&v19, 0, sizeof(v19));
  if (fstat(v8, &v19) == -1)
  {
    close(v9);
    return 0;
  }

  inode = self->_inode;
  v11 = v19.st_ino != inode;
  if (v19.st_ino == inode)
  {
    close(v9);
  }

  else
  {
    src = self->_src;
    if (src)
    {
      dispatch_source_cancel(src);
      dispatch_release(self->_src);
    }

    v13 = dispatch_source_create(MEMORY[0x1E69E9728], v9, 0x7FuLL, self->_queue);
    self->_src = v13;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1C3939800;
    handler[3] = &unk_1E81B1490;
    handler[4] = self;
    dispatch_source_set_event_handler(v13, handler);
    v14 = self->_src;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1C3939858;
    v16[3] = &unk_1E81B14B0;
    v17 = v9;
    dispatch_source_set_cancel_handler(v14, v16);
    dispatch_resume(self->_src);
    self->_inode = v19.st_ino;
  }

  if (v19.st_mtimespec.tv_sec != self->_mtime.tv_sec || v19.st_mtimespec.tv_nsec != self->_mtime.tv_nsec)
  {
    self->_mtime = v19.st_mtimespec;
    return 1;
  }

  return v11;
}

- (MGFileWatcher)initWithPath:(id)a3 block:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  PathComponent = objc_msgSend_stringByDeletingLastPathComponent(a3, v8, v9, v10, v11);
  v17 = objc_msgSend_fileSystemRepresentation(PathComponent, v13, v14, v15, v16);
  v18 = open(v17, 0x8000);
  if (v18 == -1)
  {
    v29 = rindex("/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltExtensions/MGNotifications.m", 47);
    if (v29)
    {
      v35 = v29 + 1;
    }

    else
    {
      v35 = "/Library/Caches/com.apple.xbs/Sources/MobileGestaltSupport/MobileGestaltExtensions/MGNotifications.m";
    }

    sub_1C3938818(v35, 106, @"can't open parent for %@", v30, v31, v32, v33, v34, a3);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v44 = a3;
      _os_log_impl(&dword_1C3937000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "can't open parent for %@", buf, 0xCu);
    }

    v20 = 0;
  }

  else
  {
    v19 = v18;
    v42.receiver = self;
    v42.super_class = MGFileWatcher;
    v20 = [(MGFileWatcher *)&v42 init];
    if (v20)
    {
      *(v20 + 1) = a3;
      *(v20 + 8) = objc_msgSend_copy(a4, v21, v22, v23, v24);
      v25 = dispatch_queue_create("com.apple.MobileGestalt.MGFileWatcher", 0);
      *(v20 + 5) = v25;
      v26 = dispatch_source_create(MEMORY[0x1E69E9728], v19, 2uLL, v25);
      *(v20 + 7) = v26;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = sub_1C3939ADC;
      handler[3] = &unk_1E81B1490;
      handler[4] = v20;
      dispatch_source_set_event_handler(v26, handler);
      v27 = *(v20 + 7);
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = sub_1C3939B34;
      v39[3] = &unk_1E81B14B0;
      v40 = v19;
      dispatch_source_set_cancel_handler(v27, v39);
      v28 = *(v20 + 5);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1C3939B3C;
      block[3] = &unk_1E81B1490;
      block[4] = v20;
      dispatch_sync(v28, block);
      dispatch_resume(*(v20 + 7));
    }
  }

  objc_autoreleasePoolPop(v7);
  v36 = *MEMORY[0x1E69E9840];
  return v20;
}

- (void)cancel
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1C3939BB8;
  block[3] = &unk_1E81B1490;
  block[4] = self;
  dispatch_sync(queue, block);
}

@end