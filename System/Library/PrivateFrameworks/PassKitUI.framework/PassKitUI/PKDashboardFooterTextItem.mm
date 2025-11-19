@interface PKDashboardFooterTextItem
+ (id)initWithFDICConfiguration:(id)a3;
+ (id)itemWithFooterText:(id)a3;
- (UIEdgeInsets)customContentInsets;
@end

@implementation PKDashboardFooterTextItem

+ (id)itemWithFooterText:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKDashboardFooterTextItem);
  [(PKDashboardFooterTextItem *)v4 setFooterText:v3];

  [(PKDashboardFooterTextItem *)v4 setBottomInsetType:1];
  [(PKDashboardFooterTextItem *)v4 setUseCustomContentInsets:0];

  return v4;
}

+ (id)initWithFDICConfiguration:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKDashboardFooterTextItem);
  [(PKDashboardFooterTextItem *)v4 setFDICConfiguration:v3];

  [(PKDashboardFooterTextItem *)v4 setBottomInsetType:0];
  [(PKDashboardFooterTextItem *)v4 setUseCustomContentInsets:0];

  return v4;
}

- (UIEdgeInsets)customContentInsets
{
  top = self->_customContentInsets.top;
  left = self->_customContentInsets.left;
  bottom = self->_customContentInsets.bottom;
  right = self->_customContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end