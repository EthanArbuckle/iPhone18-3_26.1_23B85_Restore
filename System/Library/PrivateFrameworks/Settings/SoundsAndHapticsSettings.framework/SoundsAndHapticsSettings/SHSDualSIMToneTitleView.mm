@interface SHSDualSIMToneTitleView
- (SHSDualSIMToneTitleView)init;
- (void)loadConstraintsForTitleView;
- (void)updateContentsWithTitle:(id)title badgeText:(id)text;
@end

@implementation SHSDualSIMToneTitleView

- (SHSDualSIMToneTitleView)init
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = SHSDualSIMToneTitleView;
  v2 = [(SHSDualSIMToneTitleView *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v2->_titleLabel;
    v2->_titleLabel = v3;

    [(UILabel *)v2->_titleLabel setUserInteractionEnabled:0];
    v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    fontDescriptor = [v5 fontDescriptor];
    v7 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];

    v8 = [MEMORY[0x277D74300] fontWithDescriptor:v7 size:0.0];
    [(UILabel *)v2->_titleLabel setFont:v8];

    [(UILabel *)v2->_titleLabel setAdjustsFontForContentSizeCategory:1];
    v9 = objc_alloc_init(SHSBadgeView);
    badgeView = v2->_badgeView;
    v2->_badgeView = v9;

    v11 = objc_alloc(MEMORY[0x277D75A68]);
    badgeView = [(SHSDualSIMToneTitleView *)v2 badgeView];
    v19[0] = badgeView;
    v19[1] = v2->_titleLabel;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    v14 = [v11 initWithArrangedSubviews:v13];
    stackView = v2->_stackView;
    v2->_stackView = v14;

    [(UIStackView *)v2->_stackView setAlignment:3];
    [(UIStackView *)v2->_stackView setAxis:0];
    [(UIStackView *)v2->_stackView setDistribution:3];
    [(UIStackView *)v2->_stackView setLayoutMarginsRelativeArrangement:1];
    [(UIStackView *)v2->_stackView setSpacing:6.0];
    [(UIStackView *)v2->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v2->_stackView setUserInteractionEnabled:0];
    [(SHSDualSIMToneTitleView *)v2 addSubview:v2->_stackView];
    [(SHSDualSIMToneTitleView *)v2 loadConstraintsForTitleView];
  }

  v16 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)loadConstraintsForTitleView
{
  badgeView = [(SHSDualSIMToneTitleView *)self badgeView];
  [badgeView frame];
  v5 = v4;
  badgeView2 = [(SHSDualSIMToneTitleView *)self badgeView];
  [badgeView2 frame];
  v8 = v7;
  badgeView3 = [(SHSDualSIMToneTitleView *)self badgeView];
  [badgeView3 size];
  v11 = v10;
  titleLabel = [(SHSDualSIMToneTitleView *)self titleLabel];
  font = [titleLabel font];
  [font capHeight];
  v15 = v14;
  badgeView4 = [(SHSDualSIMToneTitleView *)self badgeView];
  [badgeView4 setFrame:{v5, v8, v11, v15}];

  stackView = [(SHSDualSIMToneTitleView *)self stackView];
  topAnchor = [stackView topAnchor];
  topAnchor2 = [(SHSDualSIMToneTitleView *)self topAnchor];
  v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v20 setActive:1];

  stackView2 = [(SHSDualSIMToneTitleView *)self stackView];
  bottomAnchor = [stackView2 bottomAnchor];
  bottomAnchor2 = [(SHSDualSIMToneTitleView *)self bottomAnchor];
  v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v24 setActive:1];

  stackView3 = [(SHSDualSIMToneTitleView *)self stackView];
  leadingAnchor = [stackView3 leadingAnchor];
  leadingAnchor2 = [(SHSDualSIMToneTitleView *)self leadingAnchor];
  v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v28 setActive:1];

  stackView4 = [(SHSDualSIMToneTitleView *)self stackView];
  trailingAnchor = [stackView4 trailingAnchor];
  trailingAnchor2 = [(SHSDualSIMToneTitleView *)self trailingAnchor];
  v32 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v32 setActive:1];

  stackView5 = [(SHSDualSIMToneTitleView *)self stackView];
  centerYAnchor = [stackView5 centerYAnchor];
  centerYAnchor2 = [(SHSDualSIMToneTitleView *)self centerYAnchor];
  v36 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v36 setActive:1];

  badgeView5 = [(SHSDualSIMToneTitleView *)self badgeView];
  centerYAnchor3 = [badgeView5 centerYAnchor];
  stackView6 = [(SHSDualSIMToneTitleView *)self stackView];
  centerYAnchor4 = [stackView6 centerYAnchor];
  v41 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [v41 setActive:1];

  titleLabel2 = [(SHSDualSIMToneTitleView *)self titleLabel];
  centerYAnchor5 = [titleLabel2 centerYAnchor];
  stackView7 = [(SHSDualSIMToneTitleView *)self stackView];
  centerYAnchor6 = [stackView7 centerYAnchor];
  v45 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  [v45 setActive:1];
}

- (void)updateContentsWithTitle:(id)title badgeText:(id)text
{
  textCopy = text;
  titleCopy = title;
  titleLabel = [(SHSDualSIMToneTitleView *)self titleLabel];
  [titleLabel setText:titleCopy];

  badgeView = [(SHSDualSIMToneTitleView *)self badgeView];
  [badgeView setText:textCopy];
}

@end