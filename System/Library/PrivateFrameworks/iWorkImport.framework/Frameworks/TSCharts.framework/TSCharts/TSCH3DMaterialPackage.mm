@interface TSCH3DMaterialPackage
+ (id)package;
- (BOOL)isEqual:(id)equal;
- (TSCH3DMaterialPackage)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation TSCH3DMaterialPackage

+ (id)package
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (TSCH3DMaterialPackage)init
{
  v3.receiver = self;
  v3.super_class = TSCH3DMaterialPackage;
  return [(TSCH3DMaterialPackage *)&v3 init];
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
  objc_opt_class();
  v4 = TSUSpecificCast();
  v5 = v4 != 0;

  return v5;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return objc_msgSend_hash(v2, v3, v4, v5, v6);
}

@end