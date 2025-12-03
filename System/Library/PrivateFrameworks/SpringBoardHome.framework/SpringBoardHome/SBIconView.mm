@interface SBIconView
+ (BOOL)_shouldAlwaysHaveContentContainerView;
+ (BOOL)isIconTapGestureRecognizer:(id)recognizer;
+ (BOOL)showsPopovers;
+ (CGPoint)defaultIconImageCenterForIconImageSize:(CGSize)size;
+ (CGSize)defaultIconImageSize;
+ (CGSize)defaultIconViewSize;
+ (CGSize)defaultIconViewSizeForIconImageSize:(CGSize)size configurationOptions:(unint64_t)options;
+ (CGSize)maxLabelSizeForIconImageSize:(CGSize)size;
+ (CGSize)maxLabelSizeForIconImageSize:(CGSize)size contentSizeCategory:(id)category options:(unint64_t)options;
+ (CGSize)maxLabelSizeForListLayout:(id)layout contentSizeCategory:(id)category options:(unint64_t)options;
+ (CGSize)maxLabelSizeForListLayout:(id)layout iconImageSize:(CGSize)size contentSizeCategory:(id)category options:(unint64_t)options;
+ (Class)_closeBoxClassForType:(int64_t)type;
+ (Class)defaultViewClassForAccessoryType:(int64_t)type;
+ (Class)defaultViewClassForLabelAccessoryType:(int64_t)type;
+ (UIEdgeInsets)defaultCursorHitTestPadding;
+ (double)_labelHeight;
+ (double)defaultMaxLabelHeight;
+ (double)defaultMaxLabelWidthDeltaForContentSizeCategory:(id)category;
+ (double)labelAccessoryViewAdditionalRightMarginForType:(int64_t)type;
+ (double)labelMaximumHeightForContentSizeCategory:(id)category;
+ (id)_jitterRampDownAnimationWithAnimation:(id)animation;
+ (id)_jitterRotationAnimationWithAmount:(double)amount;
+ (id)_jitterXTranslationAnimationWithAmount:(double)amount;
+ (id)_jitterYTranslationAnimationWithAmount:(double)amount;
+ (id)applicationIconMultitaskingMenu;
+ (id)applicationIconMultitaskingMenus;
+ (id)applicationIconSplitViewMenu;
+ (id)applicationIconStageManagerMenu;
+ (id)componentBackgroundViewOfType:(int64_t)type;
+ (id)componentBackgroundViewOfType:(int64_t)type compatibleWithTraitCollection:(id)collection initialWeighting:(double)weighting;
+ (id)dragContextForDragItem:(id)item;
+ (id)draggedItemBundleIdentifiersInDrag:(id)drag;
+ (id)groupNameBaseForComponentBackgroundViewOfType:(int64_t)type;
+ (id)homeScreenService;
+ (id)labelConfigurationForListLayout:(id)layout contentSizeCategory:(id)category options:(unint64_t)options;
+ (int64_t)closeBoxTypeForView:(id)view;
+ (void)setDebugContinuityItem:(id)item;
- (APSubjectMonitorSubscription)appPrototectionSubjectMonitorSubscription;
- (BOOL)_debugContinuity;
- (BOOL)_delegateTapAllowed;
- (BOOL)_dragInteraction:(id)interaction canExcludeCompetingGestureRecognizer:(id)recognizer;
- (BOOL)_dragInteraction:(id)interaction competingGestureRecognizerShouldDelayLift:(id)lift;
- (BOOL)_hideIconLabelForContextMenu;
- (BOOL)_hideIconLabelForCustomIconImageViewController;
- (BOOL)_isGlassGroupingEnabled;
- (BOOL)_selfOrCustomViewCanBecomeFocused;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (BOOL)_shouldHaveContentContainerView;
- (BOOL)_shouldShowLabel;
- (BOOL)_shouldShowTooltip;
- (BOOL)allowsCustomIconImageViewController;
- (BOOL)allowsLabelAccessoryView;
- (BOOL)canBeginDrags;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)canReceiveGrabbedIcon:(id)icon;
- (BOOL)canShowAccessoryView;
- (BOOL)canShowCloseBox;
- (BOOL)canShowResizeHandle;
- (BOOL)closeBoxShouldTrack:(id)track;
- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isAnimatingScrolling;
- (BOOL)isFolderIcon;
- (BOOL)isIconImageViewBorrowed;
- (BOOL)isShowingConfigurationCard;
- (BOOL)isShowingStackConfigurationCard;
- (BOOL)isTimedOut;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (BOOL)pointMostlyInside:(CGPoint)inside withEvent:(id)event;
- (BOOL)shouldAnimateFrameOfIconImageView;
- (BOOL)shouldShowCloseBox;
- (BOOL)shouldShowResizeHandle;
- (BOOL)shouldUpdateFrameOfIconImageView;
- (BOOL)supportsConfigurationCard;
- (BOOL)supportsStackConfigurationCard;
- (CGAffineTransform)transformWhenHiddenForResizeHandle:(SEL)handle;
- (CGPoint)_centerForAccessoryView;
- (CGPoint)_centerForCloseBox;
- (CGPoint)_centerForResizeHandle;
- (CGPoint)_focusEffectCenter;
- (CGPoint)iconImageCenter;
- (CGRect)_focusEffectBounds;
- (CGRect)_focusEffectBoundsForFocused:(BOOL)focused withFocusOutset:(double)outset;
- (CGRect)_frameForImageView;
- (CGRect)_frameForLabel;
- (CGRect)_frameForLabelAccessory;
- (CGRect)_frameForLabelAccessoryViewWithLabelFrame:(CGRect)frame metrics:(id)metrics labelImageParameters:(id)parameters imageFrame:(CGRect)imageFrame;
- (CGRect)_frameForLabelHighlight;
- (CGRect)_frameForVisibleImage;
- (CGRect)contentBoundingRectForConfigurationInteraction:(id)interaction;
- (CGRect)frameForMiniIconAtIndex:(unint64_t)index;
- (CGRect)iconImageFrame;
- (CGRect)iconImageVisibleFrame;
- (CGRect)visibleImageRelativeFrameForMiniIconAtIndex:(unint64_t)index;
- (CGSize)accessorySize;
- (CGSize)iconImageVisibleSize;
- (CGSize)iconViewSize;
- (CGSize)iconViewSizeForIconImageSize:(CGSize)size;
- (CGSize)maxLabelSize;
- (Class)expectedIconImageViewClass;
- (Class)iconViewClassForRepresentitiveModalInteractions;
- (NSString)applicationBundleIdentifierForShortcuts;
- (NSString)backgroundViewGroupNameBase;
- (NSString)description;
- (NSURL)applicationBundleURLForShortcuts;
- (SBFolderIcon)folderIcon;
- (SBHIconGridSizeClassDomain)gridSizeClassDomain;
- (SBIconApproximateLayoutPosition)approximateLayoutPosition;
- (SBIconContinuityItem)continuityItem;
- (SBIconImageInfo)iconImageInfo;
- (SBIconLabelViewFactory)iconLabelViewFactory;
- (SBIconListLayout)listLayout;
- (SBIconView)initWithConfigurationOptions:(unint64_t)options listLayoutProvider:(id)provider;
- (SBIconViewActionDelegate)overrideActionDelegate;
- (SBIconViewAssertion)borrowedIconImageViewAssertion;
- (SBIconViewDelegate)delegate;
- (SBIconViewDragDelegate)overrideDraggingDelegate;
- (SBIconViewDropDelegate)overrideDroppingDelegate;
- (UIColor)accessibilityTintColor;
- (UIDragSession)liftingDragSession;
- (UIEdgeInsets)cursorHitTestPadding;
- (UIFont)labelFont;
- (UIView)contentContainerView;
- (UIView)iconImageSnapshotView;
- (UIView)imageContainerView;
- (double)_additionalLiftScale;
- (double)_continuousCornerRadius;
- (double)_labelBaselineOffsetFromImage;
- (double)baselineOffsetFromBottom;
- (double)dragInteractionLiftDelay;
- (double)effectiveBrightness;
- (double)effectiveBrightnessForControlState:(unint64_t)state;
- (double)effectiveIconAccessoryAlpha;
- (double)effectiveIconContentScale;
- (double)effectiveIconImageAlpha;
- (double)effectiveIconLabelAlpha;
- (double)effectiveOverallAlpha;
- (double)labelAccessoryTotalWidth;
- (double)lastLineBaseline;
- (double)verticalMarginPercentageForConfigurationInteraction:(id)interaction;
- (id)URLsForDropSession:(id)session;
- (id)_automationID;
- (id)_contextMenuInteraction:(id)interaction previewForIconWithConfigurationOptions:(unint64_t)options highlighted:(BOOL)highlighted;
- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration;
- (id)_dragInteraction:(id)interaction sessionPropertiesForSession:(id)session;
- (id)_folderIconImageView;
- (id)_labelHidingReason;
- (id)_labelImageMetrics;
- (id)_labelImageParameters;
- (id)_makeIconImageView;
- (id)_makeResizeHandle;
- (id)_multitaskingAppShortcutService;
- (id)_pointerStyleForAppIcon;
- (id)_pointerStyleForLibraryAdditionalItemsIndicatorIcon;
- (id)_pointerStyleForWidgetIcon;
- (id)_tooltipHidingReason;
- (id)_visiblyActiveDataSource;
- (id)accessoryViewContainerView;
- (id)actionDelegate;
- (id)badgeParallaxSettings;
- (id)badgeString;
- (id)behaviorDelegate;
- (id)borrowIconImageViewWithOptions:(unint64_t)options;
- (id)claimBindingsForDropSession:(id)session;
- (id)configurationUIDelegate;
- (id)containerViewControllerForConfigurationInteraction:(id)interaction;
- (id)containerViewForConfigurationInteraction:(id)interaction;
- (id)contentSizeCategory;
- (id)contextMenuConfigurationAtLocation:(CGPoint)location;
- (id)contextMenuDelegate;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration dismissalPreviewForItemWithIdentifier:(id)identifier;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)currentImageView;
- (id)defaultDragPreview;
- (id)defaultDragPreviewWithParameters:(id)parameters;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)disableImageUpdatesForReason:(id)reason;
- (id)disallowContextMenusForReason:(id)reason;
- (id)disallowGlassGroupingForReason:(id)reason;
- (id)displayedLabelFont;
- (id)dragDelegate;
- (id)dragInteraction:(id)interaction itemsForAddingToSession:(id)session withTouchAtPoint:(CGPoint)point;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default;
- (id)dragItems;
- (id)dragPreviewForItem:(id)item session:(id)session;
- (id)draggingLaunchActions;
- (id)draggingLaunchURL;
- (id)dropDelegate;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
- (id)effectiveAccessoryIconImageAppearance;
- (id)effectiveIconImageAppearance;
- (id)effectiveIconImageStyleConfiguration;
- (id)effectiveListLayoutProvider;
- (id)effectiveOverrideAccessoryIconImageAppearance;
- (id)extendResizingFinish;
- (id)folder;
- (id)gridSizeClass;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)homeScreenContentViewForConfigurationInteraction:(id)interaction;
- (id)iconGridSizeClassSizes;
- (id)labelConfiguration;
- (id)labelContentWithParameters:(id)parameters;
- (id)labelImageWithParameters:(id)parameters;
- (id)markAsDropping;
- (id)matchingIconViewByAddingConfigurationOptions:(unint64_t)options removingConfigurationOptions:(unint64_t)configurationOptions;
- (id)matchingIconViewWithConfigurationOptions:(unint64_t)options;
- (id)newCaptureOnlyBackgroundView;
- (id)newComponentBackgroundViewOfType:(int64_t)type;
- (id)nextLargerGridSizeClassForResize;
- (id)nextSmallerGridSizeClassForResize;
- (id)parentViewControllerForCustomIconImageViewController;
- (id)pauseReasonsDescriptions;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (id)representativeIconViewForModalInteractions;
- (id)reuseDelegate;
- (id)startForbiddingAccessoryUpdatesWithReason:(id)reason animated:(BOOL)animated;
- (id)succinctDescription;
- (id)supportedIconGridSizeClasses;
- (id)supportedIconGridSizeClassesForResize;
- (id)traitCollectionForIconImageAppearance;
- (int64_t)_closeBoxType;
- (int64_t)_dropInteraction:(id)interaction dataOwnerForSession:(id)session;
- (int64_t)_iconAdornmentMaterial;
- (int64_t)_widgetBackgroundMaterialForDataSource:(id)source;
- (int64_t)currentAccessoryType;
- (int64_t)currentLabelAccessoryType;
- (int64_t)draggingStartLocation;
- (int64_t)progressState;
- (int64_t)userInterfaceStyleForConfigurationInteraction:(id)interaction;
- (unint64_t)centerVisibleMiniIconIndex;
- (unint64_t)configurationOptions;
- (unint64_t)controlState;
- (unint64_t)effectiveContentVisibility;
- (unint64_t)firstVisibleMiniIconIndex;
- (unint64_t)lastVisibleMiniIconIndex;
- (unint64_t)visibleMiniIconCount;
- (unint64_t)visibleMiniIconListIndex;
- (void)_accessoryViewTapGestureChanged:(id)changed;
- (void)_acquireHomeButtonPressConsumingAssertionIfNecessary;
- (void)_addDefaultJitterAnimationsAnimated:(BOOL)animated;
- (void)_addJitterAnimated:(BOOL)animated;
- (void)_animateCloseBoxWithAnimation:(int64_t)animation animationBlock:(id)block;
- (void)_applyEditingStateAnimated:(BOOL)animated;
- (void)_applyGlassGroupingEnabledState;
- (void)_applyIconAccessoryAlpha:(double)alpha;
- (void)_applyIconContentScale:(double)scale;
- (void)_applyIconImageAlpha:(double)alpha;
- (void)_applyIconLabelAlpha:(double)alpha;
- (void)_applyOverallAlpha:(double)alpha;
- (void)_backgroundContrastDidChange:(id)change;
- (void)_boldTextStatusDidChange:(id)change;
- (void)_checkAndRemoveCloseBoxAfterAnimation;
- (void)_closeBoxTapGestureChanged:(id)changed;
- (void)_configureIconImageView:(id)view;
- (void)_configureLabelAccessoryViewForType:(int64_t)type;
- (void)_configureViewAsFolderIconImageView:(id)view;
- (void)_contentSizeCategoryDidChange:(id)change;
- (void)_contextMenuConfigurationDidDismiss:(id)dismiss;
- (void)_contextMenuConfigurationDidPresent:(id)present;
- (void)_contextMenuConfigurationWillDismiss:(id)dismiss;
- (void)_contextMenuConfigurationWillPresent:(id)present forInteraction:(id)interaction;
- (void)_createAccessoryViewIfNecessary;
- (void)_createCloseBoxIfNecessary;
- (void)_delegateTouchEnded:(BOOL)ended;
- (void)_destroyAccessoryView;
- (void)_destroyAccessoryView:(id)view;
- (void)_destroyIconImageView;
- (void)_disableContentContainerView;
- (void)_dragInteraction:(id)interaction liftAnimationDidChangeDirection:(int64_t)direction;
- (void)_enableContentContainerView;
- (void)_handleActivateAppExposeKeyShortcut:(id)shortcut;
- (void)_handleAddWindowToSetCommand:(id)command;
- (void)_handleMakeFullscreenKeyShortcut:(id)shortcut;
- (void)_handleMakeSplitLeftKeyShortcut:(id)shortcut;
- (void)_handleMakeSplitRightKeyShortcut:(id)shortcut;
- (void)_handleTapWithModifierFlags:(int64_t)flags;
- (void)_initiateResizeToSmallerSize:(BOOL)size completionHandler:(id)handler;
- (void)_insertIconImageView:(id)view;
- (void)_invalidateHomeButtonPressConsumingAssertion;
- (void)_notifyObserversDidDiscardCustomImageViewController:(id)controller;
- (void)_notifyObserversSizeDidChange;
- (void)_rampDownJitterAnimationForKey:(id)key rampKey:(id)rampKey animated:(BOOL)animated;
- (void)_rampUpJitterAnimation:(id)animation animationKey:(id)key rampKey:(id)rampKey animated:(BOOL)animated;
- (void)_reevaluateLogIdentifier;
- (void)_removeDefaultJitterAnimationsAnimated:(BOOL)animated;
- (void)_removeUnknownSubviews;
- (void)_setForcingIconContentScalingEnabled:(BOOL)enabled;
- (void)_setShowingAccessoryView:(BOOL)view;
- (void)_setShowingCloseBox:(BOOL)box;
- (void)_setTemporarySnapshotViewForDragPreview:(id)preview;
- (void)_startTrackingSupportedMultitaskingShortcutActionsIfAppropriateWithOldIcon:(id)icon;
- (void)_toggleContentContainerViewIfNecessary;
- (void)_toggleGroupBlendingIfNecessary;
- (void)_updateAccessoryViewAnimated:(BOOL)animated;
- (void)_updateAfterManualIconImageInfoChangeInvalidatingLayout:(BOOL)layout;
- (void)_updateAllComponentAlphasAnimated:(BOOL)animated;
- (void)_updateBrightness;
- (void)_updateCloseBoxAnimated:(BOOL)animated;
- (void)_updateCloseBoxWithAnimation:(int64_t)animation;
- (void)_updateCursorInteractionsEnabled;
- (void)_updateCustomIconImageViewController:(BOOL)controller;
- (void)_updateCustomIconImageViewControllerHitTesting;
- (void)_updateDragInteractionLiftDelay;
- (void)_updateFrameToIconViewSize;
- (void)_updateIconContentScale;
- (void)_updateIconImageAdornmentsAnimated:(BOOL)animated;
- (void)_updateIconImageViewAnimated:(BOOL)animated;
- (void)_updateJitter:(BOOL)jitter animated:(BOOL)animated;
- (void)_updateLabelAccessoryView;
- (void)_updateLabelAnimated:(BOOL)animated;
- (void)_updateLabelAreaAnimated:(BOOL)animated;
- (void)_updateLaunchDisabled;
- (void)_updatePresentationModeForReason:(id)reason;
- (void)_updateProgressAnimated:(BOOL)animated;
- (void)_updateResizeHandleAnimated:(BOOL)animated;
- (void)_updateTooltipViewAnimated:(BOOL)animated;
- (void)addGesturesAndInteractionsIfNecessary;
- (void)addObserver:(id)observer;
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
- (void)beginPrefetchingDisplayedIconLayerForReason:(id)reason;
- (void)cancelDrag;
- (void)cancelDragLift;
- (void)cleanUpAfterDropAnimation;
- (void)cleanupAfterCrossfade;
- (void)cleanupAfterFloatyFolderCrossfade;
- (void)clearIconImageInfo;
- (void)configurationInteractionDidBegin:(id)begin;
- (void)configurationInteractionDidCommit:(id)commit;
- (void)configurationInteractionDidEnd:(id)end;
- (void)configurationInteractionWillBegin:(id)begin;
- (void)configurationInteractionWillEnd:(id)end;
- (void)configureBorrowingIconImageViewFromIconView:(id)view;
- (void)configureCustomIconImageViewController:(id)controller;
- (void)configureForLabelAllowed:(BOOL)allowed;
- (void)configureLabelImageParametersBuilder:(id)builder;
- (void)configureMatchingIconView:(id)view;
- (void)consumeSinglePressUpForButtonKind:(int64_t)kind;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)dismissConfigurationCard;
- (void)dismissConfigurationCardImmediately;
- (void)dismissContextMenuWithCompletion:(id)completion;
- (void)dismissStackConfigurationCard;
- (void)dismissStackConfigurationCardImmediately;
- (void)dragInteraction:(id)interaction item:(id)item willAnimateCancelWithAnimator:(id)animator;
- (void)dragInteraction:(id)interaction session:(id)session willAddItems:(id)items forInteraction:(id)forInteraction;
- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session;
- (void)dragSession:(id)session didEndWithOperation:(unint64_t)operation;
- (void)dragSession:(id)session willEndWithOperation:(unint64_t)operation;
- (void)dragSessionWillBegin:(id)begin;
- (void)dropInteraction:(id)interaction performDrop:(id)drop;
- (void)dropInteraction:(id)interaction sessionDidEnd:(id)end;
- (void)dropInteraction:(id)interaction sessionDidEnter:(id)enter;
- (void)dropInteraction:(id)interaction sessionDidExit:(id)exit;
- (void)earlyTerminateContextMenuDismissAnimation;
- (void)editingModeGestureRecognizerDidFire:(id)fire;
- (void)endForbiddingEditingModeWithReason:(id)reason;
- (void)endPrefetchingDisplayedIconLayerForAnyReason;
- (void)endPrefetchingDisplayedIconLayerForReason:(id)reason;
- (void)homeScreenService:(id)service homeScreenIconStyleConfigurationDidChange:(id)change;
- (void)hoverGestureDidChange:(id)change;
- (void)iconAccessoriesDidUpdate:(id)update;
- (void)iconImageDidUpdate:(id)update;
- (void)iconInteractedWhenDisabled;
- (void)iconLaunchEnabledDidChange:(id)change;
- (void)iconProgressDidChange:(id)change;
- (void)layoutSubviews;
- (void)performAfterContextMenusDismissUsingBlock:(id)block;
- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator;
- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator;
- (void)popConfigurationCard;
- (void)popStackConfigurationCard;
- (void)prepareForReuse;
- (void)prepareToCrossfadeImageWithView:(id)view anchorPoint:(CGPoint)point options:(unint64_t)options;
- (void)prepareToCrossfadeWithFloatyFolderView:(id)view allowFolderInteraction:(BOOL)interaction;
- (void)presentConfigurationCard;
- (void)presentStackConfigurationCard;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesChanged:(id)changed withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)purgeCachedEditingViewData;
- (void)removeAllIconAnimations;
- (void)removeAssertion:(id)assertion;
- (void)removeBorrowedIconImageViewAssertion:(id)assertion;
- (void)removeDisallowGlassGroupingAssertion:(id)assertion;
- (void)removeDroppingAssertion:(id)assertion;
- (void)removeExtendResizeFinishAssertion:(id)assertion;
- (void)removeForbidAccessoryUpdatesAssertion:(id)assertion;
- (void)removeObserver:(id)observer;
- (void)resizeGestureRecognizerDidUpdate:(id)update;
- (void)scrollToFirstGapAnimated:(BOOL)animated;
- (void)scrollToGapOrTopIfFullOfPage:(unint64_t)page animated:(BOOL)animated;
- (void)scrollToTopOfFirstPageAnimated:(BOOL)animated;
- (void)scrollToTopOfPage:(unint64_t)page animated:(BOOL)animated;
- (void)setAllIconElementsButLabelHidden:(BOOL)hidden;
- (void)setAllowsAccessoryView:(BOOL)view;
- (void)setAllowsAdornmentsOverIconImage:(BOOL)image animated:(BOOL)animated;
- (void)setAllowsBlockedForScreenTimeExpiration:(BOOL)expiration;
- (void)setAllowsCloseBox:(BOOL)box withAnimation:(int64_t)animation;
- (void)setAllowsCursorInteraction:(BOOL)interaction;
- (void)setAllowsEditingAnimation:(BOOL)animation;
- (void)setAllowsIconImageView:(BOOL)view;
- (void)setAllowsLabelArea:(BOOL)area;
- (void)setAllowsPassthroughHitTesting:(BOOL)testing;
- (void)setAllowsProgressState:(BOOL)state;
- (void)setAllowsResizeHandle:(BOOL)handle;
- (void)setApproximateLayoutPosition:(SBIconApproximateLayoutPosition)position;
- (void)setBackgroundAndIconGridImageAlpha:(double)alpha;
- (void)setBounds:(CGRect)bounds;
- (void)setBoundsSizeFromIconImageSize:(CGSize)size;
- (void)setCancelingDrag:(BOOL)drag;
- (void)setConfigurationOptions:(unint64_t)options;
- (void)setContentVisibility:(unint64_t)visibility;
- (void)setContinuityInfo:(id)info animated:(BOOL)animated;
- (void)setCrossfadeFraction:(double)fraction;
- (void)setCustomIconImageViewController:(id)controller clearingOwner:(BOOL)owner;
- (void)setCustomIconImageViewHitTestingDisabled:(BOOL)disabled;
- (void)setDelegate:(id)delegate;
- (void)setDidDelayInsertingCustomImageViewDueToParentController:(BOOL)controller;
- (void)setDisplaysIconStatusInLabel:(BOOL)label;
- (void)setDragLifted:(BOOL)lifted;
- (void)setDragging:(BOOL)dragging updateImmediately:(BOOL)immediately;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setEditingAnimationStrength:(double)strength;
- (void)setFetchedApplicationShortcutItems:(id)items;
- (void)setFloatyFolderCrossfadeFraction:(double)fraction;
- (void)setFolderIconFrozen:(BOOL)frozen;
- (void)setFolderIconImageCache:(id)cache;
- (void)setFrame:(CGRect)frame;
- (void)setGrabbed:(BOOL)grabbed;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setIcon:(id)icon animated:(BOOL)animated;
- (void)setIconAccessoryAlpha:(double)alpha;
- (void)setIconContentScale:(double)scale;
- (void)setIconContentScalingEnabled:(BOOL)enabled;
- (void)setIconGridImageAlpha:(double)alpha;
- (void)setIconImageAllowsGlassGrouping:(BOOL)grouping;
- (void)setIconImageAlpha:(double)alpha;
- (void)setIconImageAndAccessoryAlpha:(double)alpha;
- (void)setIconImageBackdropGroupName:(id)name;
- (void)setIconImageCache:(id)cache;
- (void)setIconImageGlassHidden:(BOOL)hidden;
- (void)setIconImageInfo:(SBIconImageInfo *)info;
- (void)setIconLabelAlpha:(double)alpha;
- (void)setIconLabelViewFactory:(id)factory;
- (void)setLabelAccessoryHidden:(BOOL)hidden;
- (void)setLabelHidden:(BOOL)hidden;
- (void)setLabelStyle:(int64_t)style;
- (void)setLegibilitySettings:(id)settings;
- (void)setListLayoutProvider:(id)provider animated:(BOOL)animated;
- (void)setLocation:(id)location animated:(BOOL)animated;
- (void)setMorphFraction:(double)fraction;
- (void)setOrientation:(int64_t)orientation;
- (void)setOverlapping:(BOOL)overlapping;
- (void)setOverrideAccessoryIconImageAppearance:(id)appearance;
- (void)setOverrideBadgeNumberOrString:(id)string animated:(BOOL)animated;
- (void)setOverrideCustomIconImageViewController:(id)controller;
- (void)setOverrideIconImageAppearance:(id)appearance;
- (void)setOverrideIconImageStyleConfiguration:(id)configuration;
- (void)setOverrideImage:(id)image;
- (void)setOverrideImageAppearance:(id)appearance onCustomIconImageViewController:(id)controller;
- (void)setOverrideImageStyleConfiguration:(id)configuration onCustomIconImageViewController:(id)controller;
- (void)setOverrideParentViewControllerForCustomIconImageViewController:(id)controller;
- (void)setPaused:(BOOL)paused;
- (void)setPaused:(BOOL)paused forReason:(unint64_t)reason;
- (void)setPendingIcon:(id)icon;
- (void)setPrefersFlatImageLayers:(BOOL)layers;
- (void)setPresentationModeFolderContext:(id)context;
- (void)setRefusesRecipientStatus:(BOOL)status;
- (void)setResizing:(BOOL)resizing;
- (void)setSharesIconTintColorWithSpringBoard:(BOOL)board;
- (void)setShowsDropGlow:(BOOL)glow animator:(id)animator;
- (void)setShowsFocusEffect:(BOOL)effect;
- (void)setShowsImageAndLabelDuringDrop:(BOOL)drop;
- (void)setShowsSquareCorners:(BOOL)corners;
- (void)setStartsDragMoreQuickly:(BOOL)quickly;
- (void)setSuppressesDefaultEditingAnimation:(BOOL)animation;
- (void)setUserInteractionEnabled:(BOOL)enabled;
- (void)setUserVisibilityStatus:(unint64_t)status;
- (void)setUsesSceneUserInterfaceStyleForImage:(BOOL)image;
- (void)setWantsFocusProxyView:(BOOL)view;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)setupFocusEffectPlatterView;
- (void)startForbiddingEditingModeWithReason:(id)reason;
- (void)stealIconImageView;
- (void)tapGestureDidChange:(id)change;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)updateAccessoryViewContainerIfNecessary;
- (void)updateAccessoryViewOverrideIconImageAppearance;
- (void)updateContentVisibilityOnCurrentImageView;
- (void)updateCustomIconImageViewController;
- (void)updateImageContainerViewSubviewOrder;
- (void)updateParallaxSettings;
- (void)updateWindowSceneUserInterfaceStyleChangeRegistrationForWindow:(id)window;
- (void)willMoveToWindow:(id)window;
- (void)windowSceneUserInterfaceStyleChanged;
@end

@implementation SBIconView

- (void)updateParallaxSettings
{
  if (objc_opt_respondsToSelector())
  {
    badgeParallaxSettings = [(SBIconView *)self badgeParallaxSettings];
    [(SBIconAccessoryView *)self->_accessoryView setParallaxSettings:?];
  }

  else
  {
    if (!self->_closeBox)
    {
      return;
    }

    badgeParallaxSettings = [(SBIconView *)self badgeParallaxSettings];
  }

  if ((SBHPerformanceFlagEnabled(9) & 1) == 0)
  {
    SBFApplyParallaxSettingsToView();
  }
}

- (id)badgeParallaxSettings
{
  if ([(SBIconView *)self isPaused])
  {
    v3 = 0;
  }

  else
  {
    behaviorDelegate = [(SBIconView *)self behaviorDelegate];
    if (objc_opt_respondsToSelector())
    {
      v3 = [behaviorDelegate parallaxSettingsForComponentsOfIconView:self];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)_updateBrightness
{
  if (objc_opt_respondsToSelector())
  {
    [(SBIconAccessoryView *)self->_accessoryView setControlState:[(SBIconView *)self controlState]];
  }

  [(SBIconView *)self effectiveBrightness];
  v4 = v3;
  [(SBIconImageView *)self->_iconImageView setBrightness:?];
  [(SBIconAccessoryView *)self->_accessoryView setAccessoryBrightness:v4];
  if (objc_opt_respondsToSelector())
  {
    customIconImageViewController = self->_customIconImageViewController;

    [(SBIconViewCustomImageViewControlling *)customIconImageViewController setBrightness:v4];
  }
}

- (double)effectiveBrightness
{
  controlState = [(SBIconView *)self controlState];

  [(SBIconView *)self effectiveBrightnessForControlState:controlState];
  return result;
}

- (unint64_t)controlState
{
  if ((*(self + 553) & 0x40) != 0)
  {
    v3 = 2 * ((*(self + 553) >> 7) ^ 1u);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 | [(SBIconView *)self isHighlighted];
  if ([(SBIconView *)self isTimedOut])
  {
    v4 |= 0x10000uLL;
  }

  if ([(SBIconView *)self isTouchDownInIcon])
  {
    return v4 | 0x20000;
  }

  else
  {
    return v4;
  }
}

- (BOOL)isTimedOut
{
  icon = [(SBIconView *)self icon];
  if ([icon isTimedOut])
  {
    allowsBlockedForScreenTimeExpiration = [(SBIconView *)self allowsBlockedForScreenTimeExpiration];
  }

  else
  {
    allowsBlockedForScreenTimeExpiration = 0;
  }

  return allowsBlockedForScreenTimeExpiration;
}

- (CGRect)iconImageFrame
{
  currentImageView = [(SBIconView *)self currentImageView];
  [currentImageView frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

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

- (SBIconImageInfo)iconImageInfo
{
  selfCopy = self;
  if ((BYTE5(self[17].size.height) & 8) == 0)
  {
    listLayoutProvider = [(SBIconImageInfo *)self listLayoutProvider];
    iconImageCache = [(SBIconImageInfo *)selfCopy iconImageCache];
    listLayout = [(SBIconImageInfo *)selfCopy listLayout];
    gridSizeClass = [(SBIconImageInfo *)selfCopy gridSizeClass];
    orientation = [(SBIconImageInfo *)selfCopy orientation];
    if (listLayoutProvider || !iconImageCache)
    {
      goto LABEL_6;
    }

    defaultGridSizeClass = [objc_opt_class() defaultGridSizeClass];
    v10 = defaultGridSizeClass;
    if (gridSizeClass == defaultGridSizeClass)
    {

      goto LABEL_16;
    }

    defaultGridSizeClass2 = [objc_opt_class() defaultGridSizeClass];
    v12 = [gridSizeClass isEqualToString:defaultGridSizeClass2];

    if (!v12)
    {
LABEL_6:
      if (gridSizeClass)
      {
        if (objc_opt_respondsToSelector())
        {
          [listLayout iconImageInfoForGridSizeClass:gridSizeClass orientation:orientation];
LABEL_18:

          return self;
        }

        if (objc_opt_respondsToSelector())
        {
          [listLayout iconImageInfoForGridSizeClass:gridSizeClass];
          goto LABEL_18;
        }
      }

      if (listLayout)
      {
        v13 = listLayout;
LABEL_17:
        [v13 iconImageInfo];
        goto LABEL_18;
      }

      if (!iconImageCache)
      {
        [objc_opt_class() defaultIconImageSize];
        [objc_opt_class() defaultIconImageScale];
        [objc_opt_class() defaultIconImageCornerRadius];
        goto LABEL_18;
      }
    }

LABEL_16:
    v13 = iconImageCache;
    goto LABEL_17;
  }

  return self;
}

- (SBIconListLayout)listLayout
{
  location = [(SBIconView *)self location];
  if (location)
  {
    effectiveListLayoutProvider = [(SBIconView *)self effectiveListLayoutProvider];
    v5 = [effectiveListLayoutProvider layoutForIconLocation:location];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)gridSizeClass
{
  icon = [(SBIconView *)self icon];
  gridSizeClass = [icon gridSizeClass];
  if (!gridSizeClass)
  {
    gridSizeClass = [objc_opt_class() defaultGridSizeClass];
  }

  return gridSizeClass;
}

- (unint64_t)configurationOptions
{
  if ([(SBIconView *)self isUserInteractionEnabled])
  {
    v3 = 0;
  }

  else
  {
    v3 = 4;
  }

  if (![(SBIconView *)self allowsLabelArea])
  {
    v3 |= 2uLL;
  }

  allowsPassthroughHitTesting = [(SBIconView *)self allowsPassthroughHitTesting];
  v5 = v3 | 8;
  if (!allowsPassthroughHitTesting)
  {
    v5 = v3;
  }

  v6 = v5 | (*(self + 557) >> 1) & 0x10;
  if (![(SBIconView *)self allowsAccessoryView])
  {
    v6 |= 0x20uLL;
  }

  if (![(SBIconView *)self allowsIconImageView])
  {
    v6 |= 0x80uLL;
  }

  if ([(SBIconView *)self showsSquareCorners])
  {
    return v6 | 0x100;
  }

  else
  {
    return v6;
  }
}

- (CGSize)iconViewSize
{
  [(SBIconView *)self iconImageSize];

  [(SBIconView *)self iconViewSizeForIconImageSize:?];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)_notifyObserversSizeDidChange
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSHashTable *)self->_observers copy];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 iconViewSizeDidChange:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

+ (BOOL)_shouldAlwaysHaveContentContainerView
{
  if (_shouldAlwaysHaveContentContainerView_onceToken != -1)
  {
    +[SBIconView _shouldAlwaysHaveContentContainerView];
  }

  return _shouldAlwaysHaveContentContainerView_shouldAlwaysHaveContentContainerView;
}

- (BOOL)_shouldShowLabel
{
  _labelHidingReason = [(SBIconView *)self _labelHidingReason];
  v3 = _labelHidingReason == 0;

  return v3;
}

- (id)_labelHidingReason
{
  if ((*(self + 555) & 2) != 0)
  {
    return @"hideLabel iVar";
  }

  if (![(SBIconView *)self allowsLabelArea])
  {
    return @"label area";
  }

  icon = [(SBIconView *)self icon];

  if (!icon)
  {
    return @"icon is nil";
  }

  listLayout = [(SBIconView *)self listLayout];
  v5 = SBHIconListLayoutShowsLabels(listLayout);

  if (!v5)
  {
    return @"list layout";
  }

  behaviorDelegate = [(SBIconView *)self behaviorDelegate];
  if (objc_opt_respondsToSelector())
  {
    if ([behaviorDelegate iconViewDisplaysLabel:self])
    {
      v7 = 0;
    }

    else
    {
      v7 = @"behavior delegate";
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (double)effectiveIconLabelAlpha
{
  iconLabelAlpha = self->_iconLabelAlpha;
  v4 = 0.0;
  if (![(SBIconView *)self _hideIconLabelForCustomIconImageViewController])
  {
    if ([(SBIconView *)self isDropping])
    {
      if (self->_showsImageAndLabelDuringDrop)
      {
        return 1.0;
      }

      else
      {
        return 0.0;
      }
    }

    else if (![(SBIconView *)self isOverlapping])
    {
      v4 = 1.0;
      if (![(SBIconView *)self isGrabbed]&& ![(SBIconView *)self isDragging])
      {
        if ([(SBIconView *)self _hideIconLabelForContextMenu])
        {
          return 0.0;
        }

        else
        {
          return iconLabelAlpha;
        }
      }
    }
  }

  return v4;
}

- (BOOL)_hideIconLabelForCustomIconImageViewController
{
  if (!self->_customIconImageViewController || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  customIconImageViewController = self->_customIconImageViewController;

  return [(SBIconViewCustomImageViewControlling *)customIconImageViewController wantsLabelHidden];
}

- (BOOL)_hideIconLabelForContextMenu
{
  isShowingContextMenu = [(SBIconView *)self isShowingContextMenu];
  if (isShowingContextMenu)
  {
    LOBYTE(isShowingContextMenu) = ![(NSHashTable *)self->_contextMenuInteractionConfigurations isEqualToHashTable:self->_dismissingContextMenuInteractionConfigurations];
  }

  return isShowingContextMenu;
}

- (void)_updateLabelAccessoryView
{
  [(SBIconView *)self _configureLabelAccessoryViewForType:[(SBIconView *)self currentLabelAccessoryType]];

  [(SBIconView *)self setNeedsLayout];
}

- (int64_t)currentLabelAccessoryType
{
  if ((*(self + 555) & 4) != 0)
  {
    return 0;
  }

  if (![(SBIconView *)self allowsLabelAccessoryView])
  {
    return 0;
  }

  result = [(SBIcon *)self->_icon labelAccessoryType];
  if (result == 4)
  {
    if ([(SBIconView *)self allowsBlockedForScreenTimeExpiration])
    {
      return 4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)_updateFrameToIconViewSize
{
  [(SBIconView *)self iconImageSize];
  v4 = v3;
  v6 = v5;
  self->_visibleImageRect.origin.x = 0.0;
  self->_visibleImageRect.origin.y = 0.0;
  self->_visibleImageRect.size.width = v3;
  self->_visibleImageRect.size.height = v5;
  UIRectGetCenter();
  v8 = v7;
  v10 = v9;
  [(SBIconView *)self iconViewSizeForIconImageSize:v4, v6];
  if (v11 <= 0.0 || (v13 = v12, v12 <= 0.0))
  {
    layer = [(SBIconView *)self layer];
    [layer setAnchorPoint:{0.5, 0.5}];
  }

  else
  {
    v14 = v11;
    v15 = v8 / v11;
    layer2 = [(SBIconView *)self layer];
    [layer2 setAnchorPoint:{v15, v10 / v13}];

    [(SBIconView *)self setBounds:0.0, 0.0, v14, v13];
  }
}

- (void)addGesturesAndInteractionsIfNecessary
{
  icon = [(SBIconView *)self icon];
  if ([(SBIconView *)self isUserInteractionEnabled]&& icon)
  {
    if (!self->_dropInteraction)
    {
      v3 = [objc_alloc(MEMORY[0x1E69DC9B8]) initWithDelegate:self];
      dropInteraction = self->_dropInteraction;
      self->_dropInteraction = v3;

      [(SBIconView *)self addInteraction:self->_dropInteraction];
    }

    if (!self->_dragInteraction && [objc_opt_class() supportsDragInteraction])
    {
      v5 = [(UIDragInteraction *)[SBIconDragInteraction alloc] initWithDelegate:self];
      dragInteraction = self->_dragInteraction;
      self->_dragInteraction = &v5->super;

      [(UIDragInteraction *)self->_dragInteraction _setCancellationTimerEnabled:0];
      [(SBIconView *)self _updateDragInteractionLiftDelay];
      [(SBIconView *)self addInteraction:self->_dragInteraction];
    }

    if (!self->_tapGestureRecognizer && [objc_opt_class() supportsTapGesture])
    {
      v7 = [[SBIconTapGestureRecognizer alloc] initWithTarget:self action:sel_tapGestureDidChange_];
      tapGestureRecognizer = self->_tapGestureRecognizer;
      self->_tapGestureRecognizer = &v7->super;

      [(UITapGestureRecognizer *)self->_tapGestureRecognizer setDelegate:self];
      [(UITapGestureRecognizer *)self->_tapGestureRecognizer setDelaysTouchesBegan:0];
      [(UITapGestureRecognizer *)self->_tapGestureRecognizer setAllowedTouchTypes:&unk_1F3DB2CA8];
      [(SBIconView *)self addGestureRecognizer:self->_tapGestureRecognizer];
    }

    if (!self->_editingModeGestureRecognizer)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        v11 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel_editingModeGestureRecognizerDidFire_];
        editingModeGestureRecognizer = self->_editingModeGestureRecognizer;
        self->_editingModeGestureRecognizer = v11;

        [(UILongPressGestureRecognizer *)self->_editingModeGestureRecognizer setMinimumPressDuration:2.0];
        [(UILongPressGestureRecognizer *)self->_editingModeGestureRecognizer setDelegate:self];
        [(UILongPressGestureRecognizer *)self->_editingModeGestureRecognizer _setKeepTouchesOnContinuation:1];
        [(UILongPressGestureRecognizer *)self->_editingModeGestureRecognizer setAllowableMovement:20.0];
        [(SBIconView *)self addGestureRecognizer:self->_editingModeGestureRecognizer];
      }
    }

    if (!self->_contextMenuInteraction && [objc_opt_class() supportsPreviewInteraction] && (*(self + 557) & 0x20) == 0)
    {
      v13 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:self];
      contextMenuInteraction = self->_contextMenuInteraction;
      self->_contextMenuInteraction = v13;

      [(SBIconView *)self addInteraction:self->_contextMenuInteraction];
      [(UIContextMenuInteraction *)self->_contextMenuInteraction setAllowSimultaneousRecognition:1];
    }

    if (!self->_iconViewCursorInteraction && [objc_opt_class() supportsCursorInteraction])
    {
      v15 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:self];
      iconViewCursorInteraction = self->_iconViewCursorInteraction;
      self->_iconViewCursorInteraction = v15;

      [(UIPointerInteraction *)self->_iconViewCursorInteraction setEnabled:[(SBIconView *)self _isCursorInteractionEnabled]];
      [(SBIconView *)self addInteraction:self->_iconViewCursorInteraction];
    }

    if (!self->_hoverGestureRecognizer && [objc_opt_class() supportsHoverGesture])
    {
      v17 = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:self action:sel_hoverGestureDidChange_];
      hoverGestureRecognizer = self->_hoverGestureRecognizer;
      self->_hoverGestureRecognizer = v17;

      [(UIHoverGestureRecognizer *)self->_hoverGestureRecognizer setDelegate:self];
      [(SBIconView *)self addGestureRecognizer:self->_hoverGestureRecognizer];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)_updateDragInteractionLiftDelay
{
  [(SBIconView *)self dragInteractionLiftDelay];
  v4 = v3;
  dragInteraction = [(SBIconView *)self dragInteraction];
  [dragInteraction _setLiftDelay:v4];
}

- (BOOL)shouldShowResizeHandle
{
  isEditing = [(SBIconView *)self isEditing];
  if (isEditing)
  {

    LOBYTE(isEditing) = [(SBIconView *)self canShowResizeHandle];
  }

  return isEditing;
}

- (id)_folderIconImageView
{
  _iconImageView = [(SBIconView *)self _iconImageView];
  v3 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v4 = _iconImageView;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)currentImageView
{
  crossfadeView = self->_crossfadeView;
  if (crossfadeView)
  {
    goto LABEL_2;
  }

  if (!self->_customIconImageViewController)
  {
    crossfadeView = self->_iconImageView;
LABEL_2:
    view = crossfadeView;
    goto LABEL_5;
  }

  view = [(SBIconViewCustomImageViewControlling *)self->_customIconImageViewController view];
LABEL_5:

  return view;
}

- (id)effectiveListLayoutProvider
{
  listLayoutProvider = [(SBIconView *)self listLayoutProvider];
  if (!listLayoutProvider)
  {
    listLayoutProvider = +[SBHDefaultIconListLayoutProvider frameworkFallbackInstance];
  }

  return listLayoutProvider;
}

+ (CGSize)defaultIconImageSize
{
  v2 = 50.0;
  v3 = 50.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)dragInteractionLiftDelay
{
  [objc_opt_class() _defaultDragInteractionLiftDelay];
  v4 = v3;
  if ([(SBIconView *)self isEditing])
  {
    iconEditingSettings = self->_iconEditingSettings;
    if (iconEditingSettings)
    {
      [(SBHIconEditingSettings *)iconEditingSettings editingLiftDelay];
      if (v6 < v4)
      {
        v4 = v6;
      }
    }

    else
    {
      v4 = 0.1;
    }
  }

  startsDragMoreQuickly = [(SBIconView *)self startsDragMoreQuickly];
  result = 0.2;
  if (!startsDragMoreQuickly || v4 <= 0.2)
  {
    return v4;
  }

  return result;
}

- (CGSize)maxLabelSize
{
  listLayout = [(SBIconView *)self listLayout];
  contentSizeCategory = [(SBIconView *)self contentSizeCategory];
  isLabelTextBold = [(SBIconView *)self isLabelTextBold];
  [(SBIconView *)self iconImageInfo];
  v7 = v6;
  v9 = v8;
  v10 = objc_opt_class();
  if (listLayout)
  {
    [v10 maxLabelSizeForListLayout:listLayout iconImageSize:contentSizeCategory contentSizeCategory:isLabelTextBold options:{v7, v9}];
  }

  else
  {
    [v10 maxLabelSizeForIconImageSize:contentSizeCategory contentSizeCategory:isLabelTextBold options:{v7, v9}];
  }

  v13 = v11;
  v14 = v12;

  v15 = v13;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (id)contentSizeCategory
{
  preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  if (!preferredContentSizeCategory)
  {
    preferredContentSizeCategory = *MEMORY[0x1E69DDC90];
  }

  return preferredContentSizeCategory;
}

- (BOOL)shouldShowCloseBox
{
  isEditing = [(SBIconView *)self isEditing];
  if (isEditing)
  {

    LOBYTE(isEditing) = [(SBIconView *)self canShowCloseBox];
  }

  return isEditing;
}

- (BOOL)canShowAccessoryView
{
  if ([(SBIconView *)self allowsAdornmentsOverIconImage])
  {
    currentAccessoryType = [(SBIconView *)self currentAccessoryType];
    behaviorDelegate = [(SBIconView *)self behaviorDelegate];
    if (!self->_icon)
    {
      v5 = 0;
      goto LABEL_12;
    }

    if ([objc_opt_class() _alwaysShowsAccessoryOfType:currentAccessoryType])
    {
LABEL_4:
      v5 = 1;
LABEL_12:

      return v5;
    }

    if (objc_opt_respondsToSelector())
    {
      v6 = [behaviorDelegate iconViewDisplaysBadges:self];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_4;
      }

      v6 = [behaviorDelegate iconViewDisplaysAccessories:self];
    }

    v5 = v6;
    goto LABEL_12;
  }

  return 0;
}

- (int64_t)currentAccessoryType
{
  if (![(SBIconView *)self allowsAccessoryView])
  {
    return 0;
  }

  icon = [(SBIconView *)self icon];
  location = [(SBIconView *)self location];
  v5 = [icon accessoryTypeForLocation:location];
  overrideBadgeNumberOrString = [(SBIconView *)self overrideBadgeNumberOrString];
  if (overrideBadgeNumberOrString)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5;
  }

  if ([(SBIconView *)self _debugContinuity])
  {
    v8 = 2;
  }

  else
  {
    v8 = v7;
  }

  if (v8 <= 1)
  {
    continuityInfo = [(SBIconView *)self continuityInfo];
    if (continuityInfo)
    {

LABEL_13:
      v8 = 2;
      goto LABEL_14;
    }

    v8 = v7;
    if ([(SBIconView *)self _debugContinuity])
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  behaviorDelegate = [(SBIconView *)self behaviorDelegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [behaviorDelegate iconView:self accessoryTypeWithProposedAccessoryType:v8];
  }

  return v8;
}

- (BOOL)_debugContinuity
{
  if (!os_variant_has_internal_content())
  {
    return 0;
  }

  debugContinuityItem = [objc_opt_class() debugContinuityItem];
  v3 = debugContinuityItem != 0;

  return v3;
}

- (id)behaviorDelegate
{
  delegate = [(SBIconView *)self delegate];
  v4 = delegate;
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate behaviorDelegateForIconView:self];
  }

  return v4;
}

- (SBIconViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_shouldShowTooltip
{
  _tooltipHidingReason = [(SBIconView *)self _tooltipHidingReason];
  v3 = _tooltipHidingReason == 0;

  return v3;
}

- (id)_tooltipHidingReason
{
  icon = [(SBIconView *)self icon];

  if (!icon)
  {
    return @"icon is nil";
  }

  listLayout = [(SBIconView *)self listLayout];
  v5 = SBHIconListLayoutShowsTooltipsOnHover(listLayout);

  if (v5)
  {
    return 0;
  }

  else
  {
    return @"list layout";
  }
}

- (void)_destroyAccessoryView
{
  if (self->_accessoryView)
  {
    [(SBIconView *)self _destroyAccessoryView:?];
    accessoryView = self->_accessoryView;
    self->_accessoryView = 0;
  }
}

- (id)reuseDelegate
{
  delegate = [(SBIconView *)self delegate];
  v4 = delegate;
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate reuseDelegateForIconView:self];
  }

  return v4;
}

- (BOOL)isIconImageViewBorrowed
{
  borrowedIconImageViewAssertion = [(SBIconView *)self borrowedIconImageViewAssertion];
  v3 = borrowedIconImageViewAssertion != 0;

  return v3;
}

- (SBIconViewAssertion)borrowedIconImageViewAssertion
{
  WeakRetained = objc_loadWeakRetained(&self->_borrowedIconImageViewAssertion);

  return WeakRetained;
}

- (void)updateCustomIconImageViewController
{
  overrideCustomIconImageViewController = [(SBIconView *)self overrideCustomIconImageViewController];
  if (!overrideCustomIconImageViewController)
  {
    if ([(SBIconView *)self allowsCustomIconImageViewController])
    {
      behaviorDelegate = [(SBIconView *)self behaviorDelegate];
      if (objc_opt_respondsToSelector())
      {
        v7 = [behaviorDelegate customImageViewControllerForIconView:self];
      }

      else
      {
        v7 = 0;
      }

      overrideCustomIconImageViewController = v7;
    }

    else
    {
      overrideCustomIconImageViewController = 0;
    }
  }

  v8 = overrideCustomIconImageViewController;
  [(SBIconView *)self setCustomIconImageViewController:overrideCustomIconImageViewController];
  if (![(SBIconView *)self isIconImageViewBorrowed])
  {
    viewIfLoaded = [v8 viewIfLoaded];
    v6 = viewIfLoaded;
    if (viewIfLoaded && ([viewIfLoaded isDescendantOfView:self] & 1) == 0)
    {
      [(SBIconView *)self _insertIconImageView:v6];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)allowsCustomIconImageViewController
{
  icon = [(SBIconView *)self icon];
  if (icon)
  {
    v3 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    v5 = isKindOfClass ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (SBIconLabelViewFactory)iconLabelViewFactory
{
  iconLabelViewFactory = self->_iconLabelViewFactory;
  if (!iconLabelViewFactory)
  {
    createNewIconLabelViewFactory = [(SBIconView *)self createNewIconLabelViewFactory];
    v5 = self->_iconLabelViewFactory;
    self->_iconLabelViewFactory = createNewIconLabelViewFactory;

    iconLabelViewFactory = self->_iconLabelViewFactory;
  }

  v6 = iconLabelViewFactory;

  return v6;
}

- (void)updateAccessoryViewOverrideIconImageAppearance
{
  if (objc_opt_respondsToSelector())
  {
    effectiveOverrideAccessoryIconImageAppearance = [(SBIconView *)self effectiveOverrideAccessoryIconImageAppearance];
    [(SBIconAccessoryView *)self->_accessoryView setOverrideIconImageAppearance:effectiveOverrideAccessoryIconImageAppearance];
  }
}

- (Class)expectedIconImageViewClass
{
  if (self->_icon)
  {
    v2 = [(SBIcon *)self->_icon iconImageViewClassForLocation:self->_iconLocation];
  }

  else
  {
    v2 = objc_opt_self();
  }

  return v2;
}

- (id)_makeIconImageView
{
  reuseDelegate = [(SBIconView *)self reuseDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [reuseDelegate imageViewForIconView:self];
  }

  else
  {
    v4 = objc_alloc_init([(SBIconView *)self expectedIconImageViewClass]);
  }

  v5 = v4;
  [(SBIconView *)self _configureIconImageView:v4];

  return v5;
}

- (void)_destroyIconImageView
{
  if (self->_iconImageView)
  {
    if ([(SBIconAccessoryView *)self->_accessoryView isDescendantOfView:?])
    {
      [(SBIconAccessoryView *)self->_accessoryView removeFromSuperview];
    }

    reuseDelegate = [(SBIconView *)self reuseDelegate];
    if (self->_iconImageView)
    {
      v3 = objc_opt_respondsToSelector();
      iconImageView = self->_iconImageView;
      if (v3)
      {
        [reuseDelegate iconView:self willRemoveIconImageView:iconImageView];
        iconImageView = self->_iconImageView;
      }
    }

    else
    {
      iconImageView = 0;
    }

    if ([(SBIconImageView *)iconImageView isDescendantOfView:self])
    {
      [(SBIconImageView *)self->_iconImageView removeFromSuperview];
    }

    v5 = self->_iconImageView;
    self->_iconImageView = 0;

    *(self + 560) &= ~2u;
  }
}

- (UIFont)labelFont
{
  v3 = self->_labelFont;
  contentSizeCategory = [(SBIconView *)self contentSizeCategory];
  if (!v3)
  {
    listLayout = [(SBIconView *)self listLayout];
    if (objc_opt_respondsToSelector())
    {
      v3 = [listLayout labelFontForContentSizeCategory:contentSizeCategory options:{-[SBIconView isLabelTextBold](self, "isLabelTextBold")}];

      if (v3)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v3 = [SBIconLabelImageParametersBuilder defaultFontForContentSizeCategory:contentSizeCategory languageInsets:0];
  }

LABEL_7:

  return v3;
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = SBIconView;
  [(SBIconView *)&v27 layoutSubviews];
  [(SBIconView *)self bounds];
  [(UIView *)self->_scalingContainer setBounds:?];
  scalingContainer = self->_scalingContainer;
  UIRectGetCenter();
  [(UIView *)scalingContainer setCenter:?];
  currentImageView = [(SBIconView *)self currentImageView];
  [(SBIconView *)self _frameForImageView];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(UIView *)self->_imageContainerView sbf_setBoundsAndPositionFromFrame:?];
  if ([(SBIconView *)self shouldUpdateFrameOfIconImageView])
  {
    [currentImageView sbf_setBoundsAndPositionFromFrame:{v6, v8, v10, v12}];
  }

  crossfadeView = self->_crossfadeView;
  if (crossfadeView)
  {
    [(SBIconImageCrossfadeView *)crossfadeView layoutIfNeeded];
  }

  [(SBIconView *)self _frameForLabel];
  [(SBIconLabelView *)self->_labelView setFrame:?];
  if (self->_labelAccessoryView)
  {
    [(SBIconView *)self _frameForLabelAccessory];
    [(SBIconLabelAccessoryView *)self->_labelAccessoryView setFrame:?];
  }

  accessoryView = self->_accessoryView;
  if (accessoryView)
  {
    [(SBIconView *)self _centerForAccessoryView];
    [(SBIconAccessoryView *)accessoryView setCenter:?];
  }

  closeBox = self->_closeBox;
  if (closeBox)
  {
    [(SBIconView *)self _centerForCloseBox];
    [(SBCloseBoxView *)closeBox setCenter:?];
  }

  resizeHandle = self->_resizeHandle;
  if (resizeHandle)
  {
    [(SBIconView *)self _centerForResizeHandle];
    [(SBHIconResizeHandle *)resizeHandle setCenter:?];
  }

  if (self->_tooltipView)
  {
    icon = [(SBIconView *)self icon];

    if (icon)
    {
      tooltipView = self->_tooltipView;
      icon2 = [(SBIconView *)self icon];
      displayName = [icon2 displayName];
      [(SBHTooltipView *)tooltipView setText:displayName];

      [(SBHTooltipView *)self->_tooltipView intrinsicContentSize];
      v22 = v21;
      v24 = v23;
      [(SBIconView *)self bounds];
      [(SBHTooltipView *)self->_tooltipView setFrame:CGRectGetMidX(v28) + v22 * -0.5, -45.0, v22, v24];
    }
  }

  focusEffectPlatterView = self->_focusEffectPlatterView;
  if (focusEffectPlatterView)
  {
    [(SBIconView *)self _focusEffectCenter];
    [(SBIconFocusEffectPlatterView *)focusEffectPlatterView setCenter:?];
    v26 = self->_focusEffectPlatterView;
    [(SBIconView *)self _focusEffectBounds];
    [(SBIconFocusEffectPlatterView *)v26 setBounds:?];
  }
}

- (CGRect)_frameForImageView
{
  if (self->_iconImageSizeMatchesBoundsSize)
  {
    [(SBIconView *)self bounds];
  }

  else
  {
    [(SBIconView *)self iconImageSize];
    v4 = v6;
    v5 = v7;
    v3 = 0.0;
    v2 = 0.0;
  }

  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)shouldUpdateFrameOfIconImageView
{
  if ([(SBIconView *)self isIconImageViewBorrowed])
  {
    return 0;
  }

  currentImageView = [(SBIconView *)self currentImageView];
  v5 = [currentImageView isDescendantOfView:self];

  return v5;
}

- (CGRect)_frameForLabel
{
  _labelImageMetrics = [(SBIconView *)self _labelImageMetrics];
  [(SBIconView *)self _frameForImageView];
  v41 = v5;
  v42 = v4;
  v39 = v7;
  v40 = v6;
  [(SBIconView *)self _labelBaselineOffsetFromImage];
  [(SBIconView *)self bounds];
  v37 = v9;
  v38 = v8;
  v35 = v11;
  v36 = v10;
  [_labelImageMetrics imageRect];
  v13 = v12;
  v15 = v14;
  [_labelImageMetrics alignmentRectInsets];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [_labelImageMetrics baselineOffsetFromBottom];
  v24 = v13 - (v19 + v23);
  v25 = v15 - (v17 + v21);
  traitCollection = [(SBIconView *)self traitCollection];
  [traitCollection displayScale];

  v43.origin.y = v37;
  v43.origin.x = v38;
  v43.size.height = v35;
  v43.size.width = v36;
  CGRectGetWidth(v43);
  v44.origin.x = v19 + 0.0;
  v44.origin.y = v17 + 0.0;
  v44.size.width = v24;
  v44.size.height = v25;
  CGRectGetWidth(v44);
  v45.origin.x = v19 + 0.0;
  v45.origin.y = v17 + 0.0;
  v45.size.width = v24;
  v45.size.height = v25;
  CGRectGetMinX(v45);
  UICeilToScale();
  v28 = v27;
  v46.origin.y = v41;
  v46.origin.x = v42;
  v46.size.height = v39;
  v46.size.width = v40;
  CGRectGetMaxY(v46);
  UICeilToScale();
  v30 = v29;

  v31 = v28;
  v32 = v30;
  v33 = v13;
  v34 = v15;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (id)_labelImageMetrics
{
  imageParameters = [(SBIconLabelView *)self->_labelView imageParameters];
  metrics = [imageParameters metrics];

  return metrics;
}

- (double)_labelBaselineOffsetFromImage
{
  v3 = [(SBIconView *)self methodForSelector:sel__labelVerticalOffset];
  if (v3 == [SBIconView instanceMethodForSelector:sel__labelVerticalOffset])
  {
    labelConfiguration = [(SBIconView *)self labelConfiguration];
    [labelConfiguration baselineOffsetFromImage];
    v8 = v7;

    return v8;
  }

  else
  {
    [(SBIconView *)self _labelVerticalOffset];
    return v4 + 14.0;
  }
}

- (id)labelConfiguration
{
  listLayout = [(SBIconView *)self listLayout];
  contentSizeCategory = [(SBIconView *)self contentSizeCategory];
  v5 = [objc_opt_class() labelConfigurationForListLayout:listLayout contentSizeCategory:contentSizeCategory options:{-[SBIconView isLabelTextBold](self, "isLabelTextBold")}];

  return v5;
}

- (double)effectiveIconImageAlpha
{
  iconImageAlpha = self->_iconImageAlpha;
  if ([(SBIconView *)self isDropping]&& ![(SBIconView *)self isOverlapping])
  {
    if (self->_showsImageAndLabelDuringDrop)
    {
      return 1.0;
    }

    else
    {
      return 0.0;
    }
  }

  else
  {
    if ([(SBIconView *)self isOverlapping])
    {
      icon = [(SBIconView *)self icon];
      if ([icon isFolderIcon])
      {
      }

      else
      {
        customIconImageViewController = self->_customIconImageViewController;

        if (!customIconImageViewController)
        {
          return 0.5;
        }
      }
    }

    v5 = 1.0;
    if (![(SBIconView *)self isGrabbed]&& ![(SBIconView *)self isDragging])
    {
      if ([(SBIconView *)self allIconElementsButLabelHidden])
      {
        return 0.0;
      }

      else
      {
        return iconImageAlpha;
      }
    }
  }

  return v5;
}

- (double)effectiveIconAccessoryAlpha
{
  iconAccessoryAlpha = self->_iconAccessoryAlpha;
  v4 = 0.0;
  if (![(SBIconView *)self isDropping])
  {
    v4 = 1.0;
    if (![(SBIconView *)self isGrabbed]&& ![(SBIconView *)self isDragging])
    {
      if ([(SBIconView *)self allIconElementsButLabelHidden])
      {
        return 0.0;
      }

      else
      {
        return iconAccessoryAlpha;
      }
    }
  }

  return v4;
}

- (double)effectiveOverallAlpha
{
  isDropping = [(SBIconView *)self isDropping];
  result = 1.0;
  if (!isDropping)
  {
    isGrabbed = [(SBIconView *)self isGrabbed];
    result = 0.5;
    if (!isGrabbed)
    {
      isDragging = [(SBIconView *)self isDragging];
      result = 1.0;
      if (isDragging)
      {
        v7 = objc_opt_class();

        [v7 iconLiftAlpha];
      }
    }
  }

  return result;
}

- (UIView)contentContainerView
{
  if (self->_scalingContainer)
  {
    self = self->_scalingContainer;
  }

  return self;
}

- (UIView)imageContainerView
{
  imageContainerView = self->_imageContainerView;
  if (!imageContainerView)
  {
    contentContainerView = [(SBIconView *)self contentContainerView];
    [contentContainerView bounds];
    v9 = [[SBHTouchPassThroughView alloc] initWithFrame:v5, v6, v7, v8];
    v10 = self->_imageContainerView;
    self->_imageContainerView = &v9->super;

    v11 = self->_imageContainerView;
    if (self->_closeBox)
    {
      [contentContainerView insertSubview:v11 belowSubview:?];
    }

    else
    {
      [contentContainerView addSubview:v11];
    }

    imageContainerView = self->_imageContainerView;
  }

  return imageContainerView;
}

- (void)updateAccessoryViewContainerIfNecessary
{
  if (self->_accessoryView)
  {
    accessoryViewContainerView = [(SBIconView *)self accessoryViewContainerView];
    superview = [(SBIconAccessoryView *)self->_accessoryView superview];

    if (superview != accessoryViewContainerView)
    {
      [accessoryViewContainerView addSubview:self->_accessoryView];
    }

    [accessoryViewContainerView bringSubviewToFront:self->_accessoryView];
  }
}

- (id)effectiveIconImageAppearance
{
  overrideIconImageAppearance = [(SBIconView *)self overrideIconImageAppearance];
  overrideIconImageStyleConfiguration = [(SBIconView *)self overrideIconImageStyleConfiguration];
  traitCollectionForIconImageAppearance = [(SBIconView *)self traitCollectionForIconImageAppearance];
  v6 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:traitCollectionForIconImageAppearance overrideIconImageAppearance:overrideIconImageAppearance overrideIconImageStyleConfiguration:overrideIconImageStyleConfiguration];

  return v6;
}

- (id)traitCollectionForIconImageAppearance
{
  traitCollection = [(SBIconView *)self traitCollection];
  if ([(SBIconView *)self usesSceneUserInterfaceStyleForImage])
  {
    window = [(SBIconView *)self window];
    windowScene = [window windowScene];

    traitCollection2 = [windowScene traitCollection];
    v7 = traitCollection2;
    if (traitCollection2)
    {
      userInterfaceStyle = [traitCollection2 userInterfaceStyle];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __51__SBIconView_traitCollectionForIconImageAppearance__block_invoke;
      v11[3] = &__block_descriptor_40_e27_v16__0___UIMutableTraits__8l;
      v11[4] = userInterfaceStyle;
      v9 = [traitCollection traitCollectionByModifyingTraits:v11];

      traitCollection = v9;
    }
  }

  return traitCollection;
}

- (int64_t)progressState
{
  if (![(SBIconView *)self allowsProgressState])
  {
    return 0;
  }

  icon = self->_icon;

  return [(SBIcon *)icon progressState];
}

- (BOOL)isFolderIcon
{
  icon = [(SBIconView *)self icon];
  isFolderIcon = [icon isFolderIcon];

  return isFolderIcon;
}

- (void)_createAccessoryViewIfNecessary
{
  v3 = [objc_opt_class() defaultViewClassForAccessoryType:{-[SBIconView currentAccessoryType](self, "currentAccessoryType")}];
  if (([(SBIconAccessoryView *)self->_accessoryView isMemberOfClass:v3]& 1) == 0)
  {
    reuseDelegate = [(SBIconView *)self reuseDelegate];
    [(SBIconView *)self _destroyAccessoryView];
    if (v3)
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [reuseDelegate iconView:self iconAccessoryViewOfClass:v3];
      }

      else
      {
        v5 = objc_alloc_init(v3);
      }

      accessoryView = self->_accessoryView;
      self->_accessoryView = v5;

      if (objc_opt_respondsToSelector())
      {
        [(SBIconAccessoryView *)self->_accessoryView setLegibilityStyle:[(SBHLegibilitySettings *)self->_legibilitySettings style]];
      }

      if (objc_opt_respondsToSelector())
      {
        [(SBIconAccessoryView *)self->_accessoryView setControlState:[(SBIconView *)self controlState]];
      }

      v7 = self->_accessoryView;
      [(SBIconView *)self effectiveBrightness];
      [(SBIconAccessoryView *)v7 setAccessoryBrightness:?];
      v8 = self->_accessoryView;
      [(SBIconView *)self effectiveIconAccessoryAlpha];
      [(SBIconAccessoryView *)v8 setAlpha:?];
      v9 = self->_accessoryView;
      v10 = *(MEMORY[0x1E695EFD0] + 16);
      v15[0] = *MEMORY[0x1E695EFD0];
      v15[1] = v10;
      v15[2] = *(MEMORY[0x1E695EFD0] + 32);
      [(SBIconAccessoryView *)v9 setTransform:v15];
      [(SBIconView *)self updateParallaxSettings];
      if (objc_opt_respondsToSelector())
      {
        listLayout = [(SBIconView *)self listLayout];
        [(SBIconAccessoryView *)self->_accessoryView setListLayout:listLayout];
        [(SBIconAccessoryView *)self->_accessoryView sizeToFit];
      }

      if (objc_opt_respondsToSelector())
      {
        v12 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__accessoryViewTapGestureChanged_];
        [v12 setDelegate:self];
        [(SBIconAccessoryView *)self->_accessoryView addGestureRecognizer:v12];
        [(SBIconAccessoryView *)self->_accessoryView setActionTapGestureRecognizer:v12];
        v13 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:self->_accessoryView];
        accessoryViewCursorInteraction = self->_accessoryViewCursorInteraction;
        self->_accessoryViewCursorInteraction = v13;

        [(SBIconAccessoryView *)self->_accessoryView addInteraction:self->_accessoryViewCursorInteraction];
      }

      [(SBIconView *)self updateAccessoryViewOverrideIconImageAppearance];
    }
  }

  if (self->_accessoryView)
  {
    [(SBIconView *)self updateAccessoryViewContainerIfNecessary];
  }
}

- (void)_updateLaunchDisabled
{
  icon = self->_icon;
  if (icon)
  {
    v4 = ![(SBIcon *)icon isLaunchEnabled];
    icon = self->_icon;
  }

  else
  {
    v4 = 0;
  }

  isLaunchDisabledForObscuredReason = [(SBIcon *)icon isLaunchDisabledForObscuredReason];
  v6 = *(self + 553);
  if ((isLaunchDisabledForObscuredReason ^ (v6 >= 0)) & 1) != 0 || (isLaunchDisabledForObscuredReason & *(self + 554))
  {
    v7 = 1;
    if (!isLaunchDisabledForObscuredReason)
    {
LABEL_7:
      *(self + 554) &= ~1u;
    }
  }

  else
  {
    v7 = 0;
    if (isLaunchDisabledForObscuredReason)
    {
      v9 = 0x80;
    }

    else
    {
      v9 = 0;
    }

    *(self + 553) = v9 & 0x80 | v6 & 0x7F;
    if (!isLaunchDisabledForObscuredReason)
    {
      goto LABEL_7;
    }
  }

  v8 = *(self + 553);
  if (v4 != ((v8 >> 6) & 1))
  {
    *(self + 553) = v8 & 0xBF | (v4 << 6);
    if (!v4 || ((*(self + 553) < 0) & ~v7) == 0)
    {
      [(SBIconView *)self _updateBrightness];

      [(SBIconView *)self _updateLabel];
    }
  }
}

- (id)contextMenuDelegate
{
  delegate = [(SBIconView *)self delegate];
  v4 = delegate;
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate contextMenuDelegateForIconView:self];
  }

  return v4;
}

- (void)cleanupAfterCrossfade
{
  if (self->_crossfadeView)
  {
    [(SBIconView *)self setCrossfadeFraction:0.0];
    [(SBIconView *)self setCrossfadeCornerRadius:0.0];
    [(SBIconView *)self setMorphFraction:0.0];
    [(SBIconImageCrossfadeView *)self->_crossfadeView cleanup];
    [(SBIconImageCrossfadeView *)self->_crossfadeView removeFromSuperview];
    crossfadeView = self->_crossfadeView;
    self->_crossfadeView = 0;

    [(SBIconView *)self updateAccessoryViewContainerIfNecessary];
    if (!self->_customIconImageViewController)
    {
      currentImageView = [(SBIconView *)self currentImageView];
      [currentImageView setHidden:0];
      [(SBIconView *)self _insertIconImageView:currentImageView];
    }

    [(SBIconView *)self _updateIconImageAdornmentsAnimated:0];

    [(SBIconView *)self _updateJitter];
  }
}

- (void)didMoveToWindow
{
  v17 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = SBIconView;
  [(SBIconView *)&v15 didMoveToWindow];
  window = [(SBIconView *)self window];

  if ((*(self + 555) & 1) != 0 && !window)
  {
    v4 = [MEMORY[0x1E695DFD8] set];
    [(SBIconView *)self touchesCancelled:v4 withEvent:0];

    [(SBIconView *)self setPaused:1 forReason:1];
    goto LABEL_7;
  }

  [(SBIconView *)self setPaused:window == 0 forReason:1];
  if (!window)
  {
LABEL_7:
    [(SBIconView *)self dismissContextMenuWithCompletion:0];
    [(SBIconView *)self dismissConfigurationCardImmediately];
    [(SBIconView *)self dismissStackConfigurationCardImmediately];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    _iconImageView = [(NSHashTable *)self->_observers copy];
    v6 = [_iconImageView countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(_iconImageView);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v10 iconViewDidBecomeWindowless:self];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [_iconImageView countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v7);
    }

    goto LABEL_16;
  }

  if ([(SBIconView *)self usesSceneUserInterfaceStyleForImage])
  {
    _iconImageView = [(SBIconView *)self _iconImageView];
    [_iconImageView updateImageAnimated:0];
LABEL_16:
  }

  [(SBIconView *)self _updatePresentationModeForReason:@"icon image view added to window"];
}

- (void)_updateCursorInteractionsEnabled
{
  _isCursorInteractionEnabled = [(SBIconView *)self _isCursorInteractionEnabled];
  if (_isCursorInteractionEnabled != [(UIPointerInteraction *)self->_iconViewCursorInteraction isEnabled])
  {
    [(UIPointerInteraction *)self->_iconViewCursorInteraction setEnabled:_isCursorInteractionEnabled];
    [(UIPointerInteraction *)self->_iconViewCursorInteraction invalidate];
  }

  if (_isCursorInteractionEnabled != [(UIPointerInteraction *)self->_closeBoxCursorInteraction isEnabled])
  {
    [(UIPointerInteraction *)self->_closeBoxCursorInteraction setEnabled:_isCursorInteractionEnabled];
    [(UIPointerInteraction *)self->_closeBoxCursorInteraction invalidate];
  }

  if (_isCursorInteractionEnabled != [(UIPointerInteraction *)self->_accessoryViewCursorInteraction isEnabled])
  {
    [(UIPointerInteraction *)self->_accessoryViewCursorInteraction setEnabled:_isCursorInteractionEnabled];
    [(UIPointerInteraction *)self->_accessoryViewCursorInteraction invalidate];
  }

  if (_isCursorInteractionEnabled != [(UIPointerInteraction *)self->_resizeHandleCursorInteraction isEnabled])
  {
    [(UIPointerInteraction *)self->_resizeHandleCursorInteraction setEnabled:_isCursorInteractionEnabled];
    resizeHandleCursorInteraction = self->_resizeHandleCursorInteraction;

    [(UIPointerInteraction *)resizeHandleCursorInteraction invalidate];
  }
}

- (id)effectiveOverrideAccessoryIconImageAppearance
{
  overrideAccessoryIconImageAppearance = [(SBIconView *)self overrideAccessoryIconImageAppearance];
  if (overrideAccessoryIconImageAppearance || ([(SBIconView *)self overrideIconImageAppearance], (overrideAccessoryIconImageAppearance = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = overrideAccessoryIconImageAppearance;
  }

  else
  {
    overrideIconImageStyleConfiguration = [(SBIconView *)self overrideIconImageStyleConfiguration];
    if (overrideIconImageStyleConfiguration)
    {
      icon = [(SBIconView *)self icon];
      traitCollectionForIconImageAppearance = [(SBIconView *)self traitCollectionForIconImageAppearance];
      v4 = [overrideIconImageStyleConfiguration appearanceForIcon:icon userInterfaceStyle:{objc_msgSend(traitCollectionForIconImageAppearance, "userInterfaceStyle")}];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)accessoryViewContainerView
{
  if ([(SBIconView *)self shouldPutAccessoryViewInsideImageView])
  {
    [(SBIconView *)self currentImageView];
  }

  else
  {
    [(SBIconView *)self imageContainerView];
  }
  v3 = ;

  return v3;
}

- (id)actionDelegate
{
  overrideActionDelegate = [(SBIconView *)self overrideActionDelegate];
  v4 = overrideActionDelegate;
  if (overrideActionDelegate)
  {
    v5 = overrideActionDelegate;
  }

  else
  {
    delegate = [(SBIconView *)self delegate];
    v5 = delegate;
    if (objc_opt_respondsToSelector())
    {
      v5 = [delegate actionDelegateForIconView:self];
    }
  }

  return v5;
}

- (SBIconViewActionDelegate)overrideActionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_overrideActionDelegate);

  return WeakRetained;
}

- (CGPoint)_centerForAccessoryView
{
  if (self->_accessoryView)
  {
    currentImageView = [(SBIconView *)self currentImageView];
    accessoryView = self->_accessoryView;
    [currentImageView bounds];
    [(SBIconAccessoryView *)accessoryView accessoryCenterForIconBounds:?];
    v6 = v5;
    v8 = v7;
    contentContainerView = [(SBIconView *)self contentContainerView];
    [contentContainerView convertPoint:currentImageView fromView:{v6, v8}];
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v11 = *MEMORY[0x1E695EFF8];
    v13 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v14 = v11;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (void)dismissConfigurationCardImmediately
{
  currentConfigurationInteraction = [(SBIconView *)self currentConfigurationInteraction];
  [currentConfigurationInteraction endConfigurationImmediately];
}

- (void)dismissStackConfigurationCardImmediately
{
  currentStackConfigurationInteraction = [(SBIconView *)self currentStackConfigurationInteraction];
  [currentStackConfigurationInteraction endConfigurationImmediately];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DD920] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DD898] object:0];
  [(SBIconView *)self setIcon:0];
  [(SBIconView *)self _invalidateHomeButtonPressConsumingAssertion];
  [(PTSettings *)self->_iconEditingSettings removeKeyObserver:self];
  v4 = +[SBHIconViewContextMenuStateController sharedInstance];
  [v4 unregisterIconView:self];

  [(BSInvalidatable *)self->_springBoardIconStyleObservation invalidate];
  WeakRetained = objc_loadWeakRetained(&self->_appPrototectionSubjectMonitorSubscription);
  [WeakRetained invalidate];

  [(BSInvalidatable *)self->_iconLayerPrefetchingAssertion invalidate];
  v6.receiver = self;
  v6.super_class = SBIconView;
  [(SBIconView *)&v6 dealloc];
}

- (void)_invalidateHomeButtonPressConsumingAssertion
{
  homeButtonPressConsumingAssertion = [(SBIconView *)self homeButtonPressConsumingAssertion];
  [homeButtonPressConsumingAssertion invalidate];

  [(SBIconView *)self setHomeButtonPressConsumingAssertion:0];
}

- (BOOL)allowsLabelAccessoryView
{
  allowsLabelAccessoryView = [objc_opt_class() allowsLabelAccessoryView];
  if (allowsLabelAccessoryView)
  {
    LOBYTE(allowsLabelAccessoryView) = ![(SBIconView *)self isFolderIcon];
  }

  return allowsLabelAccessoryView;
}

- (id)_labelImageParameters
{
  v3 = objc_alloc_init(SBIconLabelImageParametersBuilder);
  [(SBIconView *)self configureLabelImageParametersBuilder:v3];
  buildParameters = [(SBIconLabelImageParametersBuilder *)v3 buildParameters];

  return buildParameters;
}

- (NSString)backgroundViewGroupNameBase
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_8;
  }

  backgroundViewProvider = [(SBIconViewCustomImageViewControlling *)self->_customIconImageViewController backgroundViewProvider];
  if (!backgroundViewProvider || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v5 = 0;
    goto LABEL_10;
  }

  wantsCaptureOnlyBackgroundView = [(SBIconViewCustomImageViewControlling *)self->_customIconImageViewController wantsCaptureOnlyBackgroundView];

  if (!wantsCaptureOnlyBackgroundView)
  {
LABEL_8:
    v5 = 0;
    goto LABEL_11;
  }

  v5 = [objc_opt_class() groupNameBaseForComponentBackgroundViewOfType:4];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_11;
  }

  backgroundViewProvider = [(SBIconViewCustomImageViewControlling *)self->_customIconImageViewController visiblyActiveDataSource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = @"-Files";
LABEL_16:
    v8 = [v5 stringByAppendingString:v6];

    v5 = v8;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = @"-AppPrediction";
    goto LABEL_16;
  }

LABEL_10:

LABEL_11:

  return v5;
}

+ (double)_labelHeight
{
  if (__sb__runningInSpringBoard())
  {
    v2 = SBFEffectiveDeviceClass() == 2;
  }

  else
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    v2 = [currentDevice userInterfaceIdiom] == 1;
  }

  result = 14.0;
  if (v2)
  {
    return 17.0;
  }

  return result;
}

- (void)clearIconImageInfo
{
  if ((*(self + 557) & 8) != 0)
  {
    *(self + 557) &= ~8u;
    [(SBIconView *)self _updateAfterManualIconImageInfoChangeInvalidatingLayout:1];
  }
}

- (void)prepareForReuse
{
  v43 = *MEMORY[0x1E69E9840];
  [(SBIconView *)self setPendingIcon:self->_icon];
  [(SBIconView *)self dismissConfigurationCardImmediately];
  [(SBIconView *)self dismissStackConfigurationCardImmediately];
  [(SBIconView *)self setIcon:0];
  [(SBIconView *)self setIconContentScalingEnabled:0];
  [(SBIconView *)self setIconContentScale:1.0];
  iconImageView = self->_iconImageView;
  v4 = objc_opt_self();
  LODWORD(iconImageView) = [(SBIconImageView *)iconImageView isMemberOfClass:v4];

  if (iconImageView)
  {
    [(SBIconImageView *)self->_iconImageView prepareForReuse];
    *(self + 560) |= 2u;
  }

  else
  {
    [(SBIconView *)self _destroyIconImageView];
  }

  traitOverrides = [(SBIconView *)self traitOverrides];
  v6 = objc_opt_self();
  [traitOverrides removeTrait:v6];

  traitOverrides2 = [(SBIconView *)self traitOverrides];
  v8 = objc_opt_self();
  [traitOverrides2 removeTrait:v8];

  accessoryViewAnimator = [(SBIconView *)self accessoryViewAnimator];
  v10 = accessoryViewAnimator;
  if (accessoryViewAnimator)
  {
    [accessoryViewAnimator stopAnimation:0];
    [v10 finishAnimationAtPosition:0];
    [(SBIconView *)self setAccessoryViewAnimator:0];
  }

  v36 = v10;
  [(SBIconView *)self setOverrideBadgeNumberOrString:0];
  [(SBIconView *)self _destroyAccessoryView];
  *(self + 558) &= ~4u;
  self->_customIconImageViewControllerPriority = 0;
  [(SBIconView *)self setCustomIconImageViewController:0];
  [(SBIconView *)self setConfigurationOptions:[(SBIconView *)self configurationOptions]];
  *(self + 555) = (*(self + 555) & 0xFD | (2 * (*(self + 557) & 1))) ^ 2;
  *(self + 555) = (*(self + 555) & 0xFB | (4 * (*(self + 557) & 1))) ^ 4;
  [(SBIconView *)self _invalidateHomeButtonPressConsumingAssertion];
  [(SBIconView *)self endPrefetchingDisplayedIconLayerForAnyReason];
  *(self + 553) &= ~0x20u;
  *(self + 553) &= ~0x40u;
  *(self + 553) &= ~0x80u;
  *(self + 554) &= ~1u;
  *(self + 557) &= ~0x10u;
  *(self + 557) &= ~0x40u;
  *(self + 557) &= ~8u;
  *(self + 556) |= 0x20u;
  *(self + 556) |= 0x40u;
  *(self + 558) &= ~2u;
  *(self + 558) &= 0xE7u;
  *(self + 552) &= 0xF3u;
  objc_storeStrong(&self->_iconLocation, @"SBIconLocationNone");
  self->_iconImageSizeMatchesBoundsSize = 0;
  droppingAssertions = self->_droppingAssertions;
  self->_droppingAssertions = 0;

  [(SBIconView *)self _updateBrightness];
  [(SBIconView *)self setIconImageAlpha:1.0];
  [(SBIconView *)self setIconLabelAlpha:1.0];
  [(SBIconView *)self setIconAccessoryAlpha:1.0];
  [(SBIconView *)self setAllIconElementsButLabelHidden:0];
  [(SBIconView *)self setPaused:0 forReason:-1];
  [(SBIconView *)self setContentVisibility:0];
  [(SBIconView *)self setEditing:0 animated:0];
  [(SBIconView *)self setAllowsEditingAnimation:1];
  [(SBIconView *)self setSuppressesDefaultEditingAnimation:0];
  [(SBIconView *)self setAllowsCloseBox:1];
  [(SBIconView *)self setAllowsResizeHandle:0];
  [(SBIconView *)self setAllowsAdornmentsOverIconImage:1];
  [(SBIconView *)self setGrabbed:0];
  [(SBIconView *)self setDragging:0];
  [(SBIconView *)self setDragLifted:0];
  [(SBIconView *)self setLiftingDragSession:0];
  [(SBIconView *)self setCancelingDrag:0];
  [(SBIconView *)self setAddedToDrag:0];
  [(SBIconView *)self setShowsImageAndLabelDuringDrop:0];
  [(SBIconView *)self setOverlapping:0];
  -[SBIconView setImageLoadingBehavior:](self, "setImageLoadingBehavior:", [objc_opt_class() defaultImageLoadingBehavior]);
  [(SBIconView *)self setDisplaysIconStatusInLabel:0];
  [(SBIconView *)self setEditingAnimationStrength:1.0];
  [(SBIconView *)self setUserVisibilityStatus:0];
  [(SBIconView *)self setApproximateLayoutPosition:0, 0];
  [(SBIconView *)self setOverrideParentViewControllerForCustomIconImageViewController:0];
  [(SBIconView *)self setDidDelayInsertingCustomImageViewDueToParentController:0];
  [(SBIconView *)self setOverrideIconImageAppearance:0];
  [(SBIconView *)self setOverrideIconImageStyleConfiguration:0];
  [(SBIconView *)self setOverrideImage:0];
  [(SBIconView *)self setUsesSceneUserInterfaceStyleForImage:0];
  [(SBIconView *)self setOverrideAccessoryIconImageAppearance:0];
  [(SBIconView *)self setPrefersFlatImageLayers:0];
  [(SBIconView *)self cleanupAfterCrossfade];
  [objc_opt_class() defaultCursorHitTestPadding];
  [(SBIconView *)self setCursorHitTestPadding:?];
  [(SBIconView *)self setEnabled:1];
  [(SBIconView *)self setRefusesRecipientStatus:0];
  [(SBIconView *)self setAllowsPassthroughHitTesting:0];
  [(SBIconView *)self setAllowsIconImageView:1];
  [(SBIconView *)self setLabelFont:0];
  [(SBIconView *)self setIconImageAllowsGlassGrouping:1];
  [(SBIconView *)self setIconImageBackdropGroupName:0];
  [(SBIconView *)self setIconImageGlassHidden:0];
  [(UIView *)self->_dropGlow removeFromSuperview];
  dropGlow = self->_dropGlow;
  self->_dropGlow = 0;

  *(self + 557) &= ~4u;
  [(SBIconFocusEffectPlatterView *)self->_focusEffectPlatterView removeFromSuperview];
  focusEffectPlatterView = self->_focusEffectPlatterView;
  self->_focusEffectPlatterView = 0;

  *(self + 553) &= ~8u;
  [(UIFocusItem *)self->_focusProxyView removeFromSuperview];
  focusProxyView = self->_focusProxyView;
  self->_focusProxyView = 0;

  *(self + 559) &= ~2u;
  iconLabelViewFactory = self->_iconLabelViewFactory;
  self->_iconLabelViewFactory = 0;

  [(SBHIconResizeHandle *)self->_resizeHandle removeFromSuperview];
  resizeHandle = self->_resizeHandle;
  self->_resizeHandle = 0;

  [(SBIconView *)self setResizeGestureHandler:0];
  [(SBIconView *)self setAccessibilityIdentifier:0];
  v17 = *(MEMORY[0x1E695EFD0] + 16);
  v41[0] = *MEMORY[0x1E695EFD0];
  v41[1] = v17;
  v41[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(SBIconView *)self setTransform:v41];
  [(SBIconView *)self setAlpha:1.0];
  [(SBIconView *)self setHidden:0];
  [(SBIconView *)self setBackgroundColor:0];
  layer = [(SBIconView *)self layer];
  [layer setCornerRadius:0.0];

  [(SBIconView *)self removeAllIconAnimations];
  [(SBIconImageView *)self->_iconImageView setProgressState:0 paused:0 percent:0 animated:0.0];
  [(SBIconView *)self setFolderIconFrozen:0];
  [(SBIconView *)self setContinuityInfo:0];
  [(SBIconView *)self setStartsDragMoreQuickly:0];
  [(SBIconView *)self setOverrideDraggingDelegate:0];
  [(SBIconView *)self setOverrideDroppingDelegate:0];
  closeBoxAnimator = [(SBIconView *)self closeBoxAnimator];
  if (closeBoxAnimator)
  {
    v20 = closeBoxAnimator;
    [closeBoxAnimator stopAnimation:{0, closeBoxAnimator}];
    [v20 finishAnimationAtPosition:0];
    [(SBCloseBoxView *)self->_closeBox removeFromSuperview];
    closeBox = self->_closeBox;
    self->_closeBox = 0;

    [(SBIconView *)self setCloseBoxAnimator:0];
  }

  else
  {
    [(SBCloseBoxView *)self->_closeBox removeFromSuperview];
  }

  [(SBIconView *)self _toggleGroupBlendingIfNecessary];
  [(SBIconView *)self _updateFrameToIconViewSize];
  [(SBIconView *)self earlyTerminateContextMenuDismissAnimation];
  [(SBIconView *)self setLastContextMenuInteractionFailedToLoad:0];
  [(SBIconView *)self _removeUnknownSubviews];
  [(NSCountedSet *)self->_forbidEditingModeReasons removeAllObjects];
  [(NSHashTable *)self->_forbidAccessoryUpdatesAssertions removeAllObjects];
  [(NSHashTable *)self->_disallowGlassGroupingAssertions removeAllObjects];
  disallowGlassGroupingForPointerInteractionAssertion = self->_disallowGlassGroupingForPointerInteractionAssertion;
  self->_disallowGlassGroupingForPointerInteractionAssertion = 0;

  disallowGlassGroupingForContextMenuAssertion = self->_disallowGlassGroupingForContextMenuAssertion;
  self->_disallowGlassGroupingForContextMenuAssertion = 0;

  [(SBIconView *)self _applyOverallAlpha:1.0];
  [(SBIconView *)self setAlpha:1.0];
  v24 = [MEMORY[0x1E69DCA38] focusSystemForEnvironment:self];
  [v24 _focusEnvironmentWillDisappear:self];

  behaviorDelegate = [(SBIconView *)self behaviorDelegate];
  v26 = [(NSHashTable *)self->_observers copy];
  observers = self->_observers;
  self->_observers = 0;

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v28 = v26;
  v29 = [v28 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v38;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v38 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v37 + 1) + 8 * i);
        if (v33 != behaviorDelegate && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v33 iconViewWasRecycled:self];
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v30);
  }

  v34 = self->_observers;
  self->_observers = 0;

  if (objc_opt_respondsToSelector())
  {
    [behaviorDelegate iconViewWasRecycled:self];
  }

  [(SBIconView *)self setDelegate:0];
  [(SBIconView *)self setOverrideActionDelegate:0];
  [(SBIconView *)self setPendingIcon:0];
}

- (void)endPrefetchingDisplayedIconLayerForAnyReason
{
  iconLayerPrefetchingReasons = self->_iconLayerPrefetchingReasons;
  self->_iconLayerPrefetchingReasons = 0;

  iconLayerPrefetchingAssertion = [(SBIconView *)self iconLayerPrefetchingAssertion];
  [iconLayerPrefetchingAssertion invalidate];
  [(SBIconView *)self setIconLayerPrefetchingAssertion:0];
}

- (BOOL)isShowingConfigurationCard
{
  currentConfigurationInteraction = [(SBIconView *)self currentConfigurationInteraction];
  v3 = currentConfigurationInteraction != 0;

  return v3;
}

void __51__SBIconView__shouldAlwaysHaveContentContainerView__block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  _shouldAlwaysHaveContentContainerView_shouldAlwaysHaveContentContainerView = [v0 isEqualToString:@"com.apple.CarPlayApp"] ^ 1;
}

uint64_t __31__SBIconView_homeScreenService__block_invoke()
{
  result = SBHIsRunningInSpringBoard();
  if ((result & 1) == 0)
  {
    homeScreenService__homeScreenService_1 = objc_alloc_init(MEMORY[0x1E69D4240]);

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

+ (id)homeScreenService
{
  if (homeScreenService_onceToken_1 != -1)
  {
    +[SBIconView homeScreenService];
  }

  v3 = homeScreenService__homeScreenService_1;

  return v3;
}

- (void)removeAllIconAnimations
{
  *(self + 554) &= ~2u;
  [(SBIconView *)self _removeAllAnimations:0];

  [(SBIconView *)self _removeAllRetargetableAnimations:1];
}

- (void)_toggleGroupBlendingIfNecessary
{
  contentContainerView = [(SBIconView *)self contentContainerView];
  _shouldEnableGroupBlending = [(SBIconView *)self _shouldEnableGroupBlending];
  layer = [contentContainerView layer];
  [layer setAllowsGroupBlending:_shouldEnableGroupBlending];
}

- (void)earlyTerminateContextMenuDismissAnimation
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(NSHashTable *)self->_contextMenuInteractionConfigurations count])
  {
    v3 = SBLogIconContextMenu();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_DEFAULT, "earlyTerminateContextMenuDismissAnimation", buf, 2u);
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(NSHashTable *)self->_contextMenuInteractionConfigurations copy];
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          [(SBIconView *)self _contextMenuConfigurationWillDismiss:v9];
          [(SBIconView *)self _contextMenuConfigurationDidDismiss:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v6);
    }

    contextMenuInteractionConfigurations = self->_contextMenuInteractionConfigurations;
    self->_contextMenuInteractionConfigurations = 0;

    contextMenuDelegate = [(SBIconView *)self contextMenuDelegate];
    if (objc_opt_respondsToSelector())
    {
      [contextMenuDelegate iconViewContextMenuPresentationDidCancel:self];
    }
  }
}

- (void)_removeUnknownSubviews
{
  v40 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  subviews = [(SBIconView *)self subviews];
  v4 = [subviews countByEnumeratingWithState:&v28 objects:v39 count:16];
  if (v4)
  {
    v5 = v4;
    v23 = 0;
    v6 = *v29;
    v7 = &OBJC_IVAR___SBFolderController__orientation;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(subviews);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        if (v9 != self->_labelView && v9 != self->_labelAccessoryView && v9 != self->_closeBox && v9 != *(&self->super.super.super.isa + v7[476]) && v9 != self->_accessoryView && v9 != self->_scalingContainer && v9 != self->_dropGlow && v9 != self->_focusEffectPlatterView && v9 != self->_crossfadeView)
        {
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          if ([v11 isEqualToString:@"_UIClickHighlightInteractionEffectAnchorView"])
          {
            v12 = v23;
            if (!v23)
            {
              v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            }

            [v12 addObject:{v9, v12}];
          }

          v7 = &OBJC_IVAR___SBFolderController__orientation;
        }
      }

      v5 = [subviews countByEnumeratingWithState:&v28 objects:v39 count:16];
    }

    while (v5);
  }

  else
  {
    v23 = 0;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v23;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v38 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * j);
        v19 = SBLogIcon();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          logIdentifier = self->_logIdentifier;
          v21 = objc_opt_class();
          v22 = NSStringFromClass(v21);
          *buf = 138543874;
          v33 = logIdentifier;
          v34 = 2114;
          v35 = v22;
          v36 = 2112;
          v37 = v18;
          _os_log_fault_impl(&dword_1BEB18000, v19, OS_LOG_TYPE_FAULT, "<%{public}@> Unknown subview found in SBIconView when preparing for reuse! (53825790) %{public}@ %@", buf, 0x20u);
        }

        [v18 removeFromSuperview];
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v38 count:16];
    }

    while (v15);
  }
}

- (id)effectiveIconImageStyleConfiguration
{
  overrideIconImageAppearance = [(SBIconView *)self overrideIconImageAppearance];
  overrideIconImageStyleConfiguration = [(SBIconView *)self overrideIconImageStyleConfiguration];
  traitCollectionForIconImageAppearance = [(SBIconView *)self traitCollectionForIconImageAppearance];
  v6 = [MEMORY[0x1E69DD1B8] sbh_iconImageStyleConfigurationFromTraitCollection:traitCollectionForIconImageAppearance overrideIconImageAppearance:overrideIconImageAppearance overrideIconImageStyleConfiguration:overrideIconImageStyleConfiguration];

  return v6;
}

- (void)_updateCustomIconImageViewControllerHitTesting
{
  customIconImageViewController = [(SBIconView *)self customIconImageViewController];
  view = [customIconImageViewController view];
  [view bs_setHitTestingDisabled:{-[SBIconView isCustomIconImageViewHitTestingDisabled](self, "isCustomIconImageViewHitTestingDisabled")}];
}

- (SBIconApproximateLayoutPosition)approximateLayoutPosition
{
  p_approximateLayoutPosition = &self->_approximateLayoutPosition;
  horizontal = self->_approximateLayoutPosition.horizontal;
  vertical = p_approximateLayoutPosition->vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (CGPoint)iconImageCenter
{
  currentImageView = [(SBIconView *)self currentImageView];
  [currentImageView center];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (unint64_t)visibleMiniIconListIndex
{
  _folderIconImageView = [(SBIconView *)self _folderIconImageView];
  visibleMiniIconListIndex = [_folderIconImageView visibleMiniIconListIndex];

  return visibleMiniIconListIndex;
}

- (CGSize)iconImageVisibleSize
{
  iconImageView = self->_iconImageView;
  if (iconImageView)
  {
    [(SBIconImageView *)iconImageView visibleBounds];
    [(SBIconView *)self iconContentScale:v6];
  }

  else
  {
    currentImageView = [(SBIconView *)self currentImageView];
    [currentImageView bounds];
    v17 = v11;
    v19 = v10;

    [(SBIconView *)self iconContentScale:v17];
  }

  v12 = v8;
  if (BSFloatIsOne())
  {
    v14 = v16;
    v13 = v18;
  }

  else
  {
    CGAffineTransformMakeScale(&v20, v12, v12);
    v15 = vmlaq_n_f64(vmulq_n_f64(*&v20.c, v16), *&v20.a, v18);
    v14 = v15.f64[1];
    v13 = v15.f64[0];
  }

  result.height = v14;
  result.width = v13;
  return result;
}

- (CGRect)_frameForLabelHighlight
{
  imageParameters = [(SBIconLabelView *)self->_labelView imageParameters];
  metrics = [imageParameters metrics];
  [(SBIconView *)self _frameForLabel];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [imageParameters textInsets];
  v14 = SBHEdgeInsetsInvert(v13);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [metrics alignmentRectInsets];
  v25 = v16 + v6 + v21;
  v26 = v14 + v8 + v22;
  v27 = v10 - (v21 + v23) - (v16 + v20);
  v28 = v12 - (v22 + v24) - (v14 + v18);

  v29 = v25;
  v30 = v26;
  v31 = v27;
  v32 = v28;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (NSString)description
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v3 = [(SBIconView *)self descriptionWithMultilinePrefix:@"\t"];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBIconView;
    v3 = [(SBIconView *)&v5 description];
  }

  return v3;
}

- (SBFolderIcon)folderIcon
{
  icon = [(SBIconView *)self icon];
  if ([(SBFolderIcon *)icon isFolderIcon])
  {
    v3 = icon;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)folder
{
  folderIcon = [(SBIconView *)self folderIcon];
  folder = [folderIcon folder];

  return folder;
}

- (id)pauseReasonsDescriptions
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = (*(self + 276) >> 4) & 0x1F;
  if (v4)
  {
    v5 = 1;
    do
    {
      if ((v4 & v5) != 0)
      {
        if (v5 > 7)
        {
          switch(v5)
          {
            case 8:
              v6 = @"scrolling";
              goto LABEL_17;
            case 0x10:
              v6 = @"content visibility";
              goto LABEL_17;
            case 0x40000000:
              v6 = @"other";
              goto LABEL_17;
          }
        }

        else
        {
          switch(v5)
          {
            case 1:
              v6 = @"windowless";
              goto LABEL_17;
            case 2:
              v6 = @"iconless";
              goto LABEL_17;
            case 4:
              v6 = @"occluded";
LABEL_17:
              [v3 addObject:v6];
              break;
          }
        }
      }

      v4 &= ~v5;
      v5 *= 2;
    }

    while (v4);
  }

  return v3;
}

+ (CGSize)defaultIconViewSize
{
  [self defaultIconImageSize];
  v4 = v3;
  v6 = v5;
  [self _labelHeight];
  v8 = v6 + v7;
  v9 = v4;
  result.height = v8;
  result.width = v9;
  return result;
}

+ (double)labelMaximumHeightForContentSizeCategory:(id)category
{
  v3 = *(MEMORY[0x1E69DDCE0] + 16);
  v10 = *MEMORY[0x1E69DDCE0];
  v11 = v3;
  v4 = [SBIconLabelImageParametersBuilder defaultFontForContentSizeCategory:category languageInsets:&v10];
  [v4 ascender];
  v6 = v5;
  [v4 descender];
  *&v7 = v6 + fabs(v7) + fabs(*&v10) + fabs(*&v11);
  v8 = ceilf(*&v7);

  return v8;
}

+ (void)setDebugContinuityItem:(id)item
{
  itemCopy = item;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&__debugContinuityItem, item);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"SBIconViewRefreshAccessoryViewNotification" object:0];
  }
}

+ (id)applicationIconMultitaskingMenus
{
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
LABEL_3:
      v3 = MEMORY[0x1E695E0F0];
      goto LABEL_12;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom != 1)
    {
      goto LABEL_3;
    }
  }

  applicationIconMultitaskingMenu = [self applicationIconMultitaskingMenu];
  applicationIconSplitViewMenu = [self applicationIconSplitViewMenu];
  applicationIconStageManagerMenu = [self applicationIconStageManagerMenu];
  __SBIconViewOwnerWantsMultitaskingKeyboardShortcuts = 1;
  array = [MEMORY[0x1E695DF70] array];
  v3 = array;
  if (applicationIconMultitaskingMenu)
  {
    [array addObject:applicationIconMultitaskingMenu];
  }

  if (applicationIconSplitViewMenu)
  {
    [v3 addObject:applicationIconSplitViewMenu];
  }

  if (applicationIconStageManagerMenu)
  {
    [v3 addObject:applicationIconStageManagerMenu];
  }

LABEL_12:

  return v3;
}

+ (id)applicationIconMultitaskingMenu
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
LABEL_3:
      v2 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom != 1)
    {
      goto LABEL_3;
    }
  }

  __SBIconViewOwnerWantsMultitaskingKeyboardShortcuts = 1;
  v5 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDE90] modifierFlags:0x800000 action:sel__handleActivateAppExposeKeyShortcut_];
  _allowGlobeModifierKeyCommand = [v5 _allowGlobeModifierKeyCommand];

  [_allowGlobeModifierKeyCommand setRepeatBehavior:2];
  v7 = SBHBundle();
  v8 = [v7 localizedStringForKey:@"APP_EXPOSE_DISCOVERABILITY" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  [_allowGlobeModifierKeyCommand setDiscoverabilityTitle:v8];

  systemKeyCommandOverlayEnvironment = [MEMORY[0x1E69D4258] systemKeyCommandOverlayEnvironment];
  [_allowGlobeModifierKeyCommand _setEventDeferringEnvironment:systemKeyCommandOverlayEnvironment];

  v10 = MEMORY[0x1E69DCC60];
  v11 = SBHBundle();
  v12 = [v11 localizedStringForKey:@"MULTITASKING_MENU_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  v15[0] = _allowGlobeModifierKeyCommand;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v2 = [v10 menuWithTitle:v12 children:v13];

LABEL_6:

  return v2;
}

+ (id)applicationIconSplitViewMenu
{
  v23[3] = *MEMORY[0x1E69E9840];
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
LABEL_3:
      v2 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom != 1)
    {
      goto LABEL_3;
    }
  }

  __SBIconViewOwnerWantsMultitaskingKeyboardShortcuts = 1;
  systemKeyCommandOverlayEnvironment = [MEMORY[0x1E69D4258] systemKeyCommandOverlayEnvironment];
  v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"f" modifierFlags:0x800000 action:sel__handleMakeFullscreenKeyShortcut_];
  _allowGlobeModifierKeyCommand = [v6 _allowGlobeModifierKeyCommand];

  [_allowGlobeModifierKeyCommand setRepeatBehavior:2];
  v8 = SBHBundle();
  v9 = [v8 localizedStringForKey:@"MAKE_FULLSCREEN_DISCOVERABILITY" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  [_allowGlobeModifierKeyCommand setDiscoverabilityTitle:v9];

  [_allowGlobeModifierKeyCommand _setEventDeferringEnvironment:systemKeyCommandOverlayEnvironment];
  v10 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF10] modifierFlags:8650752 action:sel__handleMakeSplitLeftKeyShortcut_];
  _allowGlobeModifierKeyCommand2 = [v10 _allowGlobeModifierKeyCommand];

  [_allowGlobeModifierKeyCommand2 setRepeatBehavior:2];
  v12 = SBHBundle();
  v13 = [v12 localizedStringForKey:@"MAKE_LEFT_SPLIT_DISCOVERABILITY" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  [_allowGlobeModifierKeyCommand2 setDiscoverabilityTitle:v13];

  [_allowGlobeModifierKeyCommand2 _setEventDeferringEnvironment:systemKeyCommandOverlayEnvironment];
  v14 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF28] modifierFlags:8650752 action:sel__handleMakeSplitRightKeyShortcut_];
  _allowGlobeModifierKeyCommand3 = [v14 _allowGlobeModifierKeyCommand];

  [_allowGlobeModifierKeyCommand3 setRepeatBehavior:2];
  v16 = SBHBundle();
  v17 = [v16 localizedStringForKey:@"MAKE_RIGHT_SPLIT_DISCOVERABILITY" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  [_allowGlobeModifierKeyCommand3 setDiscoverabilityTitle:v17];

  [_allowGlobeModifierKeyCommand3 _setEventDeferringEnvironment:systemKeyCommandOverlayEnvironment];
  v18 = MEMORY[0x1E69DCC60];
  v19 = SBHBundle();
  v20 = [v19 localizedStringForKey:@"SPLIT_VIEW_MENU_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  v23[0] = _allowGlobeModifierKeyCommand;
  v23[1] = _allowGlobeModifierKeyCommand2;
  v23[2] = _allowGlobeModifierKeyCommand3;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
  v2 = [v18 menuWithTitle:v20 children:v21];

LABEL_6:

  return v2;
}

+ (id)applicationIconStageManagerMenu
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2 || (_os_feature_enabled_impl() & 1) != 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    __SBIconViewOwnerWantsMultitaskingKeyboardShortcuts = 1;
    v4 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF30] modifierFlags:8650752 action:sel__handleAddWindowToSetCommand_];
    _allowGlobeModifierKeyCommand = [v4 _allowGlobeModifierKeyCommand];

    [_allowGlobeModifierKeyCommand setRepeatBehavior:2];
    v6 = SBHBundle();
    v7 = [v6 localizedStringForKey:@"ADD_ANOTHER_WINDOW_DISCOVERABILITY" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    [_allowGlobeModifierKeyCommand setDiscoverabilityTitle:v7];

    systemKeyCommandOverlayEnvironment = [MEMORY[0x1E69D4258] systemKeyCommandOverlayEnvironment];
    [_allowGlobeModifierKeyCommand _setEventDeferringEnvironment:systemKeyCommandOverlayEnvironment];

    v9 = MEMORY[0x1E69DCC60];
    v10 = SBHBundle();
    v11 = [v10 localizedStringForKey:@"STAGE_MANAGER_MENU_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    v15[0] = _allowGlobeModifierKeyCommand;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v13 = [v9 menuWithTitle:v11 children:v12];

    goto LABEL_10;
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice userInterfaceIdiom] == 1)
  {
    v3 = _os_feature_enabled_impl();

    if ((v3 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

LABEL_9:
  v13 = 0;
LABEL_10:

  return v13;
}

- (SBIconView)initWithConfigurationOptions:(unint64_t)options listLayoutProvider:(id)provider
{
  providerCopy = provider;
  defaultIconLocation = [objc_opt_class() defaultIconLocation];
  if (defaultIconLocation)
  {
    v9 = [providerCopy layoutForIconLocation:defaultIconLocation];
    [v9 iconImageInfo];
    v13 = v12;
    v15 = v14;
    if (v9)
    {
      v16 = v10;
      v17 = v11;

      v18 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    [0 iconImageInfo];
    v13 = v19;
    v15 = v20;
  }

  [objc_opt_class() defaultIconImageSize];
  v16 = v21;
  v17 = v22;
  v18 = 1;
LABEL_6:
  [objc_opt_class() defaultIconViewSizeForIconImageSize:options configurationOptions:{v16, v17}];
  v49.receiver = self;
  v49.super_class = SBIconView;
  v25 = [(SBIconView *)&v49 initWithFrame:0.0, 0.0, v23, v24];
  v26 = v25;
  if (v25)
  {
    [(SBIconView *)v25 _reevaluateLogIdentifier];
    objc_storeStrong(&v26->_listLayoutProvider, provider);
    *(v26 + 557) = *(v26 + 557) & 0xDF | (2 * options) & 0x20;
    v27 = *(v26 + 557) & 0xFE;
    if ((options & 2) == 0)
    {
      ++v27;
    }

    *(v26 + 557) = v27;
    *(v26 + 557) = *(v26 + 557) & 0xFD | (options >> 2) & 2;
    objc_storeStrong(&v26->_iconLocation, defaultIconLocation);
    v26->_iconLabelAlpha = 1.0;
    v26->_iconAccessoryAlpha = 1.0;
    v26->_iconImageAlpha = 1.0;
    v26->_iconImageInfo.size.width = v16;
    v26->_iconImageInfo.size.height = v17;
    if (v18)
    {
      [objc_opt_class() defaultIconImageScale];
      v26->_iconImageInfo.scale = v28;
      [objc_opt_class() defaultIconImageCornerRadius];
      v15 = v29;
    }

    else
    {
      v26->_iconImageInfo.scale = v13;
    }

    v26->_iconImageInfo.continuousCornerRadius = v15;
    *(v26 + 557) = *(v26 + 557) & 0xFE7F | (([objc_opt_class() defaultImageLoadingBehavior] & 3) << 7);
    *(v26 + 556) = (*(v26 + 556) & 0xDF | options & 0x20) ^ 0x20;
    v26->_approximateLayoutPosition.horizontal = 0;
    v26->_approximateLayoutPosition.vertical = 0;
    [objc_opt_class() defaultCursorHitTestPadding];
    v26->_cursorHitTestPadding.top = v30;
    v26->_cursorHitTestPadding.left = v31;
    v26->_cursorHitTestPadding.bottom = v32;
    v26->_cursorHitTestPadding.right = v33;
    *(v26 + 554) = (options & 0x80 | *(v26 + 554) & 0x7F) ^ 0x80;
    *(v26 + 557) = *(v26 + 557) & 0xEF | (options >> 4) & 0x10;
    *(v26 + 559) &= 0xE7u;
    defaultLegibilitySettings = [objc_opt_class() defaultLegibilitySettings];
    legibilitySettings = v26->_legibilitySettings;
    v26->_legibilitySettings = defaultLegibilitySettings;

    v26->_displayedLabelAccessoryType = 0;
    v26->_enabled = 1;
    v26->_iconContentScale = 1.0;
    *(v26 + 556) |= 0x40u;
    *(v26 + 554) |= 8u;
    v26->_editingAnimationStrength = 1.0;
    *(v26 + 554) |= 0x20u;
    *(v26 + 555) |= 0x20u;
    *(v26 + 276) = *(v26 + 276) & 0xFE0F | 0x30;
    [(SBIconView *)v26 setOpaque:0];
    [(SBIconView *)v26 setExclusiveTouch:1];
    v26->_customIconImageViewControllerPriority = 0;
    if ([objc_opt_class() _shouldAlwaysHaveContentContainerView])
    {
      v36 = objc_alloc([objc_opt_class() contentContainerViewClass]);
      [(SBIconView *)v26 bounds];
      v37 = [v36 initWithFrame:?];
      scalingContainer = v26->_scalingContainer;
      v26->_scalingContainer = v37;

      [(SBIconView *)v26 addSubview:v26->_scalingContainer];
    }

    [(SBIconView *)v26 configureForLabelAllowed:(options & 2) == 0];
    if ((options & 4) != 0)
    {
      [(SBIconView *)v26 setUserInteractionEnabled:0];
    }

    else
    {
      [(SBIconView *)v26 addGesturesAndInteractionsIfNecessary];
    }

    if (SBHIsRunningInSpringBoard([(SBIconView *)v26 updateParallaxSettings]))
    {
      v39 = +[SBHHomeScreenDomain rootSettings];
      iconEditingSettings = [v39 iconEditingSettings];
      iconEditingSettings = v26->_iconEditingSettings;
      v26->_iconEditingSettings = iconEditingSettings;

      [(PTSettings *)v26->_iconEditingSettings addKeyObserver:v26];
      iconResizingSettings = [v39 iconResizingSettings];
      iconResizingSettings = v26->_iconResizingSettings;
      v26->_iconResizingSettings = iconResizingSettings;
    }

    if ((SBHIsRunningInSpringBoard([(SBIconView *)v26 _applyIconEditingSettings]) & 1) == 0)
    {
      subjectMonitorRegistry = [MEMORY[0x1E698B0F0] subjectMonitorRegistry];
      v45 = [subjectMonitorRegistry addMonitor:v26 subjectMask:1 subscriptionOptions:1];
      objc_storeWeak(&v26->_appPrototectionSubjectMonitorSubscription, v45);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v26 selector:sel__backgroundContrastDidChange_ name:*MEMORY[0x1E69DD920] object:0];
    [defaultCenter addObserver:v26 selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
    [defaultCenter addObserver:v26 selector:sel__boldTextStatusDidChange_ name:*MEMORY[0x1E69DD898] object:0];
    [defaultCenter addObserver:v26 selector:sel__refreshAccessoryViewNotification_ name:@"SBIconViewRefreshAccessoryViewNotification" object:0];
    v47 = +[SBHIconViewContextMenuStateController sharedInstance];
    [v47 registerIconView:v26];
  }

  return v26;
}

- (void)_reevaluateLogIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v9 = NSStringFromClass(v4);
  pendingIcon = self->_pendingIcon;
  if (!pendingIcon)
  {
    pendingIcon = self->_icon;
  }

  logIdentifier = [(SBIcon *)pendingIcon logIdentifier];
  v7 = [v3 stringWithFormat:@"%@:%p [%@]", v9, self, logIdentifier];
  logIdentifier = self->_logIdentifier;
  self->_logIdentifier = v7;
}

- (void)setIconImageInfo:(SBIconImageInfo *)info
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  v12 = *(self + 557);
  if ((v12 & 8) == 0)
  {
    goto LABEL_2;
  }

  p_iconImageInfo = &self->_iconImageInfo;
  if (SBIconImageInfoEqualToIconImageInfo(v3, v4, v5, v6, self->_iconImageInfo.size.width, self->_iconImageInfo.size.height, self->_iconImageInfo.scale, self->_iconImageInfo.continuousCornerRadius))
  {
    return;
  }

  v12 = *(self + 557);
  if ((v12 & 8) != 0)
  {
    v13 = !SBIconImageInfoSizeAndScaleEqualToIconImageInfo(v10, v9, v8, v7, p_iconImageInfo->size.width, p_iconImageInfo->size.height, p_iconImageInfo->scale);
    v12 = *(self + 557);
  }

  else
  {
LABEL_2:
    v13 = 1;
  }

  *(self + 557) = v12 | 8;
  self->_iconImageInfo.size.width = v10;
  self->_iconImageInfo.size.height = v9;
  self->_iconImageInfo.scale = v8;
  self->_iconImageInfo.continuousCornerRadius = v7;

  [(SBIconView *)self _updateAfterManualIconImageInfoChangeInvalidatingLayout:v13];
}

- (void)_updateAfterManualIconImageInfoChangeInvalidatingLayout:(BOOL)layout
{
  layoutCopy = layout;
  customIconImageViewController = [(SBIconView *)self customIconImageViewController];
  if (customIconImageViewController)
  {
    [(SBIconView *)self iconImageInfo];
    [customIconImageViewController setIconImageInfo:?];
  }

  if (layoutCopy)
  {
    [(SBIconView *)self invalidateIntrinsicContentSize];
    [(SBIconView *)self _updateFrameToIconViewSize];
    [(SBIconView *)self _updateLabelArea];
  }
}

- (CGSize)iconViewSizeForIconImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if ([(SBIconView *)self allowsLabelArea])
  {
    [objc_opt_class() _labelHeight];
    height = height + v5;
  }

  v6 = width;
  v7 = height;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)setBoundsSizeFromIconImageSize:(CGSize)size
{
  [(SBIconView *)self iconViewSizeForIconImageSize:size.width, size.height];

  [(SBIconView *)self setBounds:0.0, 0.0, v4, v5];
}

- (void)setAllowsAdornmentsOverIconImage:(BOOL)image animated:(BOOL)animated
{
  v4 = *(self + 555);
  if (((((v4 & 0x20) == 0) ^ image) & 1) == 0)
  {
    if (image)
    {
      v5 = 32;
    }

    else
    {
      v5 = 0;
    }

    *(self + 555) = v4 & 0xDF | v5;
    [(SBIconView *)self _updateIconImageAdornmentsAnimated:animated];
  }
}

- (void)_updateIconImageAdornmentsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(SBIconView *)self _updateCloseBoxAnimated:?];
  [(SBIconView *)self _updateAccessoryViewAnimated:animatedCopy];

  [(SBIconView *)self _updateResizeHandleAnimated:animatedCopy];
}

- (void)setOverrideIconImageAppearance:(id)appearance
{
  appearanceCopy = appearance;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [appearanceCopy copy];
    overrideIconImageAppearance = self->_overrideIconImageAppearance;
    self->_overrideIconImageAppearance = v4;

    customIconImageViewController = [(SBIconView *)self customIconImageViewController];
    if (customIconImageViewController)
    {
      [(SBIconView *)self setOverrideImageAppearance:appearanceCopy onCustomIconImageViewController:customIconImageViewController];
    }

    _iconImageView = [(SBIconView *)self _iconImageView];
    [_iconImageView setOverrideIconImageAppearance:appearanceCopy];
    [(SBIconView *)self updateAccessoryViewOverrideIconImageAppearance];
  }
}

- (void)setOverrideIconImageStyleConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [configurationCopy copy];
    overrideIconImageStyleConfiguration = self->_overrideIconImageStyleConfiguration;
    self->_overrideIconImageStyleConfiguration = v4;

    customIconImageViewController = [(SBIconView *)self customIconImageViewController];
    if (customIconImageViewController)
    {
      [(SBIconView *)self setOverrideImageStyleConfiguration:configurationCopy onCustomIconImageViewController:customIconImageViewController];
    }

    _iconImageView = [(SBIconView *)self _iconImageView];
    [_iconImageView setOverrideIconImageStyleConfiguration:configurationCopy];
    [(SBIconView *)self updateAccessoryViewOverrideIconImageAppearance];
  }
}

- (void)setUsesSceneUserInterfaceStyleForImage:(BOOL)image
{
  v4 = *(self + 559);
  if ((((v4 >= 0) ^ image) & 1) == 0)
  {
    if (image)
    {
      v6 = 0x80;
    }

    else
    {
      v6 = 0;
    }

    *(self + 559) = v6 & 0x80 | v4 & 0x7F;
    _iconImageView = [(SBIconView *)self _iconImageView];
    [_iconImageView updateImageAnimated:1];
    window = [(SBIconView *)self window];
    [(SBIconView *)self updateWindowSceneUserInterfaceStyleChangeRegistrationForWindow:window];
  }
}

- (void)updateWindowSceneUserInterfaceStyleChangeRegistrationForWindow:(id)window
{
  v11[1] = *MEMORY[0x1E69E9840];
  windowScene = [window windowScene];
  windowSceneUserInterfaceStyleChangeRegistration = [(SBIconView *)self windowSceneUserInterfaceStyleChangeRegistration];
  usesSceneUserInterfaceStyleForImage = [(SBIconView *)self usesSceneUserInterfaceStyleForImage];
  if (!usesSceneUserInterfaceStyleForImage || windowSceneUserInterfaceStyleChangeRegistration)
  {
    if (windowSceneUserInterfaceStyleChangeRegistration)
    {
      v10 = usesSceneUserInterfaceStyleForImage;
    }

    else
    {
      v10 = 1;
    }

    if ((v10 & 1) == 0)
    {
      [windowScene unregisterForTraitChanges:windowSceneUserInterfaceStyleChangeRegistration];
      [(SBIconView *)self setWindowSceneUserInterfaceStyleChangeRegistration:0];
    }
  }

  else
  {
    v7 = objc_opt_self();
    v11[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v9 = [windowScene registerForTraitChanges:v8 withTarget:self action:sel_windowSceneUserInterfaceStyleChanged];

    [(SBIconView *)self setWindowSceneUserInterfaceStyleChangeRegistration:v9];
  }
}

- (void)windowSceneUserInterfaceStyleChanged
{
  _iconImageView = [(SBIconView *)self _iconImageView];
  [_iconImageView updateImageAnimated:1];
}

- (void)setOverrideImage:(id)image
{
  imageCopy = image;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_overrideImage, image);
    _iconImageView = [(SBIconView *)self _iconImageView];
    [_iconImageView updateImageAnimated:0];
  }
}

- (void)configureForLabelAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  [(SBIconView *)self setLabelHidden:!allowed];
  [(SBIconView *)self setLabelAccessoryHidden:!allowedCopy];

  [(SBIconView *)self _updateFrameToIconViewSize];
}

- (void)setAllowsLabelArea:(BOOL)area
{
  v4 = *(self + 557);
  if ((v4 & 1) != area)
  {
    areaCopy = area;
    *(self + 557) = v4 & 0xFE | area;
    [(SBIconView *)self iconImageSize];
    [(SBIconView *)self setBoundsSizeFromIconImageSize:?];
    [(SBIconView *)self invalidateIntrinsicContentSize];

    [(SBIconView *)self configureForLabelAllowed:areaCopy];
  }
}

- (void)setAllowsPassthroughHitTesting:(BOOL)testing
{
  if (testing)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 557) = *(self + 557) & 0xFD | v3;
}

- (void)setCustomIconImageViewHitTestingDisabled:(BOOL)disabled
{
  v3 = *(self + 558);
  if (((((v3 & 4) == 0) ^ disabled) & 1) == 0)
  {
    if (disabled)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    *(self + 558) = v3 & 0xFB | v4;
    [(SBIconView *)self _updateCustomIconImageViewControllerHitTesting];
  }
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6.receiver = self;
  v6.super_class = SBIconView;
  [(SBIconView *)&v6 setUserInteractionEnabled:?];
  [(SBIconView *)self addGesturesAndInteractionsIfNecessary];
  customIconImageViewController = [(SBIconView *)self customIconImageViewController];
  if (objc_opt_respondsToSelector())
  {
    [customIconImageViewController setUserInteractionEnabled:enabledCopy];
  }
}

+ (BOOL)isIconTapGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)setStartsDragMoreQuickly:(BOOL)quickly
{
  v3 = *(self + 555);
  if (((((v3 & 0x40) == 0) ^ quickly) & 1) == 0)
  {
    if (quickly)
    {
      v4 = 64;
    }

    else
    {
      v4 = 0;
    }

    *(self + 555) = v3 & 0xBF | v4;
    [(SBIconView *)self _updateDragInteractionLiftDelay];
  }
}

- (void)setCancelingDrag:(BOOL)drag
{
  if (drag)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 555) = v3 & 0x80 | *(self + 555) & 0x7F;
}

- (void)setAllowsCursorInteraction:(BOOL)interaction
{
  v3 = *(self + 558);
  if (interaction == (v3 & 2) >> 1)
  {
    if (interaction)
    {
      v4 = 0;
    }

    else
    {
      v4 = 2;
    }

    *(self + 558) = v3 & 0xFD | v4;
    [(SBIconView *)self _updateCursorInteractionsEnabled];
  }
}

- (void)setPaused:(BOOL)paused
{
  if (paused)
  {
    v3 = 1;
    v4 = 0x40000000;
  }

  else
  {
    v3 = 0;
    v4 = -1;
  }

  [(SBIconView *)self setPaused:v3 forReason:v4];
}

- (void)setPaused:(BOOL)paused forReason:(unint64_t)reason
{
  v5 = *(self + 276);
  v6 = v5 >> 4;
  v7 = (v5 >> 4) & 0x1F;
  v8 = v5 & 0xFE0F;
  v9 = 16 * ((v6 | reason) & 0x1F);
  if (!paused)
  {
    v9 = 16 * (v7 & ~reason);
  }

  *(self + 276) = v9 | v8;
  if ((v7 == 0) == ((v9 & 0x1F0) != 0))
  {
    v10 = (v9 & 0x1F0) != 0;
    [(SBIconView *)self _updateJitter];
    [(SBIconView *)self updateParallaxSettings];
    [(SBIconImageView *)self->_iconImageView setPaused:v10];
  }

  if (objc_opt_respondsToSelector())
  {
    customIconImageViewController = self->_customIconImageViewController;
    v12 = (*(self + 276) >> 4) & 0x1F;

    [(SBIconViewCustomImageViewControlling *)customIconImageViewController setPauseReasons:v12];
  }
}

- (unint64_t)effectiveContentVisibility
{
  contentVisibility = [(SBIconView *)self contentVisibility];
  if (SBHContentVisibilityIsVisible(contentVisibility) && [(SBIconView *)self isPaused])
  {
    return 1;
  }

  return contentVisibility;
}

- (void)setContentVisibility:(unint64_t)visibility
{
  v3 = *(self + 559);
  if (((v3 >> 3) & 3) != visibility)
  {
    *(self + 559) = v3 & 0xE7 | (8 * (visibility & 3));
    [(SBIconView *)self setPaused:!SBHContentVisibilityIsVisible(visibility) forReason:16];
    [(SBIconView *)self updateContentVisibilityOnCurrentImageView];
    v5 = SBLogIcon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(SBIconView *)self setContentVisibility:?];
    }

    [(SBIconView *)self _updatePresentationModeForReason:@"content visibility changed"];
  }
}

- (void)updateContentVisibilityOnCurrentImageView
{
  if (![(SBIconView *)self isIconImageViewBorrowed])
  {
    effectiveContentVisibility = [(SBIconView *)self effectiveContentVisibility];
    [(SBIconImageView *)self->_iconImageView setContentVisibility:effectiveContentVisibility];
    customIconImageViewController = [(SBIconView *)self customIconImageViewController];
    if (customIconImageViewController)
    {
      v5 = customIconImageViewController;
      if (objc_opt_respondsToSelector())
      {
        [v5 setContentVisibility:effectiveContentVisibility];
      }

      [objc_opt_class() updateAppearStateForViewController:v5 forContentVisibility:effectiveContentVisibility];
      customIconImageViewController = v5;
    }
  }
}

- (void)setPendingIcon:(id)icon
{
  iconCopy = icon;
  if (self->_pendingIcon != iconCopy)
  {
    v6 = iconCopy;
    objc_storeStrong(&self->_pendingIcon, icon);
    [(SBIconView *)self _reevaluateLogIdentifier];
    iconCopy = v6;
  }
}

- (void)setIcon:(id)icon animated:(BOOL)animated
{
  animatedCopy = animated;
  v22 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  icon = self->_icon;
  if (icon != iconCopy)
  {
    [(SBIcon *)icon removeObserver:self];
    v9 = self->_icon;
    objc_storeStrong(&self->_icon, icon);
    [(SBIconView *)self setPendingIcon:0];
    [(SBIconView *)self _reevaluateLogIdentifier];
    v10 = SBLogIcon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      logIdentifier = self->_logIdentifier;
      logIdentifier = [(SBIcon *)v9 logIdentifier];
      logIdentifier2 = [(SBIcon *)iconCopy logIdentifier];
      v16 = 138543874;
      v17 = logIdentifier;
      v18 = 2114;
      v19 = logIdentifier;
      v20 = 2114;
      v21 = logIdentifier2;
      _os_log_debug_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEBUG, "<%{public}@> Set new icon from %{public}@ to %{public}@", &v16, 0x20u);
    }

    v11 = self->_icon;
    if (v11)
    {
      [(SBIcon *)v11 addObserver:self];
      [(SBIconView *)self setPaused:0 forReason:2];
      [(SBIconView *)self _updateIconImageViewAnimated:animatedCopy];
      [(SBIconView *)self _updateLabelAreaAnimated:animatedCopy];
      [(SBIconView *)self _updateTooltipViewAnimated:animatedCopy];
      [(SBIconView *)self _updateProgressAnimated:animatedCopy];
      [(SBIconView *)self _updateCloseBoxAnimated:animatedCopy];
      [(SBIconView *)self _updateResizeHandleAnimated:animatedCopy];
      [(SBIconView *)self _updateBrightness];
      [(SBIconView *)self _applyEditingStateAnimated:animatedCopy];
      [(SBIconView *)self addGesturesAndInteractionsIfNecessary];
      [(SBIconView *)self _updateFrameToIconViewSize];
    }

    else
    {
      if (self->_pendingIcon)
      {
        [(SBIconView *)self setCustomIconImageViewController:0];
      }

      else
      {
        [(SBIconView *)self setPendingIcon:v9];
        [(SBIconView *)self setCustomIconImageViewController:0];
        [(SBIconView *)self setPendingIcon:0];
      }

      [(SBIconView *)self setPaused:1 forReason:2];
    }

    [(SBIconView *)self _updateAccessoryViewAnimated:animatedCopy];
    [(SBIconView *)self _updateLaunchDisabled];
    contextMenuDelegate = [(SBIconView *)self contextMenuDelegate];
    if (objc_opt_respondsToSelector())
    {
      [contextMenuDelegate refreshContextMenuForIconView:self];
    }

    [(SBIconView *)self _startTrackingSupportedMultitaskingShortcutActionsIfAppropriateWithOldIcon:v9];
  }
}

- (void)setShowsSquareCorners:(BOOL)corners
{
  if (corners)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 557) = *(self + 557) & 0xEF | v3;
  [(SBIconImageView *)self->_iconImageView setShowsSquareCorners:?];
}

- (double)_continuousCornerRadius
{
  if ((*(self + 557) & 0x10) != 0)
  {
    return 0.0;
  }

  [(SBIconView *)self iconImageCornerRadius];
  return result;
}

- (void)setLocation:(id)location animated:(BOOL)animated
{
  animatedCopy = animated;
  locationCopy = location;
  if ((BSEqualObjects() & 1) == 0)
  {
    v6 = [locationCopy copy];
    iconLocation = self->_iconLocation;
    self->_iconLocation = v6;

    [(SBIconView *)self _updateFrameToIconViewSize];
    [(SBIconView *)self _updateIconImageViewAnimated:animatedCopy];
    [(SBIconView *)self _updateLabelAnimated:animatedCopy];
    [(SBIconView *)self _updateTooltipViewAnimated:animatedCopy];
    [(SBIconView *)self _updateIconImageAdornmentsAnimated:animatedCopy];
    customIconImageViewController = [(SBIconView *)self customIconImageViewController];
    [(SBIconView *)self iconImageInfo];
    [customIconImageViewController setIconImageInfo:?];
  }
}

- (void)setOrientation:(int64_t)orientation
{
  if (self->_orientation != orientation)
  {
    self->_orientation = orientation;
    [(SBIconView *)self _updateFrameToIconViewSize];
  }
}

- (void)setListLayoutProvider:(id)provider animated:(BOOL)animated
{
  animatedCopy = animated;
  providerCopy = provider;
  listLayoutProvider = self->_listLayoutProvider;
  if (listLayoutProvider != providerCopy)
  {
    v9 = listLayoutProvider;
    objc_storeStrong(&self->_listLayoutProvider, provider);
    v10 = self->_customIconImageViewController;
    if (animatedCopy)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [(SBIconImageView *)self->_iconImageView willAnimateIconImageInfoChange];
      [(SBIconImageView *)self->_iconImageView willAnimateListLayoutProviderChange:providerCopy context:v11];
      v12 = MEMORY[0x1E69DD250];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __45__SBIconView_setListLayoutProvider_animated___block_invoke;
      v19[3] = &unk_1E8088F18;
      v19[4] = self;
      v20 = providerCopy;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __45__SBIconView_setListLayoutProvider_animated___block_invoke_2;
      v16[3] = &unk_1E808EF70;
      v16[4] = self;
      v17 = v9;
      v18 = v11;
      v13 = v11;
      [v12 animateWithDuration:v19 animations:v16 completion:0.3];
    }

    else
    {
      [(SBIconView *)self _updateFrameToIconViewSize];
      [(SBIconImageView *)self->_iconImageView setListLayoutProvider:providerCopy];
      [(SBIconImageView *)self->_iconImageView iconImageInfoDidChange];
    }

    [(SBIconView *)self _updateLabelAnimated:animatedCopy];
    [(SBIconView *)self _updateTooltipViewAnimated:animatedCopy];
    [(SBIconView *)self _destroyAccessoryView];
    [(SBIconView *)self _updateAccessoryViewAnimated:0];
    closeBox = self->_closeBox;
    listLayout = [(SBIconView *)self listLayout];
    [(SBCloseBoxView *)closeBox setListLayout:listLayout];

    [(SBIconView *)self iconImageInfo];
    [(SBIconViewCustomImageViewControlling *)v10 setIconImageInfo:?];
    if (objc_opt_respondsToSelector())
    {
      [(SBIconViewCustomImageViewControlling *)v10 setListLayoutProvider:providerCopy];
    }
  }
}

uint64_t __45__SBIconView_setListLayoutProvider_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateFrameToIconViewSize];
  [*(*(a1 + 32) + 424) setListLayoutProvider:*(a1 + 40)];
  result = [*(a1 + 32) shouldAnimateFrameOfIconImageView];
  if (result)
  {
    [*(a1 + 32) _frameForImageView];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [*(*(a1 + 32) + 456) sbf_setBoundsAndPositionFromFrame:?];
    [*(*(a1 + 32) + 424) sbf_setBoundsAndPositionFromFrame:{v4, v6, v8, v10}];
    [*(*(a1 + 32) + 424) iconImageInfoDidChange];
    [*(*(a1 + 32) + 424) layoutIfNeeded];
    v11 = *(a1 + 32);

    return [v11 layoutIfNeeded];
  }

  return result;
}

uint64_t __45__SBIconView_setListLayoutProvider_animated___block_invoke_2(void *a1)
{
  [*(a1[4] + 424) didAnimateIconImageInfoChange];
  v2 = a1[5];
  v3 = *(a1[4] + 424);
  v4 = a1[6];

  return [v3 didAnimateListLayoutProviderChange:v2 context:v4];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v6 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    reuseDelegate = [(SBIconView *)self reuseDelegate];
    if (objc_opt_respondsToSelector())
    {
      closeBox = self->_closeBox;
      if (closeBox)
      {
        backgroundView = [(SBHomeScreenButton *)closeBox backgroundView];
        v10 = [reuseDelegate iconView:self shouldContinueToUseBackgroundViewForComponents:backgroundView];

        if ((v10 & 1) == 0)
        {
          [(SBCloseBoxView *)self->_closeBox removeFromSuperview];
          v11 = self->_closeBox;
          self->_closeBox = 0;

          [(SBIconView *)self _createCloseBoxIfNecessary];
        }
      }
    }

    [(SBIconView *)self addGesturesAndInteractionsIfNecessary];

    v6 = obj;
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)setConfigurationOptions:(unint64_t)options
{
  [(SBIconView *)self setUserInteractionEnabled:(options & 4) == 0];
  [(SBIconView *)self setAllowsLabelArea:(options & 2) == 0];
  [(SBIconView *)self setAllowsAccessoryView:(options & 0x20) == 0];
  [(SBIconView *)self setAllowsPassthroughHitTesting:(options >> 3) & 1];
  *(self + 557) = *(self + 557) & 0xDF | (2 * options) & 0x20;
  if ((options & 0x10) != 0)
  {
    if (self->_contextMenuInteraction)
    {
      [(SBIconView *)self removeInteraction:?];
      contextMenuInteraction = self->_contextMenuInteraction;
      self->_contextMenuInteraction = 0;
    }
  }

  else
  {
    [(SBIconView *)self addGesturesAndInteractionsIfNecessary];
  }

  [(SBIconView *)self setAllowsCursorInteraction:(options & 0x40) == 0];
  [(SBIconView *)self setAllowsIconImageView:(options & 0x80) == 0];

  [(SBIconView *)self setShowsSquareCorners:(options >> 8) & 1];
}

- (void)setContinuityInfo:(id)info animated:(BOOL)animated
{
  animatedCopy = animated;
  infoCopy = info;
  if (self->_continuityInfo != infoCopy)
  {
    v8 = infoCopy;
    objc_storeStrong(&self->_continuityInfo, info);
    [(SBIconView *)self _updateAccessoryViewAnimated:animatedCopy];
    infoCopy = v8;
  }
}

- (id)disallowContextMenusForReason:(id)reason
{
  v13[1] = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v5 = [SBIconViewAssertion alloc];
  v12 = @"reason";
  v13[0] = reasonCopy;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v7 = [(SBIconViewAssertion *)v5 initWithAssertionType:3 iconView:self extraInfo:v6];

  forbidContextMenusAssertions = self->_forbidContextMenusAssertions;
  if (!forbidContextMenusAssertions)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v10 = self->_forbidContextMenusAssertions;
    self->_forbidContextMenusAssertions = weakObjectsHashTable;

    forbidContextMenusAssertions = self->_forbidContextMenusAssertions;
  }

  [(NSHashTable *)forbidContextMenusAssertions addObject:v7];
  if ([(SBIconView *)self isShowingContextMenu])
  {
    [(SBIconView *)self dismissContextMenuWithCompletion:0];
  }

  return v7;
}

- (void)performAfterContextMenusDismissUsingBlock:(id)block
{
  blockCopy = block;
  if ([(SBIconView *)self isShowingContextMenu])
  {
    performAfterContextMenuBlocks = self->_performAfterContextMenuBlocks;
    v5 = [blockCopy copy];

    v6 = _Block_copy(v5);
    [(NSMutableArray *)performAfterContextMenuBlocks addObject:v6];

    blockCopy = v5;
  }

  else
  {
    blockCopy[2]();
  }
}

- (id)disallowGlassGroupingForReason:(id)reason
{
  v13[1] = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v5 = [SBIconViewAssertion alloc];
  v12 = @"reason";
  v13[0] = reasonCopy;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v7 = [(SBIconViewAssertion *)v5 initWithAssertionType:5 iconView:self extraInfo:v6];

  disallowGlassGroupingAssertions = self->_disallowGlassGroupingAssertions;
  if (!disallowGlassGroupingAssertions)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v10 = self->_disallowGlassGroupingAssertions;
    self->_disallowGlassGroupingAssertions = weakObjectsHashTable;

    disallowGlassGroupingAssertions = self->_disallowGlassGroupingAssertions;
  }

  [(NSHashTable *)disallowGlassGroupingAssertions addObject:v7];
  [(SBIconView *)self _applyGlassGroupingEnabledState];

  return v7;
}

- (void)removeDisallowGlassGroupingAssertion:(id)assertion
{
  [(NSHashTable *)self->_disallowGlassGroupingAssertions removeObject:assertion];

  [(SBIconView *)self _applyGlassGroupingEnabledState];
}

- (BOOL)_isGlassGroupingEnabled
{
  iconImageAllowsGlassGrouping = [(SBIconView *)self iconImageAllowsGlassGrouping];
  if (iconImageAllowsGlassGrouping)
  {
    LOBYTE(iconImageAllowsGlassGrouping) = [(NSHashTable *)self->_disallowGlassGroupingAssertions count]== 0;
  }

  return iconImageAllowsGlassGrouping;
}

- (void)_applyGlassGroupingEnabledState
{
  if (self->_customIconImageViewController)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      return;
    }

    customIconImageViewController = self->_customIconImageViewController;
  }

  else
  {
    customIconImageViewController = self->_iconImageView;
    if (!customIconImageViewController)
    {
      return;
    }
  }

  _isGlassGroupingEnabled = [(SBIconView *)self _isGlassGroupingEnabled];

  [customIconImageViewController setAllowsGlassGrouping:_isGlassGroupingEnabled];
}

- (void)setIconImageAllowsGlassGrouping:(BOOL)grouping
{
  v3 = *(self + 560);
  if (((v3 & 0x20) == 0) != grouping)
  {
    if (grouping)
    {
      v4 = 0;
    }

    else
    {
      v4 = 32;
    }

    *(self + 560) = v3 & 0xDF | v4;
    [(SBIconView *)self _applyGlassGroupingEnabledState];
  }
}

- (void)setIconImageGlassHidden:(BOOL)hidden
{
  v3 = *(self + 560);
  if (((((v3 & 0x40) == 0) ^ hidden) & 1) == 0)
  {
    if (hidden)
    {
      v4 = 64;
    }

    else
    {
      v4 = 0;
    }

    *(self + 560) = v3 & 0xBF | v4;
    [(SBIconImageView *)self->_iconImageView setGlassHidden:?];
  }
}

- (SBIconContinuityItem)continuityItem
{
  if (os_variant_has_internal_content() && [(SBIconView *)self _debugContinuity])
  {
    debugContinuityItem = [objc_opt_class() debugContinuityItem];
  }

  else
  {
    continuityInfo = [(SBIconView *)self continuityInfo];
    debugContinuityItem = [SBIconContinuityItem itemForContinuityInfo:continuityInfo];
  }

  return debugContinuityItem;
}

- (UIView)iconImageSnapshotView
{
  crossfadeView = self->_crossfadeView;
  if (crossfadeView || (v4 = objc_opt_respondsToSelector(), crossfadeView = self->_customIconImageViewController, (v4 & 1) != 0))
  {
    snapshotView = [crossfadeView snapshotView];
    goto LABEL_4;
  }

  if (crossfadeView)
  {
    view = [crossfadeView view];
    snapshotView2 = [view snapshotView];
  }

  else
  {
    view = [(SBIconImageView *)self->_iconImageView snapshot];
    if (!view)
    {
      snapshotView = 0;
      goto LABEL_12;
    }

    snapshotView2 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:view];
  }

  snapshotView = snapshotView2;
LABEL_12:

LABEL_4:

  return snapshotView;
}

- (CGRect)iconImageVisibleFrame
{
  [(SBIconView *)self iconImageVisibleSize];
  [(SBIconView *)self iconImageFrame];
  _screen = [(SBIconView *)self _screen];
  [_screen scale];

  UIRectCenteredIntegralRectScale();
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)setIconImageAndAccessoryAlpha:(double)alpha
{
  [(SBIconView *)self setIconImageAlpha:?];

  [(SBIconView *)self setIconAccessoryAlpha:alpha];
}

- (void)setIconImageAlpha:(double)alpha
{
  if (self->_iconImageAlpha != alpha)
  {
    self->_iconImageAlpha = alpha;
    [(SBIconView *)self effectiveIconImageAlpha];

    [(SBIconView *)self _applyIconImageAlpha:?];
  }
}

- (void)_applyIconImageAlpha:(double)alpha
{
  if (![(SBIconView *)self isIconImageViewBorrowed])
  {
    currentImageView = [(SBIconView *)self currentImageView];
    [currentImageView setAlpha:alpha];
  }
}

- (void)setIconAccessoryAlpha:(double)alpha
{
  if (self->_iconAccessoryAlpha != alpha)
  {
    self->_iconAccessoryAlpha = alpha;
    [(SBIconView *)self effectiveIconAccessoryAlpha];

    [(SBIconView *)self _applyIconAccessoryAlpha:?];
  }
}

- (void)_applyIconAccessoryAlpha:(double)alpha
{
  [(SBIconAccessoryView *)self->_accessoryView setAlpha:?];
  if ([(SBIconView *)self shouldShowCloseBox])
  {
    [(SBCloseBoxView *)self->_closeBox setAlpha:alpha];
  }

  if ([(SBIconView *)self shouldShowResizeHandle])
  {
    [(SBHIconResizeHandle *)self->_resizeHandle setAlpha:alpha];
  }

  iconImageView = self->_iconImageView;

  [(SBIconImageView *)iconImageView setProgressAlpha:alpha];
}

- (void)setIconLabelAlpha:(double)alpha
{
  if (self->_iconLabelAlpha != alpha)
  {
    self->_iconLabelAlpha = alpha;
    [(SBIconView *)self effectiveIconLabelAlpha];

    [(SBIconView *)self _applyIconLabelAlpha:?];
  }
}

- (void)_applyIconLabelAlpha:(double)alpha
{
  [(SBIconLabelView *)self->_labelView setAlpha:?];
  labelAccessoryView = self->_labelAccessoryView;

  [(SBIconLabelAccessoryView *)labelAccessoryView setAlpha:alpha];
}

- (void)_applyOverallAlpha:(double)alpha
{
  contentContainerView = [(SBIconView *)self contentContainerView];
  layer = [contentContainerView layer];
  [layer setAllowsGroupOpacity:alpha < 1.0];

  [contentContainerView setAlpha:alpha];
}

- (void)_updateAllComponentAlphasAnimated:(BOOL)animated
{
  animatedCopy = animated;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__SBIconView__updateAllComponentAlphasAnimated___block_invoke;
  aBlock[3] = &unk_1E8088C90;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v5 = v4;
  if (animatedCopy)
  {
    [MEMORY[0x1E69DD250] animateWithDuration:v4 animations:0.3];
  }

  else
  {
    (*(v4 + 2))(v4);
  }
}

uint64_t __48__SBIconView__updateAllComponentAlphasAnimated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2 effectiveIconImageAlpha];
  [v2 _applyIconImageAlpha:?];
  v3 = *(a1 + 32);
  [v3 effectiveIconAccessoryAlpha];
  [v3 _applyIconAccessoryAlpha:?];
  v4 = *(a1 + 32);
  [v4 effectiveIconLabelAlpha];
  [v4 _applyIconLabelAlpha:?];
  v5 = *(a1 + 32);
  [v5 effectiveOverallAlpha];

  return [v5 _applyOverallAlpha:?];
}

- (void)_updateCustomIconImageViewController:(BOOL)controller
{
  controllerCopy = controller;
  customIconImageViewController = [(SBIconView *)self customIconImageViewController];
  if (customIconImageViewController)
  {
    isEditing = [(SBIconView *)self isEditing];
    if (objc_opt_respondsToSelector())
    {
      [customIconImageViewController setEditing:isEditing animated:controllerCopy];
    }

    else if (objc_opt_respondsToSelector())
    {
      [customIconImageViewController setEditing:isEditing];
    }
  }
}

- (void)setLabelHidden:(BOOL)hidden
{
  v4 = ![(SBIconView *)self allowsLabelArea]|| hidden;
  v5 = *(self + 555);
  if (((v4 ^ ((v5 & 2) == 0)) & 1) == 0)
  {
    if (v4)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    *(self + 555) = v5 & 0xFD | v6;

    [(SBIconView *)self _updateLabelAnimated:0];
  }
}

- (void)setLabelAccessoryHidden:(BOOL)hidden
{
  v4 = ![(SBIconView *)self allowsLabelArea]|| hidden;
  v5 = *(self + 555);
  if (((v4 ^ ((v5 & 4) == 0)) & 1) == 0)
  {
    if (v4)
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *(self + 555) = v5 & 0xFB | v6;

    [(SBIconView *)self _updateLabelAreaAnimated:0];
  }
}

- (void)setIconContentScale:(double)scale
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_iconContentScale = scale;

    [(SBIconView *)self _updateIconContentScale];
  }
}

- (void)setIconContentScalingEnabled:(BOOL)enabled
{
  v7 = *(self + 555);
  if (((((v7 & 8) == 0) ^ enabled) & 1) == 0)
  {
    v10 = v3;
    if (enabled)
    {
      v9 = 8;
    }

    else
    {
      v9 = 0;
    }

    *(self + 555) = v7 & 0xF7 | v9;
    [(SBIconView *)self _toggleContentContainerViewIfNecessary:v4];

    [(SBIconView *)self _updateIconContentScale];
  }
}

- (void)_setForcingIconContentScalingEnabled:(BOOL)enabled
{
  v3 = *(self + 555);
  if (((((v3 & 0x10) == 0) ^ enabled) & 1) == 0)
  {
    if (enabled)
    {
      v4 = 16;
    }

    else
    {
      v4 = 0;
    }

    *(self + 555) = v3 & 0xEF | v4;
    [(SBIconView *)self _toggleContentContainerViewIfNecessary];
  }
}

- (double)effectiveIconContentScale
{
  if (![(SBIconView *)self isIconContentScalingEnabled])
  {
    return 1.0;
  }

  [(SBIconView *)self iconContentScale];
  return result;
}

- (BOOL)_shouldHaveContentContainerView
{
  v2 = objc_opt_class();

  return [v2 _shouldAlwaysHaveContentContainerView];
}

- (void)_toggleContentContainerViewIfNecessary
{
  _shouldHaveContentContainerView = [(SBIconView *)self _shouldHaveContentContainerView];
  scalingContainer = self->_scalingContainer;
  if (scalingContainer)
  {
    v5 = 1;
  }

  else
  {
    v5 = !_shouldHaveContentContainerView;
  }

  if (v5)
  {
    if (scalingContainer != 0 && !_shouldHaveContentContainerView)
    {

      [(SBIconView *)self _disableContentContainerView];
    }
  }

  else
  {

    [(SBIconView *)self _enableContentContainerView];
  }
}

- (void)_enableContentContainerView
{
  if (!self->_scalingContainer)
  {
    v6[7] = v2;
    v6[8] = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__SBIconView__enableContentContainerView__block_invoke;
    v6[3] = &unk_1E8088C90;
    v6[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v6];
    [(SBIconView *)self iconContentScale];
    [(SBIconView *)self _applyIconContentScale:?];
    layer = [(SBIconView *)self layer];
    [layer setAllowsGroupBlending:1];

    [(SBIconView *)self _toggleGroupBlendingIfNecessary];
  }
}

uint64_t __41__SBIconView__enableContentContainerView__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc([objc_opt_class() contentContainerViewClass]);
  [*(a1 + 32) bounds];
  v3 = [v2 initWithFrame:?];
  v4 = *(a1 + 32);
  v5 = *(v4 + 576);
  *(v4 + 576) = v3;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [*(a1 + 32) subviews];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(a1 + 32) + 576) addSubview:*(*(&v12 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  return [*(a1 + 32) addSubview:*(*(a1 + 32) + 576)];
}

- (void)_disableContentContainerView
{
  v15 = *MEMORY[0x1E69E9840];
  scalingContainer = self->_scalingContainer;
  if (scalingContainer)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    subviews = [(UIView *)scalingContainer subviews];
    v5 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(subviews);
          }

          [(SBIconView *)self addSubview:*(*(&v10 + 1) + 8 * v8++)];
        }

        while (v6 != v8);
        v6 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    [(UIView *)self->_scalingContainer removeFromSuperview];
    v9 = self->_scalingContainer;
    self->_scalingContainer = 0;

    [(SBIconView *)self _toggleGroupBlendingIfNecessary];
  }
}

- (void)_updateIconContentScale
{
  v3 = 1.0;
  v4 = 1.0;
  if ([(SBIconView *)self isIconContentScalingEnabled])
  {
    [(SBIconView *)self iconContentScale];
    v4 = v5;
  }

  isDragLifted = [(SBIconView *)self isDragLifted];
  isShowingContextMenu = [(SBIconView *)self isShowingContextMenu];
  if (isDragLifted && !isShowingContextMenu)
  {
    [(SBIconView *)self _additionalLiftScale];
    v3 = v8;
  }

  [(SBIconView *)self _applyIconContentScale:v4 * v3];
}

- (void)_applyIconContentScale:(double)scale
{
  if ((BSFloatIsOne() & 1) != 0 || ![(SBIconView *)self isIconContentScalingEnabled])
  {
    scalingContainer = self->_scalingContainer;
    v7 = *(MEMORY[0x1E695EFD0] + 16);
    *&v10.a = *MEMORY[0x1E695EFD0];
    *&v10.c = v7;
    *&v10.tx = *(MEMORY[0x1E695EFD0] + 32);
    v6 = &v10;
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
    CGAffineTransformMakeScale(&v10, scale, scale);
    scalingContainer = self->_scalingContainer;
    v9 = v10;
    v6 = &v9;
  }

  [(UIView *)scalingContainer setTransform:v6, *&v9.a, *&v9.c, *&v9.tx, *&v10.a, *&v10.b, *&v10.c, *&v10.d, *&v10.tx, *&v10.ty];
  [(SBIconView *)self bounds];
  [(UIView *)self->_scalingContainer setBounds:?];
  v8 = self->_scalingContainer;
  UIRectGetCenter();
  [(UIView *)v8 setCenter:?];
}

- (double)_additionalLiftScale
{
  dragDelegate = [(SBIconView *)self dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [dragDelegate additionalDragLiftScaleForIconView:self];
    v5 = v4;
  }

  else
  {
    v5 = 1.1;
  }

  return v5;
}

- (void)setDragLifted:(BOOL)lifted
{
  v3 = *(self + 556);
  if (((((v3 & 4) == 0) ^ lifted) & 1) == 0)
  {
    if (lifted)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    *(self + 556) = v3 & 0xFB | v4;
  }
}

- (void)_acquireHomeButtonPressConsumingAssertionIfNecessary
{
  if ((SBHIsRunningInSpringBoard(self) & 1) == 0)
  {
    homeButtonPressConsumingAssertion = [(SBIconView *)self homeButtonPressConsumingAssertion];

    if (!homeButtonPressConsumingAssertion)
    {
      mEMORY[0x1E69D4220] = [MEMORY[0x1E69D4220] sharedInstance];
      v5 = [mEMORY[0x1E69D4220] beginConsumingPressesForButtonKind:1 eventConsumer:self priority:0];

      [(SBIconView *)self setHomeButtonPressConsumingAssertion:v5];
    }
  }
}

- (id)_visiblyActiveDataSource
{
  customIconImageViewController = [(SBIconView *)self customIconImageViewController];
  if (objc_opt_respondsToSelector())
  {
    visiblyActiveDataSource = [customIconImageViewController visiblyActiveDataSource];
  }

  else
  {
    icon = [(SBIconView *)self icon];
    if ([icon isLeafIcon])
    {
      visiblyActiveDataSource = [icon activeDataSource];
    }

    else
    {
      visiblyActiveDataSource = 0;
    }
  }

  return visiblyActiveDataSource;
}

- (id)configurationUIDelegate
{
  delegate = [(SBIconView *)self delegate];
  v4 = delegate;
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate configurationUIDelegateForIconView:self];
  }

  return v4;
}

- (BOOL)supportsConfigurationCard
{
  configurationUIDelegate = [(SBIconView *)self configurationUIDelegate];
  if (objc_opt_respondsToSelector())
  {
    _visiblyActiveDataSource = [(SBIconView *)self _visiblyActiveDataSource];
    if (_visiblyActiveDataSource)
    {
      v5 = [configurationUIDelegate iconView:self supportsConfigurationForDataSource:_visiblyActiveDataSource];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)supportsStackConfigurationCard
{
  icon = [(SBIconView *)self icon];
  supportsStackConfiguration = [icon supportsStackConfiguration];

  return supportsStackConfiguration;
}

- (BOOL)isShowingStackConfigurationCard
{
  currentStackConfigurationInteraction = [(SBIconView *)self currentStackConfigurationInteraction];
  v3 = currentStackConfigurationInteraction != 0;

  return v3;
}

- (void)presentConfigurationCard
{
  currentConfigurationInteraction = [(SBIconView *)self currentConfigurationInteraction];
  if (!currentConfigurationInteraction)
  {
    configurationUIDelegate = [(SBIconView *)self configurationUIDelegate];
    if (objc_opt_respondsToSelector())
    {
      _visiblyActiveDataSource = [(SBIconView *)self _visiblyActiveDataSource];
      if (_visiblyActiveDataSource)
      {
        v7 = [configurationUIDelegate iconView:self configurationInteractionForDataSource:_visiblyActiveDataSource];
        [v7 setDelegate:self];
        [(SBIconView *)self setCurrentConfigurationInteraction:v7];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    currentConfigurationInteraction = v7;
  }

  v8 = currentConfigurationInteraction;
  [currentConfigurationInteraction beginConfiguration];
  mEMORY[0x1E69D3F90] = [MEMORY[0x1E69D3F90] sharedInstance];
  [mEMORY[0x1E69D3F90] emitEvent:56];
}

- (void)presentStackConfigurationCard
{
  currentStackConfigurationInteraction = [(SBIconView *)self currentStackConfigurationInteraction];
  v4 = objc_opt_class();
  v5 = currentStackConfigurationInteraction;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v16 = v6;

  v7 = v16;
  if (!v16)
  {
    currentConfigurationInteraction = [(SBIconView *)self currentConfigurationInteraction];

    if (currentConfigurationInteraction)
    {
      v7 = 0;
    }

    else
    {
      configurationUIDelegate = [(SBIconView *)self configurationUIDelegate];
      if (objc_opt_respondsToSelector())
      {
        v10 = [configurationUIDelegate stackConfigurationInteractionForIconView:self];
        v11 = objc_opt_class();
        v12 = v10;
        if (v11)
        {
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;

        v17 = v14;
        [v17 setDelegate:self];
        [(SBIconView *)self setCurrentStackConfigurationInteraction:v17];
      }

      else
      {
        v17 = 0;
      }

      v7 = v17;
    }
  }

  v18 = v7;
  [v7 beginConfiguration];
  mEMORY[0x1E69D3F90] = [MEMORY[0x1E69D3F90] sharedInstance];
  [mEMORY[0x1E69D3F90] emitEvent:57];
}

- (void)popStackConfigurationCard
{
  currentStackConfigurationInteraction = [(SBIconView *)self currentStackConfigurationInteraction];
  [currentStackConfigurationInteraction popConfiguration];
}

- (void)dismissStackConfigurationCard
{
  currentStackConfigurationInteraction = [(SBIconView *)self currentStackConfigurationInteraction];
  [currentStackConfigurationInteraction endConfiguration];
}

- (void)popConfigurationCard
{
  currentConfigurationInteraction = [(SBIconView *)self currentConfigurationInteraction];
  [currentConfigurationInteraction popConfiguration];
}

- (void)dismissConfigurationCard
{
  currentConfigurationInteraction = [(SBIconView *)self currentConfigurationInteraction];
  [currentConfigurationInteraction endConfiguration];
}

- (id)containerViewControllerForConfigurationInteraction:(id)interaction
{
  interactionCopy = interaction;
  configurationUIDelegate = [(SBIconView *)self configurationUIDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [configurationUIDelegate iconView:self containerViewControllerForConfigurationInteraction:interactionCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)containerViewForConfigurationInteraction:(id)interaction
{
  interactionCopy = interaction;
  configurationUIDelegate = [(SBIconView *)self configurationUIDelegate];
  if (objc_opt_respondsToSelector())
  {
    view = [configurationUIDelegate iconView:self containerViewForConfigurationInteraction:interactionCopy];
  }

  else
  {
    v7 = [(SBIconView *)self containerViewControllerForConfigurationInteraction:interactionCopy];

    view = [v7 view];
    interactionCopy = v7;
  }

  return view;
}

- (CGRect)contentBoundingRectForConfigurationInteraction:(id)interaction
{
  interactionCopy = interaction;
  configurationUIDelegate = [(SBIconView *)self configurationUIDelegate];
  if (objc_opt_respondsToSelector())
  {
    [configurationUIDelegate iconView:self contentBoundingRectForConfigurationInteraction:interactionCopy];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v14 = [(SBIconView *)self containerViewForConfigurationInteraction:interactionCopy];

    [v14 bounds];
    v7 = v15;
    v9 = v16;
    v11 = v17;
    v13 = v18;
    interactionCopy = v14;
  }

  v19 = v7;
  v20 = v9;
  v21 = v11;
  v22 = v13;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (int64_t)userInterfaceStyleForConfigurationInteraction:(id)interaction
{
  interactionCopy = interaction;
  configurationUIDelegate = [(SBIconView *)self configurationUIDelegate];
  if (objc_opt_respondsToSelector())
  {
    userInterfaceStyle = [configurationUIDelegate iconView:self userInterfaceStyleForConfigurationInteraction:interactionCopy];
  }

  else
  {
    traitCollection = [(SBIconView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];
  }

  return userInterfaceStyle;
}

- (id)homeScreenContentViewForConfigurationInteraction:(id)interaction
{
  interactionCopy = interaction;
  configurationUIDelegate = [(SBIconView *)self configurationUIDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [configurationUIDelegate iconView:self homeScreenContentViewForConfigurationInteraction:interactionCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)configurationInteractionWillBegin:(id)begin
{
  v10 = *MEMORY[0x1E69E9840];
  beginCopy = begin;
  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    v8 = 138543362;
    v9 = logIdentifier;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@> Widget configuration will begin", &v8, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SBIconView *)self _updateIconImageAdornmentsAnimated:0];
    [(SBIconView *)self setAllowsEditingAnimation:0];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SBIconView *)self _updateIconImageAdornmentsAnimated:0];
    [(SBIconView *)self setAllowsEditingAnimation:0];
  }

  configurationUIDelegate = [(SBIconView *)self configurationUIDelegate];
  if (objc_opt_respondsToSelector())
  {
    [configurationUIDelegate iconView:self configurationWillBeginWithInteraction:beginCopy];
  }

  self->_inConfigurationTransition = 1;
  [(SBIconView *)self _updatePresentationModeForReason:@"configuration will begin"];
}

- (void)configurationInteractionDidBegin:(id)begin
{
  v10 = *MEMORY[0x1E69E9840];
  beginCopy = begin;
  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    v8 = 138543362;
    v9 = logIdentifier;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@> Widget configuration did begin", &v8, 0xCu);
  }

  configurationUIDelegate = [(SBIconView *)self configurationUIDelegate];
  if (objc_opt_respondsToSelector())
  {
    [configurationUIDelegate iconView:self configurationDidBeginWithInteraction:beginCopy];
  }
}

- (void)configurationInteractionDidCommit:(id)commit
{
  v10 = *MEMORY[0x1E69E9840];
  commitCopy = commit;
  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    v8 = 138543362;
    v9 = logIdentifier;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@> Widget configuration did commit", &v8, 0xCu);
  }

  configurationUIDelegate = [(SBIconView *)self configurationUIDelegate];
  if (objc_opt_respondsToSelector())
  {
    [configurationUIDelegate iconView:self configurationDidUpdateWithInteraction:commitCopy];
  }
}

- (void)configurationInteractionWillEnd:(id)end
{
  v10 = *MEMORY[0x1E69E9840];
  endCopy = end;
  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    v8 = 138543362;
    v9 = logIdentifier;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@> Widget configuration will end", &v8, 0xCu);
  }

  configurationUIDelegate = [(SBIconView *)self configurationUIDelegate];
  if (objc_opt_respondsToSelector())
  {
    [configurationUIDelegate iconView:self configurationWillEndWithInteraction:endCopy];
  }

  self->_inConfigurationTransition = 1;
  [(SBIconView *)self _updatePresentationModeForReason:@"configuration will end"];
}

- (void)configurationInteractionDidEnd:(id)end
{
  v10 = *MEMORY[0x1E69E9840];
  endCopy = end;
  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    v8 = 138543362;
    v9 = logIdentifier;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@> Widget configuration did end", &v8, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SBIconView *)self setCurrentConfigurationInteraction:0];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SBIconView *)self setCurrentStackConfigurationInteraction:0];
  }

  [(SBIconView *)self _updateIconImageAdornmentsAnimated:1];
  [(SBIconView *)self setAllowsEditingAnimation:1];
  configurationUIDelegate = [(SBIconView *)self configurationUIDelegate];
  if (objc_opt_respondsToSelector())
  {
    [configurationUIDelegate iconView:self configurationDidEndWithInteraction:endCopy];
  }

  self->_inConfigurationTransition = 0;
  [(SBIconView *)self _updatePresentationModeForReason:@"configuration did end"];
}

- (double)verticalMarginPercentageForConfigurationInteraction:(id)interaction
{
  configurationUIDelegate = [(SBIconView *)self configurationUIDelegate];
  v5 = -1.0;
  if (objc_opt_respondsToSelector())
  {
    [configurationUIDelegate verticalMarginPercentageForConfigurationOfIconView:self];
    v5 = v6;
  }

  return v5;
}

- (id)newCaptureOnlyBackgroundView
{
  backgroundViewProvider = [(SBIconViewCustomImageViewControlling *)self->_customIconImageViewController backgroundViewProvider];
  v4 = backgroundViewProvider[2]();

  if (objc_opt_respondsToSelector())
  {
    if (objc_opt_respondsToSelector())
    {
      backgroundViewConfigurator = [(SBIconViewCustomImageViewControlling *)self->_customIconImageViewController backgroundViewConfigurator];
      if (backgroundViewConfigurator && (objc_opt_respondsToSelector() & 1) != 0)
      {
        visiblyActiveDataSource = [(SBIconViewCustomImageViewControlling *)self->_customIconImageViewController visiblyActiveDataSource];
        if (visiblyActiveDataSource)
        {
          (backgroundViewConfigurator)[2](backgroundViewConfigurator, v4, visiblyActiveDataSource);
        }
      }
    }

    else
    {
      backgroundViewConfigurator = 0;
    }

    [v4 setCaptureOnly:1];
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)representativeIconViewForModalInteractions
{
  v3 = [objc_alloc(-[SBIconView iconViewClassForRepresentitiveModalInteractions](self "iconViewClassForRepresentitiveModalInteractions"))];
  [v3 configureBorrowingIconImageViewFromIconView:self];
  [v3 setEditing:0];
  [v3 setAllowsEditingAnimation:0];
  [(SBIconView *)self iconImageInfo];
  [v3 setIconImageInfo:?];
  [(SBIconView *)self bounds];
  [v3 setFrame:?];
  [v3 layoutIfNeeded];

  return v3;
}

- (Class)iconViewClassForRepresentitiveModalInteractions
{
  BSDispatchQueueAssertMain();
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v4 = objc_opt_self();
  v5 = [(SBIconView *)self isMemberOfClass:v4];

  if (v5)
  {
    v18 = objc_opt_self();
    ClassPair = v18;
  }

  else
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v18 = v7;
    if (IsReduceMotionEnabled)
    {
      v8 = @"__SBHBORROWED";
    }

    else
    {
      v8 = @"__SBHTRANSFORM";
    }

    v9 = [(objc_class *)v7 stringByAppendingString:v8];
    ClassPair = NSClassFromString(v9);
    if (!ClassPair)
    {
      ClassPair = objc_allocateClassPair(v6, [(NSString *)v9 UTF8String], 0);
      v10 = objc_opt_self();
      MethodImplementation = class_getMethodImplementation(v10, sel_invalidate);

      class_addMethod(ClassPair, sel_invalidate, MethodImplementation, "@:");
      v12 = &unk_1F3DDA9C8;
      class_addProtocol(ClassPair, v12);
      if (!IsReduceMotionEnabled)
      {
        Class = object_getClass(ClassPair);
        v14 = objc_opt_self();
        v15 = object_getClass(v14);

        v16 = class_getMethodImplementation(v15, sel_contentContainerViewClass);
        class_addMethod(Class, sel_contentContainerViewClass, v16, "@@:");
        v17 = class_getMethodImplementation(v15, sel_layerClass);
        class_addMethod(Class, sel_layerClass, v17, "@@:");
      }

      objc_registerClassPair(ClassPair);
    }
  }

  return ClassPair;
}

- (void)configureBorrowingIconImageViewFromIconView:(id)view
{
  viewCopy = view;
  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SBIconView configureBorrowingIconImageViewFromIconView:];
  }

  v6 = [viewCopy borrowIconImageViewWithOptions:1];
  [(SBIconView *)self setBorrowingAssertion:v6];
  customIconImageViewController = [viewCopy customIconImageViewController];
  parentViewController = [customIconImageViewController parentViewController];
  [parentViewController bs_removeChildViewController:customIconImageViewController];

  [(SBIconView *)self setOverrideCustomIconImageViewController:customIconImageViewController];
  [viewCopy configureMatchingIconView:self];
  accessibilityTintColor = [viewCopy accessibilityTintColor];
  [(SBIconView *)self setAccessibilityTintColor:accessibilityTintColor];
}

- (void)setSharesIconTintColorWithSpringBoard:(BOOL)board
{
  v4 = *(self + 559);
  if ((((v4 & 4) == 0) ^ board))
  {
    return;
  }

  boardCopy = board;
  if (board)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  *(self + 559) = v4 & 0xFB | v7;
  springBoardIconStyleObservation = [(SBIconView *)self springBoardIconStyleObservation];
  v9 = springBoardIconStyleObservation;
  v12 = springBoardIconStyleObservation;
  if (boardCopy)
  {
    springBoardIconStyleObservation = SBHIsRunningInSpringBoard(springBoardIconStyleObservation);
    v9 = v12;
    if ((springBoardIconStyleObservation & 1) == 0)
    {
      homeScreenService = [objc_opt_class() homeScreenService];
      v11 = [homeScreenService addHomeScreenIconStyleObserver:self];
      [(SBIconView *)self setSpringBoardIconStyleObservation:v11];

      goto LABEL_10;
    }
  }

  if (v9)
  {
    [v9 invalidate];
    springBoardIconStyleObservation = [(SBIconView *)self setSpringBoardIconStyleObservation:0];
LABEL_10:
    v9 = v12;
  }

  MEMORY[0x1EEE66BB8](springBoardIconStyleObservation, v9);
}

- (void)homeScreenService:(id)service homeScreenIconStyleConfigurationDidChange:(id)change
{
  sbh_iconImageStyleConfiguration = [change sbh_iconImageStyleConfiguration];
  v4 = sbh_iconImageStyleConfiguration;
  BSDispatchMain();
}

void __74__SBIconView_homeScreenService_homeScreenIconStyleConfigurationDidChange___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) traitOverrides];
  v2 = *(a1 + 40);
  v3 = objc_opt_self();
  [v4 setObject:v2 forTrait:v3];
}

+ (BOOL)showsPopovers
{
  v2 = +[SBHHomeScreenDomain rootSettings];
  showPopOvers = [v2 showPopOvers];

  return showPopOvers;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  v5 = [(SBIconView *)self contextMenuConfigurationAtLocation:interaction, location.x, location.y];
  if (v5)
  {
    contextMenuInteractionConfigurations = self->_contextMenuInteractionConfigurations;
    if (!contextMenuInteractionConfigurations)
    {
      v7 = [MEMORY[0x1E696AC70] hashTableWithOptions:0];
      v8 = self->_contextMenuInteractionConfigurations;
      self->_contextMenuInteractionConfigurations = v7;

      contextMenuInteractionConfigurations = self->_contextMenuInteractionConfigurations;
    }

    [(NSHashTable *)contextMenuInteractionConfigurations addObject:v5];
    if (!self->_disallowGlassGroupingForContextMenuAssertion)
    {
      v9 = [(SBIconView *)self disallowGlassGroupingForReason:@"context menu"];
      disallowGlassGroupingForContextMenuAssertion = self->_disallowGlassGroupingForContextMenuAssertion;
      self->_disallowGlassGroupingForContextMenuAssertion = v9;
    }
  }

  return v5;
}

- (id)contextMenuConfigurationAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  contextMenuDelegate = [(SBIconView *)self contextMenuDelegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [contextMenuDelegate contextMenuConfigurationForIconView:self atLocation:{x, y}];
  }

  else
  {
    [(SBIconView *)self setLastContextMenuInteractionFailedToLoad:1];
    v7 = 0;
  }

  return v7;
}

- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration
{
  v26[1] = *MEMORY[0x1E69E9840];
  defaultStyle = [MEMORY[0x1E69DD440] defaultStyle];
  [defaultStyle setHasInteractivePreview:1];
  [defaultStyle setPreferredLayout:1];
  [defaultStyle setPreventPreviewRasterization:1];
  contextMenuDelegate = [(SBIconView *)self contextMenuDelegate];
  if (objc_opt_respondsToSelector())
  {
    [defaultStyle setPreviewOverlapsMenu:{objc_msgSend(contextMenuDelegate, "shouldPreviewOverlapMenuForIconView:", self)}];
  }

  window = [(SBIconView *)self window];
  [window safeAreaInsets];
  v9 = v8;
  v11 = v10;

  v12 = 8.0;
  if (v9 < 8.0)
  {
    v9 = 8.0;
  }

  if (v11 < 8.0)
  {
    v11 = 8.0;
  }

  if (objc_opt_respondsToSelector())
  {
    [(SBIconViewCustomImageViewControlling *)self->_customIconImageViewController minimumPreferredEdgeInsetsForContextMenu];
    UIEdgeInsetsMax();
    v9 = v14;
    v11 = v15;
    v12 = v16;
  }

  else
  {
    v13 = 8.0;
  }

  [defaultStyle setPreferredEdgeInsets:{v9, v13, v11, v12}];
  if (objc_opt_respondsToSelector())
  {
    v17 = [contextMenuDelegate containerViewForPresentingContextMenuForIconView:self];
    view = 0;
  }

  else
  {
    window2 = [(SBIconView *)self window];
    rootViewController = [window2 rootViewController];
    view = [rootViewController view];
  }

  [defaultStyle setContainerView:view];
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    v21 = MEMORY[0x1E69DC898];
    v22 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.8];
    v23 = [v21 colorEffectColor:v22];
    v26[0] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    [defaultStyle setPreferredBackgroundEffects:v24];
  }

  if (objc_opt_respondsToSelector())
  {
    [contextMenuDelegate iconView:self willUseContextMenuStyle:defaultStyle];
  }

  return defaultStyle;
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  identifierCopy = identifier;
  contextMenuDelegate = [(SBIconView *)self contextMenuDelegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = [contextMenuDelegate contextMenuInteraction:interactionCopy configuration:configurationCopy highlightPreviewForItemWithIdentifier:identifierCopy forIconView:self];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration dismissalPreviewForItemWithIdentifier:(id)identifier
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  identifierCopy = identifier;
  contextMenuDelegate = [(SBIconView *)self contextMenuDelegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = [contextMenuDelegate contextMenuInteraction:interactionCopy configuration:configurationCopy dismissalPreviewForItemWithIdentifier:identifierCopy forIconView:self];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_contextMenuInteraction:(id)interaction previewForIconWithConfigurationOptions:(unint64_t)options highlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v28 = *MEMORY[0x1E69E9840];
  view = [interaction view];

  if (view != self)
  {
    v8 = SBLogIcon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SBIconView _contextMenuInteraction:previewForIconWithConfigurationOptions:highlighted:];
    }

LABEL_4:
    v9 = 0;
    goto LABEL_19;
  }

  window = [(SBIconView *)self window];

  if (!window)
  {
    v8 = SBLogIcon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SBIconView _contextMenuInteraction:previewForIconWithConfigurationOptions:highlighted:];
    }

    goto LABEL_4;
  }

  [(SBIconView *)self setHighlighted:highlightedCopy];
  v8 = objc_alloc_init(MEMORY[0x1E69DCE28]);
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v8 setBackgroundColor:clearColor];

  [(SBIconView *)self iconImageCenter];
  v13 = v12;
  v15 = v14;
  selfCopy = self;
  imageContainerView = [(SBIconView *)selfCopy imageContainerView];
  v18 = SBLogIcon();
  v19 = v18;
  if (imageContainerView)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier = selfCopy->_logIdentifier;
      icon = selfCopy->_icon;
      LODWORD(v26[0]) = 138544130;
      *(v26 + 4) = logIdentifier;
      WORD2(v26[1]) = 2112;
      *(&v26[1] + 6) = icon;
      HIWORD(v26[2]) = 2112;
      v26[3] = imageContainerView;
      LOWORD(v27) = 2112;
      *(&v27 + 2) = selfCopy;
      _os_log_impl(&dword_1BEB18000, v19, OS_LOG_TYPE_DEFAULT, "<%{public}@> Configuring preview for icon '%@' w/ currentImageView '%@' contentContainerView '%@'", v26, 0x2Au);
    }

    v22 = objc_alloc(MEMORY[0x1E69DCE38]);
    contentContainerView = [(SBIconView *)selfCopy contentContainerView];
    v24 = contentContainerView;
    if (contentContainerView)
    {
      [contentContainerView transform];
    }

    else
    {
      v27 = 0u;
      memset(v26, 0, sizeof(v26));
    }

    v19 = [v22 initWithContainer:selfCopy center:v26 transform:{v13, v15}];

    v9 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:imageContainerView parameters:v8 target:v19];
    [v9 set_springboardPlatterStyle:1];
  }

  else
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SBIconView _contextMenuInteraction:previewForIconWithConfigurationOptions:highlighted:];
    }

    v9 = 0;
  }

LABEL_19:

  return v9;
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  animatorCopy = animator;
  contextMenuDelegate = [(SBIconView *)self contextMenuDelegate];
  if (objc_opt_respondsToSelector())
  {
    [contextMenuDelegate contextMenuInteraction:interactionCopy willDisplayMenuForConfiguration:configurationCopy animator:animatorCopy forIconView:self];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__SBIconView_contextMenuInteraction_willDisplayMenuForConfiguration_animator___block_invoke;
  aBlock[3] = &unk_1E8088C90;
  aBlock[4] = self;
  v12 = _Block_copy(aBlock);
  [(SBIconView *)self _contextMenuConfigurationWillPresent:configurationCopy forInteraction:interactionCopy];
  if (animatorCopy)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __78__SBIconView_contextMenuInteraction_willDisplayMenuForConfiguration_animator___block_invoke_2;
    v15[3] = &unk_1E8088DD8;
    v15[4] = self;
    v16 = interactionCopy;
    v17 = v12;
    [animatorCopy addAnimations:v15];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __78__SBIconView_contextMenuInteraction_willDisplayMenuForConfiguration_animator___block_invoke_3;
    v13[3] = &unk_1E8088F18;
    v13[4] = self;
    v14 = configurationCopy;
    [animatorCopy addCompletion:v13];
  }

  else
  {
    [(SBIconView *)self setHighlighted:0];
    if ([interactionCopy menuAppearance] != 2)
    {
      v12[2](v12);
    }

    [(SBIconView *)self _contextMenuConfigurationDidPresent:configurationCopy];
  }
}

uint64_t __78__SBIconView_contextMenuInteraction_willDisplayMenuForConfiguration_animator___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 effectiveIconLabelAlpha];

  return [v1 _applyIconLabelAlpha:?];
}

uint64_t __78__SBIconView_contextMenuInteraction_willDisplayMenuForConfiguration_animator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setHighlighted:0];
  result = [*(a1 + 40) menuAppearance];
  if (result != 2)
  {
    v3 = MEMORY[0x1E69DD250];
    v4 = *(a1 + 48);

    return [v3 animateWithDuration:327680 delay:v4 options:0 animations:0.2 completion:0.0];
  }

  return result;
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  animatorCopy = animator;
  contextMenuDelegate = [(SBIconView *)self contextMenuDelegate];
  if (objc_opt_respondsToSelector())
  {
    [contextMenuDelegate contextMenuInteraction:interactionCopy willEndForConfiguration:configurationCopy animator:animatorCopy forIconView:self];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__SBIconView_contextMenuInteraction_willEndForConfiguration_animator___block_invoke;
  aBlock[3] = &unk_1E8088C90;
  aBlock[4] = self;
  v12 = _Block_copy(aBlock);
  [(SBIconView *)self _contextMenuConfigurationWillDismiss:configurationCopy];
  if (animatorCopy)
  {
    objc_initWeak(&location, self);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"SBIconViewWillAnimateContextMenuNotification" object:self userInfo:0];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __70__SBIconView_contextMenuInteraction_willEndForConfiguration_animator___block_invoke_2;
    v17[3] = &unk_1E8089600;
    v18 = v12;
    [animatorCopy addAnimations:v17];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __70__SBIconView_contextMenuInteraction_willEndForConfiguration_animator___block_invoke_3;
    v14[3] = &unk_1E808C628;
    objc_copyWeak(&v16, &location);
    v15 = configurationCopy;
    [animatorCopy addCompletion:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v12[2](v12);
    [(SBIconView *)self _contextMenuConfigurationDidDismiss:configurationCopy];
  }
}

uint64_t __70__SBIconView_contextMenuInteraction_willEndForConfiguration_animator___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 effectiveIconLabelAlpha];

  return [v1 _applyIconLabelAlpha:?];
}

void __70__SBIconView_contextMenuInteraction_willEndForConfiguration_animator___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 postNotificationName:@"SBIconViewDidAnimateContextMenuNotification" object:v4 userInfo:0];

    [v4 _contextMenuConfigurationDidDismiss:*(a1 + 32)];
    WeakRetained = v4;
  }
}

- (void)_contextMenuConfigurationWillPresent:(id)present forInteraction:(id)interaction
{
  v25 = *MEMORY[0x1E69E9840];
  presentCopy = present;
  interactionCopy = interaction;
  identifier = [presentCopy identifier];
  v9 = SBLogIconContextMenu();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v8Identifier = [identifier identifier];
    v17 = 136315906;
    v18 = "[SBIconView _contextMenuConfigurationWillPresent:forInteraction:]";
    v19 = 1024;
    v20 = 2875;
    v21 = 2112;
    v22 = v8Identifier;
    v23 = 2112;
    v24 = presentCopy;
    _os_log_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d %@ (%@)", &v17, 0x26u);
  }

  [identifier setContextMenuInteraction:interactionCopy];
  [(SBIconView *)self _updateAllComponentAlphas];
  if (!self->_iconContextMenuActivity)
  {
    v11 = _os_activity_create(&dword_1BEB18000, "Icon Context Menu", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    iconContextMenuActivity = self->_iconContextMenuActivity;
    self->_iconContextMenuActivity = v11;

    os_activity_scope_enter(self->_iconContextMenuActivity, &self->_iconContextMenuActivityState);
  }

  [(SBIconView *)self _toggleContentContainerViewIfNecessary];
  if (!self->_performAfterContextMenuBlocks)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    performAfterContextMenuBlocks = self->_performAfterContextMenuBlocks;
    self->_performAfterContextMenuBlocks = v13;
  }

  contextMenuDelegate = [(SBIconView *)self contextMenuDelegate];
  if (objc_opt_respondsToSelector())
  {
    [contextMenuDelegate iconViewContextMenuPresentationWillBegin:self];
  }

  [(SBIconView *)self _acquireHomeButtonPressConsumingAssertionIfNecessary];
  [(SBIconView *)self beginPrefetchingDisplayedIconLayerForReason:@"icon view context menu"];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"SBIconViewWillPresentContextMenuNotification" object:self];

  if (objc_opt_respondsToSelector())
  {
    [(SBIconViewCustomImageViewControlling *)self->_customIconImageViewController setShowingContextMenu:1];
  }
}

- (void)_contextMenuConfigurationDidPresent:(id)present
{
  v17 = *MEMORY[0x1E69E9840];
  presentCopy = present;
  identifier = [presentCopy identifier];
  v6 = SBLogIconContextMenu();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v5Identifier = [identifier identifier];
    v9 = 136315906;
    v10 = "[SBIconView _contextMenuConfigurationDidPresent:]";
    v11 = 1024;
    v12 = 2912;
    v13 = 2112;
    v14 = v5Identifier;
    v15 = 2112;
    v16 = presentCopy;
    _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d %@ (%@)", &v9, 0x26u);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"SBIconViewDidPresentContextMenuNotification" object:self];
}

- (void)_contextMenuConfigurationWillDismiss:(id)dismiss
{
  v22 = *MEMORY[0x1E69E9840];
  dismissCopy = dismiss;
  identifier = [dismissCopy identifier];
  v6 = SBLogIconContextMenu();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v5Identifier = [identifier identifier];
    v14 = 136315906;
    v15 = "[SBIconView _contextMenuConfigurationWillDismiss:]";
    v16 = 1024;
    v17 = 2921;
    v18 = 2112;
    v19 = v5Identifier;
    v20 = 2112;
    v21 = dismissCopy;
    _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d %@ (%@)", &v14, 0x26u);
  }

  dismissingContextMenuInteractionConfigurations = self->_dismissingContextMenuInteractionConfigurations;
  if (!dismissingContextMenuInteractionConfigurations)
  {
    v9 = [MEMORY[0x1E696AC70] hashTableWithOptions:5];
    v10 = self->_dismissingContextMenuInteractionConfigurations;
    self->_dismissingContextMenuInteractionConfigurations = v9;

    dismissingContextMenuInteractionConfigurations = self->_dismissingContextMenuInteractionConfigurations;
  }

  [(NSHashTable *)dismissingContextMenuInteractionConfigurations addObject:dismissCopy];
  contextMenuDelegate = [(SBIconView *)self contextMenuDelegate];
  if (objc_opt_respondsToSelector())
  {
    [contextMenuDelegate iconViewContextMenuPresentationWillFinish:self];
  }

  [(SBIconView *)self _invalidateHomeButtonPressConsumingAssertion];
  contextMenuNotificationUserInfo = [identifier contextMenuNotificationUserInfo];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"SBIconViewWillDismissContextMenuNotification" object:self userInfo:contextMenuNotificationUserInfo];

  if (objc_opt_respondsToSelector())
  {
    [(SBIconViewCustomImageViewControlling *)self->_customIconImageViewController setShowingContextMenu:0];
  }
}

- (void)_contextMenuConfigurationDidDismiss:(id)dismiss
{
  v40 = *MEMORY[0x1E69E9840];
  dismissCopy = dismiss;
  identifier = [dismissCopy identifier];
  v6 = SBLogIconContextMenu();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v5Identifier = [identifier identifier];
    *buf = 136315906;
    v33 = "[SBIconView _contextMenuConfigurationDidDismiss:]";
    v34 = 1024;
    v35 = 2947;
    v36 = 2112;
    v37 = v5Identifier;
    v38 = 2112;
    v39 = dismissCopy;
    _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d %@ (%@)", buf, 0x26u);
  }

  contextMenuDelegate = [(SBIconView *)self contextMenuDelegate];
  if (objc_opt_respondsToSelector())
  {
    [contextMenuDelegate iconViewContextMenuPresentationDidFinish:self];
  }

  contextMenuNotificationUserInfo = [identifier contextMenuNotificationUserInfo];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"SBIconViewDidDismissContextMenuNotification" object:self userInfo:contextMenuNotificationUserInfo];

  [(NSHashTable *)self->_contextMenuInteractionConfigurations removeObject:dismissCopy];
  [(NSHashTable *)self->_dismissingContextMenuInteractionConfigurations removeObject:dismissCopy];
  [(SBIconView *)self _toggleContentContainerViewIfNecessary];
  [(SBIconView *)self _updateAllComponentAlphas];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __50__SBIconView__contextMenuConfigurationDidDismiss___block_invoke;
  v30[3] = &unk_1E8088C90;
  v30[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v30 animations:0.2];
  [(SBIconView *)self endPrefetchingDisplayedIconLayerForReason:@"icon view context menu"];
  if (![(NSHashTable *)self->_contextMenuInteractionConfigurations count])
  {
    v11 = SBLogIconContextMenu();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v5Identifier2 = [identifier identifier];
      *buf = 136315906;
      v33 = "[SBIconView _contextMenuConfigurationDidDismiss:]";
      v34 = 1024;
      v35 = 2971;
      v36 = 2112;
      v37 = v5Identifier2;
      v38 = 2112;
      v39 = dismissCopy;
      _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEFAULT, "%s:%d %@ (%@) -- Flushing any performAfterContextMenuBlocks; resetting state.", buf, 0x26u);
    }

    v13 = [(NSMutableArray *)self->_performAfterContextMenuBlocks copy];
    v14 = v13;
    v15 = MEMORY[0x1E695E0F0];
    if (v13)
    {
      v15 = v13;
    }

    v16 = v15;

    performAfterContextMenuBlocks = self->_performAfterContextMenuBlocks;
    self->_performAfterContextMenuBlocks = 0;

    contextMenuInteractionConfigurations = self->_contextMenuInteractionConfigurations;
    self->_contextMenuInteractionConfigurations = 0;

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v19 = v16;
    v20 = [v19 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v27;
      do
      {
        v23 = 0;
        do
        {
          if (*v27 != v22)
          {
            objc_enumerationMutation(v19);
          }

          (*(*(*(&v26 + 1) + 8 * v23) + 16))(*(*(&v26 + 1) + 8 * v23));
          ++v23;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v21);
    }

    if (self->_iconContextMenuActivity)
    {
      os_activity_scope_leave(&self->_iconContextMenuActivityState);
      iconContextMenuActivity = self->_iconContextMenuActivity;
      self->_iconContextMenuActivity = 0;
    }

    [(BSInvalidatable *)self->_disallowGlassGroupingForContextMenuAssertion invalidate];
    disallowGlassGroupingForContextMenuAssertion = self->_disallowGlassGroupingForContextMenuAssertion;
    self->_disallowGlassGroupingForContextMenuAssertion = 0;
  }
}

- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  animatorCopy = animator;
  contextMenuDelegate = [(SBIconView *)self contextMenuDelegate];
  if (objc_opt_respondsToSelector())
  {
    [contextMenuDelegate contextMenuInteraction:interactionCopy willPerformPreviewActionForMenuWithConfiguration:configurationCopy animator:animatorCopy forIconView:self];
  }

  [animatorCopy setPreferredCommitStyle:0];
  if ([objc_opt_class() supportsTapGesture])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __95__SBIconView_contextMenuInteraction_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke;
    v12[3] = &unk_1E8088C90;
    v12[4] = self;
    [animatorCopy addCompletion:v12];
  }
}

- (NSURL)applicationBundleURLForShortcuts
{
  icon = [(SBIconView *)self icon];
  contextMenuDelegate = [(SBIconView *)self contextMenuDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([contextMenuDelegate applicationBundleURLForContextMenuWithIconView:self], (bundleURL = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ([icon isApplicationIcon] && (objc_msgSend(icon, "isTimedOut") & 1) == 0)
    {
      application = [icon application];
      bundleURL = [application bundleURL];
    }

    else
    {
      bundleURL = 0;
    }
  }

  return bundleURL;
}

- (NSString)applicationBundleIdentifierForShortcuts
{
  applicationBundleURLForShortcuts = [(SBIconView *)self applicationBundleURLForShortcuts];

  if (applicationBundleURLForShortcuts)
  {
    icon = [(SBIconView *)self icon];
    v5 = objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      applicationBundleID = [icon applicationBundleID];
    }

    else
    {
      applicationBundleID = 0;
    }
  }

  else
  {
    applicationBundleID = 0;
  }

  return applicationBundleID;
}

- (void)dismissContextMenuWithCompletion:(id)completion
{
  completionCopy = completion;
  isContextMenuInteractionActive = [(SBIconView *)self isContextMenuInteractionActive];
  if (!isContextMenuInteractionActive)
  {
    v8 = completionCopy;
    if (!completionCopy)
    {
      goto LABEL_9;
    }

    isContextMenuInteractionActive = completionCopy[2](completionCopy);
    goto LABEL_8;
  }

  if (completionCopy)
  {
    performAfterContextMenuBlocks = self->_performAfterContextMenuBlocks;
    v6 = [completionCopy copy];
    v7 = _Block_copy(v6);
    [(NSMutableArray *)performAfterContextMenuBlocks addObject:v7];
  }

  isContextMenuInteractionActive = [(SBIconView *)self isDragging];
  v8 = completionCopy;
  if ((isContextMenuInteractionActive & 1) == 0)
  {
    contextMenuInteraction = [(SBIconView *)self contextMenuInteraction];
    [contextMenuInteraction dismissMenu];

LABEL_8:
    v8 = completionCopy;
  }

LABEL_9:

  MEMORY[0x1EEE66BB8](isContextMenuInteractionActive, v8);
}

- (void)setFetchedApplicationShortcutItems:(id)items
{
  itemsCopy = items;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [itemsCopy copy];
    fetchedApplicationShortcutItems = self->_fetchedApplicationShortcutItems;
    self->_fetchedApplicationShortcutItems = v4;
  }
}

- (id)_multitaskingAppShortcutService
{
  if (_multitaskingAppShortcutService_onceToken != -1)
  {
    [SBIconView _multitaskingAppShortcutService];
  }

  v3 = _multitaskingAppShortcutService_service;

  return v3;
}

uint64_t __45__SBIconView__multitaskingAppShortcutService__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69D4270]);
  v1 = _multitaskingAppShortcutService_service;
  _multitaskingAppShortcutService_service = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)_startTrackingSupportedMultitaskingShortcutActionsIfAppropriateWithOldIcon:(id)icon
{
  iconCopy = icon;
  icon = [(SBIconView *)self icon];
  v6 = __sb__runningInSpringBoard();
  v7 = v6;
  if (v6)
  {
    userInterfaceIdiom = SBFEffectiveDeviceClass();
    if (userInterfaceIdiom != 2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];
    if (userInterfaceIdiom != 1)
    {
LABEL_13:

      goto LABEL_14;
    }
  }

  v9 = (SBHIsRunningInSpringBoard(userInterfaceIdiom) ^ 1) & __SBIconViewOwnerWantsMultitaskingKeyboardShortcuts;
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if ((v9 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if ([icon isApplicationIcon])
  {
    applicationBundleID = [icon applicationBundleID];
    _multitaskingAppShortcutService = [(SBIconView *)self _multitaskingAppShortcutService];
    [_multitaskingAppShortcutService startObservingSupportedShortcutsForBundleIdentifier:applicationBundleID];
  }

  if ([iconCopy isApplicationIcon])
  {
    currentDevice = [iconCopy applicationBundleID];
    _multitaskingAppShortcutService2 = [(SBIconView *)self _multitaskingAppShortcutService];
    [_multitaskingAppShortcutService2 stopObservingSupportedShortcutsForBundleIdentifier:currentDevice];

    goto LABEL_13;
  }

LABEL_14:
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2 || __SBIconViewOwnerWantsMultitaskingKeyboardShortcuts != 1)
    {
      goto LABEL_20;
    }

    goto LABEL_7;
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice userInterfaceIdiom] != 1)
  {
LABEL_19:

    goto LABEL_20;
  }

  v8 = __SBIconViewOwnerWantsMultitaskingKeyboardShortcuts;

  if (v8)
  {
LABEL_7:
    currentDevice = [(SBIconView *)self icon];
    if ((SBHIsRunningInSpringBoard(currentDevice) & 1) != 0 || ![currentDevice isApplicationIcon] || (-[SBIconView _multitaskingAppShortcutService](self, "_multitaskingAppShortcutService"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(currentDevice, "applicationBundleID"), v10 = objc_claimAutoreleasedReturnValue(), v11 = SBHMultitaskingApplicationSupportedShortcutActionMaskFromSBSMask(objc_msgSend(v9, "supportedShortcutActionsForBundleIdentifier:", v10)), v10, v9, !v11))
    {
      contextMenuDelegate = [(SBIconView *)self contextMenuDelegate];
      if (objc_opt_respondsToSelector())
      {
        v11 = [contextMenuDelegate supportedMultitaskingShortcutActionsForIconView:self];
      }

      else
      {
        v11 = 0;
      }
    }

    if (sel__handleMakeFullscreenKeyShortcut_ == action)
    {
      v14 = 1;
    }

    else if (sel__handleMakeSplitLeftKeyShortcut_ == action)
    {
      v14 = 2;
    }

    else if (sel__handleMakeSplitRightKeyShortcut_ == action)
    {
      v14 = 4;
    }

    else if (sel__handleActivateAppExposeKeyShortcut_ == action)
    {
      v14 = 8;
    }

    else
    {
      if (sel__handleAddWindowToSetCommand_ != action)
      {
        goto LABEL_19;
      }

      v14 = 16;
    }

    v13 = (v11 & v14) != 0;

    goto LABEL_27;
  }

LABEL_20:
  v16.receiver = self;
  v16.super_class = SBIconView;
  v13 = [(SBIconView *)&v16 canPerformAction:action withSender:senderCopy];
LABEL_27:

  return v13;
}

- (void)_handleMakeFullscreenKeyShortcut:(id)shortcut
{
  icon = [(SBIconView *)self icon];
  if ([icon isApplicationIcon])
  {
    _multitaskingAppShortcutService = [(SBIconView *)self _multitaskingAppShortcutService];
    applicationBundleID = [icon applicationBundleID];
    [_multitaskingAppShortcutService performMultitaskingShortcutAction:0 forBundleIdentifier:applicationBundleID];
  }
}

- (void)_handleMakeSplitLeftKeyShortcut:(id)shortcut
{
  icon = [(SBIconView *)self icon];
  if ([icon isApplicationIcon])
  {
    _multitaskingAppShortcutService = [(SBIconView *)self _multitaskingAppShortcutService];
    applicationBundleID = [icon applicationBundleID];
    [_multitaskingAppShortcutService performMultitaskingShortcutAction:1 forBundleIdentifier:applicationBundleID];
  }
}

- (void)_handleMakeSplitRightKeyShortcut:(id)shortcut
{
  icon = [(SBIconView *)self icon];
  if ([icon isApplicationIcon])
  {
    _multitaskingAppShortcutService = [(SBIconView *)self _multitaskingAppShortcutService];
    applicationBundleID = [icon applicationBundleID];
    [_multitaskingAppShortcutService performMultitaskingShortcutAction:2 forBundleIdentifier:applicationBundleID];
  }
}

- (void)_handleActivateAppExposeKeyShortcut:(id)shortcut
{
  icon = [(SBIconView *)self icon];
  if ([icon isApplicationIcon])
  {
    _multitaskingAppShortcutService = [(SBIconView *)self _multitaskingAppShortcutService];
    applicationBundleID = [icon applicationBundleID];
    [_multitaskingAppShortcutService performMultitaskingShortcutAction:3 forBundleIdentifier:applicationBundleID];
  }
}

- (void)_handleAddWindowToSetCommand:(id)command
{
  icon = [(SBIconView *)self icon];
  if ([icon isApplicationIcon])
  {
    _multitaskingAppShortcutService = [(SBIconView *)self _multitaskingAppShortcutService];
    applicationBundleID = [icon applicationBundleID];
    [_multitaskingAppShortcutService performMultitaskingShortcutAction:4 forBundleIdentifier:applicationBundleID];
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    observers = self->_observers;
    v9 = v5;
    if (!observers)
    {
      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v8 = self->_observers;
      self->_observers = weakObjectsHashTable;

      observers = self->_observers;
    }

    observerCopy = [(NSHashTable *)observers addObject:v9];
    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](observerCopy, v5);
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    [(NSHashTable *)self->_observers removeObject:?];
  }
}

+ (double)labelAccessoryViewAdditionalRightMarginForType:(int64_t)type
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];

  if (preferredContentSizeCategory)
  {
    v6 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC70]);
    v7 = 2.5;
    if (v6 == NSOrderedDescending)
    {
      v7 = 0.0;
    }
  }

  else
  {
    v7 = 2.5;
  }

  if ((type - 1) >= 2)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (double)labelAccessoryTotalWidth
{
  [(SBIconLabelAccessoryView *)self->_labelAccessoryView intrinsicContentSize];
  v3 = v2;
  [objc_opt_class() labelAccessoryViewBaseRightMargin];
  return v3 + v4;
}

+ (Class)defaultViewClassForLabelAccessoryType:(int64_t)type
{
  if ((type - 1) > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_opt_class();
  }

  return v4;
}

+ (CGSize)defaultIconViewSizeForIconImageSize:(CGSize)size configurationOptions:(unint64_t)options
{
  height = size.height;
  width = size.width;
  if ((options & 2) == 0)
  {
    [self _labelHeight];
    height = height + v6;
  }

  v7 = width;
  v8 = height;
  result.height = v8;
  result.width = v7;
  return result;
}

+ (CGPoint)defaultIconImageCenterForIconImageSize:(CGSize)size
{
  UIRectGetCenter();
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGRect)_frameForVisibleImage
{
  x = self->_visibleImageRect.origin.x;
  y = self->_visibleImageRect.origin.y;
  width = self->_visibleImageRect.size.width;
  height = self->_visibleImageRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)_frameForLabelAccessory
{
  imageParameters = [(SBIconLabelView *)self->_labelView imageParameters];
  _labelImageMetrics = [(SBIconView *)self _labelImageMetrics];
  [(SBIconView *)self _frameForLabel];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(SBIconView *)self _frameForImageView];
  [(SBIconView *)self _frameForLabelAccessoryViewWithLabelFrame:_labelImageMetrics metrics:imageParameters labelImageParameters:v6 imageFrame:v8, v10, v12, v13, v14, v15, v16];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = v18;
  v26 = v20;
  v27 = v22;
  v28 = v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)_frameForLabelAccessoryViewWithLabelFrame:(CGRect)frame metrics:(id)metrics labelImageParameters:(id)parameters imageFrame:(CGRect)imageFrame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  parametersCopy = parameters;
  metricsCopy = metrics;
  hasBaseline = [metricsCopy hasBaseline];
  [metricsCopy baselineOffsetFromBottom];
  [metricsCopy alignmentRectInsets];
  v16 = v15;
  v18 = v17;
  v48 = v20;
  v49 = v19;

  [parametersCopy maxSize];
  v22 = v21;

  v52 = x;
  v53 = width;
  if (v22 > 0.0)
  {
    v56.origin.x = x;
    v56.origin.y = y;
    v56.size.width = width;
    v56.size.height = height;
    CGRectGetWidth(v56);
  }

  v23 = 0.0;
  labelAccessoryView = self->_labelAccessoryView;
  [(SBIconView *)self bounds];
  [(SBIconLabelAccessoryView *)labelAccessoryView sizeThatFits:v25, v26];
  v54 = v28;
  v55 = v27;
  [objc_opt_class() labelAccessoryViewBaseRightMargin];
  [objc_opt_class() labelAccessoryViewAdditionalRightMarginForType:self->_displayedLabelAccessoryType];
  hasBaseline2 = [(SBIconLabelAccessoryView *)self->_labelAccessoryView hasBaseline];
  if (hasBaseline2)
  {
    [(SBIconLabelAccessoryView *)self->_labelAccessoryView baselineOffsetFromBottom];
    v23 = v30;
  }

  traitCollection = [(SBIconView *)self traitCollection];
  [traitCollection displayScale];

  if ((*(self + 555) & 2) != 0)
  {
    [(SBIconView *)self bounds];
    CGRectGetMidX(v57);
    v37 = v55;
    UICeilToScale();
    v39 = v38;
    [(SBIconView *)self _labelBaselineOffsetFromImage];
    CGRectGetMaxY(imageFrame);
    v40 = v54;
    UICeilToScale();
  }

  else
  {
    v51 = y;
    userInterfaceLayoutDirection = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
    v33 = v52 + v18;
    v34 = y + v16;
    v35 = width - (v18 + v48);
    v36 = height - (v16 + v49);
    if (userInterfaceLayoutDirection == 1)
    {
      CGRectGetMaxX(*&v33);
    }

    else
    {
      CGRectGetMinX(*&v33);
    }

    v37 = v55;
    UIFloorToScale();
    v39 = v42;
    v40 = v54;
    if ((hasBaseline & hasBaseline2) != 1)
    {
      UIFloorToScale();
      v43 = v51 + v44;
      goto LABEL_14;
    }

    SBHAlignSizeInRectUsingBaseline(v55, v54, v23, v52, v51, v53, height);
    UIFloorToScale();
  }

  v43 = v41;
LABEL_14:
  v45 = v39;
  v46 = v37;
  v47 = v40;
  result.size.height = v47;
  result.size.width = v46;
  result.origin.y = v43;
  result.origin.x = v45;
  return result;
}

- (CGPoint)_centerForCloseBox
{
  if (self->_closeBox)
  {
    currentImageView = [(SBIconView *)self currentImageView];
    customIconImageViewController = self->_customIconImageViewController;
    if (!customIconImageViewController)
    {
      customIconImageViewController = self->_iconImageView;
    }

    v5 = customIconImageViewController;
    [v5 visibleBounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    contentContainerView = [(SBIconView *)self contentContainerView];
    [contentContainerView convertRect:currentImageView fromView:{v7, v9, v11, v13}];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    [(SBIconView *)self iconImageInfo];
    v24 = v23 + (v23 + 2.66666667) * -0.707106781;
    userInterfaceLayoutDirection = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];

    v26 = v16;
    v27 = v18;
    v28 = v20;
    v29 = v22;
    if (userInterfaceLayoutDirection == 1)
    {
      v30 = CGRectGetMaxX(*&v26) - v24;
    }

    else
    {
      v30 = v24 + CGRectGetMinX(*&v26);
    }

    v35.origin.x = v16;
    v35.origin.y = v18;
    v35.size.width = v20;
    v35.size.height = v22;
    v31 = v24 + CGRectGetMinY(v35);
  }

  else
  {
    v30 = *MEMORY[0x1E695EFF8];
    v31 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v32 = v30;
  v33 = v31;
  result.y = v33;
  result.x = v32;
  return result;
}

- (void)setAllIconElementsButLabelHidden:(BOOL)hidden
{
  v7 = *(self + 558);
  if (((((v7 & 0x20) == 0) ^ hidden) & 1) == 0)
  {
    v10 = v3;
    if (hidden)
    {
      v9 = 32;
    }

    else
    {
      v9 = 0;
    }

    *(self + 558) = v7 & 0xDF | v9;
    [(SBIconView *)self _updateAllComponentAlphas:v4];

    [(SBIconView *)self _updateCursorInteractionsEnabled];
  }
}

- (void)setUserVisibilityStatus:(unint64_t)status
{
  v4 = *(self + 279);
  if (((v4 >> 7) & 3) != status)
  {
    *(self + 279) = v4 & 0xFE7F | ((status & 3) << 7);
    customIconImageViewController = [(SBIconView *)self customIconImageViewController];
    if (objc_opt_respondsToSelector())
    {
      [customIconImageViewController setUserVisibilityStatus:status];
    }
  }
}

- (void)setApproximateLayoutPosition:(SBIconApproximateLayoutPosition)position
{
  vertical = position.vertical;
  horizontal = position.horizontal;
  p_approximateLayoutPosition = &self->_approximateLayoutPosition;
  if (!SBIconApproximateLayoutPositionEqualToApproximateLayoutPosition(self->_approximateLayoutPosition.horizontal, self->_approximateLayoutPosition.vertical, position.horizontal, position.vertical))
  {
    p_approximateLayoutPosition->horizontal = horizontal;
    p_approximateLayoutPosition->vertical = vertical;
    customIconImageViewController = [(SBIconView *)self customIconImageViewController];
    if (objc_opt_respondsToSelector())
    {
      [customIconImageViewController setApproximateLayoutPosition:{horizontal, vertical}];
    }
  }
}

+ (double)defaultMaxLabelWidthDeltaForContentSizeCategory:(id)category
{
  categoryCopy = category;
  v6 = categoryCopy;
  if (categoryCopy && UIContentSizeCategoryIsAccessibilityCategory(categoryCopy))
  {
    v7 = __sb__runningInSpringBoard();
    v8 = v7;
    if (v7)
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        v9 = 27.5;
        goto LABEL_24;
      }
    }

    else
    {
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      if ([currentDevice userInterfaceIdiom])
      {
        v9 = 27.5;
        goto LABEL_23;
      }
    }

    v16 = __sb__runningInSpringBoard();
    v17 = v16;
    if (v16)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen _referenceBounds];
    }

    BSSizeRoundForScale();
    v18 = 5.0;
    if (v19 >= *(MEMORY[0x1E69D4380] + 56))
    {
      v18 = 10.0;
    }

    v9 = v18 * 2.1 + 17.0;
    if (v17)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v10 = __sb__runningInSpringBoard();
  v8 = v10;
  if (!v10)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    v9 = 27.0;
    if ([currentDevice userInterfaceIdiom])
    {
      goto LABEL_23;
    }

LABEL_15:
    v11 = __sb__runningInSpringBoard();
    v12 = v11;
    if (v11)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen _referenceBounds];
    }

    BSSizeRoundForScale();
    v13 = 5.0;
    if (v14 >= *(MEMORY[0x1E69D4380] + 56))
    {
      v13 = 10.0;
    }

    v9 = v13 * 2.0 + 17.0;
    if (v12)
    {
LABEL_22:
      if (v8)
      {
        goto LABEL_24;
      }

LABEL_23:

      goto LABEL_24;
    }

LABEL_21:

    goto LABEL_22;
  }

  if (!SBFEffectiveDeviceClass())
  {
    goto LABEL_15;
  }

  v9 = 27.0;
  if (SBFEffectiveDeviceClass() == 1)
  {
    goto LABEL_15;
  }

LABEL_24:

  return v9;
}

+ (double)defaultMaxLabelHeight
{
  if (__sb__runningInSpringBoard())
  {
    v2 = SBFEffectiveDeviceClass() == 2;
  }

  else
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    v2 = [currentDevice userInterfaceIdiom] == 1;
  }

  result = 26.0;
  if (v2)
  {
    return 29.0;
  }

  return result;
}

+ (CGSize)maxLabelSizeForIconImageSize:(CGSize)size
{
  width = size.width;
  preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  [self defaultMaxLabelWidthDeltaForContentSizeCategory:preferredContentSizeCategory];
  v7 = width + v6;
  [self defaultMaxLabelHeight];
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

+ (CGSize)maxLabelSizeForIconImageSize:(CGSize)size contentSizeCategory:(id)category options:(unint64_t)options
{
  width = size.width;
  [self defaultMaxLabelWidthDeltaForContentSizeCategory:{category, options, size.width, size.height}];
  v8 = width + v7;
  [self defaultMaxLabelHeight];
  v10 = v9;
  v11 = v8;
  result.height = v10;
  result.width = v11;
  return result;
}

+ (id)labelConfigurationForListLayout:(id)layout contentSizeCategory:(id)category options:(unint64_t)options
{
  layoutCopy = layout;
  categoryCopy = category;
  if (objc_opt_respondsToSelector())
  {
    v10 = [layoutCopy labelVisualConfigurationForContentSizeCategory:categoryCopy options:options];
  }

  else
  {
    v10 = objc_alloc_init(SBHIconLabelVisualConfiguration);
    [self defaultMaxLabelHeight];
    [(SBHIconLabelVisualConfiguration *)v10 setHeight:?];
    [self defaultMaxLabelWidthDeltaForContentSizeCategory:categoryCopy];
    [(SBHIconLabelVisualConfiguration *)v10 setExtraWidth:?];
  }

  return v10;
}

+ (CGSize)maxLabelSizeForListLayout:(id)layout contentSizeCategory:(id)category options:(unint64_t)options
{
  categoryCopy = category;
  layoutCopy = layout;
  [layoutCopy iconImageInfo];
  [self maxLabelSizeForListLayout:layoutCopy iconImageSize:categoryCopy contentSizeCategory:options options:?];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

+ (CGSize)maxLabelSizeForListLayout:(id)layout iconImageSize:(CGSize)size contentSizeCategory:(id)category options:(unint64_t)options
{
  height = size.height;
  width = size.width;
  layoutCopy = layout;
  categoryCopy = category;
  v13 = [self methodForSelector:sel_maxLabelSizeForIconImageSize_];
  if (v13 == [SBIconView methodForSelector:sel_maxLabelSizeForIconImageSize_])
  {
    v18 = [self labelConfigurationForListLayout:layoutCopy contentSizeCategory:categoryCopy options:options];
    [v18 extraWidth];
    v15 = width + v19;
    [v18 height];
    v17 = v20;
  }

  else
  {
    [self maxLabelSizeForIconImageSize:{width, height}];
    v15 = v14;
    v17 = v16;
  }

  v21 = v15;
  v22 = v17;
  result.height = v22;
  result.width = v21;
  return result;
}

- (id)displayedLabelFont
{
  imageParameters = [(SBIconLabelView *)self->_labelView imageParameters];
  font = [imageParameters font];

  return font;
}

- (void)configureLabelImageParametersBuilder:(id)builder
{
  builderCopy = builder;
  icon = [(SBIconView *)self icon];
  location = [(SBIconView *)self location];
  [objc_opt_class() configureLabelImageParametersBuilder:builderCopy forIcon:icon location:location];
  [builderCopy setIconView:self];
  legibilitySettings = [(SBIconView *)self legibilitySettings];
  [builderCopy setLegibilitySettings:legibilitySettings];

  [builderCopy setLabelAccessoryType:{-[SBIconView currentLabelAccessoryType](self, "currentLabelAccessoryType")}];
  contentSizeCategory = [(SBIconView *)self contentSizeCategory];
  [builderCopy setContentSizeCategory:contentSizeCategory];
  labelFont = [(SBIconView *)self labelFont];
  if (labelFont)
  {
    [builderCopy setFont:labelFont];
  }

  if ((*(self + 553) & 0x40) != 0 && (*(self + 553) & 0x80000000) == 0)
  {
    v9 = [icon displayNameForObscuredDisabledLaunchForLocation:location];
    [builderCopy setOverrideText:v9];
  }

  iconLabelViewFactory = [(SBIconView *)self iconLabelViewFactory];
  [objc_opt_class() configureLabelImageParametersBuilder:builderCopy];
}

- (void)_updateLabelAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(SBIconView *)self _shouldShowLabel])
  {
    _labelImageParameters = [(SBIconView *)self _labelImageParameters];
    text = [_labelImageParameters text];
    v7 = [text length] != 0;
  }

  else
  {
    _labelImageParameters = 0;
    v7 = 0;
  }

  v8 = self->_labelView;
  v9 = self->_labelAccessoryView;
  v10 = v9;
  if (v7)
  {
    v28 = v9;
    [(SBIconView *)self _updateLabelAccessoryView];
    labelAccessoryView = [(SBIconView *)self _legibilitySettingsWithParameters:_labelImageParameters];
    iconLabelViewFactory = [(SBIconView *)self iconLabelViewFactory];
    contentContainerView = [(SBIconView *)self contentContainerView];
    labelView = self->_labelView;
    if (labelView)
    {
      v15 = [iconLabelViewFactory canUseIconLabelView:labelView toDisplayLabelWithSettings:labelAccessoryView imageParameters:_labelImageParameters forIconView:self];
      v16 = self->_labelView;
      if (v15)
      {
        [(SBIconLabelView *)v16 updateIconLabelWithSettings:labelAccessoryView imageParameters:_labelImageParameters];
LABEL_17:

        v10 = v28;
        goto LABEL_18;
      }

      if (v16 && !animatedCopy)
      {
        [(SBIconLabelView *)v16 removeFromSuperview];
      }
    }

    v27 = v8;
    v18 = [iconLabelViewFactory iconLabelViewWithSettings:labelAccessoryView imageParameters:_labelImageParameters forIconView:self];
    v19 = self->_labelView;
    self->_labelView = v18;

    [(SBIconLabelView *)self->_labelView setAccessibilityIdentifier:@"label-view"];
    currentImageView = [(SBIconView *)self currentImageView];
    v21 = self->_labelView;
    if (currentImageView)
    {
      [contentContainerView insertSubview:v21 belowSubview:currentImageView];
    }

    else
    {
      [contentContainerView addSubview:v21];
    }

    v8 = v27;
    goto LABEL_17;
  }

  if (!animatedCopy)
  {
    goto LABEL_19;
  }

  v17 = self->_labelView;
  self->_labelView = 0;

  labelAccessoryView = self->_labelAccessoryView;
  self->_labelAccessoryView = 0;
LABEL_18:

LABEL_19:
  [(SBIconLabelView *)self->_labelView setHidden:!v7];
  [(SBIconLabelAccessoryView *)self->_labelAccessoryView setHidden:!v7];
  [(SBIconView *)self effectiveIconLabelAlpha];
  if (animatedCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __35__SBIconView__updateLabelAnimated___block_invoke;
    aBlock[3] = &__block_descriptor_40_e61_v56__0__UIView_8__UIView_16_CGRect__CGPoint_dd__CGSize_dd__24l;
    aBlock[4] = v22;
    v23 = _Block_copy(aBlock);
    v24 = self->_labelView;
    v25 = self->_labelAccessoryView;
    v26 = v24;
    [(SBIconView *)self _frameForLabel];
    v23[2](v23, v8, v26);
    [(SBIconView *)self _frameForLabelAccessory];
    v23[2](v23, v10, v25);
  }

  else
  {
    [(SBIconView *)self _applyIconLabelAlpha:?];
  }

  [(SBIconView *)self setNeedsLayout];
}

void __35__SBIconView__updateLabelAnimated___block_invoke(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = a2;
  v14 = a3;
  v15 = v14;
  if (v14 != v13)
  {
    if (v14)
    {
      [v14 setFrame:{a4, a5, a6, a7}];
      [v15 setAlpha:*(a1 + 32)];
      [v15 scaleAndBlurForDuration:1 initiallyHidden:0 visibleAlpha:0.3 completion:*(a1 + 32)];
    }

    else if (v13)
    {
      v16 = *(a1 + 32);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __35__SBIconView__updateLabelAnimated___block_invoke_2;
      v17[3] = &unk_1E8088C90;
      v18 = v13;
      [v18 scaleAndBlurForDuration:0 initiallyHidden:v17 visibleAlpha:0.3 completion:v16];
    }
  }
}

- (id)labelImageWithParameters:(id)parameters
{
  parametersCopy = parameters;
  reuseDelegate = [(SBIconView *)self reuseDelegate];
  if (objc_opt_respondsToSelector())
  {
    [reuseDelegate iconView:self labelImageWithParameters:parametersCopy];
  }

  else
  {
    [SBIconLabelImage imageWithParameters:parametersCopy];
  }
  v6 = ;

  return v6;
}

- (id)labelContentWithParameters:(id)parameters
{
  parametersCopy = parameters;
  reuseDelegate = [(SBIconView *)self reuseDelegate];
  if (objc_opt_respondsToSelector())
  {
    [reuseDelegate iconView:self labelContentWithParameters:parametersCopy];
  }

  else
  {
    [SBIconLabelImage imageWithParameters:parametersCopy];
  }
  v6 = ;

  return v6;
}

- (void)setLabelStyle:(int64_t)style
{
  v4 = *(self + 558);
  if ((8 * v4) >> 6 != style)
  {
    *(self + 558) = v4 & 0xE7 | (8 * (style & 3));
    [(SBIconView *)self _toggleGroupBlendingIfNecessary];

    [(SBIconView *)self _updateLabel];
  }
}

- (void)setDisplaysIconStatusInLabel:(BOOL)label
{
  v3 = *(self + 558);
  if (((((v3 & 0x40) == 0) ^ label) & 1) == 0)
  {
    if (label)
    {
      v4 = 64;
    }

    else
    {
      v4 = 0;
    }

    *(self + 558) = v3 & 0xBF | v4;
    [(SBIconView *)self _updateLabel];
  }
}

- (double)lastLineBaseline
{
  _labelImageMetrics = [(SBIconView *)self _labelImageMetrics];
  [(SBIconView *)self _frameForLabel];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [_labelImageMetrics baselineOffsetFromBottom];
  v13 = v12;
  v16.origin.x = v5;
  v16.origin.y = v7;
  v16.size.width = v9;
  v16.size.height = v11;
  v14 = CGRectGetMaxY(v16) - v13;

  return v14;
}

- (double)baselineOffsetFromBottom
{
  [(SBIconView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SBIconView *)self lastLineBaseline];
  v12 = v11;
  v14.origin.x = v4;
  v14.origin.y = v6;
  v14.size.width = v8;
  v14.size.height = v10;
  return CGRectGetMaxY(v14) - v12;
}

- (void)setIconLabelViewFactory:(id)factory
{
  factoryCopy = factory;
  if (self->_iconLabelViewFactory != factoryCopy)
  {
    v6 = factoryCopy;
    objc_storeStrong(&self->_iconLabelViewFactory, factory);
    [(SBIconView *)self _updateLabel];
    factoryCopy = v6;
  }
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (![(SBHLegibilitySettings *)self->_legibilitySettings isEqual:settingsCopy])
  {
    if (settingsCopy)
    {
      [SBHLegibilitySettings legibilitySettingsForLegibilitySettings:settingsCopy];
    }

    else
    {
      [objc_opt_class() defaultLegibilitySettings];
    }
    v4 = ;
    legibilitySettings = self->_legibilitySettings;
    self->_legibilitySettings = v4;

    [(SBIconView *)self maxLabelSize];
    v7 = v6;
    v9 = v8;
    v10 = objc_opt_class();
    contentSizeCategory = [(SBIconView *)self contentSizeCategory];
    [v10 labelMaximumHeightForContentSizeCategory:contentSizeCategory];
    v13 = v12;

    _screen = [(SBIconView *)self _screen];

    if (_screen)
    {
      if (v9 < v13)
      {
        v9 = v13;
      }

      iconLabelViewFactory = [(SBIconView *)self iconLabelViewFactory];
      v16 = self->_legibilitySettings;
      _screen2 = [(SBIconView *)self _screen];
      [_screen2 scale];
      [iconLabelViewFactory prewarmForSettings:v16 maxSize:v7 minSize:v9 scale:{10.0, v9, v18}];
    }

    style = [(SBHLegibilitySettings *)self->_legibilitySettings style];
    materialView = [(SBHomeScreenButton *)self->_closeBox materialView];
    [materialView setLegibilityStyle:style];

    [(SBHomeScreenButton *)self->_closeBox setLegibilitySettings:self->_legibilitySettings];
    [(SBHIconResizeHandle *)self->_resizeHandle setDarkStyle:style == 2];
    labelAccessoryView = self->_labelAccessoryView;
    v22 = self->_legibilitySettings;
    labelFont = [(SBIconView *)self labelFont];
    [(SBIconLabelAccessoryView *)labelAccessoryView updateWithLegibilitySettings:v22 labelFont:labelFont];

    if (objc_opt_respondsToSelector())
    {
      [(SBIconAccessoryView *)self->_accessoryView setLegibilityStyle:style];
    }

    [(SBIconView *)self _updateLabel];
    [(SBIconView *)self layoutIfNeeded];
    [(SBIconImageView *)self->_iconImageView iconViewLegibilitySettingsDidChange];
    if (objc_opt_respondsToSelector())
    {
      [(SBIconViewCustomImageViewControlling *)self->_customIconImageViewController setLegibilitySettings:self->_legibilitySettings];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)_configureLabelAccessoryViewForType:(int64_t)type
{
  if (self->_displayedLabelAccessoryType != type)
  {
    self->_displayedLabelAccessoryType = type;
    reuseDelegate = [(SBIconView *)self reuseDelegate];
    if (self->_labelAccessoryView)
    {
      if (objc_opt_respondsToSelector())
      {
        [reuseDelegate iconView:self willRemoveIconLabelAccessoryView:self->_labelAccessoryView];
      }

      superview = [(SBIconLabelAccessoryView *)self->_labelAccessoryView superview];
      contentContainerView = [(SBIconView *)self contentContainerView];

      if (superview == contentContainerView)
      {
        [(SBIconLabelAccessoryView *)self->_labelAccessoryView removeFromSuperview];
      }

      labelAccessoryView = self->_labelAccessoryView;
      self->_labelAccessoryView = 0;
    }

    if (type)
    {
      if (objc_opt_respondsToSelector())
      {
        v9 = [reuseDelegate iconView:self iconLabelAccessoryViewOfType:type];
      }

      else
      {
        v9 = objc_alloc_init([objc_opt_class() defaultViewClassForLabelAccessoryType:type]);
      }

      v10 = self->_labelAccessoryView;
      self->_labelAccessoryView = v9;

      [(SBIconLabelAccessoryView *)self->_labelAccessoryView setAlpha:1.0];
      v11 = self->_labelAccessoryView;
      legibilitySettings = [(SBIconView *)self legibilitySettings];
      labelFont = [(SBIconView *)self labelFont];
      [(SBIconLabelAccessoryView *)v11 updateWithLegibilitySettings:legibilitySettings labelFont:labelFont];

      contentContainerView2 = [(SBIconView *)self contentContainerView];
      [contentContainerView2 addSubview:self->_labelAccessoryView];
    }

    [(SBIconView *)self _updateBrightness];
  }
}

- (void)_updateLabelAreaAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(SBIconView *)self _updateLabelAccessoryView];

  [(SBIconView *)self _updateLabelAnimated:animatedCopy];
}

- (void)_updateTooltipViewAnimated:(BOOL)animated
{
  if ([(SBIconView *)self _shouldShowTooltip])
  {
    v4 = objc_alloc_init(SBHTooltipView);
    tooltipView = self->_tooltipView;
    self->_tooltipView = v4;

    icon = [(SBIconView *)self icon];

    if (icon)
    {
      v7 = self->_tooltipView;
      icon2 = [(SBIconView *)self icon];
      displayName = [icon2 displayName];
      [(SBHTooltipView *)v7 setText:displayName];
    }

    [(SBHTooltipView *)self->_tooltipView setHidden:1];
    v10 = self->_tooltipView;

    [(SBIconView *)self addSubview:v10];
  }
}

- (void)setAllowsIconImageView:(BOOL)view
{
  v3 = *(self + 554);
  if ((((v3 >= 0) ^ view) & 1) == 0)
  {
    if (view)
    {
      v4 = 0x80;
    }

    else
    {
      v4 = 0;
    }

    *(self + 554) = v4 & 0x80 | v3 & 0x7F;
    [(SBIconView *)self _updateIconImageViewAnimated:0];
  }
}

- (void)_updateIconImageViewAnimated:(BOOL)animated
{
  if (!self->_icon)
  {
    return;
  }

  animatedCopy = animated;
  if ([(SBIconView *)self isIconImageViewBorrowed])
  {
    return;
  }

  if ([(SBIconView *)self allowsIconImageView])
  {
    [(SBIconView *)self updateCustomIconImageViewController];
    if (self->_customIconImageViewController)
    {
      return;
    }

    expectedIconImageViewClass = [(SBIconView *)self expectedIconImageViewClass];
    v6 = *(self + 560);
    if (([(SBIconImageView *)self->_iconImageView isMemberOfClass:expectedIconImageViewClass]& 1) != 0)
    {
      if ((v6 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      [(SBIconView *)self _destroyIconImageView];
      _makeIconImageView = [(SBIconView *)self _makeIconImageView];
      iconImageView = self->_iconImageView;
      self->_iconImageView = _makeIconImageView;
    }

    [(SBIconView *)self _updateBrightness];
    [(SBIconView *)self _updateAllComponentAlphas];
    [(SBIconImageView *)self->_iconImageView setPaused:(*(self + 276) & 0x1F0) != 0];
    [(SBIconImageView *)self->_iconImageView setContentVisibility:[(SBIconView *)self effectiveContentVisibility]];
    [(SBIconImageView *)self->_iconImageView setPrefersFlatImageLayers:[(SBIconView *)self prefersFlatImageLayers]];
    [(SBIconView *)self _applyGlassGroupingEnabledState];
    *(self + 560) &= ~2u;
LABEL_14:
    if (([(SBIconImageView *)self->_iconImageView isDescendantOfView:self]& 1) == 0)
    {
      [(SBIconView *)self _insertIconImageView:self->_iconImageView];
    }

    v9 = self->_iconImageView;
    icon = self->_icon;
    iconLocation = self->_iconLocation;

    [(SBIconImageView *)v9 setIcon:icon location:iconLocation animated:animatedCopy];
    return;
  }

  [(SBIconView *)self _destroyIconImageView];
}

- (void)setPrefersFlatImageLayers:(BOOL)layers
{
  v4 = *(self + 560);
  if (((((v4 & 8) == 0) ^ layers) & 1) == 0)
  {
    layersCopy = layers;
    if (layers)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    *(self + 560) = v4 & 0xF7 | v7;
    [(SBIconImageView *)self->_iconImageView setPrefersFlatImageLayers:?];
    customIconImageViewController = [(SBIconView *)self customIconImageViewController];
    if (objc_opt_respondsToSelector())
    {
      [customIconImageViewController setPrefersFlatImageLayers:layersCopy];
    }
  }
}

- (void)updateImageContainerViewSubviewOrder
{
  imageContainerView = [(SBIconView *)self imageContainerView];
  v6 = imageContainerView;
  if (self->_focusEffectPlatterView)
  {
    [imageContainerView bringSubviewToFront:?];
  }

  if (self->_dropGlow)
  {
    [v6 bringSubviewToFront:?];
  }

  if (self->_iconImageView)
  {
    [v6 bringSubviewToFront:?];
  }

  superview = [(SBIconAccessoryView *)self->_accessoryView superview];

  v5 = v6;
  if (superview == v6)
  {
    [v6 bringSubviewToFront:self->_accessoryView];
    v5 = v6;
  }
}

- (void)_insertIconImageView:(id)view
{
  viewCopy = view;
  if (![(SBIconView *)self isIconImageViewBorrowed])
  {
    customIconImageViewController = [(SBIconView *)self customIconImageViewController];
    viewIfLoaded = [customIconImageViewController viewIfLoaded];

    if (viewIfLoaded == viewCopy)
    {
      parentViewControllerForCustomIconImageViewController = [(SBIconView *)self parentViewControllerForCustomIconImageViewController];
      view = [parentViewControllerForCustomIconImageViewController view];
      if (view && (-[SBIconView isDescendantOfView:](self, "isDescendantOfView:", view) & 1) == 0 && [parentViewControllerForCustomIconImageViewController shouldAutomaticallyForwardAppearanceMethods])
      {
        [(SBIconView *)self setDidDelayInsertingCustomImageViewDueToParentController:1];

LABEL_13:
        goto LABEL_14;
      }
    }

    parentViewControllerForCustomIconImageViewController = [(SBIconView *)self imageContainerView];
    [parentViewControllerForCustomIconImageViewController bounds];
    [viewCopy setFrame:?];
    [parentViewControllerForCustomIconImageViewController addSubview:viewCopy];
    if (self->_closeBox)
    {
      [parentViewControllerForCustomIconImageViewController insertSubview:viewCopy belowSubview:?];
    }

    if (self->_resizeHandle)
    {
      [parentViewControllerForCustomIconImageViewController bringSubviewToFront:?];
    }

    [(SBIconView *)self updateAccessoryViewContainerIfNecessary];
    goto LABEL_13;
  }

LABEL_14:
}

- (void)_configureIconImageView:(id)view
{
  viewCopy = view;
  listLayoutProvider = [(SBIconView *)self listLayoutProvider];
  [viewCopy setListLayoutProvider:listLayoutProvider];

  [viewCopy setShowsSquareCorners:(*(self + 557) >> 4) & 1];
  [viewCopy setJittering:(*(self + 554) >> 1) & 1];
  [viewCopy setIconView:self];
  iconImageCache = [(SBIconView *)self iconImageCache];
  [viewCopy setIconImageCache:iconImageCache];

  [viewCopy setPrefersFlatImageLayers:{-[SBIconView prefersFlatImageLayers](self, "prefersFlatImageLayers")}];
  overrideIconImageAppearance = [(SBIconView *)self overrideIconImageAppearance];
  [viewCopy setOverrideIconImageAppearance:overrideIconImageAppearance];

  overrideIconImageStyleConfiguration = [(SBIconView *)self overrideIconImageStyleConfiguration];
  [viewCopy setOverrideIconImageStyleConfiguration:overrideIconImageStyleConfiguration];

  [viewCopy setAllowsGlassGrouping:{-[SBIconView _isGlassGroupingEnabled](self, "_isGlassGroupingEnabled")}];
  iconImageBackdropGroupName = [(SBIconView *)self iconImageBackdropGroupName];
  [viewCopy setBackdropGroupName:iconImageBackdropGroupName];

  [viewCopy setGlassHidden:{-[SBIconView isIconImageGlassHidden](self, "isIconImageGlassHidden")}];
}

- (void)setIconImageBackdropGroupName:(id)name
{
  nameCopy = name;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [nameCopy copy];
    iconImageBackdropGroupName = self->_iconImageBackdropGroupName;
    self->_iconImageBackdropGroupName = v4;

    [(SBIconImageView *)self->_iconImageView setBackdropGroupName:nameCopy];
  }
}

- (void)setDidDelayInsertingCustomImageViewDueToParentController:(BOOL)controller
{
  if (controller)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 560) = *(self + 560) & 0xEF | v3;
}

- (void)setOverrideCustomIconImageViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_overrideCustomIconImageViewController != controllerCopy)
  {
    v6 = controllerCopy;
    objc_storeStrong(&self->_overrideCustomIconImageViewController, controller);
    [(SBIconView *)self _updateIconImageViewAnimated:0];
    controllerCopy = v6;
  }
}

- (BOOL)shouldAnimateFrameOfIconImageView
{
  shouldUpdateFrameOfIconImageView = [(SBIconView *)self shouldUpdateFrameOfIconImageView];
  if (shouldUpdateFrameOfIconImageView)
  {
    LOBYTE(shouldUpdateFrameOfIconImageView) = self->_customIconImageViewController == 0;
  }

  return shouldUpdateFrameOfIconImageView;
}

- (id)borrowIconImageViewWithOptions:(unint64_t)options
{
  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SBIconView borrowIconImageViewWithOptions:?];
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:options];
  [v6 setObject:v7 forKey:@"options"];

  customIconImageViewController = [(SBIconView *)self customIconImageViewController];
  if (customIconImageViewController)
  {
    [v6 setObject:customIconImageViewController forKey:@"viewController"];
    parentViewController = [customIconImageViewController parentViewController];
    if (parentViewController)
    {
      [v6 setObject:parentViewController forKey:@"parentViewController"];
    }
  }

  v10 = [[SBIconViewAssertion alloc] initWithAssertionType:2 iconView:self extraInfo:v6];
  [(SBIconView *)self setBorrowedIconImageViewAssertion:v10];

  return v10;
}

- (void)removeBorrowedIconImageViewAssertion:(id)assertion
{
  v31 = *MEMORY[0x1E69E9840];
  assertionCopy = assertion;
  borrowedIconImageViewAssertion = [(SBIconView *)self borrowedIconImageViewAssertion];

  if (borrowedIconImageViewAssertion == assertionCopy)
  {
    v6 = SBLogIcon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [SBIconView removeBorrowedIconImageViewAssertion:?];
    }

    [(SBIconView *)self setBorrowedIconImageViewAssertion:0];
    extraInfo = [assertionCopy extraInfo];
    customIconImageViewController = [(SBIconView *)self customIconImageViewController];
    currentImageView = [(SBIconView *)self currentImageView];
    if ([currentImageView isDescendantOfView:self])
    {
      v10 = 0;
    }

    else
    {
      [currentImageView removeFromSuperview];
      if (customIconImageViewController)
      {
        v11 = [extraInfo objectForKeyedSubscript:@"parentViewController"];
        parentViewController = [customIconImageViewController parentViewController];
        v10 = v11 != parentViewController;
      }

      else
      {
        v10 = 0;
      }

      [(SBIconView *)self _insertIconImageView:currentImageView];
    }

    [(SBIconView *)self _updateIconImageViewAnimated:0];
    if (customIconImageViewController)
    {
      [(SBIconView *)self configureCustomIconImageViewController:customIconImageViewController];
    }

    [(SBIconView *)self updateContentVisibilityOnCurrentImageView];
    [(SBIconView *)self _updateAllComponentAlphas];
    [(SBIconView *)self _updateBrightness];
    [(SBIconView *)self _updateJitter:1];
    v13 = *(MEMORY[0x1E695EFD0] + 16);
    v29[0] = *MEMORY[0x1E695EFD0];
    v29[1] = v13;
    v29[2] = *(MEMORY[0x1E695EFD0] + 32);
    [currentImageView setTransform:v29];
    [(SBIconView *)self setNeedsLayout];
    if (v10)
    {
      v24 = currentImageView;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v14 = [(NSHashTable *)self->_observers copy];
      v15 = [v14 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v26;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v26 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v25 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v19 iconView:self didChangeCustomImageViewController:0];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v16);
      }

      currentImageView = v24;
    }

    v20 = [extraInfo objectForKey:@"viewController"];
    v21 = v20;
    if (v20)
    {
      if (v20 != customIconImageViewController)
      {
        customIconImageViewController2 = [(SBIconView *)self customIconImageViewController];

        if (v21 != customIconImageViewController2)
        {
          v23 = [v21 sbh_removeOwningIconView:self];
          if (!v23)
          {
            [(SBIconView *)self _notifyObserversDidDiscardCustomImageViewController:v21];
          }
        }
      }
    }
  }
}

- (void)stealIconImageView
{
  [(SBIconImageView *)self->_iconImageView removeFromSuperview];
  iconImageView = self->_iconImageView;
  self->_iconImageView = 0;

  [(SBIconView *)self _updateIconImageViewAnimated:0];
}

- (id)disableImageUpdatesForReason:(id)reason
{
  reasonCopy = reason;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(SBIconViewCustomImageViewControlling *)self->_customIconImageViewController disableImageUpdatesForReason:reasonCopy];
  }

  else
  {
    _iconImageView = [(SBIconView *)self _iconImageView];
    v5 = [_iconImageView disableImageUpdatesForReason:reasonCopy];
  }

  return v5;
}

- (int64_t)_widgetBackgroundMaterialForDataSource:(id)source
{
  sourceCopy = source;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 19;
  }

  v6 = objc_opt_class();

  return [v6 defaultWidgetBackgroundRecipe];
}

- (void)setCustomIconImageViewController:(id)controller clearingOwner:(BOOL)owner
{
  ownerCopy = owner;
  controllerCopy = controller;
  v51 = *MEMORY[0x1E69E9840];
  controllerCopy2 = controller;
  customIconImageViewController = self->_customIconImageViewController;
  if (customIconImageViewController != controllerCopy2)
  {
    v36 = ownerCopy;
    v9 = customIconImageViewController;
    isIconImageViewBorrowed = [(SBIconView *)self isIconImageViewBorrowed];
    if (objc_opt_respondsToSelector())
    {
      [(SBIconViewCustomImageViewControlling *)controllerCopy2 setHost:self];
    }

    if (controllerCopy2)
    {
      v11 = [(SBIconViewCustomImageViewControlling *)controllerCopy2 sbh_pushOwningIconView:self];
      v12 = v11;
      if (v11)
      {
        v35 = controllerCopy;
        if (([v11 isIconImageViewBorrowed] & 1) == 0)
        {
          v13 = SBLogIcon();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            logIdentifier = self->_logIdentifier;
            *buf = 138543618;
            v48 = logIdentifier;
            v49 = 2114;
            v50 = v12;
            _os_log_impl(&dword_1BEB18000, v13, OS_LOG_TYPE_DEFAULT, "<%{public}@> Icon view s stealing icon image view controller from %{public}@ without anyone borrowing it", buf, 0x16u);
          }
        }

        v37 = isIconImageViewBorrowed;
        borrowedIconImageViewAssertion = [v12 borrowedIconImageViewAssertion];
        extraInfo = [borrowedIconImageViewAssertion extraInfo];
        v17 = [extraInfo objectForKey:@"options"];
        unsignedIntegerValue = [v17 unsignedIntegerValue];

        if ((unsignedIntegerValue & 1) == 0)
        {
          [v12 setCustomIconImageViewController:0 clearingOwner:0];
        }

        isIconImageViewBorrowed = v37;
        controllerCopy = v35;
      }
    }

    if (objc_opt_respondsToSelector())
    {
      [(SBIconViewCustomImageViewControlling *)v9 removeCustomImageViewControllerObserver:self];
    }

    if (!isIconImageViewBorrowed)
    {
      if (objc_opt_respondsToSelector())
      {
        [(SBIconViewCustomImageViewControlling *)v9 setUserVisibilityStatus:1];
      }

      if (objc_opt_respondsToSelector())
      {
        [(SBIconViewCustomImageViewControlling *)v9 setContentVisibility:2];
      }

      if (objc_opt_respondsToSelector())
      {
        [(SBIconViewCustomImageViewControlling *)v9 setPresentationMode:2];
      }
    }

    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      host = [(SBIconViewCustomImageViewControlling *)v9 host];

      if (host == self)
      {
        [(SBIconViewCustomImageViewControlling *)v9 setHost:0];
      }
    }

    if (controllerCopy2 && self->_iconImageView)
    {
      [(SBIconView *)self _destroyIconImageView];
    }

    viewIfLoaded = [(SBIconViewCustomImageViewControlling *)self->_customIconImageViewController viewIfLoaded];
    if ([viewIfLoaded isDescendantOfView:self])
    {
      [viewIfLoaded removeFromSuperview];
    }

    if (viewIfLoaded)
    {
      v21 = isIconImageViewBorrowed;
    }

    else
    {
      v21 = 1;
    }

    if ((v21 & 1) == 0)
    {
      [viewIfLoaded alpha];
      if (v22 < 1.0)
      {
        [viewIfLoaded setAlpha:1.0];
      }
    }

    v38 = viewIfLoaded;
    objc_storeStrong(&self->_customIconImageViewController, controllerCopy);
    v23 = SBLogIcon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [SBIconView setCustomIconImageViewController:clearingOwner:];
    }

    if (controllerCopy2 != 0 && !isIconImageViewBorrowed)
    {
      parentViewControllerForCustomIconImageViewController = [(SBIconView *)self parentViewControllerForCustomIconImageViewController];
      effectiveContentVisibility = [(SBIconView *)self effectiveContentVisibility];
      if (parentViewControllerForCustomIconImageViewController)
      {
        [parentViewControllerForCustomIconImageViewController addChildViewController:controllerCopy2];
      }

      [(SBIconViewCustomImageViewControlling *)controllerCopy2 bs_beginAppearanceTransition:effectiveContentVisibility != 2 animated:0];
      v26 = MEMORY[0x1E69DD250];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __61__SBIconView_setCustomIconImageViewController_clearingOwner___block_invoke;
      v43[3] = &unk_1E8088F18;
      v27 = controllerCopy2;
      v44 = v27;
      selfCopy = self;
      [v26 performWithoutAnimation:v43];
      if (parentViewControllerForCustomIconImageViewController)
      {
        [(SBIconViewCustomImageViewControlling *)v27 didMoveToParentViewController:parentViewControllerForCustomIconImageViewController];
      }

      [(SBIconViewCustomImageViewControlling *)v27 bs_endAppearanceTransition:effectiveContentVisibility != 2];
    }

    [(SBIconView *)self _updateJitter:1];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v28 = [(NSHashTable *)self->_observers copy];
    v29 = [v28 countByEnumeratingWithState:&v39 objects:v46 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v40;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v40 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v39 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v33 iconView:self didChangeCustomImageViewController:v9];
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v39 objects:v46 count:16];
      }

      while (v30);
    }

    if (v9 && v36)
    {
      v34 = [(SBIconViewCustomImageViewControlling *)v9 sbh_removeOwningIconView:self];
      if (!v34)
      {
        [(SBIconView *)self _notifyObserversDidDiscardCustomImageViewController:v9];
      }
    }
  }
}

void __61__SBIconView_setCustomIconImageViewController_clearingOwner___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [*(a1 + 40) _insertIconImageView:v2];
  [*(a1 + 40) configureCustomIconImageViewController:*(a1 + 32)];
  [*(a1 + 40) _updateAllComponentAlphas];
}

- (id)parentViewControllerForCustomIconImageViewController
{
  overrideParentViewControllerForCustomIconImageViewController = [(SBIconView *)self overrideParentViewControllerForCustomIconImageViewController];
  if (!overrideParentViewControllerForCustomIconImageViewController)
  {
    behaviorDelegate = [(SBIconView *)self behaviorDelegate];
    if (objc_opt_respondsToSelector())
    {
      overrideParentViewControllerForCustomIconImageViewController = [behaviorDelegate parentViewControllerForCustomIconImageViewControllerForIconView:self];
    }

    else
    {
      overrideParentViewControllerForCustomIconImageViewController = 0;
    }
  }

  return overrideParentViewControllerForCustomIconImageViewController;
}

- (void)configureCustomIconImageViewController:(id)controller
{
  controllerCopy = controller;
  view = [controllerCopy view];
  [(SBIconView *)self _frameForImageView];
  [view setFrame:?];
  [(SBIconView *)self _updateCustomIconImageViewControllerHitTesting];
  if (objc_opt_respondsToSelector())
  {
    overrideIconImageAppearance = [(SBIconView *)self overrideIconImageAppearance];
    [controllerCopy setOverrideIconImageAppearance:overrideIconImageAppearance];
  }

  if (objc_opt_respondsToSelector())
  {
    overrideIconImageStyleConfiguration = [(SBIconView *)self overrideIconImageStyleConfiguration];
    [controllerCopy setOverrideIconImageStyleConfiguration:overrideIconImageStyleConfiguration];
  }

  effectiveContentVisibility = [(SBIconView *)self effectiveContentVisibility];
  if (objc_opt_respondsToSelector())
  {
    [controllerCopy setContentVisibility:effectiveContentVisibility];
  }

  [(SBIconView *)self iconImageInfo];
  [controllerCopy setIconImageInfo:?];
  if (objc_opt_respondsToSelector())
  {
    [controllerCopy setEditing:{-[SBIconView isEditing](self, "isEditing")}];
  }

  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __53__SBIconView_configureCustomIconImageViewController___block_invoke;
      v13[3] = &unk_1E808EFB8;
      objc_copyWeak(&v14, &location);
      [controllerCopy setBackgroundViewProvider:v13];
      objc_destroyWeak(&v14);
    }

    objc_destroyWeak(&location);
  }

  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __53__SBIconView_configureCustomIconImageViewController___block_invoke_2;
      v11[3] = &unk_1E808EFE0;
      objc_copyWeak(&v12, &location);
      [controllerCopy setBackgroundViewConfigurator:v11];
      objc_destroyWeak(&v12);
    }

    objc_destroyWeak(&location);
  }

  if (objc_opt_respondsToSelector())
  {
    [controllerCopy setUserInteractionEnabled:{-[SBIconView isUserInteractionEnabled](self, "isUserInteractionEnabled")}];
  }

  if (objc_opt_respondsToSelector())
  {
    [controllerCopy setPauseReasons:(*(self + 276) >> 4) & 0x1F];
  }

  if (objc_opt_respondsToSelector())
  {
    [controllerCopy setLegibilitySettings:self->_legibilitySettings];
  }

  if (objc_opt_respondsToSelector())
  {
    [controllerCopy addCustomImageViewControllerObserver:self];
  }

  if (objc_opt_respondsToSelector())
  {
    [controllerCopy setUserVisibilityStatus:(*(self + 279) >> 7) & 3];
  }

  if (objc_opt_respondsToSelector())
  {
    approximateLayoutPosition = [(SBIconView *)self approximateLayoutPosition];
    [controllerCopy setApproximateLayoutPosition:{approximateLayoutPosition, v10}];
  }

  [(SBIconView *)self _updatePresentationModeForReason:@"set custom icon image view controller"];
  [objc_opt_class() updateAppearStateForViewController:controllerCopy forContentVisibility:effectiveContentVisibility];
  if (objc_opt_respondsToSelector())
  {
    [controllerCopy setPrefersFlatImageLayers:{-[SBIconView prefersFlatImageLayers](self, "prefersFlatImageLayers")}];
  }

  [(SBIconView *)self _applyGlassGroupingEnabledState];
}

id __53__SBIconView_configureCustomIconImageViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained newComponentBackgroundViewOfType:5];

  return v2;
}

void __53__SBIconView_configureCustomIconImageViewController___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_class();
  v14 = v5;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v14;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v11 = [WeakRetained _widgetBackgroundMaterialForDataSource:v6];

    if (v11 != [v9 recipe])
    {
      [v9 setRecipe:v11];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v9 groupNameBase];
      v13 = [v12 stringByAppendingString:@"-AppPrediction"];

      [v9 setGroupNameBase:v13];
      [v9 setUseBuiltInAlphaTransformerAndBackdropScaleAdjustment:1];
    }
  }
}

- (void)setPresentationModeFolderContext:(id)context
{
  v4 = [context copy];
  presentationModeFolderContext = self->_presentationModeFolderContext;
  self->_presentationModeFolderContext = v4;

  [(SBIconView *)self _updatePresentationModeForReason:@"new folder context"];
}

- (void)_updatePresentationModeForReason:(id)reason
{
  reasonCopy = reason;
  customIconImageViewController = [(SBIconView *)self customIconImageViewController];
  if ([customIconImageViewController conformsToProtocol:&unk_1F3E70718])
  {
    presentationMode = [customIconImageViewController presentationMode];
    v7 = 1;
    if (presentationMode >= 2)
    {
      v7 = 2;
    }
  }

  else
  {
    v7 = 2;
  }

  v8 = (*(self + 559) >> 3) & 3;
  if (v8 != 1)
  {
    v7 = 0;
  }

  if (v8 == 2)
  {
    v9 = (*(self + 559) >> 3) & 3;
  }

  else
  {
    v9 = v7;
  }

  v10 = SBLogIcon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [SBIconView _updatePresentationModeForReason:];
  }

  if ([(SBHPresentationModeFolderContext *)self->_presentationModeFolderContext hasAssertionForSnapshotPresentationMode])
  {
    v11 = SBLogIcon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [SBIconView _updatePresentationModeForReason:];
    }

    v9 = 1;
  }

  else
  {
    if (![(SBHPresentationModeFolderContext *)self->_presentationModeFolderContext hasAssertionForLowResolutionSnapshotPresentationMode])
    {
      goto LABEL_21;
    }

    v11 = SBLogIcon();
    v9 = 2;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [SBIconView _updatePresentationModeForReason:];
      v9 = 2;
    }
  }

LABEL_21:
  if (self->_inConfigurationTransition)
  {
    v12 = SBLogIcon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [SBIconView _updatePresentationModeForReason:];
    }

    v9 = 0;
  }

  if ((*(self + 560) & 0x80000000) == 0)
  {
    window = [(SBIconView *)self window];

    if (!window)
    {
      v14 = SBLogIcon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [SBIconView _updatePresentationModeForReason:];
      }

      v9 = 2;
    }
  }

  v15 = objc_opt_respondsToSelector();
  v16 = SBLogIcon();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
  if (v15)
  {
    if (v17)
    {
      [SBIconView _updatePresentationModeForReason:];
    }

    [customIconImageViewController setPresentationMode:v9];
  }

  else
  {
    if (v17)
    {
      [SBIconView _updatePresentationModeForReason:];
    }
  }
}

- (void)setOverrideParentViewControllerForCustomIconImageViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_overrideParentViewControllerForCustomIconImageViewController != controllerCopy)
  {
    v7 = controllerCopy;
    objc_storeStrong(&self->_overrideParentViewControllerForCustomIconImageViewController, controller);
    controllerCopy = v7;
    if (v7)
    {
      customIconImageViewController = [(SBIconView *)self customIconImageViewController];
      [customIconImageViewController removeFromParentViewController];
      [(UIViewController *)v7 bs_addChildViewController:customIconImageViewController];

      controllerCopy = v7;
    }
  }
}

- (void)setOverrideImageAppearance:(id)appearance onCustomIconImageViewController:(id)controller
{
  appearanceCopy = appearance;
  controllerCopy = controller;
  if (objc_opt_respondsToSelector())
  {
    [controllerCopy setOverrideIconImageAppearance:appearanceCopy];
  }

  else
  {
    traitOverrides = [controllerCopy traitOverrides];
    v7 = objc_opt_self();
    if (appearanceCopy)
    {
      [traitOverrides setObject:appearanceCopy forTrait:v7];
    }

    else
    {
      [traitOverrides removeTrait:v7];
    }
  }
}

- (void)setOverrideImageStyleConfiguration:(id)configuration onCustomIconImageViewController:(id)controller
{
  configurationCopy = configuration;
  controllerCopy = controller;
  if (objc_opt_respondsToSelector())
  {
    [controllerCopy setOverrideIconImageStyleConfiguration:configurationCopy];
  }

  else
  {
    traitOverrides = [controllerCopy traitOverrides];
    v7 = objc_opt_self();
    if (configurationCopy)
    {
      [traitOverrides setObject:configurationCopy forTrait:v7];
    }

    else
    {
      [traitOverrides removeTrait:v7];
    }
  }
}

- (void)setAllowsAccessoryView:(BOOL)view
{
  v3 = *(self + 556);
  if (((((v3 & 0x20) == 0) ^ view) & 1) == 0)
  {
    if (view)
    {
      v4 = 32;
    }

    else
    {
      v4 = 0;
    }

    *(self + 556) = v3 & 0xDF | v4;
    [(SBIconView *)self _updateAccessoryViewAnimated:0];
  }
}

- (void)_setShowingAccessoryView:(BOOL)view
{
  if (view)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 556) = v3 & 0x80 | *(self + 556) & 0x7F;
}

+ (Class)defaultViewClassForAccessoryType:(int64_t)type
{
  if ((type - 1) > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_opt_self();
  }

  return v4;
}

- (void)_updateAccessoryViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (![(NSHashTable *)self->_forbidAccessoryUpdatesAssertions count])
  {
    accessoryViewAnimator = [(SBIconView *)self accessoryViewAnimator];
    v6 = accessoryViewAnimator;
    if (accessoryViewAnimator)
    {
      if ([accessoryViewAnimator state])
      {
        [v6 stopAnimation:0];
        [v6 fractionComplete];
        [v6 finishAnimationAtPosition:v7 <= 0.0];
      }

      [(SBIconView *)self setAccessoryViewAnimator:0];
    }

    if (![(SBIconView *)self shouldShowAccessoryView])
    {
      [(SBIconView *)self _setShowingAccessoryView:0];
      if (animatedCopy)
      {
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __43__SBIconView__updateAccessoryViewAnimated___block_invoke_6;
        v30[3] = &unk_1E8088C90;
        v30[4] = self;
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __43__SBIconView__updateAccessoryViewAnimated___block_invoke_7;
        v29[3] = &unk_1E8088F40;
        v29[4] = self;
        [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v30 usingSpringWithDamping:v29 initialSpringVelocity:0.34071 options:0.0 animations:0.9 completion:0.0];
      }

      else
      {
        [(SBIconView *)self _destroyAccessoryView];
      }

      goto LABEL_42;
    }

    icon = [(SBIconView *)self icon];
    v9 = icon;
    if (!animatedCopy)
    {
      v17 = MEMORY[0x1E69DD250];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __43__SBIconView__updateAccessoryViewAnimated___block_invoke_5;
      v31[3] = &unk_1E8088F18;
      v31[4] = self;
      v32 = icon;
      [v17 performWithoutAnimation:v31];

LABEL_41:
LABEL_42:

      return;
    }

    v10 = objc_alloc(MEMORY[0x1E69DD278]);
    v11 = [objc_alloc(MEMORY[0x1E69DCF88]) initWithDampingRatio:0.9];
    v12 = [v10 initWithDuration:v11 timingParameters:0.34071];

    _isShowingAccessoryView = [(SBIconView *)self _isShowingAccessoryView];
    v14 = [objc_opt_class() defaultViewClassForAccessoryType:{-[SBIconView currentAccessoryType](self, "currentAccessoryType")}];
    accessoryView = self->_accessoryView;
    if (accessoryView)
    {
      if (v14)
      {
        if (([(SBIconAccessoryView *)accessoryView isMemberOfClass:v14]& 1) != 0)
        {
          v16 = 0;
LABEL_20:
          [(SBIconView *)self _createAccessoryViewIfNecessary];
          v18 = 0;
LABEL_21:
          v20 = self->_accessoryView;
          [(SBIconAccessoryView *)v20 configureAnimatedForIcon:v9 infoProvider:self animator:v12];
          [(SBIconView *)self _centerForAccessoryView];
          [(SBIconAccessoryView *)v20 setCenter:?];
          if (objc_opt_respondsToSelector())
          {
            badgeParallaxSettings = [(SBIconView *)self badgeParallaxSettings];
            [(SBIconAccessoryView *)v20 setParallaxSettings:badgeParallaxSettings];
          }

          if (v18)
          {
            displayingAccessory = 0;
          }

          else
          {
            displayingAccessory = [(SBIconAccessoryView *)v20 displayingAccessory];
          }

          if ((displayingAccessory & 1) == 0 && !v16)
          {
            v16 = v20;
            v23 = self->_accessoryView;
            self->_accessoryView = 0;
          }

          v24 = !_isShowingAccessoryView;
          if (displayingAccessory && v24 && !v16)
          {
            CGAffineTransformMakeScale(&v46, 0.01, 0.01);
            v25 = v20;
          }

          else
          {
            if ((displayingAccessory | v24))
            {
LABEL_36:
              [(SBIconView *)self _setShowingAccessoryView:displayingAccessory];
              v41[0] = MEMORY[0x1E69E9820];
              v41[1] = 3221225472;
              v41[2] = __43__SBIconView__updateAccessoryViewAnimated___block_invoke;
              v41[3] = &unk_1E8089360;
              v44 = _isShowingAccessoryView;
              v45 = displayingAccessory;
              v27 = v20;
              v42 = v27;
              v28 = v16;
              v43 = v28;
              [v12 addAnimations:v41];
              if (v16)
              {
                if (displayingAccessory)
                {
                  [(SBIconAccessoryView *)v27 setAlpha:0.0];
                  v38[0] = MEMORY[0x1E69E9820];
                  v38[1] = 3221225472;
                  v38[2] = __43__SBIconView__updateAccessoryViewAnimated___block_invoke_2;
                  v38[3] = &unk_1E8088F18;
                  v39 = v28;
                  v40 = v27;
                  [v12 addAnimations:v38];
                }

                v36[0] = MEMORY[0x1E69E9820];
                v36[1] = 3221225472;
                v36[2] = __43__SBIconView__updateAccessoryViewAnimated___block_invoke_3;
                v36[3] = &unk_1E808A040;
                v36[4] = self;
                v37 = v28;
                [v12 addCompletion:v36];
              }

              objc_initWeak(&v46, v12);
              v33[0] = MEMORY[0x1E69E9820];
              v33[1] = 3221225472;
              v33[2] = __43__SBIconView__updateAccessoryViewAnimated___block_invoke_4;
              v33[3] = &unk_1E808F008;
              v35 = displayingAccessory;
              v33[4] = self;
              objc_copyWeak(&v34, &v46);
              [v12 addCompletion:v33];
              [(SBIconView *)self setAccessoryViewAnimator:v12];
              [v12 startAnimation];
              objc_destroyWeak(&v34);
              objc_destroyWeak(&v46);

              goto LABEL_41;
            }

            v26 = *(MEMORY[0x1E695EFD0] + 16);
            *&v46.a = *MEMORY[0x1E695EFD0];
            *&v46.c = v26;
            *&v46.tx = *(MEMORY[0x1E695EFD0] + 32);
            v25 = v16;
          }

          [(SBIconAccessoryView *)v25 setTransform:&v46];
          goto LABEL_36;
        }

        accessoryView = self->_accessoryView;
      }

      v16 = accessoryView;
      v19 = self->_accessoryView;
      self->_accessoryView = 0;

      if (v14)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v16 = 0;
      if (v14)
      {
        goto LABEL_20;
      }
    }

    v18 = 1;
    goto LABEL_21;
  }
}

uint64_t __43__SBIconView__updateAccessoryViewAnimated___block_invoke(uint64_t result)
{
  if (*(result + 48))
  {
    if (*(result + 49))
    {
      return result;
    }

    v1 = *(result + 40);
    CGAffineTransformMakeScale(&v4, 0.01, 0.01);
    v2 = v1;
  }

  else
  {
    if (!*(result + 49))
    {
      return result;
    }

    v2 = *(result + 32);
    v3 = *(MEMORY[0x1E695EFD0] + 16);
    *&v4.a = *MEMORY[0x1E695EFD0];
    *&v4.c = v3;
    *&v4.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  return [v2 setTransform:{&v4, *&v4.a, *&v4.c, *&v4.tx}];
}

uint64_t __43__SBIconView__updateAccessoryViewAnimated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

void __43__SBIconView__updateAccessoryViewAnimated___block_invoke_4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == a2)
  {
    [*(a1 + 32) _destroyAccessoryView];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [*(a1 + 32) accessoryViewAnimator];

  if (WeakRetained == v4)
  {
    v5 = *(a1 + 32);

    [v5 setAccessoryViewAnimator:0];
  }
}

uint64_t __43__SBIconView__updateAccessoryViewAnimated___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) _createAccessoryViewIfNecessary];
  [*(*(a1 + 32) + 464) configureForIcon:*(a1 + 40) infoProvider:?];
  v2 = [*(*(a1 + 32) + 464) displayingAccessory];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = v3[58];
    [v3 _centerForAccessoryView];
    [v4 setCenter:?];
    v5 = *(*(a1 + 32) + 464);
    v6 = *(MEMORY[0x1E695EFD0] + 16);
    v8[0] = *MEMORY[0x1E695EFD0];
    v8[1] = v6;
    v8[2] = *(MEMORY[0x1E695EFD0] + 32);
    [v5 setTransform:v8];
  }

  else
  {
    [v3 _destroyAccessoryView];
  }

  [*(a1 + 32) _setShowingAccessoryView:v2];
  return [*(*(a1 + 32) + 464) layoutIfNeeded];
}

uint64_t __43__SBIconView__updateAccessoryViewAnimated___block_invoke_6(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 464);
  CGAffineTransformMakeScale(&v3, 0.01, 0.01);
  return [v1 setTransform:&v3];
}

- (void)_destroyAccessoryView:(id)view
{
  viewCopy = view;
  reuseDelegate = [(SBIconView *)self reuseDelegate];
  if (objc_opt_respondsToSelector())
  {
    [reuseDelegate iconView:self willRemoveIconAccessoryView:viewCopy];
  }

  if ([viewCopy isDescendantOfView:self])
  {
    [viewCopy removeFromSuperview];
  }
}

- (void)setOverrideBadgeNumberOrString:(id)string animated:(BOOL)animated
{
  if (self->_overrideBadgeNumberOrString != string)
  {
    animatedCopy = animated;
    v6 = [string copyWithZone:0];
    overrideBadgeNumberOrString = self->_overrideBadgeNumberOrString;
    self->_overrideBadgeNumberOrString = v6;

    [(SBIconView *)self _updateAccessoryViewAnimated:animatedCopy];
  }
}

- (void)setOverrideAccessoryIconImageAppearance:(id)appearance
{
  appearanceCopy = appearance;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [appearanceCopy copy];
    overrideAccessoryIconImageAppearance = self->_overrideAccessoryIconImageAppearance;
    self->_overrideAccessoryIconImageAppearance = v4;

    [(SBIconView *)self updateAccessoryViewOverrideIconImageAppearance];
  }
}

- (id)effectiveAccessoryIconImageAppearance
{
  overrideAccessoryIconImageAppearance = [(SBIconView *)self overrideAccessoryIconImageAppearance];
  if (!overrideAccessoryIconImageAppearance)
  {
    overrideAccessoryIconImageAppearance = [(SBIconView *)self effectiveIconImageAppearance];
  }

  return overrideAccessoryIconImageAppearance;
}

- (CGSize)accessorySize
{
  listLayout = [(SBIconView *)self listLayout];
  v3 = SBHIconListLayoutIconAccessorySize(listLayout);
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (id)badgeString
{
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    text = [(SBIconAccessoryView *)self->_accessoryView text];
  }

  else
  {
    text = 0;
  }

  return text;
}

- (void)_accessoryViewTapGestureChanged:(id)changed
{
  if ([changed state] == 3)
  {
    actionDelegate = [(SBIconView *)self actionDelegate];
    if (objc_opt_respondsToSelector())
    {
      [actionDelegate iconAccessoryViewTapped:self];
    }
  }
}

- (id)_automationID
{
  automationID = [(SBIcon *)self->_icon automationID];
  v3 = [@"BTN " stringByAppendingString:automationID];

  return v3;
}

- (BOOL)pointMostlyInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(SBIconView *)self bounds];
  v11 = CGRectInset(v10, -25.0, -25.0);
  v6 = x;
  v7 = y;

  return CGRectContainsPoint(v11, *&v6);
}

- (double)effectiveBrightnessForControlState:(unint64_t)state
{
  result = 0.5;
  if ((state & 2) == 0)
  {
    if (state)
    {
      v6 = [(SBIconView *)self lastTouchWasPointer:0.5];
      result = 0.6;
      if (v6)
      {
        return 1.0;
      }
    }

    else if ((state & 0x10000) == 0)
    {
      return 1.0;
    }
  }

  return result;
}

- (void)setHighlighted:(BOOL)highlighted
{
  v3 = *(self + 553);
  if (((((v3 & 0x20) == 0) ^ highlighted) & 1) == 0)
  {
    if (highlighted)
    {
      v4 = 32;
    }

    else
    {
      v4 = 0;
    }

    *(self + 553) = v3 & 0xDF | v4;
    [(SBIconView *)self _updateBrightness];
  }
}

- (void)setDragging:(BOOL)dragging updateImmediately:(BOOL)immediately
{
  v4 = *(self + 556);
  if (((((v4 & 2) == 0) ^ dragging) & 1) == 0)
  {
    immediatelyCopy = immediately;
    v7 = dragging ? 2 : 0;
    *(self + 556) = v4 & 0xFD | v7;
    [(SBIconView *)self _toggleContentContainerViewIfNecessary];
    [(SBIconView *)self _updateCursorInteractionsEnabled];
    [(SBIconView *)self _updateJitter];
    if (immediatelyCopy)
    {

      [(SBIconView *)self _updateAllComponentAlphas];
    }
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(SBIconView *)self bounds];
  v8.receiver = self;
  v8.super_class = SBIconView;
  [(SBIconView *)&v8 setBounds:x, y, width, height];
  [(SBIconView *)self bounds];
  if ((BSSizeEqualToSize() & 1) == 0)
  {
    [(SBIconView *)self _notifyObserversSizeDidChange];
  }
}

- (void)setFrame:(CGRect)frame
{
  y = frame.origin.y;
  x = frame.origin.x;
  [(SBIconView *)self bounds:frame.origin.x];
  memset(&v16, 0, sizeof(v16));
  [(SBIconView *)self transform];
  t1 = v16;
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  *&t2.a = *MEMORY[0x1E695EFD0];
  *&t2.c = v6;
  *&t2.tx = *(MEMORY[0x1E695EFD0] + 32);
  v7 = CGAffineTransformEqualToTransform(&t1, &t2);
  if (!v7)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __23__SBIconView_setFrame___block_invoke;
    v13[3] = &unk_1E8088C90;
    v13[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v13];
  }

  [(SBIconView *)self iconViewSize];
  v12.receiver = self;
  v12.super_class = SBIconView;
  [(SBIconView *)&v12 setFrame:x, y, v8, v9];
  if (!v7)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v11 = v16;
    v10[2] = __23__SBIconView_setFrame___block_invoke_2;
    v10[3] = &unk_1E808B4E0;
    v10[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v10];
  }

  [(SBIconView *)self bounds];
  if ((BSSizeEqualToSize() & 1) == 0)
  {
    [(SBIconView *)self _notifyObserversSizeDidChange];
  }
}

uint64_t __23__SBIconView_setFrame___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v1 setTransform:v4];
}

uint64_t __23__SBIconView_setFrame___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  return [v1 setTransform:v4];
}

- (void)_notifyObserversDidDiscardCustomImageViewController:(id)controller
{
  v16 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSHashTable *)self->_observers copy];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 iconView:self didDiscardCustomImageViewController:controllerCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

+ (id)_jitterXTranslationAnimationWithAmount:(double)amount
{
  v5 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.translation.x"];
  [v5 setDuration:0.134];
  [v5 setBeginTime:arc4random_uniform(0x64u) / 100.0];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:amount];
  [v5 setFromValue:v6];

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:-amount];
  [v5 setToValue:v7];

  LODWORD(v8) = 1052266988;
  LODWORD(v9) = 1059145646;
  LODWORD(v10) = 1.0;
  v11 = [MEMORY[0x1E69793D0] functionWithControlPoints:v8 :0.0 :v9 :v10];
  [v5 setTimingFunction:v11];

  LODWORD(v12) = 2139095040;
  [v5 setRepeatCount:v12];
  [v5 setAutoreverses:1];
  [v5 setRemovedOnCompletion:0];
  [self _jitterAnimationFrameRateRange];
  [v5 setPreferredFrameRateRange:?];
  [v5 setHighFrameRateReason:{objc_msgSend(self, "_jitterAnimationHighFrameRateReason")}];

  return v5;
}

+ (id)_jitterYTranslationAnimationWithAmount:(double)amount
{
  v5 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.translation.y"];
  [v5 setDuration:0.142];
  [v5 setBeginTime:arc4random_uniform(0x64u) / 100.0];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:amount];
  [v5 setFromValue:v6];

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:-amount];
  [v5 setToValue:v7];

  LODWORD(v8) = 1052266988;
  LODWORD(v9) = 1059145646;
  LODWORD(v10) = 1.0;
  v11 = [MEMORY[0x1E69793D0] functionWithControlPoints:v8 :0.0 :v9 :v10];
  [v5 setTimingFunction:v11];

  LODWORD(v12) = 2139095040;
  [v5 setRepeatCount:v12];
  [v5 setAutoreverses:1];
  [v5 setRemovedOnCompletion:0];
  [self _jitterAnimationFrameRateRange];
  [v5 setPreferredFrameRateRange:?];
  [v5 setHighFrameRateReason:{objc_msgSend(self, "_jitterAnimationHighFrameRateReason")}];

  return v5;
}

+ (id)_jitterRotationAnimationWithAmount:(double)amount
{
  v5 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.rotation"];
  [v5 setDuration:0.128];
  [v5 setBeginTime:arc4random_uniform(0x64u) / 100.0];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:-amount];
  [v5 setFromValue:v6];

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:amount];
  [v5 setToValue:v7];

  LODWORD(v8) = 1052266988;
  LODWORD(v9) = 1059145646;
  LODWORD(v10) = 1.0;
  v11 = [MEMORY[0x1E69793D0] functionWithControlPoints:v8 :0.0 :v9 :v10];
  [v5 setTimingFunction:v11];

  LODWORD(v12) = 2139095040;
  [v5 setRepeatCount:v12];
  [v5 setAutoreverses:1];
  [v5 setRemovedOnCompletion:0];
  [self _jitterAnimationFrameRateRange];
  [v5 setPreferredFrameRateRange:?];
  [v5 setHighFrameRateReason:{objc_msgSend(self, "_jitterAnimationHighFrameRateReason")}];

  return v5;
}

+ (id)_jitterRampDownAnimationWithAnimation:(id)animation
{
  v3 = MEMORY[0x1E6979318];
  keyPath = [animation keyPath];
  v5 = [v3 animationWithKeyPath:keyPath];

  [v5 setDuration:0.3];
  v6 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
  [v5 setTimingFunction:v6];

  [v5 setRemovedOnCompletion:1];
  [objc_opt_class() _jitterAnimationFrameRateRange];
  [v5 setPreferredFrameRateRange:?];
  [v5 setHighFrameRateReason:{objc_msgSend(objc_opt_class(), "_jitterAnimationHighFrameRateReason")}];

  return v5;
}

- (void)_updateJitter:(BOOL)jitter animated:(BOOL)animated
{
  animatedCopy = animated;
  jitterCopy = jitter;
  if (![(SBIconView *)self isEditing]|| (*(self + 554) & 8) == 0 || (*(self + 553) & 4) != 0 || [(SBIconView *)self isPaused]|| [(SBIconView *)self isDragging]&& ![(SBIconView *)self isGrabbed]|| self->_crossfadeView)
  {
    LODWORD(icon) = 0;
  }

  else
  {
    icon = self->_icon;
    if (icon)
    {
      LODWORD(icon) = ![(SBIconView *)self isResizing];
    }
  }

  if (icon != (*(self + 554) & 2) >> 1 || jitterCopy)
  {
    if (icon)
    {
      [(SBIconView *)self _addJitterAnimated:animatedCopy];
    }

    else
    {
      [(SBIconView *)self _removeJitterAnimated:animatedCopy];
    }

    _iconImageView = [(SBIconView *)self _iconImageView];
    [_iconImageView setJittering:(*(self + 554) >> 1) & 1];

    customIconImageViewController = [(SBIconView *)self customIconImageViewController];
    if (objc_opt_respondsToSelector())
    {
      [customIconImageViewController setJittering:(*(self + 554) >> 1) & 1];
    }
  }
}

- (void)_addJitterAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = +[SBHHomeScreenDomain rootSettings];
  iconSettings = [v5 iconSettings];
  suppressJitter = [iconSettings suppressJitter];

  if ((suppressJitter & 1) == 0)
  {
    *(self + 554) |= 2u;
    if ([(SBIconView *)self suppressesDefaultEditingAnimation])
    {

      [(SBIconView *)self _removeDefaultJitterAnimationsAnimated:animatedCopy];
    }

    else
    {
      _iconImageView = [(SBIconView *)self _iconImageView];
      if (([objc_opt_class() hasCustomJitter] & 1) == 0 && (*(self + 554) & 4) == 0)
      {
        [(SBIconView *)self _addDefaultJitterAnimationsAnimated:animatedCopy];
      }
    }
  }
}

- (void)_addDefaultJitterAnimationsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  *(self + 554) |= 4u;
  [(SBIconView *)self editingAnimationStrength];
  v6 = v5;
  v13 = [SBIconView _jitterXTranslationAnimationWithStrength:?];
  [(SBIconView *)self _rampUpJitterAnimation:v13 animationKey:@"SBIconXTranslation" rampKey:@"SBIconXTranslationRamp" animated:animatedCopy];
  v7 = [SBIconView _jitterYTranslationAnimationWithStrength:v6];
  [(SBIconView *)self _rampUpJitterAnimation:v7 animationKey:@"SBIconYTranslation" rampKey:@"SBIconYTranslationRamp" animated:animatedCopy];
  gridSizeClass = [(SBIconView *)self gridSizeClass];
  listLayoutProvider = [(SBIconView *)self listLayoutProvider];
  location = [(SBIconView *)self location];
  v11 = [listLayoutProvider layoutForIconLocation:location];

  v12 = [SBIconView _jitterRotationAnimationWithStrength:v6 * SBHIconListLayoutEditingAnimationStrengthForGridSizeClass(v11, gridSizeClass)];
  [(SBIconView *)self _rampUpJitterAnimation:v12 animationKey:@"SBIconRotation" rampKey:@"SBIconRotationRamp" animated:animatedCopy];
}

- (void)_removeDefaultJitterAnimationsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  *(self + 554) &= ~4u;
  [(SBIconView *)self _rampDownJitterAnimationForKey:@"SBIconXTranslation" rampKey:@"SBIconXTranslationRamp" animated:animated];
  [(SBIconView *)self _rampDownJitterAnimationForKey:@"SBIconYTranslation" rampKey:@"SBIconYTranslationRamp" animated:animatedCopy];

  [(SBIconView *)self _rampDownJitterAnimationForKey:@"SBIconRotation" rampKey:@"SBIconRotationRamp" animated:animatedCopy];
}

- (void)_rampUpJitterAnimation:(id)animation animationKey:(id)key rampKey:(id)rampKey animated:(BOOL)animated
{
  keyCopy = key;
  animationCopy = animation;
  layer = [(SBIconView *)self layer];
  [layer addAnimation:animationCopy forKey:keyCopy];
}

- (void)_rampDownJitterAnimationForKey:(id)key rampKey:(id)rampKey animated:(BOOL)animated
{
  animatedCopy = animated;
  keyCopy = key;
  rampKeyCopy = rampKey;
  layer = [(SBIconView *)self layer];
  v10 = [layer animationForKey:keyCopy];
  if (v10)
  {
    if (animatedCopy)
    {
      v11 = [SBIconView _jitterRampDownAnimationWithAnimation:v10];
      [layer addAnimation:v11 forKey:rampKeyCopy];
    }

    [layer removeAnimationForKey:keyCopy];
  }
}

- (void)setAllowsEditingAnimation:(BOOL)animation
{
  v3 = *(self + 554);
  if (((((v3 & 8) == 0) ^ animation) & 1) == 0)
  {
    if (animation)
    {
      v4 = 8;
    }

    else
    {
      v4 = 0;
    }

    *(self + 554) = v3 & 0xF7 | v4;
    [(SBIconView *)self _updateJitterAnimated:0];
  }
}

- (void)setSuppressesDefaultEditingAnimation:(BOOL)animation
{
  v3 = *(self + 554);
  if (((((v3 & 0x10) == 0) ^ animation) & 1) == 0)
  {
    if (animation)
    {
      v4 = 16;
    }

    else
    {
      v4 = 0;
    }

    *(self + 554) = v3 & 0xEF | v4;
    [(SBIconView *)self _updateJitter:1 animated:0];
  }
}

- (void)setEditingAnimationStrength:(double)strength
{
  if (self->_editingAnimationStrength != strength)
  {
    self->_editingAnimationStrength = strength;
    if ((*(self + 554) & 2) != 0)
    {
      [(SBIconView *)self _removeJitterAnimated:0];

      [(SBIconView *)self _addJitterAnimated:0];
    }
  }
}

- (void)setRefusesRecipientStatus:(BOOL)status
{
  if (status)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 553) = *(self + 553) & 0xEF | v3;
}

- (BOOL)canReceiveGrabbedIcon:(id)icon
{
  iconCopy = icon;
  behaviorDelegate = [(SBIconView *)self behaviorDelegate];
  if ((*(self + 553) & 0x10) != 0 || ([iconCopy isFolderIcon] & 1) != 0 || (objc_msgSend(iconCopy, "isWidgetStackIcon") & 1) != 0 || iconCopy && !objc_msgSend(iconCopy, "canBeReceivedByIcon") || !-[SBIcon canReceiveGrabbedIcon](self->_icon, "canReceiveGrabbedIcon"))
  {
    goto LABEL_16;
  }

  if (iconCopy)
  {
    icon = self->_icon;
    if (icon)
    {
      gridSizeClass = [(SBIcon *)icon gridSizeClass];
      gridSizeClass2 = [iconCopy gridSizeClass];
      v9 = gridSizeClass2;
      if (gridSizeClass == gridSizeClass2)
      {
      }

      else
      {
        gridSizeClass3 = [(SBIcon *)self->_icon gridSizeClass];
        gridSizeClass4 = [iconCopy gridSizeClass];
        v12 = [gridSizeClass3 isEqualToString:gridSizeClass4];

        if (!v12)
        {
LABEL_16:
          v14 = 0;
          goto LABEL_17;
        }
      }
    }
  }

  if (iconCopy)
  {
    v13 = self->_icon;
    if (v13)
    {
      if (([(SBIcon *)v13 isEqual:iconCopy]& 1) != 0)
      {
        goto LABEL_16;
      }
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v14 = [behaviorDelegate icon:self canReceiveGrabbedIcon:iconCopy];
  }

  else
  {
    v14 = 1;
  }

LABEL_17:

  return v14;
}

- (void)setGrabbed:(BOOL)grabbed
{
  v7 = *(self + 553);
  if (((((v7 & 2) == 0) ^ grabbed) & 1) == 0)
  {
    v10 = v3;
    if (grabbed)
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    *(self + 553) = v7 & 0xFD | v9;
    [(SBIconView *)self _toggleContentContainerViewIfNecessary:v4];
    [(SBIconView *)self _updateAllComponentAlphas];

    [(SBIconView *)self _updateJitter];
  }
}

- (id)markAsDropping
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [[SBIconViewAssertion alloc] initWithAssertionType:0 iconView:self extraInfo:0];
  droppingAssertions = self->_droppingAssertions;
  if (!droppingAssertions)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v6 = self->_droppingAssertions;
    self->_droppingAssertions = weakObjectsHashTable;

    droppingAssertions = self->_droppingAssertions;
  }

  [(NSHashTable *)droppingAssertions addObject:v3];
  v7 = SBLogIcon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    logIdentifier = self->_logIdentifier;
    v10 = 138543618;
    v11 = logIdentifier;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_1BEB18000, v7, OS_LOG_TYPE_INFO, "<%{public}@> Adding SBIconView isDropping assertion: %@", &v10, 0x16u);
  }

  [(SBIconView *)self _toggleContentContainerViewIfNecessary];
  [(SBIconView *)self _updateAllComponentAlphas];

  return v3;
}

- (void)removeDroppingAssertion:(id)assertion
{
  v12 = *MEMORY[0x1E69E9840];
  assertionCopy = assertion;
  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    logIdentifier = self->_logIdentifier;
    v8 = 138543618;
    v9 = logIdentifier;
    v10 = 2112;
    v11 = assertionCopy;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "<%{public}@> Remove SBIconView isDropping assertion: %@", &v8, 0x16u);
  }

  [(NSHashTable *)self->_droppingAssertions removeObject:assertionCopy];
  if (![(NSHashTable *)self->_droppingAssertions count])
  {
    droppingAssertions = self->_droppingAssertions;
    self->_droppingAssertions = 0;
  }

  [(SBIconView *)self _toggleContentContainerViewIfNecessary];
  [(SBIconView *)self _updateAllComponentAlphas];
}

- (void)setShowsImageAndLabelDuringDrop:(BOOL)drop
{
  if (self->_showsImageAndLabelDuringDrop != drop)
  {
    self->_showsImageAndLabelDuringDrop = drop;
    [(SBIconView *)self _updateAllComponentAlphas];
  }
}

- (void)setOverlapping:(BOOL)overlapping
{
  v3 = *(self + 553);
  if (((((v3 & 4) == 0) ^ overlapping) & 1) == 0)
  {
    if (overlapping)
    {
      v5 = 4;
    }

    else
    {
      v5 = 0;
    }

    *(self + 553) = v3 & 0xFB | v5;
    [(SBIconView *)self _updateJitter];
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    [(SBIconView *)self transform];
    *(&v8 + 1) = 0x3FF0000000000000;
    *&v7 = 0x3FF0000000000000;
    [(SBIconView *)self _updateAllComponentAlphas];
    [(SBIconView *)self _updateIconImageAdornmentsAnimated:1];
    v6[0] = v7;
    v6[1] = v8;
    v6[2] = v9;
    [(SBIconView *)self setTransform:v6];
  }
}

- (void)iconInteractedWhenDisabled
{
  *(self + 554) |= 1u;
  *(self + 553) &= ~0x80u;
  [(SBIconView *)self _updateBrightness];

  [(SBIconView *)self _updateLabel];
}

- (void)setShowsDropGlow:(BOOL)glow animator:(id)animator
{
  glowCopy = glow;
  animatorCopy = animator;
  if (self->_iconImageView)
  {
    if (glowCopy && !self->_dropGlow)
    {
      v7 = [(SBIconView *)self newComponentBackgroundViewOfType:3];
      dropGlow = self->_dropGlow;
      self->_dropGlow = v7;

      [(SBIconView *)self _configureViewAsFolderIconImageView:self->_dropGlow];
      v9 = self->_dropGlow;
      v10 = *(MEMORY[0x1E695EFD0] + 16);
      v26[0] = *MEMORY[0x1E695EFD0];
      v26[1] = v10;
      v26[2] = *(MEMORY[0x1E695EFD0] + 32);
      [(UIView *)v9 setTransform:v26];
      [(UIView *)self->_dropGlow setAlpha:0.0];
      currentImageView = [(SBIconView *)self currentImageView];
      v12 = self->_dropGlow;
      [currentImageView center];
      [(UIView *)v12 setCenter:?];
      imageContainerView = [(SBIconView *)self imageContainerView];
      [imageContainerView addSubview:self->_dropGlow];

      [(SBIconView *)self updateImageContainerViewSubviewOrder];
    }

    superview = [(SBIconView *)self superview];
    [superview sendSubviewToBack:self];
  }

  else if (objc_opt_respondsToSelector())
  {
    [(SBIconViewCustomImageViewControlling *)self->_customIconImageViewController setOverlapping:glowCopy];
  }

  v15 = self->_dropGlow;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __40__SBIconView_setShowsDropGlow_animator___block_invoke;
  v23[3] = &unk_1E808D108;
  v23[4] = self;
  v25 = glowCopy;
  v16 = v15;
  v24 = v16;
  [animatorCopy addAnimations:v23];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __40__SBIconView_setShowsDropGlow_animator___block_invoke_2;
  v19[3] = &unk_1E808F030;
  v22 = glowCopy;
  v20 = v16;
  selfCopy = self;
  v17 = v16;
  [animatorCopy addCompletion:v19];
  if (glowCopy)
  {
    v18 = 4;
  }

  else
  {
    v18 = 0;
  }

  *(self + 557) = *(self + 557) & 0xFB | v18;
}

uint64_t __40__SBIconView_setShowsDropGlow_animator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setOverlapping:*(a1 + 48)];
  v2 = 0.0;
  if (*(a1 + 48))
  {
    v2 = 1.0;
  }

  [*(a1 + 40) setAlpha:v2];
  v3 = *(a1 + 40);
  if (*(a1 + 48) == 1)
  {
    CGAffineTransformMakeScale(&v6, 1.2, 1.2);
  }

  else
  {
    v4 = *(MEMORY[0x1E695EFD0] + 16);
    *&v6.a = *MEMORY[0x1E695EFD0];
    *&v6.c = v4;
    *&v6.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  return [v3 setTransform:&v6];
}

void __40__SBIconView_setShowsDropGlow_animator___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (!a2 && (*(a1 + 48) & 1) == 0)
  {
    [*(a1 + 32) removeFromSuperview];
    v3 = *(a1 + 40);
    v4 = *(v3 + 496);
    if (*(a1 + 32) == v4)
    {
      *(v3 + 496) = 0;
    }
  }
}

- (void)setShowsFocusEffect:(BOOL)effect
{
  effectCopy = effect;
  v5 = self->_focusEffectPlatterView;
  if (v5)
  {
    if (effectCopy)
    {
LABEL_3:
      v6 = objc_alloc(MEMORY[0x1E69DD278]);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __34__SBIconView_setShowsFocusEffect___block_invoke;
      v10[3] = &unk_1E808D108;
      v11 = v5;
      selfCopy = self;
      v13 = effectCopy;
      v7 = [v6 initWithDuration:2 curve:v10 animations:0.1333];
      [v7 startAnimation];

      v8 = 8;
      goto LABEL_8;
    }
  }

  else
  {
    [(SBIconView *)self setupFocusEffectPlatterView];
    v5 = self->_focusEffectPlatterView;
    if (effectCopy)
    {
      goto LABEL_3;
    }
  }

  [(SBIconFocusEffectPlatterView *)v5 removeFromSuperview];
  focusEffectPlatterView = self->_focusEffectPlatterView;
  if (v5 == focusEffectPlatterView)
  {
    self->_focusEffectPlatterView = 0;
  }

  v8 = 0;
LABEL_8:
  *(self + 553) = *(self + 553) & 0xF7 | v8;
}

uint64_t __34__SBIconView_setShowsFocusEffect___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 32);
  [*(a1 + 40) _focusEffectBoundsForFocused:*(a1 + 48) withFocusOutset:5.5];
  [v2 setBounds:?];
  v3 = *(a1 + 32);
  [*(a1 + 40) _focusEffectCenter];
  [v3 setCenter:?];
  v4 = *(a1 + 32);
  [*(a1 + 40) iconImageCornerRadius];
  [v4 _setContinuousCornerRadius:v5 + 5.5];
  v6 = *(a1 + 32);

  return [v6 layoutIfNeeded];
}

- (CGRect)_focusEffectBounds
{
  [(SBIconView *)self _focusEffectBoundsForFocused:(*(self + 553) >> 3) & 1 withFocusOutset:5.5];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)_focusEffectBoundsForFocused:(BOOL)focused withFocusOutset:(double)outset
{
  focusedCopy = focused;
  currentImageView = [(SBIconView *)self currentImageView];
  [currentImageView bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  customIconImageViewController = [(SBIconView *)self customIconImageViewController];
  if (customIconImageViewController && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [customIconImageViewController focusEffectBounds];
    v8 = v16;
    v10 = v17;
    v12 = v18;
    v14 = v19;
  }

  UIRectInsetEdges();
  if (focusedCopy)
  {
    v8 = v20;
    v10 = v21;
    v12 = v22;
    v14 = v23;
  }

  v24 = v8;
  v25 = v10;
  v26 = v12;
  v27 = v14;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGPoint)_focusEffectCenter
{
  customIconImageViewController = [(SBIconView *)self customIconImageViewController];
  if (customIconImageViewController && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [customIconImageViewController focusEffectCenter];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    currentImageView = [(SBIconView *)self currentImageView];
    [currentImageView center];
    v5 = v9;
    v7 = v10;
  }

  v11 = v5;
  v12 = v7;
  result.y = v12;
  result.x = v11;
  return result;
}

- (void)_configureViewAsFolderIconImageView:(id)view
{
  viewCopy = view;
  v5 = MEMORY[0x1E69DD250];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__SBIconView__configureViewAsFolderIconImageView___block_invoke;
  v7[3] = &unk_1E8088F18;
  v8 = viewCopy;
  selfCopy = self;
  v6 = viewCopy;
  [v5 performWithoutAnimation:v7];
}

uint64_t __50__SBIconView__configureViewAsFolderIconImageView___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) iconImageSize];
  [v2 setFrame:{0.0, 0.0, v3, v4}];
  v5 = [*(a1 + 32) layer];
  [*(a1 + 40) iconImageCornerRadius];
  [v5 setCornerRadius:?];

  v6 = [*(a1 + 32) layer];
  [v6 setCornerCurve:*MEMORY[0x1E69796E8]];

  v7 = [*(a1 + 32) layer];
  [v7 setMasksToBounds:1];

  v8 = *(a1 + 32);

  return [v8 layoutIfNeeded];
}

- (void)prepareToCrossfadeImageWithView:(id)view anchorPoint:(CGPoint)point options:(unint64_t)options
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  [(SBIconView *)self cleanupAfterCrossfade];
  contentContainerView = [(SBIconView *)self contentContainerView];
  currentImageView = [(SBIconView *)self currentImageView];
  subviews = [contentContainerView subviews];
  v12 = [subviews indexOfObject:currentImageView];

  [currentImageView removeFromSuperview];
  customIconImageViewController = self->_customIconImageViewController;
  if (!customIconImageViewController)
  {
    customIconImageViewController = self->_iconImageView;
  }

  v14 = customIconImageViewController;
  v15 = objc_opt_self();

  v16 = [[v15 alloc] initWithSource:v14 crossfadeView:viewCopy];
  crossfadeView = self->_crossfadeView;
  self->_crossfadeView = v16;

  v18 = self->_crossfadeView;
  [(SBIconView *)self _frameForImageView];
  [(SBIconImageCrossfadeView *)v18 sbf_setBoundsAndPositionFromFrame:?];
  [(SBIconImageCrossfadeView *)self->_crossfadeView setMasksCorners:options & 1];
  [(SBIconImageCrossfadeView *)self->_crossfadeView setPerformsTrueCrossfade:(options >> 1) & 1];
  [(SBIconImageCrossfadeView *)self->_crossfadeView setStretchAnchorPoint:x, y];
  [(SBIconImageCrossfadeView *)self->_crossfadeView setCrossfadeStyle:(options >> 3) & 1];
  [(SBIconView *)self updateAccessoryViewContainerIfNecessary];
  superview = [currentImageView superview];

  v20 = contentContainerView;
  if (superview == contentContainerView)
  {
    [currentImageView setHidden:1];
    v20 = contentContainerView;
  }

  [v20 insertSubview:self->_crossfadeView atIndex:v12];
  [(SBIconView *)self layoutIfNeeded];
  [(SBIconImageCrossfadeView *)self->_crossfadeView prepareGeometry];
  [(SBIconView *)self _updateJitter];
}

- (void)setCrossfadeFraction:(double)fraction
{
  [(SBIconImageCrossfadeView *)self->_crossfadeView setCrossfadeFraction:?];
  v5 = 1.0 - fraction;
  [(SBIconView *)self setIconAccessoryAlpha:v5];

  [(SBIconView *)self setIconLabelAlpha:v5];
}

- (void)setMorphFraction:(double)fraction
{
  [(SBIconImageCrossfadeView *)self->_crossfadeView setMorphFraction:fraction];
  [(SBIconView *)self setNeedsLayout];

  [(SBIconView *)self layoutIfNeeded];
}

- (void)setFolderIconImageCache:(id)cache
{
  cacheCopy = cache;
  if (self->_folderIconImageCache != cacheCopy)
  {
    v6 = cacheCopy;
    objc_storeStrong(&self->_folderIconImageCache, cache);
    [(SBIconImageView *)self->_iconImageView iconViewFolderIconImageCacheDidChange];
    cacheCopy = v6;
  }
}

- (void)setIconImageCache:(id)cache
{
  cacheCopy = cache;
  if (self->_iconImageCache != cacheCopy)
  {
    v6 = cacheCopy;
    objc_storeStrong(&self->_iconImageCache, cache);
    [(SBIconImageView *)self->_iconImageView setIconImageCache:v6];
    [(SBIconView *)self _updateFrameToIconViewSize];
    cacheCopy = v6;
  }
}

- (UIColor)accessibilityTintColor
{
  v3 = self->_accessibilityTintColor;
  if (!v3)
  {
    behaviorDelegate = [(SBIconView *)self behaviorDelegate];
    if (objc_opt_respondsToSelector())
    {
      v3 = [behaviorDelegate accessibilityTintColorForIconView:self];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

+ (id)draggedItemBundleIdentifiersInDrag:(id)drag
{
  v20 = *MEMORY[0x1E69E9840];
  dragCopy = drag;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  items = [dragCopy items];
  v6 = [items countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(items);
        }

        localObject = [*(*(&v15 + 1) + 8 * i) localObject];
        v11 = objc_opt_self();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          uniqueIdentifier = [localObject uniqueIdentifier];
          if (uniqueIdentifier)
          {
            [v4 addObject:uniqueIdentifier];
          }
        }
      }

      v7 = [items countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

- (int64_t)draggingStartLocation
{
  location = [(SBIconView *)self location];
  if (SBIconLocationGroupContainsLocation(@"SBIconLocationGroupFloatingDock", location))
  {
    v4 = 6;
  }

  else if (SBIconLocationGroupContainsLocation(@"SBIconLocationGroupRoot", location) & 1) != 0 || ([location isEqualToString:@"SBIconLocationFolder"] & 1) != 0 || (SBIconLocationGroupContainsLocation(@"SBIconLocationGroupDock", location))
  {
    v4 = 1;
  }

  else if ([location isEqualToString:@"SBIconLocationStackConfiguration"])
  {
    v4 = 2;
  }

  else if ([location isEqualToString:@"SBIconLocationAddWidgetSheet"])
  {
    v4 = 3;
  }

  else if (SBIconLocationGroupContainsLocation(@"SBIconLocationGroupAppLibrary", location))
  {
    v4 = 4;
  }

  else if (SBIconLocationGroupContainsLocation(@"SBIconLocationGroupTodayView", location))
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  dragDelegate = [(SBIconView *)self dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [dragDelegate iconView:self draggingStartLocationWithProposedStartLocation:v4];
  }

  return v4;
}

- (id)draggingLaunchActions
{
  dragDelegate = [(SBIconView *)self dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [dragDelegate launchActionsForIconView:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)draggingLaunchURL
{
  dragDelegate = [(SBIconView *)self dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [dragDelegate launchURLForIconView:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)dragPreviewForItem:(id)item session:(id)session
{
  itemCopy = item;
  sessionCopy = session;
  v8 = objc_alloc_init(MEMORY[0x1E69DC9A0]);
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v8 setBackgroundColor:clearColor];

  dragDelegate = [(SBIconView *)self dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [dragDelegate iconView:self dragPreviewForItem:itemCopy session:sessionCopy previewParameters:v8];
  }

  else
  {
    [(SBIconView *)self defaultDragPreviewWithParameters:v8];
  }
  v11 = ;

  return v11;
}

- (id)defaultDragPreview
{
  v3 = objc_alloc_init(MEMORY[0x1E69DC9A0]);
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:clearColor];

  v5 = [(SBIconView *)self defaultDragPreviewWithParameters:v3];

  return v5;
}

- (id)defaultDragPreviewWithParameters:(id)parameters
{
  parametersCopy = parameters;
  customIconImageViewController = [(SBIconView *)self customIconImageViewController];
  [(SBIconView *)self iconImageInfo];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (customIconImageViewController)
  {
    if (objc_opt_respondsToSelector())
    {
      snapshotView = [customIconImageViewController snapshotView];
      [(SBIconView *)self _setTemporarySnapshotViewForDragPreview:snapshotView];
      [snapshotView _setContinuousCornerRadius:v11];
      [snapshotView setClipsToBounds:1];
    }

    else
    {
      snapshotView = [customIconImageViewController view];
    }

    if (objc_opt_respondsToSelector())
    {
      [customIconImageViewController snapshotViewCenter];
      v22 = v21;
      v24 = v23;
      view = [customIconImageViewController view];
      [(SBIconView *)self convertPoint:view fromView:v22, v24];
      v16 = v26;
      v18 = v27;
    }

    else
    {
      [(SBIconView *)self iconImageCenter];
      v16 = v28;
      v18 = v29;
    }

    v30 = objc_opt_respondsToSelector();
    v20 = 1.0;
    if (v30)
    {
      [customIconImageViewController snapshotViewScaleFactor];
      v20 = v31;
    }

    if (objc_opt_respondsToSelector())
    {
      snapshotViewVisiblePath = [customIconImageViewController snapshotViewVisiblePath];
    }

    else
    {
      snapshotViewVisiblePath = 0;
    }

    v19 = v30 ^ 1;
    if (objc_opt_respondsToSelector())
    {
      [customIconImageViewController willUsePreviewParameters:parametersCopy];
    }

    if (snapshotViewVisiblePath)
    {
      v33 = snapshotViewVisiblePath;
      v34 = v33;
      goto LABEL_19;
    }
  }

  else
  {
    snapshotView = objc_alloc_init([(SBIconView *)self expectedIconImageViewClass]);
    [(SBIconView *)self _configureIconImageView:snapshotView];
    icon = [(SBIconView *)self icon];
    location = [(SBIconView *)self location];
    [snapshotView setIcon:icon location:location animated:0];

    [(SBIconView *)self iconImageCenter];
    v16 = v15;
    v18 = v17;
    v19 = 1;
    v20 = 1.0;
  }

  v33 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, v7, v9, v11}];
  v34 = 0;
LABEL_19:
  [parametersCopy setVisiblePath:v33];
  memset(&v41, 0, sizeof(v41));
  CGAffineTransformMakeScale(&v41, v20, v20);
  if (v19)
  {
    [(SBIconView *)self effectiveIconContentScale];
    v39 = v41;
    CGAffineTransformScale(&v40, &v39, v35, v35);
    v41 = v40;
  }

  v40 = v41;
  [snapshotView setTransform:&v40];
  v36 = [objc_alloc(MEMORY[0x1E69DC9A8]) initWithContainer:self center:{v16, v18}];
  v37 = [objc_alloc(MEMORY[0x1E69DD068]) initWithView:snapshotView parameters:parametersCopy target:v36];

  return v37;
}

- (id)dragItems
{
  v9[1] = *MEMORY[0x1E69E9840];
  icon = [(SBIconView *)self icon];
  v4 = icon;
  if (icon && [icon canParticipateInDrags] && !-[SBIconView isPaused](self, "isPaused"))
  {
    dragDelegate = [(SBIconView *)self dragDelegate];
    if (objc_opt_respondsToSelector())
    {
      v5 = [dragDelegate dragItemsForIconView:self];
    }

    else
    {
      v8 = SBHIconDragItemWithIconAndIconView(v4, self, *MEMORY[0x1E69D4390]);
      v9[0] = v8;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    }
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

+ (id)dragContextForDragItem:(id)item
{
  itemProvider = [item itemProvider];
  teamData = [itemProvider teamData];
  if (teamData && (v5 = MEMORY[0x1E696ACD0], objc_opt_self(), v6 = objc_claimAutoreleasedReturnValue(), [v5 unarchivedObjectOfClass:v6 fromData:teamData error:0], v7 = objc_claimAutoreleasedReturnValue(), v6, v7))
  {
    v8 = objc_alloc(MEMORY[0x1E69D4190]);
    uniqueIdentifier = [v7 uniqueIdentifier];
    v10 = [v8 initWithUniqueIdentifier:uniqueIdentifier withLaunchActions:0 startLocation:{SBHAppDragLocalContextStartLocationToSBSLocation(objc_msgSend(v7, "startLocation"))}];

    applicationBundleIdentifier = [v7 applicationBundleIdentifier];
    [v10 setApplicationBundleIdentifier:applicationBundleIdentifier];

    launchURL = [v7 launchURL];
    [v10 setLaunchURL:launchURL];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)cleanUpAfterDropAnimation
{
  [(SBIconView *)self setGrabbed:0];
  [(SBIconView *)self setDragging:0 updateImmediately:1];
  [(SBIconView *)self _setTemporarySnapshotViewForDragPreview:0];

  [(SBIconView *)self _updateIconImageViewAnimated:0];
}

- (void)cancelDrag
{
  dragInteraction = [(SBIconView *)self dragInteraction];
  [dragInteraction _cancelDrag];
}

- (void)cancelDragLift
{
  dragInteraction = [(SBIconView *)self dragInteraction];
  [dragInteraction _cancelLift];
}

- (id)dragDelegate
{
  overrideDraggingDelegate = [(SBIconView *)self overrideDraggingDelegate];
  v4 = overrideDraggingDelegate;
  if (overrideDraggingDelegate)
  {
    v5 = overrideDraggingDelegate;
  }

  else
  {
    delegate = [(SBIconView *)self delegate];
    v5 = delegate;
    if (objc_opt_respondsToSelector())
    {
      v5 = [delegate draggingDelegateForIconView:self];
    }
  }

  return v5;
}

- (BOOL)canBeginDrags
{
  dragDelegate = [(SBIconView *)self dragDelegate];
  v4 = (objc_opt_respondsToSelector() & 1) == 0 || [dragDelegate iconViewCanBeginDrags:self];

  return v4;
}

- (id)matchingIconViewWithConfigurationOptions:(unint64_t)options
{
  v5 = objc_alloc(objc_opt_class());
  listLayoutProvider = [(SBIconView *)self listLayoutProvider];
  v7 = [v5 initWithConfigurationOptions:options listLayoutProvider:listLayoutProvider];

  v8 = MEMORY[0x1E69DD250];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__SBIconView_matchingIconViewWithConfigurationOptions___block_invoke;
  v13[3] = &unk_1E8088F18;
  v13[4] = self;
  v9 = v7;
  v14 = v9;
  [v8 performWithoutAnimation:v13];
  v10 = v14;
  v11 = v9;

  return v9;
}

uint64_t __55__SBIconView_matchingIconViewWithConfigurationOptions___block_invoke(uint64_t a1)
{
  [*(a1 + 32) configureMatchingIconView:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  [v2 frame];

  return [v2 setFrame:{v3, v4}];
}

- (id)matchingIconViewByAddingConfigurationOptions:(unint64_t)options removingConfigurationOptions:(unint64_t)configurationOptions
{
  v5 = ([(SBIconView *)self configurationOptions]| options) & ~configurationOptions;

  return [(SBIconView *)self matchingIconViewWithConfigurationOptions:v5];
}

- (id)supportedIconGridSizeClasses
{
  icon = [(SBIconView *)self icon];
  supportedGridSizeClasses = [icon supportedGridSizeClasses];

  behaviorDelegate = [(SBIconView *)self behaviorDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [behaviorDelegate supportedGridSizeClassesForIconView:self];
    v7 = [supportedGridSizeClasses gridSizeClassSetByIntersectingWithGridSizeClassSet:v6];

    supportedGridSizeClasses = v7;
  }

  return supportedGridSizeClasses;
}

- (id)supportedIconGridSizeClassesForResize
{
  icon = [(SBIconView *)self icon];
  supportedGridSizeClasses = [icon supportedGridSizeClasses];

  behaviorDelegate = [(SBIconView *)self behaviorDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [behaviorDelegate supportedIconGridSizeClassesForResizeOfIconView:self];
    v7 = [supportedGridSizeClasses gridSizeClassSetByUnioningWithGridSizeClassSet:v6];

    supportedGridSizeClasses = v7;
  }

  return supportedGridSizeClasses;
}

- (SBHIconGridSizeClassDomain)gridSizeClassDomain
{
  behaviorDelegate = [(SBIconView *)self behaviorDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([behaviorDelegate gridSizeClassDomainForIconView:self], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = +[SBHIconGridSizeClassDomain globalDomain];
  }

  return v4;
}

- (id)iconGridSizeClassSizes
{
  listLayout = [(SBIconView *)self listLayout];
  v4 = SBHIconListLayoutIconGridSizeClassSizes(listLayout, [(SBIconView *)self orientation]);

  return v4;
}

- (void)removeAssertion:(id)assertion
{
  assertionCopy = assertion;
  assertionType = [assertionCopy assertionType];
  if (assertionType > 2)
  {
    if (assertionType == 3)
    {
      assertionType = [(SBIconView *)self removeForbidContextMenusAssertion:assertionCopy];
    }

    else
    {
      v5 = assertionCopy;
      if (assertionType == 4)
      {
        assertionType = [(SBIconView *)self removeExtendResizeFinishAssertion:assertionCopy];
      }

      else
      {
        if (assertionType != 5)
        {
          goto LABEL_15;
        }

        assertionType = [(SBIconView *)self removeDisallowGlassGroupingAssertion:assertionCopy];
      }
    }
  }

  else if (assertionType)
  {
    v5 = assertionCopy;
    if (assertionType == 1)
    {
      assertionType = [(SBIconView *)self removeForbidAccessoryUpdatesAssertion:assertionCopy];
    }

    else
    {
      if (assertionType != 2)
      {
        goto LABEL_15;
      }

      assertionType = [(SBIconView *)self removeBorrowedIconImageViewAssertion:assertionCopy];
    }
  }

  else
  {
    assertionType = [(SBIconView *)self removeDroppingAssertion:assertionCopy];
  }

  v5 = assertionCopy;
LABEL_15:

  MEMORY[0x1EEE66BB8](assertionType, v5);
}

- (void)purgeCachedEditingViewData
{
  v3 = *(self + 552);
  v4 = (v3 >> 2) & 3;
  if (v4)
  {
    if (v4 == 2)
    {
      *(self + 552) = v3 & 0xF3 | 4;
    }
  }

  else
  {
    [(SBCloseBoxView *)self->_closeBox removeFromSuperview];
    closeBox = self->_closeBox;
    self->_closeBox = 0;
  }
}

- (id)dropDelegate
{
  delegate = [(SBIconView *)self delegate];
  v4 = delegate;
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate droppingDelegateForIconView:self];
  }

  return v4;
}

- (id)claimBindingsForDropSession:(id)session
{
  sessionCopy = session;
  array = [MEMORY[0x1E695DF70] array];
  mEMORY[0x1E69DC9B0] = [MEMORY[0x1E69DC9B0] sharedInstance];
  v6 = [mEMORY[0x1E69DC9B0] sessionForDropSession:sessionCopy];

  v7 = sessionCopy;
  v8 = [v7 _dataOwner] == 2 || objc_msgSend(v7, "_dataOwner") == 3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__SBIconView_claimBindingsForDropSession___block_invoke;
  aBlock[3] = &unk_1E808EF70;
  v16 = v7;
  v17 = v6;
  v9 = array;
  v18 = v9;
  v10 = v6;
  v11 = v7;
  v12 = _Block_copy(aBlock);
  v12[2](v12, v8);
  v12[2](v12, !v8);
  v13 = v9;

  return v9;
}

void __42__SBIconView_claimBindingsForDropSession___block_invoke(uint64_t a1, unsigned int a2)
{
  v2 = a1;
  v64 = *MEMORY[0x1E69E9840];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = [*(a1 + 32) items];
  v31 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
  if (v31)
  {
    v30 = *v54;
    v3 = 0x1E6963000uLL;
    v33 = v2;
    do
    {
      v4 = 0;
      do
      {
        if (*v54 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v4;
        v5 = *(*(&v53 + 1) + 8 * v4);
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v6 = [v5 itemProvider];
        v7 = [v6 registeredTypeIdentifiers];

        v36 = v7;
        v8 = [v7 countByEnumeratingWithState:&v49 objects:v62 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v50;
          v34 = *v50;
          do
          {
            v11 = 0;
            v35 = v9;
            do
            {
              if (*v50 != v10)
              {
                objc_enumerationMutation(v36);
              }

              v12 = *(*(&v49 + 1) + 8 * v11);
              v47 = 0u;
              v48 = 0u;
              v13 = [*(v2 + 40) info];
              v14 = v13;
              if (v13)
              {
                [v13 auditToken];
              }

              else
              {
                v47 = 0u;
                v48 = 0u;
              }

              v15 = [*(v3 + 1624) documentProxyForName:0 type:v12 MIMEType:0 isContentManaged:a2 sourceAuditToken:&v47];
              v46 = 0;
              v16 = [v15 availableClaimBindingsForMode:2 error:&v46];
              v17 = v46;
              if (v16)
              {
                v38 = v17;
                v39 = v15;
                v40 = v16;
                v41 = v11;
                [*(v2 + 48) addObjectsFromArray:v16];
                v44 = 0u;
                v45 = 0u;
                v42 = 0u;
                v43 = 0u;
                v18 = *(v2 + 48);
                v19 = [v18 countByEnumeratingWithState:&v42 objects:v61 count:16];
                if (v19)
                {
                  v20 = v19;
                  v21 = *v43;
                  do
                  {
                    for (i = 0; i != v20; ++i)
                    {
                      if (*v43 != v21)
                      {
                        objc_enumerationMutation(v18);
                      }

                      v23 = *(*(&v42 + 1) + 8 * i);
                      v24 = SBLogCommon();
                      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                      {
                        v25 = [v23 bundleRecord];
                        v26 = [v25 bundleIdentifier];
                        *buf = 138412546;
                        v58 = v26;
                        v59 = 2112;
                        v60 = v12;
                        _os_log_impl(&dword_1BEB18000, v24, OS_LOG_TYPE_DEFAULT, "Claim: %@ %@", buf, 0x16u);
                      }
                    }

                    v20 = [v18 countByEnumeratingWithState:&v42 objects:v61 count:16];
                  }

                  while (v20);
                  v2 = v33;
                  v10 = v34;
                  v3 = 0x1E6963000;
                  v9 = v35;
                }

                v27 = v38;
                v15 = v39;
LABEL_26:

                v16 = v40;
                v11 = v41;
                goto LABEL_27;
              }

              v27 = v17;
              if (v17)
              {
                v40 = 0;
                v41 = v11;
                v18 = SBLogCommon();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v58 = v27;
                  _os_log_impl(&dword_1BEB18000, v18, OS_LOG_TYPE_DEFAULT, "Error looking up LS claim bindings while examining types for drop. Error: %@", buf, 0xCu);
                }

                goto LABEL_26;
              }

LABEL_27:

              ++v11;
            }

            while (v11 != v9);
            v28 = [v36 countByEnumeratingWithState:&v49 objects:v62 count:16];
            v9 = v28;
          }

          while (v28);
        }

        v4 = v32 + 1;
      }

      while (v32 + 1 != v31);
      v31 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
    }

    while (v31);
  }
}

- (id)URLsForDropSession:(id)session
{
  v75 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  icon = [(SBIconView *)self icon];
  v6 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v41 = icon;
    v8 = icon;
    mEMORY[0x1E69DC9B0] = [MEMORY[0x1E69DC9B0] sharedInstance];
    v42 = sessionCopy;
    v48 = [mEMORY[0x1E69DC9B0] sessionForDropSession:sessionCopy];

    v10 = MEMORY[0x1E6963620];
    v40 = v8;
    applicationBundleID = [v8 applicationBundleID];
    v12 = [v10 bundleRecordWithBundleIdentifier:applicationBundleID allowPlaceholder:0 error:0];

    array = [MEMORY[0x1E695DF70] array];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v39 = v12;
    claimRecords = [v12 claimRecords];
    v15 = [claimRecords countByEnumeratingWithState:&v67 objects:v74 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v68;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v68 != v17)
          {
            objc_enumerationMutation(claimRecords);
          }

          v19 = *(*(&v67 + 1) + 8 * i);
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          uRLSchemes = [v19 URLSchemes];
          v21 = [uRLSchemes countByEnumeratingWithState:&v63 objects:v73 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v64;
            do
            {
              for (j = 0; j != v22; ++j)
              {
                if (*v64 != v23)
                {
                  objc_enumerationMutation(uRLSchemes);
                }

                [array addObject:*(*(&v63 + 1) + 8 * j)];
              }

              v22 = [uRLSchemes countByEnumeratingWithState:&v63 objects:v73 count:16];
            }

            while (v22);
          }
        }

        v16 = [claimRecords countByEnumeratingWithState:&v67 objects:v74 count:16];
      }

      while (v16);
    }

    array2 = [MEMORY[0x1E695DF70] array];
    if ([array count])
    {
      v25 = dispatch_group_create();
      v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v47 = dispatch_queue_create("com.apple.SpringBoard.SBIconView.URLsForDropSession.serial-queue", v26);

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      obj = [v42 items];
      v45 = [obj countByEnumeratingWithState:&v59 objects:v72 count:16];
      if (v45)
      {
        v44 = *v60;
        v27 = *MEMORY[0x1E6983030];
        do
        {
          v28 = 0;
          do
          {
            if (*v60 != v44)
            {
              objc_enumerationMutation(obj);
            }

            v46 = v28;
            v29 = *(*(&v59 + 1) + 8 * v28);
            v55 = 0u;
            v56 = 0u;
            v57 = 0u;
            v58 = 0u;
            itemProvider = [v29 itemProvider];
            registeredTypeIdentifiers = [itemProvider registeredTypeIdentifiers];

            v32 = [registeredTypeIdentifiers countByEnumeratingWithState:&v55 objects:v71 count:16];
            if (v32)
            {
              v33 = v32;
              v34 = *v56;
              do
              {
                for (k = 0; k != v33; ++k)
                {
                  if (*v56 != v34)
                  {
                    objc_enumerationMutation(registeredTypeIdentifiers);
                  }

                  v36 = [MEMORY[0x1E6982C40] typeWithIdentifier:*(*(&v55 + 1) + 8 * k)];
                  if (v36 && [v27 conformsToType:v36])
                  {
                    dispatch_group_enter(v25);
                    v50[0] = MEMORY[0x1E69E9820];
                    v50[1] = 3221225472;
                    v50[2] = __33__SBIconView_URLsForDropSession___block_invoke;
                    v50[3] = &unk_1E808F058;
                    v51 = array;
                    v52 = v47;
                    v53 = array2;
                    v54 = v25;
                    [v48 loadURLForItem:v29 completion:v50];
                  }
                }

                v33 = [registeredTypeIdentifiers countByEnumeratingWithState:&v55 objects:v71 count:16];
              }

              while (v33);
            }

            v28 = v46 + 1;
          }

          while (v46 + 1 != v45);
          v45 = [obj countByEnumeratingWithState:&v59 objects:v72 count:16];
        }

        while (v45);
      }

      v37 = dispatch_time(0, 3000000000);
      dispatch_group_wait(v25, v37);
    }

    icon = v41;
    sessionCopy = v42;
  }

  else
  {
    array2 = MEMORY[0x1E695E0F0];
  }

  return array2;
}

void __33__SBIconView_URLsForDropSession___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = [v3 scheme];
    LODWORD(v5) = [v5 containsObject:v6];

    if (v5)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __33__SBIconView_URLsForDropSession___block_invoke_2;
      v8[3] = &unk_1E8088F18;
      v7 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = v4;
      dispatch_sync(v7, v8);
    }
  }

  dispatch_group_leave(*(a1 + 56));
}

- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session
{
  v26 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  icon = [(SBIconView *)self icon];
  if ([icon isFileStackIcon])
  {
    v7 = 1;
  }

  else if ([icon isLeafIcon])
  {
    applicationBundleID = [icon applicationBundleID];
    if ([applicationBundleID length])
    {
      v20 = sessionCopy;
      [(SBIconView *)self claimBindingsForDropSession:sessionCopy];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v9 = v24 = 0u;
      v10 = [(NSArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v22;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(v9);
            }

            bundleRecord = [*(*(&v21 + 1) + 8 * i) bundleRecord];
            bundleIdentifier = [bundleRecord bundleIdentifier];
            v16 = [applicationBundleID isEqualToString:bundleIdentifier];

            if (v16)
            {
              v7 = 1;
              v17 = v9;
              sessionCopy = v20;
              goto LABEL_17;
            }
          }

          v11 = [(NSArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      sessionCopy = v20;
      v17 = [(SBIconView *)self URLsForDropSession:v20];
      if ([(NSArray *)v17 count])
      {
        droppingURLs = self->_droppingURLs;
        self->_droppingURLs = v17;
        v7 = 1;
        v17 = droppingURLs;
      }

      else
      {
        v7 = 0;
      }

LABEL_17:
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update
{
  v4 = [objc_alloc(MEMORY[0x1E69DC9C0]) initWithDropOperation:2];

  return v4;
}

- (void)dropInteraction:(id)interaction sessionDidEnter:(id)enter
{
  enterCopy = enter;
  [(SBIconView *)self setHighlighted:1];
  dropDelegate = [(SBIconView *)self dropDelegate];
  if (objc_opt_respondsToSelector())
  {
    [dropDelegate iconView:self dropSessionDidEnter:enterCopy];
  }
}

- (void)dropInteraction:(id)interaction sessionDidExit:(id)exit
{
  exitCopy = exit;
  [(SBIconView *)self setHighlighted:0];
  droppingURLs = self->_droppingURLs;
  self->_droppingURLs = 0;

  dropDelegate = [(SBIconView *)self dropDelegate];
  if (objc_opt_respondsToSelector())
  {
    [dropDelegate iconView:self dropSessionDidExit:exitCopy];
  }
}

- (void)dropInteraction:(id)interaction performDrop:(id)drop
{
  v26 = *MEMORY[0x1E69E9840];
  dropCopy = drop;
  overrideDroppingDelegate = [(SBIconView *)self overrideDroppingDelegate];
  if (overrideDroppingDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [overrideDroppingDelegate iconView:self performDrop:dropCopy];
  }

  else if ([(NSArray *)self->_droppingURLs count])
  {
    v19 = dropCopy;
    v7 = objc_alloc_init(SBHIconLaunchContext);
    v8 = [MEMORY[0x1E695DFA8] set];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = self->_droppingURLs;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        v13 = 0;
        do
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [objc_alloc(MEMORY[0x1E69DCD00]) initWithURL:*(*(&v21 + 1) + 8 * v13)];
          [v8 addObject:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    [(SBHIconLaunchContext *)v7 setActions:v8];
    [(SBHIconLaunchContext *)v7 setIconView:self];
    icon = [(SBIconView *)self icon];
    location = [(SBIconView *)self location];
    [icon launchFromLocation:location context:v7];

    dropCopy = v19;
  }

  else
  {
    mEMORY[0x1E69DC9B0] = [MEMORY[0x1E69DC9B0] sharedInstance];
    v18 = [mEMORY[0x1E69DC9B0] sessionForDropSession:dropCopy];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __42__SBIconView_dropInteraction_performDrop___block_invoke;
    v20[3] = &unk_1E808F080;
    v20[4] = self;
    [v18 requestDragContinuationEndpointWithCompletion:v20];
  }
}

void __42__SBIconView_dropInteraction_performDrop___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    BSDispatchMain();
  }
}

void __42__SBIconView_dropInteraction_performDrop___block_invoke_2(uint64_t a1)
{
  v6 = objc_alloc_init(SBHIconLaunchContext);
  v2 = [objc_alloc(MEMORY[0x1E69DCCF8]) initWithDragContinuationEndpoint:*(a1 + 32)];
  v3 = [MEMORY[0x1E695DFD8] setWithObject:v2];
  [(SBHIconLaunchContext *)v6 setActions:v3];

  [(SBHIconLaunchContext *)v6 setIconView:*(a1 + 40)];
  v4 = [*(a1 + 40) icon];
  v5 = [*(a1 + 40) location];
  [v4 launchFromLocation:v5 context:v6];
}

- (void)dropInteraction:(id)interaction sessionDidEnd:(id)end
{
  [(SBIconView *)self setHighlighted:0, end];
  droppingURLs = self->_droppingURLs;
  self->_droppingURLs = 0;
}

- (int64_t)_dropInteraction:(id)interaction dataOwnerForSession:(id)session
{
  v5 = [(SBIconView *)self icon:interaction];
  if ([v5 isLeafIcon])
  {
    _visiblyActiveDataSource = [(SBIconView *)self _visiblyActiveDataSource];
    if (objc_opt_respondsToSelector())
    {
      v7 = [_visiblyActiveDataSource dataOwnershipRoleAsDragDropTargetForIcon:v5];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  if ([(SBIconView *)self canBeginDrags:interaction])
  {
    dragItems = [(SBIconView *)self dragItems];
  }

  else
  {
    dragItems = MEMORY[0x1E695E0F0];
  }

  return dragItems;
}

- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session
{
  animatorCopy = animator;
  sessionCopy = session;
  [(SBIconView *)self setLiftingDragSession:sessionCopy];
  dragDelegate = [(SBIconView *)self dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [dragDelegate iconView:self willAnimateDragLiftWithAnimator:animatorCopy session:sessionCopy];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__SBIconView_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke;
  v13[3] = &unk_1E8088C90;
  v13[4] = self;
  [animatorCopy addAnimations:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__SBIconView_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke_2;
  v11[3] = &unk_1E808A040;
  v11[4] = self;
  v12 = sessionCopy;
  v10 = sessionCopy;
  [animatorCopy addCompletion:v11];
}

uint64_t __66__SBIconView_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isShowingContextMenu] & 1) == 0)
  {
    [*(a1 + 32) _setForcingIconContentScalingEnabled:1];
  }

  [*(a1 + 32) setDragLifted:1];
  [*(a1 + 32) _updateIconContentScale];
  v2 = *(a1 + 32);

  return [v2 _updateAllComponentAlphas];
}

uint64_t __66__SBIconView_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) liftingDragSession];
  v3 = *(a1 + 40);

  if (v2 == v3)
  {
    if (([*(a1 + 32) isShowingContextMenu] & 1) == 0)
    {
      [*(a1 + 32) _setForcingIconContentScalingEnabled:0];
    }

    [*(a1 + 32) setLiftingDragSession:0];
    [*(a1 + 32) setDragLifted:0];
  }

  [*(a1 + 32) _updateIconContentScale];
  v4 = *(a1 + 32);

  return [v4 _updateAllComponentAlphas];
}

- (void)_dragInteraction:(id)interaction liftAnimationDidChangeDirection:(int64_t)direction
{
  v6 = direction != 1;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __63__SBIconView__dragInteraction_liftAnimationDidChangeDirection___block_invoke;
  v11 = &unk_1E80897D8;
  selfCopy = self;
  v13 = direction == 1;
  [MEMORY[0x1E69DD250] animateWithDuration:&v8 animations:0.225];
  [(SBIconView *)self setDragLifted:v6, v8, v9, v10, v11];
  dragDelegate = [(SBIconView *)self dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [dragDelegate iconView:self dragLiftAnimationDidChangeDirection:direction];
  }
}

- (id)dragInteraction:(id)interaction itemsForAddingToSession:(id)session withTouchAtPoint:(CGPoint)point
{
  interactionCopy = interaction;
  sessionCopy = session;
  icon = self->_icon;
  if (icon && ![(SBIcon *)icon canBeAddedToMultiItemDrag])
  {
    dragItems = MEMORY[0x1E695E0F0];
  }

  else
  {
    dragDelegate = [(SBIconView *)self dragDelegate];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ![dragDelegate iconView:self canAddDragItemsToSession:sessionCopy])
    {
      dragItems = MEMORY[0x1E695E0F0];
    }

    else
    {
      dragItems = [(SBIconView *)self dragItems];
    }
  }

  return dragItems;
}

- (void)dragInteraction:(id)interaction session:(id)session willAddItems:(id)items forInteraction:(id)forInteraction
{
  sessionCopy = session;
  itemsCopy = items;
  forInteractionCopy = forInteraction;
  dragInteraction = [(SBIconView *)self dragInteraction];

  if (dragInteraction == forInteractionCopy)
  {
    [(SBIconView *)self setAddedToDrag:1];
    dragDelegate = [(SBIconView *)self dragDelegate];
    if (objc_opt_respondsToSelector())
    {
      [dragDelegate iconView:self willAddDragItems:itemsCopy toSession:sessionCopy];
    }
  }
}

- (void)dragSession:(id)session didEndWithOperation:(unint64_t)operation
{
  v19 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  [(SBIconView *)self setDragging:0 updateImmediately:1];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(NSHashTable *)self->_observers copy];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 iconViewDidEndDrag:self];
        }

        if (objc_opt_respondsToSelector())
        {
          [v12 iconView:self dragSession:sessionCopy didEndWithOperation:operation];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  dragDelegate = [(SBIconView *)self dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [dragDelegate iconView:self didEndDragSession:sessionCopy withOperation:operation];
  }

  [(SBIconView *)self endPrefetchingDisplayedIconLayerForReason:@"icon view drag"];
}

- (void)dragSession:(id)session willEndWithOperation:(unint64_t)operation
{
  v19 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(NSHashTable *)self->_observers copy];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 iconView:self dragSession:sessionCopy willEndWithOperation:operation];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  dragDelegate = [(SBIconView *)self dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [dragDelegate iconView:self session:sessionCopy willEndWithOperation:operation];
  }
}

- (void)dragSessionWillBegin:(id)begin
{
  v17 = *MEMORY[0x1E69E9840];
  beginCopy = begin;
  [(SBIconView *)self setDragging:1 updateImmediately:1];
  [(SBIconView *)self beginPrefetchingDisplayedIconLayerForReason:@"icon view drag"];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSHashTable *)self->_observers copy];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 iconViewWillBeginDrag:self];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  dragDelegate = [(SBIconView *)self dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [dragDelegate iconViewWillBeginDrag:self session:beginCopy];
  }
}

- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default
{
  v35 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  defaultCopy = default;
  [(SBIconView *)self setCancelingDrag:1];
  dragDelegate = [(SBIconView *)self dragDelegate];
  selfCopy = self;
  v10 = selfCopy;
  if (objc_opt_respondsToSelector())
  {
    v10 = [dragDelegate iconViewWillCancelDrag:selfCopy];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = [(NSHashTable *)selfCopy->_observers copy];
  v12 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v31;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v16 iconView:selfCopy willCancelDragForItem:itemCopy];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v13);
  }

  superview = [v10 superview];
  v18 = superview;
  if (v10 && superview)
  {
    dropContainerView = [v10 dropContainerView];
    v20 = objc_alloc(MEMORY[0x1E69DC9A8]);
    [v10 center];
    [dropContainerView convertPoint:v18 fromView:?];
    v21 = *(MEMORY[0x1E695EFD0] + 16);
    v29[0] = *MEMORY[0x1E695EFD0];
    v29[1] = v21;
    v29[2] = *(MEMORY[0x1E695EFD0] + 32);
    v22 = [v20 initWithContainer:dropContainerView center:v29 transform:?];
    v23 = defaultCopy;
    v24 = [defaultCopy retargetedPreviewWithTarget:v22];
    [v24 set_springboardPlatterStyle:1];
    dragDelegate2 = [(SBIconView *)selfCopy dragDelegate];

    if (objc_opt_respondsToSelector())
    {
      [dragDelegate2 iconView:selfCopy willUsePreviewForCancelling:v24 targetIconView:v10];
    }
  }

  else
  {
    dropContainerView = [itemCopy localObject];
    objc_opt_class();
    v23 = defaultCopy;
    if (objc_opt_isKindOfClass())
    {
      [dropContainerView setCancelsViaScaleAndFade:1];
    }

    v24 = 0;
    dragDelegate2 = v27;
  }

  return v24;
}

- (void)dragInteraction:(id)interaction item:(id)item willAnimateCancelWithAnimator:(id)animator
{
  itemCopy = item;
  animatorCopy = animator;
  dragDelegate = [(SBIconView *)self dragDelegate];
  if (objc_opt_respondsToSelector())
  {
    [dragDelegate iconView:self item:itemCopy willAnimateDragCancelWithAnimator:animatorCopy];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__SBIconView_dragInteraction_item_willAnimateCancelWithAnimator___block_invoke;
  v10[3] = &unk_1E8089000;
  v10[4] = self;
  [animatorCopy addCompletion:v10];
}

- (BOOL)_dragInteraction:(id)interaction canExcludeCompetingGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  tapGestureRecognizer = [(SBIconView *)self tapGestureRecognizer];

  if (tapGestureRecognizer == recognizerCopy)
  {
    v7 = ![(SBIconView *)self shouldTapGestureRecognizeAlongsideDragInteractionGestures];
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (BOOL)_dragInteraction:(id)interaction competingGestureRecognizerShouldDelayLift:(id)lift
{
  liftCopy = lift;
  actionTapGestureRecognizer = [(SBCloseBoxView *)self->_closeBox actionTapGestureRecognizer];
  if (actionTapGestureRecognizer == liftCopy)
  {
    v8 = 1;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      actionTapGestureRecognizer2 = [(SBIconAccessoryView *)self->_accessoryView actionTapGestureRecognizer];
    }

    else
    {
      actionTapGestureRecognizer2 = 0;
    }

    if (actionTapGestureRecognizer2 == liftCopy)
    {
      v8 = 1;
    }

    else
    {
      resizingGestureRecognizer = [(SBHIconResizeHandle *)self->_resizeHandle resizingGestureRecognizer];
      v8 = resizingGestureRecognizer == liftCopy;
    }
  }

  return v8;
}

- (id)_dragInteraction:(id)interaction sessionPropertiesForSession:(id)session
{
  v5 = [(SBIconView *)self dragDelegate:interaction];
  v6 = objc_alloc_init(MEMORY[0x1E69DD480]);
  if ([(SBIconView *)self dragsSupportSystemDragsByDefault])
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [v5 dragsSupportSystemDragsForIconView:self];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  [v6 set_supportsSystemDrag:v7];
  [v6 set_confineToLocalDevice:1];

  return v6;
}

- (void)didMoveToSuperview
{
  v5.receiver = self;
  v5.super_class = SBIconView;
  [(SBIconView *)&v5 didMoveToSuperview];
  if ([(SBIconView *)self didDelayInsertingCustomImageViewDueToParentController])
  {
    [(SBIconView *)self setDidDelayInsertingCustomImageViewDueToParentController:0];
    customIconImageViewController = [(SBIconView *)self customIconImageViewController];
    view = [customIconImageViewController view];
    if (view)
    {
      [(SBIconView *)self _insertIconImageView:view];
    }
  }
}

- (void)willMoveToWindow:(id)window
{
  v5.receiver = self;
  v5.super_class = SBIconView;
  windowCopy = window;
  [(SBIconView *)&v5 willMoveToWindow:windowCopy];
  [(SBIconView *)self updateWindowSceneUserInterfaceStyleChangeRegistrationForWindow:windowCopy, v5.receiver, v5.super_class];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v21 = *MEMORY[0x1E69E9840];
  beganCopy = began;
  eventCopy = event;
  v14.receiver = self;
  v14.super_class = SBIconView;
  [(SBIconView *)&v14 touchesBegan:beganCopy withEvent:eventCopy];
  if (_touchesContainNonIndirectTouch(beganCopy))
  {
    *(self + 555) |= 1u;
    date = [MEMORY[0x1E695DF00] date];
    [(SBIconView *)self setLastTouchDownDate:date];

    if ((*(self + 553) & 0x40) != 0 && *(self + 553) < 0)
    {
      [(SBIconView *)self iconInteractedWhenDisabled];
    }

    if ([beganCopy bs_containsObjectPassingTest:&__block_literal_global_856])
    {
      v9 = 4;
    }

    else
    {
      v9 = 0;
    }

    *(self + 560) = *(self + 560) & 0xFB | v9;
    v10 = SBLogIcon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier = self->_logIdentifier;
      tapGestureRecognizer = self->_tapGestureRecognizer;
      *buf = 138543874;
      v16 = logIdentifier;
      v17 = 2114;
      v18 = eventCopy;
      v19 = 2114;
      v20 = tapGestureRecognizer;
      _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@> Touches began with event: %{public}@, tap gesture: %{public}@", buf, 0x20u);
    }

    actionDelegate = [(SBIconView *)self actionDelegate];
    if (objc_opt_respondsToSelector())
    {
      [actionDelegate iconTouchBegan:self];
    }

    else if ([(SBIconView *)self isEnabled]&& [(SBIconView *)self _delegateTapAllowed])
    {
      [(SBIconView *)self setHighlighted:1];
    }
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v30 = *MEMORY[0x1E69E9840];
  movedCopy = moved;
  v28.receiver = self;
  v28.super_class = SBIconView;
  [(SBIconView *)&v28 touchesMoved:movedCopy withEvent:event];
  if (_touchesContainNonIndirectTouch(movedCopy))
  {
    actionDelegate = [(SBIconView *)self actionDelegate];
    if (objc_opt_respondsToSelector())
    {
      anyObject = [movedCopy anyObject];
      [actionDelegate icon:self touchMoved:anyObject];
    }

    else if ([(SBIconView *)self isEnabled]&& [(SBIconView *)self _delegateTapAllowed])
    {
      if ([(SBIconView *)self isTouchDownInIcon])
      {
        [(SBIconView *)self _frameForImageView];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v17 = movedCopy;
        v18 = [v17 countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v18)
        {
          v19 = *v25;
          while (2)
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v25 != v19)
              {
                objc_enumerationMutation(v17);
              }

              v21 = *(*(&v24 + 1) + 8 * i);
              if (([v21 sbh_didExitIconView] & 1) == 0)
              {
                [v21 locationInView:self];
                v31.x = v22;
                v31.y = v23;
                v32.origin.x = v10;
                v32.origin.y = v12;
                v32.size.width = v14;
                v32.size.height = v16;
                if (CGRectContainsPoint(v32, v31))
                {
                  v18 = 1;
                  goto LABEL_20;
                }

                [v21 sbh_setDidExitIconView:1];
              }
            }

            v18 = [v17 countByEnumeratingWithState:&v24 objects:v29 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

LABEL_20:
      }

      else
      {
        v18 = 0;
      }

      [(SBIconView *)self setHighlighted:v18, v24];
    }
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  v7.receiver = self;
  v7.super_class = SBIconView;
  [(SBIconView *)&v7 touchesCancelled:cancelledCopy withEvent:event];
  if ((_touchesContainNonIndirectTouch(cancelledCopy) & 1) != 0 || ![cancelledCopy count])
  {
    *(self + 555) &= ~1u;
    [(SBIconView *)self _delegateTouchEnded:1];
    if (![(SBIconView *)self isDragging])
    {
      [(SBIconView *)self setHighlighted:0];
    }
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = SBIconView;
  endedCopy = ended;
  [(SBIconView *)&v7 touchesEnded:endedCopy withEvent:event];
  LODWORD(event) = _touchesContainNonIndirectTouch(endedCopy);

  if (event)
  {
    *(self + 555) &= ~1u;
    [(SBIconView *)self _delegateTouchEnded:0, v7.receiver, v7.super_class];
    [(SBIconView *)self setHighlighted:0];
  }
}

- (void)tapGestureDidChange:(id)change
{
  changeCopy = change;
  if ([changeCopy state] == 3)
  {
    kdebug_trace();
    -[SBIconView _handleTapWithModifierFlags:](self, "_handleTapWithModifierFlags:", [changeCopy modifierFlags]);
  }
}

- (void)_handleTapWithModifierFlags:(int64_t)flags
{
  v34 = *MEMORY[0x1E69E9840];
  actionDelegate = [(SBIconView *)self actionDelegate];
  window = [(SBIconView *)self window];
  v7 = SBLogIcon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    *buf = 138544130;
    v27 = logIdentifier;
    v28 = 2048;
    flagsCopy = flags;
    v30 = 2048;
    v31 = actionDelegate;
    v32 = 2048;
    v33 = window;
    _os_log_impl(&dword_1BEB18000, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@> Handle tap: modifiers: %lx, delegate: %p, window: %p", buf, 0x2Au);
  }

  if (window)
  {
    if (objc_opt_respondsToSelector())
    {
      [actionDelegate iconTapped:self modifierFlags:flags];
    }

    else if (objc_opt_respondsToSelector())
    {
      [actionDelegate iconTapped:self];
    }

    else
    {
      icon = [(SBIconView *)self icon];
      isLaunchEnabled = [icon isLaunchEnabled];
      v11 = SBLogIcon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_logIdentifier;
        *buf = 138543618;
        v27 = v12;
        v28 = 1024;
        LODWORD(flagsCopy) = isLaunchEnabled;
        _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEFAULT, "<%{public}@> Delegate does not want to handle tap, going to icon. launch enabled: %{BOOL}u", buf, 0x12u);
      }

      location = [(SBIconView *)self location];
      v14 = objc_alloc_init(SBHIconLaunchContext);
      [(SBHIconLaunchContext *)v14 setIconView:self];
      [icon launchFromLocation:location context:v14];
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v15 = [(NSHashTable *)self->_observers copy];
    v16 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        v19 = 0;
        do
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v21 + 1) + 8 * v19);
          if (objc_opt_respondsToSelector())
          {
            [v20 iconViewDidHandleTap:self];
          }

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v17);
    }
  }
}

- (void)editingModeGestureRecognizerDidFire:(id)fire
{
  fireCopy = fire;
  if ([fireCopy state] == 1)
  {
    behaviorDelegate = [(SBIconView *)self behaviorDelegate];
    objc_initWeak(&location, self);
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __50__SBIconView_editingModeGestureRecognizerDidFire___block_invoke;
    v13 = &unk_1E808F0C8;
    v6 = behaviorDelegate;
    v14 = v6;
    objc_copyWeak(&v16, &location);
    v15 = fireCopy;
    v7 = _Block_copy(&v10);
    if ([(SBIconView *)self isContextMenuInteractionActive:v10])
    {
      [(SBIconView *)self dismissContextMenuWithCompletion:v7];
    }

    else
    {
      window = [(SBIconView *)self window];
      rootViewController = [window rootViewController];
      [rootViewController dismissViewControllerAnimated:1 completion:v7];
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __50__SBIconView_editingModeGestureRecognizerDidFire___block_invoke(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    v2 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [v2 iconView:WeakRetained editingModeGestureRecognizerDidFire:*(a1 + 40)];
  }
}

- (void)hoverGestureDidChange:(id)change
{
  state = [change state];
  v5 = state - 1;
  if (state - 1) <= 4 && ((0x1Du >> v5))
  {
    tooltipView = self->_tooltipView;

    [(SBHTooltipView *)tooltipView setHidden:(0x1Eu >> v5) & 1];
  }
}

- (void)beginPrefetchingDisplayedIconLayerForReason:(id)reason
{
  reasonCopy = reason;
  if (![(NSCountedSet *)self->_iconLayerPrefetchingReasons count])
  {
    icon = [(SBIconView *)self icon];
    effectiveIconImageAppearance = [(SBIconView *)self effectiveIconImageAppearance];
    [(SBIconView *)self iconImageInfo];
    v6 = [icon prefetchIconLayerWithInfo:effectiveIconImageAppearance imageAppearance:1 imageOptions:1 priority:reasonCopy reason:1 prefetchBehavior:?];
    [(SBIconView *)self setIconLayerPrefetchingAssertion:v6];
  }

  iconLayerPrefetchingReasons = self->_iconLayerPrefetchingReasons;
  if (!iconLayerPrefetchingReasons)
  {
    v8 = objc_alloc_init(MEMORY[0x1E696AB50]);
    v9 = self->_iconLayerPrefetchingReasons;
    self->_iconLayerPrefetchingReasons = v8;

    iconLayerPrefetchingReasons = self->_iconLayerPrefetchingReasons;
  }

  [(NSCountedSet *)iconLayerPrefetchingReasons addObject:reasonCopy];
}

- (void)endPrefetchingDisplayedIconLayerForReason:(id)reason
{
  [(NSCountedSet *)self->_iconLayerPrefetchingReasons removeObject:reason];
  if (![(NSCountedSet *)self->_iconLayerPrefetchingReasons count])
  {
    iconLayerPrefetchingAssertion = [(SBIconView *)self iconLayerPrefetchingAssertion];
    [iconLayerPrefetchingAssertion invalidate];
    [(SBIconView *)self setIconLayerPrefetchingAssertion:0];
  }
}

- (void)consumeSinglePressUpForButtonKind:(int64_t)kind
{
  if (kind == 1)
  {
    [(SBIconView *)self dismissContextMenuWithCompletion:0];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  v18 = *MEMORY[0x1E69E9840];
  recognizerCopy = recognizer;
  tapGestureRecognizer = [(SBIconView *)self tapGestureRecognizer];

  if (tapGestureRecognizer != recognizerCopy)
  {
    return 1;
  }

  behaviorDelegate = [(SBIconView *)self behaviorDelegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([behaviorDelegate iconShouldAllowTap:self] & 1) == 0)
  {
    v9 = SBLogIcon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier = self->_logIdentifier;
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v14 = 138543618;
      v15 = logIdentifier;
      v16 = 2114;
      v17 = v12;
      _os_log_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_DEFAULT, "<%{public}@> Not allowing tap gesture to receive touch because the delegate (%{public}@) said so.", &v14, 0x16u);
    }

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  v25 = *MEMORY[0x1E69E9840];
  beginCopy = begin;
  tapGestureRecognizer = [(SBIconView *)self tapGestureRecognizer];

  if (tapGestureRecognizer == beginCopy)
  {
    behaviorDelegate = [(SBIconView *)self behaviorDelegate];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([behaviorDelegate iconShouldAllowTap:self] & 1) == 0)
    {
      v14 = MEMORY[0x1E696AEC0];
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v11 = [v14 stringWithFormat:@"the delegate (%@) said so.", v16];
    }

    else if (!self->_customIconImageViewController || ((objc_opt_respondsToSelector() & 1) == 0 ? (v10 = 0) : (v10 = [(SBIconViewCustomImageViewControlling *)self->_customIconImageViewController isUserInteractionEnabled]^ 1), [(SBIconView *)self isEditing]|| (v10 & 1) != 0 || ([(SBIconView *)self effectiveIconImageAlpha], BSFloatIsZero())))
    {
      if (![(SBIconView *)self isResizing])
      {
LABEL_24:
        v8 = 1;
LABEL_30:

        goto LABEL_31;
      }

      v11 = @"resizing";
    }

    else
    {
      v11 = @"we're not editing, the custom view controller's user interaction is enabled, and the effective icon alpha isn't zero.";
    }

    v17 = SBLogIcon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      logIdentifier = self->_logIdentifier;
      *buf = 138543618;
      v22 = logIdentifier;
      v23 = 2114;
      v24 = v11;
      _os_log_impl(&dword_1BEB18000, v17, OS_LOG_TYPE_DEFAULT, "<%{public}@> Not allowing tap gesture to begin because %{public}@", buf, 0x16u);
    }

    goto LABEL_29;
  }

  actionTapGestureRecognizer = [(SBCloseBoxView *)self->_closeBox actionTapGestureRecognizer];

  if (actionTapGestureRecognizer == beginCopy)
  {
    behaviorDelegate = [(SBIconView *)self behaviorDelegate];
    if (objc_opt_respondsToSelector() & 1) == 0 || ([behaviorDelegate iconShouldAllowCloseBoxTap:self])
    {
      goto LABEL_24;
    }

    v11 = SBLogIcon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_logIdentifier;
      *buf = 138543362;
      v22 = v12;
      v13 = "<%{public}@> Not allowing close box tap gesture to begin because delegate said so.";
LABEL_34:
      _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
    }

LABEL_29:

    v8 = 0;
    goto LABEL_30;
  }

  if (objc_opt_respondsToSelector())
  {
    actionTapGestureRecognizer2 = [(SBIconAccessoryView *)self->_accessoryView actionTapGestureRecognizer];

    if (actionTapGestureRecognizer2 == beginCopy)
    {
      behaviorDelegate = [(SBIconView *)self behaviorDelegate];
      if (objc_opt_respondsToSelector() & 1) == 0 || ([behaviorDelegate iconShouldAllowAccessoryTap:self])
      {
        goto LABEL_24;
      }

      v11 = SBLogIcon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v20 = self->_logIdentifier;
        *buf = 138543362;
        v22 = v20;
        v13 = "<%{public}@> Not allowing accessory view (badge) tap gesture to begin because delegate said so.";
        goto LABEL_34;
      }

      goto LABEL_29;
    }
  }

  v8 = 1;
LABEL_31:

  return v8;
}

- (BOOL)closeBoxShouldTrack:(id)track
{
  trackCopy = track;
  behaviorDelegate = [(SBIconView *)self behaviorDelegate];
  closeBox = self->_closeBox;

  if (closeBox == trackCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [behaviorDelegate iconShouldAllowCloseBoxTap:self];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if (pressesContainSelect(beganCopy))
  {
    [(SBIconView *)self setHighlighted:1];
  }

  v8 = [beganCopy objectsPassingTest:&__block_literal_global_2740];

  if ((*(self + 553) & 0x40) != 0 && *(self + 553) < 0)
  {
    [(SBIconView *)self iconInteractedWhenDisabled];
  }

  if ([v8 count])
  {
    v9.receiver = self;
    v9.super_class = SBIconView;
    [(SBIconView *)&v9 pressesBegan:v8 withEvent:eventCopy];
  }
}

- (void)pressesChanged:(id)changed withEvent:(id)event
{
  eventCopy = event;
  v7 = [changed objectsPassingTest:&__block_literal_global_2740];
  if ([v7 count])
  {
    v8.receiver = self;
    v8.super_class = SBIconView;
    [(SBIconView *)&v8 pressesChanged:v7 withEvent:eventCopy];
  }
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  eventCopy = event;
  v7 = [cancelled objectsPassingTest:&__block_literal_global_2740];
  if ([v7 count])
  {
    v8.receiver = self;
    v8.super_class = SBIconView;
    [(SBIconView *)&v8 pressesCancelled:v7 withEvent:eventCopy];
  }
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if (pressesContainSelect(endedCopy))
  {
    [(SBIconView *)self performTap];
    [(SBIconView *)self setHighlighted:0];
  }

  v8 = [endedCopy objectsPassingTest:&__block_literal_global_2740];

  if ([v8 count])
  {
    v9.receiver = self;
    v9.super_class = SBIconView;
    [(SBIconView *)&v9 pressesEnded:v8 withEvent:eventCopy];
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  v4 = *(self + 552);
  if ((((v4 & 2) == 0) ^ editing))
  {
    [(SBIconView *)self _updateIconImageAdornmentsAnimated:animated];
  }

  else
  {
    if (editing)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *(self + 552) = v4 & 0xFD | v5;
    [(SBIconView *)self _applyEditingStateAnimated:animated];
  }
}

- (void)_applyEditingStateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(SBIconView *)self _updateCustomIconImageViewController:?];
  [(SBIconView *)self _updateAllComponentAlphasAnimated:animatedCopy];
  [(SBIconView *)self _updateJitter];
  [(SBIconView *)self _updateIconImageAdornmentsAnimated:animatedCopy];
  [(SBIconView *)self _updateDragInteractionLiftDelay];
  [(UIPointerInteraction *)self->_iconViewCursorInteraction invalidate];
  [(UIPointerInteraction *)self->_closeBoxCursorInteraction invalidate];
  [(UIPointerInteraction *)self->_accessoryViewCursorInteraction invalidate];
  [(UIPointerInteraction *)self->_resizeHandleCursorInteraction invalidate];
  if ([(SBIconView *)self isFolderIcon])
  {
    if ([(SBIconView *)self isEditing])
    {

      [(SBIconView *)self scrollToFirstGapAnimated:animatedCopy];
    }

    else
    {

      [(SBIconView *)self scrollToTopOfFirstPageAnimated:animatedCopy];
    }
  }
}

- (void)_setTemporarySnapshotViewForDragPreview:(id)preview
{
  previewCopy = preview;
  temporarySnapshotContainerViewForDragPreview = self->_temporarySnapshotContainerViewForDragPreview;
  v10 = previewCopy;
  if (previewCopy)
  {
    if (temporarySnapshotContainerViewForDragPreview)
    {
      subviews = [(UIView *)temporarySnapshotContainerViewForDragPreview subviews];
      [subviews makeObjectsPerformSelector:sel_removeFromSuperview];
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v9 = self->_temporarySnapshotContainerViewForDragPreview;
      self->_temporarySnapshotContainerViewForDragPreview = v8;

      [(UIView *)self->_temporarySnapshotContainerViewForDragPreview setCenter:-500.0, -500.0];
    }

    [(UIView *)self->_temporarySnapshotContainerViewForDragPreview addSubview:v10];
    [(SBIconView *)self addSubview:self->_temporarySnapshotContainerViewForDragPreview];
  }

  else
  {
    [(UIView *)temporarySnapshotContainerViewForDragPreview removeFromSuperview];
    v7 = self->_temporarySnapshotContainerViewForDragPreview;
    self->_temporarySnapshotContainerViewForDragPreview = 0;
  }
}

- (id)newComponentBackgroundViewOfType:(int64_t)type
{
  reuseDelegate = [(SBIconView *)self reuseDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_5;
  }

  v6 = [reuseDelegate iconView:self backgroundViewForComponentsOfType:type];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [objc_opt_class() groupNameBaseForComponentBackgroundViewOfType:type];
    [v6 setGroupNameBase:v7];
  }

  if (!v6)
  {
LABEL_5:
    v8 = objc_opt_class();
    contentContainerView = [(SBIconView *)self contentContainerView];
    traitCollection = [contentContainerView traitCollection];
    v6 = [v8 componentBackgroundViewOfType:type compatibleWithTraitCollection:traitCollection initialWeighting:1.0];
  }

  return v6;
}

+ (id)componentBackgroundViewOfType:(int64_t)type
{
  v5 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:0];
  v6 = [self componentBackgroundViewOfType:type compatibleWithTraitCollection:v5 initialWeighting:1.0];

  return v6;
}

+ (id)groupNameBaseForComponentBackgroundViewOfType:(int64_t)type
{
  if (type > 6)
  {
    return 0;
  }

  else
  {
    return off_1E808F1B8[type];
  }
}

+ (id)componentBackgroundViewOfType:(int64_t)type compatibleWithTraitCollection:(id)collection initialWeighting:(double)weighting
{
  v20[3] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  v9 = collectionCopy;
  if (type == 7)
  {
    v10 = 0;
  }

  else
  {
    if (!collectionCopy)
    {
      v9 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:0];
    }

    if (type == 4)
    {
      v10 = [MEMORY[0x1E69AE158] materialViewWithRecipe:{objc_msgSend(self, "defaultWidgetBackgroundRecipe")}];
    }

    else
    {
      v11 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:0];
      v19[0] = v11;
      v20[0] = @"folderLight";
      v12 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:1];
      v19[1] = v12;
      v20[1] = @"folderLight";
      v13 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
      v19[2] = v13;
      v20[2] = @"folderDark";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];

      v15 = MEMORY[0x1E69AE158];
      v16 = SBHBundle();
      v10 = [v15 materialViewWithRecipeNamesByTraitCollection:v14 inBundle:v16 options:0 initialWeighting:0 scaleAdjustment:v9 compatibleWithTraitCollection:weighting];
    }

    v17 = [self groupNameBaseForComponentBackgroundViewOfType:type];
    [v10 setGroupNameBase:v17];
  }

  return v10;
}

+ (UIEdgeInsets)defaultCursorHitTestPadding
{
  v2 = -5.0;
  v3 = -5.0;
  v4 = -5.0;
  v5 = -5.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  if ([(SBIconView *)self _isCursorInteractionEnabled]&& self->_iconViewCursorInteraction == interactionCopy)
  {
    [(SBIconView *)self iconImageFrame];
    top = self->_cursorHitTestPadding.top;
    left = self->_cursorHitTestPadding.left;
    v14 = v13 + left;
    v16 = v15 + top;
    v18 = v17 - (left + self->_cursorHitTestPadding.right);
    v20 = v19 - (top + self->_cursorHitTestPadding.bottom);
    v21 = MEMORY[0x1E69DCDC0];
    identifier = [regionCopy identifier];
    v9 = [v21 regionWithRect:identifier identifier:{v14, v16, v18, v20}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  if (self->_iconViewCursorInteraction == interaction)
  {
    icon = [(SBIconView *)self icon];
    isWidgetIcon = [icon isWidgetIcon];

    if (isWidgetIcon)
    {
      _pointerStyleForWidgetIcon = [(SBIconView *)self _pointerStyleForWidgetIcon];
    }

    else
    {
      iconImageView = self->_iconImageView;
      if (iconImageView && ![(SBIconImageView *)iconImageView hasOpaqueImage])
      {
        _pointerStyleForWidgetIcon = [(SBIconView *)self _pointerStyleForLibraryAdditionalItemsIndicatorIcon];
      }

      else
      {
        _pointerStyleForWidgetIcon = [(SBIconView *)self _pointerStyleForAppIcon];
      }
    }
  }

  else
  {
    _pointerStyleForWidgetIcon = 0;
  }

  return _pointerStyleForWidgetIcon;
}

- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator
{
  interactionCopy = interaction;
  regionCopy = region;
  animatorCopy = animator;
  activePointerRegions = self->_activePointerRegions;
  if (!activePointerRegions)
  {
    v11 = objc_alloc_init(MEMORY[0x1E696AB50]);
    v12 = self->_activePointerRegions;
    self->_activePointerRegions = v11;

    activePointerRegions = self->_activePointerRegions;
  }

  [(NSCountedSet *)activePointerRegions addObject:regionCopy];
  if (!self->_disallowGlassGroupingForPointerInteractionAssertion)
  {
    v13 = [(SBIconView *)self disallowGlassGroupingForReason:@"pointer"];
    disallowGlassGroupingForPointerInteractionAssertion = self->_disallowGlassGroupingForPointerInteractionAssertion;
    self->_disallowGlassGroupingForPointerInteractionAssertion = v13;
  }
}

- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator
{
  regionCopy = region;
  v8 = regionCopy;
  if (animator)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__SBIconView_pointerInteraction_willExitRegion_animator___block_invoke;
    v10[3] = &unk_1E80893F0;
    v10[4] = self;
    v11 = regionCopy;
    [animator addCompletion:v10];
    disallowGlassGroupingForPointerInteractionAssertion = v11;
LABEL_5:

    goto LABEL_6;
  }

  [(NSCountedSet *)self->_activePointerRegions removeObject:regionCopy];
  if (![(SBIconView *)self isCursorActive])
  {
    [(BSInvalidatable *)self->_disallowGlassGroupingForPointerInteractionAssertion invalidate];
    disallowGlassGroupingForPointerInteractionAssertion = self->_disallowGlassGroupingForPointerInteractionAssertion;
    self->_disallowGlassGroupingForPointerInteractionAssertion = 0;
    goto LABEL_5;
  }

LABEL_6:
}

void __57__SBIconView_pointerInteraction_willExitRegion_animator___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(*(a1 + 32) + 808) removeObject:*(a1 + 40)];
    if (([*(a1 + 32) isCursorActive] & 1) == 0)
    {
      [*(*(a1 + 32) + 688) invalidate];
      v3 = *(a1 + 32);
      v4 = *(v3 + 688);
      *(v3 + 688) = 0;
    }
  }
}

- (id)_pointerStyleForAppIcon
{
  v28[2] = *MEMORY[0x1E69E9840];
  currentImageView = [(SBIconView *)self currentImageView];
  window = [currentImageView window];

  if (window)
  {
    [(SBIconView *)self iconImageInfo];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = objc_alloc_init(MEMORY[0x1E69DCE28]);
    icon = [(SBIconView *)self icon];
    isFileStackIcon = [icon isFileStackIcon];

    if ((isFileStackIcon & 1) == 0)
    {
      v14 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, v6, v8, v10}];
      [v11 setVisiblePath:v14];
    }

    v15 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:currentImageView parameters:v11];
    [v15 set_springboardPlatterStyle:1];
    accessoryView = self->_accessoryView;
    closeBox = self->_closeBox;
    if (accessoryView)
    {
      if (closeBox)
      {
        v28[0] = self->_closeBox;
        v28[1] = accessoryView;
        v18 = MEMORY[0x1E695DEC8];
        v19 = v28;
        v20 = 2;
LABEL_12:
        v22 = [v18 arrayWithObjects:v19 count:v20];
        [v15 _setAccessoryViews:v22];

        goto LABEL_13;
      }

      v27 = self->_accessoryView;
      v18 = MEMORY[0x1E695DEC8];
      v19 = &v27;
    }

    else
    {
      if (!closeBox)
      {
LABEL_13:
        if ([(SBIconView *)self isEditing])
        {
          v23 = [MEMORY[0x1E69DCDA8] effectWithPreview:v15];
          [v23 setPreferredTintMode:0];
          v24 = 0;
        }

        else
        {
          v23 = [MEMORY[0x1E69DCD90] effectWithPreview:v15];
          v24 = [MEMORY[0x1E69DCDC8] shapeWithRoundedRect:0.0 cornerRadius:{0.0, v6, v8, v10}];
        }

        v21 = [MEMORY[0x1E69DCDD0] styleWithEffect:v23 shape:v24];

        goto LABEL_17;
      }

      v26 = self->_closeBox;
      v18 = MEMORY[0x1E695DEC8];
      v19 = &v26;
    }

    v20 = 1;
    goto LABEL_12;
  }

  v21 = 0;
LABEL_17:

  return v21;
}

- (id)_pointerStyleForWidgetIcon
{
  currentImageView = [(SBIconView *)self currentImageView];
  if (currentImageView)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:currentImageView];
    v4 = [MEMORY[0x1E69DCDA8] effectWithPreview:v3];
    [v4 setPrefersShadow:1];
    v5 = [MEMORY[0x1E69DCDD0] styleWithEffect:v4 shape:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_pointerStyleForLibraryAdditionalItemsIndicatorIcon
{
  currentImageView = [(SBIconView *)self currentImageView];
  if (currentImageView)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:currentImageView];
    v4 = [MEMORY[0x1E69DCDB8] effectWithPreview:v3];
    v5 = [MEMORY[0x1E69DCDD0] styleWithEffect:v4 shape:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)canShowCloseBox
{
  if ((*(self + 554) & 0x20) == 0)
  {
    return 0;
  }

  icon = [(SBIconView *)self icon];
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 || [(SBIconView *)self isShowingConfigurationCard]|| [(SBIconView *)self isShowingStackConfigurationCard]|| [(SBIconView *)self isOverlapping]|| ![(SBIconView *)self allowsAdornmentsOverIconImage])
  {
    return 0;
  }

  behaviorDelegate = [(SBIconView *)self behaviorDelegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [behaviorDelegate iconViewDisplaysCloseBox:self];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)setAllowsCloseBox:(BOOL)box withAnimation:(int64_t)animation
{
  v10 = *(self + 554);
  if (((((v10 & 0x20) == 0) ^ box) & 1) == 0)
  {
    v17 = v5;
    v18 = v4;
    if (box)
    {
      v13 = 32;
    }

    else
    {
      v13 = 0;
    }

    *(self + 554) = v10 & 0xDF | v13;
    v14 = [(SBIconView *)self window:v7];
    if (!v14 || (v15 = v14, [(SBIconView *)self icon], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, !v16))
    {
      animation = 2;
    }

    [(SBIconView *)self _updateCloseBoxWithAnimation:animation];
  }
}

+ (Class)_closeBoxClassForType:(int64_t)type
{
  if (type > 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_opt_self();
  }

  return v4;
}

+ (int64_t)closeBoxTypeForView:(id)view
{
  viewCopy = view;
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = 1;
  }

  else
  {
    v7 = objc_opt_self();
    v8 = objc_opt_isKindOfClass();

    if ((v8 & 1) == 0)
    {
      v9 = SBLogIcon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(SBIconView *)viewCopy closeBoxTypeForView:v9, v10, v11, v12, v13, v14, v15];
      }
    }

    v6 = 0;
  }

  return v6;
}

- (int64_t)_closeBoxType
{
  behaviorDelegate = [(SBIconView *)self behaviorDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [behaviorDelegate closeBoxTypeForIconView:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_createCloseBoxIfNecessary
{
  icon = [(SBIconView *)self icon];
  if (icon)
  {
    _closeBoxType = [(SBIconView *)self _closeBoxType];
    if (!self->_closeBox)
    {
      goto LABEL_6;
    }

    if (_closeBoxType != [objc_opt_class() closeBoxTypeForView:self->_closeBox])
    {
      [(SBCloseBoxView *)self->_closeBox removeFromSuperview];
      closeBox = self->_closeBox;
      self->_closeBox = 0;
    }

    if (!self->_closeBox)
    {
LABEL_6:
      _iconAdornmentMaterial = [(SBIconView *)self _iconAdornmentMaterial];
      v6 = objc_alloc([objc_opt_class() _closeBoxClassForType:_closeBoxType]);
      v7 = v6;
      if (_iconAdornmentMaterial == 4)
      {
        v8 = [(SBIconView *)self newComponentBackgroundViewOfType:1];
        v9 = [v7 initWithFrame:v8 backgroundView:1 wantsRimHighlight:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        v10 = self->_closeBox;
        self->_closeBox = v9;
      }

      else
      {
        v11 = [v6 initWithFrame:_iconAdornmentMaterial material:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        v8 = self->_closeBox;
        self->_closeBox = v11;
      }

      [(SBCloseBoxView *)self->_closeBox setDelegate:self];
      v12 = self->_closeBox;
      listLayout = [(SBIconView *)self listLayout];
      [(SBCloseBoxView *)v12 setListLayout:listLayout];

      v14 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__closeBoxTapGestureChanged_];
      [v14 setDelegate:self];
      [(SBCloseBoxView *)self->_closeBox addGestureRecognizer:v14];
      [(SBCloseBoxView *)self->_closeBox setActionTapGestureRecognizer:v14];
      [(SBCloseBoxView *)self->_closeBox sizeToFit];
      materialView = [(SBHomeScreenButton *)self->_closeBox materialView];
      [materialView setLegibilityStyle:{-[SBHLegibilitySettings style](self->_legibilitySettings, "style")}];

      [(SBHomeScreenButton *)self->_closeBox setLegibilitySettings:self->_legibilitySettings];
      if ((SBHPerformanceFlagEnabled(9) & 1) == 0)
      {
        badgeParallaxSettings = [(SBIconView *)self badgeParallaxSettings];
        SBFApplyParallaxSettingsToView();
      }

      v17 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:self->_closeBox];
      closeBoxCursorInteraction = self->_closeBoxCursorInteraction;
      self->_closeBoxCursorInteraction = v17;

      [(SBCloseBoxView *)self->_closeBox addInteraction:self->_closeBoxCursorInteraction];
    }
  }
}

- (int64_t)_iconAdornmentMaterial
{
  behaviorDelegate = [(SBIconView *)self behaviorDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [behaviorDelegate adornmentMaterialForIconView:self];
  }

  else
  {
    v4 = 4;
  }

  return v4;
}

- (void)_updateCloseBoxAnimated:(BOOL)animated
{
  if (animated)
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  [(SBIconView *)self _updateCloseBoxWithAnimation:v3];
}

- (void)_updateCloseBoxWithAnimation:(int64_t)animation
{
  v5 = animation != 2;
  shouldShowCloseBox = [(SBIconView *)self shouldShowCloseBox];
  _isShowingCloseBox = [(SBIconView *)self _isShowingCloseBox];
  if (shouldShowCloseBox)
  {
    if (_isShowingCloseBox)
    {
      v5 = 0;
    }

    else
    {
      [(SBIconView *)self _setShowingCloseBox:1];
    }

    contentContainerView = [(SBIconView *)self contentContainerView];
    closeBoxAnimator = [(SBIconView *)self closeBoxAnimator];
    v12 = closeBoxAnimator;
    if (closeBoxAnimator)
    {
      if (v5)
      {
        [closeBoxAnimator setReversed:{objc_msgSend(closeBoxAnimator, "isReversed") ^ 1}];
      }
    }

    else
    {
      v13 = MEMORY[0x1E69DD250];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __43__SBIconView__updateCloseBoxWithAnimation___block_invoke;
      v25[3] = &unk_1E8088F18;
      v25[4] = self;
      v26 = contentContainerView;
      [v13 performWithoutAnimation:v25];

      if (v5)
      {
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __43__SBIconView__updateCloseBoxWithAnimation___block_invoke_2;
        v24[3] = &unk_1E8088C90;
        v24[4] = self;
        [MEMORY[0x1E69DD250] performWithoutAnimation:v24];
        v14 = self->_closeBox;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __43__SBIconView__updateCloseBoxWithAnimation___block_invoke_3;
        aBlock[3] = &unk_1E8088C90;
        v23 = v14;
        v15 = v14;
        v16 = _Block_copy(aBlock);
        [(SBIconView *)self _animateCloseBoxWithAnimation:animation animationBlock:v16];
      }
    }

    [(SBIconView *)self _updateAccessoryViewAnimated:v5];
  }

  else if (_isShowingCloseBox)
  {
    [(SBIconView *)self _setShowingCloseBox:0];
    if (animation == 2)
    {
      [(SBCloseBoxView *)self->_closeBox removeFromSuperview];
    }

    else
    {
      *(self + 552) = *(self + 552) & 0xF3 | 8;
      closeBoxAnimator2 = [(SBIconView *)self closeBoxAnimator];
      v9 = closeBoxAnimator2;
      if (closeBoxAnimator2)
      {
        [closeBoxAnimator2 setReversed:{objc_msgSend(closeBoxAnimator2, "isReversed") ^ 1}];
      }

      else
      {
        v17 = self->_closeBox;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __43__SBIconView__updateCloseBoxWithAnimation___block_invoke_4;
        v20[3] = &unk_1E8088C90;
        v21 = v17;
        v18 = v17;
        v19 = _Block_copy(v20);
        [(SBIconView *)self _animateCloseBoxWithAnimation:animation animationBlock:v19];
      }
    }

    [(SBIconView *)self _updateAccessoryViewAnimated:animation != 2];
  }
}

uint64_t __43__SBIconView__updateCloseBoxWithAnimation___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 472) _removeAllAnimations:0];
  [*(a1 + 32) _createCloseBoxIfNecessary];
  [*(a1 + 40) addSubview:*(*(a1 + 32) + 472)];
  [*(a1 + 40) bringSubviewToFront:*(*(a1 + 32) + 472)];
  v2 = *(*(a1 + 32) + 472);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v7[0] = *MEMORY[0x1E695EFD0];
  v7[1] = v3;
  v7[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v7];
  v4 = *(a1 + 32);
  v5 = v4[59];
  [v4 effectiveIconAccessoryAlpha];
  [v5 setAlpha:?];
  [*(a1 + 32) setNeedsLayout];
  return [*(a1 + 32) layoutIfNeeded];
}

uint64_t __43__SBIconView__updateCloseBoxWithAnimation___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 472);
  CGAffineTransformMakeScale(&v3, 0.01, 0.01);
  return [v1 setTransform:&v3];
}

uint64_t __43__SBIconView__updateCloseBoxWithAnimation___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v1 setTransform:v4];
}

uint64_t __43__SBIconView__updateCloseBoxWithAnimation___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  CGAffineTransformMakeScale(&v3, 0.01, 0.01);
  return [v1 setTransform:&v3];
}

- (void)_animateCloseBoxWithAnimation:(int64_t)animation animationBlock:(id)block
{
  blockCopy = block;
  if (animation == 1)
  {
    v7 = objc_alloc(MEMORY[0x1E69DD278]);
    v8 = 1.73557;
    v9 = 0.4;
  }

  else
  {
    if (animation)
    {
LABEL_7:
      [MEMORY[0x1E69DD250] performWithoutAnimation:blockCopy];
      [(SBIconView *)self _checkAndRemoveCloseBoxAfterAnimation];
      [(SBIconView *)self setCloseBoxAnimator:0];
      goto LABEL_8;
    }

    v7 = objc_alloc(MEMORY[0x1E69DD278]);
    v8 = 0.34071;
    v9 = 0.9;
  }

  v10 = [v7 initWithDuration:blockCopy dampingRatio:v8 animations:v9];
  if (!v10)
  {
    goto LABEL_7;
  }

  shouldShowCloseBox = [(SBIconView *)self shouldShowCloseBox];
  objc_initWeak(&location, v10);
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __59__SBIconView__animateCloseBoxWithAnimation_animationBlock___block_invoke;
  v15 = &unk_1E808F0F0;
  v17[1] = shouldShowCloseBox;
  selfCopy = self;
  objc_copyWeak(v17, &location);
  [v10 addCompletion:&v12];
  [(SBIconView *)self setCloseBoxAnimator:v10, v12, v13, v14, v15, selfCopy];
  [v10 startAnimation];
  objc_destroyWeak(v17);
  objc_destroyWeak(&location);

LABEL_8:
}

void __59__SBIconView__animateCloseBoxWithAnimation_animationBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == a2)
  {
    [*(a1 + 32) _checkAndRemoveCloseBoxAfterAnimation];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [*(a1 + 32) closeBoxAnimator];

  if (WeakRetained == v4)
  {
    v5 = *(a1 + 32);

    [v5 setCloseBoxAnimator:0];
  }
}

- (void)_checkAndRemoveCloseBoxAfterAnimation
{
  if (![(SBIconView *)self _isShowingCloseBox])
  {
    [(SBCloseBoxView *)self->_closeBox removeFromSuperview];
    if ((*(self + 552) & 0xC) == 4)
    {
      closeBox = self->_closeBox;
      self->_closeBox = 0;
    }
  }

  *(self + 552) &= 0xF3u;
}

- (void)_setShowingCloseBox:(BOOL)box
{
  if (box)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(self + 556) = *(self + 556) & 0xEF | v3;
}

- (void)_closeBoxTapGestureChanged:(id)changed
{
  if ([changed state] == 3)
  {
    actionDelegate = [(SBIconView *)self actionDelegate];
    if (objc_opt_respondsToSelector())
    {
      [actionDelegate iconCloseBoxTapped:self];
    }
  }
}

- (void)setAllowsBlockedForScreenTimeExpiration:(BOOL)expiration
{
  v7 = *(self + 557);
  if (expiration == (v7 & 0x40) >> 6)
  {
    v10 = v3;
    if (expiration)
    {
      v9 = 0;
    }

    else
    {
      v9 = 64;
    }

    *(self + 557) = v7 & 0xBF | v9;
    [(SBIconView *)self _updateBrightness:v4];

    [(SBIconView *)self _updateLabelArea];
  }
}

- (void)setAllowsResizeHandle:(BOOL)handle
{
  v3 = *(self + 554);
  if (((((v3 & 0x40) == 0) ^ handle) & 1) == 0)
  {
    if (handle)
    {
      v4 = 64;
    }

    else
    {
      v4 = 0;
    }

    *(self + 554) = v3 & 0xBF | v4;
    [(SBIconView *)self _updateResizeHandleAnimated:1];
  }
}

- (BOOL)canShowResizeHandle
{
  if (![(SBIconView *)self allowsResizeHandle])
  {
    return 0;
  }

  icon = [(SBIconView *)self icon];
  supportedGridSizeClasses = [icon supportedGridSizeClasses];
  if ([supportedGridSizeClasses count] < 2 || -[SBIconView isShowingConfigurationCard](self, "isShowingConfigurationCard") || -[SBIconView isShowingStackConfigurationCard](self, "isShowingStackConfigurationCard") || !-[SBIconView allowsAdornmentsOverIconImage](self, "allowsAdornmentsOverIconImage"))
  {
    v6 = 0;
  }

  else
  {
    behaviorDelegate = [(SBIconView *)self behaviorDelegate];
    v6 = (objc_opt_respondsToSelector() & 1) == 0 || [behaviorDelegate iconViewDisplaysResizeHandle:self];
  }

  return v6;
}

- (CGAffineTransform)transformWhenHiddenForResizeHandle:(SEL)handle
{
  v5 = 0uLL;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  if (a4)
  {
    [a4 metrics];
    v6 = *(&v12 + 1) * 0.222222222;
    v5 = 0uLL;
  }

  else
  {
    v6 = 0.0;
  }

  *&retstr->c = v5;
  *&retstr->tx = v5;
  *&retstr->a = v5;
  CGAffineTransformMakeTranslation(retstr, v6, v6);
  v7 = *&retstr->c;
  *&v10.a = *&retstr->a;
  *&v10.c = v7;
  *&v10.tx = *&retstr->tx;
  result = CGAffineTransformScale(&v11, &v10, 0.1, 0.1);
  v9 = *&v11.c;
  *&retstr->a = *&v11.a;
  *&retstr->c = v9;
  *&retstr->tx = *&v11.tx;
  return result;
}

- (void)_updateResizeHandleAnimated:(BOOL)animated
{
  animatedCopy = animated;
  shouldShowResizeHandle = [(SBIconView *)self shouldShowResizeHandle];
  isShowingResizeHandle = [(SBIconView *)self isShowingResizeHandle];
  if (!shouldShowResizeHandle || isShowingResizeHandle)
  {
    if (shouldShowResizeHandle || !isShowingResizeHandle)
    {
      return;
    }

    resizeHandle = [(SBIconView *)self resizeHandle];
    [(SBIconView *)self setResizeHandle:0];
    if (animatedCopy)
    {
      v38 = 0u;
      v37 = 0u;
      v36 = 0u;
      [(SBIconView *)self transformWhenHiddenForResizeHandle:resizeHandle];
      v20 = MEMORY[0x1E69DD250];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __42__SBIconView__updateResizeHandleAnimated___block_invoke_4;
      v23[3] = &unk_1E808B4E0;
      v24 = resizeHandle;
      v25 = v36;
      v26 = v37;
      v27 = v38;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __42__SBIconView__updateResizeHandleAnimated___block_invoke_5;
      v21[3] = &unk_1E8088F40;
      resizeHandle = v24;
      v22 = resizeHandle;
      [v20 animateWithDuration:0 delay:v23 usingSpringWithDamping:v21 initialSpringVelocity:0.34071 options:0.0 animations:0.9 completion:0.0];
    }

    else
    {
      [resizeHandle removeFromSuperview];
    }
  }

  else
  {
    _makeResizeHandle = [(SBIconView *)self _makeResizeHandle];
    [(SBIconView *)self setResizeHandle:_makeResizeHandle];
    contentContainerView = [(SBIconView *)self contentContainerView];
    [contentContainerView addSubview:_makeResizeHandle];
    [(SBIconView *)self _centerForResizeHandle];
    v10 = v9;
    v12 = v11;
    v13 = MEMORY[0x1E69DD250];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __42__SBIconView__updateResizeHandleAnimated___block_invoke;
    v39[3] = &unk_1E808BCE0;
    resizeHandle = _makeResizeHandle;
    v40 = resizeHandle;
    v41 = v10;
    v42 = v12;
    [v13 performWithoutAnimation:v39];
    [(SBIconView *)self effectiveIconAccessoryAlpha];
    v16 = v15;
    if (animatedCopy)
    {
      v38 = 0u;
      v37 = 0u;
      v36 = 0u;
      [(SBIconView *)self transformWhenHiddenForResizeHandle:resizeHandle];
      v17 = MEMORY[0x1E69DD250];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __42__SBIconView__updateResizeHandleAnimated___block_invoke_2;
      v31[3] = &unk_1E808B4E0;
      v18 = resizeHandle;
      v32 = v18;
      v33 = v36;
      v34 = v37;
      v35 = v38;
      [v17 performWithoutAnimation:v31];
      v19 = MEMORY[0x1E69DD250];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __42__SBIconView__updateResizeHandleAnimated___block_invoke_3;
      v28[3] = &unk_1E8088CB8;
      v29 = v18;
      v30 = v16;
      [v19 animateWithDuration:0 delay:v28 usingSpringWithDamping:0 initialSpringVelocity:0.34071 options:0.0 animations:0.9 completion:0.0];
    }

    else
    {
      [resizeHandle setAlpha:v15];
    }
  }
}

uint64_t __42__SBIconView__updateResizeHandleAnimated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v5[0] = *(a1 + 40);
  v5[1] = v3;
  v5[2] = *(a1 + 72);
  return [v2 setTransform:v5];
}

uint64_t __42__SBIconView__updateResizeHandleAnimated___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAlpha:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v2 setTransform:v5];
}

uint64_t __42__SBIconView__updateResizeHandleAnimated___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v5[0] = *(a1 + 40);
  v5[1] = v3;
  v5[2] = *(a1 + 72);
  return [v2 setTransform:v5];
}

- (id)_makeResizeHandle
{
  [(SBIconView *)self iconImageInfo];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  SBIconResizeHandleMetricsForIconResizingSettings(self->_iconResizingSettings, &v25);
  behaviorDelegate = [(SBIconView *)self behaviorDelegate];
  if (objc_opt_respondsToSelector())
  {
    if (behaviorDelegate)
    {
      [behaviorDelegate resizeHandleMetricsForIconView:self];
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
    }

    v27 = v22;
    v28 = v23;
    v29 = v24;
    v25 = v20;
    v26 = v21;
  }

  else if (objc_opt_respondsToSelector())
  {
    [behaviorDelegate pathLengthForResizeHandleOfIconView:self];
    *(&v25 + 1) = v12;
  }

  v13 = [SBHIconResizeHandle alloc];
  _iconAdornmentMaterial = [(SBIconView *)self _iconAdornmentMaterial];
  v22 = v27;
  v23 = v28;
  v24 = v29;
  v20 = v25;
  v21 = v26;
  v15 = [(SBHIconResizeHandle *)v13 initWithMetrics:&v20 iconImageInfo:_iconAdornmentMaterial material:v4, v6, v8, v10];
  v16 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel_resizeGestureRecognizerDidUpdate_];
  [v16 _setHysteresis:0.0];
  [v16 setDelaysTouchesBegan:0];
  [(SBHIconResizeHandle *)v15 setResizingGestureRecognizer:v16];
  [(SBHIconResizeHandle *)v15 setAccessibilityIdentifier:@"icon-resize-handle"];
  v17 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v15];
  resizeHandleCursorInteraction = self->_resizeHandleCursorInteraction;
  self->_resizeHandleCursorInteraction = v17;

  [(SBHIconResizeHandle *)v15 addInteraction:self->_resizeHandleCursorInteraction];

  return v15;
}

- (CGPoint)_centerForResizeHandle
{
  resizeHandle = [(SBIconView *)self resizeHandle];
  [(SBIconView *)self iconImageFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [resizeHandle sizeThatFits:{v8, v10}];
  v13 = v12;
  v15 = v14 * 0.5;
  userInterfaceLayoutDirection = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  v17 = v5;
  v18 = v7;
  v19 = v9;
  v20 = v11;
  if (userInterfaceLayoutDirection == 1)
  {
    v21 = v15 + CGRectGetMinX(*&v17);
  }

  else
  {
    v21 = CGRectGetMaxX(*&v17) - v15;
  }

  v26.origin.x = v5;
  v26.origin.y = v7;
  v26.size.width = v9;
  v26.size.height = v11;
  v22 = CGRectGetMaxY(v26) + v13 * -0.5;

  v23 = v21;
  v24 = v22;
  result.y = v24;
  result.x = v23;
  return result;
}

- (void)setResizing:(BOOL)resizing
{
  v3 = *(self + 559);
  if (((((v3 & 0x20) == 0) ^ resizing) & 1) == 0)
  {
    if (resizing)
    {
      v4 = 32;
    }

    else
    {
      v4 = 0;
    }

    *(self + 559) = v3 & 0xDF | v4;
    [(SBIconView *)self _updateJitter];
  }
}

- (id)extendResizingFinish
{
  *(self + 559) |= 0x40u;
  v2 = [[SBIconViewAssertion alloc] initWithAssertionType:4 iconView:self extraInfo:0];

  return v2;
}

- (void)removeExtendResizeFinishAssertion:(id)assertion
{
  *(self + 559) &= ~0x40u;
  [(SBIconView *)self setResizing:0];

  [(SBIconView *)self setResizeGestureHandler:0];
}

- (void)resizeGestureRecognizerDidUpdate:(id)update
{
  v69 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  resizeHandle = [(SBIconView *)self resizeHandle];
  state = [updateCopy state];
  v7 = state;
  v8 = state - 3;
  if ((state - 3) >= 3)
  {
    if (state != 1)
    {
      goto LABEL_6;
    }

    v9 = 1;
    [(SBIconView *)self setResizing:1];
  }

  else
  {
    v9 = 0;
  }

  [resizeHandle setHighlighted:v9];
  [resizeHandle setResizing:v9];
LABEL_6:
  resizeGestureHandler = [(SBIconView *)self resizeGestureHandler];
  v11 = resizeGestureHandler;
  if (resizeGestureHandler)
  {
    [resizeGestureHandler iconView:self resizeGestureRecognizerDidUpdate:updateCopy];
  }

  if (v8 <= 2 && (*(self + 559) & 0x40) == 0)
  {
    [(SBIconView *)self setResizing:0];
    [(SBIconView *)self setResizeGestureHandler:0];
  }

  if (!v11)
  {
    if (v8 < 3)
    {
      [resizeHandle setHighlighted:0];
      [resizeHandle setResizing:0];
      [(SBIconView *)self setNeedsLayout];
      currentImageView = [(SBIconView *)self currentImageView];
      v13 = MEMORY[0x1E69DD250];
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __47__SBIconView_resizeGestureRecognizerDidUpdate___block_invoke_969;
      v61[3] = &unk_1E8088F18;
      behaviorDelegate2 = currentImageView;
      v62 = behaviorDelegate2;
      selfCopy = self;
      [v13 animateWithDuration:0 delay:v61 usingSpringWithDamping:0 initialSpringVelocity:0.34071 options:0.0 animations:0.9 completion:0.0];
      behaviorDelegate = [(SBIconView *)self behaviorDelegate];
      if (objc_opt_respondsToSelector())
      {
        [behaviorDelegate iconViewDidEndTrackingPossibleResize:self context:self->_resizeGestureContext];
      }

      resizeGestureContext = self->_resizeGestureContext;
      self->_resizeGestureContext = 0;

      goto LABEL_16;
    }

    if (v7 != 2)
    {
      if (v7 == 1)
      {
        v17 = SBLogWidgetResizing();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.a) = 0;
          _os_log_impl(&dword_1BEB18000, v17, OS_LOG_TYPE_DEFAULT, "starting gesture for resize", &buf, 2u);
        }

        [resizeHandle setHighlighted:1];
        [resizeHandle setResizing:1];
        behaviorDelegate2 = [(SBIconView *)self behaviorDelegate];
        if (objc_opt_respondsToSelector())
        {
          v18 = [behaviorDelegate2 resizeGestureHandlerForIconView:self];
          if (v18)
          {
            v11 = v18;
            v19 = SBLogWidgetResizing();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf.a) = 138412290;
              *(&buf.a + 4) = v11;
              _os_log_impl(&dword_1BEB18000, v19, OS_LOG_TYPE_DEFAULT, "got gesture handler for resize: %@", &buf, 0xCu);
            }

            [(SBIconView *)self setResizeGestureHandler:v11];
            [v11 iconView:self resizeGestureRecognizerDidUpdate:updateCopy];
            goto LABEL_17;
          }
        }

        if (objc_opt_respondsToSelector())
        {
          v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v23 = self->_resizeGestureContext;
          self->_resizeGestureContext = v22;

          v24 = self->_resizeGestureContext;
          v25 = MEMORY[0x1E696B098];
          [resizeHandle bounds];
          UIRectGetCenter();
          v67[0] = v26;
          v67[1] = v27;
          v28 = [v25 valueWithBytes:v67 objCType:"{CGPoint=dd}"];
          [(NSMutableDictionary *)v24 setObject:v28 forKey:@"SBIconViewGestureCenterPoint"];

          [behaviorDelegate2 iconViewDidBeginTrackingPossibleResize:self context:self->_resizeGestureContext];
        }

LABEL_16:
        v11 = 0;
LABEL_17:

        goto LABEL_29;
      }

LABEL_28:
      v11 = 0;
      goto LABEL_29;
    }

    v20 = [(NSMutableDictionary *)self->_resizeGestureContext objectForKey:@"SBIconViewGestureResizing"];
    bOOLValue = [v20 BOOLValue];

    if (bOOLValue)
    {
      goto LABEL_28;
    }

    behaviorDelegate2 = [(NSMutableDictionary *)self->_resizeGestureContext objectForKey:@"SBIconViewGestureResizeFinishTime"];
    [updateCopy locationInView:resizeHandle];
    v30 = v29;
    v32 = v31;
    if (behaviorDelegate2)
    {
      [behaviorDelegate2 unsignedLongLongValue];
      mach_continuous_time();
      BSTimeDifferenceFromMachTimeToMachTime();
      if (v33 < 0.2)
      {
        goto LABEL_16;
      }

      [(NSMutableDictionary *)self->_resizeGestureContext removeObjectForKey:@"SBIconViewGestureResizeFinishTime"];
      v34 = self->_resizeGestureContext;
      *v66 = v30;
      *&v66[1] = v32;
      v35 = [MEMORY[0x1E696B098] valueWithBytes:v66 objCType:"{CGPoint=dd}"];
      [(NSMutableDictionary *)v34 setObject:v35 forKey:@"SBIconViewGestureCenterPoint"];
    }

    v36 = [(NSMutableDictionary *)self->_resizeGestureContext objectForKey:@"SBIconViewGestureHasResized"];
    bOOLValue2 = [v36 BOOLValue];

    if (bOOLValue2)
    {
      v38 = 10.0;
    }

    else
    {
      v38 = 20.0;
    }

    v39 = [(NSMutableDictionary *)self->_resizeGestureContext objectForKey:@"SBIconViewGestureCenterPoint"];
    [v39 CGPointValue];
    v41 = v40;
    v43 = v42;

    v44 = vabdd_f64(v30, v41);
    v45 = vabdd_f64(v32, v43);
    v46 = v45 > v38;
    v47 = v44 > v38;
    if (v44 > v38)
    {
      v46 = 0;
    }

    v48 = v30 - v41;
    v49 = v32 - v43;
    if (v45 <= v38)
    {
      v50 = v44 <= v38;
    }

    else
    {
      v47 = 0;
      v50 = 0;
    }

    if (v50)
    {
      if (bOOLValue2)
      {
        goto LABEL_16;
      }

      v53 = v44 / 20.0;
      v54 = v45 / 20.0;
      if (v48 >= 0.0)
      {
        v55 = v53 * 0.1;
      }

      else
      {
        v55 = -(v53 * 0.1);
      }

      if (v49 >= 0.0)
      {
        v56 = v54 * 0.1;
      }

      else
      {
        v56 = -(v54 * 0.1);
      }

      v57 = SBLogWidgets();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf.a) = 134218752;
        *(&buf.a + 4) = v55;
        WORD2(buf.b) = 2048;
        *(&buf.b + 6) = v56;
        HIWORD(buf.c) = 2048;
        buf.d = v53;
        LOWORD(buf.tx) = 2048;
        *(&buf.tx + 2) = v54;
        _os_log_debug_impl(&dword_1BEB18000, v57, OS_LOG_TYPE_DEBUG, "updating gesture resize scale to %f,%f (progress: %f,%f)", &buf, 0x2Au);
      }

      currentImageView2 = [(SBIconView *)self currentImageView];
      CGAffineTransformMakeScale(&buf, v55 + 1.0, v56 + 1.0);
      [(NSMutableDictionary *)currentImageView2 setTransform:&buf];
      [(SBIconView *)self setNeedsLayout];
      [resizeHandle setHighlighted:1];
LABEL_66:

      goto LABEL_16;
    }

    if (v44 <= v38 || v45 <= v38)
    {
      if (!v47)
      {
        goto LABEL_62;
      }
    }

    else if (v44 <= v45 && !v47)
    {
LABEL_62:
      v52 = v49 < 0.0 && v46;
      goto LABEL_65;
    }

    v52 = v48 < 0.0;
LABEL_65:
    v59 = self->_resizeGestureContext;
    v60 = MEMORY[0x1E695E118];
    [(NSMutableDictionary *)v59 setObject:MEMORY[0x1E695E118] forKey:@"SBIconViewGestureResizing"];
    [(NSMutableDictionary *)v59 setObject:v60 forKey:@"SBIconViewGestureHasResized"];
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __47__SBIconView_resizeGestureRecognizerDidUpdate___block_invoke;
    v64[3] = &unk_1E8088C90;
    v65 = v59;
    currentImageView2 = v59;
    [(SBIconView *)self _initiateResizeToSmallerSize:v52 completionHandler:v64];

    goto LABEL_66;
  }

LABEL_29:
}

void __47__SBIconView_resizeGestureRecognizerDidUpdate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeObjectForKey:@"SBIconViewGestureResizing"];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:mach_continuous_time()];
  [v2 setObject:v3 forKey:@"SBIconViewGestureResizeFinishTime"];

  v4 = SBLogWidgets();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_INFO, "gesture resize animation finished", v5, 2u);
  }
}

uint64_t __47__SBIconView_resizeGestureRecognizerDidUpdate___block_invoke_969(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v5];
  return [*(a1 + 40) layoutIfNeeded];
}

- (id)nextSmallerGridSizeClassForResize
{
  icon = [(SBIconView *)self icon];
  supportedIconGridSizeClassesForResize = [(SBIconView *)self supportedIconGridSizeClassesForResize];
  iconGridSizeClassSizes = [(SBIconView *)self iconGridSizeClassSizes];
  gridSizeClass = [icon gridSizeClass];
  v7 = [iconGridSizeClassSizes gridSizeClassSmallerThanGridSizeClass:gridSizeClass allowedGridSizeClasses:supportedIconGridSizeClassesForResize];

  return v7;
}

- (id)nextLargerGridSizeClassForResize
{
  icon = [(SBIconView *)self icon];
  supportedIconGridSizeClassesForResize = [(SBIconView *)self supportedIconGridSizeClassesForResize];
  iconGridSizeClassSizes = [(SBIconView *)self iconGridSizeClassSizes];
  gridSizeClass = [icon gridSizeClass];
  v7 = [iconGridSizeClassSizes gridSizeClassLargerThanGridSizeClass:gridSizeClass allowedGridSizeClasses:supportedIconGridSizeClassesForResize];

  return v7;
}

- (void)_initiateResizeToSmallerSize:(BOOL)size completionHandler:(id)handler
{
  sizeCopy = size;
  v13 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (sizeCopy)
  {
    [(SBIconView *)self nextSmallerGridSizeClassForResize];
  }

  else
  {
    [(SBIconView *)self nextLargerGridSizeClassForResize];
  }
  v7 = ;
  if (v7)
  {
    v8 = SBLogWidgets();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&dword_1BEB18000, v8, OS_LOG_TYPE_DEFAULT, "initiating gesture resize to grid size %{public}@", &v11, 0xCu);
    }

    actionDelegate = [(SBIconView *)self actionDelegate];
    if (objc_opt_respondsToSelector())
    {
      [actionDelegate iconView:self wantsResizeToGridSizeClass:v7 completionHandler:handlerCopy];
    }

    else if (handlerCopy)
    {
      v10 = SBLogWidgets();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543362;
        v12 = v7;
        _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "Can't initiate resize to %{public}@ because delegate doesn't implement", &v11, 0xCu);
      }

      handlerCopy[2](handlerCopy);
    }
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v42.receiver = self;
  v42.super_class = SBIconView;
  v8 = [(SBIconView *)&v42 hitTest:eventCopy withEvent:x, y];
  isIconContentScalingEnabled = [(SBIconView *)self isIconContentScalingEnabled];
  v10 = isIconContentScalingEnabled;
  if (v8)
  {
    v11 = !isIconContentScalingEnabled;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    goto LABEL_19;
  }

  if (self->_closeBox && [(SBIconView *)self _isShowingCloseBox])
  {
    if ([(SBIconView *)self isIconContentScalingEnabled])
    {
      contentContainerView = [(SBIconView *)self contentContainerView];
      [contentContainerView convertPoint:self fromView:{x, y}];
      v14 = v13;
      v16 = v15;
      [(SBCloseBoxView *)self->_closeBox frame];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      [(SBIconView *)self iconContentScale];
      CGAffineTransformMakeScale(&v40, v25, v25);
      CGAffineTransformInvert(&v41, &v40);
      v46.origin.x = v18;
      v46.origin.y = v20;
      v46.size.width = v22;
      v46.size.height = v24;
      v47 = CGRectApplyAffineTransform(v46, &v41);
      v44.x = v14;
      v44.y = v16;
      if (CGRectContainsPoint(v47, v44))
      {
        v26 = self->_closeBox;

        v8 = v26;
      }
    }

    else
    {
      [(SBCloseBoxView *)self->_closeBox convertPoint:self fromView:x, y];
      if (![(SBCloseBoxView *)self->_closeBox pointInside:eventCopy withEvent:?])
      {
        goto LABEL_13;
      }

      contentContainerView = v8;
      v8 = self->_closeBox;
    }
  }

LABEL_13:
  if (!v8)
  {
    if (self->_resizeHandle && [(SBIconView *)self isShowingResizeHandle]&& ([(SBHIconResizeHandle *)self->_resizeHandle convertPoint:self fromView:x, y], [(SBHIconResizeHandle *)self->_resizeHandle pointInside:eventCopy withEvent:?]))
    {
      v8 = self->_resizeHandle;
    }

    else
    {
      v8 = 0;
    }
  }

LABEL_19:
  if (v8 == self && v10)
  {
    contentContainerView2 = [(SBIconView *)self contentContainerView];
    [contentContainerView2 convertPoint:self fromView:{x, y}];
    v29 = v28;
    v31 = v30;
    [contentContainerView2 bounds];
    v45.x = v29;
    v45.y = v31;
    if (!CGRectContainsPoint(v48, v45))
    {

      v8 = 0;
    }
  }

  if (!v8)
  {
    if ([(SBIconView *)self allowsPassthroughHitTesting])
    {
      v41.a = 0.0;
      *&v41.b = &v41;
      *&v41.c = 0x3032000000;
      *&v41.d = __Block_byref_object_copy__17;
      *&v41.tx = __Block_byref_object_dispose__17;
      v41.ty = 0.0;
      subviews = [(SBIconView *)self subviews];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __32__SBIconView_hitTest_withEvent___block_invoke;
      v35[3] = &unk_1E808F118;
      v38 = x;
      v39 = y;
      v37 = &v41;
      v35[4] = self;
      v36 = eventCopy;
      [subviews enumerateObjectsWithOptions:2 usingBlock:v35];

      v8 = *(*&v41.b + 40);
      if (v8)
      {
        v33 = v8;
      }

      _Block_object_dispose(&v41, 8);
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

void __32__SBIconView_hitTest_withEvent___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  [a2 convertPoint:*(a1 + 32) fromView:{*(a1 + 56), *(a1 + 64)}];
  v7 = [a2 hitTest:*(a1 + 40) withEvent:?];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    *a4 = 1;
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  currentImageView = [(SBIconView *)self currentImageView];
  [currentImageView frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  type = [eventCopy type];

  if (type == 11)
  {
    top = self->_cursorHitTestPadding.top;
    left = self->_cursorHitTestPadding.left;
    v10 = v10 + left;
    v12 = v12 + top;
    v14 = v14 - (left + self->_cursorHitTestPadding.right);
    v16 = v16 - (top + self->_cursorHitTestPadding.bottom);
  }

  v23.origin.x = v10;
  v23.origin.y = v12;
  v23.size.width = v14;
  v23.size.height = v16;
  v22.x = x;
  v22.y = y;
  v20 = CGRectContainsPoint(v23, v22);

  return v20;
}

- (void)_delegateTouchEnded:(BOOL)ended
{
  endedCopy = ended;
  actionDelegate = [(SBIconView *)self actionDelegate];
  if (objc_opt_respondsToSelector())
  {
    [actionDelegate icon:self touchEnded:endedCopy];
  }
}

- (BOOL)_delegateTapAllowed
{
  behaviorDelegate = [(SBIconView *)self behaviorDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [behaviorDelegate iconShouldAllowTap:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  if (self->_iconEditingSettings == settings)
  {
    [(SBIconView *)self _applyIconEditingSettings];
  }
}

- (void)configureMatchingIconView:(id)view
{
  viewCopy = view;
  viewCopy[560] |= 0x80u;
  icon = [(SBIconView *)self icon];
  v6 = SBLogIcon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [SBIconView configureMatchingIconView:];
  }

  displayedImage = [(SBIconImageView *)self->_iconImageView displayedImage];
  if (displayedImage)
  {
    v8 = icon == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v14 = 0;
  }

  else
  {
    displayedImageAppearance = [(SBIconImageView *)self->_iconImageView displayedImageAppearance];
    [(SBIconView *)self iconImageInfo];
    v14 = [(SBHIconImageCache *)[SBHIconViewNonPoolingImageCache alloc] initWithName:&stru_1F3D472A8 iconImageInfo:v10, v11, v12, v13];
    [(SBHIconImageCache *)v14 cacheImage:displayedImage forIcon:icon imageAppearance:displayedImageAppearance];
  }

  [viewCopy setPendingIcon:icon];
  location = [(SBIconView *)self location];
  [viewCopy setLocation:location];

  listLayoutProvider = [(SBIconView *)self listLayoutProvider];
  [viewCopy setListLayoutProvider:listLayoutProvider];

  if (v14)
  {
    [viewCopy setIconImageCache:v14];
  }

  else
  {
    iconImageCache = [(SBIconView *)self iconImageCache];
    [viewCopy setIconImageCache:iconImageCache];
  }

  v35 = displayedImage;
  folderIconImageCache = [(SBIconView *)self folderIconImageCache];
  [viewCopy setFolderIconImageCache:folderIconImageCache];

  [viewCopy setIconContentScalingEnabled:(*(self + 555) >> 3) & 1];
  [(SBIconView *)self iconContentScale];
  [viewCopy setIconContentScale:?];
  [viewCopy setStartsDragMoreQuickly:{-[SBIconView startsDragMoreQuickly](self, "startsDragMoreQuickly")}];
  [viewCopy setAllowsEditingAnimation:{-[SBIconView allowsEditingAnimation](self, "allowsEditingAnimation")}];
  [viewCopy setAllowsCloseBox:{-[SBIconView allowsCloseBox](self, "allowsCloseBox")}];
  [viewCopy setAllowsAccessoryView:{-[SBIconView allowsAccessoryView](self, "allowsAccessoryView")}];
  [viewCopy setAllowsResizeHandle:{-[SBIconView allowsResizeHandle](self, "allowsResizeHandle")}];
  [viewCopy setAllowsAdornmentsOverIconImage:{-[SBIconView allowsAdornmentsOverIconImage](self, "allowsAdornmentsOverIconImage")}];
  continuityInfo = [(SBIconView *)self continuityInfo];
  [viewCopy setContinuityInfo:continuityInfo];

  legibilitySettings = [(SBIconView *)self legibilitySettings];
  [viewCopy setLegibilitySettings:legibilitySettings];

  [viewCopy setImageLoadingBehavior:{-[SBIconView imageLoadingBehavior](self, "imageLoadingBehavior")}];
  [viewCopy setContentVisibility:0];
  [viewCopy setPaused:0];
  if ((*(self + 557) & 8) != 0)
  {
    [(SBIconView *)self iconImageInfo];
    [viewCopy setIconImageInfo:?];
  }

  traitCollection = [(SBIconView *)self traitCollection];
  sbh_iconImageStyleConfiguration = [traitCollection sbh_iconImageStyleConfiguration];
  if (sbh_iconImageStyleConfiguration)
  {
    traitOverrides = [viewCopy traitOverrides];
    v24 = objc_opt_self();
    [traitOverrides setObject:sbh_iconImageStyleConfiguration forTrait:v24];

    [viewCopy setOverrideIconImageStyleConfiguration:sbh_iconImageStyleConfiguration];
  }

  sbh_iconEffect = [traitCollection sbh_iconEffect];
  if (sbh_iconEffect)
  {
    traitOverrides2 = [viewCopy traitOverrides];
    v27 = objc_opt_self();
    [traitOverrides2 setObject:sbh_iconEffect forTrait:v27];
  }

  delegate = [(SBIconView *)self delegate];
  [viewCopy setDelegate:delegate];

  [viewCopy setIcon:icon];
  customIconImageViewController = [viewCopy customIconImageViewController];
  if (customIconImageViewController)
  {
    if (objc_opt_respondsToSelector())
    {
      [(SBIconView *)self customIconImageViewController];
      v31 = v30 = v14;
      v32 = objc_opt_respondsToSelector();

      v14 = v30;
      if (v32)
      {
        customIconImageViewController2 = [(SBIconView *)self customIconImageViewController];
        [customIconImageViewController setImageViewAlignment:{objc_msgSend(customIconImageViewController2, "imageViewAlignment")}];

        v14 = v30;
      }
    }
  }

  iconImageCache2 = [(SBIconView *)self iconImageCache];
  [viewCopy setIconImageCache:iconImageCache2];

  viewCopy[560] &= ~0x80u;
}

- (void)setAllowsProgressState:(BOOL)state
{
  v3 = *(self + 556);
  if (((((v3 & 0x40) == 0) ^ state) & 1) == 0)
  {
    if (state)
    {
      v5 = 64;
    }

    else
    {
      v5 = 0;
    }

    *(self + 556) = v3 & 0xBF | v5;
    if (state)
    {
      window = [(SBIconView *)self window];
      if (window)
      {
        shouldAnimateProgress = [(SBIcon *)self->_icon shouldAnimateProgress];
      }

      else
      {
        shouldAnimateProgress = 0;
      }

      [(SBIconView *)self _updateProgressAnimated:shouldAnimateProgress];
    }

    else
    {

      [(SBIconView *)self _updateProgressAnimated:?];
    }
  }
}

- (void)_updateProgressAnimated:(BOOL)animated
{
  animatedCopy = animated;
  iconImageView = self->_iconImageView;
  progressState = [(SBIconView *)self progressState];
  isProgressPaused = [(SBIcon *)self->_icon isProgressPaused];
  [(SBIcon *)self->_icon progressPercent];
  [(SBIconImageView *)iconImageView setProgressState:progressState paused:isProgressPaused percent:animatedCopy animated:?];
  v8 = self->_iconImageView;
  iconAccessoryAlpha = self->_iconAccessoryAlpha;

  [(SBIconImageView *)v8 setProgressAlpha:iconAccessoryAlpha];
}

- (void)_backgroundContrastDidChange:(id)change
{
  [(SBIconLabelView *)self->_labelView removeFromSuperview];
  labelView = self->_labelView;
  self->_labelView = 0;

  [(SBIconView *)self _updateLabel];
}

- (void)_contentSizeCategoryDidChange:(id)change
{
  [(SBIconView *)self _updateLabelArea];

  [(SBIconView *)self dismissContextMenuWithCompletion:0];
}

- (void)_boldTextStatusDidChange:(id)change
{
  [(SBIconView *)self _updateLabelArea];

  [(SBIconView *)self _updateAccessoryViewAnimated:0];
}

- (void)setFolderIconFrozen:(BOOL)frozen
{
  frozenCopy = frozen;
  if ([(SBIconView *)self _isFolderIconFreezingSupported])
  {
    v5 = *(self + 556);
    if (((((v5 & 8) == 0) ^ frozenCopy) & 1) == 0)
    {
      if (frozenCopy)
      {
        v6 = 8;
      }

      else
      {
        v6 = 0;
      }

      *(self + 556) = v5 & 0xF7 | v6;
      if (frozenCopy)
      {
        reuseDelegate = [(SBIconView *)self reuseDelegate];
        if (objc_opt_respondsToSelector())
        {
          v8 = [reuseDelegate screenSnapshotProviderForComponentsOfIconView:self];
          snapshotProvider = self->_snapshotProvider;
          self->_snapshotProvider = v8;

          if (self->_snapshotProvider)
          {
            _folderIconImageView = [(SBIconView *)self _folderIconImageView];
            v11 = objc_alloc(MEMORY[0x1E69DD250]);
            [_folderIconImageView frame];
            v12 = [v11 initWithFrame:?];
            snapshotContainerView = self->_snapshotContainerView;
            self->_snapshotContainerView = v12;

            [(UIView *)self->_snapshotContainerView setClipsToBounds:1];
            v14 = self->_snapshotContainerView;
            [(SBIconView *)self iconImageCornerRadius];
            [(UIView *)v14 _setContinuousCornerRadius:?];
            [(SBIconView *)self addSubview:self->_snapshotContainerView];
            snapshotView = [(SBIconViewSnapshotProviding *)self->_snapshotProvider snapshotView];
            [(UIView *)self->_snapshotContainerView addSubview:snapshotView];
            [snapshotView frame];
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v23 = v22;
            superview = [_folderIconImageView superview];
            window = [(SBIconView *)self window];
            [window convertRect:0 fromWindow:{v17, v19, v21, v23}];
            [superview convertRect:0 fromView:?];
            v27 = v26;
            v29 = v28;
            v31 = v30;
            v33 = v32;

            [snapshotView setFrame:{v27, v29, v31, v33}];
          }
        }
      }

      else
      {
        snapshotView2 = [(SBIconViewSnapshotProviding *)self->_snapshotProvider snapshotView];
        [snapshotView2 removeFromSuperview];

        [(SBIconViewSnapshotProviding *)self->_snapshotProvider invalidate];
        reuseDelegate = self->_snapshotProvider;
        self->_snapshotProvider = 0;
      }

      _folderIconImageView2 = [(SBIconView *)self _folderIconImageView];
      [_folderIconImageView2 setPageGridHidden:(*(self + 556) >> 3) & 1];
    }
  }
}

- (unint64_t)visibleMiniIconCount
{
  _folderIconImageView = [(SBIconView *)self _folderIconImageView];
  visibleMiniIconCount = [_folderIconImageView visibleMiniIconCount];

  return visibleMiniIconCount;
}

- (unint64_t)firstVisibleMiniIconIndex
{
  _folderIconImageView = [(SBIconView *)self _folderIconImageView];
  firstVisibleMiniIconIndex = [_folderIconImageView firstVisibleMiniIconIndex];

  return firstVisibleMiniIconIndex;
}

- (unint64_t)centerVisibleMiniIconIndex
{
  _folderIconImageView = [(SBIconView *)self _folderIconImageView];
  centerVisibleMiniIconIndex = [_folderIconImageView centerVisibleMiniIconIndex];

  return centerVisibleMiniIconIndex;
}

- (unint64_t)lastVisibleMiniIconIndex
{
  _folderIconImageView = [(SBIconView *)self _folderIconImageView];
  lastVisibleMiniIconIndex = [_folderIconImageView lastVisibleMiniIconIndex];

  return lastVisibleMiniIconIndex;
}

- (CGRect)frameForMiniIconAtIndex:(unint64_t)index
{
  _folderIconImageView = [(SBIconView *)self _folderIconImageView];
  [_folderIconImageView frameForMiniIconAtIndex:index];
  [(SBIconView *)self convertRect:_folderIconImageView fromView:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)visibleImageRelativeFrameForMiniIconAtIndex:(unint64_t)index
{
  _folderIconImageView = [(SBIconView *)self _folderIconImageView];
  [_folderIconImageView visibleImageRelativeFrameForMiniIconAtIndex:index];
  x = v6;
  y = v8;
  width = v10;
  height = v12;

  [(SBIconView *)self iconContentScale];
  v15 = v14;
  if ((BSFloatIsOne() & 1) == 0)
  {
    CGAffineTransformMakeScale(&v20, v15, v15);
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v22 = CGRectApplyAffineTransform(v21, &v20);
    x = v22.origin.x;
    y = v22.origin.y;
    width = v22.size.width;
    height = v22.size.height;
  }

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)scrollToTopOfFirstPageAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _folderIconImageView = [(SBIconView *)self _folderIconImageView];
  [_folderIconImageView scrollToTopOfFirstPageAnimated:animatedCopy];
}

- (void)scrollToFirstGapAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _folderIconImageView = [(SBIconView *)self _folderIconImageView];
  [_folderIconImageView scrollToFirstGapAnimated:animatedCopy];
}

- (void)scrollToTopOfPage:(unint64_t)page animated:(BOOL)animated
{
  animatedCopy = animated;
  _folderIconImageView = [(SBIconView *)self _folderIconImageView];
  [_folderIconImageView scrollToTopOfPage:page animated:animatedCopy];
}

- (void)scrollToGapOrTopIfFullOfPage:(unint64_t)page animated:(BOOL)animated
{
  animatedCopy = animated;
  _folderIconImageView = [(SBIconView *)self _folderIconImageView];
  [_folderIconImageView scrollToGapOrTopIfFullOfPage:page animated:animatedCopy];
}

- (BOOL)isAnimatingScrolling
{
  _folderIconImageView = [(SBIconView *)self _folderIconImageView];
  isAnimating = [_folderIconImageView isAnimating];

  return isAnimating;
}

- (void)setIconGridImageAlpha:(double)alpha
{
  _folderIconImageView = [(SBIconView *)self _folderIconImageView];
  [_folderIconImageView setIconGridImageAlpha:alpha];
}

- (void)setBackgroundAndIconGridImageAlpha:(double)alpha
{
  _folderIconImageView = [(SBIconView *)self _folderIconImageView];
  [_folderIconImageView setBackgroundAndIconGridImageAlpha:alpha];
}

- (void)prepareToCrossfadeWithFloatyFolderView:(id)view allowFolderInteraction:(BOOL)interaction
{
  interactionCopy = interaction;
  viewCopy = view;
  [(SBIconView *)self setAllowsEditingAnimation:0];
  _folderIconImageView = [(SBIconView *)self _folderIconImageView];
  [_folderIconImageView prepareToCrossfadeWithFloatyFolderView:viewCopy allowFolderInteraction:interactionCopy];
}

- (void)setFloatyFolderCrossfadeFraction:(double)fraction
{
  _folderIconImageView = [(SBIconView *)self _folderIconImageView];
  [_folderIconImageView setFloatyFolderCrossfadeFraction:fraction];

  v6 = 1.0 - fraction;
  [(SBIconView *)self setIconAccessoryAlpha:v6];

  [(SBIconView *)self setIconLabelAlpha:v6];
}

- (void)cleanupAfterFloatyFolderCrossfade
{
  [(SBIconView *)self setAllowsEditingAnimation:1];
  [(SBIconView *)self setFloatyFolderCrossfadeFraction:0.0];
  _folderIconImageView = [(SBIconView *)self _folderIconImageView];
  [_folderIconImageView cleanupAfterFloatyFolderCrossfade];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"zPosition"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBIconView;
    v5 = [(SBIconView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBIconView *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  icon = [(SBIconView *)self icon];
  location = [(SBIconView *)self location];
  v6 = [MEMORY[0x1E698E680] builderWithObject:self];
  [(SBIconView *)self frame];
  v7 = [v6 appendRect:@"frame" withName:?];
  v8 = [v6 appendObject:icon withName:@"icon"];
  v9 = [v6 appendObject:location withName:@"location"];
  folder = [(SBIconView *)self folder];
  v11 = [v6 appendObject:folder withName:@"folder" skipIfNil:1];

  currentAccessoryType = [(SBIconView *)self currentAccessoryType];
  if (currentAccessoryType > 1)
  {
    v14 = @"add";
    if (currentAccessoryType != 3)
    {
      v14 = 0;
    }

    if (currentAccessoryType == 2)
    {
      v13 = @"continuity";
    }

    else
    {
      v13 = v14;
    }
  }

  else
  {
    if (!currentAccessoryType)
    {
      goto LABEL_12;
    }

    if (currentAccessoryType == 1)
    {
      v13 = @"badge";
    }

    else
    {
      v13 = 0;
    }
  }

  v15 = [v6 appendObject:v13 withName:@"accessoryType"];
LABEL_12:
  currentLabelAccessoryType = [(SBIconView *)self currentLabelAccessoryType];
  if (currentLabelAccessoryType <= 1)
  {
    if (!currentLabelAccessoryType)
    {
      goto LABEL_25;
    }

    if (currentLabelAccessoryType == 1)
    {
      v19 = @"recently updated";
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v17 = @"cloud";
    v18 = @"beta";
    if (currentLabelAccessoryType != 2)
    {
      v18 = 0;
    }

    if (currentLabelAccessoryType != 3)
    {
      v17 = v18;
    }

    if (currentLabelAccessoryType == 4)
    {
      v19 = @"screen time expiration";
    }

    else
    {
      v19 = v17;
    }
  }

  v20 = [v6 appendObject:v19 withName:@"labelAccessoryType"];
LABEL_25:
  [(SBIconView *)self iconContentScale];
  v22 = v21;
  if ((BSFloatIsOne() & 1) == 0)
  {
    v23 = [v6 appendFloat:@"iconContentScale" withName:v22];
  }

  [(SBIconView *)self alpha];
  v25 = v24;
  if ((BSFloatIsOne() & 1) == 0)
  {
    v26 = [v6 appendFloat:@"alpha" withName:v25];
  }

  [(SBIconView *)self iconImageAlpha];
  v28 = v27;
  if ((BSFloatIsOne() & 1) == 0)
  {
    v29 = [v6 appendFloat:@"iconImageAlpha" withName:v28];
  }

  [(SBIconView *)self iconAccessoryAlpha];
  v31 = v30;
  if ((BSFloatIsOne() & 1) == 0)
  {
    v32 = [v6 appendFloat:@"iconAccessoryAlpha" withName:v31];
  }

  [(SBIconView *)self iconLabelAlpha];
  v34 = v33;
  if ((BSFloatIsOne() & 1) == 0)
  {
    v35 = [v6 appendFloat:@"iconLabelAlpha" withName:v34];
  }

  v36 = [v6 appendBool:-[SBIconView isHidden](self withName:"isHidden") ifEqualTo:{@"isHidden", 1}];
  v37 = [v6 appendBool:-[SBIconView allowsLabelArea](self withName:"allowsLabelArea") ifEqualTo:{@"allowsLabelArea", 0}];
  v38 = [v6 appendBool:-[SBIconView isLabelHidden](self withName:"isLabelHidden") ifEqualTo:{@"isLabelHidden", 1}];
  v39 = [v6 appendBool:-[SBIconView isLabelAccessoryHidden](self withName:"isLabelAccessoryHidden") ifEqualTo:{@"isLabelAccessoryHidden", 1}];
  v40 = [v6 appendBool:-[SBIconView allIconElementsButLabelHidden](self withName:"allIconElementsButLabelHidden") ifEqualTo:{@"allIconElementsButLabelHidden", 1}];
  v41 = [v6 appendBool:-[SBIconView isEditing](self withName:"isEditing") ifEqualTo:{@"isEditing", 1}];
  v42 = [v6 appendBool:-[SBIconView isHighlighted](self withName:"isHighlighted") ifEqualTo:{@"isHighlighted", 1}];
  v43 = [v6 appendBool:-[SBIconView isGrabbed](self withName:"isGrabbed") ifEqualTo:{@"isGrabbed", 1}];
  v44 = [v6 appendBool:-[SBIconView isOverlapping](self withName:"isOverlapping") ifEqualTo:{@"isOverlapping", 1}];
  v45 = [v6 appendBool:-[SBIconView isTouchDownInIcon](self withName:"isTouchDownInIcon") ifEqualTo:{@"isTouchDownInIcon", 1}];
  v46 = [v6 appendBool:-[SBIconView isDragging](self withName:"isDragging") ifEqualTo:{@"isDragging", 1}];
  v47 = [v6 appendBool:-[SBIconView isDropping](self withName:"isDropping") ifEqualTo:{@"isDropping", 1}];
  v48 = [v6 appendBool:-[SBIconView isTimedOut](self withName:"isTimedOut") ifEqualTo:{@"isTimedOut", 1}];
  v49 = [v6 appendBool:(*(self + 553) >> 6) & 1 withName:@"launchDisabled" ifEqualTo:1];
  v50 = [v6 appendBool:*(self + 553) >> 7 withName:@"suppressDisabledPresentation" ifEqualTo:1];
  v51 = [v6 appendBool:*(self + 554) & 1 withName:@"iconWasTappedWhenDisabled" ifEqualTo:1];
  continuityInfo = [(SBIconView *)self continuityInfo];
  v53 = [v6 appendObject:continuityInfo withName:@"continuityInfo" skipIfNil:1];

  v54 = [v6 appendBool:-[SBIconView isUserInteractionEnabled](self withName:"isUserInteractionEnabled") ifEqualTo:{@"isUserInteractionEnabled", 0}];
  pauseReasonsDescriptions = [(SBIconView *)self pauseReasonsDescriptions];
  v56 = [pauseReasonsDescriptions componentsJoinedByString:{@", "}];
  [v6 appendString:v56 withName:@"pauseReasons" skipIfEmpty:1];

  v57 = [v6 appendBool:-[SBIconView isIconImageViewBorrowed](self withName:"isIconImageViewBorrowed") ifEqualTo:{@"isIconImageViewBorrowed", 1}];
  overrideCustomIconImageViewController = [(SBIconView *)self overrideCustomIconImageViewController];
  v59 = [v6 appendObject:overrideCustomIconImageViewController withName:@"overrideCustomIconImageViewController" skipIfNil:1];

  v60 = [v6 appendBool:-[SBIconView allowsIconImageView](self withName:"allowsIconImageView") ifEqualTo:{@"allowsIconImageView", 0}];
  v61 = [v6 appendBool:-[SBIconView isResizing](self withName:"isResizing") ifEqualTo:{@"isResizing", 1}];
  overrideBadgeNumberOrString = [(SBIconView *)self overrideBadgeNumberOrString];
  v63 = [v6 appendObject:overrideBadgeNumberOrString withName:@"overrideBadgeNumberOrString" skipIfNil:1];

  overrideIconImageAppearance = [(SBIconView *)self overrideIconImageAppearance];
  v65 = [v6 appendObject:overrideIconImageAppearance withName:@"overrideIconImageAppearance" skipIfNil:1];

  overrideIconImageStyleConfiguration = [(SBIconView *)self overrideIconImageStyleConfiguration];
  v67 = [v6 appendObject:overrideIconImageStyleConfiguration withName:@"overrideIconImageStyleConfiguration" skipIfNil:1];

  overrideImage = [(SBIconView *)self overrideImage];
  v69 = [v6 appendObject:overrideImage withName:@"overrideImage" skipIfNil:1];

  contentVisibility = [(SBIconView *)self contentVisibility];
  if (contentVisibility)
  {
    v71 = SBHStringFromContentVisibility(contentVisibility);
    [v6 appendString:v71 withName:@"contentVisibility"];
  }

  return v6;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBIconView *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (void)iconAccessoriesDidUpdate:(id)update
{
  updateCopy = update;
  BSDispatchQueueAssertMain();
  icon = self->_icon;

  if (icon == updateCopy)
  {
    window = [(SBIconView *)self window];

    [(SBIconView *)self _updateLabelArea];
    if (window)
    {
      shouldAnimateProgress = [(SBIcon *)self->_icon shouldAnimateProgress];
    }

    else
    {
      shouldAnimateProgress = 0;
    }

    [(SBIconView *)self _updateProgressAnimated:shouldAnimateProgress];

    [(SBIconView *)self _updateIconImageAdornmentsAnimated:window != 0];
  }
}

- (void)iconProgressDidChange:(id)change
{
  changeCopy = change;
  BSDispatchQueueAssertMain();
  icon = self->_icon;

  if (icon == changeCopy)
  {
    window = [(SBIconView *)self window];

    [(SBIconView *)self _updateLabelArea];
    if (window)
    {
      shouldAnimateProgress = [(SBIcon *)self->_icon shouldAnimateProgress];
    }

    else
    {
      shouldAnimateProgress = 0;
    }

    [(SBIconView *)self _updateProgressAnimated:shouldAnimateProgress];
  }
}

- (void)iconLaunchEnabledDidChange:(id)change
{
  changeCopy = change;
  BSDispatchQueueAssertMain();
  icon = self->_icon;

  if (icon == changeCopy)
  {
    [(SBIconView *)self _updateBrightness];

    [(SBIconView *)self _updateLaunchDisabled];
  }
}

- (void)iconImageDidUpdate:(id)update
{
  updateCopy = update;
  BSDispatchQueueAssertMain();
  icon = self->_icon;

  if (icon == updateCopy)
  {
    [(SBIconView *)self _updateIconImageViewAnimated:0];

    [(SBIconView *)self _updateBrightness];
  }
}

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  changedCopy = changed;
  icon = [(SBIconView *)self icon];
  v7 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = MEMORY[0x1E698B0D0];
    applicationBundleID = [icon applicationBundleID];
    v11 = [v9 applicationWithBundleIdentifier:applicationBundleID];
    v12 = [changedCopy containsObject:v11];

    if (v12)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __59__SBIconView_appProtectionSubjectsChanged_forSubscription___block_invoke;
      block[3] = &unk_1E8088C90;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __59__SBIconView_appProtectionSubjectsChanged_forSubscription___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contextMenuDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 refreshContextMenuForIconView:*(a1 + 32)];
  }
}

- (void)startForbiddingEditingModeWithReason:(id)reason
{
  reasonCopy = reason;
  forbidEditingModeReasons = self->_forbidEditingModeReasons;
  v8 = reasonCopy;
  if (!forbidEditingModeReasons)
  {
    v6 = [MEMORY[0x1E696AB50] set];
    v7 = self->_forbidEditingModeReasons;
    self->_forbidEditingModeReasons = v6;

    reasonCopy = v8;
    forbidEditingModeReasons = self->_forbidEditingModeReasons;
  }

  [(NSCountedSet *)forbidEditingModeReasons addObject:reasonCopy];
  [(SBIconView *)self _applyEditingStateAnimated:1];
}

- (void)endForbiddingEditingModeWithReason:(id)reason
{
  reasonCopy = reason;
  forbidEditingModeReasons = self->_forbidEditingModeReasons;
  if (forbidEditingModeReasons)
  {
    v7 = reasonCopy;
    forbidEditingModeReasons = [(NSCountedSet *)forbidEditingModeReasons containsObject:reasonCopy];
    reasonCopy = v7;
    if (forbidEditingModeReasons)
    {
      [(NSCountedSet *)self->_forbidEditingModeReasons removeObject:v7];
      if (![(NSCountedSet *)self->_forbidEditingModeReasons count])
      {
        v6 = self->_forbidEditingModeReasons;
        self->_forbidEditingModeReasons = 0;
      }

      forbidEditingModeReasons = [(SBIconView *)self _applyEditingStateAnimated:1];
      reasonCopy = v7;
    }
  }

  MEMORY[0x1EEE66BB8](forbidEditingModeReasons, reasonCopy);
}

- (id)startForbiddingAccessoryUpdatesWithReason:(id)reason animated:(BOOL)animated
{
  animatedCopy = animated;
  v15[2] = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  if (!self->_forbidAccessoryUpdatesAssertions)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    forbidAccessoryUpdatesAssertions = self->_forbidAccessoryUpdatesAssertions;
    self->_forbidAccessoryUpdatesAssertions = weakObjectsHashTable;
  }

  v9 = [SBIconViewAssertion alloc];
  v14[0] = @"reason";
  v14[1] = @"animated";
  v15[0] = reasonCopy;
  v10 = [MEMORY[0x1E696AD98] numberWithBool:animatedCopy];
  v15[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v12 = [(SBIconViewAssertion *)v9 initWithAssertionType:1 iconView:self extraInfo:v11];

  [(NSHashTable *)self->_forbidAccessoryUpdatesAssertions addObject:v12];
  [(SBIconView *)self _updateAccessoryViewAnimated:animatedCopy];

  return v12;
}

- (void)removeForbidAccessoryUpdatesAssertion:(id)assertion
{
  assertionCopy = assertion;
  extraInfo = [assertionCopy extraInfo];
  v6 = [extraInfo objectForKey:@"animated"];
  bOOLValue = [v6 BOOLValue];

  [(NSHashTable *)self->_forbidAccessoryUpdatesAssertions removeObject:assertionCopy];
  if (![(NSHashTable *)self->_forbidAccessoryUpdatesAssertions count])
  {
    forbidAccessoryUpdatesAssertions = self->_forbidAccessoryUpdatesAssertions;
    self->_forbidAccessoryUpdatesAssertions = 0;
  }

  [(SBIconView *)self _updateAccessoryViewAnimated:bOOLValue];
}

- (BOOL)_selfOrCustomViewCanBecomeFocused
{
  behaviorDelegate = [(SBIconView *)self behaviorDelegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [behaviorDelegate iconViewCanBecomeFocused:self])
  {
    v4 = ![(NSString *)self->_iconLocation isEqualToString:@"SBIconLocationNone"];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  focusProxyView = self->_focusProxyView;
  if (!focusProxyView)
  {
    focusProxyView = self;
  }

  v6 = focusProxyView;
  nextFocusedItem = [contextCopy nextFocusedItem];

  if (nextFocusedItem == v6)
  {
    behaviorDelegate = [(SBIconView *)self behaviorDelegate];
    if (objc_opt_respondsToSelector())
    {
      v10 = [behaviorDelegate focusEffectTypeForIconView:self];
      if (v10 == 1)
      {
        [(SBIconView *)self setFocusEffect:0];
        [(SBIconView *)self setShowsFocusEffect:1];
      }

      else if (!v10)
      {
        [(SBIconView *)self iconImageInfo];
        v11 = MEMORY[0x1E69DCA28];
        v15 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, v12, v13, v14}];
        v16 = [v11 effectWithPath:v15];

        [v16 setPosition:1];
        [(SBIconView *)self setFocusEffect:v16];
      }
    }
  }

  else
  {
    previouslyFocusedItem = [contextCopy previouslyFocusedItem];

    if (previouslyFocusedItem == v6 && self->_focusEffectPlatterView)
    {
      [(SBIconView *)self setShowsFocusEffect:0];
    }
  }
}

- (void)setupFocusEffectPlatterView
{
  if (!self->_focusEffectPlatterView)
  {
    v3 = [SBIconFocusEffectPlatterView alloc];
    [(SBIconView *)self _focusEffectBoundsForFocused:1 withFocusOutset:6.05];
    v4 = [(SBIconFocusEffectPlatterView *)v3 initWithFrame:?];
    [(SBIconFocusEffectPlatterView *)v4 setAlpha:0.0];
    [(SBIconView *)self _focusEffectCenter];
    [(SBIconFocusEffectPlatterView *)v4 setCenter:?];
    [(SBIconView *)self iconImageCornerRadius];
    [(SBIconFocusEffectPlatterView *)v4 _setContinuousCornerRadius:v5 + 6.05];
    [(SBIconFocusEffectPlatterView *)v4 layoutIfNeeded];
    imageContainerView = [(SBIconView *)self imageContainerView];
    currentImageView = [(SBIconView *)self currentImageView];
    [imageContainerView insertSubview:v4 belowSubview:currentImageView];

    focusEffectPlatterView = self->_focusEffectPlatterView;
    self->_focusEffectPlatterView = v4;
  }
}

- (void)setWantsFocusProxyView:(BOOL)view
{
  v3 = *(self + 559);
  if (((((v3 & 2) == 0) ^ view) & 1) == 0)
  {
    if (view)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *(self + 559) = v3 & 0xFD | v5;
    focusProxyView = self->_focusProxyView;
    if (view)
    {
      if (focusProxyView)
      {
        return;
      }

      v7 = [[SBHFocusProxyView alloc] initWithProxyableView:self];
      v8 = self->_focusProxyView;
      self->_focusProxyView = v7;

      superview = [(SBIconView *)self superview];
      [superview insertSubview:self->_focusProxyView belowSubview:self];
      v9 = superview;
    }

    else
    {
      if (!focusProxyView)
      {
        return;
      }

      [(UIFocusItem *)focusProxyView removeFromSuperview];
      v9 = self->_focusProxyView;
      self->_focusProxyView = 0;
    }
  }
}

- (SBIconViewDragDelegate)overrideDraggingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_overrideDraggingDelegate);

  return WeakRetained;
}

- (SBIconViewDropDelegate)overrideDroppingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_overrideDroppingDelegate);

  return WeakRetained;
}

- (UIEdgeInsets)cursorHitTestPadding
{
  top = self->_cursorHitTestPadding.top;
  left = self->_cursorHitTestPadding.left;
  bottom = self->_cursorHitTestPadding.bottom;
  right = self->_cursorHitTestPadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (APSubjectMonitorSubscription)appPrototectionSubjectMonitorSubscription
{
  WeakRetained = objc_loadWeakRetained(&self->_appPrototectionSubjectMonitorSubscription);

  return WeakRetained;
}

- (UIDragSession)liftingDragSession
{
  WeakRetained = objc_loadWeakRetained(&self->_liftingDragSession);

  return WeakRetained;
}

- (void)setContentVisibility:(uint64_t)a1 .cold.1(uint64_t a1, unsigned __int8 *a2)
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:(*a2 >> 3) & 3];
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_3_3(&dword_1BEB18000, v3, v4, "<%{public}@> Content visibility changed to: %{public}@", v5, v6, v7, v8, v9);
}

- (void)borrowIconImageViewWithOptions:(void *)a1 .cold.1(void *a1)
{
  v7 = [a1 customIconImageViewController];
  OUTLINED_FUNCTION_3_3(&dword_1BEB18000, v1, v2, "<%{public}@> borrowIconImageViewWithOptions (custom VC: %@)", v3, v4, v5, v6, 2u);
}

- (void)removeBorrowedIconImageViewAssertion:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 customIconImageViewController];
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_3_3(&dword_1BEB18000, v2, v3, "<%{public}@> Remove borrowedIconImageViewAssertion (custom VC: %{public}@)", v4, v5, v6, v7, v8);
}

- (void)_updatePresentationModeForReason:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_12();
  v2 = @"Static";
  _os_log_debug_impl(&dword_1BEB18000, v0, OS_LOG_TYPE_DEBUG, "<%{public}@> Overriding presentation mode because asserted low resolution snapshot: %{public}@", v1, 0x16u);
}

- (void)_updatePresentationModeForReason:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_12();
  v2 = @"LiveSnapshot";
  _os_log_debug_impl(&dword_1BEB18000, v0, OS_LOG_TYPE_DEBUG, "<%{public}@> Overriding presentation mode because asserted snapshot: %{public}@", v1, 0x16u);
}

@end