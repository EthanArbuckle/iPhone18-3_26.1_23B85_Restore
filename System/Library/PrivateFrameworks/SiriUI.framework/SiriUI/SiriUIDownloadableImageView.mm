@interface SiriUIDownloadableImageView
- (SiriUIDownloadableImageView)initWithImageURL:(id)l placeHolderImageName:(id)name placeHolderImageBundle:(id)bundle;
- (void)_setImage:(id)image isPlaceHolder:(BOOL)holder;
- (void)layoutSubviews;
- (void)setImageURL:(id)l;
- (void)setPlaceHolderImageName:(id)name;
- (void)setPlaceHolderVerticalOffset:(double)offset;
- (void)showPlaceHolderImage;
@end

@implementation SiriUIDownloadableImageView

- (SiriUIDownloadableImageView)initWithImageURL:(id)l placeHolderImageName:(id)name placeHolderImageBundle:(id)bundle
{
  lCopy = l;
  nameCopy = name;
  bundleCopy = bundle;
  v16.receiver = self;
  v16.super_class = SiriUIDownloadableImageView;
  v11 = [(SiriUIDownloadableImageView *)&v16 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_placeHolderImageName, name);
    objc_storeStrong(&v12->_placeHolderImageBundle, bundle);
    v12->_placeHolderVerticalOffset = 0.0;
    v13 = objc_alloc_init(MEMORY[0x277D755E8]);
    imageView = v12->_imageView;
    v12->_imageView = v13;

    [(SiriUIDownloadableImageView *)v12 addSubview:v12->_imageView];
    [(SiriUIDownloadableImageView *)v12 showPlaceHolderImage];
    [(SiriUIDownloadableImageView *)v12 setImageURL:lCopy];
  }

  return v12;
}

- (void)setPlaceHolderImageName:(id)name
{
  nameCopy = name;
  if (![(NSString *)self->_placeHolderImageName isEqualToString:?])
  {
    objc_storeStrong(&self->_placeHolderImageName, name);
    if (self->_showingPlaceHolderImage)
    {
      [(SiriUIDownloadableImageView *)self showPlaceHolderImage];
    }
  }
}

- (void)setPlaceHolderVerticalOffset:(double)offset
{
  if (self->_placeHolderVerticalOffset != offset)
  {
    self->_placeHolderVerticalOffset = offset;
    [(SiriUIDownloadableImageView *)self setNeedsLayout];
  }
}

- (void)showPlaceHolderImage
{
  placeHolderImageName = self->_placeHolderImageName;
  if (placeHolderImageName)
  {
    v6 = [MEMORY[0x277D755B8] imageNamed:placeHolderImageName inBundle:self->_placeHolderImageBundle];
    siriui_maskingColor = [MEMORY[0x277D75348] siriui_maskingColor];
    v5 = [v6 _flatImageWithColor:siriui_maskingColor];
    [(SiriUIDownloadableImageView *)self _setImage:v5 isPlaceHolder:1];
  }
}

- (void)setImageURL:(id)l
{
  lCopy = l;
  if (([(NSURL *)self->_imageURL isEqual:lCopy]& 1) == 0)
  {
    v6 = +[SiriUIURLSession sharedURLSession];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __43__SiriUIDownloadableImageView_setImageURL___block_invoke;
    v8[3] = &unk_279C5A1D8;
    v8[4] = self;
    v7 = [v6 imageTaskWithHTTPGetRequest:lCopy client:self completionHandler:v8];

    objc_storeStrong(&self->_imageURL, l);
  }
}

uint64_t __43__SiriUIDownloadableImageView_setImageURL___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) _setImage:a2 isPlaceHolder:0];
  }

  return result;
}

- (void)_setImage:(id)image isPlaceHolder:(BOOL)holder
{
  holderCopy = holder;
  imageCopy = image;
  self->_showingPlaceHolderImage = holderCopy;
  if (imageCopy)
  {
    if (holderCopy)
    {
      v7 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.3];
      [(SiriUIDownloadableImageView *)self setBackgroundColor:v7];

      [(UIImageView *)self->_imageView setContentMode:4];
      [(UIImageView *)self->_imageView setImage:imageCopy];
    }

    else
    {
      [(UIImageView *)self->_imageView setContentMode:2];
      [(UIImageView *)self->_imageView setClipsToBounds:1];
      v8 = MEMORY[0x277D75D18];
      v9 = MEMORY[0x277D85DD0];
      v10 = 3221225472;
      v11 = __55__SiriUIDownloadableImageView__setImage_isPlaceHolder___block_invoke;
      v12 = &unk_279C5A018;
      selfCopy = self;
      v14 = imageCopy;
      [v8 transitionWithView:self duration:5242882 options:&v9 animations:0 completion:0.2];
    }

    [(SiriUIDownloadableImageView *)self bringSubviewToFront:self->_imageView, v9, v10, v11, v12, selfCopy];
    [(SiriUIDownloadableImageView *)self setNeedsLayout];
  }
}

uint64_t __55__SiriUIDownloadableImageView__setImage_isPlaceHolder___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277D75348] clearColor];
  [v2 setBackgroundColor:v3];

  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 408);

  return [v5 setImage:v4];
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = SiriUIDownloadableImageView;
  [(SiriUIDownloadableImageView *)&v16 layoutSubviews];
  [(SiriUIDownloadableImageView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  imageView = self->_imageView;
  if (self->_showingPlaceHolderImage)
  {
    [(UIImageView *)imageView sizeToFit];
    [(UIImageView *)self->_imageView frame];
    UIRectCenteredIntegralRect();
    v4 = v12;
    v8 = v13;
    v10 = v14;
    v6 = v15 - self->_placeHolderVerticalOffset;
    imageView = self->_imageView;
  }

  [(UIImageView *)imageView setFrame:v4, v6, v8, v10];
}

@end