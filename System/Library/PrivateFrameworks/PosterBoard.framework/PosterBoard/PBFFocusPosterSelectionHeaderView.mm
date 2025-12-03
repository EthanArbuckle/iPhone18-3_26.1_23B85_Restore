@interface PBFFocusPosterSelectionHeaderView
- (PBFFocusPosterSelectionHeaderView)initWithCoder:(id)coder;
- (PBFFocusPosterSelectionHeaderView)initWithFrame:(CGRect)frame;
- (void)_createSeparatorView;
- (void)_createStackView;
- (void)_createSubtitleLabel;
- (void)_createTitleLabel;
- (void)_updateSeparatorHeightConstraint;
- (void)didMoveToWindow;
- (void)prepareForReuse;
- (void)setAttributedSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
@end

@implementation PBFFocusPosterSelectionHeaderView

- (PBFFocusPosterSelectionHeaderView)initWithFrame:(CGRect)frame
{
  v27[6] = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = PBFFocusPosterSelectionHeaderView;
  v3 = [(PBFFocusPosterSelectionHeaderView *)&v26 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PBFFocusPosterSelectionHeaderView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PBFFocusPosterSelectionHeaderView *)v4 _createStackView];
    [(PBFFocusPosterSelectionHeaderView *)v4 _createSeparatorView];
    [(PBFFocusPosterSelectionHeaderView *)v4 _createTitleLabel];
    [(PBFFocusPosterSelectionHeaderView *)v4 _createSubtitleLabel];
    [(UIStackView *)v4->_stackView setCustomSpacing:v4->_titleLabel afterView:2.0];
    v19 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(UIStackView *)v4->_stackView leadingAnchor];
    leadingAnchor2 = [(PBFFocusPosterSelectionHeaderView *)v4 leadingAnchor];
    v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
    v27[0] = v23;
    trailingAnchor = [(UIStackView *)v4->_stackView trailingAnchor];
    trailingAnchor2 = [(PBFFocusPosterSelectionHeaderView *)v4 trailingAnchor];
    v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
    v27[1] = v20;
    topAnchor = [(UIStackView *)v4->_stackView topAnchor];
    topAnchor2 = [(PBFFocusPosterSelectionHeaderView *)v4 topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:12.0];
    v27[2] = v16;
    bottomAnchor = [(UIStackView *)v4->_stackView bottomAnchor];
    bottomAnchor2 = [(PBFFocusPosterSelectionHeaderView *)v4 bottomAnchor];
    v6 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-12.0];
    v27[3] = v6;
    leadingAnchor3 = [(UIStackView *)v4->_stackView leadingAnchor];
    leadingAnchor4 = [(UIView *)v4->_separatorView leadingAnchor];
    v9 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v27[4] = v9;
    trailingAnchor3 = [(UIStackView *)v4->_stackView trailingAnchor];
    trailingAnchor4 = [(UIView *)v4->_separatorView trailingAnchor];
    v12 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v27[5] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:6];
    [v19 activateConstraints:v13];
  }

  return v4;
}

- (PBFFocusPosterSelectionHeaderView)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCA890];
  coderCopy = coder;
  currentHandler = [v4 currentHandler];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PBFFocusPosterSelectionHeaderView initWithCoder:]"];
  [currentHandler handleFailureInFunction:v7 file:@"PBFFocusPosterSelectionHeaderView.m" lineNumber:50 description:{@"%s: not supported", "-[PBFFocusPosterSelectionHeaderView initWithCoder:]"}];

  v10.receiver = self;
  v10.super_class = PBFFocusPosterSelectionHeaderView;
  v8 = [(PBFFocusPosterSelectionHeaderView *)&v10 initWithCoder:coderCopy];

  return v8;
}

- (void)_createStackView
{
  v3 = objc_alloc_init(MEMORY[0x277D75A68]);
  stackView = self->_stackView;
  self->_stackView = v3;

  [(UIStackView *)self->_stackView setAxis:1];
  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView setSpacing:10.0];
  v5 = self->_stackView;

  [(PBFFocusPosterSelectionHeaderView *)self addSubview:v5];
}

