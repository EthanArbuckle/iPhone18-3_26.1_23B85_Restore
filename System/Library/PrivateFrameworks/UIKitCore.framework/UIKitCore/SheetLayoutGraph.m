@interface SheetLayoutGraph
- (BOOL)_allowsAsymmetricVerticalMargins;
- (BOOL)_allowsInteractiveDismissWhenFullScreen;
- (BOOL)_alwaysAllowsEdgeAttached;
- (BOOL)_containsFirstResponder;
- (BOOL)_disableSolariumInsets;
- (BOOL)_effectiveSolariumInsetsAndCornerRadiusEnabled;
- (BOOL)_firstResponderRequiresKeyboard;
- (BOOL)_hasChildSheet;
- (BOOL)_hasParentSheet;
- (BOOL)_includesSafeAreaInsetWhenInset;
- (BOOL)_insetsContentViewForGrabber;
- (BOOL)_isAnyDescendantDragging;
- (BOOL)_isDimmingEnabled;
- (BOOL)_isDismissible;
- (BOOL)_isDragging;
- (BOOL)_isEdgeAttached;
- (BOOL)_isEffectivePresented;
- (BOOL)_isExpanded;
- (BOOL)_isFunctionallyFullScreen;
- (BOOL)_isGrabberBlurEnabled;
- (BOOL)_isHidden;
- (BOOL)_isHosting;
- (BOOL)_isInteractionEnabled;
- (BOOL)_isInverted;
- (BOOL)_isModelDimmingEnabled;
- (BOOL)_isPresented;
- (BOOL)_isReduceMotionEnabled;
- (BOOL)_isScrollInteractionEnabled;
- (BOOL)_isTransitioning;
- (BOOL)_isZooming;
- (BOOL)_peeksWhenFloating;
- (BOOL)_prefersScrollingExpandsToLargerDetentWhenScrolledToEdge;
- (BOOL)_prefersScrollingResizesWhenDetentDirectionIsDown;
- (BOOL)_prefersSymmetricCorners;
- (BOOL)_presentsWithGesture;
- (BOOL)_remoteContainsFirstResponder;
- (BOOL)_remoteFirstResponderRequiresKeyboard;
- (BOOL)_shouldAdjustDetentsToAvoidKeyboard;
- (BOOL)_shouldDimmingIgnoreTouches;
- (BOOL)_shouldDismissWhenTappedOutside;
- (BOOL)_shouldPresentedViewControllerControlStatusBarAppearance;
- (BOOL)_shouldScaleDownBehindDescendants;
- (BOOL)_tucksIntoUnsafeAreaInCompactHeight;
- (BOOL)_wantsEdgeAttached;
- (BOOL)_wantsEdgeAttachedInCompactHeight;
- (BOOL)_wantsFloatingInCompactHeight;
- (BOOL)_wantsFloatingInRegularWidthCompactHeight;
- (BOOL)_wantsFullScreen;
- (BOOL)_wantsGrabber;
- (BOOL)_wantsInvertedWhenFloating;
- (BOOL)_widthFollowsPreferredContentSizeWhenEdgeAttached;
- (CGAffineTransform)_transform;
- (CGAffineTransform)_transformOfPresentedViewInContainerView;
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
- (NSString)_hiddenAncestorSheetID;
- (NSString)_selectedDetentIdentifier;
- (NSString)_sheetID;
- (NSString)description;
- (UIEdgeInsets)_containerSafeAreaInsets;
- (UIEdgeInsets)_touchInsets;
- (UIRectCornerRadii)_hostedCornerRadii;
- (UIView)_containerView;
- (UIViewController)_presentedViewController;
- (UIViewController)_presentingViewController;
- (UIVisualEffect)backgroundEffect;
- (_TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE16SheetLayoutGraph)init;
- (_UISheetLayoutInfo)_childLayoutInfo;
- (_UISheetLayoutInfo)_parentLayoutInfo;
- (_UISheetLayoutInfoDelegate)_delegate;
- (_UISheetPresentationControllerAppearance)_edgeAttachedCompactHeightAppearance;
- (_UISheetPresentationControllerAppearance)_floatingAppearance;
- (_UISheetPresentationControllerAppearance)_standardAppearance;
- (_UIViewMaterial)_background;
- (_UIViewMaterial)_largeBackground;
- (_UIViewMaterial)_nonLargeBackground;
- (double)_additionalMinimumTopInset;
- (double)_alpha;
- (double)_confinedPercentDimmed;
- (double)_confinedPercentLightened;
- (double)_currentDetentValue;
- (double)_depthLevel;
- (double)_dismissCornerRadius;
- (double)_fullDetentValue;
- (double)_grabberAlpha;
- (double)_grabberSpacing;
- (double)_hostParentDepthLevel;
- (double)_invertedDepthLevel;
- (double)_latestUserChosenOffset;
- (double)_magicShadowOpacity;
- (double)_marginInCompactHeight;
- (double)_marginInRegularWidthRegularHeight;
- (double)_maximumDetentValue;
- (double)_nonFullHeightOffset;
- (double)_percentCapsular;
- (double)_percentDimmed;
- (double)_percentSafeAreaInsetToInclude;
- (double)_preferredCornerRadius;
- (double)_preferredShadowOpacity;
- (double)_proposedDepthLevel;
- (double)_remoteProposedDepthLevel;
- (double)_rubberBandExtentBeyondMaximumOffset;
- (double)_rubberBandExtentBeyondMinimumOffset;
- (double)_shadowOpacity;
- (double)_shadowRadius;
- (double)_smallestNonDismissDetentOffset;
- (double)maximumDetentValue;
- (id)_currentOffsetGetter;
- (id)_descendantDescription;
- (int64_t)_adjustedIndexOfCurrentActiveDetentForContainedFirstResponder;
- (int64_t)_grabberAction;
- (int64_t)_horizontalAlignment;
- (int64_t)_indexOfActiveDetentForTappingGrabber;
- (int64_t)_indexOfActiveDimmingDetent;
- (int64_t)_indexOfCurrentActiveDetent;
- (int64_t)_indexOfCurrentActiveOrDismissDetent;
- (int64_t)_mode;
- (int64_t)_numberOfActiveNonDismissDetents;
- (void)_boundingPathMayHaveChangedForView:(id)a3 relativeToBoundsOriginOnly:(BOOL)a4;
- (void)_invalidateCurrentOffset;
- (void)_invalidateDetents;
- (void)_invalidatePreferredSize;
- (void)_layout;
- (void)_setAdditionalMinimumTopInset:(double)a3;
- (void)_setAllowsAsymmetricVerticalMargins:(BOOL)a3;
- (void)_setAllowsInteractiveDismissWhenFullScreen:(BOOL)a3;
- (void)_setAlwaysAllowsEdgeAttached:(BOOL)a3;
- (void)_setContainerBounds:(CGRect)a3;
- (void)_setContainerSafeAreaInsets:(UIEdgeInsets)a3;
- (void)_setContainerTraitCollection:(id)a3;
- (void)_setContainerView:(id)a3;
- (void)_setContainsFirstResponder:(BOOL)a3;
- (void)_setCurrentOffsetGetter:(id)a3;
- (void)_setDetents:(id)a3;
- (void)_setDisableSolariumInsets:(BOOL)a3;
- (void)_setDismissCornerRadius:(double)a3;
- (void)_setDismissSourceFrame:(CGRect)a3;
- (void)_setDismissible:(BOOL)a3;
- (void)_setDragging:(BOOL)a3;
- (void)_setEdgeAttachedCompactHeightAppearance:(id)a3;
- (void)_setFirstResponderRequiresKeyboard:(BOOL)a3;
- (void)_setFloatingAppearance:(id)a3;
- (void)_setGrabberBlurEnabled:(BOOL)a3;
- (void)_setGrabberSpacing:(double)a3;
- (void)_setHidden:(BOOL)a3;
- (void)_setHiddenAncestorSheetID:(id)a3;
- (void)_setHorizontalAlignment:(int64_t)a3;
- (void)_setHostParentDepthLevel:(double)a3;
- (void)_setHostParentFullHeightUntransformedFrameForDepthLevel:(CGRect)a3;
- (void)_setHostParentStackAlignmentFrame:(CGRect)a3;
- (void)_setHosting:(BOOL)a3;
- (void)_setIncludesSafeAreaInsetWhenInset:(BOOL)a3;
- (void)_setInsetsContentViewForGrabber:(BOOL)a3;
- (void)_setKeyboardFrame:(CGRect)a3;
- (void)_setLargeBackground:(id)a3;
- (void)_setLatestUserChosenOffset:(double)a3;
- (void)_setMarginInCompactHeight:(double)a3;
- (void)_setMarginInRegularWidthRegularHeight:(double)a3;
- (void)_setMode:(int64_t)a3;
- (void)_setNonLargeBackground:(id)a3;
- (void)_setPeeksWhenFloating:(BOOL)a3;
- (void)_setPreferredCornerRadius:(double)a3;
- (void)_setPreferredShadowOpacity:(double)a3;
- (void)_setPrefersScrollingExpandsToLargerDetentWhenScrolledToEdge:(BOOL)a3;
- (void)_setPrefersScrollingResizesWhenDetentDirectionIsDown:(BOOL)a3;
- (void)_setPrefersSymmetricCorners:(BOOL)a3;
- (void)_setPresented:(BOOL)a3;
- (void)_setPresentedViewController:(id)a3;
- (void)_setPresentingViewController:(id)a3;
- (void)_setPresentsWithGesture:(BOOL)a3;
- (void)_setReduceMotionEnabled:(BOOL)a3;
- (void)_setRemoteContainsFirstResponder:(BOOL)a3;
- (void)_setRemoteFirstResponderRequiresKeyboard:(BOOL)a3;
- (void)_setRemoteKeyboardFrame:(CGRect)a3;
- (void)_setRemoteProposedDepthLevel:(double)a3;
- (void)_setScreenSize:(CGSize)a3;
- (void)_setSelectedDetentIdentifier:(id)a3;
- (void)_setShadowRadius:(double)a3;
- (void)_setSheetID:(id)a3;
- (void)_setShouldAdjustDetentsToAvoidKeyboard:(BOOL)a3;
- (void)_setShouldDismissWhenTappedOutside:(BOOL)a3;
- (void)_setShouldScaleDownBehindDescendants:(BOOL)a3;
- (void)_setSourceFrame:(CGRect)a3;
- (void)_setStandardAppearance:(id)a3;
- (void)_setTransitioning:(BOOL)a3;
- (void)_setTucksIntoUnsafeAreaInCompactHeight:(BOOL)a3;
- (void)_setWantsEdgeAttached:(BOOL)a3;
- (void)_setWantsEdgeAttachedInCompactHeight:(BOOL)a3;
- (void)_setWantsFloatingInCompactHeight:(BOOL)a3;
- (void)_setWantsFloatingInRegularWidthCompactHeight:(BOOL)a3;
- (void)_setWantsFullScreen:(BOOL)a3;
- (void)_setWantsGrabber:(BOOL)a3;
- (void)_setWantsInvertedWhenFloating:(BOOL)a3;
- (void)_setWidthFollowsPreferredContentSizeWhenEdgeAttached:(BOOL)a3;
- (void)_setZooming:(BOOL)a3;
- (void)dealloc;
- (void)setBackgroundEffect:(id)a3;
- (void)set_indexOfCurrentActiveOrDismissDetentWasInvalidated:(id)a3;
- (void)set_rubberBandExtentBeyondMaximumOffsetWasInvalidated:(id)a3;
- (void)set_rubberBandExtentBeyondMinimumOffsetWasInvalidated:(id)a3;
@end

