@interface FxPlugAPIHandler
- (BOOL)conformsToProtocol:(id)protocol version:(unsigned int)version;
- (FxPlugAPIHandler)initWithDelegate:(id)delegate;
- (id)errorWithString:(id)string andCode:(int64_t)code;
- (unint64_t)numberOfCores;
- (void)allocateMemory:(unint64_t)memory clear:(BOOL)clear clearWith:(unsigned __int8)with error:(id *)error;
- (void)createPBuffer:(unsigned int *)buffer withTarget:(unsigned int)target error:(id *)error;
- (void)createTexture:(id *)texture withDOD:(FxRect)d GLTarget:(unsigned int)target level:(int)level internalFormat:(unsigned int)format width:(int)width height:(int)height border:(int)self0 format:(unsigned int)self1 type:(unsigned int)self2 pixels:(const void *)pixels origin:(unint64_t)self4 pixelAspectRatio:(double)self5 andError:(id *)self6;
- (void)deletePBuffer:(unsigned int)buffer error:(id *)error;
- (void)deleteTexture:(id)texture error:(id *)error;
- (void)freeMemory:(void *)memory error:(id *)error;
- (void)performSelector:(SEL)selector onTarget:(id)target withObject:(id)object onThreads:(int64_t)threads waitUntilDone:(BOOL)done error:(id *)error;
- (void)runFxPlugThread:(id)thread;
@end

@implementation FxPlugAPIHandler

- (FxPlugAPIHandler)initWithDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = FxPlugAPIHandler;
  result = [(FxPlugAPIHandler *)&v5 init];
  if (result)
  {
    result->_delegate = delegate;
  }

  return result;
}

- (BOOL)conformsToProtocol:(id)protocol version:(unsigned int)version
{
  if (version > 1)
  {
    return 0;
  }

  return &unk_287366FF0 == protocol || &unk_28736D710 == protocol || &unk_287366AA0 == protocol || &unk_28736D590 == protocol || &unk_287357C70 == protocol;
}

- (id)errorWithString:(id)string andCode:(int64_t)code
{
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObject:string forKey:*MEMORY[0x277CCA450]];
  v6 = MEMORY[0x277CCA9B8];
  v7 = FxPlugErrorDomain;

  return [v6 errorWithDomain:v7 code:code userInfo:v5];
}

