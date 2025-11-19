@interface _UIPathLazyImageAsset
- (BOOL)_containsImagesInPath:(id)a3;
- (_UIPathLazyImageAsset)init;
- (_UIPathLazyImageAsset)initWithCoder:(id)a3;
- (id)_initWithAssetName:(id)a3 forFilesInBundle:(id)a4;
- (id)_initWithAssetName:(id)a3 forFilesInBundle:(id)a4 imagePaths:(id)a5 haveCGCacheImages:(BOOL)a6;
- (id)_initWithAssetName:(id)a3 forManager:(id)a4;
- (id)imageWithConfiguration:(id)a3;
- (void)_clearResolvedImageResources;
@end

@implementation _UIPathLazyImageAsset

- (void)_clearResolvedImageResources
{
  v15 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->super._lock);
  if ((*&self->_plaFlags & 2) != 0)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = self->_imagePaths;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = _UserInterfaceTraitFromPath(*(*(&v10 + 1) + 8 * v7));
          v9 = [v8 _namedImageDescription];
          [(UIImageAsset *)self _withLock_unregisterImageWithDescription:v9];

          ++v7;
        }

        while (v5 != v7);
        v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    *&self->_plaFlags &= ~2u;
  }

  os_unfair_lock_unlock(&self->super._lock);
}

- (_UIPathLazyImageAsset)init
{
  if (os_variant_has_internal_diagnostics())
  {
    v8 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "Must use designated initializer", buf, 2u);
    }
  }

  else
  {
    v3 = *(__UILogGetCategoryCachedImpl("Assert", &init___s_category_1) + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "Must use designated initializer", v9, 2u);
    }
  }

  v4 = [MEMORY[0x1E696AFB0] UUID];
  v5 = [v4 UUIDString];
  v6 = [(_UIPathLazyImageAsset *)self _initWithAssetName:v5 forManager:0];

  return v6;
}

- (_UIPathLazyImageAsset)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UIPathLazyImageAsset;
  return [(UIImageAsset *)&v4 initWithCoder:a3];
}

- (id)_initWithAssetName:(id)a3 forManager:(id)a4
{
  v5 = a3;
  if (os_variant_has_internal_diagnostics())
  {
    v9 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Must use designated initializer", buf, 2u);
    }
  }

  else
  {
    v6 = *(__UILogGetCategoryCachedImpl("Assert", &_initWithAssetName_forManager____s_category) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Must use designated initializer", v10, 2u);
    }
  }

  v7 = [(_UIPathLazyImageAsset *)self _initWithAssetName:v5 forFilesInBundle:0 imagePaths:0 haveCGCacheImages:0];

  return v7;
}

- (id)_initWithAssetName:(id)a3 forFilesInBundle:(id)a4
{
  v6 = a4;
  v7 = a3;
  if (os_variant_has_internal_diagnostics())
  {
    v11 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "Must use designated initializer", buf, 2u);
    }
  }

  else
  {
    v8 = *(__UILogGetCategoryCachedImpl("Assert", &_initWithAssetName_forFilesInBundle____s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Must use designated initializer", v12, 2u);
    }
  }

  v9 = [(_UIPathLazyImageAsset *)self _initWithAssetName:v7 forFilesInBundle:v6 imagePaths:0 haveCGCacheImages:0];

  return v9;
}

- (id)_initWithAssetName:(id)a3 forFilesInBundle:(id)a4 imagePaths:(id)a5 haveCGCacheImages:(BOOL)a6
{
  v10 = a5;
  v16.receiver = self;
  v16.super_class = _UIPathLazyImageAsset;
  v11 = [(UIImageAsset *)&v16 _initWithAssetName:a3 forFilesInBundle:a4];
  v12 = v11;
  if (v11)
  {
    v11[96] &= ~2u;
    v13 = [v10 copy];
    v14 = *(v12 + 13);
    *(v12 + 13) = v13;

    v12[96] = v12[96] & 0xFE | a6;
  }

  return v12;
}

- (id)imageWithConfiguration:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->super._lock);
  if ((*&self->_plaFlags & 2) == 0)
  {
    v18 = v4;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = self->_imagePaths;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      do
      {
        v9 = 0;
        do
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v20 + 1) + 8 * v9);
          v11 = _UserInterfaceTraitFromPath(v10);
          ImageAtPath = GetImageAtPath(v10, self->_haveCGCacheImages, 0.0);
          if (ImageAtPath)
          {
            if (v11)
            {
              v13 = [v11 imageConfiguration];
            }

            else
            {
              v13 = 0;
            }

            v14 = v13;
            [(UIImageAsset *)self _withLock_registerImage:ImageAtPath withConfiguration:v14];
          }

          ++v9;
        }

        while (v7 != v9);
        v15 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
        v7 = v15;
      }

      while (v15);
    }

    *&self->_plaFlags |= 2u;
    v4 = v18;
  }

  os_unfair_lock_unlock(&self->super._lock);
  v19.receiver = self;
  v19.super_class = _UIPathLazyImageAsset;
  v16 = [(UIImageAsset *)&v19 imageWithConfiguration:v4];

  return v16;
}

- (BOOL)_containsImagesInPath:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  imagePaths = self->_imagePaths;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47___UIPathLazyImageAsset__containsImagesInPath___block_invoke;
  v8[3] = &unk_1E710C290;
  v6 = v4;
  v9 = v6;
  v10 = &v11;
  [(NSArray *)imagePaths enumerateObjectsUsingBlock:v8];
  LOBYTE(imagePaths) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return imagePaths;
}

@end