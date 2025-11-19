@interface FxPlugAPIHandler
- (BOOL)conformsToProtocol:(id)a3 version:(unsigned int)a4;
- (FxPlugAPIHandler)initWithDelegate:(id)a3;
- (id)errorWithString:(id)a3 andCode:(int64_t)a4;
- (unint64_t)numberOfCores;
- (void)allocateMemory:(unint64_t)a3 clear:(BOOL)a4 clearWith:(unsigned __int8)a5 error:(id *)a6;
- (void)createPBuffer:(unsigned int *)a3 withTarget:(unsigned int)a4 error:(id *)a5;
- (void)createTexture:(id *)a3 withDOD:(FxRect)a4 GLTarget:(unsigned int)a5 level:(int)a6 internalFormat:(unsigned int)a7 width:(int)width height:(int)a9 border:(int)a10 format:(unsigned int)a11 type:(unsigned int)a12 pixels:(const void *)pixels origin:(unint64_t)a14 pixelAspectRatio:(double)a15 andError:(id *)a16;
- (void)deletePBuffer:(unsigned int)a3 error:(id *)a4;
- (void)deleteTexture:(id)a3 error:(id *)a4;
- (void)freeMemory:(void *)a3 error:(id *)a4;
- (void)performSelector:(SEL)a3 onTarget:(id)a4 withObject:(id)a5 onThreads:(int64_t)a6 waitUntilDone:(BOOL)a7 error:(id *)a8;
- (void)runFxPlugThread:(id)a3;
@end

@implementation FxPlugAPIHandler

- (FxPlugAPIHandler)initWithDelegate:(id)a3
{
  v5.receiver = self;
  v5.super_class = FxPlugAPIHandler;
  result = [(FxPlugAPIHandler *)&v5 init];
  if (result)
  {
    result->_delegate = a3;
  }

  return result;
}

- (BOOL)conformsToProtocol:(id)a3 version:(unsigned int)a4
{
  if (a4 > 1)
  {
    return 0;
  }

  return &unk_287366FF0 == a3 || &unk_28736D710 == a3 || &unk_287366AA0 == a3 || &unk_28736D590 == a3 || &unk_287357C70 == a3;
}

- (id)errorWithString:(id)a3 andCode:(int64_t)a4
{
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObject:a3 forKey:*MEMORY[0x277CCA450]];
  v6 = MEMORY[0x277CCA9B8];
  v7 = FxPlugErrorDomain;

  return [v6 errorWithDomain:v7 code:a4 userInfo:v5];
}