@implementation SheetLayoutGraph

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = self;
  AGSubgraphInvalidate();
  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(SheetLayoutGraph *)&v5 dealloc];
}

- (UIViewController)_presentingViewController
{
  v2 = self;
  AGGraphClearUpdate();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3F0);
  AGGraphGetValue();
  Strong = swift_unknownObjectWeakLoadStrong();
  AGGraphSetUpdate();

  return Strong;
}

- (void)_setPresentingViewController:(id)a3
{
  v5 = a3;
  v4 = self;
  sub_1891BA484();
}

- (UIViewController)_presentedViewController
{
  v2 = self;
  AGGraphClearUpdate();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3F0);
  AGGraphGetValue();
  Strong = swift_unknownObjectWeakLoadStrong();
  AGGraphSetUpdate();

  return Strong;
}

- (void)_setPresentedViewController:(id)a3
{
  v5 = a3;
  v4 = self;
  sub_1891BA554();
}

- (UIView)_containerView
{
  v2 = self;
  AGGraphClearUpdate();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937AA0);
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setContainerView:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1891BA624(a3);
}

- (void)_invalidatePreferredSize
{
  v2 = self;
  AGGraphInvalidateValue();
  sub_18919AC04(0);
}

- (void)_boundingPathMayHaveChangedForView:(id)a3 relativeToBoundsOriginOnly:(BOOL)a4
{
  v4 = self;
  AGGraphInvalidateValue();
  sub_18919AC04(0);
}

