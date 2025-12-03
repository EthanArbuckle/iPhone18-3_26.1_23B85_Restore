@interface SKUIBackgroundImageWrapperForHorizontalLockup
- (SKUIBackgroundImageWrapperForHorizontalLockup)initWithImage:(id)image;
- (SKUIHorizontalLockupView)lockup;
- (SKUIImageView)imageView;
- (void)setImage:(id)image;
- (void)setLockup:(id)lockup;
@end

@implementation SKUIBackgroundImageWrapperForHorizontalLockup

- (SKUIBackgroundImageWrapperForHorizontalLockup)initWithImage:(id)image
{
  imageCopy = image;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIBackgroundImageWrapperForHorizontalLockup initWithImage:];
  }

  v8.receiver = self;
  v8.super_class = SKUIBackgroundImageWrapperForHorizontalLockup;
  v5 = [(SKUIBackgroundImageWrapperForHorizontalLockup *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_imageView, imageCopy);
  }

  return v6;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  imageView = [(SKUIBackgroundImageWrapperForHorizontalLockup *)self imageView];

  if (imageView)
  {
    WeakRetained = objc_loadWeakRetained(&self->_imageView);
    [WeakRetained setImage:imageCopy];
  }

  lockup = [(SKUIBackgroundImageWrapperForHorizontalLockup *)self lockup];

  if (lockup)
  {
    v7 = objc_loadWeakRetained(&self->_lockup);
    [v7 setContainerBackgroundImageForPlayButton:imageCopy];
  }
}

- (void)setLockup:(id)lockup
{
  obj = lockup;
  WeakRetained = objc_loadWeakRetained(&self->_lockup);

  v6 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_lockup, obj);
    v5 = objc_loadWeakRetained(&self->_imageView);
    v6 = obj;
    if (v5)
    {
      v7 = v5;
      v8 = objc_loadWeakRetained(&self->_imageView);
      image = [v8 image];

      v6 = obj;
      if (image)
      {
        v10 = objc_loadWeakRetained(&self->_lockup);
        v11 = objc_loadWeakRetained(&self->_imageView);
        image2 = [v11 image];
        [v10 setContainerBackgroundImageForPlayButton:image2];

        v6 = obj;
      }
    }
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (SKUIHorizontalLockupView)lockup
{
  WeakRetained = objc_loadWeakRetained(&self->_lockup);

  return WeakRetained;
}

- (SKUIImageView)imageView
{
  WeakRetained = objc_loadWeakRetained(&self->_imageView);

  return WeakRetained;
}

- (void)initWithImage:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIBackgroundImageWrapperForHorizontalLockup initWithImage:]";
}

@end