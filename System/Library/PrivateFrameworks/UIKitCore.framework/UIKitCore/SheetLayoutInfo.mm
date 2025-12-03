@interface SheetLayoutInfo
- (BOOL)_effectiveSolariumInsetsAndCornerRadiusEnabled;
- (BOOL)_hasParentSheet;
- (BOOL)_isAnyDescendantDragging;
- (BOOL)_isDimmingEnabled;
- (BOOL)_isEdgeAttached;
- (BOOL)_isExpanded;
- (BOOL)_isFunctionallyFullScreen;
- (BOOL)_isInteractionEnabled;
- (BOOL)_isInverted;
- (BOOL)_isModelDimmingEnabled;
- (BOOL)_isScrollInteractionEnabled;
- (BOOL)_shouldDimmingIgnoreTouches;
- (BOOL)_shouldPresentedViewControllerControlStatusBarAppearance;
- (CGRect)_containerBounds;
- (CGRect)_dismissSourceFrame;
- (CGRect)_effectiveKeyboardFrame;
- (CGRect)_frameOfPresentedViewInContainerView;
- (CGRect)_fullHeightPresentedViewFrame;
- (CGRect)_fullHeightUntransformedFrameForDepthLevel;
- (CGRect)_hostParentFullHeightUntransformedFrameForDepthLevel;
- (CGRect)_hostParentStackAlignmentFrame;
- (CGRect)_hostedDismissFrame;
- (CGRect)_hostedFrameOfPresentedViewInContainerView;
- (CGRect)_hostedUntransformedFrame;
- (CGRect)_keyboardFrame;
- (CGRect)_remoteKeyboardFrame;
- (CGRect)_sourceFrame;
- (CGRect)_stackAlignmentFrame;
- (CGRect)_transformedFrame;
- (CGRect)_untransformedFrame;
- (CGSize)_screenSize;
- (NSArray)_activeDetents;
- (NSArray)_detentValues;
- (NSArray)_detents;
- (UIEdgeInsets)_containerSafeAreaInsets;
- (UIEdgeInsets)_touchInsets;
- (UIRectCornerRadii)_hostedCornerRadii;
- (UIViewController)_presentedViewController;
- (UIViewController)_presentingViewController;
- (_TtC5UIKit15SheetLayoutInfo)init;
- (_UISheetLayoutInfo)_parentLayoutInfo;
- (_UISheetLayoutInfoDelegate)_delegate;
- (_UIViewMaterial)_background;
- (_UIViewMaterial)_largeBackground;
- (_UIViewMaterial)_nonLargeBackground;
- (double)_alpha;
- (double)_confinedPercentDimmed;
- (double)_confinedPercentLightened;
- (double)_currentDetentValue;
- (double)_depthLevel;
- (double)_fullDetentValue;
- (double)_grabberAlpha;
- (double)_invertedDepthLevel;
- (double)_magicShadowOpacity;
- (double)_maximumDetentValue;
- (double)_percentCapsular;
- (double)_percentDimmed;
- (double)_percentSafeAreaInsetToInclude;
- (double)_proposedDepthLevel;
- (double)_rubberBandExtentBeyondMaximumOffset;
- (double)_rubberBandExtentBeyondMinimumOffset;
- (double)_shadowOpacity;
- (double)_smallestNonDismissDetentOffset;
- (id)_currentOffsetGetter;
- (int64_t)_grabberAction;
- (int64_t)_indexOfActiveDetentForTappingGrabber;
- (int64_t)_indexOfCurrentActiveOrDismissDetent;
- (void)_boundingPathMayHaveChangedForView:(id)view relativeToBoundsOriginOnly:(BOOL)only;
- (void)_invalidateCurrentOffset;
- (void)_invalidateDetents;
- (void)_invalidatePreferredSize;
- (void)_layout;
- (void)_setAdditionalMinimumTopInset:(double)inset;
- (void)_setAllowsAsymmetricVerticalMargins:(BOOL)margins;
- (void)_setAllowsInteractiveDismissWhenFullScreen:(BOOL)screen;
- (void)_setBackgroundEffect:(void *)effect;
- (void)_setContainerSafeAreaInsets:(UIEdgeInsets)insets;
- (void)_setContainerTraitCollection:(id)collection;
- (void)_setContainerView:(id)view;
- (void)_setCurrentOffsetGetter:(id)getter;
- (void)_setDetents:(id)detents;
- (void)_setDisableSolariumInsets:(BOOL)insets;
- (void)_setDismissible:(BOOL)dismissible;
- (void)_setDragging:(BOOL)dragging;
- (void)_setGrabberBlurEnabled:(BOOL)enabled;
- (void)_setGrabberSpacing:(double)spacing;
- (void)_setHorizontalAlignment:(int64_t)alignment;
- (void)_setHostParentDepthLevel:(double)level;
- (void)_setInsetsContentViewForGrabber:(BOOL)grabber;
- (void)_setMarginInCompactHeight:(double)height;
- (void)_setMarginInRegularWidthRegularHeight:(double)height;
- (void)_setMode:(int64_t)mode;
- (void)_setPreferredShadowOpacity:(double)opacity;
- (void)_setPrefersScrollingExpandsToLargerDetentWhenScrolledToEdge:(BOOL)edge;
- (void)_setPrefersScrollingResizesWhenDetentDirectionIsDown:(BOOL)down;
- (void)_setPresentsWithGesture:(BOOL)gesture;
- (void)_setScreenSize:(CGSize)size;
- (void)_setSelectedDetentIdentifier:(id)identifier;
- (void)_setShadowRadius:(double)radius;
- (void)_setShouldDismissWhenTappedOutside:(BOOL)outside;
- (void)_setStandardAppearance:(id)appearance;
- (void)_setTucksIntoUnsafeAreaInCompactHeight:(BOOL)height;
- (void)_setWantsEdgeAttachedInCompactHeight:(BOOL)height;
- (void)_setWantsFullScreen:(BOOL)screen;
- (void)_setWantsGrabber:(BOOL)grabber;
- (void)_setWidthFollowsPreferredContentSizeWhenEdgeAttached:(BOOL)attached;
- (void)_setZooming:(BOOL)zooming;
- (void)set_indexOfCurrentActiveOrDismissDetentWasInvalidated:(id)invalidated;
- (void)set_rubberBandExtentBeyondMaximumOffsetWasInvalidated:(id)invalidated;
- (void)set_rubberBandExtentBeyondMinimumOffsetWasInvalidated:(id)invalidated;
@end