- (void)allocateMemory:(unint64_t)a3 clear:(BOOL)a4 clearWith:(unsigned __int8)a5 error:(id *)a6
{
  v7 = a5;
  v8 = a4;
  v11 = malloc_type_malloc(a3, 0xA91F8EACuLL);
  v12 = v11;
  if (!v11)
  {
    if (a6)
    {
      *a6 = -[FxPlugAPIHandler errorWithString:andCode:](self, "errorWithString:andCode:", [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to allocate memory in %s", "-[FxPlugAPIHandler(HostResourcesAPIHandler) allocateMemory:clear:clearWith:error:]"], 6);
    }

    return v12;
  }

  if (!v8)
  {
    return v12;
  }

  return memset(v11, v7, a3);
}

- (void)freeMemory:(void *)a3 error:(id *)a4
{
  if (malloc_size(a3))
  {

    free(a3);
  }

  else if (a4)
  {
    *a4 = -[FxPlugAPIHandler errorWithString:andCode:](self, "errorWithString:andCode:", [MEMORY[0x277CCACA8] stringWithFormat:@"Attempt to free a memory block (%p) not allocated in  %s", a3, "-[FxPlugAPIHandler(HostResourcesAPIHandler) freeMemory:error:]"], 7);
  }
}

- (void)createTexture:(id *)a3 withDOD:(FxRect)a4 GLTarget:(unsigned int)a5 level:(int)a6 internalFormat:(unsigned int)a7 width:(int)width height:(int)a9 border:(int)a10 format:(unsigned int)a11 type:(unsigned int)a12 pixels:(const void *)pixels origin:(unint64_t)a14 pixelAspectRatio:(double)a15 andError:(id *)a16
{
  v19 = *&a4.var2;
  v20 = *&a4.var0;
  var1 = a4.var1;
  var3 = a4.var3;
  if (a3)
  {
    v25 = 0;
  }

  else
  {
    v25 = -[FxPlugAPIHandler errorWithString:andCode:](self, "errorWithString:andCode:", [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid FxTexture pointer sent to %s", "-[FxPlugAPIHandler(HostResourcesAPIHandler) createTexture:withDOD:GLTarget:level:internalFormat:width:height:border:format:type:pixels:origin:pixelAspectRatio:andError:]"], 5);
  }

  if (v19 <= v20 || var3 <= var1)
  {
    v25 = -[FxPlugAPIHandler errorWithString:andCode:](self, "errorWithString:andCode:", [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid dod sent to %s", "-[FxPlugAPIHandler(HostResourcesAPIHandler) createTexture:withDOD:GLTarget:level:internalFormat:width:height:border:format:type:pixels:origin:pixelAspectRatio:andError:]"], 5);
  }

  textures[0] = 0;
  if (!v25)
  {
    glGenTextures(1, textures);
    Error = glGetError();
    if (Error && (LOBYTE(v33[0]) = 0, (v27 = -[FxPlugAPIHandler errorWithString:andCode:](self, "errorWithString:andCode:", [MEMORY[0x277CCACA8] stringWithFormat:@"OpenGL returned an error (%d) to %s while generating a texture: %s", Error, "-[FxPlugAPIHandler(HostResourcesAPIHandler) createTexture:withDOD:GLTarget:level:internalFormat:width:height:border:format:type:pixels:origin:pixelAspectRatio:andError:]", v33], 8)) != 0) || (glTexImage2D(a5, a6, a7, width, a9, a10, a11, a12, pixels), v28 = glGetError(), v28) && (LOBYTE(v33[0]) = 0, (v27 = -[FxPlugAPIHandler errorWithString:andCode:](self, "errorWithString:andCode:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"OpenGL returned an error (%d) to %s while uploading a texture: %s", v28, "-[FxPlugAPIHandler(HostResourcesAPIHandler) createTexture:withDOD:GLTarget:level:internalFormat:width:height:border:format:type:pixels:origin:pixelAspectRatio:andError:]", v33), 8)) != 0))
    {
      v25 = v27;
      goto LABEL_13;
    }

    glBindTexture(a5, textures[0]);
    v29 = glGetError();
    if (v29)
    {
      LOBYTE(v33[0]) = 0;
      v25 = -[FxPlugAPIHandler errorWithString:andCode:](self, "errorWithString:andCode:", [MEMORY[0x277CCACA8] stringWithFormat:@"OpenGL returned an error (%d) to %s while binding a texture: %s", v29, "-[FxPlugAPIHandler(HostResourcesAPIHandler) createTexture:withDOD:GLTarget:level:internalFormat:width:height:border:format:type:pixels:origin:pixelAspectRatio:andError:]", v33], 8);
      if (!a3)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v25 = 0;
      if (!a3)
      {
        goto LABEL_13;
      }
    }

    if (!v25)
    {
      v30 = [FxTexture alloc];
      v33[0] = width;
      v33[1] = a9;
      v34 = xmmword_26084A650;
      v35 = 2;
      v36 = a14;
      v37 = 0;
      v38 = 1;
      memset(v39, 0, sizeof(v39));
      v40 = a15;
      v31 = [(FxTexture *)v30 initWithInfo:v33 textureId:textures[0] andTarget:a5];
      *a3 = v31;
      if (v31)
      {
        [(FxImage *)v31 setDod:v20, v19];
        [*a3 setBounds:{v20 * a15, var1, (v19 - v20) * a15, (var3 - var1)}];
        v25 = 0;
      }

      else
      {
        v25 = -[FxPlugAPIHandler errorWithString:andCode:](self, "errorWithString:andCode:", [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to allocate an FxTexture in %s", "-[FxPlugAPIHandler(HostResourcesAPIHandler) createTexture:withDOD:GLTarget:level:internalFormat:width:height:border:format:type:pixels:origin:pixelAspectRatio:andError:]"], 6);
        glBindTexture(a5, 0);
        glDeleteTextures(1, textures);
      }
    }
  }

LABEL_13:
  if (a16)
  {
    *a16 = v25;
  }
}

- (void)deleteTexture:(id)a3 error:(id *)a4
{
  if (a3 && [a3 textureId] || (v7 = -[FxPlugAPIHandler errorWithString:andCode:](self, "errorWithString:andCode:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Invalid FxTexture pointer (%p) in %s", a3, "-[FxPlugAPIHandler(HostResourcesAPIHandler) deleteTexture:error:]"), 5)) == 0)
  {
    textures = [a3 textureId];
    glDeleteTextures(1, &textures);

    v7 = 0;
  }

  if (a4)
  {
    *a4 = v7;
  }
}

- (void)createPBuffer:(unsigned int *)a3 withTarget:(unsigned int)a4 error:(id *)a5
{
  if (!a3)
  {
    v10 = -[FxPlugAPIHandler errorWithString:andCode:](self, "errorWithString:andCode:", [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid pBuffer pointer (%p) in %s", 0, "-[FxPlugAPIHandler(HostResourcesAPIHandler) createPBuffer:withTarget:error:]"], 5);
    if (v10)
    {
LABEL_11:
      if (!a5)
      {
        return;
      }

      goto LABEL_12;
    }
  }

  glGenBuffers(1, a3);
  Error = glGetError();
  if (Error)
  {
    v13 = 0;
    v10 = -[FxPlugAPIHandler errorWithString:andCode:](self, "errorWithString:andCode:", [MEMORY[0x277CCACA8] stringWithFormat:@"OpenGL Error (%d): %s in %s", Error, &v13, "-[FxPlugAPIHandler(HostResourcesAPIHandler) createPBuffer:withTarget:error:]"], 8);
    if (!a3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v10 = 0;
    if (!a3)
    {
      goto LABEL_11;
    }
  }

  if (v10)
  {
    goto LABEL_11;
  }

  glBindBuffer(a4, *a3);
  v11 = glGetError();
  if (v11)
  {
    v12 = 0;
    v10 = -[FxPlugAPIHandler errorWithString:andCode:](self, "errorWithString:andCode:", [MEMORY[0x277CCACA8] stringWithFormat:@"OpenGL Error (%d): %s in %s", v11, &v12, "-[FxPlugAPIHandler(HostResourcesAPIHandler) createPBuffer:withTarget:error:]"], 8);
    goto LABEL_11;
  }

  v10 = 0;
  if (!a5)
  {
    return;
  }

LABEL_12:
  *a5 = v10;
}

- (void)deletePBuffer:(unsigned int)a3 error:(id *)a4
{
  buffers = a3;
  glDeleteBuffers(1, &buffers);
  Error = glGetError();
  if (Error)
  {
    v8 = 0;
    v7 = -[FxPlugAPIHandler errorWithString:andCode:](self, "errorWithString:andCode:", [MEMORY[0x277CCACA8] stringWithFormat:@"OpenGL Error (%d): %s in %s", Error, &v8, "-[FxPlugAPIHandler(HostResourcesAPIHandler) deletePBuffer:error:]"], 8);
    if (!a4)
    {
      return;
    }
  }

  else
  {
    v7 = 0;
    if (!a4)
    {
      return;
    }
  }

  *a4 = v7;
}

- (unint64_t)numberOfCores
{
  v2 = [MEMORY[0x277CCAC38] processInfo];

  return [v2 activeProcessorCount];
}

- (void)performSelector:(SEL)a3 onTarget:(id)a4 withObject:(id)a5 onThreads:(int64_t)a6 waitUntilDone:(BOOL)a7 error:(id *)a8
{
  v8 = a7;
  v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  if (v22)
  {
    v12 = 0;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    goto LABEL_8;
  }

  v12 = -[FxPlugAPIHandler errorWithString:andCode:](self, "errorWithString:andCode:", [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to allocate thread array in %s", "-[FxPlugAPIHandler(HostResourcesAPIHandler) performSelector:onTarget:withObject:onThreads:waitUntilDone:error:]"], 7);
  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_3:
  v13 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
  v14 = v13;
  if (v13)
  {
    [v13 lock];
  }

  else
  {
    v12 = -[FxPlugAPIHandler errorWithString:andCode:](self, "errorWithString:andCode:", [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to allocate lock in %s", "-[FxPlugAPIHandler(HostResourcesAPIHandler) performSelector:onTarget:withObject:onThreads:waitUntilDone:error:]"], 7);
  }

LABEL_8:
  v20 = v8;
  if (a6 >= 1 && !v12)
  {
    v15 = 1;
    do
    {
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:sel_getName(a3)];
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{a4, @"FxThreadTarget", a5, @"FxThreadObject", v16, @"FxThreadSelector", objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", v15 - 1), @"FxThreadNumber", v14, @"FxThreadLock", 0}];
      v18 = [objc_alloc(MEMORY[0x277CCACC8]) initWithTarget:self selector:sel_runFxPlugThread_ object:v17];
      if (v16 && v17 && (v19 = v18) != 0)
      {
        [v22 addObject:v18];
        [v19 start];
        v12 = 0;
      }

      else
      {
        v12 = -[FxPlugAPIHandler errorWithString:andCode:](self, "errorWithString:andCode:", [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to allocate thread in %s", "-[FxPlugAPIHandler(HostResourcesAPIHandler) performSelector:onTarget:withObject:onThreads:waitUntilDone:error:]"], 7);
      }

      if (v15 >= a6)
      {
        break;
      }

      ++v15;
    }

    while (!v12);
  }

  if (v20)
  {
    [v14 unlockWithCondition:a6];
    [v14 lockWhenCondition:0];
    [v14 unlock];
  }

  if (a8)
  {
    *a8 = v12;
  }
}

- (void)runFxPlugThread:(id)a3
{
  PCAutoreleasePool::PCAutoreleasePool(&v11);
  v5 = sel_registerName([objc_msgSend(a3 objectForKey:{@"FxThreadSelector", "UTF8String"}]);
  v6 = [a3 objectForKey:@"FxThreadTarget"];
  v7 = [a3 objectForKey:@"FxThreadObject"];
  v8 = [a3 objectForKey:@"FxThreadNumber"];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ worker thread #%d", -[FxPlugAPIDelegate displayName](self->_delegate, "displayName"), objc_msgSend(v8, "intValue")];
  [objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];
  pthread_setname_np([v9 UTF8String]);
  [v6 performSelector:v5 withObject:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", v7, @"FxThreadObject", v8, @"FxThreadNumber", 0)}];
  v10 = [a3 objectForKey:@"FxThreadLock"];
  [v10 lock];
  [v10 unlockWithCondition:{objc_msgSend(v10, "condition") - 1}];
  PCAutoreleasePool::~PCAutoreleasePool(&v11);
}

@end