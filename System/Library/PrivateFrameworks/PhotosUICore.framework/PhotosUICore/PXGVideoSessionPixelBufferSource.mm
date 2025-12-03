@interface PXGVideoSessionPixelBufferSource
- (CGAffineTransform)preferredTransform;
- (CGSize)maxOutputSize;
- (PXGVideoSessionPixelBufferSource)init;
- (PXGVideoSessionPixelBufferSource)initWithVideoSession:(id)session maxOutputSize:(CGSize)size;
- (__CVBuffer)currentPixelBuffer;
- (void)dealloc;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setProvidePlaceholderHandler:(id)handler;
@end

@implementation PXGVideoSessionPixelBufferSource

- (CGSize)maxOutputSize
{
  width = self->_maxOutputSize.width;
  height = self->_maxOutputSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGAffineTransform)preferredTransform
{
  videoSession = [(PXGVideoSessionPixelBufferSource *)self videoSession];
  if (videoSession)
  {
    v6 = videoSession;
    [videoSession preferredTransform];
    videoSession = v6;
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (__CVBuffer)currentPixelBuffer
{
  videoSession = [(PXGVideoSessionPixelBufferSource *)self videoSession];
  currentPixelBuffer = [videoSession currentPixelBuffer];

  return currentPixelBuffer;
}

- (void)setProvidePlaceholderHandler:(id)handler
{
  v4 = [handler copy];
  providePlaceholderHandler = self->_providePlaceholderHandler;
  self->_providePlaceholderHandler = v4;

  videoSession = [(PXGVideoSessionPixelBufferSource *)self videoSession];
  if ([videoSession isPlayable])
  {
  }

  else
  {
    v6 = self->_providePlaceholderHandler;

    if (v6)
    {
      v7 = *(self->_providePlaceholderHandler + 2);

      v7();
    }
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (VideoSessionObservableContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGVideoSessionPixelBufferSource.m" lineNumber:61 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((changeCopy & 0x400) != 0)
  {
    pixelBufferDidChangeHandler = [(PXGVideoSessionPixelBufferSource *)self pixelBufferDidChangeHandler];

    if (pixelBufferDidChangeHandler)
    {
      pixelBufferDidChangeHandler2 = [(PXGVideoSessionPixelBufferSource *)self pixelBufferDidChangeHandler];
      pixelBufferDidChangeHandler2[2]();
    }
  }

  if ((changeCopy & 0x20) != 0)
  {
    videoSession = [(PXGVideoSessionPixelBufferSource *)self videoSession];
    if (([videoSession isPlayable] & 1) == 0)
    {
      providePlaceholderHandler = [(PXGVideoSessionPixelBufferSource *)self providePlaceholderHandler];

      if (!providePlaceholderHandler)
      {
        goto LABEL_10;
      }

      videoSession = [(PXGVideoSessionPixelBufferSource *)self providePlaceholderHandler];
      videoSession[2]();
    }
  }

LABEL_10:
}

- (void)dealloc
{
  [(PXVideoSession *)self->_videoSession cancelPixelBufferOutputWithRequestIdentifier:self->_bufferRequestIdentifier];
  v3.receiver = self;
  v3.super_class = PXGVideoSessionPixelBufferSource;
  [(PXGVideoSessionPixelBufferSource *)&v3 dealloc];
}

- (PXGVideoSessionPixelBufferSource)initWithVideoSession:(id)session maxOutputSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  sessionCopy = session;
  v18.receiver = self;
  v18.super_class = PXGVideoSessionPixelBufferSource;
  v9 = [(PXGVideoSessionPixelBufferSource *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_videoSession, session);
    v10->_maxOutputSize.width = width;
    v10->_maxOutputSize.height = height;
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = [objc_opt_class() description];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v15 = [v11 initWithFormat:@"%@-%@", v12, uUIDString];
    bufferRequestIdentifier = v10->_bufferRequestIdentifier;
    v10->_bufferRequestIdentifier = v15;

    [sessionCopy registerChangeObserver:v10 context:VideoSessionObservableContext];
    [sessionCopy requestPixelBufferOutputWithRequestIdentifier:v10->_bufferRequestIdentifier maxOutputSize:{width, height}];
  }

  return v10;
}

- (PXGVideoSessionPixelBufferSource)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGVideoSessionPixelBufferSource.m" lineNumber:29 description:{@"%s is not available as initializer", "-[PXGVideoSessionPixelBufferSource init]"}];

  abort();
}

@end