- (_UISheetLayoutInfo)_parentLayoutInfo
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_UISheetLayoutInfo)_childLayoutInfo
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_UISheetLayoutInfoDelegate)_delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)set_indexOfCurrentActiveOrDismissDetentWasInvalidated:(id)a3
{
  v4 = _Block_copy(a3);
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

  v7 = (self + OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE16SheetLayoutGraph__indexOfCurrentActiveOrDismissDetentWasInvalidated);
  v8 = *(self + OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE16SheetLayoutGraph__indexOfCurrentActiveOrDismissDetentWasInvalidated);
  *v7 = v6;
  v7[1] = v4;
  v9 = self;
  sub_188A55B8C(v8);
}

- (void)set_rubberBandExtentBeyondMinimumOffsetWasInvalidated:(id)a3
{
  v4 = _Block_copy(a3);
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

  v7 = (self + OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE16SheetLayoutGraph__rubberBandExtentBeyondMinimumOffsetWasInvalidated);
  v8 = *(self + OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE16SheetLayoutGraph__rubberBandExtentBeyondMinimumOffsetWasInvalidated);
  *v7 = v6;
  v7[1] = v4;
  v9 = self;
  sub_188A55B8C(v8);
}

- (void)set_rubberBandExtentBeyondMaximumOffsetWasInvalidated:(id)a3
{
  v4 = _Block_copy(a3);
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

  v7 = (self + OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE16SheetLayoutGraph__rubberBandExtentBeyondMaximumOffsetWasInvalidated);
  v8 = *(self + OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE16SheetLayoutGraph__rubberBandExtentBeyondMaximumOffsetWasInvalidated);
  *v7 = v6;
  v7[1] = v4;
  v9 = self;
  sub_188A55B8C(v8);
}

