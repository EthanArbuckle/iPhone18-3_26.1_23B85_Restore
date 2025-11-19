@interface VisionCoreObjectCache
- (VisionCoreObjectCache)init;
- (id)objectForIdentifier:(id)a3 creationBlock:(id)a4 error:(id *)a5;
- (void)removeAllObjects;
@end

@implementation VisionCoreObjectCache

- (void)removeAllObjects
{
  os_unfair_lock_lock(&self->_accessLock);
  [(NSMutableDictionary *)self->_objects removeAllObjects];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (id)objectForIdentifier:(id)a3 creationBlock:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  os_unfair_lock_lock(&self->_accessLock);
  v10 = [(NSMutableDictionary *)self->_objects objectForKey:v8];
  if (v10)
  {
    v11 = v10;
LABEL_12:

    os_unfair_lock_unlock(&self->_accessLock);
    goto LABEL_13;
  }

  if (v9)
  {
    v12 = objc_autoreleasePoolPush();
    v18 = 0;
    v11 = v9[2](v9, &v18);
    v13 = v18;
    objc_autoreleasePoolPop(v12);
    if (v11)
    {
      [(NSMutableDictionary *)self->_objects setObject:v11 forKey:v8];
      v14 = v11;
    }

    else if (a5)
    {
      v16 = v13;
      *a5 = v13;
    }

    goto LABEL_12;
  }

  os_unfair_lock_unlock(&self->_accessLock);
  if (a5)
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"could not locate object '%@'", v8];
    *a5 = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:v15];
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (VisionCoreObjectCache)init
{
  v7.receiver = self;
  v7.super_class = VisionCoreObjectCache;
  v2 = [(VisionCoreObjectCache *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_accessLock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    objects = v3->_objects;
    v3->_objects = v4;
  }

  return v3;
}

@end