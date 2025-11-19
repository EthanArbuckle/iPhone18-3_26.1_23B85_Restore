@interface PXBannerView
- (PXBannerView)init;
- (PXBannerView)initWithFrame:(CGRect)a3;
- (PXBannerView)initWithFrame:(CGRect)a3 padding:(UIEdgeInsets)a4;
- (PXBannerViewDelegate)delegate;
- (UIEdgeInsets)padding;
- (id)_createActionButton;
- (id)_createCancelButton;
- (id)_createImageView;
- (id)_labelWithSubtitle:(id)a3;
- (id)_labelWithTitle:(id)a3;
- (void)_handleCancelButton:(id)a3;
- (void)_handleContinueButton:(id)a3;
- (void)_reloadViews;
- (void)setConfiguration:(id)a3;
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

- (void)_handleCancelButton:(id)a3
{
  v5 = [(PXBannerView *)self configuration];
  v6 = [v5 cancelButtonHandler];
  if (v6)
  {
    v7 = [(PXBannerView *)self delegate];
    if (!v7)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"PXBannerView.m" lineNumber:386 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];
    }

    v8 = [v5 cancelActionIdentifier];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __36__PXBannerView__handleCancelButton___block_invoke;
    v10[3] = &unk_1E772D978;
    v11 = v6;
    [v7 preparePresentationEnvironmentForBannerView:self actionIdentifier:v8 completionHandler:v10];
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

- (void)_handleContinueButton:(id)a3
{
  v5 = [(PXBannerView *)self configuration];
  v6 = [v5 actionButtonHandler];
  if (v6)
  {
    v7 = [(PXBannerView *)self delegate];
    if (!v7)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"PXBannerView.m" lineNumber:369 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];
    }

    v8 = [v5 primaryActionIdentifier];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __38__PXBannerView__handleContinueButton___block_invoke;
    v10[3] = &unk_1E772D978;
    v11 = v6;
    [v7 preparePresentationEnvironmentForBannerView:self actionIdentifier:v8 completionHandler:v10];
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
  v3 = [MEMORY[0x1E69DC740] borderlessButtonConfiguration];
  [v3 setButtonSize:0];
  v4 = [MEMORY[0x1E69DC888] systemGrayColor];
  [v3 setBaseForegroundColor:v4];

  v5 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:2 scale:20.0];
  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"multiply"];
  v7 = [v6 imageWithSymbolConfiguration:v5];
  [v3 setImage:v7];

  [v3 setContentInsets:{0.0, 0.0, 0.0, 0.0}];
  v8 = [MEMORY[0x1E69DC738] buttonWithType:1];
  [v8 setConfiguration:v3];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 addTarget:self action:sel__handleCancelButton_ forControlEvents:0x2000];

  return v8;
}

- (id)_createActionButton
{
  v3 = [MEMORY[0x1E69DC740] filledButtonConfiguration];
  [v3 setButtonSize:0];
  [v3 setCornerStyle:4];
  v4 = [MEMORY[0x1E69DC888] systemBlueColor];
  [v3 setBaseBackgroundColor:v4];

  v5 = [MEMORY[0x1E69DC888] systemWhiteColor];
  [v3 setBaseForegroundColor:v5];

  v6 = [(PXBannerView *)self configuration];
  v7 = [v6 actionButtonTitle];
  [v3 setTitle:v7];

  [v3 setTitleTextAttributesTransformer:&__block_literal_global_3351];
  v8 = [MEMORY[0x1E69DC738] buttonWithType:1];
  [v8 setConfiguration:v3];
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

- (id)_labelWithSubtitle:(id)a3
{
  v3 = MEMORY[0x1E69DCC10];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = MEMORY[0x1A590C430](10, 0, 5);
  [v5 setFont:v6];

  [v5 setText:v4];
  v7 = [MEMORY[0x1E69DC888] labelColor];
  [v5 setTextColor:v7];

  [v5 setNumberOfLines:2];
  [v5 sizeToFit];

  return v5;
}

- (id)_labelWithTitle:(id)a3
{
  v3 = MEMORY[0x1E69DCC10];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = MEMORY[0x1A590C430](9, 0, 5);
  [v5 setFont:v6];

  [v5 setText:v4];
  v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v5 setTextColor:v7];

  [v5 setNumberOfLines:2];
  [v5 sizeToFit];

  return v5;
}

