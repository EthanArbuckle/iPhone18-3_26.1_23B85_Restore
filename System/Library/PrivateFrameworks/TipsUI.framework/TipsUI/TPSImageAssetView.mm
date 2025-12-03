@interface TPSImageAssetView
+ (BOOL)cacheImageAvailableForIdentifier:(id)identifier;
- (TPSImageAssetView)init;
- (TPSImageAssetView)initWithCoder:(id)coder;
- (TPSImageAssetView)initWithDefaultBackgroundColor:(id)color noImageBackgroundColor:(id)backgroundColor;
- (TPSImageAssetView)initWithFrame:(CGRect)frame;
- (TPSImageAssetViewDelegate)delegate;
- (void)animateImageView:(BOOL)view;
- (void)cancel;
- (void)commonInit;
- (void)fetchImageWithIdentifier:(id)identifier path:(id)path;
- (void)layoutSubviews;
- (void)setAspectFillAsset:(BOOL)asset;
- (void)setDefaultBackgroundColor:(id)color;
- (void)setImage:(id)image;
- (void)setNoImageBackgroundColor:(id)color;
- (void)setRoundedCorner:(BOOL)corner;
- (void)showHighlight:(BOOL)highlight;
- (void)updateBackgroundColor;
@end

@implementation TPSImageAssetView

+ (BOOL)cacheImageAvailableForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [TPSImageAssetController imageFromMemoryCacheForIdentifier:identifierCopy];
  v6 = v5 != 0;

  if (identifierCopy && !v5)
  {
    v7 = [MEMORY[0x277D755B8] imageNamed:identifierCopy];
    if (!v7)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__TPSImageAssetView_cacheImageAvailableForIdentifier___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = self;
      if (cacheImageAvailableForIdentifier__predicate != -1)
      {
        dispatch_once(&cacheImageAvailableForIdentifier__predicate, block);
      }

      v7 = [MEMORY[0x277D755B8] imageNamed:identifierCopy inBundle:cacheImageAvailableForIdentifier__gFrameworkBundle compatibleWithTraitCollection:0];
    }

    v6 = v7 != 0;
  }

  return v6;
}

