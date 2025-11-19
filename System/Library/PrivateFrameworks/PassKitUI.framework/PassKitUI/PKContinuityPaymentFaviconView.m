@interface PKContinuityPaymentFaviconView
- (CGSize)_imageViewSize;
- (PKContinuityPaymentFaviconView)initWithCoder:(id)a3;
- (PKContinuityPaymentFaviconView)initWithFrame:(CGRect)a3 imageURL:(id)a4 modelIdentifier:(id)a5 merchantName:(id)a6;
- (double)_iconVerticalOffset;
- (void)_loadMacImage;
- (void)_loadMerchantImage:(id)a3;
- (void)_setupMonogram;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation PKContinuityPaymentFaviconView

- (PKContinuityPaymentFaviconView)initWithCoder:(id)a3
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"This class is not NSCoding compliant"];

  return 0;
}

- (PKContinuityPaymentFaviconView)initWithFrame:(CGRect)a3 imageURL:(id)a4 modelIdentifier:(id)a5 merchantName:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v40.receiver = self;
  v40.super_class = PKContinuityPaymentFaviconView;
  v16 = [(PKContinuityPaymentFaviconView *)&v40 initWithFrame:x, y, width, height];
  if (v16)
  {
    v17 = [v15 copy];
    merchantName = v16->_merchantName;
    v16->_merchantName = v17;

    v19 = [v14 copy];
    modelIdentifier = v16->_modelIdentifier;
    v16->_modelIdentifier = v19;

    v21 = objc_alloc_init(PKShapeView);
    maskView = v16->_maskView;
    v16->_maskView = v21;

    v23 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{x, y, width, height}];
    macImageView = v16->_macImageView;
    v16->_macImageView = v23;

    [(UIImageView *)v16->_macImageView setContentMode:1];
    [(PKContinuityPaymentFaviconView *)v16 _loadMacImage];
    v25 = [(PKContinuityPaymentFaviconView *)v16 layer];
    [v25 setAllowsGroupOpacity:0];

    v26 = [(PKContinuityPaymentFaviconView *)v16 layer];
    [v26 setAllowsGroupBlending:0];

    [(PKContinuityPaymentFaviconView *)v16 addSubview:v16->_macImageView];
    v27 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{x, y, width, height}];
    imageShadowView = v16->_imageShadowView;
    v16->_imageShadowView = v27;

    [(PKContinuityPaymentFaviconView *)v16 addSubview:v16->_imageShadowView];
    v29 = [(UIView *)v16->_imageShadowView layer];
    [v29 setShadowOffset:{0.0, 1.0}];
    v30 = [MEMORY[0x1E69DC888] darkGrayColor];
    [v29 setShadowColor:{objc_msgSend(v30, "CGColor")}];

    LODWORD(v31) = 1050253722;
    [v29 setShadowOpacity:v31];
    [v29 setShadowRadius:1.0];
    [v29 setMasksToBounds:0];
    v32 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{x, y, width, height}];
    imageView = v16->_imageView;
    v16->_imageView = v32;

    [(UIImageView *)v16->_imageView setContentMode:2];
    v34 = [(UIImageView *)v16->_imageView layer];
    [v34 setMasksToBounds:1];

    v35 = [(UIImageView *)v16->_imageView layer];
    [v35 setCornerRadius:5.0];

    [(PKContinuityPaymentFaviconView *)v16 addSubview:v16->_imageView];
    v36 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{x, y, width, height}];
    monogramView = v16->_monogramView;
    v16->_monogramView = v36;

    v38 = [(UIView *)v16->_monogramView layer];
    [v38 setCornerRadius:5.0];

    [(PKContinuityPaymentFaviconView *)v16 _setupMonogram];
    [(PKContinuityPaymentFaviconView *)v16 _loadMerchantImage:v13];
  }

  return v16;
}

- (void)dealloc
{
  [(WKWebView *)self->_webView stopLoading];
  v3.receiver = self;
  v3.super_class = PKContinuityPaymentFaviconView;
  [(PKContinuityPaymentFaviconView *)&v3 dealloc];
}

- (CGSize)_imageViewSize
{
  v2 = [(NSString *)self->_modelIdentifier containsString:@"iMac"];
  v3 = 60.0;
  if (v2)
  {
    v3 = 50.0;
  }

  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = PKContinuityPaymentFaviconView;
  [(PKContinuityPaymentFaviconView *)&v16 layoutSubviews];
  macImageView = self->_macImageView;
  [(PKContinuityPaymentFaviconView *)self bounds];
  [(UIImageView *)macImageView setFrame:?];
  [(PKContinuityPaymentFaviconView *)self _imageViewSize];
  v5 = v4;
  v7 = v6;
  [(UIImageView *)self->_macImageView frame];
  MidX = CGRectGetMidX(v17);
  [(UIImageView *)self->_macImageView frame];
  MidY = CGRectGetMidY(v18);
  [(PKContinuityPaymentFaviconView *)self _iconVerticalOffset];
  v11 = MidX - v5 * 0.5;
  v12 = MidY + v10 - v7 * 0.5;
  [(UIImageView *)self->_imageView setFrame:v11, v12, v5, v7];
  [(UIView *)self->_imageShadowView setFrame:v11, v12, v5, v7];
  [(UIView *)self->_monogramView setFrame:v11, v12, v5, v7];
  v13 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, v5, v7, 5.0}];
  v14 = [v13 CGPath];

  v15 = [(UIView *)self->_imageShadowView layer];
  [v15 setShadowPath:v14];
}

