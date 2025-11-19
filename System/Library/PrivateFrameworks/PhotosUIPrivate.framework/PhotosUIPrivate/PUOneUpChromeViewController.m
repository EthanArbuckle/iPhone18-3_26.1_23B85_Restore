@interface PUOneUpChromeViewController
- (BOOL)isVideoTimelineControlInteracting;
- (BOOL)shouldAllowGestureToBeginAt:(id)a3;
- (CGRect)oneUpActionsControllerPopoverSourceRectIn:(id)a3 actionType:(unint64_t)a4;
- (NSArray)additionalInternalOneUpMenuElements;
- (PUOneUpChromeViewController)initWithBrowsingSession:(id)a3 actionsController:(id)a4;
- (PUOneUpChromeViewControllerDelegate)delegate;
- (UIColor)backgroundColorOverride;
- (UIEdgeInsets)additionalActionInfoEdgeInsets;
- (UIEdgeInsets)contentDecorationAdditionalInsets;
- (UIEdgeInsets)contentGuideInsets;
- (UIEdgeInsets)contentGuideInsetsForViewSize:(CGSize)a3;
- (UIEdgeInsets)toolbarInsetsForViewSize:(CGSize)a3;
- (UIView)ppt_scrubberView;
- (UIView)view;
- (double)horizontalGuideInset;
- (id)chromeVisibilityAnimationDurationProvider;
- (id)oneUpActionsControllerPopoverSourceViewWithActionType:(unint64_t)a3;
- (void)invalidateIsDeviceUnlocked;
- (void)setAdditionalActionInfoEdgeInsets:(UIEdgeInsets)a3;
- (void)setAirplayInfoWithShouldShowAirPlayButton:(BOOL)a3 isDisplayingContentOnSecondScreen:(BOOL)a4;
- (void)setBackgroundColorOverride:(id)a3;
- (void)setBottomSafeAreaInset:(double)a3;
- (void)setChromeVisibilityAnimationDurationProvider:(id)a3;
- (void)setContentDecorationAdditionalInsets:(UIEdgeInsets)a3;
- (void)setContentGuideInsets:(UIEdgeInsets)a3;
- (void)setDelegate:(id)a3;
- (void)setIsRotating:(BOOL)a3;
- (void)setTopSafeAreaInset:(double)a3;
- (void)updateDismissalStateWithIsInteractivelyDismissing:(BOOL)a3 dismissalProgress:(double)a4;
- (void)updateIsDeviceLocked;
- (void)updateIsDeviceUnlockedIfNeeded;
- (void)updatePresentingViewController;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withCoordinator:(id)a4;
@end

@implementation PUOneUpChromeViewController

- (PUOneUpChromeViewController)initWithBrowsingSession:(id)a3 actionsController:(id)a4
{
  v4 = a3;
  swift_unknownObjectRetain();
  OneUpChromeViewController.init(browsingSession:actionsController:)();
  return result;
}

- (UIView)ppt_scrubberView
{
  v2 = self;
  v3 = sub_1B37405CC();

  return v3;
}

- (double)horizontalGuideInset
{
  v2 = self;
  v3 = sub_1B374069C();

  return v3;
}

- (id)chromeVisibilityAnimationDurationProvider
{
  v2 = self;
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

- (void)setChromeVisibilityAnimationDurationProvider:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
  }

  v5 = self;
  sub_1B37408A4();
}

- (void)invalidateIsDeviceUnlocked
{
  v2 = self;
  sub_1B37409A8();
}

- (void)updateIsDeviceUnlockedIfNeeded
{
  v2 = self;
  sub_1B3740A18();
}

- (void)setIsRotating:(BOOL)a3
{
  v4 = self;
  sub_1B3740B08(a3);
}

- (void)setTopSafeAreaInset:(double)a3
{
  v4 = self;
  sub_1B3740BE0(a3);
}

- (void)setBottomSafeAreaInset:(double)a3
{
  v4 = self;
  sub_1B3740CB8(a3);
}

- (void)updateIsDeviceLocked
{
  v2 = self;
  sub_1B3741468();
}

- (BOOL)shouldAllowGestureToBeginAt:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_1B374158C(a3);
  swift_unknownObjectRelease();

  return v6;
}

- (void)updateDismissalStateWithIsInteractivelyDismissing:(BOOL)a3 dismissalProgress:(double)a4
{
  v6 = self;
  sub_1B3741648(a3, a4);
}

- (void)setAirplayInfoWithShouldShowAirPlayButton:(BOOL)a3 isDisplayingContentOnSecondScreen:(BOOL)a4
{
  v4 = self;
  sub_1B3741850();
}

- (UIView)view
{
  v2 = sub_1B3740578();

  return v2;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withCoordinator:(id)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  OneUpChromeViewController.viewWillTransition(to:with:)(a4);
  swift_unknownObjectRelease();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  OneUpChromeViewController.viewWillLayoutSubviews()();
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  OneUpChromeViewController.viewDidMove(to:shouldAppearOrDisappear:)(v6, 0);
}

- (PUOneUpChromeViewControllerDelegate)delegate
{
  v2 = OneUpChromeViewController.delegate.getter();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
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

- (void)setContentGuideInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = self;
  sub_1B3744DFC(&OBJC_IVAR___PUOneUpChromeViewController_contentGuideInsets, top, left, bottom, right);
}

- (UIColor)backgroundColorOverride
{
  v2 = OneUpChromeViewController.backgroundColorOverride.getter();

  return v2;
}

- (void)setBackgroundColorOverride:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1B3744B50(a3);
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

- (void)setContentDecorationAdditionalInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = self;
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

- (void)setAdditionalActionInfoEdgeInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = self;
  sub_1B3744DFC(&OBJC_IVAR___PUOneUpChromeViewController_additionalActionInfoEdgeInsets, top, left, bottom, right);
}

- (BOOL)isVideoTimelineControlInteracting
{
  v2 = self;
  v3 = sub_1B3745138();

  return v3 & 1;
}

- (void)updatePresentingViewController
{
  v2 = self;
  OneUpChromeViewController.updatePresentingViewController()();
}

- (UIEdgeInsets)contentGuideInsetsForViewSize:(CGSize)a3
{
  sub_1B37463F8(self, a2, sub_1B37455D8);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (UIEdgeInsets)toolbarInsetsForViewSize:(CGSize)a3
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
  v2 = self;
  sub_1B3746A58();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8525A0);
  v3 = sub_1B3C9C778();

  return v3;
}

- (id)oneUpActionsControllerPopoverSourceViewWithActionType:(unint64_t)a3
{
  v3 = self;
  OneUpChromeViewController.oneUpActionsControllerPopoverSourceView(actionType:)();
  v5 = v4;

  return v5;
}

- (CGRect)oneUpActionsControllerPopoverSourceRectIn:(id)a3 actionType:(unint64_t)a4
{
  v4 = OneUpChromeViewController.oneUpActionsControllerPopoverSourceRect(in:actionType:)();
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

@end