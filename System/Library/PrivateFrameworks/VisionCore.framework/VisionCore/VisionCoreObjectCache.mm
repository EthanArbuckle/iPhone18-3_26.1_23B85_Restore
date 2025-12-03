@interface VisionCoreObjectCache
- (VisionCoreObjectCache)init;
- (id)objectForIdentifier:(id)identifier creationBlock:(id)block error:(id *)error;
- (void)removeAllObjects;
@end

@implementation VisionCoreObjectCache

- (void)removeAllObjects
{
  os_unfair_lock_lock(&self->_accessLock);
  [(NSMutableDictionary *)self->_objects removeAllObjects];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (id)objectForIdentifier:(id)identifier creationBlock:(id)block error:(id *)error
{
  identifierCopy = identifier;
  blockCopy = block;
  os_unfair_lock_lock(&self->_accessLock);
  v10 = [(NSMutableDictionary *)self->_objects objectForKey:identifierCopy];
  if (v10)
  {
    v11 = v10;
LABEL_12:

    os_unfair_lock_unlock(&self->_accessLock);
    goto LABEL_13;
  }

  if (blockCopy)
  {
    v12 = objc_autoreleasePoolPush();
    v18 = 0;
    v11 = blockCopy[2](blockCopy, &v18);
    v13 = v18;
    objc_autoreleasePoolPop(v12);
    if (v11)
    {
      [(NSMutableDictionary *)self->_objects setObject:v11 forKey:identifierCopy];
      v14 = v11;
    }

    else if (error)
    {
      v16 = v13;
      *error = v13;
    }

    goto LABEL_12;
  }

  os_unfair_lock_unlock(&self->_accessLock);
  if (error)
  {
    identifierCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"could not locate object '%@'", identifierCopy];
    *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:identifierCopy];
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