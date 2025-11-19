@interface UIStatusBarCache
+ (id)sharedInstance;
- (UIStatusBarCache)init;
- (id)imageNamed:(id)a3 forGroup:(id)a4 withScale:(double)a5;
- (void)cacheImage:(id)a3 named:(id)a4 forGroup:(id)a5;
- (void)removeImagesInGroup:(id)a3;
@end

@implementation UIStatusBarCache

+ (id)sharedInstance
{
  v2 = sharedInstance___cache;
  if (!sharedInstance___cache)
  {
    v3 = objc_alloc_init(UIStatusBarCache);
    v4 = sharedInstance___cache;
    sharedInstance___cache = v3;

    v2 = sharedInstance___cache;
  }

  return v2;
}

- (UIStatusBarCache)init
{
  v17 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = UIStatusBarCache;
  v2 = [(UIStatusBarCache *)&v14 init];
  if (!v2)
  {
    return v2;
  }

  v3 = objc_alloc(MEMORY[0x1E698B680]);
  v4 = _cachePath();
  if (qword_1ED4A0B18 != -1)
  {
    dispatch_once(&qword_1ED4A0B18, &__block_literal_global_47_3);
  }

  v5 = [v3 initWithPath:v4 version:qword_1ED4A0B10];
  store = v2->_store;
  v2->_store = v5;

  if (!v2->_store)
  {
    v12 = *(__UILogGetCategoryCachedImpl("StatusBar", &qword_1ED4A0A90) + 8);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v9 = v12;
    v10 = _cachePath();
    *buf = 138412290;
    v16 = v10;
    v11 = "Failed to open status bar cache at path %@";
    goto LABEL_10;
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("StatusBar", &_MergedGlobals_1291);
  if (*CategoryCachedImpl)
  {
    v8 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = v8;
      v10 = _cachePath();
      *buf = 138412290;
      v16 = v10;
      v11 = "Opened status bar cache at path %@";
LABEL_10:
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, v11, buf, 0xCu);
    }
  }

LABEL_11:
  v2->_writeable = [UIApp _isSpringBoard];
  if (qword_1ED4A0B20 != -1)
  {
    dispatch_once(&qword_1ED4A0B20, &__block_literal_global_49_4);
  }

  return v2;
}

- (id)imageNamed:(id)a3 forGroup:(id)a4 withScale:(double)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("StatusBar", &qword_1ED4A0A98);
  if (*CategoryCachedImpl)
  {
    v18 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v20 = 138412546;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "Looking for image %@ for group %@...", &v20, 0x16u);
    }
  }

  v11 = [(CPBitmapStore *)self->_store copyImageForKey:v8 inGroup:v9];
  if (v11)
  {
    v12 = v11;
    v13 = [UIImage imageWithCGImage:v11 scale:0 orientation:a5];
    CGImageRelease(v12);
    v14 = __UILogGetCategoryCachedImpl("StatusBar", &qword_1ED4A0AA0);
    if (*v14)
    {
      v15 = *(v14 + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v20 = 138412546;
        v21 = v8;
        v22 = 2112;
        v23 = v9;
        _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "...image %@ for group %@ found in the cache.", &v20, 0x16u);
      }
    }
  }

  else
  {
    v16 = __UILogGetCategoryCachedImpl("StatusBar", &qword_1ED4A0AA8);
    if (*v16)
    {
      v19 = *(v16 + 8);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = 138412546;
        v21 = v8;
        v22 = 2112;
        v23 = v9;
        _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "...image %@ for group %@ not found in the cache.", &v20, 0x16u);
      }
    }

    v13 = 0;
  }

  return v13;
}

- (void)cacheImage:(id)a3 named:(id)a4 forGroup:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(UIStatusBarCache *)self isWriteable])
  {
    if ([v8 CGImage])
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("StatusBar", &qword_1ED4A0AB0);
      if (*CategoryCachedImpl)
      {
        v14 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = 138412546;
          v16 = v9;
          v17 = 2112;
          v18 = v10;
          _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Caching image %@ for group %@", &v15, 0x16u);
        }
      }

      -[CPBitmapStore storeImageForKey:inGroup:opaque:image:](self->_store, "storeImageForKey:inGroup:opaque:image:", v9, v10, 0, [v8 CGImage]);
    }
  }

  else
  {
    v12 = __UILogGetCategoryCachedImpl("StatusBar", &qword_1ED4A0AB8);
    if (*v12)
    {
      v13 = *(v12 + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "This process is not allowed to cache images.", &v15, 2u);
      }
    }
  }
}

- (void)removeImagesInGroup:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(UIStatusBarCache *)self isWriteable])
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("StatusBar", &qword_1ED4A0AD0);
    if ((*CategoryCachedImpl & 1) == 0)
    {
      goto LABEL_6;
    }

    v13 = *(CategoryCachedImpl + 8);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    *buf = 0;
    v14 = "This process is not allowed to remove images in the cache.";
LABEL_9:
    _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
    goto LABEL_6;
  }

  if (!v4)
  {
    v13 = *(__UILogGetCategoryCachedImpl("StatusBar", &qword_1ED4A0AC8) + 8);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    *buf = 0;
    v14 = "Status bar cache was asked to remove images in a nil group.";
    goto LABEL_9;
  }

  v5 = __UILogGetCategoryCachedImpl("StatusBar", &qword_1ED4A0AC0);
  if (*v5)
  {
    v15 = *(v5 + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v4;
      _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Removing images in group %@", buf, 0xCu);
    }
  }

  v6 = [MEMORY[0x1E695DFD8] setWithObject:v4];
  v7 = UIApp;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 _beginBackgroundTaskWithName:v9 expirationHandler:0];

  store = self->_store;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __40__UIStatusBarCache_removeImagesInGroup___block_invoke;
  v16[3] = &__block_descriptor_40_e5_v8__0l;
  v16[4] = v10;
  [(CPBitmapStore *)store removeImagesInGroups:v6 completion:v16];

LABEL_6:
}

@end