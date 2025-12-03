@interface AirDropHeaderView
- (AirDropHeaderView)initWithFrame:(CGRect)frame;
@end

@implementation AirDropHeaderView

- (AirDropHeaderView)initWithFrame:(CGRect)frame
{
  v34.receiver = self;
  v34.super_class = AirDropHeaderView;
  v3 = [(AirDropHeaderView *)&v34 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(UILabel);
    [v4 setNumberOfLines:2];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setAdjustsFontForContentSizeCategory:1];
    v5 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v5 userInterfaceIdiom];

    if (userInterfaceIdiom == 6)
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
    titleLabel = [(AirDropHeaderView *)v10 titleLabel];
    [(AirDropHeaderView *)v10 addSubview:titleLabel];

    if (userInterfaceIdiom == 6)
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
    titleLabel2 = [(AirDropHeaderView *)v10 titleLabel];
    leadingAnchor = [titleLabel2 leadingAnchor];
    layoutMarginsGuide = [(AirDropHeaderView *)v10 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v14 addObject:v19];

    titleLabel3 = [(AirDropHeaderView *)v10 titleLabel];
    trailingAnchor = [titleLabel3 trailingAnchor];
    layoutMarginsGuide2 = [(AirDropHeaderView *)v10 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v14 addObject:v24];

    titleLabel4 = [(AirDropHeaderView *)v10 titleLabel];
    topAnchor = [titleLabel4 topAnchor];
    topAnchor2 = [(AirDropHeaderView *)v10 topAnchor];
    v28 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v13];
    [v14 addObject:v28];

    titleLabel5 = [(AirDropHeaderView *)v10 titleLabel];
    bottomAnchor = [titleLabel5 bottomAnchor];
    bottomAnchor2 = [(AirDropHeaderView *)v10 bottomAnchor];
    v32 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v12];
    [v14 addObject:v32];

    [NSLayoutConstraint activateConstraints:v14];
  }

  return v3;
}

@end