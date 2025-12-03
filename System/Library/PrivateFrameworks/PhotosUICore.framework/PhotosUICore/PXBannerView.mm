@interface PXBannerView
- (PXBannerView)init;
- (PXBannerView)initWithFrame:(CGRect)frame;
- (PXBannerView)initWithFrame:(CGRect)frame padding:(UIEdgeInsets)padding;
- (PXBannerViewDelegate)delegate;
- (UIEdgeInsets)padding;
- (id)_createActionButton;
- (id)_createCancelButton;
- (id)_createImageView;
- (id)_labelWithSubtitle:(id)subtitle;
- (id)_labelWithTitle:(id)title;
- (void)_handleCancelButton:(id)button;
- (void)_handleContinueButton:(id)button;
- (void)_reloadViews;
- (void)setConfiguration:(id)configuration;
@end

@implementation PXBannerView

- (UIEdgeInsets)padding
{
  objc_copyStruct(v6, &self->_padding, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (PXBannerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleCancelButton:(id)button
{
  configuration = [(PXBannerView *)self configuration];
  cancelButtonHandler = [configuration cancelButtonHandler];
  if (cancelButtonHandler)
  {
    delegate = [(PXBannerView *)self delegate];
    if (!delegate)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXBannerView.m" lineNumber:386 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];
    }

    cancelActionIdentifier = [configuration cancelActionIdentifier];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __36__PXBannerView__handleCancelButton___block_invoke;
    v10[3] = &unk_1E772D978;
    v11 = cancelButtonHandler;
    [delegate preparePresentationEnvironmentForBannerView:self actionIdentifier:cancelActionIdentifier completionHandler:v10];
  }
}

void __36__PXBannerView__handleCancelButton___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PLUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "PXBannerView: Cancel: error preparing presentation environment: %@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_handleContinueButton:(id)button
{
  configuration = [(PXBannerView *)self configuration];
  actionButtonHandler = [configuration actionButtonHandler];
  if (actionButtonHandler)
  {
    delegate = [(PXBannerView *)self delegate];
    if (!delegate)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXBannerView.m" lineNumber:369 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];
    }

    primaryActionIdentifier = [configuration primaryActionIdentifier];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __38__PXBannerView__handleContinueButton___block_invoke;
    v10[3] = &unk_1E772D978;
    v11 = actionButtonHandler;
    [delegate preparePresentationEnvironmentForBannerView:self actionIdentifier:primaryActionIdentifier completionHandler:v10];
  }
}

void __38__PXBannerView__handleContinueButton___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PLUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "PXBannerView: Continue: error preparing presentation environment: %@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (id)_createCancelButton
{
  borderlessButtonConfiguration = [MEMORY[0x1E69DC740] borderlessButtonConfiguration];
  [borderlessButtonConfiguration setButtonSize:0];
  systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
  [borderlessButtonConfiguration setBaseForegroundColor:systemGrayColor];

  v5 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:2 scale:20.0];
  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"multiply"];
  v7 = [v6 imageWithSymbolConfiguration:v5];
  [borderlessButtonConfiguration setImage:v7];

  [borderlessButtonConfiguration setContentInsets:{0.0, 0.0, 0.0, 0.0}];
  v8 = [MEMORY[0x1E69DC738] buttonWithType:1];
  [v8 setConfiguration:borderlessButtonConfiguration];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 addTarget:self action:sel__handleCancelButton_ forControlEvents:0x2000];

  return v8;
}

- (id)_createActionButton
{
  filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
  [filledButtonConfiguration setButtonSize:0];
  [filledButtonConfiguration setCornerStyle:4];
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [filledButtonConfiguration setBaseBackgroundColor:systemBlueColor];

  systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
  [filledButtonConfiguration setBaseForegroundColor:systemWhiteColor];

  configuration = [(PXBannerView *)self configuration];
  actionButtonTitle = [configuration actionButtonTitle];
  [filledButtonConfiguration setTitle:actionButtonTitle];

  [filledButtonConfiguration setTitleTextAttributesTransformer:&__block_literal_global_3351];
  v8 = [MEMORY[0x1E69DC738] buttonWithType:1];
  [v8 setConfiguration:filledButtonConfiguration];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v9) = 1144766464;
  [v8 setContentCompressionResistancePriority:0 forAxis:v9];
  [v8 addTarget:self action:sel__handleContinueButton_ forControlEvents:0x2000];

  return v8;
}

id __35__PXBannerView__createActionButton__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mutableCopy];
  v3 = MEMORY[0x1A590C430](10, 0, 6);
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  return v2;
}

