@interface WFTriggerDisplayInfo
- (WFTriggerDisplayInfo)initWithLocalizedTitle:(id)a3 localizedDescription:(id)a4 actionIcons:(id)a5 triggerClass:(Class)a6;
@end

@implementation WFTriggerDisplayInfo

- (WFTriggerDisplayInfo)initWithLocalizedTitle:(id)a3 localizedDescription:(id)a4 actionIcons:(id)a5 triggerClass:(Class)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v18.receiver = self;
  v18.super_class = WFTriggerDisplayInfo;
  v14 = [(WFTriggerDisplayInfo *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_localizedTitle, a3);
    objc_storeStrong(&v15->_localizedDescription, a4);
    objc_storeStrong(&v15->_actionIcons, a5);
    objc_storeStrong(&v15->_triggerClass, a6);
    v16 = v15;
  }

  return v15;
}

@end