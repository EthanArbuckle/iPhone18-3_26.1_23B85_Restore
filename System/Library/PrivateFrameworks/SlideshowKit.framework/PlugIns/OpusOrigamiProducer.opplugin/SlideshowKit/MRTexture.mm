@interface MRTexture
- (MRTexture)initWithData:(void *)data width:(unsigned int)width height:(unsigned int)height rowBytes:(unsigned int)bytes inGLContext:(id)context options:(id *)options;
- (MRTexture)initWithDatas:(void *)datas dataCount:(unint64_t)count width:(unsigned int)width height:(unsigned int)height rowBytes:(unsigned int)bytes inGLContext:(id)context options:(id *)options;
- (MRTexture)initWithTextureName:(unsigned int)name textureTarget:(unsigned int)target size:(id)size inGLContext:(id)context options:(id *)options;
- (id)_initWithSize:(id)size inGLContext:(id)context isFBO:(BOOL)o options:(id *)options;
- (void)cleanup;
- (void)dealloc;
- (void)setBorderColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha;
- (void)setLabel:(id)label;
- (void)uploadData:(void *)data rowBytes:(unint64_t)bytes toRect:(CGRect)rect;
@end

@implementation MRTexture

- (id)_initWithSize:(id)size inGLContext:(id)context isFBO:(BOOL)o options:(id *)options
{
  oCopy = o;
  objc_sync_enter(context);
  v11 = [(MRTexture *)self init];
  if (v11)
  {
    contextCopy = context;
    v13 = 1111970369;
    v11->_parenGLContext = contextCopy;
    v11->_size = size;
    if (options)
    {
      v11->_hasMipmap = options->var1;
      v11->_isPowerOfTwo = options->var2;
      var3 = options->var3;
      if (options->var3)
      {
        v13 = 40;
      }

      else
      {
        v13 = 1111970369;
      }
    }

    else
    {
      var3 = 0;
    }

    v11->_textureTarget = 3553;
    v11->_pixelFormat = v13;
    if (oCopy)
    {
      contextCopy = [[EAGLContext alloc] initWithAPI:2 sharegroup:{-[EAGLContext sharegroup](v11->_parenGLContext, "sharegroup")}];
      v11->_glContext = contextCopy;
    }

    if (contextCopy)
    {
      v15 = +[EAGLContext currentContext];
      v16 = v15;
      if (v15 != contextCopy)
      {
        [EAGLContext setCurrentContext:contextCopy];
      }

      glGenTextures(1, &v11->_textureName);
      if (oCopy)
      {
        glGenFramebuffers(1, &v11->_framebufferName);
        glBindFramebuffer(0x8D40u, v11->_framebufferName);
      }

      glBindTexture(v11->_textureTarget, v11->_textureName);
      v11->_minFilter = 9729;
      glTexParameteri(v11->_textureTarget, 0x2801u, 9729);
      v11->_magFilter = 9729;
      glTexParameteri(v11->_textureTarget, 0x2800u, 9729);
      v11->_wrapS = 33071;
      glTexParameteri(v11->_textureTarget, 0x2802u, 33071);
      v11->_wrapT = 33071;
      glTexParameteri(v11->_textureTarget, 0x2803u, 33071);
      if (options)
      {
        var4 = options->var4;
      }

      else
      {
        var4 = 0;
      }

      v11->_isFloat = var4;
      if (var3)
      {
        v18 = 6409;
      }

      else
      {
        v18 = 6408;
      }

      if (var3)
      {
        v19 = 6409;
      }

      else
      {
        v19 = 32993;
      }

      if (var4)
      {
        v20 = 5126;
      }

      else
      {
        v20 = 5121;
      }

      glTexImage2D(v11->_textureTarget, 0, v18, v11->_size.width, v11->_size.height, 0, v19, v20, 0);
      if (oCopy)
      {
        glFramebufferTexture2D(0x8D40u, 0x8CE0u, v11->_textureTarget, v11->_textureName, 0);
        v21 = glCheckFramebufferStatus(0x8D40u);
        v22 = v21;
        if (v21 == 36053)
        {
          v22 = 0;
        }

        else
        {
          NSLog(@"Error %X building FBO\n", v21);
        }

        v11->_innerState = objc_alloc_init(MRContextState);
        v23 = v22 == 0;
      }

      else
      {
        v23 = 1;
      }

      if (+[EAGLContext currentContext]!= v15)
      {
        [EAGLContext setCurrentContext:v15];
      }

      if (!v23)
      {

        v11 = 0;
      }
    }

    else
    {
      NSLog(@"Error %d creating context for FBO\n", 0);
    }
  }

  objc_sync_exit(context);
  return v11;
}

