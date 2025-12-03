@interface TVRatingBadgeLayout
+ (id)layoutWithLayout:(id)layout element:(id)element;
@end

@implementation TVRatingBadgeLayout

+ (id)layoutWithLayout:(id)layout element:(id)element
{
  layoutCopy = layout;
  elementCopy = element;
  v8 = layoutCopy;
  v9 = v8;
  if (!v8)
  {
    v9 = objc_opt_new();
  }

  v21.receiver = self;
  v21.super_class = &OBJC_METACLASS___TVRatingBadgeLayout;
  v10 = objc_msgSendSuper2(&v21, sel_layoutWithLayout_element_, v9, elementCopy);
  style = [elementCopy style];
  tintColor = [v9 tintColor];

  if (!tintColor)
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [v9 setTintColor:whiteColor];
  }

  tv_tintColor2 = [style tv_tintColor2];
  color = [tv_tintColor2 color];

  if (color)
  {
    [v9 setFillColor:color];
  }

  fillColor = [v9 fillColor];

  if (!fillColor)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
    [v9 setFillColor:blackColor];
  }

  tv_ratingStyle = [style tv_ratingStyle];
  if (tv_ratingStyle)
  {
    [v9 setRatingStyle:tv_ratingStyle];
    [v9 setRatingStyleAXSmall:tv_ratingStyle];
    [v9 setRatingStyleAXLarge:tv_ratingStyle];
  }

  v19 = [style tv_valueForStyle:@"tv-interitem-spacing"];

  if (v19)
  {
    [style tv_interitemSpacing];
    [v9 setInteritemSpacing:?];
    [v9 interitemSpacing];
    [v9 setInteritemSpacingAXSmall:?];
    [v9 interitemSpacing];
    [v9 setInteritemSpacingAXLarge:?];
  }

  return v9;
}

@end