- (id)_labelWithSubtitle:(id)subtitle
{
  v3 = MEMORY[0x1E69DCC10];
  subtitleCopy = subtitle;
  v5 = objc_alloc_init(v3);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = MEMORY[0x1A590C430](10, 0, 5);
  [v5 setFont:v6];

  [v5 setText:subtitleCopy];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [v5 setTextColor:labelColor];

  [v5 setNumberOfLines:2];
  [v5 sizeToFit];

  return v5;
}

- (id)_labelWithTitle:(id)title
{
  v3 = MEMORY[0x1E69DCC10];
  titleCopy = title;
  v5 = objc_alloc_init(v3);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = MEMORY[0x1A590C430](9, 0, 5);
  [v5 setFont:v6];

  [v5 setText:titleCopy];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v5 setTextColor:secondaryLabelColor];

  [v5 setNumberOfLines:2];
  [v5 sizeToFit];

  return v5;
}

- (id)_createImageView
{
  v12[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.2.circle.fill"];
  v3 = MEMORY[0x1E69DCAD8];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v12[0] = labelColor;
  quaternaryLabelColor = [MEMORY[0x1E69DC888] quaternaryLabelColor];
  v12[1] = quaternaryLabelColor;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v7 = [v3 configurationWithPaletteColors:v6];

  v8 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDD00] scale:3];
  v9 = [v7 configurationByApplyingConfiguration:v8];

  v10 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 setImage:v2];
  [v10 setSymbolConfiguration:v9];

  return v10;
}

