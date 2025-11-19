@interface PKMerchantTokenLoadingCell
- (PKMerchantTokenLoadingCell)initWithFrame:(CGRect)a3;
- (void)_computeLoadingCellHeights;
- (void)_setUpConstraints;
- (void)_setUpViews;
- (void)prepareForReuse;
@end

@implementation PKMerchantTokenLoadingCell

- (PKMerchantTokenLoadingCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PKMerchantTokenLoadingCell;
  v3 = [(PKMerchantTokenLoadingCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKMerchantTokenLoadingCell *)v3 _computeLoadingCellHeights];
    [(PKMerchantTokenLoadingCell *)v4 _setUpViews];
    [(PKMerchantTokenLoadingCell *)v4 _setUpConstraints];
  }

  return v4;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PKMerchantTokenLoadingCell;
  [(PKMerchantTokenLoadingCell *)&v3 prepareForReuse];
  [(UIActivityIndicatorView *)self->_activityIndicator startAnimating];
}

- (void)_setUpViews
{
  v3 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  activityIndicator = self->_activityIndicator;
  self->_activityIndicator = v3;

  [(UIActivityIndicatorView *)self->_activityIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIActivityIndicatorView *)self->_activityIndicator startAnimating];
  v5 = [(PKMerchantTokenLoadingCell *)self contentView];
  [v5 addSubview:self->_activityIndicator];
}

- (void)_setUpConstraints
{
  v18[3] = *MEMORY[0x1E69E9840];
  v3 = [(PKMerchantTokenLoadingCell *)self contentView];
  v4 = [v3 heightAnchor];
  v5 = [v4 constraintEqualToConstant:self->_loadingCellHeightWithIcon];
  heightConstraint = self->_heightConstraint;
  self->_heightConstraint = v5;

  v17 = MEMORY[0x1E696ACD8];
  v7 = [(UIActivityIndicatorView *)self->_activityIndicator centerXAnchor];
  v8 = [(PKMerchantTokenLoadingCell *)self contentView];
  v9 = [v8 centerXAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v18[0] = v10;
  v11 = [(UIActivityIndicatorView *)self->_activityIndicator centerYAnchor];
  v12 = [(PKMerchantTokenLoadingCell *)self contentView];
  v13 = [v12 centerYAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v15 = self->_heightConstraint;
  v18[1] = v14;
  v18[2] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
  [v17 activateConstraints:v16];
}

- (void)_computeLoadingCellHeights
{
  v3 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"loading"];
  [v3 frame];
  self->_loadingCellHeight = CGRectGetHeight(v5);
  self->_loadingCellHeightWithIcon = 76.0;
}

@end