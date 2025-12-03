@interface PKDashboardFooterTextItem
+ (id)initWithFDICConfiguration:(id)configuration;
+ (id)itemWithFooterText:(id)text;
- (UIEdgeInsets)customContentInsets;
@end

@implementation PKDashboardFooterTextItem

+ (id)itemWithFooterText:(id)text
{
  textCopy = text;
  v4 = objc_alloc_init(PKDashboardFooterTextItem);
  [(PKDashboardFooterTextItem *)v4 setFooterText:textCopy];

  [(PKDashboardFooterTextItem *)v4 setBottomInsetType:1];
  [(PKDashboardFooterTextItem *)v4 setUseCustomContentInsets:0];

  return v4;
}

+ (id)initWithFDICConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = objc_alloc_init(PKDashboardFooterTextItem);
  [(PKDashboardFooterTextItem *)v4 setFDICConfiguration:configurationCopy];

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