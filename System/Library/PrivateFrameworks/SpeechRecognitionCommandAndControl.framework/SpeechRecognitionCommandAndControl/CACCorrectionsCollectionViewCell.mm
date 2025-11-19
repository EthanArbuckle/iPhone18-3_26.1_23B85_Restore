@interface CACCorrectionsCollectionViewCell
- (CACCorrectionsCollectionViewCell)initWithFrame:(CGRect)a3;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation CACCorrectionsCollectionViewCell

- (CACCorrectionsCollectionViewCell)initWithFrame:(CGRect)a3
{
  v41[4] = *MEMORY[0x277D85DE8];
  v40.receiver = self;
  v40.super_class = CACCorrectionsCollectionViewCell;
  v3 = [(CACCorrectionsCollectionViewCell *)&v40 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = *MEMORY[0x277D76918];
    v5 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76918]];
    v6 = [MEMORY[0x277D75348] whiteColor];
    [(CACCorrectionsCollectionViewCell *)v3 setBackgroundColor:v6];

    v7 = [MEMORY[0x277D75348] lightGrayColor];
    v8 = [v7 CGColor];
    v9 = [(CACCorrectionsCollectionViewCell *)v3 layer];
    [v9 setBorderColor:v8];

    [v5 scaledValueForValue:0.0];
    v11 = round(v10);
    v12 = [(CACCorrectionsCollectionViewCell *)v3 layer];
    [v12 setBorderWidth:v11];

    [v5 scaledValueForValue:8.0];
    v14 = round(v13);
    v15 = [(CACCorrectionsCollectionViewCell *)v3 layer];
    [v15 setCornerRadius:v14];

    v16 = objc_opt_new();
    textLabel = v3->_textLabel;
    v3->_textLabel = v16;

    [(UILabel *)v3->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = [MEMORY[0x277D74300] preferredFontForTextStyle:v4];
    [(UILabel *)v3->_textLabel setFont:v18];

    [(UILabel *)v3->_textLabel setTextAlignment:1];
    [(UILabel *)v3->_textLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v3->_textLabel setNumberOfLines:0];
    v19 = [(CACCorrectionsCollectionViewCell *)v3 contentView];
    [v19 addSubview:v3->_textLabel];
    v39 = v5;
    [v5 scaledValueForValue:8.0];
    v21 = v20;
    [v5 scaledValueForValue:8.0];
    v23 = v22;
    v33 = MEMORY[0x277CCAAD0];
    v38 = [(UILabel *)v3->_textLabel leadingAnchor];
    v37 = [v19 leadingAnchor];
    v36 = [v38 constraintEqualToAnchor:v37 constant:v21];
    v41[0] = v36;
    v35 = [(UILabel *)v3->_textLabel trailingAnchor];
    v34 = [v19 trailingAnchor];
    v24 = [v35 constraintEqualToAnchor:v34 constant:-v21];
    v41[1] = v24;
    v25 = [(UILabel *)v3->_textLabel topAnchor];
    v26 = [v19 topAnchor];
    v27 = [v25 constraintEqualToAnchor:v26 constant:v23];
    v41[2] = v27;
    v28 = [(UILabel *)v3->_textLabel bottomAnchor];
    v29 = [v19 bottomAnchor];
    v30 = [v28 constraintEqualToAnchor:v29 constant:-v23];
    v41[3] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:4];
    [v33 activateConstraints:v31];
  }

  return v3;
}

- (void)setHighlighted:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CACCorrectionsCollectionViewCell;
  [(CACCorrectionsCollectionViewCell *)&v6 setHighlighted:?];
  if (a3)
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

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v7.receiver = self;
  v7.super_class = CACCorrectionsCollectionViewCell;
  v3 = [(CACCorrectionsCollectionViewCell *)&v7 preferredLayoutAttributesFittingAttributes:a3];
  [v3 size];
  [v3 setSize:{fmax(v4, 40.0), fmax(v5, 40.0)}];

  return v3;
}

@end