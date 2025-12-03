@interface PRXOptionCollectionViewCell
- (PRXOptionCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)setSelected:(BOOL)selected;
@end

@implementation PRXOptionCollectionViewCell

- (PRXOptionCollectionViewCell)initWithFrame:(CGRect)frame
{
  v47[6] = *MEMORY[0x277D85DE8];
  v46.receiver = self;
  v46.super_class = PRXOptionCollectionViewCell;
  v3 = [(PRXOptionCollectionViewCell *)&v46 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(PRXOptionCollectionViewCell *)v3 contentView];
    [contentView setDirectionalLayoutMargins:{8.0, 15.0, 8.0, 15.0}];

    v6 = objc_alloc_init(MEMORY[0x277D756B8]);
    textLabel = v4->_textLabel;
    v4->_textLabel = v6;

    v8 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918]];
    v45 = [v8 fontDescriptorWithSymbolicTraits:2];

    v9 = MEMORY[0x277D74300];
    [v45 pointSize];
    v10 = [v9 fontWithDescriptor:v45 size:?];
    [(UILabel *)v4->_textLabel setFont:v10];

    [(UILabel *)v4->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(PRXOptionCollectionViewCell *)v4 contentView];
    [contentView2 addSubview:v4->_textLabel];

    v12 = objc_alloc_init(PRXSelectionIndicatorView);
    selectionIndicator = v4->_selectionIndicator;
    v4->_selectionIndicator = v12;

    [(PRXSelectionIndicatorView *)v4->_selectionIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView3 = [(PRXOptionCollectionViewCell *)v4 contentView];
    [contentView3 addSubview:v4->_selectionIndicator];

    v15 = objc_alloc_init(MEMORY[0x277D75D18]);
    systemFillColor = [MEMORY[0x277D75348] systemFillColor];
    cGColor = [systemFillColor CGColor];
    layer = [v15 layer];
    [layer setBorderColor:cGColor];

    layer2 = [v15 layer];
    [layer2 setBorderWidth:1.0];

    v44 = v15;
    [v15 _setContinuousCornerRadius:12.0];
    [(PRXOptionCollectionViewCell *)v4 setBackgroundView:v15];
    contentView4 = [(PRXOptionCollectionViewCell *)v4 contentView];
    layoutMarginsGuide = [contentView4 layoutMarginsGuide];

    v36 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(UILabel *)v4->_textLabel leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v41 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v47[0] = v41;
    trailingAnchor = [(UILabel *)v4->_textLabel trailingAnchor];
    leadingAnchor3 = [(PRXSelectionIndicatorView *)v4->_selectionIndicator leadingAnchor];
    v38 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3];
    v47[1] = v38;
    centerYAnchor = [(UILabel *)v4->_textLabel centerYAnchor];
    centerYAnchor2 = [layoutMarginsGuide centerYAnchor];
    v34 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v47[2] = v34;
    topAnchor = [(UILabel *)v4->_textLabel topAnchor];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v22 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    v47[3] = v22;
    centerYAnchor3 = [(PRXSelectionIndicatorView *)v4->_selectionIndicator centerYAnchor];
    centerYAnchor4 = [layoutMarginsGuide centerYAnchor];
    v25 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v47[4] = v25;
    trailingAnchor2 = [(PRXSelectionIndicatorView *)v4->_selectionIndicator trailingAnchor];
    trailingAnchor3 = [layoutMarginsGuide trailingAnchor];
    v28 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v47[5] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:6];
    [v36 activateConstraints:v29];

    v30 = v4;
  }

  return v4;
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v7.receiver = self;
  v7.super_class = PRXOptionCollectionViewCell;
  [(PRXOptionCollectionViewCell *)&v7 _dynamicUserInterfaceTraitDidChange];
  systemFillColor = [MEMORY[0x277D75348] systemFillColor];
  cGColor = [systemFillColor CGColor];
  backgroundView = [(PRXOptionCollectionViewCell *)self backgroundView];
  layer = [backgroundView layer];
  [layer setBorderColor:cGColor];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5.receiver = self;
  v5.super_class = PRXOptionCollectionViewCell;
  [(PRXOptionCollectionViewCell *)&v5 setSelected:?];
  [(PRXSelectionIndicatorView *)self->_selectionIndicator setSelected:selectedCopy];
}

@end