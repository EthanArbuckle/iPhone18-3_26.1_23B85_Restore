@interface CACCorrectionsCollectionViewCell
- (CACCorrectionsCollectionViewCell)initWithFrame:(CGRect)frame;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation CACCorrectionsCollectionViewCell

- (CACCorrectionsCollectionViewCell)initWithFrame:(CGRect)frame
{
  v41[4] = *MEMORY[0x277D85DE8];
  v40.receiver = self;
  v40.super_class = CACCorrectionsCollectionViewCell;
  v3 = [(CACCorrectionsCollectionViewCell *)&v40 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = *MEMORY[0x277D76918];
    v5 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76918]];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(CACCorrectionsCollectionViewCell *)v3 setBackgroundColor:whiteColor];

    lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
    cGColor = [lightGrayColor CGColor];
    layer = [(CACCorrectionsCollectionViewCell *)v3 layer];
    [layer setBorderColor:cGColor];

    [v5 scaledValueForValue:0.0];
    v11 = round(v10);
    layer2 = [(CACCorrectionsCollectionViewCell *)v3 layer];
    [layer2 setBorderWidth:v11];

    [v5 scaledValueForValue:8.0];
    v14 = round(v13);
    layer3 = [(CACCorrectionsCollectionViewCell *)v3 layer];
    [layer3 setCornerRadius:v14];

    v16 = objc_opt_new();
    textLabel = v3->_textLabel;
    v3->_textLabel = v16;

    [(UILabel *)v3->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = [MEMORY[0x277D74300] preferredFontForTextStyle:v4];
    [(UILabel *)v3->_textLabel setFont:v18];

    [(UILabel *)v3->_textLabel setTextAlignment:1];
    [(UILabel *)v3->_textLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v3->_textLabel setNumberOfLines:0];
    contentView = [(CACCorrectionsCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_textLabel];
    v39 = v5;
    [v5 scaledValueForValue:8.0];
    v21 = v20;
    [v5 scaledValueForValue:8.0];
    v23 = v22;
    v33 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(UILabel *)v3->_textLabel leadingAnchor];
    leadingAnchor2 = [contentView leadingAnchor];
    v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v21];
    v41[0] = v36;
    trailingAnchor = [(UILabel *)v3->_textLabel trailingAnchor];
    trailingAnchor2 = [contentView trailingAnchor];
    v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v21];
    v41[1] = v24;
    topAnchor = [(UILabel *)v3->_textLabel topAnchor];
    topAnchor2 = [contentView topAnchor];
    v27 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v23];
    v41[2] = v27;
    bottomAnchor = [(UILabel *)v3->_textLabel bottomAnchor];
    bottomAnchor2 = [contentView bottomAnchor];
    v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v23];
    v41[3] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:4];
    [v33 activateConstraints:v31];
  }

  return v3;
}

- (void)setHighlighted:(BOOL)highlighted
{
  v6.receiver = self;
  v6.super_class = CACCorrectionsCollectionViewCell;
  [(CACCorrectionsCollectionViewCell *)&v6 setHighlighted:?];
  if (highlighted)
  {
    [MEMORY[0x277D75348] grayColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v5 = ;
  [(CACCorrectionsCollectionViewCell *)self setBackgroundColor:v5];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  v7.receiver = self;
  v7.super_class = CACCorrectionsCollectionViewCell;
  v3 = [(CACCorrectionsCollectionViewCell *)&v7 preferredLayoutAttributesFittingAttributes:attributes];
  [v3 size];
  [v3 setSize:{fmax(v4, 40.0), fmax(v5, 40.0)}];

  return v3;
}

@end