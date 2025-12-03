@interface TSDGLTextureInfo
+ (id)textureInfoWithName:(unsigned int)name target:(unsigned int)target width:(unsigned int)width height:(unsigned int)height containsMipmaps:(BOOL)mipmaps;
- (CGSize)size;
- (TSDGLTextureInfo)initWithName:(unsigned int)name target:(unsigned int)target width:(unsigned int)width height:(unsigned int)height containsMipmaps:(BOOL)mipmaps;
- (id)description;
- (void)teardown;
@end

@implementation TSDGLTextureInfo

+ (id)textureInfoWithName:(unsigned int)name target:(unsigned int)target width:(unsigned int)width height:(unsigned int)height containsMipmaps:(BOOL)mipmaps
{
  mipmapsCopy = mipmaps;
  v8 = *&height;
  v9 = *&width;
  v10 = *&target;
  v11 = *&name;
  v12 = objc_alloc(objc_opt_class());
  v14 = objc_msgSend_initWithName_target_width_height_containsMipmaps_(v12, v13, v11, v10, v9, v8, mipmapsCopy);

  return v14;
}

- (TSDGLTextureInfo)initWithName:(unsigned int)name target:(unsigned int)target width:(unsigned int)width height:(unsigned int)height containsMipmaps:(BOOL)mipmaps
{
  v13.receiver = self;
  v13.super_class = TSDGLTextureInfo;
  result = [(TSDGLTextureInfo *)&v13 init];
  if (result)
  {
    result->_containsMipmaps = mipmaps;
    result->_name = name;
    result->_target = target;
    result->_height = height;
    result->_width = width;
  }

  return result;
}

- (CGSize)size
{
  LODWORD(v3) = self->_height;
  LODWORD(v2) = self->_width;
  v4 = v2;
  v5 = v3;
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)teardown
{
  glDeleteTextures(1, &self->_name);
  self->_name = 0;
  self->_height = 0;
  self->_width = 0;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TSDGLTextureInfo;
  v4 = [(TSDGLTextureInfo *)&v8 description];
  v6 = &stru_28857D120;
  if (self->_containsMipmaps)
  {
    v6 = @", mipmapped";
  }

  return objc_msgSend_stringWithFormat_(v3, v5, @"%@: {name:%d, size:(%d,%d)%@}", v4, self->_name, self->_width, self->_height, v6);
}

@end