@implementation SheetLayoutInfo

- (void)_setBackgroundEffect:(void *)effect
{
  effectCopy = effect;
  selfCopy = self;
  sub_189101AA0(effect);
}

- (double)_maximumDetentValue
{
  selfCopy = self;
  v2 = sub_18910614C();

  return v2;
}

- (UIViewController)_presentingViewController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIViewController)_presentedViewController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)_setContainerView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_1890FEFF4(view);
}

- (void)_invalidatePreferredSize
{
  if (*(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 11) == 1)
  {
    *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 11) = 0;
    selfCopy = self;
    sub_1890FBCCC();
    sub_188E0F52C();
  }
}

- (void)_boundingPathMayHaveChangedForView:(id)view relativeToBoundsOriginOnly:(BOOL)only
{
  viewCopy = view;
  selfCopy = self;
  sub_18910F620();
}

- (CGRect)_containerBounds
{
  v2 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds);
  v3 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 8);
  v4 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 16);
  v5 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGSize)_screenSize
{
  v2 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_screenSize);
  v3 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_screenSize + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_setScreenSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  sub_1890FF248(width, height);
}

- (UIEdgeInsets)_containerSafeAreaInsets
{
  v2 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerSafeAreaInsets);
  v3 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerSafeAreaInsets + 8);
  v4 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerSafeAreaInsets + 16);
  v5 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerSafeAreaInsets + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)_setContainerSafeAreaInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  selfCopy = self;
  v7.f64[0] = top;
  v8.f64[0] = bottom;
  sub_1890FF344(v7, left, v8, right);
}

- (void)_setContainerTraitCollection:(id)collection
{
  v5 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___containerTraitCollection);
  *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___containerTraitCollection) = collection;
  sub_188A34624(0, &qword_1ED490410);
  collectionCopy = collection;
  selfCopy = self;
  if ((sub_18A4A7C88() & 1) == 0)
  {
    sub_1890FC994();
  }
}

