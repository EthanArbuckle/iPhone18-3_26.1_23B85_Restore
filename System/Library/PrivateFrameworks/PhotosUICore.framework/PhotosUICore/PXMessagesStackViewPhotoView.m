@interface PXMessagesStackViewPhotoView
- (CGRect)clippingRect;
- (PXMessagesStackViewPhotoView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setClipsToBounds:(BOOL)a3;
- (void)setItemEffectView:(id)a3;
- (void)setUserData:(id)a3;
@end

@implementation PXMessagesStackViewPhotoView

- (CGRect)clippingRect
{
  x = self->clippingRect.origin.x;
  y = self->clippingRect.origin.y;
  width = self->clippingRect.size.width;
  height = self->clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setUserData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(PXMessagesStackViewPhotoView *)self userData];
    v6 = v4;
    if (!v5 || (v7 = [v5 imageRef], v7 != -[NSObject imageRef](v6, "imageRef")))
    {
      v8 = [MEMORY[0x1E69DCAB8] imageWithCGImage:{-[NSObject imageRef](v6, "imageRef")}];
      [(UIImageView *)self->_imageView setImage:v8];
      [(PXMessagesStackItemEffectView *)self->_itemEffectView setContentView:self->_imageView];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      videoView = self->_videoView;
      if (!videoView)
      {
        v10 = objc_alloc_init(PXGVideoPlayerView);
        v11 = self->_videoView;
        self->_videoView = v10;

        videoView = self->_videoView;
      }

      [(PXMessagesStackItemEffectView *)self->_itemEffectView setContentView:videoView];
      [(PXGVideoPlayerView *)self->_videoView setUserData:v4];
    }

    else
    {
      [(UIImageView *)self->_imageView setImage:0];
    }
  }

  userData = self->_userData;
  self->_userData = v4;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXMessagesStackViewPhotoView;
  [(PXMessagesStackViewPhotoView *)&v3 layoutSubviews];
  [(PXMessagesStackViewPhotoView *)self bounds];
  [(PXMessagesStackItemEffectView *)self->_itemEffectView setFrame:?];
  [(PXMessagesStackViewPhotoView *)self bounds];
  [(PXGVideoPlayerView *)self->_videoView setFrame:?];
}

- (void)setItemEffectView:(id)a3
{
  v5 = a3;
  itemEffectView = self->_itemEffectView;
  if (itemEffectView != v5)
  {
    v8 = v5;
    v7 = [(PXMessagesStackItemEffectView *)itemEffectView contentView];
    objc_storeStrong(&self->_itemEffectView, a3);
    [(PXMessagesStackItemEffectView *)self->_itemEffectView setContentView:v7];
    [(PXMessagesStackItemEffectView *)self->_itemEffectView removeFromSuperview];
    [(PXMessagesStackViewPhotoView *)self addSubview:v8];
    [(PXMessagesStackViewPhotoView *)self setNeedsLayout];

    v5 = v8;
  }
}

- (void)setClipsToBounds:(BOOL)a3
{
  v3 = a3;
  if (![(PXMessagesStackViewPhotoView *)self ignoresClipContentRequests])
  {
    v5.receiver = self;
    v5.super_class = PXMessagesStackViewPhotoView;
    [(PXMessagesStackViewPhotoView *)&v5 setClipsToBounds:v3];
  }
}

- (PXMessagesStackViewPhotoView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11.receiver = self;
  v11.super_class = PXMessagesStackViewPhotoView;
  v7 = [(PXMessagesStackViewPhotoView *)&v11 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{x, y, width, height}];
    imageView = v7->_imageView;
    v7->_imageView = v8;

    [(UIImageView *)v7->_imageView setContentMode:2];
    [(PXMessagesStackViewPhotoView *)v7 setUserInteractionEnabled:0];
  }

  return v7;
}

@end