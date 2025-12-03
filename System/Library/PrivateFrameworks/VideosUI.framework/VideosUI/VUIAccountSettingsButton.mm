@interface VUIAccountSettingsButton
- (CGSize)calculateContentSize;
- (CGSize)contentSize;
- (CGSize)preferedContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (VUIAccountSettingsButton)initWithType:(unint64_t)type interfaceStyle:(unint64_t)style;
- (id)largeContentImage;
- (void)_accountStoreDidChange:(id)change;
- (void)_profileImageDidChange:(id)change;
- (void)_setup;
- (void)_setupAccountImageView;
- (void)_updateAccessibilityFrame;
- (void)_updateAccountButtonVisibility;
- (void)_updateAccountImage;
- (void)_updateImageViewFrame;
- (void)configureWithLayoutProperties;
- (void)hideAndDisable:(BOOL)disable;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)frame;
- (void)setPreferedContentSize:(CGSize)size;
- (void)setTintColor:(id)color;
@end

@implementation VUIAccountSettingsButton

- (VUIAccountSettingsButton)initWithType:(unint64_t)type interfaceStyle:(unint64_t)style
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = VUIAccountSettingsButton;
  v4 = [(VUIButton *)&v13 initWithType:type interfaceStyle:style];
  if (v4)
  {
    if (MEMORY[0x1E6913230]())
    {
      v5 = 44.0;
    }

    else
    {
      v5 = 34.0;
    }

    v6 = MEMORY[0x1E6913230]();
    v7 = 44.0;
    if (!v6)
    {
      v7 = 34.0;
    }

    [(VUIAccountSettingsButton *)v4 setPreferedContentSize:v5, v7];
    [(VUIButton *)v4 setPadding:0.0, 15.0, 0.0, 0.0];
    [(VUIAccountSettingsButton *)v4 _setup];
    objc_initWeak(&location, v4);
    v14[0] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__VUIAccountSettingsButton_initWithType_interfaceStyle___block_invoke;
    v10[3] = &unk_1E872E760;
    objc_copyWeak(&v11, &location);
    [(VUIAccountSettingsButton *)v4 vui_registerForTraitChanges:v8 withHandler:v10];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __56__VUIAccountSettingsButton_initWithType_interfaceStyle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained calculateContentSize];
  v2 = v1;
  v4 = v3;
  [WeakRetained contentSize];
  if (v2 != v6 || v4 != v5)
  {
    [WeakRetained setContentSize:{v2, v4}];
    [WeakRetained invalidateIntrinsicContentSize];
  }
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = VUIAccountSettingsButton;
  [(VUIAccountSettingsButton *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(VUIAccountSettingsButton *)self _updateAccessibilityFrame];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(VUIAccountSettingsButton *)self contentSize:fits.width];
  v5 = v4;
  [(VUIButton *)self padding];
  v7 = v5 + v6;
  [(VUIAccountSettingsButton *)self contentSize];
  v9 = v7;
  result.height = v8;
  result.width = v9;
  return result;
}

- (void)configureWithLayoutProperties
{
  v7.receiver = self;
  v7.super_class = VUIAccountSettingsButton;
  [(VUIButton *)&v7 configureWithLayoutProperties];
  [(VUIButton *)self setImageTintColor:0];
  [(VUIAccountSettingsButton *)self contentSize];
  v4 = v3;
  [(VUIAccountSettingsButton *)self contentSize];
  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  [(VUIButton *)self setCornerRadius:v6 * 0.5];
}

- (void)setPreferedContentSize:(CGSize)size
{
  self->_preferedContentSize = size;
  [(VUIAccountSettingsButton *)self calculateContentSize];

  [(VUIAccountSettingsButton *)self setContentSize:?];
}