uint64_t __54__TPSImageAssetView_cacheImageAvailableForIdentifier___block_invoke()
{
  cacheImageAvailableForIdentifier__gFrameworkBundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

- (void)commonInit
{
  self->_status = 0;
  self->_roundedCorner = 0;
  self->_roundedCornerRadius = 10.0;
  obj = +[TPSImageAssetView defaultBackgroundColor];
  if (!self->_defaultBackgroundColor)
  {
    objc_storeStrong(&self->_defaultBackgroundColor, obj);
  }

  noImageBackgroundColor = self->_noImageBackgroundColor;
  if (!noImageBackgroundColor)
  {
    objc_storeStrong(&self->_noImageBackgroundColor, obj);
    noImageBackgroundColor = self->_noImageBackgroundColor;
  }

  [(TPSImageAssetView *)self setBackgroundColor:noImageBackgroundColor];
  if (!self->_imageView)
  {
    v4 = objc_alloc(MEMORY[0x277D755E8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    imageView = self->_imageView;
    self->_imageView = v5;

    [(TPSImageAssetView *)self addSubview:self->_imageView];
    [(UIImageView *)self->_imageView setClipsToBounds:1];
    [(UIImageView *)self->_imageView setContentMode:1];
  }
}

- (TPSImageAssetView)initWithDefaultBackgroundColor:(id)color noImageBackgroundColor:(id)backgroundColor
{
  colorCopy = color;
  backgroundColorCopy = backgroundColor;
  v12.receiver = self;
  v12.super_class = TPSImageAssetView;
  v9 = [(TPSImageAssetView *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_defaultBackgroundColor, color);
    objc_storeStrong(&v10->_noImageBackgroundColor, backgroundColor);
    [(TPSImageAssetView *)v10 commonInit];
  }

  return v10;
}

- (TPSImageAssetView)init
{
  v5.receiver = self;
  v5.super_class = TPSImageAssetView;
  v2 = [(TPSImageAssetView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TPSImageAssetView *)v2 commonInit];
  }

  return v3;
}

- (TPSImageAssetView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = TPSImageAssetView;
  v3 = [(TPSImageAssetView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(TPSImageAssetView *)v3 commonInit];
  }

  return v4;
}

- (TPSImageAssetView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = TPSImageAssetView;
  v3 = [(TPSImageAssetView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(TPSImageAssetView *)v3 commonInit];
  }

  return v4;
}

- (void)setAspectFillAsset:(BOOL)asset
{
  if (self->_aspectFillAsset != asset)
  {
    self->_aspectFillAsset = asset;
    if (asset)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    [(UIImageView *)self->_imageView setContentMode:v3];
  }
}

- (void)setRoundedCorner:(BOOL)corner
{
  if (self->_roundedCorner != corner)
  {
    self->_roundedCorner = corner;
    roundedCornerRadius = 0.0;
    if (corner)
    {
      roundedCornerRadius = self->_roundedCornerRadius;
    }

    [(TPSImageAssetView *)self _setContinuousCornerRadius:roundedCornerRadius];
    [(TPSImageAssetView *)self _continuousCornerRadius];
    v7 = v6;
    imageView = [(TPSImageAssetView *)self imageView];
    [imageView _setContinuousCornerRadius:v7];
  }
}

- (void)cancel
{
  defaultManager = [MEMORY[0x277D717E0] defaultManager];
  [defaultManager cancelSessionItem:self->_imageURLSessionItem];

  imageURLSessionItem = self->_imageURLSessionItem;
  self->_imageURLSessionItem = 0;

  currentDisplayIdentifier = self->_currentDisplayIdentifier;
  self->_currentDisplayIdentifier = 0;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  image = [(UIImageView *)self->_imageView image];

  if (image != imageCopy)
  {
    [(UIImageView *)self->_imageView setImage:imageCopy];
    if (self->_hideImageWhenNil)
    {
      imageView = [(TPSImageAssetView *)self imageView];
      [imageView setHidden:imageCopy == 0];
    }
  }

  [(TPSImageAssetView *)self updateBackgroundColor];
}

- (void)setDefaultBackgroundColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_defaultBackgroundColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_defaultBackgroundColor, color);
    [(TPSImageAssetView *)self updateBackgroundColor];
  }
}

- (void)setNoImageBackgroundColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_noImageBackgroundColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_noImageBackgroundColor, color);
    [(TPSImageAssetView *)self updateBackgroundColor];
  }
}

- (void)updateBackgroundColor
{
  clearColor = [MEMORY[0x277D75348] clearColor];
  respectLoadingStatus = self->_respectLoadingStatus;
  image = [(UIImageView *)self->_imageView image];
  v5 = image;
  if (respectLoadingStatus)
  {

    status = self->_status;
    if (v5)
    {
      if ((status | 4) != 4)
      {
        goto LABEL_12;
      }

      v7 = 456;
    }

    else
    {
      if (status != 2)
      {
        goto LABEL_12;
      }

      v7 = 464;
    }

    v9 = *(&self->super.super.super.isa + v7);
    v10 = clearColor;
  }

  else
  {
    v8 = &OBJC_IVAR___TPSImageAssetView__defaultBackgroundColor;
    if (!image)
    {
      v8 = &OBJC_IVAR___TPSImageAssetView__noImageBackgroundColor;
    }

    v9 = *(&self->super.super.super.isa + *v8);

    v10 = v5;
  }

  clearColor = v9;
LABEL_12:
  backgroundColor = [(TPSImageAssetView *)self backgroundColor];
  v12 = [backgroundColor isEqual:clearColor];

  if ((v12 & 1) == 0)
  {
    [(TPSImageAssetView *)self setBackgroundColor:clearColor];
  }
}