- (MRTexture)initWithTextureName:(unsigned int)name textureTarget:(unsigned int)target size:(id)size inGLContext:(id)context options:(id *)options
{
  objc_sync_enter(context);
  v13 = [(MRTexture *)self init];
  if (v13)
  {
    contextCopy = context;
    v15 = 1111970369;
    v13->_parenGLContext = contextCopy;
    v13->_size = size;
    if (options)
    {
      v13->_hasMipmap = options->var1;
      v13->_isPowerOfTwo = options->var2;
      if (options->var3)
      {
        v15 = 40;
      }

      else
      {
        v15 = 1111970369;
      }
    }

    v13->_textureTarget = target;
    v13->_pixelFormat = v15;
    v13->_textureName = name;
    v13->_textureNameIsNotOurs = 1;
    v16 = +[EAGLContext currentContext];
    v17 = v16;
    if (v16 != v13->_parenGLContext)
    {
      [EAGLContext setCurrentContext:?];
    }

    glActiveTexture(0x84C0u);
    glBindTexture(v13->_textureTarget, v13->_textureName);
    v13->_minFilter = 9729;
    glTexParameteri(v13->_textureTarget, 0x2801u, 9729);
    v13->_magFilter = 9729;
    glTexParameteri(v13->_textureTarget, 0x2800u, 9729);
    v13->_wrapS = 33071;
    glTexParameteri(v13->_textureTarget, 0x2802u, 33071);
    v13->_wrapT = 33071;
    glTexParameteri(v13->_textureTarget, 0x2803u, 33071);
    if (+[EAGLContext currentContext]!= v16)
    {
      [EAGLContext setCurrentContext:v16];
    }
  }

  objc_sync_exit(context);
  return v13;
}