- (BOOL)_effectiveSolariumInsetsAndCornerRadiusEnabled
{
  selfCopy = self;
  v3 = sub_1890FF470();

  return v3 & 1;
}

- (void)_setAdditionalMinimumTopInset:(double)inset
{
  selfCopy = self;
  sub_1890FF5E4(inset);
}

- (void)_setMode:(int64_t)mode
{
  selfCopy = self;
  sub_1890FF7C4(mode);
}

- (CGRect)_sourceFrame
{
  v2 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_sourceFrame);
  v3 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_sourceFrame + 8);
  v4 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_sourceFrame + 16);
  v5 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_sourceFrame + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)_setHorizontalAlignment:(int64_t)alignment
{
  v4 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_horizontalAlignment);
  *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_horizontalAlignment) = alignment;
  if (v4 != alignment)
  {
    selfCopy = self;
    sub_1890FCDD4();
  }
}

- (void)_setMarginInCompactHeight:(double)height
{
  selfCopy = self;
  sub_1890FF9B8(&OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_marginInCompactHeight, height);
}

- (void)_setMarginInRegularWidthRegularHeight:(double)height
{
  selfCopy = self;
  sub_1890FF9B8(&OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_marginInRegularWidthRegularHeight, height);
}

- (void)_setTucksIntoUnsafeAreaInCompactHeight:(BOOL)height
{
  heightCopy = height;
  selfCopy = self;
  sub_1890FFA18(heightCopy);
}

- (void)_setAllowsAsymmetricVerticalMargins:(BOOL)margins
{
  selfCopy = self;
  sub_1890FFB8C(margins);
}

- (CGRect)_keyboardFrame
{
  v2 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_keyboardFrame);
  v3 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_keyboardFrame + 8);
  v4 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_keyboardFrame + 16);
  v5 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_keyboardFrame + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)_remoteKeyboardFrame
{
  v2 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_remoteKeyboardFrame);
  v3 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_remoteKeyboardFrame + 8);
  v4 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_remoteKeyboardFrame + 16);
  v5 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_remoteKeyboardFrame + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)_setWantsFullScreen:(BOOL)screen
{
  v4 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsFullScreen);
  *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_wantsFullScreen) = screen;
  if (v4 != screen)
  {
    selfCopy = self;
    sub_1890FDB10();
    sub_1890FD128();
    sub_1890FD1DC();
    sub_1890FD354();
    sub_1890FBCCC();
  }
}

- (void)_setWantsEdgeAttachedInCompactHeight:(BOOL)height
{
  selfCopy = self;
  sub_1890FFE7C(height);
}

- (void)_setWidthFollowsPreferredContentSizeWhenEdgeAttached:(BOOL)attached
{
  selfCopy = self;
  sub_18910005C(attached);
}

- (void)_setZooming:(BOOL)zooming
{
  zoomingCopy = zooming;
  selfCopy = self;
  sub_189100FC4(zoomingCopy, &OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isZooming);
}

- (void)_setPresentsWithGesture:(BOOL)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_189100FC4(gestureCopy, &OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_presentsWithGesture);
}

- (void)_setDismissible:(BOOL)dismissible
{
  selfCopy = self;
  sub_18910048C(dismissible);
}

- (_UIViewMaterial)_largeBackground
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (_UIViewMaterial)_nonLargeBackground
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (NSArray)_detents
{
  sub_188A34624(0, &unk_1ED490400);

  v2 = sub_18A4A7518();

  return v2;
}

- (void)_setDetents:(id)detents
{
  sub_188A34624(0, &unk_1ED490400);
  v4 = sub_18A4A7548();
  selfCopy = self;
  sub_189100610(v4);
}

- (void)_invalidateDetents
{
  selfCopy = self;
  sub_1890FC154();
}

- (void)_setSelectedDetentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  sub_18910082C(identifier);
}

- (void)_setStandardAppearance:(id)appearance
{
  appearanceCopy = appearance;
  selfCopy = self;
  sub_18910F7F4(appearanceCopy);
}

- (void)_setShouldDismissWhenTappedOutside:(BOOL)outside
{
  outsideCopy = outside;
  selfCopy = self;
  sub_189100EC0(outsideCopy);
}

