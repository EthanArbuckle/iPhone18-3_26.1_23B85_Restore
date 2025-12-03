@interface PKMerchantTokenLoadingView
- (PKMerchantTokenLoadingView)initWithFrame:(CGRect)frame;
- (void)_setUpActivityIndicator;
- (void)_setUpConstraints;
- (void)_setUpLabel;
- (void)_setUpSelf;
- (void)_setUpStackView;
- (void)_setUpViews;
@end

@implementation PKMerchantTokenLoadingView

- (PKMerchantTokenLoadingView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PKMerchantTokenLoadingView;
  v3 = [(PKMerchantTokenLoadingView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKMerchantTokenLoadingView *)v3 _setUpViews];
    [(PKMerchantTokenLoadingView *)v4 _setUpConstraints];
  }

  return v4;
}

- (void)_setUpViews
{
  [(PKMerchantTokenLoadingView *)self _setUpSelf];
  [(PKMerchantTokenLoadingView *)self _setUpStackView];
  [(PKMerchantTokenLoadingView *)self _setUpActivityIndicator];

  [(PKMerchantTokenLoadingView *)self _setUpLabel];
}

- (void)_setUpSelf
{
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(PKMerchantTokenLoadingView *)self setBackgroundColor:systemBackgroundColor];
}

- (void)_setUpStackView
{
  v3 = objc_alloc(MEMORY[0x1E69DCF90]);
  v4 = [v3 initWithArrangedSubviews:MEMORY[0x1E695E0F0]];
  stackView = self->_stackView;
  self->_stackView = v4;

  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView setAxis:1];
  [(UIStackView *)self->_stackView setAlignment:3];
  [(UIStackView *)self->_stackView setSpacing:16.0];
  v6 = self->_stackView;

  [(PKMerchantTokenLoadingView *)self addSubview:v6];
}

- (void)_setUpActivityIndicator
{
  v3 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  activityIndicator = self->_activityIndicator;
  self->_activityIndicator = v3;

  [(UIActivityIndicatorView *)self->_activityIndicator startAnimating];
  stackView = self->_stackView;
  v6 = self->_activityIndicator;

  [(UIStackView *)stackView addArrangedSubview:v6];
}

- (void)_setUpLabel
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  label = self->_label;
  self->_label = v4;

  [(UILabel *)self->_label setTextAlignment:1];
  [(UILabel *)self->_label setNumberOfLines:2];
  stackView = self->_stackView;
  v7 = self->_label;

  [(UIStackView *)stackView addArrangedSubview:v7];
}

- (void)_setUpConstraints
{
  v19[4] = *MEMORY[0x1E69E9840];
  v13 = MEMORY[0x1E696ACD8];
  centerXAnchor = [(UIStackView *)self->_stackView centerXAnchor];
  centerXAnchor2 = [(PKMerchantTokenLoadingView *)self centerXAnchor];
  v16 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v19[0] = v16;
  centerYAnchor = [(UIStackView *)self->_stackView centerYAnchor];
  centerYAnchor2 = [(PKMerchantTokenLoadingView *)self centerYAnchor];
  v3 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v19[1] = v3;
  leadingAnchor = [(UIStackView *)self->_stackView leadingAnchor];
  layoutMarginsGuide = [(PKMerchantTokenLoadingView *)self layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v7 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
  v19[2] = v7;
  trailingAnchor = [(UIStackView *)self->_stackView trailingAnchor];
  layoutMarginsGuide2 = [(PKMerchantTokenLoadingView *)self layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v11 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  v19[3] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
  [v13 activateConstraints:v12];
}

@end