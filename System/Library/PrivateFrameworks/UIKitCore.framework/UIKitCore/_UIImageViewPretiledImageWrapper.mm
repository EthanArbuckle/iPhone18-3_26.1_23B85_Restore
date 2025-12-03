@interface _UIImageViewPretiledImageWrapper
+ (id)cacheValueWithPretiledImage:(id)image cacheKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (void)dealloc;
@end

@implementation _UIImageViewPretiledImageWrapper

+ (id)cacheValueWithPretiledImage:(id)image cacheKey:(id)key
{
  imageCopy = image;
  keyCopy = key;
  v8 = objc_alloc_init(_UIImageViewPretiledImageWrapper);
  p_isa = &v8->super.isa;
  if (v8)
  {
    objc_storeStrong(&v8->_pretiledImage, image);
    objc_storeStrong(p_isa + 2, key);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_pretiledImage == equalCopy[1];

  return v5;
}

@end