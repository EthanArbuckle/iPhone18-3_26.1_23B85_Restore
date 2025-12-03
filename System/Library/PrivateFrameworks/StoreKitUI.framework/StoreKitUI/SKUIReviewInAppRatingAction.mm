@interface SKUIReviewInAppRatingAction
+ (id)actionWithCustomContentViewController:(id)controller;
- (void)setCustomEnabledState:(BOOL)state;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation SKUIReviewInAppRatingAction

+ (id)actionWithCustomContentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___SKUIReviewInAppRatingAction;
  v3 = objc_msgSendSuper2(&v5, sel_actionWithCustomContentViewController_, controller);
  [v3 setCustomEnabledState:{objc_msgSend(v3, "isEnabled")}];

  return v3;
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5.receiver = self;
  v5.super_class = SKUIReviewInAppRatingAction;
  [(UIInterfaceAction *)&v5 setEnabled:?];
  [(SKUIReviewInAppRatingAction *)self setCustomEnabledState:enabledCopy];
}

- (void)setCustomEnabledState:(BOOL)state
{
  stateCopy = state;
  customContentViewController = [(UIInterfaceAction *)self customContentViewController];
  if (customContentViewController)
  {
    v6 = customContentViewController;
    customContentViewController2 = [(UIInterfaceAction *)self customContentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      customContentViewController3 = [(UIInterfaceAction *)self customContentViewController];
      [customContentViewController3 setEnabled:stateCopy];
    }
  }
}

@end