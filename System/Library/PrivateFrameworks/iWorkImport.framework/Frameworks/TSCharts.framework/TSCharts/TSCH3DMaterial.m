@interface TSCH3DMaterial
+ (id)material;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation TSCH3DMaterial

+ (id)material
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();
  v9 = objc_msgSend_allocWithZone_(v4, v5, v6, v7, v8, a3);

  return objc_msgSend_init(v9, v10, v11, v12, v13);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
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