- (CGSize)calculateContentSize
{
  traitCollection = [(VUIAccountSettingsButton *)self traitCollection];
  isAXEnabled = [traitCollection isAXEnabled];

  if (isAXEnabled)
  {
    v5 = 44.0;
    v6 = 44.0;
  }

  else
  {

    [(VUIAccountSettingsButton *)self preferedContentSize];
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = VUIAccountSettingsButton;
  [(VUIButton *)&v3 layoutSubviews];
  [(VUIAccountSettingsButton *)self _updateAccessibilityFrame];
  [(VUIAccountSettingsButton *)self _updateImageViewFrame];
}

- (void)setTintColor:(id)color
{
  colorCopy = color;
  imageView = [(VUIButton *)self imageView];
  [imageView setTintColor:colorCopy];
}

- (id)largeContentImage
{
  imageView = [(VUIButton *)self imageView];
  placeholderImage = [imageView placeholderImage];

  return placeholderImage;
}

- (void)hideAndDisable:(BOOL)disable
{
  [(VUIAccountSettingsButton *)self setHideAndDisable:disable];

  [(VUIAccountSettingsButton *)self _updateAccountButtonVisibility];
}

- (void)_setup
{
  [(VUIAccountSettingsButton *)self _setupAccountImageView];
  [(VUIAccountSettingsButton *)self _updateAccountImage];
  [(VUIAccountSettingsButton *)self _updateAccountButtonVisibility];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__accountStoreDidChange_ name:@"VUIAuthenticationManagerAccountStoreDidChangeNotification" object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__profileImageDidChange_ name:@"VUIAuthenticationManagerProfileImageDidChangeNotification" object:0];
}

- (void)_setupAccountImageView
{
  [(VUIAccountSettingsButton *)self contentSize];
  v7 = [objc_alloc(MEMORY[0x1E69DF778]) initWithSymbol:@"person.crop.circle" size:0 symbolConfiguration:{v3, v4}];
  [v7 setRenderAsTemplate:1];
  v5 = [MEMORY[0x1E69DF720] makeImageViewWithResourceDescriptor:v7 existingView:0];
  [v5 setUserInteractionEnabled:0];
  if (v5)
  {
    image = [v5 image];
    [v5 setPlaceholderImage:image];
  }

  [(VUIButton *)self setImageView:v5 forHighlightedState:0];
}

- (void)_updateAccountImage
{
  VUIRequireMainThread();
  if (!+[VUIAuthenticationManager userHasActiveAccount])
  {
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_INFO, "AccountSettingButton:: User has no active account, use noAccount image", v20, 2u);
    }

    if (!MEMORY[0x1E6913230]())
    {
      v4 = 0;
      goto LABEL_26;
    }

    monogramAvatarView = [(VUIAccountSettingsButton *)self monogramAvatarView];
    [monogramAvatarView removeFromSuperview];

    imageView = [(VUIButton *)self imageView];
    [imageView setHidden:0];
LABEL_21:
    v4 = 0;
    goto LABEL_25;
  }

  v3 = +[VUIAuthenticationManager userProfileImage];
  if (!v3)
  {
    v10 = 34.0;
    if (MEMORY[0x1E6913230]())
    {
      v11 = 44.0;
    }

    else
    {
      v11 = 34.0;
    }

    if (MEMORY[0x1E6913230]())
    {
      v10 = 44.0;
    }

    v12 = MEMORY[0x1E6913230]();
    v13 = VUIDefaultLogObject();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
    if (!v12)
    {
      if (v14)
      {
        *v22 = 0;
        _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_INFO, "AccountSettingButton:: No profile image, use monogram image", v22, 2u);
      }

      imageView = [MEMORY[0x1E69DCEB0] mainScreen];
      [imageView scale];
      v4 = [VUIAuthenticationManager monogramAvatarForSize:[(VUIAccountSettingsButton *)self vuiIsRTL] scale:v11 isRTL:v10, v18];
      goto LABEL_25;
    }

    if (v14)
    {
      *v23 = 0;
      _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_INFO, "AccountSettingButton:: No profile image, use monogram avatar view", v23, 2u);
    }

    monogramAvatarView2 = [(VUIAccountSettingsButton *)self monogramAvatarView];
    imageView = [_TtC8VideosUI21AvatarViewFactoryObjC makeAccountAvatarViewWithExisting:monogramAvatarView2];

    [(VUIAccountSettingsButton *)self bounds];
    [imageView setFrame:?];
    monogramAvatarView3 = [(VUIAccountSettingsButton *)self monogramAvatarView];
    [(VUIAccountSettingsButton *)self vui_addSubview:imageView oldView:monogramAvatarView3];

    [(VUIAccountSettingsButton *)self setMonogramAvatarView:imageView];
    imageView2 = [(VUIButton *)self imageView];
    [imageView2 setHidden:1];

    goto LABEL_21;
  }

  v4 = v3;
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_INFO, "AccountSettingButton:: Use profile image", buf, 2u);
  }

  if (MEMORY[0x1E6913230]())
  {
    monogramAvatarView4 = [(VUIAccountSettingsButton *)self monogramAvatarView];
    [monogramAvatarView4 removeFromSuperview];

    imageView = [(VUIButton *)self imageView];
    [imageView setHidden:0];
LABEL_25:
  }

