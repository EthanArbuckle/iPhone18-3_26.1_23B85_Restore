@interface PadRootSideBarProfileView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (id)initInView:(id)view withFrame:(CGRect)frame withItemList:(id)list;
- (void)layoutSubviews;
@end

@implementation PadRootSideBarProfileView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1E3A15B34();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  width = size.width;
  selfCopy = self;
  v7 = sub_1E3A15C40(width);
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (id)initInView:(id)view withFrame:(CGRect)frame withItemList:(id)list
{
  if (list)
  {
    sub_1E42062B4();
  }

  viewCopy = view;
  sub_1E3A15D3C();
}

@end