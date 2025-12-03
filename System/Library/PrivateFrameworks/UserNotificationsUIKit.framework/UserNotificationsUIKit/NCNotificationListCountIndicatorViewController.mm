@interface NCNotificationListCountIndicatorViewController
- (CGRect)visibleFrame;
- (NCNotificationListCountIndicatorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (NCNotificationListCountIndicatorViewControllerDelegate)delegate;
- (NSString)incomingTitle;
- (UIEdgeInsets)edgeInsets;
- (void)adjustForLegibilitySettingsChange:(id)change;
- (void)loadView;
- (void)notificationListCountIndicatorViewLongPressed:(id)pressed presentingView:(id)view;
- (void)notificationListCountIndicatorViewTapped:(id)tapped;
- (void)setActiveDNDModeConfiguration:(id)configuration;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)category;
- (void)setCount:(int64_t)count;
- (void)setDisplayStyleSetting:(int64_t)setting;
- (void)setEdgeInsets:(UIEdgeInsets)insets;
- (void)setIncomingTitle:(id)title;
- (void)setVisibleFrame:(CGRect)frame;
- (void)viewDidLoad;
@end

@implementation NCNotificationListCountIndicatorViewController

- (void)setCount:(int64_t)count
{
  v4 = *(self + OBJC_IVAR___NCNotificationListCountIndicatorViewController_count);
  *(self + OBJC_IVAR___NCNotificationListCountIndicatorViewController_count) = count;
  if (v4 != count)
  {
    selfCopy = self;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8190);
    sub_21E8D919C(&unk_280D03F18, &qword_27CED8190);
    sub_21E929DB8();
  }
}

- (void)setIncomingTitle:(id)title
{
  if (title)
  {
    v4 = sub_21E92A458();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_21E786B68(v4, v6);
}

- (void)adjustForLegibilitySettingsChange:(id)change
{
  selfCopy = self;
  changeCopy = change;
  [(NCNotificationListCountIndicatorViewController *)selfCopy loadViewIfNeeded];
  view = [(NCNotificationListCountIndicatorViewController *)selfCopy view];
  if (view)
  {
    v6 = view;
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() adjustForLegibilitySettingsChange_];
  }

  else
  {
    __break(1u);
  }
}

- (NCNotificationListCountIndicatorViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_21E92A458();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return NCNotificationListCountIndicatorViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (void)viewDidLoad
{
  selfCopy = self;
  NCNotificationListCountIndicatorViewController.viewDidLoad()();
}

- (void)loadView
{
  v3 = objc_allocWithZone(NCNotificationListCountIndicatorView);
  selfCopy = self;
  initWithFrame_ = [v3 initWithFrame_];
  [(NCNotificationListCountIndicatorViewController *)selfCopy setView:initWithFrame_];
}

- (NCNotificationListCountIndicatorViewControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setActiveDNDModeConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_21E914D78(configuration);
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

- (void)setDisplayStyleSetting:(int64_t)setting
{
  selfCopy = self;
  sub_21E914F48(setting);
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

- (void)setEdgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  selfCopy = self;
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

- (void)setVisibleFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = *(self + OBJC_IVAR___NCNotificationListCountIndicatorViewController_visibleFrame);
  v8 = *(self + OBJC_IVAR___NCNotificationListCountIndicatorViewController_visibleFrame + 8);
  v9 = *(self + OBJC_IVAR___NCNotificationListCountIndicatorViewController_visibleFrame + 16);
  v10 = *(self + OBJC_IVAR___NCNotificationListCountIndicatorViewController_visibleFrame + 24);
  *(self + OBJC_IVAR___NCNotificationListCountIndicatorViewController_visibleFrame) = frame;
  selfCopy = self;
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

- (void)setAdjustsFontForContentSizeCategory:(BOOL)category
{
  categoryCopy = category;
  selfCopy = self;
  [(NCNotificationListCountIndicatorViewController *)selfCopy loadViewIfNeeded];
  view = [(NCNotificationListCountIndicatorViewController *)selfCopy view];
  if (view)
  {
    v5 = view;
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setAdjustsFontForContentSizeCategory_];
  }

  else
  {
    __break(1u);
  }
}

- (void)notificationListCountIndicatorViewTapped:(id)tapped
{
  selfCopy = self;
  delegate = [(NCNotificationListCountIndicatorViewController *)selfCopy delegate];
  if (delegate)
  {
    [(NCNotificationListCountIndicatorViewControllerDelegate *)delegate notificationListCountIndicatorViewControllerTapped:selfCopy];
    swift_unknownObjectRelease();
  }
}

- (void)notificationListCountIndicatorViewLongPressed:(id)pressed presentingView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  activeDNDModeConfiguration = [(NCNotificationListCountIndicatorViewController *)selfCopy activeDNDModeConfiguration];
  if (activeDNDModeConfiguration)
  {

    delegate = [(NCNotificationListCountIndicatorViewController *)selfCopy delegate];
    if (delegate)
    {
      [(NCNotificationListCountIndicatorViewControllerDelegate *)delegate notificationListCountIndicatorViewControllerLongPressed:selfCopy presentingView:viewCopy];
      swift_unknownObjectRelease();
    }
  }
}

@end