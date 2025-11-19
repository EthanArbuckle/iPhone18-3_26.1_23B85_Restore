@interface DBSExternalDisplayIconView
- (DBSExternalDisplayIconView)initWithFrame:(CGRect)a3 displayName:(id)a4;
@end

@implementation DBSExternalDisplayIconView

- (DBSExternalDisplayIconView)initWithFrame:(CGRect)a3 displayName:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v26[2] = *MEMORY[0x277D85DE8];
  v9 = a4;
  v25.receiver = self;
  v25.super_class = DBSExternalDisplayIconView;
  v10 = [(DBSExternalDisplayIconView *)&v25 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    v12 = [(DBSExternalDisplayIconView *)v10 layer];
    v13 = [MEMORY[0x277D75348] colorWithRed:0.576470588 green:0.705882353 blue:0.749019608 alpha:1.0];
    v26[0] = [v13 CGColor];
    v14 = [MEMORY[0x277D75348] colorWithRed:0.760784314 green:0.850980392 blue:0.874509804 alpha:1.0];
    v26[1] = [v14 CGColor];
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    [v12 setColors:v15];

    v16 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.1];
    [v12 setBorderColor:{objc_msgSend(v16, "CGColor")}];

    [v12 setBorderWidth:1.0];
    [v12 setCornerRadius:5.0];
    v17 = objc_opt_new();
    [v17 setText:v9];
    [(DBSExternalDisplayIconView *)v11 addSubview:v17];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = [v17 centerXAnchor];
    v19 = [(DBSExternalDisplayIconView *)v11 centerXAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    [v20 setActive:1];

    v21 = [v17 centerYAnchor];
    v22 = [(DBSExternalDisplayIconView *)v11 centerYAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    [v23 setActive:1];

    [(DBSExternalDisplayIconView *)v11 setNameField:v17];
  }

  return v11;
}

@end