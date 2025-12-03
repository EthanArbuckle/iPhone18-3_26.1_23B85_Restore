@interface WFTriggerDisplayInfo
- (WFTriggerDisplayInfo)initWithLocalizedTitle:(id)title localizedDescription:(id)description actionIcons:(id)icons triggerClass:(Class)class;
@end

@implementation WFTriggerDisplayInfo

- (WFTriggerDisplayInfo)initWithLocalizedTitle:(id)title localizedDescription:(id)description actionIcons:(id)icons triggerClass:(Class)class
{
  titleCopy = title;
  descriptionCopy = description;
  iconsCopy = icons;
  v18.receiver = self;
  v18.super_class = WFTriggerDisplayInfo;
  v14 = [(WFTriggerDisplayInfo *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_localizedTitle, title);
    objc_storeStrong(&v15->_localizedDescription, description);
    objc_storeStrong(&v15->_actionIcons, icons);
    objc_storeStrong(&v15->_triggerClass, class);
    v16 = v15;
  }

  return v15;
}

@end