@interface PKAddPassesAboutWalletViewController
- (id)amendLabel:(id)a3;
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
  v3 = [(PKAddPassesAboutWalletViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = [(PKAddPassesAboutWalletViewController *)self view];
  [v5 setFrame:{0.0, 0.0, 540.0, 700.0}];
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
  v5 = [(PKAddPassesAboutWalletViewController *)self view];
  [v5 addSubview:self->_scrollView];
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

  v7 = [(UIButton *)self->_doneButton titleLabel];
  v8 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD40], *MEMORY[0x1E69DDC38]);
  [v7 setFont:v8];

  v9 = [(UIButton *)self->_doneButton titleLabel];
  [v9 setAdjustsFontSizeToFitWidth:1];

  [(UIButton *)self->_doneButton _setCornerRadius:14.0];
  v10 = self->_doneButton;
  v11 = [MEMORY[0x1E69DC888] systemBlueColor];
  [(UIButton *)v10 setBackgroundColor:v11];

  [(UIButton *)self->_doneButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_doneButton addTarget:self action:sel_dismissViewController forControlEvents:64];
  v12 = [(PKAddPassesAboutWalletViewController *)self view];
  [v12 addSubview:self->_doneButton];
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
  v19 = [(UIStackView *)self->_stackView topAnchor];
  v18 = [(UIScrollView *)self->_scrollView topAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v20[0] = v17;
  v16 = [(UIStackView *)self->_stackView leadingAnchor];
  v15 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v14 = [v16 constraintEqualToAnchor:v15];
  v20[1] = v14;
  v3 = [(UIStackView *)self->_stackView trailingAnchor];
  v4 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];
  v20[2] = v5;
  v6 = [(UIStackView *)self->_stackView bottomAnchor];
  v7 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v20[3] = v8;
  v9 = [(UIStackView *)self->_stackView widthAnchor];
  v10 = [(UIScrollView *)self->_scrollView widthAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v20[4] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:5];
  [v13 activateConstraints:v12];
}

- (void)_setUpScrollViewConstraints
{
  v18[4] = *MEMORY[0x1E69E9840];
  v3 = [(PKAddPassesAboutWalletViewController *)self view];
  v13 = MEMORY[0x1E696ACD8];
  v17 = [(UIScrollView *)self->_scrollView topAnchor];
  v16 = [v3 topAnchor];
  v15 = [v17 constraintEqualToAnchor:v16];
  v18[0] = v15;
  v14 = [(UIScrollView *)self->_scrollView bottomAnchor];
  v4 = [(UIButton *)self->_doneButton topAnchor];
  v5 = [v14 constraintEqualToAnchor:v4];
  v18[1] = v5;
  v6 = [(UIScrollView *)self->_scrollView leadingAnchor];
  v7 = [v3 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:44.0];
  v18[2] = v8;
  v9 = [(UIScrollView *)self->_scrollView trailingAnchor];
  v10 = [v3 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:-44.0];
  v18[3] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:4];
  [v13 activateConstraints:v12];
}

- (void)_setUpImageViewConstraints
{
  v14[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ACD8];
  v4 = [(UIImageView *)self->_imageView topAnchor];
  v5 = [(UIScrollView *)self->_scrollView topAnchor];
  v6 = [(PKAddPassesAboutWalletViewController *)self view];
  [v6 frame];
  v8 = [v4 constraintEqualToAnchor:v5 constant:v7 * 0.09];
  v9 = [(UIImageView *)self->_imageView widthAnchor];
  v10 = [v9 constraintEqualToConstant:300.0];
  v14[1] = v10;
  v11 = [(UIImageView *)self->_imageView heightAnchor];
  v12 = [v11 constraintEqualToConstant:95.0];
  v14[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
  [v3 activateConstraints:v13];
}

- (void)_setUpDoneButtonConstraints
{
  v17[4] = *MEMORY[0x1E69E9840];
  v13 = MEMORY[0x1E696ACD8];
  v16 = [(UIButton *)self->_doneButton widthAnchor];
  v15 = [v16 constraintEqualToConstant:274.0];
  v17[0] = v15;
  v14 = [(UIButton *)self->_doneButton heightAnchor];
  v3 = [v14 constraintEqualToConstant:40.0];
  v17[1] = v3;
  v4 = [(UIButton *)self->_doneButton centerXAnchor];
  v5 = [(PKAddPassesAboutWalletViewController *)self view];
  v6 = [v5 centerXAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  v17[2] = v7;
  v8 = [(UIButton *)self->_doneButton bottomAnchor];
  v9 = [(PKAddPassesAboutWalletViewController *)self view];
  v10 = [v9 bottomAnchor];
  v11 = [v8 constraintEqualToAnchor:v10 constant:-34.0];
  v17[3] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];
  [v13 activateConstraints:v12];
}

- (id)amendLabel:(id)a3
{
  v3 = a3;
  [v3 setTextAlignment:1];
  [v3 setNumberOfLines:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v3;
}

@end