- (void)fetchImageWithIdentifier:(id)identifier path:(id)path
{
  identifierCopy = identifier;
  pathCopy = path;
  if (![identifierCopy length])
  {
    self->_status = 2;
    goto LABEL_8;
  }

  if (![(NSString *)self->_currentDisplayIdentifier isEqualToString:identifierCopy])
  {
    self->_status = 1;
    currentDisplayIdentifier = self->_currentDisplayIdentifier;
    self->_currentDisplayIdentifier = 0;

    currentImagePath = self->_currentImagePath;
    self->_currentImagePath = 0;

    defaultManager = [MEMORY[0x277D717E0] defaultManager];
    [defaultManager cancelSessionItem:self->_imageURLSessionItem];

    imageURLSessionItem = self->_imageURLSessionItem;
    self->_imageURLSessionItem = 0;

    [(TPSImageAssetView *)self setImage:0];
    if (pathCopy)
    {
      v13 = [TPSImageAssetController imageFromMemoryCacheForIdentifier:identifierCopy];
      objc_storeStrong(&self->_currentDisplayIdentifier, identifier);
      objc_storeStrong(&self->_currentImagePath, path);
      if (v13)
      {
        [(TPSImageAssetView *)self setImage:v13];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained imageAssetViewImageUpdated:self];

        goto LABEL_10;
      }

      v16 = [MEMORY[0x277D755B8] imageNamed:identifierCopy];
      if (v16)
      {
        v15 = v16;
      }

      else
      {
        lastPathComponent = [pathCopy lastPathComponent];
        v18 = [MEMORY[0x277D755B8] imageNamed:lastPathComponent];
        if (v18)
        {
          v15 = v18;
        }

        else
        {
          v19 = [lastPathComponent componentsSeparatedByString:@"@"];
          firstObject = [v19 firstObject];

          v15 = [MEMORY[0x277D755B8] imageNamed:firstObject];

          if (!v15)
          {
            objc_initWeak(&location, self);
            objc_initWeak(&from, self->_currentDisplayIdentifier);
            v22 = [TPSImageAssetController dataCacheForIdentifier:identifierCopy];
            v23 = v22 != 0;

            v24 = *MEMORY[0x277CCA798];
            v28[0] = MEMORY[0x277D85DD0];
            v28[1] = 3221225472;
            v28[2] = __51__TPSImageAssetView_fetchImageWithIdentifier_path___block_invoke;
            v28[3] = &unk_278451410;
            objc_copyWeak(&v30, &location);
            objc_copyWeak(&v31, &from);
            v32 = v23;
            v29 = pathCopy;
            LODWORD(v25) = v24;
            v26 = [TPSImageAssetController formattedDataForPath:v29 identifier:identifierCopy priority:v28 completionHandler:v25];
            v27 = self->_imageURLSessionItem;
            self->_imageURLSessionItem = v26;

            objc_destroyWeak(&v31);
            objc_destroyWeak(&v30);
            objc_destroyWeak(&from);
            objc_destroyWeak(&location);
            goto LABEL_10;
          }
        }
      }

      self->_status = 4;
      [(TPSImageAssetView *)self setImage:v15];
      [(TPSImageAssetView *)self setStatus:4];
      v21 = objc_loadWeakRetained(&self->_delegate);
      [v21 imageAssetViewImageUpdated:self];

LABEL_9:
      goto LABEL_10;
    }

    self->_status = 2;
LABEL_8:
    [(TPSImageAssetView *)self setImage:0];
    v15 = objc_loadWeakRetained(&self->_delegate);
    [v15 imageAssetViewImageUpdated:self];
    goto LABEL_9;
  }

LABEL_10:
}

