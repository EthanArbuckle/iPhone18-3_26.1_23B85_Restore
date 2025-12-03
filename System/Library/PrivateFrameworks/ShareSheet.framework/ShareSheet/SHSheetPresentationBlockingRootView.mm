@interface SHSheetPresentationBlockingRootView
- (SHSheetPresentationBlockingRootView)initWithFrame:(CGRect)frame;
- (void)didMoveToSuperview;
- (void)updateConstraints;
@end

@implementation SHSheetPresentationBlockingRootView

- (SHSheetPresentationBlockingRootView)initWithFrame:(CGRect)frame
{
  v23.receiver = self;
  v23.super_class = SHSheetPresentationBlockingRootView;
  v3 = [(SHSheetPresentationBlockingRootView *)&v23 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    containerView = v3->_containerView;
    v3->_containerView = v4;

    [(UIView *)v3->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = objc_opt_new();
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v6;

    v8 = _ShareSheetBundle();
    v9 = [v8 localizedStringForKey:@"SHARE_SHEET_SHARING_UNAVAILABLE_TITLE" value:&stru_1EFE999E0 table:@"Localizable"];
    [(UILabel *)v3->_titleLabel setText:v9];

    [(UILabel *)v3->_titleLabel setTextAlignment:1];
    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    v10 = MEMORY[0x1E69DB878];
    v11 = [MEMORY[0x1E69DB880] defaultFontDescriptorWithTextStyle:*MEMORY[0x1E69DDDB8]];
    v12 = [v10 fontWithDescriptor:v11 size:0.0];
    [(UILabel *)v3->_titleLabel setFont:v12];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v3->_titleLabel setTextColor:secondaryLabelColor];

    v14 = objc_opt_new();
    descriptionLabel = v3->_descriptionLabel;
    v3->_descriptionLabel = v14;

    v16 = _ShareSheetBundle();
    v17 = [v16 localizedStringForKey:@"SHARE_SHEET_SHARING_UNAVAILABLE_DESCRIPTION" value:&stru_1EFE999E0 table:@"Localizable"];
    [(UILabel *)v3->_descriptionLabel setText:v17];

    [(UILabel *)v3->_descriptionLabel setTextAlignment:1];
    [(UILabel *)v3->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_descriptionLabel setNumberOfLines:0];
    v18 = MEMORY[0x1E69DB878];
    v19 = [MEMORY[0x1E69DB880] defaultFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8]];
    v20 = [v18 fontWithDescriptor:v19 size:0.0];
    [(UILabel *)v3->_descriptionLabel setFont:v20];

    secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v3->_descriptionLabel setTextColor:secondaryLabelColor2];
  }

  return v3;
}

- (void)didMoveToSuperview
{
  v9.receiver = self;
  v9.super_class = SHSheetPresentationBlockingRootView;
  [(SHSheetPresentationBlockingRootView *)&v9 didMoveToSuperview];
  containerView = [(SHSheetPresentationBlockingRootView *)self containerView];
  superview = [containerView superview];

  if (!superview)
  {
    containerView2 = [(SHSheetPresentationBlockingRootView *)self containerView];
    [(SHSheetPresentationBlockingRootView *)self addSubview:containerView2];

    containerView3 = [(SHSheetPresentationBlockingRootView *)self containerView];
    titleLabel = [(SHSheetPresentationBlockingRootView *)self titleLabel];
    [containerView3 addSubview:titleLabel];

    descriptionLabel = [(SHSheetPresentationBlockingRootView *)self descriptionLabel];
    [containerView3 addSubview:descriptionLabel];
  }
}

