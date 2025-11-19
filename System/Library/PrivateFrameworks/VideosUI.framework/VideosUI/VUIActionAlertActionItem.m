@interface VUIActionAlertActionItem
- (VUIActionAlertActionItem)initWithTitle:(id)a3 titleImage:(id)a4 action:(id)a5 metrics:(id)a6;
@end

@implementation VUIActionAlertActionItem

- (VUIActionAlertActionItem)initWithTitle:(id)a3 titleImage:(id)a4 action:(id)a5 metrics:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = VUIActionAlertActionItem;
  v15 = [(VUIActionAlertActionItem *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_title, a3);
    objc_storeStrong(&v16->_titleImage, a4);
    objc_storeStrong(&v16->_action, a5);
    objc_storeStrong(&v16->_metrics, a6);
  }

  return v16;
}

@end