@interface _PXAssetResourceBag
- (_PXAssetResourceBag)initWithResourceType:(int64_t)type atURL:(id)l;
@end

@implementation _PXAssetResourceBag

- (_PXAssetResourceBag)initWithResourceType:(int64_t)type atURL:(id)l
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = _PXAssetResourceBag;
  v8 = [(_PXAssetResourceBag *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_resourceType = type;
    objc_storeStrong(&v8->_url, l);
  }

  return v9;
}

@end