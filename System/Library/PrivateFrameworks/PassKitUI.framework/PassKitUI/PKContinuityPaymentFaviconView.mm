@interface PKContinuityPaymentFaviconView
- (CGSize)_imageViewSize;
- (PKContinuityPaymentFaviconView)initWithCoder:(id)coder;
- (PKContinuityPaymentFaviconView)initWithFrame:(CGRect)frame imageURL:(id)l modelIdentifier:(id)identifier merchantName:(id)name;
- (double)_iconVerticalOffset;
- (void)_loadMacImage;
- (void)_loadMerchantImage:(id)image;
- (void)_setupMonogram;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation PKContinuityPaymentFaviconView

- (PKContinuityPaymentFaviconView)initWithCoder:(id)coder
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"This class is not NSCoding compliant"];

  return 0;
}

- (PKContinuityPaymentFaviconView)initWithFrame:(CGRect)frame imageURL:(id)l modelIdentifier:(id)identifier merchantName:(id)name
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  lCopy = l;
  identifierCopy = identifier;
  nameCopy = name;
  v40.receiver = self;
  v40.super_class = PKContinuityPaymentFaviconView;
  height = [(PKContinuityPaymentFaviconView *)&v40 initWithFrame:x, y, width, height];
  if (height)
  {
    v17 = [nameCopy copy];
    merchantName = height->_merchantName;
    height->_merchantName = v17;

    v19 = [identifierCopy copy];
    modelIdentifier = height->_modelIdentifier;
    height->_modelIdentifier = v19;

    v21 = objc_alloc_init(PKShapeView);
    maskView = height->_maskView;
    height->_maskView = v21;

    v23 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{x, y, width, height}];
    macImageView = height->_macImageView;
    height->_macImageView = v23;

    [(UIImageView *)height->_macImageView setContentMode:1];
    [(PKContinuityPaymentFaviconView *)height _loadMacImage];
    layer = [(PKContinuityPaymentFaviconView *)height layer];
    [layer setAllowsGroupOpacity:0];

    layer2 = [(PKContinuityPaymentFaviconView *)height layer];
    [layer2 setAllowsGroupBlending:0];

    [(PKContinuityPaymentFaviconView *)height addSubview:height->_macImageView];
    v27 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{x, y, width, height}];
    imageShadowView = height->_imageShadowView;
    height->_imageShadowView = v27;

    [(PKContinuityPaymentFaviconView *)height addSubview:height->_imageShadowView];
    layer3 = [(UIView *)height->_imageShadowView layer];
    [layer3 setShadowOffset:{0.0, 1.0}];
    darkGrayColor = [MEMORY[0x1E69DC888] darkGrayColor];
    [layer3 setShadowColor:{objc_msgSend(darkGrayColor, "CGColor")}];

    LODWORD(v31) = 1050253722;
    [layer3 setShadowOpacity:v31];
    [layer3 setShadowRadius:1.0];
    [layer3 setMasksToBounds:0];
    v32 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{x, y, width, height}];
    imageView = height->_imageView;
    height->_imageView = v32;

    [(UIImageView *)height->_imageView setContentMode:2];
    layer4 = [(UIImageView *)height->_imageView layer];
    [layer4 setMasksToBounds:1];

    layer5 = [(UIImageView *)height->_imageView layer];
    [layer5 setCornerRadius:5.0];

    [(PKContinuityPaymentFaviconView *)height addSubview:height->_imageView];
    v36 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{x, y, width, height}];
    monogramView = height->_monogramView;
    height->_monogramView = v36;

    layer6 = [(UIView *)height->_monogramView layer];
    [layer6 setCornerRadius:5.0];

    [(PKContinuityPaymentFaviconView *)height _setupMonogram];
    [(PKContinuityPaymentFaviconView *)height _loadMerchantImage:lCopy];
  }

  return height;
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
  cGPath = [v13 CGPath];

  layer = [(UIView *)self->_imageShadowView layer];
  [layer setShadowPath:cGPath];
}

- (void)_setupMonogram
{
  monogramView = self->_monogramView;
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(UIView *)monogramView setBackgroundColor:labelColor];

  v5 = objc_alloc(MEMORY[0x1E69DCC10]);
  [(UIView *)self->_monogramView bounds];
  v9 = [v5 initWithFrame:?];
  [v9 setAutoresizingMask:18];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v9 setTextColor:systemBackgroundColor];

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

- (void)_loadMerchantImage:(id)image
{
  imageCopy = image;
  if (imageCopy)
  {
    objc_initWeak(&location, self);
    [(PKContinuityPaymentFaviconView *)self _imageViewSize];
    v6 = v5;
    v8 = v7;
    traitCollection = [(PKContinuityPaymentFaviconView *)self traitCollection];
    [traitCollection displayScale];
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
    v16 = [MEMORY[0x1E696AF68] requestWithURL:imageCopy];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __53__PKContinuityPaymentFaviconView__loadMerchantImage___block_invoke;
    v17[3] = &unk_1E8026DA0;
    objc_copyWeak(&v19, &location);
    v18 = imageCopy;
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
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v10 = [v4 configurationWithHierarchicalColor:labelColor];

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