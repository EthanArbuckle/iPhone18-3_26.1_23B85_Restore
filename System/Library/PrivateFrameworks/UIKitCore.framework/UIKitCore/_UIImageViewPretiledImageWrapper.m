@interface _UIImageViewPretiledImageWrapper
+ (id)cacheValueWithPretiledImage:(id)a3 cacheKey:(id)a4;
- (BOOL)isEqual:(id)a3;
- (void)dealloc;
@end

@implementation _UIImageViewPretiledImageWrapper

+ (id)cacheValueWithPretiledImage:(id)a3 cacheKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(_UIImageViewPretiledImageWrapper);
  p_isa = &v8->super.isa;
  if (v8)
  {
    objc_storeStrong(&v8->_pretiledImage, a3);
    objc_storeStrong(p_isa + 2, a4);
    v10 = p_isa;
  }

  return p_isa;
}

- (void)dealloc
{
  [qword_1ED4A2C68 removeObjectForKey:self->_cacheKey];
  v3.receiver = self;
  v3.super_class = _UIImageViewPretiledImageWrapper;
  [(_UIImageViewPretiledImageWrapper *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_pretiledImage == v4[1];

  return v5;
}

@end