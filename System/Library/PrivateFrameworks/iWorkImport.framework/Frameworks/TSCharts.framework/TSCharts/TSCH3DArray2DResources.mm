@interface TSCH3DArray2DResources
+ (id)_resources;
+ (id)resourcesWithResource:(id)a3;
+ (id)resourcesWithSize:(const void *)a3;
- (TSCH3DArray2DResources)initWithSize:(const void *)a3;
- (tvec2<int>)size;
@end

@implementation TSCH3DArray2DResources

+ (id)resourcesWithSize:(const void *)a3
{
  v4 = [a1 alloc];
  v9 = objc_msgSend_initWithSize_(v4, v5, v6, v7, v8, a3);

  return v9;
}

+ (id)resourcesWithResource:(id)a3
{
  v4 = a3;
  v14 = 0x100000001;
  v8 = objc_msgSend_resourcesWithSize_(a1, v5, COERCE_DOUBLE(0x100000001), v6, v7, &v14);
  v14 = 0;
  objc_msgSend_setResource_atIndex_(v8, v9, v10, v11, v12, v4, &v14);

  return v8;
}

+ (id)_resources
{
  v7 = 0;
  v5 = objc_msgSend_resourcesWithSize_(a1, a2, v2, v3, v4, &v7);

  return v5;
}

- (TSCH3DArray2DResources)initWithSize:(const void *)a3
{
  v13.receiver = self;
  v13.super_class = TSCH3DArray2DResources;
  v4 = [(TSCH3DArray2DResources *)&v13 init];
  if (v4)
  {
    v5 = [TSCH3DArray2D alloc];
    v10 = objc_msgSend_initWithSize_(v5, v6, v7, v8, v9, a3);
    resources = v4->_resources;
    v4->_resources = v10;
  }

  return v4;
}

- (tvec2<int>)size
{
  resources = self->_resources;
  if (resources)
  {
    return objc_msgSend_size(resources, a2, v3, v4, v5);
  }

  else
  {
    *v2 = 0;
  }

  return resources;
}

@end