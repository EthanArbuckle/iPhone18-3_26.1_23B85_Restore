@interface PKAddPassesAboutWalletViewController
- (id)amendLabel:(id)label;
- (void)_setUpConstraints;
- (void)_setUpDoneButton;
- (void)_setUpDoneButtonConstraints;
- (void)_setUpFirstBodyLabel;
- (void)_setUpImageView;
- (void)_setUpImageViewConstraints;
- (void)_setUpScrollView;
- (void)_setUpScrollViewConstraints;
- (void)_setUpSecondBodyLabel;
- (void)_setUpStackView;
- (void)_setUpStackViewConstraints;
- (void)_setUpSubtitleLabel;
- (void)_setUpTitleLabel;
- (void)_setUpView;
- (void)_setUpViews;
- (void)viewDidLoad;
@end

@implementation PKAddPassesAboutWalletViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PKAddPassesAboutWalletViewController;
  [(PKAddPassesAboutWalletViewController *)&v3 viewDidLoad];
  [(PKAddPassesAboutWalletViewController *)self _setUpViews];
  [(PKAddPassesAboutWalletViewController *)self _setUpConstraints];
}

- (void)_setUpViews
{
  [(PKAddPassesAboutWalletViewController *)self _setUpView];
  [(PKAddPassesAboutWalletViewController *)self _setUpScrollView];
  [(PKAddPassesAboutWalletViewController *)self _setUpStackView];
  [(PKAddPassesAboutWalletViewController *)self _setUpImageView];
  [(PKAddPassesAboutWalletViewController *)self _setUpTitleLabel];
  [(PKAddPassesAboutWalletViewController *)self _setUpSubtitleLabel];
  [(PKAddPassesAboutWalletViewController *)self _setUpFirstBodyLabel];
  [(PKAddPassesAboutWalletViewController *)self _setUpSecondBodyLabel];

  [(PKAddPassesAboutWalletViewController *)self _setUpDoneButton];
}

- (void)_setUpView
{
  view = [(PKAddPassesAboutWalletViewController *)self view];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];

  view2 = [(PKAddPassesAboutWalletViewController *)self view];
  [view2 setFrame:{0.0, 0.0, 540.0, 700.0}];
}

- (void)_setUpStackView
{
  v3 = objc_alloc(MEMORY[0x1E69DCF90]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  stackView = self->_stackView;
  self->_stackView = v4;

  [(UIStackView *)self->_stackView setAxis:1];
  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView setAlignment:3];
  [(UIStackView *)self->_stackView setSpacing:0.0];
  scrollView = self->_scrollView;
  v7 = self->_stackView;

  [(UIScrollView *)scrollView addSubview:v7];
}

- (void)_setUpScrollView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
  scrollView = self->_scrollView;
  self->_scrollView = v3;

  [(UIScrollView *)self->_scrollView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIScrollView *)self->_scrollView setClipsToBounds:1];
  view = [(PKAddPassesAboutWalletViewController *)self view];
  [view addSubview:self->_scrollView];
}

- (void)_setUpImageView
{
  v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v4 = PKUIImageNamed(@"AboutPassbookHeader");
  v5 = [v3 initWithImage:v4];
  imageView = self->_imageView;
  self->_imageView = v5;

  [(UIImageView *)self->_imageView setContentMode:1];
  [(UIImageView *)self->_imageView sizeToFit];
  [(UIStackView *)self->_stackView addArrangedSubview:self->_imageView];
  stackView = self->_stackView;
  v8 = self->_imageView;

  [(UIStackView *)stackView setCustomSpacing:v8 afterView:20.0];
}

- (void)_setUpTitleLabel
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;

  v9 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD58], *MEMORY[0x1E69DDC70], 2, 0);
  [(UILabel *)self->_titleLabel setFont:v9];
  v5 = self->_titleLabel;
  v6 = PKLocalizedPaymentString(&cfstr_AboutWalletTit.isa);
  [(UILabel *)v5 setText:v6];

  v7 = [(PKAddPassesAboutWalletViewController *)self amendLabel:self->_titleLabel];
  v8 = self->_titleLabel;
  self->_titleLabel = v7;

  [(UIStackView *)self->_stackView addArrangedSubview:self->_titleLabel];
  [(UIStackView *)self->_stackView setCustomSpacing:self->_titleLabel afterView:15.0];
}