- (void)updateConstraints
{
  v73[1] = *MEMORY[0x1E69E9840];
  v70.receiver = self;
  v70.super_class = SHSheetPresentationBlockingRootView;
  [(SHSheetPresentationBlockingRootView *)&v70 updateConstraints];
  if (![(SHSheetPresentationBlockingRootView *)self hasAppliedConstraints])
  {
    [(SHSheetPresentationBlockingRootView *)self frame];
    Width = CGRectGetWidth(v74);
    titleLabel = [(SHSheetPresentationBlockingRootView *)self titleLabel];
    text = [titleLabel text];
    v72 = *MEMORY[0x1E69DB648];
    titleLabel2 = [(SHSheetPresentationBlockingRootView *)self titleLabel];
    font = [titleLabel2 font];
    v73[0] = font;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:&v72 count:1];
    [text boundingRectWithSize:3 options:v8 attributes:0 context:{Width, 1.79769313e308}];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v75.origin.x = v10;
    v75.origin.y = v12;
    v75.size.width = v14;
    v75.size.height = v16;
    v17 = CGRectGetWidth(v75) + 8.0;
    v48 = MEMORY[0x1E696ACD8];
    containerView = [(SHSheetPresentationBlockingRootView *)self containerView];
    widthAnchor = [containerView widthAnchor];
    widthAnchor2 = [(SHSheetPresentationBlockingRootView *)self widthAnchor];
    v66 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2 multiplier:0.8 constant:0.0];
    v71[0] = v66;
    containerView2 = [(SHSheetPresentationBlockingRootView *)self containerView];
    centerXAnchor = [containerView2 centerXAnchor];
    centerXAnchor2 = [(SHSheetPresentationBlockingRootView *)self centerXAnchor];
    v62 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v71[1] = v62;
    containerView3 = [(SHSheetPresentationBlockingRootView *)self containerView];
    centerYAnchor = [containerView3 centerYAnchor];
    centerYAnchor2 = [(SHSheetPresentationBlockingRootView *)self centerYAnchor];
    v58 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v71[2] = v58;
    titleLabel3 = [(SHSheetPresentationBlockingRootView *)self titleLabel];
    widthAnchor3 = [titleLabel3 widthAnchor];
    v55 = [widthAnchor3 constraintEqualToConstant:v17];
    v71[3] = v55;
    titleLabel4 = [(SHSheetPresentationBlockingRootView *)self titleLabel];
    topAnchor = [titleLabel4 topAnchor];
    containerView4 = [(SHSheetPresentationBlockingRootView *)self containerView];
    topAnchor2 = [containerView4 topAnchor];
    v50 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v71[4] = v50;
    titleLabel5 = [(SHSheetPresentationBlockingRootView *)self titleLabel];
    leadingAnchor = [titleLabel5 leadingAnchor];
    containerView5 = [(SHSheetPresentationBlockingRootView *)self containerView];
    leadingAnchor2 = [containerView5 leadingAnchor];
    v44 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v71[5] = v44;
    titleLabel6 = [(SHSheetPresentationBlockingRootView *)self titleLabel];
    trailingAnchor = [titleLabel6 trailingAnchor];
    containerView6 = [(SHSheetPresentationBlockingRootView *)self containerView];
    trailingAnchor2 = [containerView6 trailingAnchor];
    v39 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v71[6] = v39;
    descriptionLabel = [(SHSheetPresentationBlockingRootView *)self descriptionLabel];
    topAnchor3 = [descriptionLabel topAnchor];
    titleLabel7 = [(SHSheetPresentationBlockingRootView *)self titleLabel];
    bottomAnchor = [titleLabel7 bottomAnchor];
    v34 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:8.0];
    v71[7] = v34;
    descriptionLabel2 = [(SHSheetPresentationBlockingRootView *)self descriptionLabel];
    leadingAnchor3 = [descriptionLabel2 leadingAnchor];
    titleLabel8 = [(SHSheetPresentationBlockingRootView *)self titleLabel];
    leadingAnchor4 = [titleLabel8 leadingAnchor];
    v29 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v71[8] = v29;
    descriptionLabel3 = [(SHSheetPresentationBlockingRootView *)self descriptionLabel];
    trailingAnchor3 = [descriptionLabel3 trailingAnchor];
    titleLabel9 = [(SHSheetPresentationBlockingRootView *)self titleLabel];
    trailingAnchor4 = [titleLabel9 trailingAnchor];
    v20 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v71[9] = v20;
    descriptionLabel4 = [(SHSheetPresentationBlockingRootView *)self descriptionLabel];
    bottomAnchor2 = [descriptionLabel4 bottomAnchor];
    containerView7 = [(SHSheetPresentationBlockingRootView *)self containerView];
    bottomAnchor3 = [containerView7 bottomAnchor];
    v25 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v71[10] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:11];
    [v48 activateConstraints:v26];

    [(SHSheetPresentationBlockingRootView *)self setHasAppliedConstraints:1];
  }
}

@end