LABEL_26:
  imageView3 = [(VUIButton *)self imageView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [imageView3 setImage:v4];
  }
}

- (void)_updateAccountButtonVisibility
{
  if (+[VUIAuthenticationManager allowsAccountModification]&& ![(VUIAccountSettingsButton *)self hideAndDisable])
  {
    v4 = 0;
    v3 = 1;
  }

  else
  {
    v3 = 0;
    v4 = 1;
  }

  [(VUIAccountSettingsButton *)self setHidden:v4];

  [(VUIAccountSettingsButton *)self setUserInteractionEnabled:v3];
}

- (void)_updateAccessibilityFrame
{
  [(VUIButton *)self padding];
  [(VUIAccountSettingsButton *)self bounds];
  CGRectGetMinY(v13);
  [(VUIAccountSettingsButton *)self bounds];
  CGRectGetWidth(v14);
  [(VUIButton *)self padding];
  [(VUIAccountSettingsButton *)self bounds];
  CGRectGetHeight(v15);
  [(VUIAccountSettingsButton *)self bounds];
  [(VUIAccountSettingsButton *)self vuiIsRTL];
  VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(VUIAccountSettingsButton *)self convertRect:0 toView:?];
  [(VUIAccountSettingsButton *)self setAccessibilityFrame:?];
  imageView = [(VUIButton *)self imageView];
  [imageView setFrame:{v4, v6, v8, v10}];
}

- (void)_updateImageViewFrame
{
  [(VUIButton *)self padding];
  [(VUIAccountSettingsButton *)self contentSize];
  [(VUIAccountSettingsButton *)self contentSize];
  [(VUIAccountSettingsButton *)self bounds];
  [(VUIAccountSettingsButton *)self vuiIsRTL];
  VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  imageView = [(VUIButton *)self imageView];
  [imageView setFrame:{v4, v6, v8, v10}];

  if (MEMORY[0x1E6913230]())
  {
    monogramAvatarView = [(VUIAccountSettingsButton *)self monogramAvatarView];

    if (monogramAvatarView)
    {
      monogramAvatarView2 = [(VUIAccountSettingsButton *)self monogramAvatarView];
      [monogramAvatarView2 setFrame:{v4, v6, v8, v10}];
    }
  }
}

- (void)_accountStoreDidChange:(id)change
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v4 = __51__VUIAccountSettingsButton__accountStoreDidChange___block_invoke;
  v5 = &unk_1E872D768;
  selfCopy = self;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v4(block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __51__VUIAccountSettingsButton__accountStoreDidChange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateAccountButtonVisibility];
  v2 = *(a1 + 32);

  return [v2 _updateAccountImage];
}

- (void)_profileImageDidChange:(id)change
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v4 = __51__VUIAccountSettingsButton__profileImageDidChange___block_invoke;
  v5 = &unk_1E872D768;
  selfCopy = self;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v4(block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (CGSize)preferedContentSize
{
  width = self->_preferedContentSize.width;
  height = self->_preferedContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end