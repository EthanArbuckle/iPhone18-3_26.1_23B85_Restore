@interface PadRootSideBarProfileView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (id)initInView:(id)a3 withFrame:(CGRect)a4 withItemList:(id)a5;
- (void)layoutSubviews;
@end

@implementation PadRootSideBarProfileView

- (void)layoutSubviews
{
  v2 = self;
  sub_1E3A15B34();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  width = a3.width;
  v6 = self;
  v7 = sub_1E3A15C40(width);
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (id)initInView:(id)a3 withFrame:(CGRect)a4 withItemList:(id)a5
{
  if (a5)
  {
    sub_1E42062B4();
  }

  v6 = a3;
  sub_1E3A15D3C();
}

@end