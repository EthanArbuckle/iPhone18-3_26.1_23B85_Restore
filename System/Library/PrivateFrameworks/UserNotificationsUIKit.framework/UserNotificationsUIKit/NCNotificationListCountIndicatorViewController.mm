@interface NCNotificationListCountIndicatorViewController
- (CGRect)visibleFrame;
- (NCNotificationListCountIndicatorViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (NCNotificationListCountIndicatorViewControllerDelegate)delegate;
- (NSString)incomingTitle;
- (UIEdgeInsets)edgeInsets;
- (void)adjustForLegibilitySettingsChange:(id)a3;
- (void)loadView;
- (void)notificationListCountIndicatorViewLongPressed:(id)a3 presentingView:(id)a4;
- (void)notificationListCountIndicatorViewTapped:(id)a3;
- (void)setActiveDNDModeConfiguration:(id)a3;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3;
- (void)setCount:(int64_t)a3;
- (void)setDisplayStyleSetting:(int64_t)a3;
- (void)setEdgeInsets:(UIEdgeInsets)a3;
- (void)setIncomingTitle:(id)a3;
- (void)setVisibleFrame:(CGRect)a3;
- (void)viewDidLoad;
@end

@implementation NCNotificationListCountIndicatorViewController

- (void)setCount:(int64_t)a3
{
  v4 = *(self + OBJC_IVAR___NCNotificationListCountIndicatorViewController_count);
  *(self + OBJC_IVAR___NCNotificationListCountIndicatorViewController_count) = a3;
  if (v4 != a3)
  {
    v5 = self;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8190);
    sub_21E8D919C(&unk_280D03F18, &qword_27CED8190);
    sub_21E929DB8();
  }
}

- (void)setIncomingTitle:(id)a3
{
  if (a3)
  {
    v4 = sub_21E92A458();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_21E786B68(v4, v6);
}

- (void)adjustForLegibilitySettingsChange:(id)a3
{
  v7 = self;
  v4 = a3;
  [(NCNotificationListCountIndicatorViewController *)v7 loadViewIfNeeded];
  v5 = [(NCNotificationListCountIndicatorViewController *)v7 view];
  if (v5)
  {
    v6 = v5;
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() adjustForLegibilitySettingsChange_];
  }

  else
  {
    __break(1u);
  }
}

- (NCNotificationListCountIndicatorViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_21E92A458();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return NCNotificationListCountIndicatorViewController.init(nibName:bundle:)(v5, v7, a4);
}

- (void)viewDidLoad
{
  v2 = self;
  NCNotificationListCountIndicatorViewController.viewDidLoad()();
}

- (void)loadView
{
  v3 = objc_allocWithZone(NCNotificationListCountIndicatorView);
  v5 = self;
  v4 = [v3 initWithFrame_];
  [(NCNotificationListCountIndicatorViewController *)v5 setView:v4];
}

- (NCNotificationListCountIndicatorViewControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setActiveDNDModeConfiguration:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_21E914D78(a3);
}

- (NSString)incomingTitle
{
  if (*(self + OBJC_IVAR___NCNotificationListCountIndicatorViewController_incomingTitle + 8))
  {

    v2 = sub_21E92A428();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setDisplayStyleSetting:(int64_t)a3
{
  v4 = self;
  sub_21E914F48(a3);
}

- (UIEdgeInsets)edgeInsets
{
  v2 = *(self + OBJC_IVAR___NCNotificationListCountIndicatorViewController_edgeInsets);
  v3 = *(self + OBJC_IVAR___NCNotificationListCountIndicatorViewController_edgeInsets + 8);
  v4 = *(self + OBJC_IVAR___NCNotificationListCountIndicatorViewController_edgeInsets + 16);
  v5 = *(self + OBJC_IVAR___NCNotificationListCountIndicatorViewController_edgeInsets + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setEdgeInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v9 = self;
  v7.f64[0] = top;
  v8.f64[0] = bottom;
  sub_21E915118(v7, left, v8, right);
}

- (CGRect)visibleFrame
{
  v2 = *(self + OBJC_IVAR___NCNotificationListCountIndicatorViewController_visibleFrame);
  v3 = *(self + OBJC_IVAR___NCNotificationListCountIndicatorViewController_visibleFrame + 8);
  v4 = *(self + OBJC_IVAR___NCNotificationListCountIndicatorViewController_visibleFrame + 16);
  v5 = *(self + OBJC_IVAR___NCNotificationListCountIndicatorViewController_visibleFrame + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setVisibleFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = *(self + OBJC_IVAR___NCNotificationListCountIndicatorViewController_visibleFrame);
  v8 = *(self + OBJC_IVAR___NCNotificationListCountIndicatorViewController_visibleFrame + 8);
  v9 = *(self + OBJC_IVAR___NCNotificationListCountIndicatorViewController_visibleFrame + 16);
  v10 = *(self + OBJC_IVAR___NCNotificationListCountIndicatorViewController_visibleFrame + 24);
  *(self + OBJC_IVAR___NCNotificationListCountIndicatorViewController_visibleFrame) = a3;
  v11 = self;
  v13.origin.x = v7;
  v13.origin.y = v8;
  v13.size.width = v9;
  v13.size.height = v10;
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  if (!CGRectEqualToRect(v13, v14))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8190);
    sub_21E8D919C(&unk_280D03F18, &qword_27CED8190);
    sub_21E929DB8();
  }
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3
{
  v3 = a3;
  v6 = self;
  [(NCNotificationListCountIndicatorViewController *)v6 loadViewIfNeeded];
  v4 = [(NCNotificationListCountIndicatorViewController *)v6 view];
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setAdjustsFontForContentSizeCategory_];
  }

  else
  {
    __break(1u);
  }
}

- (void)notificationListCountIndicatorViewTapped:(id)a3
{
  v4 = self;
  v3 = [(NCNotificationListCountIndicatorViewController *)v4 delegate];
  if (v3)
  {
    [(NCNotificationListCountIndicatorViewControllerDelegate *)v3 notificationListCountIndicatorViewControllerTapped:v4];
    swift_unknownObjectRelease();
  }
}

- (void)notificationListCountIndicatorViewLongPressed:(id)a3 presentingView:(id)a4
{
  v5 = a4;
  v8 = self;
  v6 = [(NCNotificationListCountIndicatorViewController *)v8 activeDNDModeConfiguration];
  if (v6)
  {

    v7 = [(NCNotificationListCountIndicatorViewController *)v8 delegate];
    if (v7)
    {
      [(NCNotificationListCountIndicatorViewControllerDelegate *)v7 notificationListCountIndicatorViewControllerLongPressed:v8 presentingView:v5];
      swift_unknownObjectRelease();
    }
  }
}

@end