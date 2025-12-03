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
- (void)_boundingPathMayHaveChangedForView:(id)view relativeToBoundsOriginOnly:(BOOL)only;
- (void)_invalidateCurrentOffset;
- (void)_invalidateDetents;
- (void)_invalidatePreferredSize;
- (void)_layout;
- (void)_setAdditionalMinimumTopInset:(double)inset;
- (void)_setAllowsAsymmetricVerticalMargins:(BOOL)margins;
- (void)_setAllowsInteractiveDismissWhenFullScreen:(BOOL)screen;
- (void)_setAlwaysAllowsEdgeAttached:(BOOL)attached;
- (void)_setContainerBounds:(CGRect)bounds;
- (void)_setContainerSafeAreaInsets:(UIEdgeInsets)insets;
- (void)_setContainerTraitCollection:(id)collection;
- (void)_setContainerView:(id)view;
- (void)_setContainsFirstResponder:(BOOL)responder;
- (void)_setCurrentOffsetGetter:(id)getter;
- (void)_setDetents:(id)detents;
- (void)_setDisableSolariumInsets:(BOOL)insets;
- (void)_setDismissCornerRadius:(double)radius;
- (void)_setDismissSourceFrame:(CGRect)frame;
- (void)_setDismissible:(BOOL)dismissible;
- (void)_setDragging:(BOOL)dragging;
- (void)_setEdgeAttachedCompactHeightAppearance:(id)appearance;
- (void)_setFirstResponderRequiresKeyboard:(BOOL)keyboard;
- (void)_setFloatingAppearance:(id)appearance;
- (void)_setGrabberBlurEnabled:(BOOL)enabled;
- (void)_setGrabberSpacing:(double)spacing;
- (void)_setHidden:(BOOL)hidden;
- (void)_setHiddenAncestorSheetID:(id)d;
- (void)_setHorizontalAlignment:(int64_t)alignment;
- (void)_setHostParentDepthLevel:(double)level;
- (void)_setHostParentFullHeightUntransformedFrameForDepthLevel:(CGRect)level;
- (void)_setHostParentStackAlignmentFrame:(CGRect)frame;
- (void)_setHosting:(BOOL)hosting;
- (void)_setIncludesSafeAreaInsetWhenInset:(BOOL)inset;
- (void)_setInsetsContentViewForGrabber:(BOOL)grabber;
- (void)_setKeyboardFrame:(CGRect)frame;
- (void)_setLargeBackground:(id)background;
- (void)_setLatestUserChosenOffset:(double)offset;
- (void)_setMarginInCompactHeight:(double)height;
- (void)_setMarginInRegularWidthRegularHeight:(double)height;
- (void)_setMode:(int64_t)mode;
- (void)_setNonLargeBackground:(id)background;
- (void)_setPeeksWhenFloating:(BOOL)floating;
- (void)_setPreferredCornerRadius:(double)radius;
- (void)_setPreferredShadowOpacity:(double)opacity;
- (void)_setPrefersScrollingExpandsToLargerDetentWhenScrolledToEdge:(BOOL)edge;
- (void)_setPrefersScrollingResizesWhenDetentDirectionIsDown:(BOOL)down;
- (void)_setPrefersSymmetricCorners:(BOOL)corners;
- (void)_setPresented:(BOOL)presented;
- (void)_setPresentedViewController:(id)controller;
- (void)_setPresentingViewController:(id)controller;
- (void)_setPresentsWithGesture:(BOOL)gesture;
- (void)_setReduceMotionEnabled:(BOOL)enabled;
- (void)_setRemoteContainsFirstResponder:(BOOL)responder;
- (void)_setRemoteFirstResponderRequiresKeyboard:(BOOL)keyboard;
- (void)_setRemoteKeyboardFrame:(CGRect)frame;
- (void)_setRemoteProposedDepthLevel:(double)level;
- (void)_setScreenSize:(CGSize)size;
- (void)_setSelectedDetentIdentifier:(id)identifier;
- (void)_setShadowRadius:(double)radius;
- (void)_setSheetID:(id)d;
- (void)_setShouldAdjustDetentsToAvoidKeyboard:(BOOL)keyboard;
- (void)_setShouldDismissWhenTappedOutside:(BOOL)outside;
- (void)_setShouldScaleDownBehindDescendants:(BOOL)descendants;
- (void)_setSourceFrame:(CGRect)frame;
- (void)_setStandardAppearance:(id)appearance;
- (void)_setTransitioning:(BOOL)transitioning;
- (void)_setTucksIntoUnsafeAreaInCompactHeight:(BOOL)height;
- (void)_setWantsEdgeAttached:(BOOL)attached;
- (void)_setWantsEdgeAttachedInCompactHeight:(BOOL)height;
- (void)_setWantsFloatingInCompactHeight:(BOOL)height;
- (void)_setWantsFloatingInRegularWidthCompactHeight:(BOOL)height;
- (void)_setWantsFullScreen:(BOOL)screen;
- (void)_setWantsGrabber:(BOOL)grabber;
- (void)_setWantsInvertedWhenFloating:(BOOL)floating;
- (void)_setWidthFollowsPreferredContentSizeWhenEdgeAttached:(BOOL)attached;
- (void)_setZooming:(BOOL)zooming;
- (void)dealloc;
- (void)setBackgroundEffect:(id)effect;
- (void)set_indexOfCurrentActiveOrDismissDetentWasInvalidated:(id)invalidated;
- (void)set_rubberBandExtentBeyondMaximumOffsetWasInvalidated:(id)invalidated;
- (void)set_rubberBandExtentBeyondMinimumOffsetWasInvalidated:(id)invalidated;
@end

