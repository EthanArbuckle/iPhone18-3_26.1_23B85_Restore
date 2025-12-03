@interface RDASRWrapper
- (RDASRWrapper)init;
- (void)dealloc;
- (void)mapDelegate:(RDASRWDelegate *)delegate;
- (void)setRecognitionBuffer:(void *)buffer;
@end

@implementation RDASRWrapper

- (RDASRWrapper)init
{
  v6.receiver = self;
  v6.super_class = RDASRWrapper;
  v2 = [(RDASRWrapper *)&v6 init];
  if (RXIsSpeechSPIEnabled())
  {
    v3 = 0x80040C96DFCA5;
    v4 = 56;
  }

  else
  {
    v3 = 0x800407D3415B1;
    v4 = 48;
  }

  v2->_recognitionDelegate = malloc_type_malloc(v4, v3);
  return v2;
}

- (void)mapDelegate:(RDASRWDelegate *)delegate
{
  var0 = delegate->var0;
  *[(RDASRWrapper *)self recognitionDelegate]= var0;
  var6 = delegate->var6;
  *([(RDASRWrapper *)self recognitionDelegate]+ 6) = var6;
  var3 = delegate->var3;
  *([(RDASRWrapper *)self recognitionDelegate]+ 3) = var3;
  var2 = delegate->var2;
  *([(RDASRWrapper *)self recognitionDelegate]+ 2) = var2;
  var5 = delegate->var5;
  *([(RDASRWrapper *)self recognitionDelegate]+ 5) = var5;
  var4 = delegate->var4;
  *([(RDASRWrapper *)self recognitionDelegate]+ 4) = var4;
  var1 = delegate->var1;
  *([(RDASRWrapper *)self recognitionDelegate]+ 1) = var1;
}

- (void)dealloc
{
  recognizer = self->_recognizer;
  if (recognizer)
  {
    CFRelease(recognizer);
    self->_recognizer = 0;
  }

  recognitionBuffer = self->_recognitionBuffer;
  if (recognitionBuffer)
  {
    CFRelease(recognitionBuffer);
    self->_recognitionBuffer = 0;
  }

  recognitionDelegate = self->_recognitionDelegate;
  if (recognitionDelegate)
  {
    free(recognitionDelegate);
    self->_recognitionDelegate = 0;
  }

  v6.receiver = self;
  v6.super_class = RDASRWrapper;
  [(RDASRWrapper *)&v6 dealloc];
}

- (void)setRecognitionBuffer:(void *)buffer
{
  if (buffer)
  {
    CFRetain(buffer);
  }

  recognitionBuffer = self->_recognitionBuffer;
  if (recognitionBuffer)
  {
    CFRelease(recognitionBuffer);
  }

  self->_recognitionBuffer = buffer;
}

@end