- (MRTexture)initWithData:(void *)data width:(unsigned int)width height:(unsigned int)height rowBytes:(unsigned int)bytes inGLContext:(id)context options:(id *)options
{
  v10 = *&height;
  objc_sync_enter(context);
  v14 = [(MRTexture *)self init];
  if (!v14)
  {
    goto LABEL_39;
  }

  v14->_parenGLContext = context;
  v14->_size = (width | (v10 << 32));
  v14->_textureTarget = 3553;
  v15 = +[EAGLContext currentContext];
  v16 = v15;
  if (v15 != v14->_parenGLContext)
  {
    [EAGLContext setCurrentContext:?];
  }

  glGenTextures(1, &v14->_textureName);
  glActiveTexture(0x84C0u);
  glBindTexture(v14->_textureTarget, v14->_textureName);
  if (!options)
  {
    hasMipmap = 0;
    p_hasMipmap = &v14->_hasMipmap;
    textureTarget = v14->_textureTarget;
    if (!v14->_hasMipmap)
    {
      v23 = 1111970369;
      var3 = 0;
      var5 = 0;
      goto LABEL_16;
    }

    var5 = 0;
    var3 = 0;
LABEL_10:
    if (textureTarget == 3553)
    {
      hasMipmap = 1;
      if (var3)
      {
        goto LABEL_7;
      }
    }

    else
    {
      *p_hasMipmap = 0;
      NSLog(@"Consistency error: trying to build mipmaps on non-2D textures");
      textureTarget = v14->_textureTarget;
      hasMipmap = v14->_hasMipmap;
      if (var3)
      {
        goto LABEL_7;
      }
    }

LABEL_12:
    v23 = 1111970369;
    goto LABEL_16;
  }

  var1 = options->var1;
  v14->_hasMipmap = var1;
  p_hasMipmap = &v14->_hasMipmap;
  v14->_isPowerOfTwo = options->var2;
  var3 = options->var3;
  var5 = options->var5;
  textureTarget = v14->_textureTarget;
  if (var1)
  {
    goto LABEL_10;
  }

  hasMipmap = 0;
  if (!var3)
  {
    goto LABEL_12;
  }

LABEL_7:
  v23 = 40;
LABEL_16:
  v14->_pixelFormat = v23;
  if (hasMipmap)
  {
    v24 = 9987;
  }

  else
  {
    v24 = 9729;
  }

  v14->_minFilter = v24;
  glTexParameteri(textureTarget, 0x2801u, v24);
  v14->_magFilter = 9729;
  glTexParameteri(v14->_textureTarget, 0x2800u, 9729);
  v14->_wrapS = 33071;
  glTexParameteri(v14->_textureTarget, 0x2802u, 33071);
  v14->_wrapT = 33071;
  glTexParameteri(v14->_textureTarget, 0x2803u, 33071);
  glPixelStorei(0xCF5u, 1);
  if (var5)
  {
    v25 = 35359;
  }

  else
  {
    v25 = 32993;
  }

  if (var5)
  {
    v26 = 34234;
  }

  else
  {
    v26 = 5121;
  }

  if (var3)
  {
    v27 = 6409;
  }

  else
  {
    v27 = 6408;
  }

  if (var3)
  {
    v28 = 6409;
  }

  else
  {
    v28 = v25;
  }

  if (var3)
  {
    v29 = 5121;
  }

  else
  {
    v29 = v26;
  }

  glTexImage2D(v14->_textureTarget, 0, v27, v14->_size.width, v14->_size.height, 0, v28, v29, data);
  if (*p_hasMipmap)
  {
    glGenerateMipmap(v14->_textureTarget);
  }

  glFinish();
  if (+[EAGLContext currentContext]!= v15)
  {
    [EAGLContext setCurrentContext:v15];
  }

  v14->_timestamp = MRGetCurrentTime();
LABEL_39:
  objc_sync_exit(context);
  return v14;
}

- (MRTexture)initWithDatas:(void *)datas dataCount:(unint64_t)count width:(unsigned int)width height:(unsigned int)height rowBytes:(unsigned int)bytes inGLContext:(id)context options:(id *)options
{
  v10 = *&height;
  objc_sync_enter(context);
  v15 = [(MRTexture *)self init];
  if (v15)
  {
    v15->_parenGLContext = context;
    v15->_size = (width | (v10 << 32));
    v15->_textureTarget = 3553;
    v16 = +[EAGLContext currentContext];
    v17 = v16;
    if (v16 != v15->_parenGLContext)
    {
      [EAGLContext setCurrentContext:?];
    }

    glGenTextures(1, &v15->_textureName);
    glActiveTexture(0x84C0u);
    glBindTexture(v15->_textureTarget, v15->_textureName);
    v15->_hasMipmap = count > 1;
    if (options)
    {
      v15->_isPowerOfTwo = options->var2;
      var3 = options->var3;
    }

    else
    {
      var3 = 0;
    }

    if (count < 2)
    {
      v19 = 9729;
    }

    else if (v15->_textureTarget == 3553)
    {
      v19 = 9987;
    }

    else
    {
      v15->_hasMipmap = 0;
      NSLog(@"Consistency error: trying to build mipmaps on non-2D textures");
      v19 = 9729;
      count = 1;
    }

    if (var3)
    {
      v20 = 40;
    }

    else
    {
      v20 = 1111970369;
    }

    v15->_pixelFormat = v20;
    v15->_minFilter = v19;
    glTexParameteri(v15->_textureTarget, 0x2801u, v19);
    v15->_magFilter = 9729;
    glTexParameteri(v15->_textureTarget, 0x2800u, 9729);
    v15->_wrapS = 33071;
    glTexParameteri(v15->_textureTarget, 0x2802u, 33071);
    v15->_wrapT = 33071;
    glTexParameteri(v15->_textureTarget, 0x2803u, 33071);
    glPixelStorei(0xCF5u, 1);
    if (var3)
    {
      if (count)
      {
        v21 = 0;
        do
        {
          if (datas[v21])
          {
            glTexImage2D(v15->_textureTarget, v21, 6409, v15->_size.width >> v21, v15->_size.height >> v21, 0, 0x1909u, 0x1401u, datas[v21]);
          }

          ++v21;
        }

        while (count != v21);
      }
    }

    else if (count)
    {
      v22 = 0;
      do
      {
        if (datas[v22])
        {
          glTexImage2D(v15->_textureTarget, v22, 6408, v15->_size.width >> v22, v15->_size.height >> v22, 0, 0x80E1u, 0x1401u, datas[v22]);
        }

        ++v22;
      }

      while (count != v22);
    }

    glTexParameteri(v15->_textureTarget, 0x813Du, count - 1);
    glFinish();
    if (+[EAGLContext currentContext]!= v16)
    {
      [EAGLContext setCurrentContext:v16];
    }

    v15->_timestamp = MRGetCurrentTime();
  }

  objc_sync_exit(context);
  return v15;
}

