@interface PUOneUpChromeViewController
- (BOOL)isVideoTimelineControlInteracting;
- (BOOL)shouldAllowGestureToBeginAt:(id)at;
- (CGRect)oneUpActionsControllerPopoverSourceRectIn:(id)in actionType:(unint64_t)type;
- (NSArray)additionalInternalOneUpMenuElements;
- (PUOneUpChromeViewController)initWithBrowsingSession:(id)session actionsController:(id)controller;
- (PUOneUpChromeViewControllerDelegate)delegate;
- (UIColor)backgroundColorOverride;
- (UIEdgeInsets)additionalActionInfoEdgeInsets;
- (UIEdgeInsets)contentDecorationAdditionalInsets;
- (UIEdgeInsets)contentGuideInsets;
- (UIEdgeInsets)contentGuideInsetsForViewSize:(CGSize)size;
- (UIEdgeInsets)toolbarInsetsForViewSize:(CGSize)size;
- (UIView)ppt_scrubberView;
- (UIView)view;
- (double)horizontalGuideInset;
- (id)chromeVisibilityAnimationDurationProvider;
- (id)oneUpActionsControllerPopoverSourceViewWithActionType:(unint64_t)type;
- (void)invalidateIsDeviceUnlocked;
- (void)setAdditionalActionInfoEdgeInsets:(UIEdgeInsets)insets;
- (void)setAirplayInfoWithShouldShowAirPlayButton:(BOOL)button isDisplayingContentOnSecondScreen:(BOOL)screen;
- (void)setBackgroundColorOverride:(id)override;
- (void)setBottomSafeAreaInset:(double)inset;
- (void)setChromeVisibilityAnimationDurationProvider:(id)provider;
- (void)setContentDecorationAdditionalInsets:(UIEdgeInsets)insets;
- (void)setContentGuideInsets:(UIEdgeInsets)insets;
- (void)setDelegate:(id)delegate;
- (void)setIsRotating:(BOOL)rotating;
- (void)setTopSafeAreaInset:(double)inset;
- (void)updateDismissalStateWithIsInteractivelyDismissing:(BOOL)dismissing dismissalProgress:(double)progress;
- (void)updateIsDeviceLocked;
- (void)updateIsDeviceUnlockedIfNeeded;
- (void)updatePresentingViewController;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withCoordinator:(id)coordinator;
@end

@implementation PUOneUpChromeViewController

- (PUOneUpChromeViewController)initWithBrowsingSession:(id)session actionsController:(id)controller
{
  sessionCopy = session;
  swift_unknownObjectRetain();
  OneUpChromeViewController.init(browsingSession:actionsController:)();
  return result;
}

- (UIView)ppt_scrubberView
{
  selfCopy = self;
  v3 = sub_1B37405CC();

  return v3;
}

- (double)horizontalGuideInset
{
  selfCopy = self;
  v3 = sub_1B374069C();

  return v3;
}

- (id)chromeVisibilityAnimationDurationProvider
{
  selfCopy = self;
  v3 = sub_1B3740788();
  v5 = v4;

  if (v3)
  {
    v7[4] = v3;
    v7[5] = v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1B37407B4;
    v7[3] = &block_descriptor_54;
    v3 = _Block_copy(v7);
  }

  return v3;
}

- (void)setChromeVisibilityAnimationDurationProvider:(id)provider
{
  v4 = _Block_copy(provider);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
  }

  selfCopy = self;
  sub_1B37408A4();
}

- (void)invalidateIsDeviceUnlocked
{
  selfCopy = self;
  sub_1B37409A8();
}

- (void)updateIsDeviceUnlockedIfNeeded
{
  selfCopy = self;
  sub_1B3740A18();
}

- (void)setIsRotating:(BOOL)rotating
{
  selfCopy = self;
  sub_1B3740B08(rotating);
}

- (void)setTopSafeAreaInset:(double)inset
{
  selfCopy = self;
  sub_1B3740BE0(inset);
}

- (void)setBottomSafeAreaInset:(double)inset
{
  selfCopy = self;
  sub_1B3740CB8(inset);
}