- (void)allocateMemory:(unint64_t)memory clear:(BOOL)clear clearWith:(unsigned __int8)with error:(id *)error
{
  withCopy = with;
  clearCopy = clear;
  v11 = malloc_type_malloc(memory, 0xA91F8EACuLL);
  v12 = v11;
  if (!v11)
  {
    if (error)
    {
      *error = -[FxPlugAPIHandler errorWithString:andCode:](self, "errorWithString:andCode:", [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to allocate memory in %s", "-[FxPlugAPIHandler(HostResourcesAPIHandler) allocateMemory:clear:clearWith:error:]"], 6);
    }

    return v12;
  }

  if (!clearCopy)
  {
    return v12;
  }

  return memset(v11, withCopy, memory);
}

- (void)freeMemory:(void *)memory error:(id *)error
{
  if (malloc_size(memory))
  {

    free(memory);
  }

  else if (error)
  {
    *error = -[FxPlugAPIHandler errorWithString:andCode:](self, "errorWithString:andCode:", [MEMORY[0x277CCACA8] stringWithFormat:@"Attempt to free a memory block (%p) not allocated in  %s", memory, "-[FxPlugAPIHandler(HostResourcesAPIHandler) freeMemory:error:]"], 7);
  }
}

- (void)createTexture:(id *)texture withDOD:(FxRect)d GLTarget:(unsigned int)target level:(int)level internalFormat:(unsigned int)format width:(int)width height:(int)height border:(int)self0 format:(unsigned int)self1 type:(unsigned int)self2 pixels:(const void *)pixels origin:(unint64_t)self4 pixelAspectRatio:(double)self5 andError:(id *)self6
{
  v19 = *&d.var2;
  v20 = *&d.var0;
  var1 = d.var1;
  var3 = d.var3;
  if (texture)
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
    if (Error && (LOBYTE(v33[0]) = 0, (v27 = -[FxPlugAPIHandler errorWithString:andCode:](self, "errorWithString:andCode:", [MEMORY[0x277CCACA8] stringWithFormat:@"OpenGL returned an error (%d) to %s while generating a texture: %s", Error, "-[FxPlugAPIHandler(HostResourcesAPIHandler) createTexture:withDOD:GLTarget:level:internalFormat:width:height:border:format:type:pixels:origin:pixelAspectRatio:andError:]", v33], 8)) != 0) || (glTexImage2D(target, level, format, width, height, border, a11, type, pixels), v28 = glGetError(), v28) && (LOBYTE(v33[0]) = 0, (v27 = -[FxPlugAPIHandler errorWithString:andCode:](self, "errorWithString:andCode:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"OpenGL returned an error (%d) to %s while uploading a texture: %s", v28, "-[FxPlugAPIHandler(HostResourcesAPIHandler) createTexture:withDOD:GLTarget:level:internalFormat:width:height:border:format:type:pixels:origin:pixelAspectRatio:andError:]", v33), 8)) != 0))
    {
      v25 = v27;
      goto LABEL_13;
    }

    glBindTexture(target, textures[0]);
    v29 = glGetError();
    if (v29)
    {
      LOBYTE(v33[0]) = 0;
      v25 = -[FxPlugAPIHandler errorWithString:andCode:](self, "errorWithString:andCode:", [MEMORY[0x277CCACA8] stringWithFormat:@"OpenGL returned an error (%d) to %s while binding a texture: %s", v29, "-[FxPlugAPIHandler(HostResourcesAPIHandler) createTexture:withDOD:GLTarget:level:internalFormat:width:height:border:format:type:pixels:origin:pixelAspectRatio:andError:]", v33], 8);
      if (!texture)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v25 = 0;
      if (!texture)
      {
        goto LABEL_13;
      }
    }

    if (!v25)
    {
      v30 = [FxTexture alloc];
      v33[0] = width;
      v33[1] = height;
      v34 = xmmword_26084A650;
      v35 = 2;
      originCopy = origin;
      v37 = 0;
      v38 = 1;
      memset(v39, 0, sizeof(v39));
      ratioCopy = ratio;
      v31 = [(FxTexture *)v30 initWithInfo:v33 textureId:textures[0] andTarget:target];
      *texture = v31;
      if (v31)
      {
        [(FxImage *)v31 setDod:v20, v19];
        [*texture setBounds:{v20 * ratio, var1, (v19 - v20) * ratio, (var3 - var1)}];
        v25 = 0;
      }

      else
      {
        v25 = -[FxPlugAPIHandler errorWithString:andCode:](self, "errorWithString:andCode:", [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to allocate an FxTexture in %s", "-[FxPlugAPIHandler(HostResourcesAPIHandler) createTexture:withDOD:GLTarget:level:internalFormat:width:height:border:format:type:pixels:origin:pixelAspectRatio:andError:]"], 6);
        glBindTexture(target, 0);
        glDeleteTextures(1, textures);
      }
    }
  }

LABEL_13:
  if (error)
  {
    *error = v25;
  }
}

- (void)deleteTexture:(id)texture error:(id *)error
{
  if (texture && [texture textureId] || (v7 = -[FxPlugAPIHandler errorWithString:andCode:](self, "errorWithString:andCode:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Invalid FxTexture pointer (%p) in %s", texture, "-[FxPlugAPIHandler(HostResourcesAPIHandler) deleteTexture:error:]"), 5)) == 0)
  {
    textures = [texture textureId];
    glDeleteTextures(1, &textures);

    v7 = 0;
  }

  if (error)
  {
    *error = v7;
  }
}

- (void)createPBuffer:(unsigned int *)buffer withTarget:(unsigned int)target error:(id *)error
{
  if (!buffer)
  {
    v10 = -[FxPlugAPIHandler errorWithString:andCode:](self, "errorWithString:andCode:", [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid pBuffer pointer (%p) in %s", 0, "-[FxPlugAPIHandler(HostResourcesAPIHandler) createPBuffer:withTarget:error:]"], 5);
    if (v10)
    {
LABEL_11:
      if (!error)
      {
        return;
      }

      goto LABEL_12;
    }
  }

  glGenBuffers(1, buffer);
  Error = glGetError();
  if (Error)
  {
    v13 = 0;
    v10 = -[FxPlugAPIHandler errorWithString:andCode:](self, "errorWithString:andCode:", [MEMORY[0x277CCACA8] stringWithFormat:@"OpenGL Error (%d): %s in %s", Error, &v13, "-[FxPlugAPIHandler(HostResourcesAPIHandler) createPBuffer:withTarget:error:]"], 8);
    if (!buffer)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v10 = 0;
    if (!buffer)
    {
      goto LABEL_11;
    }
  }

  if (v10)
  {
    goto LABEL_11;
  }

  glBindBuffer(target, *buffer);
  v11 = glGetError();
  if (v11)
  {
    v12 = 0;
    v10 = -[FxPlugAPIHandler errorWithString:andCode:](self, "errorWithString:andCode:", [MEMORY[0x277CCACA8] stringWithFormat:@"OpenGL Error (%d): %s in %s", v11, &v12, "-[FxPlugAPIHandler(HostResourcesAPIHandler) createPBuffer:withTarget:error:]"], 8);
    goto LABEL_11;
  }

  v10 = 0;
  if (!error)
  {
    return;
  }

LABEL_12:
  *error = v10;
}

- (void)deletePBuffer:(unsigned int)buffer error:(id *)error
{
  buffers = buffer;
  glDeleteBuffers(1, &buffers);
  Error = glGetError();
  if (Error)
  {
    v8 = 0;
    v7 = -[FxPlugAPIHandler errorWithString:andCode:](self, "errorWithString:andCode:", [MEMORY[0x277CCACA8] stringWithFormat:@"OpenGL Error (%d): %s in %s", Error, &v8, "-[FxPlugAPIHandler(HostResourcesAPIHandler) deletePBuffer:error:]"], 8);
    if (!error)
    {
      return;
    }
  }

  else
  {
    v7 = 0;
    if (!error)
    {
      return;
    }
  }

  *error = v7;
}

- (unint64_t)numberOfCores
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];

  return [processInfo activeProcessorCount];
}

- (void)performSelector:(SEL)selector onTarget:(id)target withObject:(id)object onThreads:(int64_t)threads waitUntilDone:(BOOL)done error:(id *)error
{
  doneCopy = done;
  v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  if (v22)
  {
    v12 = 0;
    if (doneCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    goto LABEL_8;
  }

  v12 = -[FxPlugAPIHandler errorWithString:andCode:](self, "errorWithString:andCode:", [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to allocate thread array in %s", "-[FxPlugAPIHandler(HostResourcesAPIHandler) performSelector:onTarget:withObject:onThreads:waitUntilDone:error:]"], 7);
  if (!doneCopy)
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
  v20 = doneCopy;
  if (threads >= 1 && !v12)
  {
    v15 = 1;
    do
    {
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:sel_getName(selector)];
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{target, @"FxThreadTarget", object, @"FxThreadObject", v16, @"FxThreadSelector", objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", v15 - 1), @"FxThreadNumber", v14, @"FxThreadLock", 0}];
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

      if (v15 >= threads)
      {
        break;
      }

      ++v15;
    }

    while (!v12);
  }

  if (v20)
  {
    [v14 unlockWithCondition:threads];
    [v14 lockWhenCondition:0];
    [v14 unlock];
  }

  if (error)
  {
    *error = v12;
  }
}

- (void)runFxPlugThread:(id)thread
{
  PCAutoreleasePool::PCAutoreleasePool(&v11);
  v5 = sel_registerName([objc_msgSend(thread objectForKey:{@"FxThreadSelector", "UTF8String"}]);
  v6 = [thread objectForKey:@"FxThreadTarget"];
  v7 = [thread objectForKey:@"FxThreadObject"];
  v8 = [thread objectForKey:@"FxThreadNumber"];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ worker thread #%d", -[FxPlugAPIDelegate displayName](self->_delegate, "displayName"), objc_msgSend(v8, "intValue")];
  [objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];
  pthread_setname_np([v9 UTF8String]);
  [v6 performSelector:v5 withObject:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", v7, @"FxThreadObject", v8, @"FxThreadNumber", 0)}];
  v10 = [thread objectForKey:@"FxThreadLock"];
  [v10 lock];
  [v10 unlockWithCondition:{objc_msgSend(v10, "condition") - 1}];
  PCAutoreleasePool::~PCAutoreleasePool(&v11);
}

@end