- (void)_setAllowsInteractiveDismissWhenFullScreen:(BOOL)screen
{
  screenCopy = screen;
  selfCopy = self;
  sub_189100FC4(screenCopy, &OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_allowsInteractiveDismissWhenFullScreen);
}

- (void)_setPrefersScrollingResizesWhenDetentDirectionIsDown:(BOOL)down
{
  downCopy = down;
  selfCopy = self;
  sub_1891010BC(downCopy);
}

- (void)_setPrefersScrollingExpandsToLargerDetentWhenScrolledToEdge:(BOOL)edge
{
  edgeCopy = edge;
  selfCopy = self;
  sub_189101438(edgeCopy, &OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_prefersScrollingExpandsToLargerDetentWhenScrolledToEdge);
}

- (void)_setWantsGrabber:(BOOL)grabber
{
  grabberCopy = grabber;
  selfCopy = self;
  sub_189101254(grabberCopy);
}

- (void)_setGrabberSpacing:(double)spacing
{
  selfCopy = self;
  sub_1891017EC(&OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_grabberSpacing, spacing);
}

- (void)_setInsetsContentViewForGrabber:(BOOL)grabber
{
  grabberCopy = grabber;
  selfCopy = self;
  sub_189101438(grabberCopy, &OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_insetsContentViewForGrabber);
}

- (void)_setGrabberBlurEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  selfCopy = self;
  sub_189101438(enabledCopy, &OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isGrabberBlurEnabled);
}

- (void)_setDragging:(BOOL)dragging
{
  selfCopy = self;
  sub_189101518(dragging);
}

- (CGRect)_dismissSourceFrame
{
  v2 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame);
  v3 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame + 8);
  v4 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame + 16);
  v5 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_dismissSourceFrame + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)_setPreferredShadowOpacity:(double)opacity
{
  selfCopy = self;
  sub_1891016E4(opacity);
}

- (void)_setShadowRadius:(double)radius
{
  selfCopy = self;
  sub_1891017EC(&OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_shadowRadius, radius);
}

- (CGRect)_hostParentStackAlignmentFrame
{
  v2 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_hostParentStackAlignmentFrame);
  v3 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_hostParentStackAlignmentFrame + 8);
  v4 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_hostParentStackAlignmentFrame + 16);
  v5 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_hostParentStackAlignmentFrame + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)_hostParentFullHeightUntransformedFrameForDepthLevel
{
  v2 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_hostParentFullHeightUntransformedFrameForDepthLevel);
  v3 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_hostParentFullHeightUntransformedFrameForDepthLevel + 8);
  v4 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_hostParentFullHeightUntransformedFrameForDepthLevel + 16);
  v5 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_hostParentFullHeightUntransformedFrameForDepthLevel + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)_setHostParentDepthLevel:(double)level
{
  v4 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_hostParentDepthLevel);
  *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_hostParentDepthLevel) = level;
  if (v4 != level)
  {
    selfCopy = self;
    sub_1890FE48C();
  }
}

- (id)_currentOffsetGetter
{
  if (*(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_currentOffsetGetter))
  {
    v2 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_currentOffsetGetter + 8);
    v5[4] = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_currentOffsetGetter);
    v5[5] = v2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_18919A500;
    v5[3] = &block_descriptor_35_6;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setCurrentOffsetGetter:(id)getter
{
  v4 = _Block_copy(getter);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_188A4AA04;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_currentOffsetGetter);
  v8 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_currentOffsetGetter);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_188A55B8C(v8);
}

- (void)_invalidateCurrentOffset
{
  if (*(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 38) == 1)
  {
    *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 38) = 0;
    selfCopy = self;
    sub_1890FEBD0();
    sub_1890FCB68();
  }
}

- (_UISheetLayoutInfo)_parentLayoutInfo
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)_setDisableSolariumInsets:(BOOL)insets
{
  selfCopy = self;
  sub_1891020A8(insets);
}

- (void)set_indexOfCurrentActiveOrDismissDetentWasInvalidated:(id)invalidated
{
  v4 = _Block_copy(invalidated);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_188EB2CC4;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__indexOfCurrentActiveOrDismissDetentWasInvalidated);
  v8 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__indexOfCurrentActiveOrDismissDetentWasInvalidated);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_188A55B8C(v8);
}

