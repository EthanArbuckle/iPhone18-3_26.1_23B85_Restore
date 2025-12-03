@interface NSObject(UNCObjectCache)
+ (UNCObjectCache)unc_objectCache;
- (uint64_t)unc_objectCache;
@end

@implementation NSObject(UNCObjectCache)

+ (UNCObjectCache)unc_objectCache
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v2 = objc_getAssociatedObject(selfCopy, "UNCObjectCacheForClass");
  if (!v2)
  {
    v2 = objc_alloc_init(UNCObjectCache);
    objc_setAssociatedObject(selfCopy, "UNCObjectCacheForClass", v2, 0x301);
  }

  objc_sync_exit(selfCopy);

  return v2;
}

- (uint64_t)unc_objectCache
{
  v0 = objc_opt_class();

  return [v0 unc_objectCache];
}

@end