- (void)updateIsDeviceLocked
{
  selfCopy = self;
  sub_1B3741468();
}

- (BOOL)shouldAllowGestureToBeginAt:(id)at
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_1B374158C(at);
  swift_unknownObjectRelease();

  return v6;
}

- (void)updateDismissalStateWithIsInteractivelyDismissing:(BOOL)dismissing dismissalProgress:(double)progress
{
  selfCopy = self;
  sub_1B3741648(dismissing, progress);
}

- (void)setAirplayInfoWithShouldShowAirPlayButton:(BOOL)button isDisplayingContentOnSecondScreen:(BOOL)screen
{
  selfCopy = self;
  sub_1B3741850();
}

- (UIView)view
{
  v2 = sub_1B3740578();

  return v2;
}

- (void)viewWillTransitionToSize:(CGSize)size withCoordinator:(id)coordinator
{
  swift_unknownObjectRetain();
  selfCopy = self;
  OneUpChromeViewController.viewWillTransition(to:with:)(coordinator);
  swift_unknownObjectRelease();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  OneUpChromeViewController.viewWillLayoutSubviews()();
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  windowCopy = window;
  selfCopy = self;
  OneUpChromeViewController.viewDidMove(to:shouldAppearOrDisappear:)(selfCopy, 0);
}

- (PUOneUpChromeViewControllerDelegate)delegate
{
  v2 = OneUpChromeViewController.delegate.getter();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  OneUpChromeViewController.delegate.setter();
}

- (UIEdgeInsets)contentGuideInsets
{
  v2 = OneUpChromeViewController.contentGuideInsets.getter();
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setContentGuideInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  selfCopy = self;
  sub_1B3744DFC(&OBJC_IVAR___PUOneUpChromeViewController_contentGuideInsets, top, left, bottom, right);
}

- (UIColor)backgroundColorOverride
{
  v2 = OneUpChromeViewController.backgroundColorOverride.getter();

  return v2;
}

- (void)setBackgroundColorOverride:(id)override
{
  overrideCopy = override;
  selfCopy = self;
  sub_1B3744B50(override);
}

- (UIEdgeInsets)contentDecorationAdditionalInsets
{
  v2 = OneUpChromeViewController.contentDecorationAdditionalInsets.getter();
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setContentDecorationAdditionalInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  selfCopy = self;
  sub_1B3744DFC(&OBJC_IVAR___PUOneUpChromeViewController_contentDecorationAdditionalInsets, top, left, bottom, right);
}

- (UIEdgeInsets)additionalActionInfoEdgeInsets
{
  v2 = OneUpChromeViewController.additionalActionInfoEdgeInsets.getter();
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setAdditionalActionInfoEdgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  selfCopy = self;
  sub_1B3744DFC(&OBJC_IVAR___PUOneUpChromeViewController_additionalActionInfoEdgeInsets, top, left, bottom, right);
}

- (BOOL)isVideoTimelineControlInteracting
{
  selfCopy = self;
  v3 = sub_1B3745138();

  return v3 & 1;
}

- (void)updatePresentingViewController
{
  selfCopy = self;
  OneUpChromeViewController.updatePresentingViewController()();
}

- (UIEdgeInsets)contentGuideInsetsForViewSize:(CGSize)size
{
  sub_1B37463F8(self, a2, sub_1B37455D8);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (UIEdgeInsets)toolbarInsetsForViewSize:(CGSize)size
{
  sub_1B37463F8(self, a2, sub_1B3745FB8);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (NSArray)additionalInternalOneUpMenuElements
{
  selfCopy = self;
  sub_1B3746A58();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8525A0);
  v3 = sub_1B3C9C778();

  return v3;
}

- (id)oneUpActionsControllerPopoverSourceViewWithActionType:(unint64_t)type
{
  selfCopy = self;
  OneUpChromeViewController.oneUpActionsControllerPopoverSourceView(actionType:)();
  v5 = v4;

  return v5;
}

- (CGRect)oneUpActionsControllerPopoverSourceRectIn:(id)in actionType:(unint64_t)type
{
  v4 = OneUpChromeViewController.oneUpActionsControllerPopoverSourceRect(in:actionType:)();
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

@end