- (void)_setUpSubtitleLabel
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v3;

  v9 = PKFontForDefaultDesign(*MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC70], 2, 0);
  [(UILabel *)self->_subtitleLabel setFont:v9];
  v5 = self->_subtitleLabel;
  v6 = PKLocalizedPaymentString(&cfstr_AboutWalletSub.isa);
  [(UILabel *)v5 setText:v6];

  v7 = [(PKAddPassesAboutWalletViewController *)self amendLabel:self->_subtitleLabel];
  v8 = self->_subtitleLabel;
  self->_subtitleLabel = v7;

  [(UIStackView *)self->_stackView addArrangedSubview:self->_subtitleLabel];
  [(UIStackView *)self->_stackView setCustomSpacing:self->_subtitleLabel afterView:15.0];
}

- (void)_setUpFirstBodyLabel
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  firstBodyLabel = self->_firstBodyLabel;
  self->_firstBodyLabel = v3;

  v5 = self->_firstBodyLabel;
  v6 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC70], 0x8000, 0);
  [(UILabel *)v5 setFont:v6];

  v7 = self->_firstBodyLabel;
  v8 = PKLocalizedPaymentString(&cfstr_AboutWallet1Bo.isa);
  [(UILabel *)v7 setText:v8];

  v9 = [(PKAddPassesAboutWalletViewController *)self amendLabel:self->_firstBodyLabel];
  v10 = self->_firstBodyLabel;
  self->_firstBodyLabel = v9;

  [(UILabel *)self->_firstBodyLabel setLineBreakMode:0];
  [(UIStackView *)self->_stackView addArrangedSubview:self->_firstBodyLabel];
  stackView = self->_stackView;
  v12 = self->_firstBodyLabel;

  [(UIStackView *)stackView setCustomSpacing:v12 afterView:15.0];
}

- (void)_setUpSecondBodyLabel
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  secondBodyLabel = self->_secondBodyLabel;
  self->_secondBodyLabel = v3;

  v5 = self->_secondBodyLabel;
  v6 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC70], 0x8000, 0);
  [(UILabel *)v5 setFont:v6];

  v7 = self->_secondBodyLabel;
  v8 = PKLocalizedPaymentString(&cfstr_AboutWallet2Bo.isa);
  [(UILabel *)v7 setText:v8];

  v9 = [(PKAddPassesAboutWalletViewController *)self amendLabel:self->_secondBodyLabel];
  v10 = self->_secondBodyLabel;
  self->_secondBodyLabel = v9;

  [(UILabel *)self->_secondBodyLabel setLineBreakMode:0];
  [(UIStackView *)self->_stackView addArrangedSubview:self->_secondBodyLabel];
  stackView = self->_stackView;
  v12 = self->_secondBodyLabel;

  [(UIStackView *)stackView setCustomSpacing:v12 afterView:24.0];
}

- (void)_setUpDoneButton
{
  v3 = objc_alloc_init(MEMORY[0x1E69DC738]);
  doneButton = self->_doneButton;
  self->_doneButton = v3;

  v5 = self->_doneButton;
  v6 = PKLocalizedString(&cfstr_Done.isa);
  [(UIButton *)v5 setTitle:v6 forState:0];

  titleLabel = [(UIButton *)self->_doneButton titleLabel];
  v8 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD40], *MEMORY[0x1E69DDC38]);
  [titleLabel setFont:v8];

  titleLabel2 = [(UIButton *)self->_doneButton titleLabel];
  [titleLabel2 setAdjustsFontSizeToFitWidth:1];

  [(UIButton *)self->_doneButton _setCornerRadius:14.0];
  v10 = self->_doneButton;
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [(UIButton *)v10 setBackgroundColor:systemBlueColor];

  [(UIButton *)self->_doneButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_doneButton addTarget:self action:sel_dismissViewController forControlEvents:64];
  view = [(PKAddPassesAboutWalletViewController *)self view];
  [view addSubview:self->_doneButton];
}

- (void)_setUpConstraints
{
  [(PKAddPassesAboutWalletViewController *)self _setUpScrollViewConstraints];
  [(PKAddPassesAboutWalletViewController *)self _setUpStackViewConstraints];
  [(PKAddPassesAboutWalletViewController *)self _setUpImageViewConstraints];
  [(PKAddPassesAboutWalletViewController *)self _setUpDoneButtonConstraints];
  scrollView = self->_scrollView;
  [(UIButton *)self->_doneButton frame];
  [(UIScrollView *)scrollView setContentInset:0.0, 0.0, v4, 0.0];
  v5 = self->_scrollView;
  [(UIButton *)self->_doneButton frame];

  [(UIScrollView *)v5 setScrollIndicatorInsets:0.0, 0.0, v6, -4.0];
}