- (void)dealloc
{
  [(MRTexture *)self cleanup];
  v3.receiver = self;
  v3.super_class = MRTexture;
  [(MRTexture *)&v3 dealloc];
}

- (void)cleanup
{
  parenGLContext = self->_parenGLContext;
  objc_sync_enter(parenGLContext);
  if (self->_parenGLContext)
  {
    if (self->_glContext)
    {
      glContext = self->_glContext;
    }

    else
    {
      glContext = self->_parenGLContext;
    }

    v5 = +[EAGLContext currentContext];
    v6 = v5;
    if (v5 != glContext)
    {
      [EAGLContext setCurrentContext:glContext];
    }

    if (self->_textureName && !self->_textureNameIsNotOurs)
    {
      glDeleteTextures(1, &self->_textureName);
    }

    framebufferName = self->_framebufferName;
    *&self->_textureName = 0;
    if (framebufferName)
    {
      glDeleteFramebuffers(1, &self->_framebufferName);
      self->_framebufferName = 0;
    }

    if (+[EAGLContext currentContext]!= v5)
    {
      [EAGLContext setCurrentContext:v5];
    }

    self->_size = 0;
    v8 = self->_glContext;
    if (v8)
    {

      self->_glContext = 0;
    }

    self->_parenGLContext = 0;
    self->_innerState = 0;
  }

  objc_sync_exit(parenGLContext);
}

- (void)uploadData:(void *)data rowBytes:(unint64_t)bytes toRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  parenGLContext = self->_parenGLContext;
  objc_sync_enter(parenGLContext);
  v12 = +[EAGLContext currentContext];
  v13 = v12;
  if (v12 != self->_parenGLContext)
  {
    [EAGLContext setCurrentContext:?];
  }

  glActiveTexture(0x84C0u);
  glBindTexture(self->_textureTarget, self->_textureName);
  pixelFormat = self->_pixelFormat;
  glPixelStorei(0xCF5u, 1);
  if (pixelFormat == 40)
  {
    v15 = 6409;
  }

  else
  {
    v15 = 32993;
  }

  glTexSubImage2D(self->_textureTarget, 0, x, y, width, height, v15, 0x1401u, data);
  glFinish();
  if (+[EAGLContext currentContext]!= v12)
  {
    [EAGLContext setCurrentContext:v12];
  }

  self->_timestamp = MRGetCurrentTime();

  objc_sync_exit(parenGLContext);
}

- (void)setLabel:(id)label
{
  if (label)
  {
    textureName = self->_textureName;
    uTF8String = [label UTF8String];

    glLabelObjectEXT(0x1702u, textureName, 0, uTF8String);
  }
}

- (void)setBorderColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha
{
  self->_borderColor[0] = red;
  self->_borderColor[1] = green;
  self->_borderColor[2] = blue;
  self->_borderColor[3] = alpha;
}

@end