void __51__TPSImageAssetView_fetchImageWithIdentifier_path___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5, uint64_t a6, void *a7)
{
  v10 = a3;
  v11 = a7;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v13 = objc_loadWeakRetained((a1 + 48));
  v14 = [WeakRetained currentDisplayIdentifier];
  v15 = [v13 isEqualToString:v14];

  if (v11)
  {
    if ([WeakRetained status] == 4)
    {
LABEL_13:
      v23 = [MEMORY[0x277D71778] data];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        __51__TPSImageAssetView_fetchImageWithIdentifier_path___block_invoke_cold_1(a1, v11, v23);
      }

      goto LABEL_16;
    }

    v16 = 2;
  }

  else
  {
    v17 = [WeakRetained imageURLSessionItem];
    v18 = ([v17 isCancelled] ^ 1) & v15;

    if (v18 == 1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v10;
        [WeakRetained setStatus:4];
        [WeakRetained setImage:v19];
        v20 = [WeakRetained delegate];
        [v20 imageAssetViewImageUpdated:WeakRetained];

        if (a5)
        {
          v21 = 0;
        }

        else
        {
          v21 = *(a1 + 56) ^ 1;
        }

        [WeakRetained animateImageView:v21 & 1];
      }

      else
      {
        [WeakRetained setStatus:2];
        [WeakRetained setImage:0];
        v24 = [WeakRetained delegate];
        [v24 imageAssetViewImageUpdated:WeakRetained];

        [WeakRetained setCurrentDisplayIdentifier:0];
        [WeakRetained setCurrentImagePath:0];
      }

      goto LABEL_16;
    }

    if ([WeakRetained status] == 4)
    {
      goto LABEL_16;
    }

    v16 = 3;
  }

  [WeakRetained setStatus:v16];
  if (v15)
  {
    [WeakRetained setImage:0];
    v22 = [WeakRetained delegate];
    [v22 imageAssetViewImageUpdated:WeakRetained];
  }

  if (v11)
  {
    goto LABEL_13;
  }

LABEL_16:
  [WeakRetained setImageURLSessionItem:0];
}

- (void)animateImageView:(BOOL)view
{
  viewCopy = view;
  imageView = [(TPSImageAssetView *)self imageView];
  v6 = imageView;
  if (viewCopy)
  {
    [imageView setAlpha:0.0];

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__TPSImageAssetView_animateImageView___block_invoke;
    v7[3] = &unk_278451288;
    v7[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v7 animations:&__block_literal_global_1 completion:0.2];
  }

  else
  {
    [imageView setAlpha:1.0];
  }
}

void __38__TPSImageAssetView_animateImageView___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) imageView];
  [v1 setAlpha:1.0];
}

- (void)showHighlight:(BOOL)highlight
{
  highlightView = self->_highlightView;
  if (highlight)
  {
    if (!highlightView)
    {
      v6 = objc_alloc(MEMORY[0x277D75D18]);
      [(TPSImageAssetView *)self bounds];
      v7 = [v6 initWithFrame:?];
      v8 = self->_highlightView;
      self->_highlightView = v7;

      [(TPSImageAssetView *)self _continuousCornerRadius];
      [(UIView *)self->_highlightView _setContinuousCornerRadius:?];
      v9 = [MEMORY[0x277D75348] colorWithWhite:0.31372549 alpha:0.25];
      [(UIView *)self->_highlightView setBackgroundColor:v9];

      v10 = self->_highlightView;

      [(TPSImageAssetView *)self addSubview:v10];
    }
  }

  else
  {
    [(UIView *)highlightView removeFromSuperview];
    v5 = self->_highlightView;
    self->_highlightView = 0;
  }
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = TPSImageAssetView;
  [(TPSImageAssetView *)&v11 layoutSubviews];
  [(TPSImageAssetView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIImageView *)self->_imageView setFrame:?];
  [(UIView *)self->_highlightView setFrame:v4, v6, v8, v10];
}

- (TPSImageAssetViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __51__TPSImageAssetView_fetchImageWithIdentifier_path___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_220B31000, log, OS_LOG_TYPE_DEBUG, "Image asset path %@ fetch error: %@", &v4, 0x16u);
}

@end