- (void)_setupMonogram
{
  monogramView = self->_monogramView;
  v4 = [MEMORY[0x1E69DC888] labelColor];
  [(UIView *)monogramView setBackgroundColor:v4];

  v5 = objc_alloc(MEMORY[0x1E69DCC10]);
  [(UIView *)self->_monogramView bounds];
  v9 = [v5 initWithFrame:?];
  [v9 setAutoresizingMask:18];
  v6 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v9 setTextColor:v6];

  v7 = [MEMORY[0x1E69DB878] systemFontOfSize:38.0 weight:*MEMORY[0x1E69DB978]];
  [v9 setFont:v7];

  [v9 setTextAlignment:1];
  if ([(NSString *)self->_merchantName length])
  {
    v8 = [(NSString *)self->_merchantName substringWithRange:0, 1];
    [v9 setText:v8];
  }

  [(UIView *)self->_monogramView addSubview:v9];
  [(PKContinuityPaymentFaviconView *)self addSubview:self->_monogramView];
}

- (void)_loadMerchantImage:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    [(PKContinuityPaymentFaviconView *)self _imageViewSize];
    v6 = v5;
    v8 = v7;
    v9 = [(PKContinuityPaymentFaviconView *)self traitCollection];
    [v9 displayScale];
    if (v10 == 0.0)
    {
      v11 = 1.0;
    }

    else
    {
      v11 = v10;
    }

    v12 = objc_alloc(MEMORY[0x1E69853A0]);
    v13 = [v12 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    webView = self->_webView;
    self->_webView = v13;

    v15 = self->_webView;
    v16 = [MEMORY[0x1E696AF68] requestWithURL:v4];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __53__PKContinuityPaymentFaviconView__loadMerchantImage___block_invoke;
    v17[3] = &unk_1E8026DA0;
    objc_copyWeak(&v19, &location);
    v18 = v4;
    [(WKWebView *)v15 _loadAndDecodeImage:v16 constrainedToSize:0x80000 maximumBytesFromNetwork:v17 completionHandler:v6 * v11, v8 * v11];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

void __53__PKContinuityPaymentFaviconView__loadMerchantImage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__PKContinuityPaymentFaviconView__loadMerchantImage___block_invoke_2;
  v9[3] = &unk_1E8014828;
  objc_copyWeak(&v13, (a1 + 40));
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 32);
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(&v13);
}

void __53__PKContinuityPaymentFaviconView__loadMerchantImage___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 32) && !*(a1 + 40))
    {
      [WeakRetained[53] setImage:?];
      [v3[54] removeFromSuperview];
    }

    else
    {
      v4 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 48);
        v6 = [*(a1 + 40) localizedDescription];
        v8 = 138412546;
        v9 = v5;
        v10 = 2112;
        v11 = v6;
        _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Couldn't load favicon: %@, with error: %@", &v8, 0x16u);
      }

      [v3[53] removeFromSuperview];
      [v3 setNeedsLayout];
    }

    v7 = v3[51];
    v3[51] = 0;
  }
}

- (void)_loadMacImage
{
  if ([(NSString *)self->_modelIdentifier containsString:@"MacBookPro"]|| [(NSString *)self->_modelIdentifier containsString:@"MacBookAir"]|| [(NSString *)self->_modelIdentifier containsString:@"MacBook"])
  {
    v3 = @"laptopcomputer";
  }

  else if ([(NSString *)self->_modelIdentifier containsString:@"iMac"])
  {
    v3 = @"desktopcomputer";
  }

  else
  {
    v3 = @"display";
  }

  v4 = MEMORY[0x1E69DCAD8];
  v5 = [MEMORY[0x1E69DC888] labelColor];
  v10 = [v4 configurationWithHierarchicalColor:v5];

  v6 = [MEMORY[0x1E69DCAD8] configurationWithWeight:2];
  v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:v3];
  v8 = [v7 imageByApplyingSymbolConfiguration:v6];
  v9 = [v8 imageByApplyingSymbolConfiguration:v10];

  [(UIImageView *)self->_macImageView setImage:v9];
}

- (double)_iconVerticalOffset
{
  v3 = 0.0;
  if (![(NSString *)self->_modelIdentifier containsString:@"MacBookPro"]&& ![(NSString *)self->_modelIdentifier containsString:@"MacBookAir"]&& ![(NSString *)self->_modelIdentifier containsString:@"MacBook"])
  {
    if ([(NSString *)self->_modelIdentifier containsString:@"iMac"])
    {
      return -22.0;
    }

    else
    {
      return -11.0;
    }
  }

  return v3;
}

@end