- (void)_createSeparatorView
{
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  separatorView = self->_separatorView;
  self->_separatorView = v3;

  [(UIView *)self->_separatorView setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = self->_separatorView;
  separatorColor = [MEMORY[0x277D75348] separatorColor];
  [(UIView *)v5 setBackgroundColor:separatorColor];

  [(UIStackView *)self->_stackView addArrangedSubview:self->_separatorView];
  heightAnchor = [(UIView *)self->_separatorView heightAnchor];
  v8 = [heightAnchor constraintEqualToConstant:0.0];
  separatorViewHeightConstraint = self->_separatorViewHeightConstraint;
  self->_separatorViewHeightConstraint = v8;

  [(NSLayoutConstraint *)self->_separatorViewHeightConstraint setActive:1];

  [(PBFFocusPosterSelectionHeaderView *)self _updateSeparatorHeightConstraint];
}

- (void)_createTitleLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = self->_titleLabel;
  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  [(UILabel *)v5 setFont:v6];

  v7 = self->_titleLabel;
  labelColor = [MEMORY[0x277D75348] labelColor];
  [(UILabel *)v7 setTextColor:labelColor];

  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  [(UILabel *)self->_titleLabel setLineBreakMode:0];
  [(UILabel *)self->_titleLabel setLineBreakStrategy:0];
  stackView = self->_stackView;
  v10 = self->_titleLabel;

  [(UIStackView *)stackView addArrangedSubview:v10];
}

- (void)_createSubtitleLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v3;

  [(UILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = self->_subtitleLabel;
  v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [(UILabel *)v5 setFont:v6];

  v7 = self->_subtitleLabel;
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)v7 setTextColor:secondaryLabelColor];

  [(UILabel *)self->_subtitleLabel setNumberOfLines:0];
  [(UILabel *)self->_subtitleLabel setLineBreakMode:0];
  [(UILabel *)self->_subtitleLabel setHidden:1];
  stackView = self->_stackView;
  v10 = self->_subtitleLabel;

  [(UIStackView *)stackView addArrangedSubview:v10];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  text = [(UILabel *)self->_titleLabel text];
  v5 = [text isEqualToString:titleCopy];

  if ((v5 & 1) == 0)
  {
    v6 = [titleCopy copy];
    title = self->_title;
    self->_title = v6;

    [(UILabel *)self->_titleLabel setText:titleCopy];
  }
}

- (void)setAttributedSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  attributedText = [(UILabel *)self->_subtitleLabel attributedText];
  v5 = [attributedText isEqualToAttributedString:subtitleCopy];

  if ((v5 & 1) == 0)
  {
    v6 = [subtitleCopy copy];
    attributedSubtitle = self->_attributedSubtitle;
    self->_attributedSubtitle = v6;

    [(UILabel *)self->_subtitleLabel setAttributedText:subtitleCopy];
    -[UILabel setHidden:](self->_subtitleLabel, "setHidden:", [subtitleCopy length] == 0);
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PBFFocusPosterSelectionHeaderView;
  [(PBFFocusPosterSelectionHeaderView *)&v3 prepareForReuse];
  [(UILabel *)self->_subtitleLabel setAttributedText:0];
  [(UILabel *)self->_subtitleLabel setHidden:1];
  [(UILabel *)self->_titleLabel setText:0];
  [(PBFFocusPosterSelectionHeaderView *)self setGestureRecognizers:MEMORY[0x277CBEBF8]];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = PBFFocusPosterSelectionHeaderView;
  [(PBFFocusPosterSelectionHeaderView *)&v3 didMoveToWindow];
  [(PBFFocusPosterSelectionHeaderView *)self _updateSeparatorHeightConstraint];
}

- (void)_updateSeparatorHeightConstraint
{
  window = [(PBFFocusPosterSelectionHeaderView *)self window];
  screen = [window screen];
  v5 = screen;
  if (screen)
  {
    mainScreen = screen;
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
  }

  v9 = mainScreen;

  separatorViewHeightConstraint = self->_separatorViewHeightConstraint;
  [v9 scale];
  [(NSLayoutConstraint *)separatorViewHeightConstraint setConstant:1.0 / v8];
}

@end