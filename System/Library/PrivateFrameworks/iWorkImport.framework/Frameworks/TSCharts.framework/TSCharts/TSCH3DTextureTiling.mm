@interface TSCH3DTextureTiling
+ (id)tiling;
- (BOOL)isEqual:(id)equal;
- (TSCH3DTextureTiling)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation TSCH3DTextureTiling

+ (id)tiling
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (TSCH3DTextureTiling)init
{
  v9.receiver = self;
  v9.super_class = TSCH3DTextureTiling;
  v2 = [(TSCH3DTextureTiling *)&v9 init];
  v7 = v2;
  if (v2)
  {
    objc_msgSend_restoreDefault(v2, v3, v4, v5, v6);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();
  v9 = objc_msgSend_allocWithZone_(v4, v5, v6, v7, v8, zone);

  return objc_msgSend_init(v9, v10, v11, v12, v13);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = TSUSpecificCast();
    v6 = v5 != 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return objc_msgSend_hash(v2, v3, v4, v5, v6);
}

@end