@interface SKUIReviewInAppRatingAction
+ (id)actionWithCustomContentViewController:(id)a3;
- (void)setCustomEnabledState:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
@end

@implementation SKUIReviewInAppRatingAction

+ (id)actionWithCustomContentViewController:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___SKUIReviewInAppRatingAction;
  v3 = objc_msgSendSuper2(&v5, sel_actionWithCustomContentViewController_, a3);
  [v3 setCustomEnabledState:{objc_msgSend(v3, "isEnabled")}];

  return v3;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = SKUIReviewInAppRatingAction;
  [(UIInterfaceAction *)&v5 setEnabled:?];
  [(SKUIReviewInAppRatingAction *)self setCustomEnabledState:v3];
}

- (void)setCustomEnabledState:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIInterfaceAction *)self customContentViewController];
  if (v5)
  {
    v6 = v5;
    v7 = [(UIInterfaceAction *)self customContentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [(UIInterfaceAction *)self customContentViewController];
      [v9 setEnabled:v3];
    }
  }
}

@end