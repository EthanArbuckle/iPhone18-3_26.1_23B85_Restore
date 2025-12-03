@interface DBSExternalDisplayIconView
- (DBSExternalDisplayIconView)initWithFrame:(CGRect)frame displayName:(id)name;
@end

@implementation DBSExternalDisplayIconView

- (DBSExternalDisplayIconView)initWithFrame:(CGRect)frame displayName:(id)name
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v26[2] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v25.receiver = self;
  v25.super_class = DBSExternalDisplayIconView;
  height = [(DBSExternalDisplayIconView *)&v25 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    layer = [(DBSExternalDisplayIconView *)height layer];
    v13 = [MEMORY[0x277D75348] colorWithRed:0.576470588 green:0.705882353 blue:0.749019608 alpha:1.0];
    v26[0] = [v13 CGColor];
    v14 = [MEMORY[0x277D75348] colorWithRed:0.760784314 green:0.850980392 blue:0.874509804 alpha:1.0];
    v26[1] = [v14 CGColor];
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    [layer setColors:v15];

    v16 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.1];
    [layer setBorderColor:{objc_msgSend(v16, "CGColor")}];

    [layer setBorderWidth:1.0];
    [layer setCornerRadius:5.0];
    v17 = objc_opt_new();
    [v17 setText:nameCopy];
    [(DBSExternalDisplayIconView *)v11 addSubview:v17];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    centerXAnchor = [v17 centerXAnchor];
    centerXAnchor2 = [(DBSExternalDisplayIconView *)v11 centerXAnchor];
    v20 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v20 setActive:1];

    centerYAnchor = [v17 centerYAnchor];
    centerYAnchor2 = [(DBSExternalDisplayIconView *)v11 centerYAnchor];
    v23 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v23 setActive:1];

    [(DBSExternalDisplayIconView *)v11 setNameField:v17];
  }

  return v11;
}

@end