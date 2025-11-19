@interface SBSUIWallpaperProgressHUD
- (SBSUIWallpaperProgressHUD)initWithFrame:(CGRect)a3;
- (void)hide;
- (void)showMessage:(id)a3 inView:(id)a4;
@end

@implementation SBSUIWallpaperProgressHUD

- (SBSUIWallpaperProgressHUD)initWithFrame:(CGRect)a3
{
  v59[11] = *MEMORY[0x1E69E9840];
  v58.receiver = self;
  v58.super_class = SBSUIWallpaperProgressHUD;
  v3 = [(SBSUIWallpaperProgressHUD *)&v58 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v4 = v3;
  if (v3)
  {
    [(SBSUIWallpaperProgressHUD *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [(SBSUIWallpaperProgressHUD *)v4 traitCollection];
    v6 = [v5 userInterfaceStyle];

    v7 = objc_alloc(MEMORY[0x1E69DD370]);
    if (v6 == 2)
    {
      v8 = 2030;
    }

    else
    {
      v8 = 2020;
    }

    v9 = [v7 initWithPrivateStyle:v8];
    backdropView = v4->_backdropView;
    v4->_backdropView = v9;

    [(_UIBackdropView *)v4->_backdropView _setContinuousCornerRadius:7.0];
    [(_UIBackdropView *)v4->_backdropView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBSUIWallpaperProgressHUD *)v4 addSubview:v4->_backdropView];
    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v4->_label;
    v4->_label = v11;

    v13 = v4->_label;
    v14 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v13 setBackgroundColor:v14];

    v15 = v4->_label;
    v16 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v15 setTextColor:v16];

    v17 = v4->_label;
    v18 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:16.0];
    [(UILabel *)v17 setFont:v18];

    [(UILabel *)v4->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_label setNumberOfLines:0];
    [(SBSUIWallpaperProgressHUD *)v4 addSubview:v4->_label];
    v19 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    activityIndicatorView = v4->_activityIndicatorView;
    v4->_activityIndicatorView = v19;

    [(UIActivityIndicatorView *)v4->_activityIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBSUIWallpaperProgressHUD *)v4 addSubview:v4->_activityIndicatorView];
    v44 = MEMORY[0x1E696ACD8];
    v57 = [(_UIBackdropView *)v4->_backdropView trailingAnchor];
    v56 = [(SBSUIWallpaperProgressHUD *)v4 trailingAnchor];
    v55 = [v57 constraintEqualToAnchor:v56];
    v59[0] = v55;
    v54 = [(_UIBackdropView *)v4->_backdropView leadingAnchor];
    v53 = [(SBSUIWallpaperProgressHUD *)v4 leadingAnchor];
    v52 = [v54 constraintEqualToAnchor:v53];
    v59[1] = v52;
    v51 = [(_UIBackdropView *)v4->_backdropView topAnchor];
    v50 = [(SBSUIWallpaperProgressHUD *)v4 topAnchor];
    v49 = [v51 constraintEqualToAnchor:v50];
    v59[2] = v49;
    v48 = [(_UIBackdropView *)v4->_backdropView bottomAnchor];
    v47 = [(SBSUIWallpaperProgressHUD *)v4 bottomAnchor];
    v46 = [v48 constraintEqualToAnchor:v47];
    v59[3] = v46;
    v45 = [(UIActivityIndicatorView *)v4->_activityIndicatorView leadingAnchor];
    v43 = [(SBSUIWallpaperProgressHUD *)v4 leadingAnchor];
    v42 = [v45 constraintEqualToAnchor:v43 constant:15.0];
    v59[4] = v42;
    v41 = [(UIActivityIndicatorView *)v4->_activityIndicatorView centerYAnchor];
    v40 = [(SBSUIWallpaperProgressHUD *)v4 centerYAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v59[5] = v39;
    v38 = [(UILabel *)v4->_label leadingAnchor];
    v37 = [(UIActivityIndicatorView *)v4->_activityIndicatorView trailingAnchor];
    v36 = [v38 constraintEqualToAnchor:v37 constant:5.0];
    v59[6] = v36;
    v35 = [(UILabel *)v4->_label trailingAnchor];
    v34 = [(SBSUIWallpaperProgressHUD *)v4 trailingAnchor];
    v33 = [v35 constraintEqualToAnchor:v34 constant:-15.0];
    v59[7] = v33;
    v32 = [(UILabel *)v4->_label centerYAnchor];
    v21 = [(SBSUIWallpaperProgressHUD *)v4 centerYAnchor];
    v22 = [v32 constraintEqualToAnchor:v21];
    v59[8] = v22;
    v23 = [(UILabel *)v4->_label topAnchor];
    v24 = [(SBSUIWallpaperProgressHUD *)v4 topAnchor];
    v25 = [v23 constraintEqualToAnchor:v24 constant:15.0];
    v59[9] = v25;
    v26 = [(UILabel *)v4->_label bottomAnchor];
    v27 = [(SBSUIWallpaperProgressHUD *)v4 bottomAnchor];
    v28 = [v26 constraintEqualToAnchor:v27 constant:-15.0];
    v59[10] = v28;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:11];
    [v44 activateConstraints:v29];

    [(SBSUIWallpaperProgressHUD *)v4 setOpaque:0];
    v30 = [(SBSUIWallpaperProgressHUD *)v4 layer];
    [v30 setAllowsGroupOpacity:0];
  }

  return v4;
}

- (void)showMessage:(id)a3 inView:(id)a4
{
  v22[4] = *MEMORY[0x1E69E9840];
  label = self->_label;
  v7 = a4;
  [(UILabel *)label setText:a3];
  [v7 addSubview:self];
  [(UIActivityIndicatorView *)self->_activityIndicatorView startAnimating];
  v18 = MEMORY[0x1E696ACD8];
  v21 = [v7 centerXAnchor];
  v20 = [(SBSUIWallpaperProgressHUD *)self centerXAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v22[0] = v19;
  v8 = [v7 centerYAnchor];
  v9 = [(SBSUIWallpaperProgressHUD *)self centerYAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v22[1] = v10;
  v11 = [(SBSUIWallpaperProgressHUD *)self leadingAnchor];
  v12 = [v7 leadingAnchor];
  v13 = [v11 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v12 multiplier:1.0];
  v22[2] = v13;
  v14 = [v7 trailingAnchor];

  v15 = [(SBSUIWallpaperProgressHUD *)self trailingAnchor];
  v16 = [v14 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v15 multiplier:1.0];
  v22[3] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
  [v18 activateConstraints:v17];
}

- (void)hide
{
  [(UIActivityIndicatorView *)self->_activityIndicatorView stopAnimating];

  [(SBSUIWallpaperProgressHUD *)self removeFromSuperview];
}

@end