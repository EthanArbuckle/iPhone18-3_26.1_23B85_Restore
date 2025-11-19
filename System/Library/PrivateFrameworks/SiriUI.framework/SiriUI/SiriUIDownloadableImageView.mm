@interface SiriUIDownloadableImageView
- (SiriUIDownloadableImageView)initWithImageURL:(id)a3 placeHolderImageName:(id)a4 placeHolderImageBundle:(id)a5;
- (void)_setImage:(id)a3 isPlaceHolder:(BOOL)a4;
- (void)layoutSubviews;
- (void)setImageURL:(id)a3;
- (void)setPlaceHolderImageName:(id)a3;
- (void)setPlaceHolderVerticalOffset:(double)a3;
- (void)showPlaceHolderImage;
@end

@implementation SiriUIDownloadableImageView

- (SiriUIDownloadableImageView)initWithImageURL:(id)a3 placeHolderImageName:(id)a4 placeHolderImageBundle:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = SiriUIDownloadableImageView;
  v11 = [(SiriUIDownloadableImageView *)&v16 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_placeHolderImageName, a4);
    objc_storeStrong(&v12->_placeHolderImageBundle, a5);
    v12->_placeHolderVerticalOffset = 0.0;
    v13 = objc_alloc_init(MEMORY[0x277D755E8]);
    imageView = v12->_imageView;
    v12->_imageView = v13;

    [(SiriUIDownloadableImageView *)v12 addSubview:v12->_imageView];
    [(SiriUIDownloadableImageView *)v12 showPlaceHolderImage];
    [(SiriUIDownloadableImageView *)v12 setImageURL:v8];
  }

  return v12;
}

- (void)setPlaceHolderImageName:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_placeHolderImageName isEqualToString:?])
  {
    objc_storeStrong(&self->_placeHolderImageName, a3);
    if (self->_showingPlaceHolderImage)
    {
      [(SiriUIDownloadableImageView *)self showPlaceHolderImage];
    }
  }
}

- (void)setPlaceHolderVerticalOffset:(double)a3
{
  if (self->_placeHolderVerticalOffset != a3)
  {
    self->_placeHolderVerticalOffset = a3;
    [(SiriUIDownloadableImageView *)self setNeedsLayout];
  }
}

- (void)showPlaceHolderImage
{
  placeHolderImageName = self->_placeHolderImageName;
  if (placeHolderImageName)
  {
    v6 = [MEMORY[0x277D755B8] imageNamed:placeHolderImageName inBundle:self->_placeHolderImageBundle];
    v4 = [MEMORY[0x277D75348] siriui_maskingColor];
    v5 = [v6 _flatImageWithColor:v4];
    [(SiriUIDownloadableImageView *)self _setImage:v5 isPlaceHolder:1];
  }
}

- (void)setImageURL:(id)a3
{
  v5 = a3;
  if (([(NSURL *)self->_imageURL isEqual:v5]& 1) == 0)
  {
    v6 = +[SiriUIURLSession sharedURLSession];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __43__SiriUIDownloadableImageView_setImageURL___block_invoke;
    v8[3] = &unk_279C5A1D8;
    v8[4] = self;
    v7 = [v6 imageTaskWithHTTPGetRequest:v5 client:self completionHandler:v8];

    objc_storeStrong(&self->_imageURL, a3);
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

- (void)_setImage:(id)a3 isPlaceHolder:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  self->_showingPlaceHolderImage = v4;
  if (v6)
  {
    if (v4)
    {
      v7 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.3];
      [(SiriUIDownloadableImageView *)self setBackgroundColor:v7];

      [(UIImageView *)self->_imageView setContentMode:4];
      [(UIImageView *)self->_imageView setImage:v6];
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
      v13 = self;
      v14 = v6;
      [v8 transitionWithView:self duration:5242882 options:&v9 animations:0 completion:0.2];
    }

    [(SiriUIDownloadableImageView *)self bringSubviewToFront:self->_imageView, v9, v10, v11, v12, v13];
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