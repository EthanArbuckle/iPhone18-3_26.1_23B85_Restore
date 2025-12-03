@interface _TVRUITabSelectorControlCell
- (_TVRUITabSelectorControlCell)initWithFrame:(CGRect)frame;
- (void)_configure;
- (void)_configureBackgroundCornerRadius;
- (void)_updateForSelectedState:(BOOL)state;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
@end

@implementation _TVRUITabSelectorControlCell

- (_TVRUITabSelectorControlCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _TVRUITabSelectorControlCell;
  v3 = [(_TVRUITabSelectorControlCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_TVRUITabSelectorControlCell *)v3 _configure];
  }

  return v4;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = _TVRUITabSelectorControlCell;
  [(_TVRUITabSelectorControlCell *)&v4 prepareForReuse];
  label = [(_TVRUITabSelectorControlCell *)self label];
  [label setText:0];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5.receiver = self;
  v5.super_class = _TVRUITabSelectorControlCell;
  [(_TVRUITabSelectorControlCell *)&v5 setSelected:?];
  [(_TVRUITabSelectorControlCell *)self _updateForSelectedState:selectedCopy];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5.receiver = self;
  v5.super_class = _TVRUITabSelectorControlCell;
  [(_TVRUITabSelectorControlCell *)&v5 setHighlighted:?];
  [(_TVRUITabSelectorControlCell *)self _updateForSelectedState:highlightedCopy];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _TVRUITabSelectorControlCell;
  [(_TVRUITabSelectorControlCell *)&v3 layoutSubviews];
  [(_TVRUITabSelectorControlCell *)self _configureBackgroundCornerRadius];
}

- (void)_configure
{
  v36[4] = *MEMORY[0x277D85DE8];
  v3 = +[TVRUIFeatures isSolariumEnabled];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v5 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v5 setBackgroundColor:whiteColor];
  if (!v3)
  {
    v6 = [MEMORY[0x277D75348] colorWithWhite:0.1 alpha:1.0];
    cGColor = [v6 CGColor];
    layer = [v5 layer];
    [layer setBorderColor:cGColor];
  }

  [(_TVRUITabSelectorControlCell *)self setSelectedBackgroundView:v5];
  v9 = objc_alloc_init(MEMORY[0x277D75D18]);
  v10 = v9;
  v34 = whiteColor;
  v35 = v5;
  if (v3)
  {
    layer3 = [MEMORY[0x277D75348] colorWithWhite:0.175 alpha:1.0];
    [v10 setBackgroundColor:layer3];
  }

  else
  {
    layer2 = [v9 layer];
    [layer2 setBorderWidth:1.0];

    cGColor2 = [whiteColor CGColor];
    layer3 = [v10 layer];
    [layer3 setBorderColor:cGColor2];
  }

  [(_TVRUITabSelectorControlCell *)self setBackgroundView:v10];
  contentView = [(_TVRUITabSelectorControlCell *)self contentView];
  v15 = objc_alloc_init(MEMORY[0x277D756B8]);
  [(UILabel *)v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)v15 setTextAlignment:1];
  v16 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D769D0] variant:1024];
  [(UILabel *)v15 setFont:v16];

  [(UILabel *)v15 setAdjustsFontForContentSizeCategory:1];
  [contentView addSubview:v15];
  v27 = MEMORY[0x277CCAAD0];
  leadingAnchor = [(UILabel *)v15 leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:11.0];
  v36[0] = v30;
  trailingAnchor = [(UILabel *)v15 trailingAnchor];
  trailingAnchor2 = [contentView trailingAnchor];
  v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-11.0];
  v36[1] = v26;
  [(UILabel *)v15 topAnchor];
  v17 = v31 = v10;
  topAnchor = [contentView topAnchor];
  v19 = [v17 constraintEqualToAnchor:topAnchor constant:5.0];
  v36[2] = v19;
  [(UILabel *)v15 bottomAnchor];
  v21 = v20 = self;
  bottomAnchor = [contentView bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:bottomAnchor constant:-5.0];
  v36[3] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:4];
  [v27 activateConstraints:v24];

  label = v20->_label;
  v20->_label = v15;

  [(_TVRUITabSelectorControlCell *)v20 _updateForSelectedState:0];
}

- (void)_configureBackgroundCornerRadius
{
  if (+[TVRUIFeatures isSolariumEnabled])
  {
    [(UIView *)self tvrui_makeCapsuleCorners];
    backgroundView = [(_TVRUITabSelectorControlCell *)self backgroundView];
    [backgroundView tvrui_makeCapsuleCorners];

    selectedBackgroundView = [(_TVRUITabSelectorControlCell *)self selectedBackgroundView];
    [selectedBackgroundView tvrui_makeCapsuleCorners];
  }

  else
  {
    backgroundView2 = [(_TVRUITabSelectorControlCell *)self backgroundView];
    [backgroundView2 _setContinuousCornerRadius:7.0];

    selectedBackgroundView = [(_TVRUITabSelectorControlCell *)self selectedBackgroundView];
    [selectedBackgroundView _setContinuousCornerRadius:7.0];
  }
}

- (void)_updateForSelectedState:(BOOL)state
{
  if (state)
  {
    [MEMORY[0x277D75348] darkTextColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v5 = ;
  label = [(_TVRUITabSelectorControlCell *)self label];
  [label setTextColor:v5];
}

@end