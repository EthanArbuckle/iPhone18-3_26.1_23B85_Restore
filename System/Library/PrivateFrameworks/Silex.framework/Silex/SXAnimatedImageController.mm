@interface SXAnimatedImageController
- (id)initWithImageComponentView:(void *)view viewport:(void *)viewport imageView:;
- (void)registerForViewportChanges;
- (void)unregisterForViewportChanges;
- (void)viewport:(id)viewport dynamicBoundsDidChangeFromBounds:(CGRect)bounds;
@end

@implementation SXAnimatedImageController

- (id)initWithImageComponentView:(void *)view viewport:(void *)viewport imageView:
{
  v7 = a2;
  viewCopy = view;
  viewportCopy = viewport;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = SXAnimatedImageController;
    v10 = objc_msgSendSuper2(&v12, sel_init);
    self = v10;
    if (v10)
    {
      objc_storeWeak(v10 + 5, v7);
      objc_storeWeak(self + 2, viewCopy);
      objc_storeStrong(self + 3, viewport);
    }
  }

  return self;
}

- (void)viewport:(id)viewport dynamicBoundsDidChangeFromBounds:(CGRect)bounds
{
  viewportCopy = viewport;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_componentView);
  }

  else
  {
    WeakRetained = 0;
  }

  visibilityState = [WeakRetained visibilityState];

  if (visibilityState != 1)
  {
    goto LABEL_35;
  }

  if (self)
  {
    v7 = objc_loadWeakRetained(&self->_viewport);
  }

  else
  {
    v7 = 0;
  }

  [v7 dynamicBounds];
  v9 = v8;

  [viewportCopy bounds];
  Height = CGRectGetHeight(v28);
  if (self)
  {
    v11 = objc_loadWeakRetained(&self->_componentView);
  }

  else
  {
    v11 = 0;
  }

  [v11 frame];
  v12 = Height + CGRectGetHeight(v29) * -0.6;
  if (self)
  {
    imageView = self->_imageView;
  }

  else
  {
    imageView = 0;
  }

  animatedImage = [(SXImageView *)imageView animatedImage];
  v15 = v12 / [animatedImage numberOfFrames];

  if (self)
  {
    v16 = self->_imageView;
  }

  else
  {
    v16 = 0;
  }

  v17 = fmin(v15, 15.0);
  frameIndex = [(SXImageView *)v16 frameIndex];
  v19 = frameIndex;
  if (self)
  {
    previousYOffset = self->_previousYOffset;
    if (v9 > v17 + previousYOffset)
    {
      v21 = self->_imageView;
      goto LABEL_15;
    }

LABEL_25:
    if (v9 < previousYOffset - v17)
    {
      if (frameIndex <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = frameIndex;
      }

      v19 = v24 - 1;
    }

    goto LABEL_30;
  }

  previousYOffset = 0.0;
  if (v9 <= v17)
  {
    goto LABEL_25;
  }

  v21 = 0;
LABEL_15:
  animatedImage2 = [(SXImageView *)v21 animatedImage];
  v23 = [animatedImage2 numberOfFrames] - 1;

  if (v19 + 1 < v23)
  {
    ++v19;
  }

  else
  {
    v19 = v23;
  }

LABEL_30:
  if (self)
  {
    v25 = self->_imageView;
  }

  else
  {
    v25 = 0;
  }

  if (v19 != [(SXImageView *)v25 frameIndex])
  {
    if (self)
    {
      [(SXImageView *)self->_imageView setFrameIndex:v19];
      self->_previousYOffset = v9;
    }

    else
    {
      [0 setFrameIndex:v19];
    }
  }

LABEL_35:
}

- (void)registerForViewportChanges
{
  if (self)
  {
    if ((*(self + 8) & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained((self + 16));
      [WeakRetained addViewportChangeListener:self forOptions:2];
    }

    *(self + 8) = 1;
  }
}

- (void)unregisterForViewportChanges
{
  if (self)
  {
    if (*(self + 8) == 1)
    {
      WeakRetained = objc_loadWeakRetained((self + 16));
      [WeakRetained removeViewportChangeListener:self forOptions:2];
    }

    *(self + 8) = 0;
  }
}

@end