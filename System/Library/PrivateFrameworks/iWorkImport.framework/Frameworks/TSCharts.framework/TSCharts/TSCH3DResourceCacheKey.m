@interface TSCH3DResourceCacheKey
+ (id)keyWithLoader:(id)a3 resource:(id)a4 virtualScreen:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (TSCH3DResourceCacheKey)initWithLoader:(id)a3 resource:(id)a4 virtualScreen:(int64_t)a5;
- (id)description;
@end

@implementation TSCH3DResourceCacheKey

+ (id)keyWithLoader:(id)a3 resource:(id)a4 virtualScreen:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a1 alloc];
  v15 = objc_msgSend_initWithLoader_resource_virtualScreen_(v10, v11, v12, v13, v14, v8, v9, a5);

  return v15;
}

- (TSCH3DResourceCacheKey)initWithLoader:(id)a3 resource:(id)a4 virtualScreen:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = TSCH3DResourceCacheKey;
  v11 = [(TSCH3DResourceCacheKey *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_loader, a3);
    objc_storeStrong(&v12->_resource, a4);
    v12->_virtualScreen = a5;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = TSCH3DResourceCacheKey;
  v4 = [(TSCH3DResourceCacheKey *)&v11 description];
  v9 = objc_msgSend_stringWithFormat_(v3, v5, v6, v7, v8, @"%@(loader %@ resource %@)", v4, self->_loader, self->_resource);

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    loader = self->_loader;
    v11 = objc_msgSend_loader(v5, v7, v8, v9, v10);
    isEqual = objc_msgSend_isEqual_(loader, v12, v13, v14, v15, v11);

    resource = self->_resource;
    v22 = objc_msgSend_resource(v5, v18, v19, v20, v21);
    v27 = objc_msgSend_isEqual_(resource, v23, v24, v25, v26, v22);

    virtualScreen = self->_virtualScreen;
    v33 = v5[3];
    if (byte_280A46430 == 1)
    {
      v43 = self->_loader;
      v34 = objc_msgSend_loader(v5, v28, v29, v30, v31);
      v35 = self->_resource;
      v40 = objc_msgSend_resource(v5, v36, v37, v38, v39);
      NSLog(&cfstr_ComparingLoade.isa, v43, v34, isEqual, v35, v40, v27, self->_virtualScreen, v5[3], virtualScreen == v33);
    }

    if (virtualScreen == v33)
    {
      v41 = isEqual & v27;
    }

    else
    {
      v41 = 0;
    }
  }

  else
  {
    v41 = 0;
  }

  return v41;
}

@end