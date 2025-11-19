@interface PKMerchantTokenIconView
- (PKMerchantTokenIconView)initWithFrame:(CGRect)a3;
- (void)_cancelImageDownload;
- (void)_downloadImageFromURL:(id)a3;
- (void)_setUpConstraints;
- (void)_setUpMonogramLabel;
- (void)_setUpSelf;
- (void)_setUpViews;
- (void)_updateIconImage;
- (void)_updateMonogramLabelWithText:(id)a3;
- (void)updateWithImage:(id)a3 cornerRadius:(double)a4;
- (void)updateWithImageURL:(id)a3 monogramText:(id)a4 cornerRadius:(double)a5;
@end

@implementation PKMerchantTokenIconView

- (PKMerchantTokenIconView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PKMerchantTokenIconView;
  v3 = [(PKMerchantTokenIconView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKMerchantTokenIconView *)v3 _setUpViews];
    [(PKMerchantTokenIconView *)v4 _setUpConstraints];
  }

  return v4;
}

- (void)updateWithImage:(id)a3 cornerRadius:(double)a4
{
  v6 = a3;
  [(PKMerchantTokenIconView *)self _cancelImageDownload];
  image = self->_image;
  self->_image = v6;

  self->_cornerRadius = a4;

  [(PKMerchantTokenIconView *)self _updateIconImage];
}

- (void)updateWithImageURL:(id)a3 monogramText:(id)a4 cornerRadius:(double)a5
{
  v8 = a4;
  v10 = a3;
  [(PKMerchantTokenIconView *)self _cancelImageDownload];
  image = self->_image;
  self->_image = 0;

  self->_cornerRadius = a5;
  [(PKMerchantTokenIconView *)self _updateMonogramLabelWithText:v8];

  [(PKMerchantTokenIconView *)self _updateIconImage];
  [(PKMerchantTokenIconView *)self _downloadImageFromURL:v10];
}

- (void)_setUpViews
{
  [(PKMerchantTokenIconView *)self _setUpSelf];

  [(PKMerchantTokenIconView *)self _setUpMonogramLabel];
}

- (void)_setUpSelf
{
  [(PKMerchantTokenIconView *)self setClipsToBounds:1];
  [(PKMerchantTokenIconView *)self setContentMode:2];
  v4 = [(PKMerchantTokenIconView *)self layer];
  v3 = [MEMORY[0x1E69DC888] systemGrayColor];
  [v4 setBorderColor:{objc_msgSend(v3, "CGColor")}];
}

- (void)_setUpMonogramLabel
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  monogramLabel = self->_monogramLabel;
  self->_monogramLabel = v4;

  [(UILabel *)self->_monogramLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = self->_monogramLabel;
  v7 = [MEMORY[0x1E69DC888] whiteColor];
  [(UILabel *)v6 setTextColor:v7];

  [(UILabel *)self->_monogramLabel setTextAlignment:1];
  v8 = self->_monogramLabel;
  v9 = [MEMORY[0x1E69DB878] systemFontOfSize:100.0 weight:*MEMORY[0x1E69DB970]];
  [(UILabel *)v8 setFont:v9];

  [(UILabel *)self->_monogramLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_monogramLabel setMinimumScaleFactor:0.01];
  v10 = self->_monogramLabel;

  [(PKMerchantTokenIconView *)self addSubview:v10];
}

- (void)_setUpConstraints
{
  v17[4] = *MEMORY[0x1E69E9840];
  v13 = MEMORY[0x1E696ACD8];
  v16 = [(UILabel *)self->_monogramLabel centerYAnchor];
  v15 = [(PKMerchantTokenIconView *)self centerYAnchor];
  v14 = [v16 constraintEqualToAnchor:v15];
  v17[0] = v14;
  v3 = [(UILabel *)self->_monogramLabel heightAnchor];
  v4 = [(PKMerchantTokenIconView *)self heightAnchor];
  v5 = [v3 constraintEqualToAnchor:v4 multiplier:0.715];
  v17[1] = v5;
  v6 = [(UILabel *)self->_monogramLabel leadingAnchor];
  v7 = [(PKMerchantTokenIconView *)self leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v17[2] = v8;
  v9 = [(UILabel *)self->_monogramLabel trailingAnchor];
  v10 = [(PKMerchantTokenIconView *)self trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v17[3] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];
  [v13 activateConstraints:v12];
}

- (void)_updateMonogramLabelWithText:(id)a3
{
  v7 = a3;
  v4 = [v7 length];
  monogramLabel = self->_monogramLabel;
  if (v4)
  {
    v6 = [v7 substringWithRange:{0, 1}];
    [(UILabel *)monogramLabel setText:v6];
  }

  else
  {
    [(UILabel *)monogramLabel setText:&stru_1F3BD7330];
  }
}

- (void)_updateIconImage
{
  image = self->_image;
  if (image)
  {
    v4 = [MEMORY[0x1E69DC888] clearColor];
    [(PKMerchantTokenIconView *)self setBackgroundColor:v4];

    [(PKMerchantTokenIconView *)self _setContinuousCornerRadius:self->_cornerRadius];
    v5 = [(PKMerchantTokenIconView *)self layer];
    [v5 setBorderWidth:PKUIPixelLength()];

    v6 = self->_image;
  }

  else
  {
    v7 = [MEMORY[0x1E69DC888] systemGray2Color];
    [(PKMerchantTokenIconView *)self setBackgroundColor:v7];

    [(PKMerchantTokenIconView *)self _setContinuousCornerRadius:self->_cornerRadius];
    v8 = [(PKMerchantTokenIconView *)self layer];
    [v8 setBorderWidth:PKUIPixelLength()];

    v6 = 0;
  }

  [(PKMerchantTokenIconView *)self setImage:v6];
  monogramLabel = self->_monogramLabel;

  [(UILabel *)monogramLabel setHidden:image != 0];
}

- (void)_downloadImageFromURL:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__70;
  v14 = __Block_byref_object_dispose__70;
  v15 = 0;
  v5 = [MEMORY[0x1E696AF78] sharedSession];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__PKMerchantTokenIconView__downloadImageFromURL___block_invoke;
  v8[3] = &unk_1E8025B30;
  objc_copyWeak(&v9, &location);
  v8[4] = &v10;
  v6 = [v5 dataTaskWithURL:v4 completionHandler:v8];
  v7 = v11[5];
  v11[5] = v6;

  objc_storeStrong(&self->_imageDownloadTask, v11[5]);
  [v11[5] resume];
  objc_destroyWeak(&v9);
  _Block_object_dispose(&v10, 8);

  objc_destroyWeak(&location);
}

void __49__PKMerchantTokenIconView__downloadImageFromURL___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  if (!a4 && [a3 statusCode] == 200)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__PKMerchantTokenIconView__downloadImageFromURL___block_invoke_2;
    block[3] = &unk_1E801E260;
    objc_copyWeak(&v11, (a1 + 40));
    v10 = *(a1 + 32);
    v9 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v11);
  }
}

void __49__PKMerchantTokenIconView__downloadImageFromURL___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && WeakRetained[67] == *(*(*(a1 + 40) + 8) + 40))
  {
    v4 = WeakRetained;
    v3 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:*(a1 + 32)];
    if (v3)
    {
      objc_storeStrong(v4 + 65, v3);
      [v4 _updateIconImage];
    }

    WeakRetained = v4;
  }
}

- (void)_cancelImageDownload
{
  [(NSURLSessionDataTask *)self->_imageDownloadTask cancel];
  imageDownloadTask = self->_imageDownloadTask;
  self->_imageDownloadTask = 0;
}

@end