- (void)_setUpStackViewConstraints
{
  v20[5] = *MEMORY[0x1E69E9840];
  v13 = MEMORY[0x1E696ACD8];
  topAnchor = [(UIStackView *)self->_stackView topAnchor];
  topAnchor2 = [(UIScrollView *)self->_scrollView topAnchor];
  v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v20[0] = v17;
  leadingAnchor = [(UIStackView *)self->_stackView leadingAnchor];
  leadingAnchor2 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v20[1] = v14;
  trailingAnchor = [(UIStackView *)self->_stackView trailingAnchor];
  trailingAnchor2 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v5 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v20[2] = v5;
  bottomAnchor = [(UIStackView *)self->_stackView bottomAnchor];
  bottomAnchor2 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v8 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v20[3] = v8;
  widthAnchor = [(UIStackView *)self->_stackView widthAnchor];
  widthAnchor2 = [(UIScrollView *)self->_scrollView widthAnchor];
  v11 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v20[4] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:5];
  [v13 activateConstraints:v12];
}

- (void)_setUpScrollViewConstraints
{
  v18[4] = *MEMORY[0x1E69E9840];
  view = [(PKAddPassesAboutWalletViewController *)self view];
  v13 = MEMORY[0x1E696ACD8];
  topAnchor = [(UIScrollView *)self->_scrollView topAnchor];
  topAnchor2 = [view topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v18[0] = v15;
  bottomAnchor = [(UIScrollView *)self->_scrollView bottomAnchor];
  topAnchor3 = [(UIButton *)self->_doneButton topAnchor];
  v5 = [bottomAnchor constraintEqualToAnchor:topAnchor3];
  v18[1] = v5;
  leadingAnchor = [(UIScrollView *)self->_scrollView leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:44.0];
  v18[2] = v8;
  trailingAnchor = [(UIScrollView *)self->_scrollView trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-44.0];
  v18[3] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:4];
  [v13 activateConstraints:v12];
}

- (void)_setUpImageViewConstraints
{
  v14[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ACD8];
  topAnchor = [(UIImageView *)self->_imageView topAnchor];
  topAnchor2 = [(UIScrollView *)self->_scrollView topAnchor];
  view = [(PKAddPassesAboutWalletViewController *)self view];
  [view frame];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v7 * 0.09];
  widthAnchor = [(UIImageView *)self->_imageView widthAnchor];
  v10 = [widthAnchor constraintEqualToConstant:300.0];
  v14[1] = v10;
  heightAnchor = [(UIImageView *)self->_imageView heightAnchor];
  v12 = [heightAnchor constraintEqualToConstant:95.0];
  v14[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
  [v3 activateConstraints:v13];
}

- (void)_setUpDoneButtonConstraints
{
  v17[4] = *MEMORY[0x1E69E9840];
  v13 = MEMORY[0x1E696ACD8];
  widthAnchor = [(UIButton *)self->_doneButton widthAnchor];
  v15 = [widthAnchor constraintEqualToConstant:274.0];
  v17[0] = v15;
  heightAnchor = [(UIButton *)self->_doneButton heightAnchor];
  v3 = [heightAnchor constraintEqualToConstant:40.0];
  v17[1] = v3;
  centerXAnchor = [(UIButton *)self->_doneButton centerXAnchor];
  view = [(PKAddPassesAboutWalletViewController *)self view];
  centerXAnchor2 = [view centerXAnchor];
  v7 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v17[2] = v7;
  bottomAnchor = [(UIButton *)self->_doneButton bottomAnchor];
  view2 = [(PKAddPassesAboutWalletViewController *)self view];
  bottomAnchor2 = [view2 bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-34.0];
  v17[3] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];
  [v13 activateConstraints:v12];
}

- (id)amendLabel:(id)label
{
  labelCopy = label;
  [labelCopy setTextAlignment:1];
  [labelCopy setNumberOfLines:0];
  [labelCopy setTranslatesAutoresizingMaskIntoConstraints:0];

  return labelCopy;
}

@end