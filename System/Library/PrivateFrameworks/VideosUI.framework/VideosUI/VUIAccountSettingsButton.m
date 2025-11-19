@interface VUIAccountSettingsButton
- (CGSize)calculateContentSize;
- (CGSize)contentSize;
- (CGSize)preferedContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (VUIAccountSettingsButton)initWithType:(unint64_t)a3 interfaceStyle:(unint64_t)a4;
- (id)largeContentImage;
- (void)_accountStoreDidChange:(id)a3;
- (void)_profileImageDidChange:(id)a3;
- (void)_setup;
- (void)_setupAccountImageView;
- (void)_updateAccessibilityFrame;
- (void)_updateAccountButtonVisibility;
- (void)_updateAccountImage;
- (void)_updateImageViewFrame;
- (void)configureWithLayoutProperties;
- (void)hideAndDisable:(BOOL)a3;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)a3;
- (void)setPreferedContentSize:(CGSize)a3;
- (void)setTintColor:(id)a3;
@end

@implementation VUIAccountSettingsButton

- (VUIAccountSettingsButton)initWithType:(unint64_t)a3 interfaceStyle:(unint64_t)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = VUIAccountSettingsButton;
  v4 = [(VUIButton *)&v13 initWithType:a3 interfaceStyle:a4];
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

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = VUIAccountSettingsButton;
  [(VUIAccountSettingsButton *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(VUIAccountSettingsButton *)self _updateAccessibilityFrame];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(VUIAccountSettingsButton *)self contentSize:a3.width];
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

- (void)setPreferedContentSize:(CGSize)a3
{
  self->_preferedContentSize = a3;
  [(VUIAccountSettingsButton *)self calculateContentSize];

  [(VUIAccountSettingsButton *)self setContentSize:?];
}

- (CGSize)calculateContentSize
{
  v3 = [(VUIAccountSettingsButton *)self traitCollection];
  v4 = [v3 isAXEnabled];

  if (v4)
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

- (void)setTintColor:(id)a3
{
  v4 = a3;
  v5 = [(VUIButton *)self imageView];
  [v5 setTintColor:v4];
}

- (id)largeContentImage
{
  v2 = [(VUIButton *)self imageView];
  v3 = [v2 placeholderImage];

  return v3;
}

- (void)hideAndDisable:(BOOL)a3
{
  [(VUIAccountSettingsButton *)self setHideAndDisable:a3];

  [(VUIAccountSettingsButton *)self _updateAccountButtonVisibility];
}

- (void)_setup
{
  [(VUIAccountSettingsButton *)self _setupAccountImageView];
  [(VUIAccountSettingsButton *)self _updateAccountImage];
  [(VUIAccountSettingsButton *)self _updateAccountButtonVisibility];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__accountStoreDidChange_ name:@"VUIAuthenticationManagerAccountStoreDidChangeNotification" object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel__profileImageDidChange_ name:@"VUIAuthenticationManagerProfileImageDidChangeNotification" object:0];
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
    v6 = [v5 image];
    [v5 setPlaceholderImage:v6];
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

    v9 = [(VUIAccountSettingsButton *)self monogramAvatarView];
    [v9 removeFromSuperview];

    v7 = [(VUIButton *)self imageView];
    [v7 setHidden:0];
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

      v7 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v7 scale];
      v4 = [VUIAuthenticationManager monogramAvatarForSize:[(VUIAccountSettingsButton *)self vuiIsRTL] scale:v11 isRTL:v10, v18];
      goto LABEL_25;
    }

    if (v14)
    {
      *v23 = 0;
      _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_INFO, "AccountSettingButton:: No profile image, use monogram avatar view", v23, 2u);
    }

    v15 = [(VUIAccountSettingsButton *)self monogramAvatarView];
    v7 = [_TtC8VideosUI21AvatarViewFactoryObjC makeAccountAvatarViewWithExisting:v15];

    [(VUIAccountSettingsButton *)self bounds];
    [v7 setFrame:?];
    v16 = [(VUIAccountSettingsButton *)self monogramAvatarView];
    [(VUIAccountSettingsButton *)self vui_addSubview:v7 oldView:v16];

    [(VUIAccountSettingsButton *)self setMonogramAvatarView:v7];
    v17 = [(VUIButton *)self imageView];
    [v17 setHidden:1];

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
    v6 = [(VUIAccountSettingsButton *)self monogramAvatarView];
    [v6 removeFromSuperview];

    v7 = [(VUIButton *)self imageView];
    [v7 setHidden:0];
LABEL_25:
  }

LABEL_26:
  v19 = [(VUIButton *)self imageView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v19 setImage:v4];
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
  v11 = [(VUIButton *)self imageView];
  [v11 setFrame:{v4, v6, v8, v10}];
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
  v11 = [(VUIButton *)self imageView];
  [v11 setFrame:{v4, v6, v8, v10}];

  if (MEMORY[0x1E6913230]())
  {
    v12 = [(VUIAccountSettingsButton *)self monogramAvatarView];

    if (v12)
    {
      v13 = [(VUIAccountSettingsButton *)self monogramAvatarView];
      [v13 setFrame:{v4, v6, v8, v10}];
    }
  }
}

- (void)_accountStoreDidChange:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v4 = __51__VUIAccountSettingsButton__accountStoreDidChange___block_invoke;
  v5 = &unk_1E872D768;
  v6 = self;
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

- (void)_profileImageDidChange:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v4 = __51__VUIAccountSettingsButton__profileImageDidChange___block_invoke;
  v5 = &unk_1E872D768;
  v6 = self;
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