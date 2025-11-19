@interface _PXAssetResourceBag
- (_PXAssetResourceBag)initWithResourceType:(int64_t)a3 atURL:(id)a4;
@end

@implementation _PXAssetResourceBag

- (_PXAssetResourceBag)initWithResourceType:(int64_t)a3 atURL:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _PXAssetResourceBag;
  v8 = [(_PXAssetResourceBag *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_resourceType = a3;
    objc_storeStrong(&v8->_url, a4);
  }

  return v9;
}

@end