- (void)set_rubberBandExtentBeyondMinimumOffsetWasInvalidated:(id)invalidated
{
  v4 = _Block_copy(invalidated);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_188EB2CC4;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMinimumOffsetWasInvalidated);
  v8 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMinimumOffsetWasInvalidated);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_188A55B8C(v8);
}

- (void)set_rubberBandExtentBeyondMaximumOffsetWasInvalidated:(id)invalidated
{
  v4 = _Block_copy(invalidated);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_188A4AA04;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMaximumOffsetWasInvalidated);
  v8 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo__rubberBandExtentBeyondMaximumOffsetWasInvalidated);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_188A55B8C(v8);
}

- (_UISheetLayoutInfoDelegate)_delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (double)_proposedDepthLevel
{
  selfCopy = self;
  v3 = sub_1891054B0();

  return v3;
}

- (double)_depthLevel
{
  selfCopy = self;
  v3 = sub_1891057D0();

  return v3;
}

- (BOOL)_isEdgeAttached
{
  v2 = self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean;
  v3 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_clean + 17);
  selfCopy = self;
  v5 = selfCopy;
  if ((v3 & 1) == 0)
  {
    *(selfCopy + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached) = sub_189105A94(selfCopy) & 1;
    v2[17] = 1;
  }

  v6 = *(v5 + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___isEdgeAttached);

  return v6;
}

- (BOOL)_isInverted
{
  selfCopy = self;
  v3 = sub_1891050DC();

  return v3 & 1;
}

- (BOOL)_isFunctionallyFullScreen
{
  selfCopy = self;
  v3 = sub_1890FF578();

  return v3 & 1;
}