- (CGRect)_containerBounds
{
  v2 = self;
  AGGraphClearUpdate();
  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = Value[1];
  v6 = Value[2];
  v7 = Value[3];
  AGGraphSetUpdate();

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)_setContainerBounds:(CGRect)a3
{
  type metadata accessor for CGRect(0);
  v4 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (CGSize)_screenSize
{
  v2 = self;
  AGGraphClearUpdate();
  type metadata accessor for CGSize(0);
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = Value[1];
  AGGraphSetUpdate();

  v6 = v4;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)_setScreenSize:(CGSize)a3
{
  type metadata accessor for CGSize(0);
  v4 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (UIEdgeInsets)_containerSafeAreaInsets
{
  v2 = self;
  AGGraphClearUpdate();
  type metadata accessor for UIEdgeInsets(0);
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = Value[1];
  v6 = Value[2];
  v7 = Value[3];
  AGGraphSetUpdate();

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  result.right = v11;
  result.bottom = v10;
  result.left = v9;
  result.top = v8;
  return result;
}

- (void)_setContainerSafeAreaInsets:(UIEdgeInsets)a3
{
  type metadata accessor for UIEdgeInsets(0);
  v4 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (void)_setContainerTraitCollection:(id)a3
{
  sub_188A34624(0, &qword_1ED490410);
  v5 = a3;
  v6 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (double)_additionalMinimumTopInset
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setAdditionalMinimumTopInset:(double)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (int64_t)_mode
{
  v2 = self;
  AGGraphClearUpdate();
  type metadata accessor for _UISheetMode(0);
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setMode:(int64_t)a3
{
  type metadata accessor for _UISheetMode(0);
  v4 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (CGRect)_sourceFrame
{
  v2 = self;
  AGGraphClearUpdate();
  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = Value[1];
  v6 = Value[2];
  v7 = Value[3];
  AGGraphSetUpdate();

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)_setSourceFrame:(CGRect)a3
{
  type metadata accessor for CGRect(0);
  v4 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (int64_t)_horizontalAlignment
{
  v2 = self;
  AGGraphClearUpdate();
  type metadata accessor for _UISheetPresentationControllerHorizontalAlignment(0);
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setHorizontalAlignment:(int64_t)a3
{
  type metadata accessor for _UISheetPresentationControllerHorizontalAlignment(0);
  v4 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (double)_marginInCompactHeight
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setMarginInCompactHeight:(double)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (double)_marginInRegularWidthRegularHeight
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setMarginInRegularWidthRegularHeight:(double)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_tucksIntoUnsafeAreaInCompactHeight
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setTucksIntoUnsafeAreaInCompactHeight:(BOOL)a3
{
  v4 = self;
  sub_18919C1D8(a3);
}

- (BOOL)_allowsAsymmetricVerticalMargins
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setAllowsAsymmetricVerticalMargins:(BOOL)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (CGRect)_keyboardFrame
{
  v2 = self;
  AGGraphClearUpdate();
  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = Value[1];
  v6 = Value[2];
  v7 = Value[3];
  AGGraphSetUpdate();

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)_setKeyboardFrame:(CGRect)a3
{
  type metadata accessor for CGRect(0);
  v4 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (CGRect)_remoteKeyboardFrame
{
  v2 = self;
  AGGraphClearUpdate();
  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = Value[1];
  v6 = Value[2];
  v7 = Value[3];
  AGGraphSetUpdate();

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)_setRemoteKeyboardFrame:(CGRect)a3
{
  type metadata accessor for CGRect(0);
  v4 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_containsFirstResponder
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setContainsFirstResponder:(BOOL)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_firstResponderRequiresKeyboard
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setFirstResponderRequiresKeyboard:(BOOL)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_remoteContainsFirstResponder
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setRemoteContainsFirstResponder:(BOOL)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_remoteFirstResponderRequiresKeyboard
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setRemoteFirstResponderRequiresKeyboard:(BOOL)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_shouldAdjustDetentsToAvoidKeyboard
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setShouldAdjustDetentsToAvoidKeyboard:(BOOL)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_wantsFullScreen
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setWantsFullScreen:(BOOL)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_wantsEdgeAttached
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setWantsEdgeAttached:(BOOL)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_wantsEdgeAttachedInCompactHeight
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setWantsEdgeAttachedInCompactHeight:(BOOL)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_alwaysAllowsEdgeAttached
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setAlwaysAllowsEdgeAttached:(BOOL)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_wantsFloatingInRegularWidthCompactHeight
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setWantsFloatingInRegularWidthCompactHeight:(BOOL)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_wantsFloatingInCompactHeight
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setWantsFloatingInCompactHeight:(BOOL)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_wantsInvertedWhenFloating
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setWantsInvertedWhenFloating:(BOOL)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_widthFollowsPreferredContentSizeWhenEdgeAttached
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setWidthFollowsPreferredContentSizeWhenEdgeAttached:(BOOL)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_isPresented
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setPresented:(BOOL)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_isTransitioning
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setTransitioning:(BOOL)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_isZooming
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setZooming:(BOOL)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_isHidden
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setHidden:(BOOL)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_presentsWithGesture
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setPresentsWithGesture:(BOOL)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_shouldScaleDownBehindDescendants
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setShouldScaleDownBehindDescendants:(BOOL)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_isReduceMotionEnabled
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setReduceMotionEnabled:(BOOL)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_peeksWhenFloating
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setPeeksWhenFloating:(BOOL)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_isHosting
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setHosting:(BOOL)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_isDismissible
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setDismissible:(BOOL)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (_UIViewMaterial)_largeBackground
{
  v2 = self;
  AGGraphClearUpdate();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D8);
  v3 = *AGGraphGetValue();
  swift_unknownObjectRetain();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setLargeBackground:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D8);
  swift_unknownObjectRetain();
  v4 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }

  swift_unknownObjectRelease();
}

- (_UIViewMaterial)_nonLargeBackground
{
  v2 = self;
  AGGraphClearUpdate();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D8);
  v3 = *AGGraphGetValue();
  swift_unknownObjectRetain();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setNonLargeBackground:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D8);
  swift_unknownObjectRetain();
  v4 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }

  swift_unknownObjectRelease();
}

- (NSArray)_detents
{
  v2 = self;
  AGGraphClearUpdate();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F380);
  AGGraphGetValue();

  AGGraphSetUpdate();

  sub_188A34624(0, &unk_1ED490400);
  v3 = sub_18A4A7518();

  return v3;
}

- (void)_setDetents:(id)a3
{
  sub_188A34624(0, &unk_1ED490400);
  v4 = sub_18A4A7548();
  v5 = self;
  sub_18919E084(v4);
}

- (void)_invalidateDetents
{
  v2 = self;
  AGGraphInvalidateValue();
  sub_18919AC04(0);
}

- (NSString)_selectedDetentIdentifier
{
  v2 = self;
  AGGraphClearUpdate();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F390);
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setSelectedDetentIdentifier:(id)a3
{
  v5 = a3;
  v4 = self;
  sub_1891BA774();
}

- (_UISheetPresentationControllerAppearance)_standardAppearance
{
  v2 = self;
  AGGraphClearUpdate();
  sub_188A34624(0, &qword_1EA930A70);
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setStandardAppearance:(id)a3
{
  sub_188A34624(0, &qword_1EA930A70);
  v5 = a3;
  v6 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (_UISheetPresentationControllerAppearance)_edgeAttachedCompactHeightAppearance
{
  v2 = self;
  AGGraphClearUpdate();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F3A0);
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setEdgeAttachedCompactHeightAppearance:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F3A0);
  v5 = a3;
  v6 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (_UISheetPresentationControllerAppearance)_floatingAppearance
{
  v2 = self;
  AGGraphClearUpdate();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F3A0);
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setFloatingAppearance:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F3A0);
  v5 = a3;
  v6 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (NSString)_sheetID
{
  v2 = self;
  AGGraphClearUpdate();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933140);
  v3 = *(AGGraphGetValue() + 8);

  AGGraphSetUpdate();

  if (v3)
  {
    v4 = sub_18A4A7258();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_setSheetID:(id)a3
{
  if (a3)
  {
    sub_18A4A7288();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933140);
  v4 = self;
  v5 = AGGraphSetValue();

  if (v5)
  {
    sub_18919AC04(0);
  }
}

- (NSString)_hiddenAncestorSheetID
{
  v2 = self;
  AGGraphClearUpdate();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933140);
  v3 = *(AGGraphGetValue() + 8);

  AGGraphSetUpdate();

  if (v3)
  {
    v4 = sub_18A4A7258();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_setHiddenAncestorSheetID:(id)a3
{
  if (a3)
  {
    sub_18A4A7288();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933140);
  v4 = self;
  v5 = AGGraphSetValue();

  if (v5)
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_shouldDismissWhenTappedOutside
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setShouldDismissWhenTappedOutside:(BOOL)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_allowsInteractiveDismissWhenFullScreen
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setAllowsInteractiveDismissWhenFullScreen:(BOOL)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_prefersScrollingResizesWhenDetentDirectionIsDown
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setPrefersScrollingResizesWhenDetentDirectionIsDown:(BOOL)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_prefersScrollingExpandsToLargerDetentWhenScrolledToEdge
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setPrefersScrollingExpandsToLargerDetentWhenScrolledToEdge:(BOOL)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (double)_latestUserChosenOffset
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setLatestUserChosenOffset:(double)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_wantsGrabber
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setWantsGrabber:(BOOL)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (double)_grabberSpacing
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setGrabberSpacing:(double)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_insetsContentViewForGrabber
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setInsetsContentViewForGrabber:(BOOL)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_isGrabberBlurEnabled
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setGrabberBlurEnabled:(BOOL)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_isDragging
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setDragging:(BOOL)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (CGRect)_dismissSourceFrame
{
  v2 = self;
  AGGraphClearUpdate();
  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = Value[1];
  v6 = Value[2];
  v7 = Value[3];
  AGGraphSetUpdate();

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)_setDismissSourceFrame:(CGRect)a3
{
  type metadata accessor for CGRect(0);
  v4 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (double)_dismissCornerRadius
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setDismissCornerRadius:(double)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (double)_preferredCornerRadius
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setPreferredCornerRadius:(double)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_prefersSymmetricCorners
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setPrefersSymmetricCorners:(BOOL)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (double)_preferredShadowOpacity
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setPreferredShadowOpacity:(double)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (double)_shadowRadius
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setShadowRadius:(double)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (double)_remoteProposedDepthLevel
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setRemoteProposedDepthLevel:(double)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (CGRect)_hostParentStackAlignmentFrame
{
  v2 = self;
  AGGraphClearUpdate();
  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = Value[1];
  v6 = Value[2];
  v7 = Value[3];
  AGGraphSetUpdate();

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)_setHostParentStackAlignmentFrame:(CGRect)a3
{
  type metadata accessor for CGRect(0);
  v4 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (CGRect)_hostParentFullHeightUntransformedFrameForDepthLevel
{
  v2 = self;
  AGGraphClearUpdate();
  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = Value[1];
  v6 = Value[2];
  v7 = Value[3];
  AGGraphSetUpdate();

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)_setHostParentFullHeightUntransformedFrameForDepthLevel:(CGRect)a3
{
  type metadata accessor for CGRect(0);
  v4 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (double)_hostParentDepthLevel
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setHostParentDepthLevel:(double)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (UIVisualEffect)backgroundEffect
{
  v2 = self;
  AGGraphClearUpdate();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3E8);
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)setBackgroundEffect:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3E8);
  v5 = a3;
  v6 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (id)_currentOffsetGetter
{
  v2 = self;
  v3 = sub_1891A0048();
  v5 = v4;

  if (v3)
  {
    v7[4] = v3;
    v7[5] = v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_18919A500;
    v7[3] = &block_descriptor_140;
    v3 = _Block_copy(v7);
  }

  return v3;
}

- (void)_setCurrentOffsetGetter:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_188A4AA0C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = self;
  sub_1891BA838(v7, v6);
  sub_188A55B8C(v7);
}

- (void)_invalidateCurrentOffset
{
  v2 = self;
  sub_1891A01B8();
}

- (BOOL)_disableSolariumInsets
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setDisableSolariumInsets:(BOOL)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_includesSafeAreaInsetWhenInset
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setIncludesSafeAreaInsetWhenInset:(BOOL)a3
{
  v3 = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_effectiveSolariumInsetsAndCornerRadiusEnabled
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (BOOL)_isEffectivePresented
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (double)_proposedDepthLevel
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (double)_depthLevel
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (BOOL)_isEdgeAttached
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (BOOL)_isInverted
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (BOOL)_isFunctionallyFullScreen
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (CGRect)_effectiveKeyboardFrame
{
  v2 = self;
  AGGraphClearUpdate();
  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = Value[1];
  v6 = Value[2];
  v7 = Value[3];
  AGGraphSetUpdate();

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)_stackAlignmentFrame
{
  v2 = self;
  AGGraphClearUpdate();
  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = Value[1];
  v6 = Value[2];
  v7 = Value[3];
  AGGraphSetUpdate();

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)_fullHeightPresentedViewFrame
{
  v2 = self;
  AGGraphClearUpdate();
  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = Value[1];
  v6 = Value[2];
  v7 = Value[3];
  AGGraphSetUpdate();

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (double)maximumDetentValue
{
  v2 = self;
  v3 = sub_1891A0A84();

  return v3;
}

- (double)_maximumDetentValue
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = sub_1891A0A84();
  AGGraphSetUpdate();

  return v3;
}

- (double)_fullDetentValue
{
  v2 = self;
  v3 = sub_1891A0CB4();

  return v3;
}

- (CGRect)_fullHeightUntransformedFrameForDepthLevel
{
  v2 = self;
  AGGraphClearUpdate();
  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = Value[1];
  v6 = Value[2];
  v7 = Value[3];
  AGGraphSetUpdate();

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (BOOL)_isExpanded
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (double)_nonFullHeightOffset
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (BOOL)_isAnyDescendantDragging
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (double)_percentSafeAreaInsetToInclude
{
  v2 = self;
  v3 = sub_1891A1020();

  return v3;
}

- (double)_currentDetentValue
{
  v2 = self;
  v3 = sub_1891A1168();

  return v3;
}

- (NSArray)_detentValues
{
  v2 = self;
  AGGraphClearUpdate();
  AGGraphGetValue();

  AGGraphSetUpdate();

  sub_188A34624(0, &qword_1ED48FD80);
  v3 = sub_18A4A7518();

  return v3;
}

- (NSArray)_activeDetents
{
  v2 = self;
  AGGraphClearUpdate();
  AGGraphGetValue();

  AGGraphSetUpdate();

  sub_188A34624(0, &unk_1ED48C6A0);
  v3 = sub_18A4A7518();

  return v3;
}

- (int64_t)_indexOfCurrentActiveDetent
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *(AGGraphGetValue() + 16);
  AGGraphSetUpdate();

  return v3;
}

- (int64_t)_adjustedIndexOfCurrentActiveDetentForContainedFirstResponder
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *(AGGraphGetValue() + 24);
  AGGraphSetUpdate();

  return v3;
}

- (int64_t)_indexOfActiveDimmingDetent
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *(AGGraphGetValue() + 32);
  AGGraphSetUpdate();

  return v3;
}

- (double)_smallestNonDismissDetentOffset
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *(AGGraphGetValue() + 48);
  AGGraphSetUpdate();

  return v3;
}

- (int64_t)_numberOfActiveNonDismissDetents
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *(AGGraphGetValue() + 56);
  AGGraphSetUpdate();

  return v3;
}

- (int64_t)_indexOfActiveDetentForTappingGrabber
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (int64_t)_grabberAction
{
  v2 = self;
  AGGraphClearUpdate();
  type metadata accessor for _UISheetGrabberAction(0);
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (int64_t)_indexOfCurrentActiveOrDismissDetent
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (double)_rubberBandExtentBeyondMinimumOffset
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (double)_rubberBandExtentBeyondMaximumOffset
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (CGRect)_untransformedFrame
{
  v2 = self;
  AGGraphClearUpdate();
  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = Value[1];
  v6 = Value[2];
  v7 = Value[3];
  AGGraphSetUpdate();

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)_hostedUntransformedFrame
{
  v2 = self;
  AGGraphClearUpdate();
  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = Value[1];
  v6 = Value[2];
  v7 = Value[3];
  AGGraphSetUpdate();

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)_frameOfPresentedViewInContainerView
{
  v2 = self;
  AGGraphClearUpdate();
  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = Value[1];
  v6 = Value[2];
  v7 = Value[3];
  AGGraphSetUpdate();

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)_hostedFrameOfPresentedViewInContainerView
{
  v2 = self;
  v3 = sub_1891A1A6C();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)_hostedDismissFrame
{
  v2 = self;
  AGGraphClearUpdate();
  sub_1891A1B94();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  AGGraphSetUpdate();

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (UIEdgeInsets)_touchInsets
{
  v2 = self;
  AGGraphClearUpdate();
  type metadata accessor for UIEdgeInsets(0);
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = Value[1];
  v6 = Value[2];
  v7 = Value[3];
  AGGraphSetUpdate();

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  result.right = v11;
  result.bottom = v10;
  result.left = v9;
  result.top = v8;
  return result;
}

- (double)_percentCapsular
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (UIRectCornerRadii)_hostedCornerRadii
{
  v2 = self;
  AGGraphClearUpdate();
  type metadata accessor for UIRectCornerRadii(0);
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = Value[1];
  v6 = Value[2];
  v7 = Value[3];
  AGGraphSetUpdate();

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  result.topRight = v11;
  result.bottomRight = v10;
  result.bottomLeft = v9;
  result.topLeft = v8;
  return result;
}

- (CGRect)_transformedFrame
{
  v2 = self;
  AGGraphClearUpdate();
  type metadata accessor for CGRect(0);
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = Value[1];
  v6 = Value[2];
  v7 = Value[3];
  AGGraphSetUpdate();

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGAffineTransform)_transformOfPresentedViewInContainerView
{
  v4 = self;
  AGGraphClearUpdate();
  type metadata accessor for CGAffineTransform(0);
  Value = AGGraphGetValue();
  v6 = *(Value + 32);
  v7 = *(Value + 40);
  v9 = *(Value + 16);
  v10 = *Value;
  AGGraphSetUpdate();

  *&retstr->a = v10;
  *&retstr->c = v9;
  retstr->tx = v6;
  retstr->ty = v7;
  return result;
}

- (CGAffineTransform)_transform
{
  v4 = self;
  AGGraphClearUpdate();
  type metadata accessor for CGAffineTransform(0);
  Value = AGGraphGetValue();
  v6 = *(Value + 32);
  v7 = *(Value + 40);
  v9 = *(Value + 16);
  v10 = *Value;
  AGGraphSetUpdate();

  *&retstr->a = v10;
  *&retstr->c = v9;
  retstr->tx = v6;
  retstr->ty = v7;
  return result;
}

- (double)_percentDimmed
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (double)_confinedPercentDimmed
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *(AGGraphGetValue() + 8);
  AGGraphSetUpdate();

  return v3;
}

- (double)_confinedPercentLightened
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *(AGGraphGetValue() + 16);
  AGGraphSetUpdate();

  return v3;
}

- (double)_magicShadowOpacity
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *(AGGraphGetValue() + 24);
  AGGraphSetUpdate();

  return v3;
}

- (double)_shadowOpacity
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (double)_alpha
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (double)_grabberAlpha
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (_UIViewMaterial)_background
{
  v2 = self;
  AGGraphClearUpdate();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D8);
  v3 = *AGGraphGetValue();
  swift_unknownObjectRetain();
  AGGraphSetUpdate();

  return v3;
}

- (BOOL)_isInteractionEnabled
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (BOOL)_isScrollInteractionEnabled
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (BOOL)_shouldPresentedViewControllerControlStatusBarAppearance
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (BOOL)_shouldDimmingIgnoreTouches
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (BOOL)_isModelDimmingEnabled
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (BOOL)_isDimmingEnabled
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_layout
{
  v2 = self;
  sub_1891A2914();
}

- (BOOL)_hasChildSheet
{
  v2 = self;
  AGGraphClearUpdate();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D0);
  v3 = *AGGraphGetValue() != 0;
  AGGraphSetUpdate();

  return v3;
}

- (BOOL)_hasParentSheet
{
  v2 = self;
  v3 = sub_1891A2B84();

  return v3;
}

- (double)_invertedDepthLevel
{
  v2 = self;
  AGGraphClearUpdate();
  v3 = sub_1891B5120();
  v4 = v3 - *AGGraphGetValue();
  AGGraphSetUpdate();

  return v4;
}

- (NSString)description
{
  v3 = objc_allocWithZone(MEMORY[0x1E698E680]);
  v4 = self;
  v5 = [v3 initWithObject_];
  if (v5)
  {
    v6 = v5;
    sub_1891A2D60(v5);
  }

  v7 = sub_18A4A7258();

  return v7;
}

- (id)_descendantDescription
{
  v2 = self;
  sub_1891A576C();

  v3 = sub_18A4A7258();

  return v3;
}

- (_TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE16SheetLayoutGraph)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end