@implementation SheetLayoutGraph

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  AGSubgraphInvalidate();
  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(SheetLayoutGraph *)&v5 dealloc];
}

- (UIViewController)_presentingViewController
{
  selfCopy = self;
  AGGraphClearUpdate();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3F0);
  AGGraphGetValue();
  Strong = swift_unknownObjectWeakLoadStrong();
  AGGraphSetUpdate();

  return Strong;
}

- (void)_setPresentingViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1891BA484();
}

- (UIViewController)_presentedViewController
{
  selfCopy = self;
  AGGraphClearUpdate();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3F0);
  AGGraphGetValue();
  Strong = swift_unknownObjectWeakLoadStrong();
  AGGraphSetUpdate();

  return Strong;
}

- (void)_setPresentedViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1891BA554();
}

- (UIView)_containerView
{
  selfCopy = self;
  AGGraphClearUpdate();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937AA0);
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setContainerView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_1891BA624(view);
}

- (void)_invalidatePreferredSize
{
  selfCopy = self;
  AGGraphInvalidateValue();
  sub_18919AC04(0);
}

- (void)_boundingPathMayHaveChangedForView:(id)view relativeToBoundsOriginOnly:(BOOL)only
{
  selfCopy = self;
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

  v7 = (self + OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE16SheetLayoutGraph__indexOfCurrentActiveOrDismissDetentWasInvalidated);
  v8 = *(self + OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE16SheetLayoutGraph__indexOfCurrentActiveOrDismissDetentWasInvalidated);
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

  v7 = (self + OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE16SheetLayoutGraph__rubberBandExtentBeyondMinimumOffsetWasInvalidated);
  v8 = *(self + OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE16SheetLayoutGraph__rubberBandExtentBeyondMinimumOffsetWasInvalidated);
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

  v7 = (self + OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE16SheetLayoutGraph__rubberBandExtentBeyondMaximumOffsetWasInvalidated);
  v8 = *(self + OBJC_IVAR____TtC5UIKitP33_A96866C2920FEF12151F6D0347E0D9CE16SheetLayoutGraph__rubberBandExtentBeyondMaximumOffsetWasInvalidated);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_188A55B8C(v8);
}

