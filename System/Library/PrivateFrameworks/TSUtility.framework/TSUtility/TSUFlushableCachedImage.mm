@interface TSUFlushableCachedImage
- (CGImage)newImage;
- (TSUFlushableCachedImage)initWithDelegate:(id)a3 createImageSelector:(SEL)a4;
- (void)dealloc;
@end

@implementation TSUFlushableCachedImage

- (TSUFlushableCachedImage)initWithDelegate:(id)a3 createImageSelector:(SEL)a4
{
  result = [(TSUFlushableObject *)self init];
  if (result)
  {
    result->_delegate = a3;
    if (a4)
    {
      v7 = a4;
    }

    else
    {
      v7 = 0;
    }

    result->_delegateCreateImageSelector = v7;
  }

  return result;
}

- (void)dealloc
{
  self->_delegate = 0;
  self->_delegateCreateImageSelector = 0;
  [(TSUFlushableCachedImage *)self unload];
  v3.receiver = self;
  v3.super_class = TSUFlushableCachedImage;
  [(TSUFlushableObject *)&v3 dealloc];
}

- (CGImage)newImage
{
  [(TSUFlushableObject *)self ownerWillAccess];
  objc_sync_enter(self);
  image = self->_image;
  if (!image)
  {
    if (self->_delegateCreateImageSelector)
    {
      delegateCreateImageSelector = self->_delegateCreateImageSelector;
    }

    else
    {
      delegateCreateImageSelector = 0;
    }

    image = [self->_delegate performSelector:delegateCreateImageSelector];
    self->_image = image;
  }

  v5 = CGImageRetain(image);
  objc_sync_exit(self);
  [(TSUFlushableObject *)self ownerDidAccess];
  return v5;
}

@end