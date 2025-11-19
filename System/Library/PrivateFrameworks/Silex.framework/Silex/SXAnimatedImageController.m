@interface SXAnimatedImageController
- (id)initWithImageComponentView:(void *)a3 viewport:(void *)a4 imageView:;
- (void)registerForViewportChanges;
- (void)unregisterForViewportChanges;
- (void)viewport:(id)a3 dynamicBoundsDidChangeFromBounds:(CGRect)a4;
@end

@implementation SXAnimatedImageController

- (id)initWithImageComponentView:(void *)a3 viewport:(void *)a4 imageView:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = SXAnimatedImageController;
    v10 = objc_msgSendSuper2(&v12, sel_init);
    a1 = v10;
    if (v10)
    {
      objc_storeWeak(v10 + 5, v7);
      objc_storeWeak(a1 + 2, v8);
      objc_storeStrong(a1 + 3, a4);
    }
  }

  return a1;
}

- (void)viewport:(id)a3 dynamicBoundsDidChangeFromBounds:(CGRect)a4
{
  v26 = a3;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_componentView);
  }

  else
  {
    WeakRetained = 0;
  }

  v6 = [WeakRetained visibilityState];

  if (v6 != 1)
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

  [v26 bounds];
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

  v14 = [(SXImageView *)imageView animatedImage];
  v15 = v12 / [v14 numberOfFrames];

  if (self)
  {
    v16 = self->_imageView;
  }

  else
  {
    v16 = 0;
  }

  v17 = fmin(v15, 15.0);
  v18 = [(SXImageView *)v16 frameIndex];
  v19 = v18;
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
      if (v18 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v18;
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
  v22 = [(SXImageView *)v21 animatedImage];
  v23 = [v22 numberOfFrames] - 1;

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
  if (a1)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 16));
      [WeakRetained addViewportChangeListener:a1 forOptions:2];
    }

    *(a1 + 8) = 1;
  }
}

- (void)unregisterForViewportChanges
{
  if (a1)
  {
    if (*(a1 + 8) == 1)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 16));
      [WeakRetained removeViewportChangeListener:a1 forOptions:2];
    }

    *(a1 + 8) = 0;
  }
}

@end