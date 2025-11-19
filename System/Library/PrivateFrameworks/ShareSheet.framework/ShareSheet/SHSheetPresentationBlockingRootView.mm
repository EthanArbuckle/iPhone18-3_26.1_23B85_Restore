@interface SHSheetPresentationBlockingRootView
- (SHSheetPresentationBlockingRootView)initWithFrame:(CGRect)a3;
- (void)didMoveToSuperview;
- (void)updateConstraints;
@end

@implementation SHSheetPresentationBlockingRootView

- (SHSheetPresentationBlockingRootView)initWithFrame:(CGRect)a3
{
  v23.receiver = self;
  v23.super_class = SHSheetPresentationBlockingRootView;
  v3 = [(SHSheetPresentationBlockingRootView *)&v23 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

    v13 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v3->_titleLabel setTextColor:v13];

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

    v21 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v3->_descriptionLabel setTextColor:v21];
  }

  return v3;
}

- (void)didMoveToSuperview
{
  v9.receiver = self;
  v9.super_class = SHSheetPresentationBlockingRootView;
  [(SHSheetPresentationBlockingRootView *)&v9 didMoveToSuperview];
  v3 = [(SHSheetPresentationBlockingRootView *)self containerView];
  v4 = [v3 superview];

  if (!v4)
  {
    v5 = [(SHSheetPresentationBlockingRootView *)self containerView];
    [(SHSheetPresentationBlockingRootView *)self addSubview:v5];

    v6 = [(SHSheetPresentationBlockingRootView *)self containerView];
    v7 = [(SHSheetPresentationBlockingRootView *)self titleLabel];
    [v6 addSubview:v7];

    v8 = [(SHSheetPresentationBlockingRootView *)self descriptionLabel];
    [v6 addSubview:v8];
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
    v4 = [(SHSheetPresentationBlockingRootView *)self titleLabel];
    v5 = [v4 text];
    v72 = *MEMORY[0x1E69DB648];
    v6 = [(SHSheetPresentationBlockingRootView *)self titleLabel];
    v7 = [v6 font];
    v73[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:&v72 count:1];
    [v5 boundingRectWithSize:3 options:v8 attributes:0 context:{Width, 1.79769313e308}];
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
    v69 = [(SHSheetPresentationBlockingRootView *)self containerView];
    v68 = [v69 widthAnchor];
    v67 = [(SHSheetPresentationBlockingRootView *)self widthAnchor];
    v66 = [v68 constraintLessThanOrEqualToAnchor:v67 multiplier:0.8 constant:0.0];
    v71[0] = v66;
    v65 = [(SHSheetPresentationBlockingRootView *)self containerView];
    v64 = [v65 centerXAnchor];
    v63 = [(SHSheetPresentationBlockingRootView *)self centerXAnchor];
    v62 = [v64 constraintEqualToAnchor:v63];
    v71[1] = v62;
    v61 = [(SHSheetPresentationBlockingRootView *)self containerView];
    v60 = [v61 centerYAnchor];
    v59 = [(SHSheetPresentationBlockingRootView *)self centerYAnchor];
    v58 = [v60 constraintEqualToAnchor:v59];
    v71[2] = v58;
    v57 = [(SHSheetPresentationBlockingRootView *)self titleLabel];
    v56 = [v57 widthAnchor];
    v55 = [v56 constraintEqualToConstant:v17];
    v71[3] = v55;
    v54 = [(SHSheetPresentationBlockingRootView *)self titleLabel];
    v52 = [v54 topAnchor];
    v53 = [(SHSheetPresentationBlockingRootView *)self containerView];
    v51 = [v53 topAnchor];
    v50 = [v52 constraintEqualToAnchor:v51];
    v71[4] = v50;
    v49 = [(SHSheetPresentationBlockingRootView *)self titleLabel];
    v46 = [v49 leadingAnchor];
    v47 = [(SHSheetPresentationBlockingRootView *)self containerView];
    v45 = [v47 leadingAnchor];
    v44 = [v46 constraintEqualToAnchor:v45];
    v71[5] = v44;
    v43 = [(SHSheetPresentationBlockingRootView *)self titleLabel];
    v41 = [v43 trailingAnchor];
    v42 = [(SHSheetPresentationBlockingRootView *)self containerView];
    v40 = [v42 trailingAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v71[6] = v39;
    v38 = [(SHSheetPresentationBlockingRootView *)self descriptionLabel];
    v36 = [v38 topAnchor];
    v37 = [(SHSheetPresentationBlockingRootView *)self titleLabel];
    v35 = [v37 bottomAnchor];
    v34 = [v36 constraintEqualToAnchor:v35 constant:8.0];
    v71[7] = v34;
    v33 = [(SHSheetPresentationBlockingRootView *)self descriptionLabel];
    v31 = [v33 leadingAnchor];
    v32 = [(SHSheetPresentationBlockingRootView *)self titleLabel];
    v30 = [v32 leadingAnchor];
    v29 = [v31 constraintEqualToAnchor:v30];
    v71[8] = v29;
    v28 = [(SHSheetPresentationBlockingRootView *)self descriptionLabel];
    v27 = [v28 trailingAnchor];
    v18 = [(SHSheetPresentationBlockingRootView *)self titleLabel];
    v19 = [v18 trailingAnchor];
    v20 = [v27 constraintEqualToAnchor:v19];
    v71[9] = v20;
    v21 = [(SHSheetPresentationBlockingRootView *)self descriptionLabel];
    v22 = [v21 bottomAnchor];
    v23 = [(SHSheetPresentationBlockingRootView *)self containerView];
    v24 = [v23 bottomAnchor];
    v25 = [v22 constraintEqualToAnchor:v24];
    v71[10] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:11];
    [v48 activateConstraints:v26];

    [(SHSheetPresentationBlockingRootView *)self setHasAppliedConstraints:1];
  }
}

@end