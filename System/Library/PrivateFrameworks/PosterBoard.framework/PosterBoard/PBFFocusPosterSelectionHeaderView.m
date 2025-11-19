@interface PBFFocusPosterSelectionHeaderView
- (PBFFocusPosterSelectionHeaderView)initWithCoder:(id)a3;
- (PBFFocusPosterSelectionHeaderView)initWithFrame:(CGRect)a3;
- (void)_createSeparatorView;
- (void)_createStackView;
- (void)_createSubtitleLabel;
- (void)_createTitleLabel;
- (void)_updateSeparatorHeightConstraint;
- (void)didMoveToWindow;
- (void)prepareForReuse;
- (void)setAttributedSubtitle:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation PBFFocusPosterSelectionHeaderView

- (PBFFocusPosterSelectionHeaderView)initWithFrame:(CGRect)a3
{
  v27[6] = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = PBFFocusPosterSelectionHeaderView;
  v3 = [(PBFFocusPosterSelectionHeaderView *)&v26 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v25 = [(UIStackView *)v4->_stackView leadingAnchor];
    v24 = [(PBFFocusPosterSelectionHeaderView *)v4 leadingAnchor];
    v23 = [v25 constraintEqualToAnchor:v24 constant:10.0];
    v27[0] = v23;
    v22 = [(UIStackView *)v4->_stackView trailingAnchor];
    v21 = [(PBFFocusPosterSelectionHeaderView *)v4 trailingAnchor];
    v20 = [v22 constraintEqualToAnchor:v21 constant:-10.0];
    v27[1] = v20;
    v18 = [(UIStackView *)v4->_stackView topAnchor];
    v17 = [(PBFFocusPosterSelectionHeaderView *)v4 topAnchor];
    v16 = [v18 constraintEqualToAnchor:v17 constant:12.0];
    v27[2] = v16;
    v15 = [(UIStackView *)v4->_stackView bottomAnchor];
    v5 = [(PBFFocusPosterSelectionHeaderView *)v4 bottomAnchor];
    v6 = [v15 constraintEqualToAnchor:v5 constant:-12.0];
    v27[3] = v6;
    v7 = [(UIStackView *)v4->_stackView leadingAnchor];
    v8 = [(UIView *)v4->_separatorView leadingAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    v27[4] = v9;
    v10 = [(UIStackView *)v4->_stackView trailingAnchor];
    v11 = [(UIView *)v4->_separatorView trailingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v27[5] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:6];
    [v19 activateConstraints:v13];
  }

  return v4;
}

- (PBFFocusPosterSelectionHeaderView)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCA890];
  v5 = a3;
  v6 = [v4 currentHandler];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PBFFocusPosterSelectionHeaderView initWithCoder:]"];
  [v6 handleFailureInFunction:v7 file:@"PBFFocusPosterSelectionHeaderView.m" lineNumber:50 description:{@"%s: not supported", "-[PBFFocusPosterSelectionHeaderView initWithCoder:]"}];

  v10.receiver = self;
  v10.super_class = PBFFocusPosterSelectionHeaderView;
  v8 = [(PBFFocusPosterSelectionHeaderView *)&v10 initWithCoder:v5];

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
  v6 = [MEMORY[0x277D75348] separatorColor];
  [(UIView *)v5 setBackgroundColor:v6];

  [(UIStackView *)self->_stackView addArrangedSubview:self->_separatorView];
  v7 = [(UIView *)self->_separatorView heightAnchor];
  v8 = [v7 constraintEqualToConstant:0.0];
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
  v8 = [MEMORY[0x277D75348] labelColor];
  [(UILabel *)v7 setTextColor:v8];

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
  v8 = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)v7 setTextColor:v8];

  [(UILabel *)self->_subtitleLabel setNumberOfLines:0];
  [(UILabel *)self->_subtitleLabel setLineBreakMode:0];
  [(UILabel *)self->_subtitleLabel setHidden:1];
  stackView = self->_stackView;
  v10 = self->_subtitleLabel;

  [(UIStackView *)stackView addArrangedSubview:v10];
}

- (void)setTitle:(id)a3
{
  v8 = a3;
  v4 = [(UILabel *)self->_titleLabel text];
  v5 = [v4 isEqualToString:v8];

  if ((v5 & 1) == 0)
  {
    v6 = [v8 copy];
    title = self->_title;
    self->_title = v6;

    [(UILabel *)self->_titleLabel setText:v8];
  }
}

- (void)setAttributedSubtitle:(id)a3
{
  v8 = a3;
  v4 = [(UILabel *)self->_subtitleLabel attributedText];
  v5 = [v4 isEqualToAttributedString:v8];

  if ((v5 & 1) == 0)
  {
    v6 = [v8 copy];
    attributedSubtitle = self->_attributedSubtitle;
    self->_attributedSubtitle = v6;

    [(UILabel *)self->_subtitleLabel setAttributedText:v8];
    -[UILabel setHidden:](self->_subtitleLabel, "setHidden:", [v8 length] == 0);
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
  v3 = [(PBFFocusPosterSelectionHeaderView *)self window];
  v4 = [v3 screen];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x277D759A0] mainScreen];
  }

  v9 = v6;

  separatorViewHeightConstraint = self->_separatorViewHeightConstraint;
  [v9 scale];
  [(NSLayoutConstraint *)separatorViewHeightConstraint setConstant:1.0 / v8];
}

@end