- (CGRect)_effectiveKeyboardFrame
{
  v2 = sub_1891097A4(self, a2, sub_189105E98);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)_stackAlignmentFrame
{
  v2 = sub_1891097A4(self, a2, sub_18910377C);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)_fullHeightPresentedViewFrame
{
  v2 = sub_1891097A4(self, a2, sub_189105F9C);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (double)_fullDetentValue
{
  selfCopy = self;
  sub_18910622C();
  v4 = v3;

  return v4;
}

- (CGRect)_fullHeightUntransformedFrameForDepthLevel
{
  v2 = sub_1891097A4(self, a2, sub_1891062C0);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)_isExpanded
{
  selfCopy = self;
  v3 = sub_18910673C();

  return v3 & 1;
}

- (BOOL)_isAnyDescendantDragging
{
  selfCopy = self;
  v3 = sub_189106E34();

  return v3 & 1;
}

- (NSArray)_detentValues
{
  selfCopy = self;
  sub_189103BFC();

  swift_beginAccess();

  sub_188A34624(0, &qword_1ED48FD80);
  v3 = sub_18A4A7518();

  return v3;
}

- (double)_percentSafeAreaInsetToInclude
{
  selfCopy = self;
  v3 = sub_18910717C();

  return v3;
}

- (double)_currentDetentValue
{
  selfCopy = self;
  sub_1891072CC();
  v4 = v3;

  return v4;
}

- (NSArray)_activeDetents
{
  selfCopy = self;
  sub_189103BFC();

  sub_188A34624(0, &unk_1ED48C6A0);
  v3 = sub_18A4A7518();

  return v3;
}

- (double)_smallestNonDismissDetentOffset
{
  selfCopy = self;
  sub_189103BFC();

  v3 = *(selfCopy + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___smallestNonDismissDetentOffset);

  return v3;
}

- (int64_t)_indexOfActiveDetentForTappingGrabber
{
  selfCopy = self;
  v3 = sub_18910767C();

  return v3;
}

- (int64_t)_grabberAction
{
  selfCopy = self;
  v3 = sub_189107768();

  return v3;
}

- (int64_t)_indexOfCurrentActiveOrDismissDetent
{
  selfCopy = self;
  v3 = sub_18910785C();

  return v3;
}

- (double)_rubberBandExtentBeyondMinimumOffset
{
  selfCopy = self;
  sub_1891079B0();
  v4 = v3;

  return v4;
}

- (double)_rubberBandExtentBeyondMaximumOffset
{
  selfCopy = self;
  sub_189107B64();
  v4 = v3;

  return v4;
}

- (CGRect)_untransformedFrame
{
  v2 = sub_1891097A4(self, a2, sub_189107CF8);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)_hostedUntransformedFrame
{
  v2 = sub_1891097A4(self, a2, sub_1891081FC);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)_frameOfPresentedViewInContainerView
{
  v2 = sub_1891097A4(self, a2, sub_1891082A8);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)_hostedFrameOfPresentedViewInContainerView
{
  if (*(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_isHosting) == 1)
  {
    v2 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds);
    v3 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 8);
    v4 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 16);
    v5 = *(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_containerBounds + 24);
  }

  else
  {
    selfCopy = self;
    sub_1891082A8();
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v5 = v14;
    v4 = v12;
    v3 = v10;
    v2 = v8;
  }

  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)_hostedDismissFrame
{
  v2 = sub_1891097A4(self, a2, sub_189108768);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (UIEdgeInsets)_touchInsets
{
  v2 = sub_18910968C(self, a2, sub_189108BCC);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (double)_percentCapsular
{
  selfCopy = self;
  v3 = sub_189107218();

  return v3;
}

- (UIRectCornerRadii)_hostedCornerRadii
{
  v2 = sub_18910968C(self, a2, sub_1891096F0);
  result.topRight = v5;
  result.bottomRight = v4;
  result.bottomLeft = v3;
  result.topLeft = v2;
  return result;
}

- (CGRect)_transformedFrame
{
  v2 = sub_1891097A4(self, a2, sub_189109808);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (double)_percentDimmed
{
  selfCopy = self;
  v3 = sub_189109E94();

  return v3;
}

- (double)_confinedPercentDimmed
{
  selfCopy = self;
  sub_189109E94();
  v3 = *(selfCopy + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___confinedPercentDimmed);

  return v3;
}

- (double)_confinedPercentLightened
{
  selfCopy = self;
  sub_189109E94();
  v3 = *(selfCopy + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___confinedPercentLightened);

  return v3;
}

- (double)_magicShadowOpacity
{
  selfCopy = self;
  sub_189109E94();
  v3 = *(selfCopy + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo___magicShadowOpacity);

  return v3;
}

- (double)_shadowOpacity
{
  selfCopy = self;
  v3 = sub_18910A2F8();

  return v3;
}

- (double)_alpha
{
  selfCopy = self;
  v3 = sub_18910A420();

  return v3;
}

- (double)_grabberAlpha
{
  selfCopy = self;
  v3 = sub_18910A5D0();

  return v3;
}

- (_UIViewMaterial)_background
{
  selfCopy = self;
  v3 = sub_1891102E0();
  swift_unknownObjectRetain();

  return v3;
}

- (BOOL)_isInteractionEnabled
{
  selfCopy = self;
  v3 = sub_18910A850();

  return v3 & 1;
}

- (BOOL)_isScrollInteractionEnabled
{
  selfCopy = self;
  v3 = sub_18910A9D4();

  return v3 & 1;
}

- (BOOL)_shouldPresentedViewControllerControlStatusBarAppearance
{
  selfCopy = self;
  v3 = sub_18910AA74();

  return v3 & 1;
}

- (BOOL)_shouldDimmingIgnoreTouches
{
  selfCopy = self;
  v3 = sub_18910AD28();

  return v3 & 1;
}

- (BOOL)_isModelDimmingEnabled
{
  selfCopy = self;
  v3 = sub_18910AE98();

  return v3 & 1;
}

- (BOOL)_isDimmingEnabled
{
  selfCopy = self;
  v3 = sub_18910B038();

  return v3 & 1;
}

- (void)_layout
{
  selfCopy = self;
  sub_18910B098();
}

- (BOOL)_hasParentSheet
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return !CGRectIsNull(*(self + OBJC_IVAR____TtC5UIKit15SheetLayoutInfo_hostParentStackAlignmentFrame));
  }

  return 1;
}

- (double)_invertedDepthLevel
{
  selfCopy = self;
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = selfCopy;
  if (Strong)
  {
    v5 = Strong;
    v6 = selfCopy;
    do
    {
      v4 = v5;

      v5 = swift_unknownObjectWeakLoadStrong();
      v6 = v4;
    }

    while (v5);
  }

  v7 = sub_1891057D0();

  v8 = sub_1891057D0();
  return v7 - v8;
}

- (_TtC5UIKit15SheetLayoutInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end