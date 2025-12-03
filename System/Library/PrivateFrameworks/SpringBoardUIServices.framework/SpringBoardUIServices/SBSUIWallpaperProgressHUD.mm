@interface SBSUIWallpaperProgressHUD
- (SBSUIWallpaperProgressHUD)initWithFrame:(CGRect)frame;
- (void)hide;
- (void)showMessage:(id)message inView:(id)view;
@end

@implementation SBSUIWallpaperProgressHUD

- (SBSUIWallpaperProgressHUD)initWithFrame:(CGRect)frame
{
  v59[11] = *MEMORY[0x1E69E9840];
  v58.receiver = self;
  v58.super_class = SBSUIWallpaperProgressHUD;
  v3 = [(SBSUIWallpaperProgressHUD *)&v58 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v4 = v3;
  if (v3)
  {
    [(SBSUIWallpaperProgressHUD *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    traitCollection = [(SBSUIWallpaperProgressHUD *)v4 traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    v7 = objc_alloc(MEMORY[0x1E69DD370]);
    if (userInterfaceStyle == 2)
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
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v13 setBackgroundColor:clearColor];

    v15 = v4->_label;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v15 setTextColor:secondaryLabelColor];

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
    trailingAnchor = [(_UIBackdropView *)v4->_backdropView trailingAnchor];
    trailingAnchor2 = [(SBSUIWallpaperProgressHUD *)v4 trailingAnchor];
    v55 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v59[0] = v55;
    leadingAnchor = [(_UIBackdropView *)v4->_backdropView leadingAnchor];
    leadingAnchor2 = [(SBSUIWallpaperProgressHUD *)v4 leadingAnchor];
    v52 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v59[1] = v52;
    topAnchor = [(_UIBackdropView *)v4->_backdropView topAnchor];
    topAnchor2 = [(SBSUIWallpaperProgressHUD *)v4 topAnchor];
    v49 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v59[2] = v49;
    bottomAnchor = [(_UIBackdropView *)v4->_backdropView bottomAnchor];
    bottomAnchor2 = [(SBSUIWallpaperProgressHUD *)v4 bottomAnchor];
    v46 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v59[3] = v46;
    leadingAnchor3 = [(UIActivityIndicatorView *)v4->_activityIndicatorView leadingAnchor];
    leadingAnchor4 = [(SBSUIWallpaperProgressHUD *)v4 leadingAnchor];
    v42 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:15.0];
    v59[4] = v42;
    centerYAnchor = [(UIActivityIndicatorView *)v4->_activityIndicatorView centerYAnchor];
    centerYAnchor2 = [(SBSUIWallpaperProgressHUD *)v4 centerYAnchor];
    v39 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v59[5] = v39;
    leadingAnchor5 = [(UILabel *)v4->_label leadingAnchor];
    trailingAnchor3 = [(UIActivityIndicatorView *)v4->_activityIndicatorView trailingAnchor];
    v36 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3 constant:5.0];
    v59[6] = v36;
    trailingAnchor4 = [(UILabel *)v4->_label trailingAnchor];
    trailingAnchor5 = [(SBSUIWallpaperProgressHUD *)v4 trailingAnchor];
    v33 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-15.0];
    v59[7] = v33;
    centerYAnchor3 = [(UILabel *)v4->_label centerYAnchor];
    centerYAnchor4 = [(SBSUIWallpaperProgressHUD *)v4 centerYAnchor];
    v22 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v59[8] = v22;
    topAnchor3 = [(UILabel *)v4->_label topAnchor];
    topAnchor4 = [(SBSUIWallpaperProgressHUD *)v4 topAnchor];
    v25 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:15.0];
    v59[9] = v25;
    bottomAnchor3 = [(UILabel *)v4->_label bottomAnchor];
    bottomAnchor4 = [(SBSUIWallpaperProgressHUD *)v4 bottomAnchor];
    v28 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-15.0];
    v59[10] = v28;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:11];
    [v44 activateConstraints:v29];

    [(SBSUIWallpaperProgressHUD *)v4 setOpaque:0];
    layer = [(SBSUIWallpaperProgressHUD *)v4 layer];
    [layer setAllowsGroupOpacity:0];
  }

  return v4;
}

- (void)showMessage:(id)message inView:(id)view
{
  v22[4] = *MEMORY[0x1E69E9840];
  label = self->_label;
  viewCopy = view;
  [(UILabel *)label setText:message];
  [viewCopy addSubview:self];
  [(UIActivityIndicatorView *)self->_activityIndicatorView startAnimating];
  v18 = MEMORY[0x1E696ACD8];
  centerXAnchor = [viewCopy centerXAnchor];
  centerXAnchor2 = [(SBSUIWallpaperProgressHUD *)self centerXAnchor];
  v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v22[0] = v19;
  centerYAnchor = [viewCopy centerYAnchor];
  centerYAnchor2 = [(SBSUIWallpaperProgressHUD *)self centerYAnchor];
  v10 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v22[1] = v10;
  leadingAnchor = [(SBSUIWallpaperProgressHUD *)self leadingAnchor];
  leadingAnchor2 = [viewCopy leadingAnchor];
  v13 = [leadingAnchor constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:leadingAnchor2 multiplier:1.0];
  v22[2] = v13;
  trailingAnchor = [viewCopy trailingAnchor];

  trailingAnchor2 = [(SBSUIWallpaperProgressHUD *)self trailingAnchor];
  v16 = [trailingAnchor constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor2 multiplier:1.0];
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