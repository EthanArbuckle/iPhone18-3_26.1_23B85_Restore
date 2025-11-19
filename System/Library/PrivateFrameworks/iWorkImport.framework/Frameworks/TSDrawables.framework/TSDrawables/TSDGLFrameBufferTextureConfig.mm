@interface TSDGLFrameBufferTextureConfig
+ (id)textureConfigWithSize:(CGSize)a3 internalFormat:(int)a4 format:(unsigned int)a5 type:(unsigned int)a6 attachment:(unsigned int)a7 textureParameters:(id)a8 name:(id)a9 backingSurface:(__IOSurface *)a10;
- (CGSize)size;
- (TSDGLFrameBufferTextureConfig)initWithSize:(CGSize)a3 internalFormat:(int)a4 format:(unsigned int)a5 type:(unsigned int)a6 attachment:(unsigned int)a7 textureParameters:(id)a8 name:(id)a9 backingSurface:(__IOSurface *)a10;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation TSDGLFrameBufferTextureConfig

- (TSDGLFrameBufferTextureConfig)initWithSize:(CGSize)a3 internalFormat:(int)a4 format:(unsigned int)a5 type:(unsigned int)a6 attachment:(unsigned int)a7 textureParameters:(id)a8 name:(id)a9 backingSurface:(__IOSurface *)a10
{
  height = a3.height;
  width = a3.width;
  v25.receiver = self;
  v25.super_class = TSDGLFrameBufferTextureConfig;
  v18 = [(TSDGLFrameBufferTextureConfig *)&v25 init];
  v21 = v18;
  if (v18)
  {
    v18->_textureSize.width = width;
    v18->_textureSize.height = height;
    v18->_internalFormat = a4;
    v18->_GLFormat = a5;
    v18->_GLType = a6;
    v18->_attachment = a7;
    v18->_name = objc_msgSend_copy(a9, v19, v20);
    v21->_textureParameters = a8;
    if (a10)
    {
      v21->_backingSurface = CFRetain(a10);
    }

    if (!v21->_name)
    {
      v22 = objc_alloc(MEMORY[0x277CCACA8]);
      v21->_name = objc_msgSend_initWithFormat_(v22, v23, @"TSDGLFrameBufferTextureConfig_UnnamedTexture_%d", qword_280A4C300);
      v21->_isTextureNameGenerated = 1;
      ++qword_280A4C300;
    }
  }

  return v21;
}

- (void)dealloc
{
  backingSurface = self->_backingSurface;
  if (backingSurface)
  {
    CFRelease(backingSurface);
    self->_backingSurface = 0;
  }

  v4.receiver = self;
  v4.super_class = TSDGLFrameBufferTextureConfig;
  [(TSDGLFrameBufferTextureConfig *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSDGLFrameBufferTextureConfig alloc];
  internalFormat = self->_internalFormat;
  GLFormat = self->_GLFormat;
  GLType = self->_GLType;
  attachment = self->_attachment;
  textureParameters = self->_textureParameters;
  if (self->_isTextureNameGenerated)
  {
    return objc_msgSend_initWithSize_internalFormat_format_type_attachment_textureParameters_name_backingSurface_(v4, v5, internalFormat, GLFormat, GLType, attachment, textureParameters, 0, self->_textureSize.width, self->_textureSize.height, self->_backingSurface);
  }

  else
  {
    return objc_msgSend_initWithSize_internalFormat_format_type_attachment_textureParameters_name_backingSurface_(v4, v5, internalFormat, GLFormat, GLType, attachment, textureParameters, self->_name, self->_textureSize.width, self->_textureSize.height, self->_backingSurface);
  }
}

+ (id)textureConfigWithSize:(CGSize)a3 internalFormat:(int)a4 format:(unsigned int)a5 type:(unsigned int)a6 attachment:(unsigned int)a7 textureParameters:(id)a8 name:(id)a9 backingSurface:(__IOSurface *)a10
{
  v12 = *&a7;
  v13 = *&a6;
  v14 = *&a5;
  v15 = *&a4;
  height = a3.height;
  width = a3.width;
  v18 = objc_alloc(objc_opt_class());
  v20 = objc_msgSend_initWithSize_internalFormat_format_type_attachment_textureParameters_name_backingSurface_(v18, v19, v15, v14, v13, v12, a8, a9, width, height, a10);

  return v20;
}

- (CGSize)size
{
  width = self->_textureSize.width;
  height = self->_textureSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end