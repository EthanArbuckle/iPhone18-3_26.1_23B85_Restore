@interface PXGVideoSessionPixelBufferSource
- (CGAffineTransform)preferredTransform;
- (CGSize)maxOutputSize;
- (PXGVideoSessionPixelBufferSource)init;
- (PXGVideoSessionPixelBufferSource)initWithVideoSession:(id)a3 maxOutputSize:(CGSize)a4;
- (__CVBuffer)currentPixelBuffer;
- (void)dealloc;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setProvidePlaceholderHandler:(id)a3;
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
  v4 = [(PXGVideoSessionPixelBufferSource *)self videoSession];
  if (v4)
  {
    v6 = v4;
    [v4 preferredTransform];
    v4 = v6;
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
  v2 = [(PXGVideoSessionPixelBufferSource *)self videoSession];
  v3 = [v2 currentPixelBuffer];

  return v3;
}

- (void)setProvidePlaceholderHandler:(id)a3
{
  v4 = [a3 copy];
  providePlaceholderHandler = self->_providePlaceholderHandler;
  self->_providePlaceholderHandler = v4;

  v8 = [(PXGVideoSessionPixelBufferSource *)self videoSession];
  if ([v8 isPlayable])
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

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v14 = a3;
  if (VideoSessionObservableContext != a5)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXGVideoSessionPixelBufferSource.m" lineNumber:61 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((v6 & 0x400) != 0)
  {
    v9 = [(PXGVideoSessionPixelBufferSource *)self pixelBufferDidChangeHandler];

    if (v9)
    {
      v10 = [(PXGVideoSessionPixelBufferSource *)self pixelBufferDidChangeHandler];
      v10[2]();
    }
  }

  if ((v6 & 0x20) != 0)
  {
    v11 = [(PXGVideoSessionPixelBufferSource *)self videoSession];
    if (([v11 isPlayable] & 1) == 0)
    {
      v12 = [(PXGVideoSessionPixelBufferSource *)self providePlaceholderHandler];

      if (!v12)
      {
        goto LABEL_10;
      }

      v11 = [(PXGVideoSessionPixelBufferSource *)self providePlaceholderHandler];
      v11[2]();
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

- (PXGVideoSessionPixelBufferSource)initWithVideoSession:(id)a3 maxOutputSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  v18.receiver = self;
  v18.super_class = PXGVideoSessionPixelBufferSource;
  v9 = [(PXGVideoSessionPixelBufferSource *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_videoSession, a3);
    v10->_maxOutputSize.width = width;
    v10->_maxOutputSize.height = height;
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = [objc_opt_class() description];
    v13 = [MEMORY[0x1E696AFB0] UUID];
    v14 = [v13 UUIDString];
    v15 = [v11 initWithFormat:@"%@-%@", v12, v14];
    bufferRequestIdentifier = v10->_bufferRequestIdentifier;
    v10->_bufferRequestIdentifier = v15;

    [v8 registerChangeObserver:v10 context:VideoSessionObservableContext];
    [v8 requestPixelBufferOutputWithRequestIdentifier:v10->_bufferRequestIdentifier maxOutputSize:{width, height}];
  }

  return v10;
}

- (PXGVideoSessionPixelBufferSource)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGVideoSessionPixelBufferSource.m" lineNumber:29 description:{@"%s is not available as initializer", "-[PXGVideoSessionPixelBufferSource init]"}];

  abort();
}

@end