@interface TVRatingBadgeLayout
+ (id)layoutWithLayout:(id)a3 element:(id)a4;
@end

@implementation TVRatingBadgeLayout

+ (id)layoutWithLayout:(id)a3 element:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v8;
  if (!v8)
  {
    v9 = objc_opt_new();
  }

  v21.receiver = a1;
  v21.super_class = &OBJC_METACLASS___TVRatingBadgeLayout;
  v10 = objc_msgSendSuper2(&v21, sel_layoutWithLayout_element_, v9, v7);
  v11 = [v7 style];
  v12 = [v9 tintColor];

  if (!v12)
  {
    v13 = [MEMORY[0x277D75348] whiteColor];
    [v9 setTintColor:v13];
  }

  v14 = [v11 tv_tintColor2];
  v15 = [v14 color];

  if (v15)
  {
    [v9 setFillColor:v15];
  }

  v16 = [v9 fillColor];

  if (!v16)
  {
    v17 = [MEMORY[0x277D75348] blackColor];
    [v9 setFillColor:v17];
  }

  v18 = [v11 tv_ratingStyle];
  if (v18)
  {
    [v9 setRatingStyle:v18];
    [v9 setRatingStyleAXSmall:v18];
    [v9 setRatingStyleAXLarge:v18];
  }

  v19 = [v11 tv_valueForStyle:@"tv-interitem-spacing"];

  if (v19)
  {
    [v11 tv_interitemSpacing];
    [v9 setInteritemSpacing:?];
    [v9 interitemSpacing];
    [v9 setInteritemSpacingAXSmall:?];
    [v9 interitemSpacing];
    [v9 setInteritemSpacingAXLarge:?];
  }

  return v9;
}

@end