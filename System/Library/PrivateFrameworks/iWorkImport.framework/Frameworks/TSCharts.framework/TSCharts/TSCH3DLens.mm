@interface TSCH3DLens
+ (id)lens;
- (id)copyWithZone:(_NSZone *)zone;
- (void)calculateCullingPlanes:(void *)planes;
@end

@implementation TSCH3DLens

+ (id)lens
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v10 = objc_msgSend_allocWithZone_(v5, v6, v7, v8, v9, zone);
  v16 = objc_msgSend_init(v10, v11, v12, v13, v14);
  if (v16)
  {
    objc_msgSend_near(self, v15, v17, v18, v19);
    objc_msgSend_setNear_(v16, v20, v21, v22, v23);
    objc_msgSend_far(self, v24, v25, v26, v27);
    objc_msgSend_setFar_(v16, v28, v29, v30, v31);
  }

  return v16;
}

- (void)calculateCullingPlanes:(void *)planes
{
  objc_msgSend_near(self, a2, v3, v4, v5);
  v14 = 0;
  v15 = -1082130432;
  v16 = v8;
  sub_2761B3F30(planes, &v14);
  objc_msgSend_far(self, v9, v10, v11, v12);
  v14 = 0;
  v15 = 1065353216;
  v16 = -v13;
  sub_2761B3F30(planes, &v14);
}

@end