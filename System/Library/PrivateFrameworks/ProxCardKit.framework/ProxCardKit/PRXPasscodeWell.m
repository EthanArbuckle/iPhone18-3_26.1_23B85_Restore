@interface PRXPasscodeWell
- (PRXPasscodeWell)initWithFrame:(CGRect)a3;
@end

@implementation PRXPasscodeWell

- (PRXPasscodeWell)initWithFrame:(CGRect)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = PRXPasscodeWell;
  v3 = [(PRXPasscodeWell *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PRXPasscodeWell *)v3 setUserInteractionEnabled:0];
    v5 = objc_alloc_init(MEMORY[0x277D756B8]);
    label = v4->_label;
    v4->_label = v5;

    [(UILabel *)v4->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PRXPasscodeWell *)v4 addSubview:v4->_label];
    v7 = MEMORY[0x277CCAAD0];
    v8 = [(UILabel *)v4->_label centerXAnchor];
    v9 = [(PRXPasscodeWell *)v4 centerXAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    v18[0] = v10;
    v11 = [(UILabel *)v4->_label centerYAnchor];
    v12 = [(PRXPasscodeWell *)v4 centerYAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v18[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    [v7 activateConstraints:v14];

    v15 = v4;
  }

  return v4;
}

@end