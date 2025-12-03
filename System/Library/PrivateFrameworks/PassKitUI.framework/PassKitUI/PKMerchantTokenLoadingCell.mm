@interface PKMerchantTokenLoadingCell
- (PKMerchantTokenLoadingCell)initWithFrame:(CGRect)frame;
- (void)_computeLoadingCellHeights;
- (void)_setUpConstraints;
- (void)_setUpViews;
- (void)prepareForReuse;
@end

@implementation PKMerchantTokenLoadingCell

- (PKMerchantTokenLoadingCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PKMerchantTokenLoadingCell;
  v3 = [(PKMerchantTokenLoadingCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  contentView = [(PKMerchantTokenLoadingCell *)self contentView];
  [contentView addSubview:self->_activityIndicator];
}

- (void)_setUpConstraints
{
  v18[3] = *MEMORY[0x1E69E9840];
  contentView = [(PKMerchantTokenLoadingCell *)self contentView];
  heightAnchor = [contentView heightAnchor];
  v5 = [heightAnchor constraintEqualToConstant:self->_loadingCellHeightWithIcon];
  heightConstraint = self->_heightConstraint;
  self->_heightConstraint = v5;

  v17 = MEMORY[0x1E696ACD8];
  centerXAnchor = [(UIActivityIndicatorView *)self->_activityIndicator centerXAnchor];
  contentView2 = [(PKMerchantTokenLoadingCell *)self contentView];
  centerXAnchor2 = [contentView2 centerXAnchor];
  v10 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v18[0] = v10;
  centerYAnchor = [(UIActivityIndicatorView *)self->_activityIndicator centerYAnchor];
  contentView3 = [(PKMerchantTokenLoadingCell *)self contentView];
  centerYAnchor2 = [contentView3 centerYAnchor];
  v14 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
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