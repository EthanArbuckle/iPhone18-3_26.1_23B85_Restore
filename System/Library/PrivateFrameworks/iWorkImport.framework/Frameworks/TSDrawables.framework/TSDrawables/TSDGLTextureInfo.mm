@interface TSDGLTextureInfo
+ (id)textureInfoWithName:(unsigned int)a3 target:(unsigned int)a4 width:(unsigned int)a5 height:(unsigned int)a6 containsMipmaps:(BOOL)a7;
- (CGSize)size;
- (TSDGLTextureInfo)initWithName:(unsigned int)a3 target:(unsigned int)a4 width:(unsigned int)a5 height:(unsigned int)a6 containsMipmaps:(BOOL)a7;
- (id)description;
- (void)teardown;
@end

@implementation TSDGLTextureInfo

+ (id)textureInfoWithName:(unsigned int)a3 target:(unsigned int)a4 width:(unsigned int)a5 height:(unsigned int)a6 containsMipmaps:(BOOL)a7
{
  v7 = a7;
  v8 = *&a6;
  v9 = *&a5;
  v10 = *&a4;
  v11 = *&a3;
  v12 = objc_alloc(objc_opt_class());
  v14 = objc_msgSend_initWithName_target_width_height_containsMipmaps_(v12, v13, v11, v10, v9, v8, v7);

  return v14;
}

- (TSDGLTextureInfo)initWithName:(unsigned int)a3 target:(unsigned int)a4 width:(unsigned int)a5 height:(unsigned int)a6 containsMipmaps:(BOOL)a7
{
  v13.receiver = self;
  v13.super_class = TSDGLTextureInfo;
  result = [(TSDGLTextureInfo *)&v13 init];
  if (result)
  {
    result->_containsMipmaps = a7;
    result->_name = a3;
    result->_target = a4;
    result->_height = a6;
    result->_width = a5;
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