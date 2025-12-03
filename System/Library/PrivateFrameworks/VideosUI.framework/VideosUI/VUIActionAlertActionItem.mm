@interface VUIActionAlertActionItem
- (VUIActionAlertActionItem)initWithTitle:(id)title titleImage:(id)image action:(id)action metrics:(id)metrics;
@end

@implementation VUIActionAlertActionItem

- (VUIActionAlertActionItem)initWithTitle:(id)title titleImage:(id)image action:(id)action metrics:(id)metrics
{
  titleCopy = title;
  imageCopy = image;
  actionCopy = action;
  metricsCopy = metrics;
  v18.receiver = self;
  v18.super_class = VUIActionAlertActionItem;
  v15 = [(VUIActionAlertActionItem *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_title, title);
    objc_storeStrong(&v16->_titleImage, image);
    objc_storeStrong(&v16->_action, action);
    objc_storeStrong(&v16->_metrics, metrics);
  }

  return v16;
}

@end