- (CGRect)_containerBounds
{
  selfCopy = self;
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

- (void)_setContainerBounds:(CGRect)bounds
{
  type metadata accessor for CGRect(0);
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (CGSize)_screenSize
{
  selfCopy = self;
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

- (void)_setScreenSize:(CGSize)size
{
  type metadata accessor for CGSize(0);
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (UIEdgeInsets)_containerSafeAreaInsets
{
  selfCopy = self;
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

- (void)_setContainerSafeAreaInsets:(UIEdgeInsets)insets
{
  type metadata accessor for UIEdgeInsets(0);
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (void)_setContainerTraitCollection:(id)collection
{
  sub_188A34624(0, &qword_1ED490410);
  collectionCopy = collection;
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (double)_additionalMinimumTopInset
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setAdditionalMinimumTopInset:(double)inset
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (int64_t)_mode
{
  selfCopy = self;
  AGGraphClearUpdate();
  type metadata accessor for _UISheetMode(0);
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setMode:(int64_t)mode
{
  type metadata accessor for _UISheetMode(0);
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (CGRect)_sourceFrame
{
  selfCopy = self;
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

- (void)_setSourceFrame:(CGRect)frame
{
  type metadata accessor for CGRect(0);
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (int64_t)_horizontalAlignment
{
  selfCopy = self;
  AGGraphClearUpdate();
  type metadata accessor for _UISheetPresentationControllerHorizontalAlignment(0);
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setHorizontalAlignment:(int64_t)alignment
{
  type metadata accessor for _UISheetPresentationControllerHorizontalAlignment(0);
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (double)_marginInCompactHeight
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setMarginInCompactHeight:(double)height
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (double)_marginInRegularWidthRegularHeight
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setMarginInRegularWidthRegularHeight:(double)height
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_tucksIntoUnsafeAreaInCompactHeight
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setTucksIntoUnsafeAreaInCompactHeight:(BOOL)height
{
  selfCopy = self;
  sub_18919C1D8(height);
}

- (BOOL)_allowsAsymmetricVerticalMargins
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setAllowsAsymmetricVerticalMargins:(BOOL)margins
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (CGRect)_keyboardFrame
{
  selfCopy = self;
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

- (void)_setKeyboardFrame:(CGRect)frame
{
  type metadata accessor for CGRect(0);
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (CGRect)_remoteKeyboardFrame
{
  selfCopy = self;
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

- (void)_setRemoteKeyboardFrame:(CGRect)frame
{
  type metadata accessor for CGRect(0);
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_containsFirstResponder
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setContainsFirstResponder:(BOOL)responder
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_firstResponderRequiresKeyboard
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setFirstResponderRequiresKeyboard:(BOOL)keyboard
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_remoteContainsFirstResponder
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setRemoteContainsFirstResponder:(BOOL)responder
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_remoteFirstResponderRequiresKeyboard
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setRemoteFirstResponderRequiresKeyboard:(BOOL)keyboard
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_shouldAdjustDetentsToAvoidKeyboard
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setShouldAdjustDetentsToAvoidKeyboard:(BOOL)keyboard
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_wantsFullScreen
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setWantsFullScreen:(BOOL)screen
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_wantsEdgeAttached
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setWantsEdgeAttached:(BOOL)attached
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_wantsEdgeAttachedInCompactHeight
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setWantsEdgeAttachedInCompactHeight:(BOOL)height
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_alwaysAllowsEdgeAttached
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setAlwaysAllowsEdgeAttached:(BOOL)attached
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_wantsFloatingInRegularWidthCompactHeight
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setWantsFloatingInRegularWidthCompactHeight:(BOOL)height
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_wantsFloatingInCompactHeight
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setWantsFloatingInCompactHeight:(BOOL)height
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_wantsInvertedWhenFloating
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setWantsInvertedWhenFloating:(BOOL)floating
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_widthFollowsPreferredContentSizeWhenEdgeAttached
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setWidthFollowsPreferredContentSizeWhenEdgeAttached:(BOOL)attached
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_isPresented
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setPresented:(BOOL)presented
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_isTransitioning
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setTransitioning:(BOOL)transitioning
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_isZooming
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setZooming:(BOOL)zooming
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_isHidden
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setHidden:(BOOL)hidden
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_presentsWithGesture
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setPresentsWithGesture:(BOOL)gesture
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_shouldScaleDownBehindDescendants
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setShouldScaleDownBehindDescendants:(BOOL)descendants
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_isReduceMotionEnabled
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setReduceMotionEnabled:(BOOL)enabled
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_peeksWhenFloating
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setPeeksWhenFloating:(BOOL)floating
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_isHosting
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setHosting:(BOOL)hosting
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_isDismissible
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setDismissible:(BOOL)dismissible
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (_UIViewMaterial)_largeBackground
{
  selfCopy = self;
  AGGraphClearUpdate();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D8);
  v3 = *AGGraphGetValue();
  swift_unknownObjectRetain();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setLargeBackground:(id)background
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D8);
  swift_unknownObjectRetain();
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }

  swift_unknownObjectRelease();
}

- (_UIViewMaterial)_nonLargeBackground
{
  selfCopy = self;
  AGGraphClearUpdate();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D8);
  v3 = *AGGraphGetValue();
  swift_unknownObjectRetain();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setNonLargeBackground:(id)background
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D8);
  swift_unknownObjectRetain();
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }

  swift_unknownObjectRelease();
}

- (NSArray)_detents
{
  selfCopy = self;
  AGGraphClearUpdate();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F380);
  AGGraphGetValue();

  AGGraphSetUpdate();

  sub_188A34624(0, &unk_1ED490400);
  v3 = sub_18A4A7518();

  return v3;
}

- (void)_setDetents:(id)detents
{
  sub_188A34624(0, &unk_1ED490400);
  v4 = sub_18A4A7548();
  selfCopy = self;
  sub_18919E084(v4);
}

- (void)_invalidateDetents
{
  selfCopy = self;
  AGGraphInvalidateValue();
  sub_18919AC04(0);
}

- (NSString)_selectedDetentIdentifier
{
  selfCopy = self;
  AGGraphClearUpdate();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F390);
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setSelectedDetentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  sub_1891BA774();
}

- (_UISheetPresentationControllerAppearance)_standardAppearance
{
  selfCopy = self;
  AGGraphClearUpdate();
  sub_188A34624(0, &qword_1EA930A70);
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setStandardAppearance:(id)appearance
{
  sub_188A34624(0, &qword_1EA930A70);
  appearanceCopy = appearance;
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (_UISheetPresentationControllerAppearance)_edgeAttachedCompactHeightAppearance
{
  selfCopy = self;
  AGGraphClearUpdate();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F3A0);
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setEdgeAttachedCompactHeightAppearance:(id)appearance
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F3A0);
  appearanceCopy = appearance;
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (_UISheetPresentationControllerAppearance)_floatingAppearance
{
  selfCopy = self;
  AGGraphClearUpdate();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F3A0);
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setFloatingAppearance:(id)appearance
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93F3A0);
  appearanceCopy = appearance;
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (NSString)_sheetID
{
  selfCopy = self;
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

- (void)_setSheetID:(id)d
{
  if (d)
  {
    sub_18A4A7288();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933140);
  selfCopy = self;
  v5 = AGGraphSetValue();

  if (v5)
  {
    sub_18919AC04(0);
  }
}

- (NSString)_hiddenAncestorSheetID
{
  selfCopy = self;
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

- (void)_setHiddenAncestorSheetID:(id)d
{
  if (d)
  {
    sub_18A4A7288();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933140);
  selfCopy = self;
  v5 = AGGraphSetValue();

  if (v5)
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_shouldDismissWhenTappedOutside
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setShouldDismissWhenTappedOutside:(BOOL)outside
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_allowsInteractiveDismissWhenFullScreen
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setAllowsInteractiveDismissWhenFullScreen:(BOOL)screen
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_prefersScrollingResizesWhenDetentDirectionIsDown
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setPrefersScrollingResizesWhenDetentDirectionIsDown:(BOOL)down
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_prefersScrollingExpandsToLargerDetentWhenScrolledToEdge
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setPrefersScrollingExpandsToLargerDetentWhenScrolledToEdge:(BOOL)edge
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (double)_latestUserChosenOffset
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setLatestUserChosenOffset:(double)offset
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_wantsGrabber
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setWantsGrabber:(BOOL)grabber
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (double)_grabberSpacing
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setGrabberSpacing:(double)spacing
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_insetsContentViewForGrabber
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setInsetsContentViewForGrabber:(BOOL)grabber
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_isGrabberBlurEnabled
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setGrabberBlurEnabled:(BOOL)enabled
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_isDragging
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setDragging:(BOOL)dragging
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (CGRect)_dismissSourceFrame
{
  selfCopy = self;
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

- (void)_setDismissSourceFrame:(CGRect)frame
{
  type metadata accessor for CGRect(0);
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (double)_dismissCornerRadius
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setDismissCornerRadius:(double)radius
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (double)_preferredCornerRadius
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setPreferredCornerRadius:(double)radius
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_prefersSymmetricCorners
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setPrefersSymmetricCorners:(BOOL)corners
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (double)_preferredShadowOpacity
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setPreferredShadowOpacity:(double)opacity
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (double)_shadowRadius
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setShadowRadius:(double)radius
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (double)_remoteProposedDepthLevel
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setRemoteProposedDepthLevel:(double)level
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (CGRect)_hostParentStackAlignmentFrame
{
  selfCopy = self;
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

- (void)_setHostParentStackAlignmentFrame:(CGRect)frame
{
  type metadata accessor for CGRect(0);
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (CGRect)_hostParentFullHeightUntransformedFrameForDepthLevel
{
  selfCopy = self;
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

- (void)_setHostParentFullHeightUntransformedFrameForDepthLevel:(CGRect)level
{
  type metadata accessor for CGRect(0);
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (double)_hostParentDepthLevel
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setHostParentDepthLevel:(double)level
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (UIVisualEffect)backgroundEffect
{
  selfCopy = self;
  AGGraphClearUpdate();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3E8);
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)setBackgroundEffect:(id)effect
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3E8);
  effectCopy = effect;
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (id)_currentOffsetGetter
{
  selfCopy = self;
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

- (void)_setCurrentOffsetGetter:(id)getter
{
  v4 = _Block_copy(getter);
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

  selfCopy = self;
  sub_1891BA838(v7, v6);
  sub_188A55B8C(v7);
}

- (void)_invalidateCurrentOffset
{
  selfCopy = self;
  sub_1891A01B8();
}

- (BOOL)_disableSolariumInsets
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setDisableSolariumInsets:(BOOL)insets
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_includesSafeAreaInsetWhenInset
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_setIncludesSafeAreaInsetWhenInset:(BOOL)inset
{
  selfCopy = self;
  if (AGGraphSetValue())
  {
    sub_18919AC04(0);
  }
}

- (BOOL)_effectiveSolariumInsetsAndCornerRadiusEnabled
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (BOOL)_isEffectivePresented
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (double)_proposedDepthLevel
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (double)_depthLevel
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (BOOL)_isEdgeAttached
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (BOOL)_isInverted
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (BOOL)_isFunctionallyFullScreen
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (CGRect)_effectiveKeyboardFrame
{
  selfCopy = self;
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
  selfCopy = self;
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
  selfCopy = self;
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
  selfCopy = self;
  v3 = sub_1891A0A84();

  return v3;
}

- (double)_maximumDetentValue
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = sub_1891A0A84();
  AGGraphSetUpdate();

  return v3;
}

- (double)_fullDetentValue
{
  selfCopy = self;
  v3 = sub_1891A0CB4();

  return v3;
}

- (CGRect)_fullHeightUntransformedFrameForDepthLevel
{
  selfCopy = self;
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
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (double)_nonFullHeightOffset
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (BOOL)_isAnyDescendantDragging
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (double)_percentSafeAreaInsetToInclude
{
  selfCopy = self;
  v3 = sub_1891A1020();

  return v3;
}

- (double)_currentDetentValue
{
  selfCopy = self;
  v3 = sub_1891A1168();

  return v3;
}

- (NSArray)_detentValues
{
  selfCopy = self;
  AGGraphClearUpdate();
  AGGraphGetValue();

  AGGraphSetUpdate();

  sub_188A34624(0, &qword_1ED48FD80);
  v3 = sub_18A4A7518();

  return v3;
}

- (NSArray)_activeDetents
{
  selfCopy = self;
  AGGraphClearUpdate();
  AGGraphGetValue();

  AGGraphSetUpdate();

  sub_188A34624(0, &unk_1ED48C6A0);
  v3 = sub_18A4A7518();

  return v3;
}

- (int64_t)_indexOfCurrentActiveDetent
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *(AGGraphGetValue() + 16);
  AGGraphSetUpdate();

  return v3;
}

- (int64_t)_adjustedIndexOfCurrentActiveDetentForContainedFirstResponder
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *(AGGraphGetValue() + 24);
  AGGraphSetUpdate();

  return v3;
}

- (int64_t)_indexOfActiveDimmingDetent
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *(AGGraphGetValue() + 32);
  AGGraphSetUpdate();

  return v3;
}

- (double)_smallestNonDismissDetentOffset
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *(AGGraphGetValue() + 48);
  AGGraphSetUpdate();

  return v3;
}

- (int64_t)_numberOfActiveNonDismissDetents
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *(AGGraphGetValue() + 56);
  AGGraphSetUpdate();

  return v3;
}

- (int64_t)_indexOfActiveDetentForTappingGrabber
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (int64_t)_grabberAction
{
  selfCopy = self;
  AGGraphClearUpdate();
  type metadata accessor for _UISheetGrabberAction(0);
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (int64_t)_indexOfCurrentActiveOrDismissDetent
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (double)_rubberBandExtentBeyondMinimumOffset
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (double)_rubberBandExtentBeyondMaximumOffset
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (CGRect)_untransformedFrame
{
  selfCopy = self;
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
  selfCopy = self;
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
  selfCopy = self;
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
  selfCopy = self;
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
  selfCopy = self;
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
  selfCopy = self;
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
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (UIRectCornerRadii)_hostedCornerRadii
{
  selfCopy = self;
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
  selfCopy = self;
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
  selfCopy = self;
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
  selfCopy = self;
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
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (double)_confinedPercentDimmed
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *(AGGraphGetValue() + 8);
  AGGraphSetUpdate();

  return v3;
}

- (double)_confinedPercentLightened
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *(AGGraphGetValue() + 16);
  AGGraphSetUpdate();

  return v3;
}

- (double)_magicShadowOpacity
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *(AGGraphGetValue() + 24);
  AGGraphSetUpdate();

  return v3;
}

- (double)_shadowOpacity
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (double)_alpha
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (double)_grabberAlpha
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (_UIViewMaterial)_background
{
  selfCopy = self;
  AGGraphClearUpdate();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D8);
  v3 = *AGGraphGetValue();
  swift_unknownObjectRetain();
  AGGraphSetUpdate();

  return v3;
}

- (BOOL)_isInteractionEnabled
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (BOOL)_isScrollInteractionEnabled
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (BOOL)_shouldPresentedViewControllerControlStatusBarAppearance
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (BOOL)_shouldDimmingIgnoreTouches
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (BOOL)_isModelDimmingEnabled
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (BOOL)_isDimmingEnabled
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = *AGGraphGetValue();
  AGGraphSetUpdate();

  return v3;
}

- (void)_layout
{
  selfCopy = self;
  sub_1891A2914();
}

- (BOOL)_hasChildSheet
{
  selfCopy = self;
  AGGraphClearUpdate();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3D0);
  v3 = *AGGraphGetValue() != 0;
  AGGraphSetUpdate();

  return v3;
}

- (BOOL)_hasParentSheet
{
  selfCopy = self;
  v3 = sub_1891A2B84();

  return v3;
}

- (double)_invertedDepthLevel
{
  selfCopy = self;
  AGGraphClearUpdate();
  v3 = sub_1891B5120();
  v4 = v3 - *AGGraphGetValue();
  AGGraphSetUpdate();

  return v4;
}

- (NSString)description
{
  v3 = objc_allocWithZone(MEMORY[0x1E698E680]);
  selfCopy = self;
  initWithObject_ = [v3 initWithObject_];
  if (initWithObject_)
  {
    v6 = initWithObject_;
    sub_1891A2D60(initWithObject_);
  }

  v7 = sub_18A4A7258();

  return v7;
}

- (id)_descendantDescription
{
  selfCopy = self;
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