@interface _UIImageAsyncCGImageContent
- (BOOL)isDecompressing;
- (BOOL)isEqual:(id)equal;
- (CGImage)CGImage;
- (_UIImageAsyncCGImageContent)initWithData:(id)data immediateLoadWithMaxSize:(CGSize)size scale:(double)scale renderingIntent:(unint64_t)intent cache:(BOOL)cache;
- (id)description;
- (int64_t)orientation;
- (unint64_t)hash;
@end

@implementation _UIImageAsyncCGImageContent

- (_UIImageAsyncCGImageContent)initWithData:(id)data immediateLoadWithMaxSize:(CGSize)size scale:(double)scale renderingIntent:(unint64_t)intent cache:(BOOL)cache
{
  cacheCopy = cache;
  height = size.height;
  width = size.width;
  dataCopy = data;
  if (!dataCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIImageContent.m" lineNumber:1134 description:@"Need data"];
  }

  v20.receiver = self;
  v20.super_class = _UIImageAsyncCGImageContent;
  v15 = [(_UIImageContent *)&v20 initWithScale:scale];
  if (v15)
  {
    height = [[_UIOldCGImageDecompressor alloc] initWithData:dataCopy immediateLoadWithMaxSize:intent renderingIntent:cacheCopy cache:width, height];
    decompressor = v15->_decompressor;
    v15->_decompressor = height;
  }

  return v15;
}

- (id)description
{
  if (self && (v3 = objc_getProperty(self, a2, 64, 1)) != 0)
  {
    v4 = v3;
    v5 = MEMORY[0x1E696AEC0];
    v6 = objc_opt_class();
    v7 = [v5 stringWithFormat:@"<%@:%p (decompressing) <%@:%p>>", v6, self, objc_opt_class(), v4];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _UIImageAsyncCGImageContent;
    v7 = [(_UIImageCGImageContent *)&v9 description];
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (!self ? (Property = 0) : (Property = objc_getProperty(self, v6, 64, 1)), (v9 = Property, !v5) ? (v10 = 0) : (v10 = objc_getProperty(v5, v8, 64, 1)), v11 = v10, v9 | v11))
    {
      v13 = v11;
      v14 = v9;
      v15 = v13;
      v16 = v15;
      if (v14 == v15)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0;
        if (v14 && v15)
        {
          v12 = [v14 isEqual:v15];
        }
      }
    }

    else
    {
      v18.receiver = self;
      v18.super_class = _UIImageAsyncCGImageContent;
      v12 = [(_UIImageCGImageContent *)&v18 isEqual:v5];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  if (self && (v3 = objc_getProperty(self, a2, 64, 1)) != 0)
  {
    v4 = v3;
    v5 = [v3 hash];

    return v5;
  }

  else
  {
    explicit = atomic_load_explicit(&self->super._imageRef, memory_order_acquire);
    if (!explicit)
    {
      explicit = *MEMORY[0x1E695E738];
    }

    return CFHash(explicit);
  }
}

- (BOOL)isDecompressing
{
  if (self)
  {
    self = objc_getProperty(self, a2, 64, 1);
  }

  return self != 0;
}

- (CGImage)CGImage
{
  if (!self)
  {
    return atomic_load_explicit(&self->super._imageRef, memory_order_acquire);
  }

  v3 = objc_getProperty(self, a2, 64, 1);
  if (!v3)
  {
    return atomic_load_explicit(&self->super._imageRef, memory_order_acquire);
  }

  v4 = v3;
  v5 = CGImageRetain([v3 waitForImageRef]);
  CGImageRelease(atomic_exchange(&self->super._imageRef, v5));
  [(_UIOldCGImageDecompressor *)v4 _waitForMetadata];
  self->_orientation = (v4[64] >> 1) & 7;
  objc_setProperty_atomic(self, v6, 0, 64);

  return v5;
}

- (int64_t)orientation
{
  if (!self)
  {
    return self->_orientation;
  }

  v3 = objc_getProperty(self, a2, 64, 1);
  if (!v3)
  {
    return self->_orientation;
  }

  v4 = v3;
  [(_UIOldCGImageDecompressor *)v3 _waitForMetadata];
  v5 = (v4[64] >> 1) & 7;

  return v5;
}

@end