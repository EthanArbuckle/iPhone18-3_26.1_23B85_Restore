@interface PUCropTransformedImageView
- ($5A0616AB7869379E861635CACF312FD6)imageModulationOptions;
- (CGRect)_imageBounds;
- (CGRect)canvasFrame;
- (CGRect)cropRect;
- (CGSize)imageSize;
- (PUCropTransformedImageViewDelegate)delegate;
- (void)_setTracking:(BOOL)a3;
- (void)setImage:(id)a3;
@end

@implementation PUCropTransformedImageView

- (CGRect)cropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PUCropTransformedImageViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- ($5A0616AB7869379E861635CACF312FD6)imageModulationOptions
{
  p_imageModulationOptions = &self->_imageModulationOptions;
  privateInteger = self->_imageModulationOptions.privateInteger;
  v4 = *&p_imageModulationOptions->privateFloat;
  result.var1 = *&v4;
  result.var0 = privateInteger;
  return result;
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)canvasFrame
{
  p_canvasFrame = &self->_canvasFrame;
  if (CGRectIsEmpty(self->_canvasFrame))
  {
    [(PUCropTransformedImageView *)self bounds];
  }

  else
  {
    x = p_canvasFrame->origin.x;
    y = p_canvasFrame->origin.y;
    width = p_canvasFrame->size.width;
    height = p_canvasFrame->size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)_imageBounds
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  [(PUCropTransformedImageView *)self imageSize];
  v5 = v4;
  v7 = v6;
  v8 = v2;
  v9 = v3;
  result.size.height = v7;
  result.size.width = v5;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)setImage:(id)a3
{
  v4 = self;
  objc_storeStrong(&self->_image, a3);
  v5 = a3;
  v4 = (v4 + 488);
  [v5 size];
  v7 = v6;
  v9 = v8;

  v4->super.super.super.isa = v7;
  *&v4->super.super._responderFlags = v9;
}

- (void)_setTracking:(BOOL)a3
{
  v3 = a3;
  if ([(PUCropTransformedImageView *)self isTracking]!= a3)
  {
    if (v3)
    {
      v5 = [(PUCropTransformedImageView *)self delegate];
      [v5 cropTransformedImageViewWillBeginTracking:self];

      self->_tracking = 1;
    }

    else
    {
      self->_tracking = 0;
      v6 = [(PUCropTransformedImageView *)self delegate];
      [v6 cropTransformedImageViewDidEndTracking:self];
    }
  }
}

@end