- (void)_reloadViews
{
  v96 = *MEMORY[0x1E69E9840];
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  subviews = [(PXBannerView *)self subviews];
  v4 = [subviews countByEnumeratingWithState:&v90 objects:v95 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v91;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v91 != v6)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v90 + 1) + 8 * i) removeFromSuperview];
      }

      v5 = [subviews countByEnumeratingWithState:&v90 objects:v95 count:16];
    }

    while (v5);
  }

  configuration = [(PXBannerView *)self configuration];
  wantsCancelButton = [configuration wantsCancelButton];
  [(PXBannerView *)self padding];
  v12 = v11;
  v14 = v13;
  v44 = wantsCancelButton;
  if (wantsCancelButton)
  {
    v15 = v10 + 4.0;
  }

  else
  {
    v15 = v10;
  }

  [(PXBannerView *)self setAutoresizingMask:18];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  v18 = objc_alloc(MEMORY[0x1E69DD298]);
  v19 = [MEMORY[0x1E69DC730] effectWithStyle:8];
  v20 = [v18 initWithEffect:v19];

  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  layer = [v20 layer];
  [layer setCornerRadius:27.0];

  [v20 setClipsToBounds:1];
  _createImageView = [(PXBannerView *)self _createImageView];
  title = [configuration title];
  v24 = [(PXBannerView *)self _labelWithTitle:title];

  v89 = configuration;
  subtitle = [configuration subtitle];
  v26 = [(PXBannerView *)self _labelWithSubtitle:subtitle];

  _createActionButton = [(PXBannerView *)self _createActionButton];
  _createCancelButton = [(PXBannerView *)self _createCancelButton];
  v29 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v29 setAxis:1];
  [v29 setAlignment:1];
  [v29 setSpacing:-1.0];
  v87 = v24;
  [v29 addArrangedSubview:v24];
  v86 = v26;
  [v29 addArrangedSubview:v26];
  [(PXBannerView *)self addSubview:v20];
  [(PXBannerView *)self addSubview:_createImageView];
  [(PXBannerView *)self addSubview:v29];
  [(PXBannerView *)self addSubview:_createActionButton];
  [(PXBannerView *)self addSubview:_createCancelButton];
  if (userInterfaceLayoutDirection == 1)
  {
    v30 = v15;
  }

  else
  {
    v30 = v12;
  }

  if (userInterfaceLayoutDirection != 1)
  {
    v12 = v15;
  }

  v66 = MEMORY[0x1E696ACD8];
  topAnchor = [v20 topAnchor];
  topAnchor2 = [(PXBannerView *)self topAnchor];
  v82 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
  v94[0] = v82;
  leadingAnchor = [v20 leadingAnchor];
  leadingAnchor2 = [(PXBannerView *)self leadingAnchor];
  v79 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:v30];
  v94[1] = v79;
  trailingAnchor = [v20 trailingAnchor];
  trailingAnchor2 = [(PXBannerView *)self trailingAnchor];
  v76 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v12];
  v94[2] = v76;
  bottomAnchor = [v20 bottomAnchor];
  bottomAnchor2 = [(PXBannerView *)self bottomAnchor];
  v73 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-8.0];
  v94[3] = v73;
  bottomAnchor3 = [(PXBannerView *)self bottomAnchor];
  bottomAnchor4 = [v20 bottomAnchor];
  v70 = [bottomAnchor3 constraintGreaterThanOrEqualToAnchor:bottomAnchor4 constant:-v14];
  v94[4] = v70;
  leadingAnchor3 = [_createImageView leadingAnchor];
  leadingAnchor4 = [v20 leadingAnchor];
  v67 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:8.0];
  v94[5] = v67;
  centerYAnchor = [_createImageView centerYAnchor];
  centerYAnchor2 = [v20 centerYAnchor];
  v63 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v94[6] = v63;
  topAnchor3 = [v29 topAnchor];
  topAnchor4 = [v20 topAnchor];
  v60 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4 constant:8.0];
  v94[7] = v60;
  leadingAnchor5 = [v29 leadingAnchor];
  v88 = _createImageView;
  trailingAnchor3 = [_createImageView trailingAnchor];
  v57 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3 constant:4.0];
  v94[8] = v57;
  centerYAnchor3 = [v29 centerYAnchor];
  centerYAnchor4 = [v20 centerYAnchor];
  v54 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v94[9] = v54;
  bottomAnchor5 = [v29 bottomAnchor];
  bottomAnchor6 = [v20 bottomAnchor];
  v51 = [bottomAnchor5 constraintGreaterThanOrEqualToAnchor:bottomAnchor6 constant:-8.0];
  v94[10] = v51;
  v46 = _createActionButton;
  leadingAnchor6 = [_createActionButton leadingAnchor];
  v85 = v29;
  trailingAnchor4 = [v29 trailingAnchor];
  v48 = [leadingAnchor6 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor4 multiplier:4.0];
  v94[11] = v48;
  centerYAnchor5 = [_createActionButton centerYAnchor];
  centerYAnchor6 = [v20 centerYAnchor];
  v31 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  v94[12] = v31;
  v32 = _createCancelButton;
  trailingAnchor5 = [_createCancelButton trailingAnchor];
  trailingAnchor6 = [v20 trailingAnchor];
  v35 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-8.0];
  v94[13] = v35;
  centerYAnchor7 = [_createCancelButton centerYAnchor];
  centerYAnchor8 = [v20 centerYAnchor];
  v38 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
  v94[14] = v38;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:15];
  [v66 activateConstraints:v39];

  v40 = v32;
  if (v46)
  {
    if (v44)
    {
      trailingAnchor7 = [v46 trailingAnchor];
      [v40 leadingAnchor];
    }

    else
    {
      [v32 setHidden:1];
      trailingAnchor7 = [v46 trailingAnchor];
      [v20 trailingAnchor];
    }
    v42 = ;
    v43 = [trailingAnchor7 constraintEqualToAnchor:v42 constant:-8.0];
    [v43 setActive:1];
  }
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  configuration = self->_configuration;
  if (configuration != configurationCopy)
  {
    v9 = configurationCopy;
    v6 = [(PXBannerViewConfiguration *)configuration isEqual:configurationCopy];
    configurationCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(PXBannerViewConfiguration *)v9 copy];
      v8 = self->_configuration;
      self->_configuration = v7;

      [(PXBannerView *)self _reloadViews];
      configurationCopy = v9;
    }
  }
}

- (PXBannerView)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXBannerView.m" lineNumber:96 description:{@"%s is not available as initializer", "-[PXBannerView init]"}];

  abort();
}

- (PXBannerView)initWithFrame:(CGRect)frame
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXBannerView.m" lineNumber:92 description:{@"%s is not available as initializer", "-[PXBannerView initWithFrame:]"}];

  abort();
}

- (PXBannerView)initWithFrame:(CGRect)frame padding:(UIEdgeInsets)padding
{
  right = padding.right;
  bottom = padding.bottom;
  left = padding.left;
  top = padding.top;
  v11.receiver = self;
  v11.super_class = PXBannerView;
  v8 = [(PXBannerView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v9 = v8;
  if (v8)
  {
    v8->_padding.top = top;
    v8->_padding.left = left;
    v8->_padding.bottom = bottom;
    v8->_padding.right = right;
    [(PXBannerView *)v8 _reloadViews];
  }

  return v9;
}

@end