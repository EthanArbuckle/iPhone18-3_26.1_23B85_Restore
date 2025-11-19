@interface AirDropHeaderView
- (AirDropHeaderView)initWithFrame:(CGRect)a3;
@end

@implementation AirDropHeaderView

- (AirDropHeaderView)initWithFrame:(CGRect)a3
{
  v34.receiver = self;
  v34.super_class = AirDropHeaderView;
  v3 = [(AirDropHeaderView *)&v34 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UILabel);
    [v4 setNumberOfLines:2];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setAdjustsFontForContentSizeCategory:1];
    v5 = +[UIDevice currentDevice];
    v6 = [v5 userInterfaceIdiom];

    if (v6 == 6)
    {
      v7 = +[UIColor systemWhiteColor];
      [v4 setTextColor:v7];

      [v4 setTextAlignment:0];
      [UIFont _preferredFontForTextStyle:UIFontTextStyleTitle3 weight:UIFontWeightBold];
    }

    else
    {
      v8 = +[UIColor labelColor];
      [v4 setTextColor:v8];

      [v4 setTextAlignment:4];
      [UIFont _preferredFontForTextStyle:UIFontTextStyleTitle3 variant:1280];
    }
    v9 = ;
    [v4 setFont:v9];

    [(AirDropHeaderView *)v3 setTitleLabel:v4];
    v10 = v3;
    v11 = [(AirDropHeaderView *)v10 titleLabel];
    [(AirDropHeaderView *)v10 addSubview:v11];

    if (v6 == 6)
    {
      [(AirDropHeaderView *)v10 directionalLayoutMargins];
      v12 = 0.0;
      [(AirDropHeaderView *)v10 setDirectionalLayoutMargins:?];
      v13 = 0.0;
    }

    else
    {
      v13 = 26.0;
      v12 = -8.0;
    }

    v14 = +[NSMutableArray array];
    v15 = [(AirDropHeaderView *)v10 titleLabel];
    v16 = [v15 leadingAnchor];
    v17 = [(AirDropHeaderView *)v10 layoutMarginsGuide];
    v18 = [v17 leadingAnchor];
    v19 = [v16 constraintEqualToAnchor:v18];
    [v14 addObject:v19];

    v20 = [(AirDropHeaderView *)v10 titleLabel];
    v21 = [v20 trailingAnchor];
    v22 = [(AirDropHeaderView *)v10 layoutMarginsGuide];
    v23 = [v22 trailingAnchor];
    v24 = [v21 constraintEqualToAnchor:v23];
    [v14 addObject:v24];

    v25 = [(AirDropHeaderView *)v10 titleLabel];
    v26 = [v25 topAnchor];
    v27 = [(AirDropHeaderView *)v10 topAnchor];
    v28 = [v26 constraintEqualToAnchor:v27 constant:v13];
    [v14 addObject:v28];

    v29 = [(AirDropHeaderView *)v10 titleLabel];
    v30 = [v29 bottomAnchor];
    v31 = [(AirDropHeaderView *)v10 bottomAnchor];
    v32 = [v30 constraintEqualToAnchor:v31 constant:v12];
    [v14 addObject:v32];

    [NSLayoutConstraint activateConstraints:v14];
  }

  return v3;
}

@end