- (id)_createImageView
{
  v12[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.2.circle.fill"];
  v3 = MEMORY[0x1E69DCAD8];
  v4 = [MEMORY[0x1E69DC888] labelColor];
  v12[0] = v4;
  v5 = [MEMORY[0x1E69DC888] quaternaryLabelColor];
  v12[1] = v5;
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
  v3 = [(PXBannerView *)self subviews];
  v4 = [v3 countByEnumeratingWithState:&v90 objects:v95 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v90 + 1) + 8 * i) removeFromSuperview];
      }

      v5 = [v3 countByEnumeratingWithState:&v90 objects:v95 count:16];
    }

    while (v5);
  }

  v8 = [(PXBannerView *)self configuration];
  v9 = [v8 wantsCancelButton];
  [(PXBannerView *)self padding];
  v12 = v11;
  v14 = v13;
  v44 = v9;
  if (v9)
  {
    v15 = v10 + 4.0;
  }

  else
  {
    v15 = v10;
  }

  [(PXBannerView *)self setAutoresizingMask:18];
  v16 = [MEMORY[0x1E69DC668] sharedApplication];
  v17 = [v16 userInterfaceLayoutDirection];

  v18 = objc_alloc(MEMORY[0x1E69DD298]);
  v19 = [MEMORY[0x1E69DC730] effectWithStyle:8];
  v20 = [v18 initWithEffect:v19];

  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = [v20 layer];
  [v21 setCornerRadius:27.0];

  [v20 setClipsToBounds:1];
  v22 = [(PXBannerView *)self _createImageView];
  v23 = [v8 title];
  v24 = [(PXBannerView *)self _labelWithTitle:v23];

  v89 = v8;
  v25 = [v8 subtitle];
  v26 = [(PXBannerView *)self _labelWithSubtitle:v25];

  v27 = [(PXBannerView *)self _createActionButton];
  v28 = [(PXBannerView *)self _createCancelButton];
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
  [(PXBannerView *)self addSubview:v22];
  [(PXBannerView *)self addSubview:v29];
  [(PXBannerView *)self addSubview:v27];
  [(PXBannerView *)self addSubview:v28];
  if (v17 == 1)
  {
    v30 = v15;
  }

  else
  {
    v30 = v12;
  }

  if (v17 != 1)
  {
    v12 = v15;
  }

  v66 = MEMORY[0x1E696ACD8];
  v84 = [v20 topAnchor];
  v83 = [(PXBannerView *)self topAnchor];
  v82 = [v84 constraintEqualToAnchor:v83 constant:8.0];
  v94[0] = v82;
  v81 = [v20 leadingAnchor];
  v80 = [(PXBannerView *)self leadingAnchor];
  v79 = [v81 constraintGreaterThanOrEqualToAnchor:v80 constant:v30];
  v94[1] = v79;
  v78 = [v20 trailingAnchor];
  v77 = [(PXBannerView *)self trailingAnchor];
  v76 = [v78 constraintEqualToAnchor:v77 constant:-v12];
  v94[2] = v76;
  v75 = [v20 bottomAnchor];
  v74 = [(PXBannerView *)self bottomAnchor];
  v73 = [v75 constraintEqualToAnchor:v74 constant:-8.0];
  v94[3] = v73;
  v72 = [(PXBannerView *)self bottomAnchor];
  v71 = [v20 bottomAnchor];
  v70 = [v72 constraintGreaterThanOrEqualToAnchor:v71 constant:-v14];
  v94[4] = v70;
  v69 = [v22 leadingAnchor];
  v68 = [v20 leadingAnchor];
  v67 = [v69 constraintEqualToAnchor:v68 constant:8.0];
  v94[5] = v67;
  v65 = [v22 centerYAnchor];
  v64 = [v20 centerYAnchor];
  v63 = [v65 constraintEqualToAnchor:v64];
  v94[6] = v63;
  v62 = [v29 topAnchor];
  v61 = [v20 topAnchor];
  v60 = [v62 constraintGreaterThanOrEqualToAnchor:v61 constant:8.0];
  v94[7] = v60;
  v59 = [v29 leadingAnchor];
  v88 = v22;
  v58 = [v22 trailingAnchor];
  v57 = [v59 constraintEqualToAnchor:v58 constant:4.0];
  v94[8] = v57;
  v56 = [v29 centerYAnchor];
  v55 = [v20 centerYAnchor];
  v54 = [v56 constraintEqualToAnchor:v55];
  v94[9] = v54;
  v53 = [v29 bottomAnchor];
  v52 = [v20 bottomAnchor];
  v51 = [v53 constraintGreaterThanOrEqualToAnchor:v52 constant:-8.0];
  v94[10] = v51;
  v46 = v27;
  v50 = [v27 leadingAnchor];
  v85 = v29;
  v49 = [v29 trailingAnchor];
  v48 = [v50 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v49 multiplier:4.0];
  v94[11] = v48;
  v47 = [v27 centerYAnchor];
  v45 = [v20 centerYAnchor];
  v31 = [v47 constraintEqualToAnchor:v45];
  v94[12] = v31;
  v32 = v28;
  v33 = [v28 trailingAnchor];
  v34 = [v20 trailingAnchor];
  v35 = [v33 constraintEqualToAnchor:v34 constant:-8.0];
  v94[13] = v35;
  v36 = [v28 centerYAnchor];
  v37 = [v20 centerYAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];
  v94[14] = v38;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:15];
  [v66 activateConstraints:v39];

  v40 = v32;
  if (v46)
  {
    if (v44)
    {
      v41 = [v46 trailingAnchor];
      [v40 leadingAnchor];
    }

    else
    {
      [v32 setHidden:1];
      v41 = [v46 trailingAnchor];
      [v20 trailingAnchor];
    }
    v42 = ;
    v43 = [v41 constraintEqualToAnchor:v42 constant:-8.0];
    [v43 setActive:1];
  }
}

- (void)setConfiguration:(id)a3
{
  v4 = a3;
  configuration = self->_configuration;
  if (configuration != v4)
  {
    v9 = v4;
    v6 = [(PXBannerViewConfiguration *)configuration isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(PXBannerViewConfiguration *)v9 copy];
      v8 = self->_configuration;
      self->_configuration = v7;

      [(PXBannerView *)self _reloadViews];
      v4 = v9;
    }
  }
}

- (PXBannerView)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXBannerView.m" lineNumber:96 description:{@"%s is not available as initializer", "-[PXBannerView init]"}];

  abort();
}

- (PXBannerView)initWithFrame:(CGRect)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXBannerView.m" lineNumber:92 description:{@"%s is not available as initializer", "-[PXBannerView initWithFrame:]"}];

  abort();
}

- (PXBannerView)initWithFrame:(CGRect)a3 padding:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v11.receiver = self;
  v11.super_class = PXBannerView;
  v8 = [(PXBannerView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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