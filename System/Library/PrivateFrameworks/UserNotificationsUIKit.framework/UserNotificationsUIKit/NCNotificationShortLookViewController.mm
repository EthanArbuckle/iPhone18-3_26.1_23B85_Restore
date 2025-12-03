@interface NCNotificationShortLookViewController
+ (id)_sharedNotificationFeedbackGenerator;
+ (void)_playNegativeInteractionHaptic;
+ (void)_prepareSharedNotificationFeedbackGenerator;
- (BOOL)_isLockedByAppProtection;
- (BOOL)_isPresentingCustomContentProvidingViewController;
- (BOOL)_setNotificationRequest:(id)request;
- (BOOL)_shouldPerformHoverHighlighting;
- (BOOL)_shouldSupportExpandedPlatterInteraction;
- (BOOL)_shouldUseHapticTouch;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canResignFirstResponder;
- (BOOL)clickPresentationInteractionManager:(id)manager shouldBeginInteractionWithTouchAtLocation:(CGPoint)location;
- (BOOL)clickPresentationInteractionManagerShouldAllowLongPressGesture:(id)gesture;
- (BOOL)didForwardNotificationRequestToCustomContent:(id)content;
- (BOOL)dismissPresentedViewControllerAnimated:(BOOL)animated;
- (BOOL)expandedPlatterInteractionManager:(id)manager shouldBeginInteractionWithTouchAtLocation:(CGPoint)location;
- (BOOL)expandedPlatterInteractionManagerShouldAllowLongPressGesture:(id)gesture;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)hasCommittedToPresentingCustomContentProvidingViewController;
- (BOOL)isContentExtensionVisible:(id)visible;
- (BOOL)isHighlighted;
- (BOOL)isNotPresentingOrHasCommittedToDismissingCustomContentProvidingViewController;
- (BOOL)isNotificationContentViewHidden;
- (BOOL)resignFirstResponder;
- (BOOL)shouldCommitToExpandedPlatterPresentationWithFeedback;
- (CGRect)finalDismissedFrameOfViewForPreview;
- (CGRect)finalPresentedFrameOfViewForPreview;
- (CGRect)initialPresentedFrameOfViewForPreview;
- (UIBezierPath)visiblePath;
- (id)_expandedPlatterViewController;
- (id)_initWithNotificationRequest:(id)request revealingAdditionalContentOnPresentation:(BOOL)presentation;
- (id)_interactionManagerCreatingIfNecessary;
- (id)_longLookNotificationViewController;
- (id)_newClickPresentationInteractionManager;
- (id)_notificationShortLookViewIfLoaded;
- (id)_presentedLongLookViewController;
- (id)_presentedViewController;
- (id)backgroundMaterialView;
- (id)containerViewForExpandedContent;
- (id)currentTraits;
- (id)customBackgroundContainerViewForExpandedPlatterPresentationController:(id)controller;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
- (id)expandedPlatterInteractionManager:(id)manager menuWithSuggestedActions:(id)actions;
- (id)expandedPlatterInteractionManagerIdentifier:(id)identifier;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (id)presentedExpandedPlatterViewController;
- (id)transitioningDelegateForClickPresentationInteractionManager:(id)manager;
- (int64_t)expandedPlatterViewController:(id)controller dateFormatStyleForNotificationRequest:(id)request;
- (unint64_t)_maximumNumberOfPrimaryTextLinesForProvidedStaticContent;
- (unint64_t)_maximumNumberOfSecondaryTextLinesForProvidedStaticContent;
- (unint64_t)_maximumNumberOfTextLinesForProvidedStaticContentWithDefaultNumber:(unint64_t)number isPrimary:(BOOL)primary isLarge:(BOOL)large;
- (unint64_t)importantAdornmentEligibleOptionsForNotificationViewController:(id)controller;
- (void)_askDelegateToExecuteAction:(id)action withParameters:(id)parameters animated:(BOOL)animated;
- (void)_checkDelegateShouldTransitionForTrigger:(int64_t)trigger completionBlock:(id)block;
- (void)_dismissPresentedViewControllerAnimated:(BOOL)animated;
- (void)_expandedPlatterInteractionManager:(id)manager didDismissWithReason:(id)reason;
- (void)_expandedPlatterInteractionManager:(id)manager willDismissWithReason:(id)reason;
- (void)_handlePresentedContentDismissalForClickPresentationInteractionManagerWithTrigger:(int64_t)trigger;
- (void)_handleTapOnView:(id)view;
- (void)_intelligenceLightAnimationIfNeeded;
- (void)_loadLookView;
- (void)_notificationViewControllerViewDidLoad;
- (void)_presentLongLookAnimated:(BOOL)animated trigger:(int64_t)trigger completion:(id)completion;
- (void)_presentLongLookForScrollAnimated:(BOOL)animated completion:(id)completion;
- (void)_presentLongLookViaClickPresentationInteraction:(id)interaction;
- (void)_presentLongLookViaInteractionManager:(id)manager;
- (void)_requestAppProtectionUnlockWithCompletion:(id)completion;
- (void)_updateLookView:(id)view withTitleFromProvidedStaticContent:(id)content;
- (void)_updateScreenCaptureProhibited;
- (void)_updateShortLookShadow;
- (void)_updateThumbnailForRichContentForShortLookView:(id)view withContentProvider:(id)provider;
- (void)_updateWithProvidedAuxiliaryOptionsContent;
- (void)_updateWithProvidedStaticContent;
- (void)clickPresentationInteractionManager:(id)manager shouldFinishInteractionThatReachedForceThreshold:(BOOL)threshold withCompletionBlock:(id)block;
- (void)clickPresentationInteractionManagerDidEndUserInteraction:(id)interaction;
- (void)containerViewForExpandedContent;
- (void)contentProvider:(id)provider performAction:(id)action animated:(BOOL)animated;
- (void)customContent:(id)content didUpdateUserNotificationActions:(id)actions;
- (void)dragInteraction:(id)interaction item:(id)item willAnimateCancelWithAnimator:(id)animator;
- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation;
- (void)dragInteraction:(id)interaction session:(id)session willEndWithOperation:(unint64_t)operation;
- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin;
- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session;
- (void)expandAndPlayMedia;
- (void)expandedPlatter:(id)platter didDismissWithReason:(id)reason;
- (void)expandedPlatter:(id)platter willDismissWithReason:(id)reason;
- (void)expandedPlatterDidPresent:(id)present;
- (void)expandedPlatterInteractionManager:(id)manager shouldCommitInteraction:(id)interaction;
- (void)expandedPlatterInteractionManager:(id)manager willDismissContentWithAnimator:(id)animator;
- (void)expandedPlatterInteractionManager:(id)manager willPresentContentWithAnimator:(id)animator;
- (void)expandedPlatterViewController:(id)controller requestsDismissalWithReason:(id)reason userInfo:(id)info;
- (void)expandedPlatterWillPresent:(id)present;
- (void)notificationViewControllerDidDismiss:(id)dismiss;
- (void)notificationViewControllerDidPresent:(id)present;
- (void)notificationViewControllerWillDismiss:(id)dismiss;
- (void)notificationViewControllerWillPresent:(id)present;
- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator;
- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator;
- (void)presentLongLookAnimated:(BOOL)animated trigger:(int64_t)trigger completion:(id)completion;
- (void)setContentReplacedWithSnapshot:(BOOL)snapshot;
- (void)setCustomContentHomeAffordanceGestureRecognizer:(id)recognizer;
- (void)setCustomContentHomeAffordanceVisible:(BOOL)visible;
- (void)setGlassMode:(unint64_t)mode;
- (void)setHasShadow:(BOOL)shadow;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setInteractionEnabled:(BOOL)enabled;
- (void)setMaterialGroupNameBase:(id)base;
- (void)setNotificationContentViewHidden:(BOOL)hidden;
- (void)setPlatterHighlighted:(BOOL)highlighted;
- (void)shouldCommitToExpandedPlatterPresentationWithFeedback;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation NCNotificationShortLookViewController

- (id)containerViewForExpandedContent
{
  containerViewForExpandedContent = self->_containerViewForExpandedContent;
  if (!containerViewForExpandedContent)
  {
    delegate = [(NCNotificationViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v5 = [delegate notificationViewControllerContainerViewProviderForExpandedContent:self];
      if (v5)
      {
        containerViewProviders = self->_containerViewProviders;
        if (!containerViewProviders)
        {
          v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v8 = self->_containerViewProviders;
          self->_containerViewProviders = v7;

          containerViewProviders = self->_containerViewProviders;
        }

        [(NSMutableArray *)containerViewProviders addObject:v5];
        containerView = [v5 containerView];
        v10 = self->_containerViewForExpandedContent;
        self->_containerViewForExpandedContent = containerView;
      }

      else
      {
        v11 = *MEMORY[0x277D77DB0];
        if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
        {
          [(NCNotificationShortLookViewController *)delegate containerViewForExpandedContent];
        }
      }
    }

    containerViewForExpandedContent = self->_containerViewForExpandedContent;
  }

  return containerViewForExpandedContent;
}

- (BOOL)canBecomeFirstResponder
{
  if ([(NCNotificationShortLookViewController *)self _isPresentingCustomContentProvidingViewController])
  {
    _presentedViewController = [(NCNotificationShortLookViewController *)self _presentedViewController];
    canBecomeFirstResponder = [_presentedViewController canBecomeFirstResponder];

    return canBecomeFirstResponder;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = NCNotificationShortLookViewController;
    return [(NCNotificationShortLookViewController *)&v6 canBecomeFirstResponder];
  }
}

- (BOOL)_isPresentingCustomContentProvidingViewController
{
  if (self->_didScrollPresentLongLookViewController || self->_expandedPlatterPresentationState)
  {
    return 1;
  }

  _presentedViewController = [(NCNotificationShortLookViewController *)self _presentedViewController];
  presentingViewController = [_presentedViewController presentingViewController];
  v2 = presentingViewController != 0;

  return v2;
}

- (id)_presentedViewController
{
  expandedPlatterViewController = self->_expandedPlatterViewController;
  if (expandedPlatterViewController)
  {
    v3 = expandedPlatterViewController;
  }

  else
  {
    presentedViewController = [(PLClickPresentationInteractionManager *)self->_clickPresentationInteractionManager presentedViewController];
    longLookNotificationViewController = presentedViewController;
    if (!presentedViewController)
    {
      longLookNotificationViewController = self->_longLookNotificationViewController;
    }

    v3 = longLookNotificationViewController;
  }

  return v3;
}

- (BOOL)hasCommittedToPresentingCustomContentProvidingViewController
{
  if ([(NCNotificationShortLookViewController *)self _isPresentingCustomContentProvidingViewController])
  {
    return 1;
  }

  clickPresentationInteractionManager = self->_clickPresentationInteractionManager;

  return [(PLClickPresentationInteractionManager *)clickPresentationInteractionManager hasCommittedToPresentation];
}

- (BOOL)becomeFirstResponder
{
  if ([(NCNotificationShortLookViewController *)self _isPresentingCustomContentProvidingViewController])
  {
    _presentedViewController = [(NCNotificationShortLookViewController *)self _presentedViewController];
    becomeFirstResponder = [_presentedViewController becomeFirstResponder];

    return becomeFirstResponder;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = NCNotificationShortLookViewController;
    return [(NCNotificationShortLookViewController *)&v6 becomeFirstResponder];
  }
}

- (void)viewWillLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = NCNotificationShortLookViewController;
  [(NCNotificationViewController *)&v12 viewWillLayoutSubviews];
  view = [(NCNotificationShortLookViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIView *)self->_lookViewWrapper setFrame:v5, v7, v9, v11];
  [(UIView *)self->_lookViewWrapper bounds];
  PLSetViewFrameMaintainingTransform();
}

- (void)_updateWithProvidedStaticContent
{
  v12.receiver = self;
  v12.super_class = NCNotificationShortLookViewController;
  [(NCNotificationViewController *)&v12 _updateWithProvidedStaticContent];
  _lookViewIfLoaded = [(NCNotificationViewController *)self _lookViewIfLoaded];
  if (_lookViewIfLoaded)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = _lookViewIfLoaded;
      staticContentProvider = [(NCNotificationViewController *)self staticContentProvider];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        staticContentProvider2 = [(NCNotificationViewController *)self staticContentProvider];
        [(NCNotificationShortLookViewController *)self _updateThumbnailForRichContentForShortLookView:v4 withContentProvider:staticContentProvider2];
        if (([staticContentProvider2 isIconVisible] & 1) == 0)
        {
          [v4 setBadgedIconDescription:0];
        }
      }
    }
  }

  _notificationShortLookViewIfLoaded = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
  if (_notificationShortLookViewIfLoaded)
  {
    delegate = [(NCNotificationViewController *)self delegate];
    if (delegate)
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = [delegate shouldAlignContentToBottomForNotificationViewController:self];
      }

      else
      {
        v10 = 0;
      }

      [_notificationShortLookViewIfLoaded setAlignContentToBottom:v10];
      if (objc_opt_respondsToSelector())
      {
        v11 = [delegate isGroupCollapsedForNotificationViewController:self];
LABEL_17:
        [_notificationShortLookViewIfLoaded setIsGroupCollapsed:v11];

        goto LABEL_18;
      }
    }

    else
    {
      [_notificationShortLookViewIfLoaded setAlignContentToBottom:0];
    }

    v11 = 0;
    goto LABEL_17;
  }

LABEL_18:
}

- (id)_notificationShortLookViewIfLoaded
{
  _lookViewIfLoaded = [(NCNotificationViewController *)self _lookViewIfLoaded];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = _lookViewIfLoaded;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (unint64_t)_maximumNumberOfPrimaryTextLinesForProvidedStaticContent
{
  v8.receiver = self;
  v8.super_class = NCNotificationShortLookViewController;
  _maximumNumberOfPrimaryTextLinesForProvidedStaticContent = [(NCNotificationViewController *)&v8 _maximumNumberOfPrimaryTextLinesForProvidedStaticContent];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
  v6 = [(NCNotificationShortLookViewController *)self _maximumNumberOfTextLinesForProvidedStaticContentWithDefaultNumber:_maximumNumberOfPrimaryTextLinesForProvidedStaticContent isPrimary:1 isLarge:UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory)];

  return v6;
}

- (unint64_t)_maximumNumberOfSecondaryTextLinesForProvidedStaticContent
{
  v8.receiver = self;
  v8.super_class = NCNotificationShortLookViewController;
  _maximumNumberOfSecondaryTextLinesForProvidedStaticContent = [(NCNotificationViewController *)&v8 _maximumNumberOfSecondaryTextLinesForProvidedStaticContent];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
  v6 = [(NCNotificationShortLookViewController *)self _maximumNumberOfTextLinesForProvidedStaticContentWithDefaultNumber:_maximumNumberOfSecondaryTextLinesForProvidedStaticContent isPrimary:0 isLarge:UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory)];

  return v6;
}

- (void)_updateWithProvidedAuxiliaryOptionsContent
{
  v19.receiver = self;
  v19.super_class = NCNotificationShortLookViewController;
  [(NCNotificationViewController *)&v19 _updateWithProvidedAuxiliaryOptionsContent];
  _notificationShortLookViewIfLoaded = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
  if (_notificationShortLookViewIfLoaded)
  {
    auxiliaryOptionsContentProvider = [(NCNotificationViewController *)self auxiliaryOptionsContentProvider];

    if (auxiliaryOptionsContentProvider)
    {
      auxiliaryOptionsContentProvider2 = [(NCNotificationViewController *)self auxiliaryOptionsContentProvider];
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        auxiliaryOptionsContentProvider3 = [(NCNotificationViewController *)self auxiliaryOptionsContentProvider];
        auxiliaryOptionsVisible = [auxiliaryOptionsContentProvider3 auxiliaryOptionsVisible];

        if (auxiliaryOptionsVisible)
        {
          auxiliaryOptionsContentProvider4 = [(NCNotificationViewController *)self auxiliaryOptionsContentProvider];
          v10 = objc_opt_respondsToSelector();

          if (v10)
          {
            auxiliaryOptionsContentProvider5 = [(NCNotificationViewController *)self auxiliaryOptionsContentProvider];
            auxiliaryOptionsSummaryText = [auxiliaryOptionsContentProvider5 auxiliaryOptionsSummaryText];
          }

          else
          {
            auxiliaryOptionsSummaryText = 0;
          }

          [_notificationShortLookViewIfLoaded setAuxiliaryOptionsSummaryText:auxiliaryOptionsSummaryText];
          [_notificationShortLookViewIfLoaded setMaterialRecipe:{-[NCNotificationViewController materialRecipe](self, "materialRecipe")}];
          materialGroupNameBase = [(NCNotificationViewController *)self materialGroupNameBase];
          [_notificationShortLookViewIfLoaded setMaterialGroupNameBase:materialGroupNameBase];

          auxiliaryOptionsContentProvider6 = [(NCNotificationViewController *)self auxiliaryOptionsContentProvider];
          v16 = objc_opt_respondsToSelector();

          if (v16)
          {
            auxiliaryOptionsContentProvider7 = [(NCNotificationViewController *)self auxiliaryOptionsContentProvider];
            auxiliaryOptionActions = [auxiliaryOptionsContentProvider7 auxiliaryOptionActions];
          }

          else
          {
            auxiliaryOptionActions = 0;
          }

          [_notificationShortLookViewIfLoaded setAuxiliaryOptionActions:auxiliaryOptionActions];

          v13 = 1;
          goto LABEL_9;
        }
      }
    }

    else
    {
      [_notificationShortLookViewIfLoaded removeAuxiliaryOptionsView];
    }

    v13 = 0;
LABEL_9:
    [_notificationShortLookViewIfLoaded setAuxiliaryOptionsVisible:v13];
    [(NCNotificationViewController *)self _updatePreferredContentSize];
  }
}

- (id)currentTraits
{
  _notificationShortLookViewIfLoaded = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
  v3 = _notificationShortLookViewIfLoaded;
  if (_notificationShortLookViewIfLoaded)
  {
    currentTraits = [_notificationShortLookViewIfLoaded currentTraits];
  }

  else
  {
    currentTraits = objc_alloc_init(NCNotificationListCellDynamicHeightTraits);
  }

  v5 = currentTraits;

  return v5;
}

- (BOOL)isHighlighted
{
  _notificationShortLookViewIfLoaded = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
  backgroundMaterialView = [_notificationShortLookViewIfLoaded backgroundMaterialView];
  isHighlighted = [backgroundMaterialView isHighlighted];

  return isHighlighted;
}

- (id)_initWithNotificationRequest:(id)request revealingAdditionalContentOnPresentation:(BOOL)presentation
{
  v7.receiver = self;
  v7.super_class = NCNotificationShortLookViewController;
  v4 = [(NCNotificationViewController *)&v7 _initWithNotificationRequest:request revealingAdditionalContentOnPresentation:presentation];
  v5 = v4;
  if (v4)
  {
    [v4 _setupCustomContentProvider];
  }

  return v5;
}

- (void)setMaterialGroupNameBase:(id)base
{
  v6.receiver = self;
  v6.super_class = NCNotificationShortLookViewController;
  [(NCNotificationViewController *)&v6 setMaterialGroupNameBase:base];
  _notificationShortLookViewIfLoaded = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
  materialGroupNameBase = [(NCNotificationViewController *)self materialGroupNameBase];
  [_notificationShortLookViewIfLoaded setMaterialGroupNameBase:materialGroupNameBase];
}

- (BOOL)isNotPresentingOrHasCommittedToDismissingCustomContentProvidingViewController
{
  if (![(NCNotificationShortLookViewController *)self hasCommittedToPresentingCustomContentProvidingViewController])
  {
    return 1;
  }

  _presentedViewController = [(NCNotificationShortLookViewController *)self _presentedViewController];
  isBeingDismissed = [_presentedViewController isBeingDismissed];

  return isBeingDismissed;
}

- (BOOL)didForwardNotificationRequestToCustomContent:(id)content
{
  contentCopy = content;
  _customContentProvidingViewController = [(NCNotificationViewController *)self _customContentProvidingViewController];

  if (_customContentProvidingViewController)
  {
    v11.receiver = self;
    v11.super_class = NCNotificationShortLookViewController;
    v6 = [(NCNotificationViewController *)&v11 didForwardNotificationRequestToCustomContent:contentCopy];
  }

  else
  {
    expandedPlatterViewController = self->_expandedPlatterViewController;
    if (expandedPlatterViewController)
    {
      customContentViewController = [(NCExpandedPlatterViewController *)expandedPlatterViewController customContentViewController];
      v7 = [customContentViewController didReceiveNotificationRequest:contentCopy];

      goto LABEL_6;
    }

    v6 = [(NCNotificationViewController *)self->_longLookNotificationViewController didForwardNotificationRequestToCustomContent:contentCopy];
  }

  v7 = v6;
LABEL_6:

  return v7;
}

- (BOOL)dismissPresentedViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _isPresentingCustomContentProvidingViewController = [(NCNotificationShortLookViewController *)self _isPresentingCustomContentProvidingViewController];
  if (_isPresentingCustomContentProvidingViewController)
  {
    [(NCNotificationViewController *)self _executeNilAction:animatedCopy];
  }

  return _isPresentingCustomContentProvidingViewController;
}

- (BOOL)isContentExtensionVisible:(id)visible
{
  visibleCopy = visible;
  customContentViewController = [(NCExpandedPlatterViewController *)self->_expandedPlatterViewController customContentViewController];
  v6 = customContentViewController;
  if (customContentViewController)
  {
    _customContentProvidingViewController = customContentViewController;
  }

  else
  {
    _customContentProvidingViewController = [(NCNotificationViewController *)self->_longLookNotificationViewController _customContentProvidingViewController];
  }

  v8 = _customContentProvidingViewController;

  if (objc_opt_respondsToSelector())
  {
    contentExtensionIdentifier = [v8 contentExtensionIdentifier];
  }

  else
  {
    contentExtensionIdentifier = 0;
  }

  v10 = [contentExtensionIdentifier isEqualToString:visibleCopy];

  return v10;
}

- (void)setCustomContentHomeAffordanceVisible:(BOOL)visible
{
  v4.receiver = self;
  v4.super_class = NCNotificationShortLookViewController;
  [(NCNotificationViewController *)&v4 setCustomContentHomeAffordanceVisible:visible];
  [(NCNotificationLongLookViewController *)self->_longLookNotificationViewController setCustomContentHomeAffordanceVisible:[(NCNotificationViewController *)self isCustomContentHomeAffordanceVisible]];
}

- (void)setCustomContentHomeAffordanceGestureRecognizer:(id)recognizer
{
  v5.receiver = self;
  v5.super_class = NCNotificationShortLookViewController;
  recognizerCopy = recognizer;
  [(NCNotificationViewController *)&v5 setCustomContentHomeAffordanceGestureRecognizer:recognizerCopy];
  [(NCNotificationLongLookViewController *)self->_longLookNotificationViewController setCustomContentHomeAffordanceGestureRecognizer:recognizerCopy, v5.receiver, v5.super_class];
}

- (void)setNotificationContentViewHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  _notificationShortLookViewIfLoaded = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
  if (_notificationShortLookViewIfLoaded)
  {
    v5 = _notificationShortLookViewIfLoaded;
    [_notificationShortLookViewIfLoaded setNotificationContentViewHidden:hiddenCopy];
    _notificationShortLookViewIfLoaded = v5;
  }
}

- (BOOL)isNotificationContentViewHidden
{
  _notificationShortLookViewIfLoaded = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
  v3 = _notificationShortLookViewIfLoaded;
  if (_notificationShortLookViewIfLoaded)
  {
    isNotificationContentViewHidden = [_notificationShortLookViewIfLoaded isNotificationContentViewHidden];
  }

  else
  {
    isNotificationContentViewHidden = 0;
  }

  return isNotificationContentViewHidden;
}

- (void)setHasShadow:(BOOL)shadow
{
  shadowCopy = shadow;
  hasShadow = [(NCNotificationViewController *)self hasShadow];
  v6.receiver = self;
  v6.super_class = NCNotificationShortLookViewController;
  [(NCNotificationViewController *)&v6 setHasShadow:shadowCopy];
  if (hasShadow != [(NCNotificationViewController *)self hasShadow])
  {
    [(NCNotificationShortLookViewController *)self _updateShortLookShadow];
  }
}

- (void)setGlassMode:(unint64_t)mode
{
  v6.receiver = self;
  v6.super_class = NCNotificationShortLookViewController;
  if ([(NCNotificationViewController *)&v6 glassMode]!= mode)
  {
    v5.receiver = self;
    v5.super_class = NCNotificationShortLookViewController;
    [(NCNotificationViewController *)&v5 setGlassMode:mode];
    [(NCNotificationShortLookViewController *)self _updateShortLookShadow];
  }
}

- (void)setContentReplacedWithSnapshot:(BOOL)snapshot
{
  snapshotCopy = snapshot;
  _notificationShortLookViewIfLoaded = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
  v6 = _notificationShortLookViewIfLoaded;
  if (_notificationShortLookViewIfLoaded)
  {
    backgroundMaterialView = [_notificationShortLookViewIfLoaded backgroundMaterialView];
    v8 = backgroundMaterialView;
    if (backgroundMaterialView)
    {
      [backgroundMaterialView setContentReplacedWithSnapshot:snapshotCopy];
      v9.receiver = self;
      v9.super_class = NCNotificationShortLookViewController;
      -[NCNotificationViewController setContentReplacedWithSnapshot:](&v9, sel_setContentReplacedWithSnapshot_, [v8 isContentReplacedWithSnapshot]);
    }
  }
}

- (BOOL)canResignFirstResponder
{
  if ([(NCNotificationShortLookViewController *)self _isPresentingCustomContentProvidingViewController])
  {
    _presentedViewController = [(NCNotificationShortLookViewController *)self _presentedViewController];
    canResignFirstResponder = [_presentedViewController canResignFirstResponder];

    return canResignFirstResponder;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = NCNotificationShortLookViewController;
    return [(NCNotificationShortLookViewController *)&v6 canResignFirstResponder];
  }
}

- (BOOL)resignFirstResponder
{
  if ([(NCNotificationShortLookViewController *)self _isPresentingCustomContentProvidingViewController])
  {
    _presentedViewController = [(NCNotificationShortLookViewController *)self _presentedViewController];
    resignFirstResponder = [_presentedViewController resignFirstResponder];

    return resignFirstResponder;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = NCNotificationShortLookViewController;
    return [(NCNotificationShortLookViewController *)&v6 resignFirstResponder];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = NCNotificationShortLookViewController;
  [(NCNotificationViewController *)&v4 viewDidAppear:appear];
  [(NCNotificationShortLookViewController *)self _intelligenceLightAnimationIfNeeded];
  if ([(NCNotificationViewController *)self _canPan])
  {
    [objc_opt_class() _prepareSharedNotificationFeedbackGenerator];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = NCNotificationShortLookViewController;
  [(NCNotificationViewController *)&v5 viewDidDisappear:disappear];
  _notificationShortLookViewIfLoaded = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
  [_notificationShortLookViewIfLoaded updateLightEffectToFillLightEnabled:0 edgeLightEnabled:0 duration:0.0 delay:0.0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = NCNotificationShortLookViewController;
  [(NCNotificationViewController *)&v5 viewWillDisappear:?];
  if ([(NCNotificationShortLookViewController *)self _isPresentingCustomContentProvidingViewController])
  {
    [(NCNotificationShortLookViewController *)self dismissPresentedViewControllerAnimated:disappearCopy];
  }
}

- (BOOL)shouldCommitToExpandedPlatterPresentationWithFeedback
{
  containerViewForExpandedContent = [(NCNotificationShortLookViewController *)self containerViewForExpandedContent];

  if (!containerViewForExpandedContent)
  {
    v4 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
    {
      [(NCNotificationShortLookViewController *)v4 shouldCommitToExpandedPlatterPresentationWithFeedback];
    }
  }

  return containerViewForExpandedContent != 0;
}

- (void)presentLongLookAnimated:(BOOL)animated trigger:(int64_t)trigger completion:(id)completion
{
  animatedCopy = animated;
  v27 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v9 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    notificationRequest = [(NCNotificationViewController *)self notificationRequest];
    notificationIdentifier = [notificationRequest notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v14 = NCStringFromLongLookPresentationTrigger(trigger);
    *buf = 138543618;
    v24 = un_logDigest;
    v25 = 2114;
    v26 = v14;
    _os_log_impl(&dword_21E77E000, v10, OS_LOG_TYPE_DEFAULT, "Asked to present long look for request %{public}@ for trigger %{public}@", buf, 0x16u);
  }

  self->_trigger = trigger;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__NCNotificationShortLookViewController_presentLongLookAnimated_trigger_completion___block_invoke;
  aBlock[3] = &unk_2783731F8;
  v15 = completionCopy;
  aBlock[4] = self;
  v22 = v15;
  v16 = _Block_copy(aBlock);
  if ([(NCNotificationShortLookViewController *)self _isLockedByAppProtection])
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __84__NCNotificationShortLookViewController_presentLongLookAnimated_trigger_completion___block_invoke_2;
    v17[3] = &unk_278373220;
    v20 = animatedCopy;
    v17[4] = self;
    triggerCopy = trigger;
    v18 = v16;
    [(NCNotificationShortLookViewController *)self _requestAppProtectionUnlockWithCompletion:v17];
  }

  else
  {
    [(NCNotificationShortLookViewController *)self _presentLongLookAnimated:animatedCopy trigger:trigger completion:v16];
  }
}

uint64_t __84__NCNotificationShortLookViewController_presentLongLookAnimated_trigger_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  *(*(a1 + 32) + 1328) = 0;
  return result;
}

uint64_t __84__NCNotificationShortLookViewController_presentLongLookAnimated_trigger_completion___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    return [*(a1 + 32) _presentLongLookAnimated:*(a1 + 56) trigger:*(a1 + 48) completion:*(a1 + 40)];
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

- (void)_presentLongLookAnimated:(BOOL)animated trigger:(int64_t)trigger completion:(id)completion
{
  if (trigger == 6)
  {
    [(NCNotificationShortLookViewController *)self _presentLongLookForScrollAnimated:animated completion:completion];
  }

  else
  {
    [(NCNotificationShortLookViewController *)self _presentLongLookViaInteractionManager:completion];
  }
}

- (void)_requestAppProtectionUnlockWithCompletion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  notificationRequest = [(NCNotificationViewController *)self notificationRequest];
  notificationIdentifier = [notificationRequest notificationIdentifier];
  sectionIdentifier = [notificationRequest sectionIdentifier];
  v8 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:sectionIdentifier];
  v9 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    un_logDigest = [notificationIdentifier un_logDigest];
    *buf = 138412546;
    v20 = un_logDigest;
    v21 = 2112;
    v22 = sectionIdentifier;
    _os_log_impl(&dword_21E77E000, v10, OS_LOG_TYPE_DEFAULT, "Requesting AppProtection authentication for %@ in %@", buf, 0x16u);
  }

  [(NCNotificationShortLookViewController *)self setNotificationContentViewHidden:1];
  objc_initWeak(buf, self);
  mEMORY[0x277CEBE98] = [MEMORY[0x277CEBE98] sharedGuard];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83__NCNotificationShortLookViewController__requestAppProtectionUnlockWithCompletion___block_invoke;
  v15[3] = &unk_278373248;
  v13 = notificationIdentifier;
  v16 = v13;
  objc_copyWeak(&v18, buf);
  v14 = completionCopy;
  v17 = v14;
  [mEMORY[0x277CEBE98] authenticateForSubject:v8 completion:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
}

void __83__NCNotificationShortLookViewController__requestAppProtectionUnlockWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = MEMORY[0x277D77DB0];
  v7 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = [v8 un_logDigest];
    v11 = NSStringFromBOOL();
    *buf = 138412546;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "AppProtection authentication result for %@: %@", buf, 0x16u);
  }

  if (v5)
  {
    v12 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      __83__NCNotificationShortLookViewController__requestAppProtectionUnlockWithCompletion___block_invoke_cold_1(a1, v12, v5);
    }
  }

  objc_copyWeak(&v14, (a1 + 48));
  v13 = *(a1 + 40);
  v15 = a2;
  BSDispatchMain();

  objc_destroyWeak(&v14);
}

uint64_t __83__NCNotificationShortLookViewController__requestAppProtectionUnlockWithCompletion___block_invoke_65(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setNotificationContentViewHidden:0];

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)expandAndPlayMedia
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __59__NCNotificationShortLookViewController_expandAndPlayMedia__block_invoke;
  v2[3] = &unk_278370CD0;
  v2[4] = self;
  [(NCNotificationShortLookViewController *)self presentLongLookAnimated:1 trigger:5 completion:v2];
}

uint64_t __59__NCNotificationShortLookViewController_expandAndPlayMedia__block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(*(result + 32) + 1248) playMedia];
  }

  return result;
}

- (void)setInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v16 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    if (enabledCopy)
    {
      v6 = @"ENABLED";
    }

    else
    {
      v6 = @"DISABLED";
    }

    v7 = v5;
    notificationRequest = [(NCNotificationViewController *)self notificationRequest];
    notificationIdentifier = [notificationRequest notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    *buf = 138412546;
    v13 = v6;
    v14 = 2114;
    v15 = un_logDigest;
    _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "Setting tap interaction %@ for notification cell for request %{public}@", buf, 0x16u);
  }

  v11.receiver = self;
  v11.super_class = NCNotificationShortLookViewController;
  [(NCNotificationViewController *)&v11 setInteractionEnabled:enabledCopy];
  [(UITapGestureRecognizer *)self->_tapGesture setEnabled:enabledCopy];
}

- (void)setPlatterHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  _notificationShortLookViewIfLoaded = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
  [_notificationShortLookViewIfLoaded setHighlighted:highlightedCopy];
}

- (id)backgroundMaterialView
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    lookView = self->super._lookView;
  }

  else
  {
    lookView = 0;
  }

  return lookView;
}

- (id)presentedExpandedPlatterViewController
{
  expandedPlatterViewController = self->_expandedPlatterViewController;
  if (!expandedPlatterViewController)
  {
    expandedPlatterViewController = self->_longLookNotificationViewController;
  }

  return expandedPlatterViewController;
}

- (BOOL)_setNotificationRequest:(id)request
{
  requestCopy = request;
  notificationRequest = [(NCNotificationViewController *)self notificationRequest];
  v6 = [requestCopy matchesRequest:notificationRequest];

  v14.receiver = self;
  v14.super_class = NCNotificationShortLookViewController;
  v7 = [(NCNotificationViewController *)&v14 _setNotificationRequest:requestCopy];

  if (v7)
  {
    if (v6)
    {
      longLookNotificationViewController = self->_longLookNotificationViewController;
      notificationRequest2 = [(NCNotificationViewController *)self notificationRequest];
      [(NCNotificationLongLookViewController *)longLookNotificationViewController setNotificationRequest:notificationRequest2];

      expandedPlatterViewController = self->_expandedPlatterViewController;
      notificationRequest3 = [(NCNotificationViewController *)self notificationRequest];
      [(NCExpandedPlatterViewController *)expandedPlatterViewController setNotificationRequest:notificationRequest3];
    }

    else
    {
      [(NCNotificationViewController *)self _setCustomContentProvidingViewController:0];
      v12 = self->_longLookNotificationViewController;
      self->_longLookNotificationViewController = 0;

      notificationRequest3 = self->_expandedPlatterViewController;
      self->_expandedPlatterViewController = 0;
    }

    [(NCNotificationShortLookViewController *)self _updateScreenCaptureProhibited];
  }

  return v7;
}

- (id)_newClickPresentationInteractionManager
{
  delegate = [(NCNotificationViewController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![delegate notificationViewControllerShouldSupportClickPresentationInteraction:self])
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277D3D2E0]) initWithPresentingViewController:self delegate:self];
  }

  return v4;
}

- (void)_loadLookView
{
  if (!self->super._lookView)
  {
    delegate = [(NCNotificationViewController *)self delegate];
    v4 = off_27836E0F8;
    if ((objc_opt_respondsToSelector() & 1) != 0 && [delegate isRichNotificationContentViewForNotificationViewController:self])
    {
      v4 = off_27836E0D0;
    }

    v5 = objc_alloc_init(*v4);
    [v5 setDelegate:self];
    objc_storeStrong(&self->super._lookView, v5);
    lookView = self->super._lookView;
    [(NCNotificationViewController *)self backgroundAlpha];
    [(NCNotificationLookView *)lookView setBackgroundAlpha:?];
    v7 = self->super._lookView;
    [(NCNotificationViewController *)self contentAlpha];
    [(NCNotificationLookView *)v7 setContentAlpha:?];
    v8 = self->super._lookView;
    [(NCNotificationViewController *)self compositeAlpha];
    [(NCNotificationLookView *)v8 setCompositeAlpha:?];
    v9 = self->super._lookView;
    [(NCNotificationViewController *)self contentTransform];
    [(NCNotificationLookView *)v9 setContentTransform:&v14];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [delegate notificationViewControllerShouldAllowDragInteraction:self])
    {
      v10 = [objc_alloc(MEMORY[0x277D75468]) initWithDelegate:self];
      [v10 _setAllowsPointerDragBeforeLiftDelay:0];
      _UIDragInteractionDefaultPointerLiftDelay();
      [v10 _setPointerLiftDelay:v11 + v11];
      [(NCNotificationLookView *)self->super._lookView addInteraction:v10];
      [(NCNotificationLookView *)self->super._lookView setUserInteractionEnabled:1];
    }

    [(NCNotificationShortLookViewController *)self _updateScreenCaptureProhibited];
  }

  if (!self->_lookViewWrapper)
  {
    v12 = objc_alloc_init(MEMORY[0x277D75D18]);
    lookViewWrapper = self->_lookViewWrapper;
    self->_lookViewWrapper = v12;
  }
}

- (BOOL)_shouldSupportExpandedPlatterInteraction
{
  delegate = [(NCNotificationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate notificationViewControllerShouldSupportExpandedPlatterInteraction:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)_interactionManagerCreatingIfNecessary
{
  interactionManager = self->_interactionManager;
  if (!interactionManager)
  {
    v4 = [objc_alloc(MEMORY[0x277D3D2E8]) initWithPresentingViewController:self delegate:self];
    v5 = self->_interactionManager;
    self->_interactionManager = v4;

    interactionManager = self->_interactionManager;
  }

  return interactionManager;
}

- (void)_notificationViewControllerViewDidLoad
{
  v16.receiver = self;
  v16.super_class = NCNotificationShortLookViewController;
  [(NCNotificationViewController *)&v16 _notificationViewControllerViewDidLoad];
  if ([(NCNotificationShortLookViewController *)self _shouldSupportExpandedPlatterInteraction])
  {
    _interactionManagerCreatingIfNecessary = [(NCNotificationShortLookViewController *)self _interactionManagerCreatingIfNecessary];
  }

  _notificationShortLookViewIfLoaded = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
  [(NCNotificationShortLookViewController *)self setHasShadow:[(NCNotificationViewController *)self _canPan]];
  [(NCNotificationShortLookViewController *)self _updateShortLookShadow];
  materialGroupNameBase = [(NCNotificationViewController *)self materialGroupNameBase];
  [_notificationShortLookViewIfLoaded setMaterialGroupNameBase:materialGroupNameBase];

  [_notificationShortLookViewIfLoaded setMaterialRecipe:{-[NCNotificationViewController materialRecipe](self, "materialRecipe")}];
  [(UIView *)self->_lookViewWrapper addSubview:_notificationShortLookViewIfLoaded];
  view = [(NCNotificationShortLookViewController *)self view];
  [view addSubview:self->_lookViewWrapper];

  delegate = [(NCNotificationViewController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [delegate notificationViewControllerShouldInterpretTapAsDefaultAction:self])
  {
    v8 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleTapOnView_];
    tapGesture = self->_tapGesture;
    self->_tapGesture = v8;

    [(UITapGestureRecognizer *)self->_tapGesture setDelegate:self];
    [_notificationShortLookViewIfLoaded addGestureRecognizer:self->_tapGesture];
    [(UITapGestureRecognizer *)self->_tapGesture setEnabled:[(NCNotificationViewController *)self isInteractionEnabled]];
    gestureRecognizerForExclusionRelationship = [(PLClickPresentationInteractionManager *)self->_clickPresentationInteractionManager gestureRecognizerForExclusionRelationship];
    if (gestureRecognizerForExclusionRelationship)
    {
      [(UITapGestureRecognizer *)self->_tapGesture requireGestureRecognizerToFail:gestureRecognizerForExclusionRelationship];
    }
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    v13 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:self];
    pointerInteraction = self->_pointerInteraction;
    self->_pointerInteraction = v13;

    [_notificationShortLookViewIfLoaded addInteraction:self->_pointerInteraction];
    backgroundMaterialView = [_notificationShortLookViewIfLoaded backgroundMaterialView];
    [backgroundMaterialView _cornerRadius];
    [_notificationShortLookViewIfLoaded _setCornerRadius:?];
  }
}

- (void)_updateLookView:(id)view withTitleFromProvidedStaticContent:(id)content
{
  contentCopy = content;
  _notificationShortLookViewIfLoaded = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
  [_notificationShortLookViewIfLoaded setTitle:contentCopy];
}

- (void)_handleTapOnView:(id)view
{
  v28 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  if ([viewCopy state] != 3)
  {
    goto LABEL_11;
  }

  [(NSDate *)self->_tapBeginTime timeIntervalSinceNow];
  if (v5 < 0.0)
  {
    v5 = -v5;
  }

  if (v5 < 0.3)
  {
    delegate = [(NCNotificationViewController *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([delegate handleTapOnNotificationViewController:self] & 1) == 0)
    {
      v7 = +[NCNotificationEventTracker sharedInstance];
      notificationRequest = [(NCNotificationViewController *)self notificationRequest];
      notificationUsageTrackingState = [(NCNotificationViewController *)self notificationUsageTrackingState];
      [v7 shortLookDefaultActionInvokedWithTrigger:0 forNotificationRequest:notificationRequest withState:notificationUsageTrackingState];

      staticContentProvider = [(NCNotificationViewController *)self staticContentProvider];
      defaultAction = [staticContentProvider defaultAction];

      if (defaultAction)
      {
        v12 = *MEMORY[0x277D77DD0];
        if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
          notificationRequest2 = [(NCNotificationViewController *)self notificationRequest];
          notificationIdentifier = [notificationRequest2 notificationIdentifier];
          un_logDigest = [notificationIdentifier un_logDigest];
          v26 = 138543362;
          v27 = un_logDigest;
          _os_log_impl(&dword_21E77E000, v13, OS_LOG_TYPE_DEFAULT, "Notification cell tap performing default action for request %{public}@", &v26, 0xCu);
        }

        [(NCNotificationViewController *)self _executeDefaultAction:1];
      }

      else
      {
        notificationRequest3 = [(NCNotificationViewController *)self notificationRequest];
        options = [notificationRequest3 options];
        revealsAdditionalContentIfNoDefaultAction = [options revealsAdditionalContentIfNoDefaultAction];

        if (revealsAdditionalContentIfNoDefaultAction)
        {
          v21 = *MEMORY[0x277D77DD0];
          if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
          {
            v22 = v21;
            notificationRequest4 = [(NCNotificationViewController *)self notificationRequest];
            notificationIdentifier2 = [notificationRequest4 notificationIdentifier];
            un_logDigest2 = [notificationIdentifier2 un_logDigest];
            v26 = 138543362;
            v27 = un_logDigest2;
            _os_log_impl(&dword_21E77E000, v22, OS_LOG_TYPE_DEFAULT, "Notification cell tap presenting long look for request %{public}@", &v26, 0xCu);
          }

          [(NCNotificationShortLookViewController *)self presentLongLookAnimated:1 trigger:4 completion:0];
        }
      }
    }
  }

  else
  {
LABEL_11:
    v17 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
    {
      [(NCNotificationShortLookViewController *)v17 _handleTapOnView:viewCopy];
    }
  }
}

- (unint64_t)_maximumNumberOfTextLinesForProvidedStaticContentWithDefaultNumber:(unint64_t)number isPrimary:(BOOL)primary isLarge:(BOOL)large
{
  largeCopy = large;
  delegate = [(NCNotificationViewController *)self delegate];
  staticContentProvider = [(NCNotificationViewController *)self staticContentProvider];
  isNumberOfLinesInfinite = [staticContentProvider isNumberOfLinesInfinite];

  if (isNumberOfLinesInfinite)
  {
    numberCopy3 = 0;
  }

  else
  {
    numberCopy3 = number;
  }

  if ((isNumberOfLinesInfinite & 1) == 0 && !primary)
  {
    if (objc_opt_respondsToSelector())
    {
      v13 = [delegate showAdditionalMessageLinesForNotificationViewController:self];
      v14 = 4;
      if (largeCopy)
      {
        v14 = 6;
      }

      if (v13)
      {
        numberCopy3 = v14;
      }

      else
      {
        numberCopy3 = number;
      }
    }

    else
    {
      numberCopy3 = number;
    }
  }

  return numberCopy3;
}

- (void)_updateThumbnailForRichContentForShortLookView:(id)view withContentProvider:(id)provider
{
  viewCopy = view;
  providerCopy = provider;
  delegate = [(NCNotificationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [delegate isRichNotificationContentViewForNotificationViewController:self];
  }

  else
  {
    v9 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = [delegate isAttachmentImageFeaturedForNotificationViewController:self];
  }

  else
  {
    v10 = 0;
  }

  [viewCopy setAttachmentImageFeatured:v10];
  if (([providerCopy hasAttachmentImage] & v9) == 1)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __108__NCNotificationShortLookViewController__updateThumbnailForRichContentForShortLookView_withContentProvider___block_invoke;
    v11[3] = &unk_278370A40;
    v12 = viewCopy;
    [providerCopy fetchRichAttachmentImageIsFeatured:v10 withCompletion:v11];
  }
}

- (BOOL)_shouldUseHapticTouch
{
  v2 = +[NCUserNotificationsUIKitDefaults standardDefaults];
  if ([v2 shouldForceHapticTouchForPreview])
  {
    v3 = 1;
  }

  else
  {
    v3 = _NCDeviceDesiresHapticTouch();
  }

  return v3;
}

- (void)_updateShortLookShadow
{
  _notificationShortLookViewIfLoaded = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
  if (_notificationShortLookViewIfLoaded)
  {
    v5 = _notificationShortLookViewIfLoaded;
    if ([(NCNotificationViewController *)self hasShadow])
    {
      v4 = [(NCNotificationViewController *)self backgroundGlassState]== 0;
    }

    else
    {
      v4 = 0;
    }

    [v5 setHasShadow:v4];
    _notificationShortLookViewIfLoaded = v5;
  }
}

- (void)_updateScreenCaptureProhibited
{
  lookView = self->super._lookView;
  notificationRequest = [(NCNotificationViewController *)self notificationRequest];
  options = [notificationRequest options];
  -[NCNotificationLookView setScreenCaptureProhibited:](lookView, "setScreenCaptureProhibited:", [options screenCaptureProhibited]);
}

- (BOOL)_shouldPerformHoverHighlighting
{
  delegate = [(NCNotificationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [delegate notificationViewControllerShouldPerformHoverHighlighting:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)_expandedPlatterViewController
{
  expandedPlatterViewController = self->_expandedPlatterViewController;
  if (!expandedPlatterViewController)
  {
    v4 = [NCExpandedPlatterViewController alloc];
    notificationRequest = [(NCNotificationViewController *)self notificationRequest];
    customContentProvider = [(NCNotificationViewController *)self customContentProvider];
    notificationRequest2 = [(NCNotificationViewController *)self notificationRequest];
    v8 = [customContentProvider customContentViewControllerForNotificationRequest:notificationRequest2];
    v9 = [(NCExpandedPlatterViewController *)v4 initWithNotificationRequest:notificationRequest customContentViewController:v8];
    v10 = self->_expandedPlatterViewController;
    self->_expandedPlatterViewController = v9;

    [(NCExpandedPlatterViewController *)self->_expandedPlatterViewController setDelegate:self];
    [(NCExpandedPlatterViewController *)self->_expandedPlatterViewController addExpandedPlatterObserver:self];
    expandedPlatterViewController = self->_expandedPlatterViewController;
  }

  return expandedPlatterViewController;
}

- (void)_dismissPresentedViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  expandedPlatterViewController = self->_expandedPlatterViewController;
  if (!expandedPlatterViewController)
  {
    expandedPlatterViewController = self->_longLookNotificationViewController;
  }

  v9 = expandedPlatterViewController;
  presentingViewController = [(NCExpandedPlatterViewController *)v9 presentingViewController];
  if (presentingViewController)
  {
    v7 = presentingViewController;
    isBeingDismissed = [(NCExpandedPlatterViewController *)v9 isBeingDismissed];

    if ((isBeingDismissed & 1) == 0)
    {
      if (v9 == self->_expandedPlatterViewController)
      {
        [(PLExpandedPlatterInteractionManager *)self->_interactionManager dismiss];
      }

      else if (([(PLClickPresentationInteractionManager *)self->_clickPresentationInteractionManager dismissIfPossible:0]& 1) == 0)
      {
        [(NCNotificationLongLookViewController *)self->_longLookNotificationViewController dismissViewControllerAnimated:animatedCopy completion:0];
      }
    }
  }
}

- (void)_askDelegateToExecuteAction:(id)action withParameters:(id)parameters animated:(BOOL)animated
{
  animatedCopy = animated;
  actionCopy = action;
  parametersCopy = parameters;
  if (!self->_expandedPlatterDismissalReason)
  {
    identifier = [actionCopy identifier];
    if ([identifier length])
    {
      objc_storeStrong(&self->_expandedPlatterDismissalReason, identifier);
    }
  }

  v11.receiver = self;
  v11.super_class = NCNotificationShortLookViewController;
  [(NCNotificationViewController *)&v11 _askDelegateToExecuteAction:actionCopy withParameters:parametersCopy animated:animatedCopy];
}

- (void)_intelligenceLightAnimationIfNeeded
{
  delegate = [(NCNotificationViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0 && [delegate importantAdornmentEligibleOptionsForNotificationViewController:self])
  {
    v3 = [delegate importantAdornmentEligibleOptionsForNotificationViewController:self];
  }

  else
  {
    v3 = 0;
  }

  notificationRequest = [(NCNotificationViewController *)self notificationRequest];
  alertOptions = [notificationRequest alertOptions];
  intelligentBehavior = [alertOptions intelligentBehavior];

  LODWORD(alertOptions) = [notificationRequest isHighlight];
  _notificationShortLookViewIfLoaded = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
  v8 = _notificationShortLookViewIfLoaded;
  v9 = alertOptions ^ 1;
  if ((v3 & 4) == 0)
  {
    v9 = 1;
  }

  v10 = (v3 & 2) != 0 && intelligentBehavior == 2;
  if (v10 || !v9)
  {
    [_notificationShortLookViewIfLoaded updateLightEffectToFillLightEnabled:1 edgeLightEnabled:1 duration:0.65 delay:0.0];
    v12 = 1.5;
    _notificationShortLookViewIfLoaded = v8;
    v11 = 0.65;
  }

  else
  {
    v11 = 0.0;
    v12 = 0.0;
  }

  [_notificationShortLookViewIfLoaded updateLightEffectToFillLightEnabled:0 edgeLightEnabled:0 duration:v11 delay:v12];
}

- (void)contentProvider:(id)provider performAction:(id)action animated:(BOOL)animated
{
  animatedCopy = animated;
  v20 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  actionCopy = action;
  customContentViewController = [(NCExpandedPlatterViewController *)self->_expandedPlatterViewController customContentViewController];
  v11 = customContentViewController;
  if (customContentViewController)
  {
    _customContentProvidingViewController = customContentViewController;
  }

  else
  {
    _customContentProvidingViewController = [(NCNotificationViewController *)self->_longLookNotificationViewController _customContentProvidingViewController];
  }

  v13 = _customContentProvidingViewController;

  if (actionCopy && (-[NCNotificationViewController notificationRequest](self, "notificationRequest"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v13 performAction:actionCopy forNotification:v14], v14, (v15 & 1) != 0))
  {
    v16 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_21E77E000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Notification action handled by customContentProvider", buf, 0xCu);
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = NCNotificationShortLookViewController;
    [(NCNotificationViewController *)&v17 contentProvider:providerCopy performAction:actionCopy animated:animatedCopy];
  }
}

- (void)_expandedPlatterInteractionManager:(id)manager willDismissWithReason:(id)reason
{
  if (reason)
  {
    reasonCopy = reason;
  }

  else
  {
    reasonCopy = @"NCExpandedPlatterObservableDismissalReasonUnknown";
  }

  expandedPlatterViewController = self->_expandedPlatterViewController;
  reasonCopy2 = reason;
  [(NCExpandedPlatterViewController *)expandedPlatterViewController expandedPlatter:expandedPlatterViewController willDismissWithReason:reasonCopy];
}

- (void)_expandedPlatterInteractionManager:(id)manager didDismissWithReason:(id)reason
{
  reasonCopy = reason;
  v8 = reasonCopy;
  if (reasonCopy)
  {
    v6 = reasonCopy;
  }

  else
  {
    v6 = @"NCExpandedPlatterObservableDismissalReasonUnknown";
  }

  v7 = v6;
  [(NCNotificationViewController *)self _notifyObserversWithBlock:&__block_literal_global_44];
  if (NCEqualExpandedPlatterObservableDismissalReasons(v7, @"NCExpandedPlatterObservableDismissalReasonUnknown"))
  {
    [(NCNotificationViewController *)self _executeCancelAction:1];
  }

  [(NCExpandedPlatterViewController *)self->_expandedPlatterViewController expandedPlatter:self->_expandedPlatterViewController didDismissWithReason:v7];
}

void __97__NCNotificationShortLookViewController__expandedPlatterInteractionManager_didDismissWithReason___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 notificationViewControllerDidEndUserInteraction:v5];
  }
}

- (BOOL)_isLockedByAppProtection
{
  notificationRequest = [(NCNotificationViewController *)self notificationRequest];
  sectionIdentifier = [notificationRequest sectionIdentifier];

  v4 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:sectionIdentifier];
  isLocked = [v4 isLocked];

  return isLocked;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  view = [touch view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  regionCopy = region;
  if ([(NCNotificationShortLookViewController *)self _shouldPerformHoverHighlighting])
  {
    v7 = regionCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded:interaction];
  window = [(__CFString *)v5 window];

  if (window)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:v5];
    v8 = [MEMORY[0x277D75868] effectWithPreview:v7];
    [v8 setPreferredTintMode:1];
    [v8 setPrefersScaledContent:0];
    [v8 setPrefersShadow:0];
    v9 = [MEMORY[0x277D75890] styleWithEffect:v8 shape:0];
  }

  else
  {
    v10 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
    {
      [(NCNotificationShortLookViewController *)v10 pointerInteraction:v5 styleForRegion:?];
    }

    v9 = 0;
  }

  return v9;
}

- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator
{
  v6 = [(NCNotificationViewController *)self delegate:interaction];
  if (objc_opt_respondsToSelector())
  {
    [v6 notificationViewController:self isPerformingHoverHighlighting:1];
  }
}

- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator
{
  v6 = [(NCNotificationViewController *)self delegate:interaction];
  if (objc_opt_respondsToSelector())
  {
    [v6 notificationViewController:self isPerformingHoverHighlighting:0];
  }
}

+ (id)_sharedNotificationFeedbackGenerator
{
  if (_sharedNotificationFeedbackGenerator_onceToken != -1)
  {
    +[NCNotificationShortLookViewController _sharedNotificationFeedbackGenerator];
  }

  v3 = _sharedNotificationFeedbackGenerator___sharedNotificationFeedbackGenerator;

  return v3;
}

uint64_t __77__NCNotificationShortLookViewController__sharedNotificationFeedbackGenerator__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277D757B8]);
  _sharedNotificationFeedbackGenerator___sharedNotificationFeedbackGenerator = v0;

  return MEMORY[0x2821F96F8](v0);
}

+ (void)_prepareSharedNotificationFeedbackGenerator
{
  _sharedNotificationFeedbackGenerator = [self _sharedNotificationFeedbackGenerator];
  [_sharedNotificationFeedbackGenerator prepare];
}

+ (void)_playNegativeInteractionHaptic
{
  _sharedNotificationFeedbackGenerator = [self _sharedNotificationFeedbackGenerator];
  [_sharedNotificationFeedbackGenerator notificationOccurred:2];
}

- (void)_presentLongLookViaClickPresentationInteraction:(id)interaction
{
  interactionCopy = interaction;
  clickPresentationInteractionManager = self->_clickPresentationInteractionManager;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __89__NCNotificationShortLookViewController__presentLongLookViaClickPresentationInteraction___block_invoke;
  v7[3] = &unk_27836F910;
  v8 = interactionCopy;
  v6 = interactionCopy;
  [(PLClickPresentationInteractionManager *)clickPresentationInteractionManager presentIfPossible:v7];
}

uint64_t __89__NCNotificationShortLookViewController__presentLongLookViaClickPresentationInteraction___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)_presentLongLookViaInteractionManager:(id)manager
{
  managerCopy = manager;
  _interactionManagerCreatingIfNecessary = [(NCNotificationShortLookViewController *)self _interactionManagerCreatingIfNecessary];
  _lookView = [(NCNotificationViewController *)self _lookView];
  [_lookView bounds];
  UIRectGetCenter();
  [_interactionManagerCreatingIfNecessary presentAtLocation:managerCopy completion:?];
}

- (void)_presentLongLookForScrollAnimated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
  self->_didScrollPresentLongLookViewController = 1;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__NCNotificationShortLookViewController__presentLongLookForScrollAnimated_completion___block_invoke;
  aBlock[3] = &unk_27836F498;
  objc_copyWeak(&v26, &location);
  v6 = _Block_copy(aBlock);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __86__NCNotificationShortLookViewController__presentLongLookForScrollAnimated_completion___block_invoke_3;
  v22[3] = &unk_27836F4C0;
  objc_copyWeak(&v24, &location);
  v7 = completionCopy;
  v23 = v7;
  v8 = _Block_copy(v22);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __86__NCNotificationShortLookViewController__presentLongLookForScrollAnimated_completion___block_invoke_4;
  v17 = &unk_278373270;
  objc_copyWeak(&v21, &location);
  v9 = v6;
  v18 = v9;
  v10 = v8;
  v19 = v10;
  v11 = v7;
  v20 = v11;
  v12 = _Block_copy(&v14);
  v13 = [(NCNotificationViewController *)self delegate:v14];
  if (objc_opt_respondsToSelector())
  {
    [v13 notificationRequestPresenter:self shouldTransitionToStage:@"notificationViewController.presentingStage.longLook" forTrigger:6 completionBlock:v12];
  }

  else
  {
    v9[2](v9);
    v10[2](v10);
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v24);

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

void __86__NCNotificationShortLookViewController__presentLongLookForScrollAnimated_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyObserversWithBlock:&__block_literal_global_158];
}

void __86__NCNotificationShortLookViewController__presentLongLookForScrollAnimated_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 notificationViewControllerDidEndUserInteraction:v5];
  }
}

void __86__NCNotificationShortLookViewController__presentLongLookForScrollAnimated_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _interactionManagerCreatingIfNecessary];
  v3 = [WeakRetained _lookView];
  [v3 bounds];
  UIRectGetCenter();
  [v2 presentAtLocation:*(a1 + 32) completion:?];
}

uint64_t __86__NCNotificationShortLookViewController__presentLongLookForScrollAnimated_completion___block_invoke_4(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (a2)
    {
      (*(*(a1 + 32) + 16))();
      WeakRetained = (*(*(a1 + 40) + 16))();
    }

    else
    {
      [WeakRetained _setDidScrollPresentLongLookViewController:0];
      (*(*(a1 + 32) + 16))();
      WeakRetained = *(a1 + 48);
      if (WeakRetained)
      {
        WeakRetained = (*(WeakRetained + 2))(WeakRetained, 0);
      }
    }
  }

  return MEMORY[0x2821F96F8](WeakRetained);
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CCAA88]);
  [v5 registerDataRepresentationForTypeIdentifier:@"com.apple.usernotifications.drag.response" visibility:3 loadHandler:&__block_literal_global_164_0];
  v6 = [objc_alloc(MEMORY[0x277D75470]) initWithItemProvider:v5];
  notificationRequest = [(NCNotificationViewController *)self notificationRequest];
  userNotification = [notificationRequest userNotification];

  notificationRequest2 = [(NCNotificationViewController *)self notificationRequest];
  sectionIdentifier = [notificationRequest2 sectionIdentifier];

  request = [userNotification request];
  content = [request content];
  defaultActionURL = [content defaultActionURL];

  if (defaultActionURL)
  {
    v14 = [objc_alloc(MEMORY[0x277D66998]) initWithUniqueIdentifier:sectionIdentifier withLaunchActions:0 startLocation:9];
    [v14 setLaunchURL:defaultActionURL];
    [v6 setLocalObject:v14];
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x277D757C0]);
    v16 = [MEMORY[0x277CE1FC8] responseWithNotification:userNotification actionIdentifier:*MEMORY[0x277CE20E8]];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __82__NCNotificationShortLookViewController_dragInteraction_itemsForBeginningSession___block_invoke_2;
    v22[3] = &unk_2783732B8;
    v22[4] = self;
    v14 = [v15 initWithResponse:v16 withHandler:v22];

    v17 = objc_alloc(MEMORY[0x277D66998]);
    v18 = [MEMORY[0x277CBEB98] setWithObject:v14];
    v19 = [v17 initWithUniqueIdentifier:sectionIdentifier withLaunchActions:v18 startLocation:9];

    [v6 setLocalObject:v19];
  }

  v23[0] = v6;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];

  return v20;
}

uint64_t __82__NCNotificationShortLookViewController_dragInteraction_itemsForBeginningSession___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEA90];
  v3 = a2;
  v4 = [v2 data];
  v3[2](v3, v4, 0);

  return 0;
}

void __82__NCNotificationShortLookViewController_dragInteraction_itemsForBeginningSession___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CE2060];
  if (os_log_type_enabled(*MEMORY[0x277CE2060], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 notificationRequest];
    v8 = [v7 sectionIdentifier];
    v9 = *MEMORY[0x277CE20E8];
    v10 = 138543874;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Application foreground launch action for notification response action %{public}@ recieved action response %{public}@", &v10, 0x20u);
  }
}

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  v5 = [objc_alloc(MEMORY[0x277D75B88]) initWithView:self->_lookViewWrapper];
  [v5 set_springboardPlatterStyle:1];

  return v5;
}

- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default
{
  defaultCopy = default;
  v7 = self->_lookViewWrapper;
  superview = [(UIView *)v7 superview];
  v9 = defaultCopy;
  v10 = v9;
  if (v7)
  {
    v11 = superview == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v9;
  if (!v11)
  {
    window = [superview window];

    v12 = v10;
    if (window)
    {
      v14 = objc_alloc(MEMORY[0x277D75488]);
      [(UIView *)v7 center];
      v15 = *(MEMORY[0x277CBF2C0] + 16);
      v18[0] = *MEMORY[0x277CBF2C0];
      v18[1] = v15;
      v18[2] = *(MEMORY[0x277CBF2C0] + 32);
      v16 = [v14 initWithContainer:superview center:v18 transform:?];
      v12 = [v10 retargetedPreviewWithTarget:v16];

      [v12 set_springboardPlatterStyle:1];
    }
  }

  return v12;
}

- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session
{
  v7 = self->super._lookView;
  animatorCopy = animator;
  [(NCNotificationLookView *)v7 bounds];
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  v13 = CGRectGetWidth(v23);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v14 = CGRectGetHeight(v24);
  if (v13 >= v14)
  {
    v14 = v13;
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __93__NCNotificationShortLookViewController_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke;
  v20[3] = &unk_27836FDD0;
  v21 = v7;
  v22 = fmax(fmin((v14 + 12.0) / v14, 1.10000002), 1.00100005);
  v15 = v7;
  [animatorCopy addAnimations:v20];
  v16 = self->_lookViewWrapper;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __93__NCNotificationShortLookViewController_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke_2;
  v18[3] = &unk_2783732E0;
  v19 = v16;
  v17 = v16;
  [animatorCopy addCompletion:v18];
}

uint64_t __93__NCNotificationShortLookViewController_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  CGAffineTransformMakeScale(&v3, *(a1 + 40), *(a1 + 40));
  return [v1 setTransform:&v3];
}

uint64_t __93__NCNotificationShortLookViewController_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return [*(result + 32) setAlpha:0.0];
  }

  return result;
}

- (void)dragInteraction:(id)interaction item:(id)item willAnimateCancelWithAnimator:(id)animator
{
  v6 = self->super._lookView;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __92__NCNotificationShortLookViewController_dragInteraction_item_willAnimateCancelWithAnimator___block_invoke;
  v8[3] = &unk_27836F6A8;
  v9 = v6;
  v7 = v6;
  [animator addAnimations:v8];
}

uint64_t __92__NCNotificationShortLookViewController_dragInteraction_item_willAnimateCancelWithAnimator___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  CGAffineTransformMakeScale(&v3, 1.0, 1.0);
  return [v1 setTransform:&v3];
}

- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin
{
  interactionCopy = interaction;
  beginCopy = begin;
  delegate = [(NCNotificationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate notificationViewController:self dragInteraction:interactionCopy sessionWillBegin:beginCopy];
  }

  [(NCNotificationViewController *)self _notifyObserversWithBlock:&__block_literal_global_179];
}

void __74__NCNotificationShortLookViewController_dragInteraction_sessionWillBegin___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 notificationViewControllerWillBeginUserInteraction:v5];
  }
}

- (void)dragInteraction:(id)interaction session:(id)session willEndWithOperation:(unint64_t)operation
{
  interactionCopy = interaction;
  sessionCopy = session;
  delegate = [(NCNotificationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate notificationViewController:self dragInteraction:interactionCopy session:sessionCopy willEndWithOperation:operation];
  }

  if (operation <= 1)
  {
    [(UIView *)self->_lookViewWrapper setAlpha:1.0];
  }
}

- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation
{
  interactionCopy = interaction;
  sessionCopy = session;
  delegate = [(NCNotificationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate notificationViewController:self dragInteraction:interactionCopy session:sessionCopy didEndWithOperation:operation];
  }

  [(NCNotificationViewController *)self _notifyObserversWithBlock:&__block_literal_global_187];
}

void __85__NCNotificationShortLookViewController_dragInteraction_session_didEndWithOperation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 notificationViewControllerDidEndUserInteraction:v5];
  }
}

- (id)expandedPlatterInteractionManagerIdentifier:(id)identifier
{
  notificationRequest = [(NCNotificationViewController *)self notificationRequest];
  sectionIdentifier = [notificationRequest sectionIdentifier];
  notificationRequest2 = [(NCNotificationViewController *)self notificationRequest];
  notificationIdentifier = [notificationRequest2 notificationIdentifier];
  un_logDigest = [notificationIdentifier un_logDigest];
  v9 = [sectionIdentifier stringByAppendingPathExtension:un_logDigest];

  return v9;
}

- (id)expandedPlatterInteractionManager:(id)manager menuWithSuggestedActions:(id)actions
{
  v4 = MEMORY[0x277D75710];
  v5 = [(NCNotificationViewController *)self staticContentProvider:manager];
  menuActions = [v5 menuActions];
  v7 = [v4 menuWithChildren:menuActions];

  return v7;
}

- (BOOL)expandedPlatterInteractionManager:(id)manager shouldBeginInteractionWithTouchAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v34 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  staticContentProvider = [(NCNotificationViewController *)self staticContentProvider];
  isThreadSummary = [staticContentProvider isThreadSummary];

  if (isThreadSummary)
  {
LABEL_33:
    v22 = 0;
    goto LABEL_34;
  }

  isInteractionEnabled = [(NCNotificationViewController *)self isInteractionEnabled];
  if ([(NCNotificationShortLookViewController *)self isViewLoaded])
  {
    viewForPreview = [(NCNotificationShortLookViewController *)self viewForPreview];
    window = [viewForPreview window];
    v13 = window != 0;
  }

  else
  {
    v13 = 0;
  }

  if (([(NCNotificationShortLookViewController *)self isBeingPresented]& 1) != 0)
  {
    isBeingDismissed = 1;
  }

  else
  {
    isBeingDismissed = [(NCNotificationShortLookViewController *)self isBeingDismissed];
  }

  if (!isInteractionEnabled || !v13)
  {
    if (isInteractionEnabled)
    {
      goto LABEL_15;
    }

LABEL_29:
    v21 = @"interaction disabled";
LABEL_30:
    v24 = v21;
    v25 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
      notificationRequest = [(NCNotificationViewController *)self notificationRequest];
      notificationIdentifier = [notificationRequest notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      *buf = 138543618;
      *&buf[4] = un_logDigest;
      *&buf[12] = 2114;
      *&buf[14] = v24;
      _os_log_impl(&dword_21E77E000, v26, OS_LOG_TYPE_DEFAULT, "Denying interaction for view controller for request %{public}@: %{public}@", buf, 0x16u);
    }

    goto LABEL_33;
  }

  _notificationShortLookViewIfLoaded = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
  auxiliaryOptionsVisible = [_notificationShortLookViewIfLoaded auxiliaryOptionsVisible];

  if (auxiliaryOptionsVisible)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v33 = 0;
    _notificationShortLookViewIfLoaded2 = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
    auxiliaryOptionButtons = [_notificationShortLookViewIfLoaded2 auxiliaryOptionButtons];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __117__NCNotificationShortLookViewController_expandedPlatterInteractionManager_shouldBeginInteractionWithTouchAtLocation___block_invoke;
    v31[3] = &unk_278373308;
    v31[4] = self;
    v31[5] = buf;
    *&v31[6] = x;
    *&v31[7] = y;
    [auxiliaryOptionButtons enumerateObjectsUsingBlock:v31];

    LOBYTE(_notificationShortLookViewIfLoaded2) = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    if (_notificationShortLookViewIfLoaded2)
    {
      goto LABEL_29;
    }
  }

  if (self->_trigger == 3)
  {
    goto LABEL_15;
  }

  delegate = [(NCNotificationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v20 = [delegate notificationViewControllerShouldAllowExpandedPlatterInteraction:self];
LABEL_24:
    v23 = v20;
    goto LABEL_26;
  }

  if (objc_opt_respondsToSelector())
  {
    v20 = [delegate notificationViewControllerShouldAllowClickPresentationInteraction:self];
    goto LABEL_24;
  }

  v23 = 1;
LABEL_26:
  if (!((self->_trigger != 0 || (v23 & 1) == 0) | isBeingDismissed & 1))
  {
    self->_trigger = 1;
  }

  if ((v23 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_15:
  if (isBeingDismissed & 1 | !v13)
  {
    v21 = @"view not in a window";
    if (v13)
    {
      v21 = @"view controller is transitioning";
    }

    goto LABEL_30;
  }

  [(NCNotificationViewController *)self _notifyObserversWithBlock:&__block_literal_global_195];
  if (![(NCNotificationViewController *)self _canPan])
  {
    [objc_opt_class() _prepareSharedNotificationFeedbackGenerator];
  }

  v22 = 1;
LABEL_34:

  return v22;
}

void __117__NCNotificationShortLookViewController_expandedPlatterInteractionManager_shouldBeginInteractionWithTouchAtLocation___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 viewForPreview];
  [v8 convertPoint:v7 toView:{*(a1 + 48), *(a1 + 56)}];
  v9 = [v7 hitTest:0 withEvent:?];

  *(*(*(a1 + 40) + 8) + 24) = v9 != 0;
  *a4 = *(*(*(a1 + 40) + 8) + 24);
}

void __117__NCNotificationShortLookViewController_expandedPlatterInteractionManager_shouldBeginInteractionWithTouchAtLocation___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 notificationViewControllerWillBeginUserInteraction:v5];
  }
}

- (void)expandedPlatterInteractionManager:(id)manager shouldCommitInteraction:(id)interaction
{
  managerCopy = manager;
  interactionCopy = interaction;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __99__NCNotificationShortLookViewController_expandedPlatterInteractionManager_shouldCommitInteraction___block_invoke;
  aBlock[3] = &unk_2783706E8;
  objc_copyWeak(&v23, &location);
  v8 = interactionCopy;
  v22 = v8;
  v9 = _Block_copy(aBlock);
  delegate = [(NCNotificationViewController *)self delegate];
  staticContentProvider = [(NCNotificationViewController *)self staticContentProvider];
  isThreadSummary = [staticContentProvider isThreadSummary];

  if (isThreadSummary)
  {
    [delegate handleTapOnNotificationViewController:self];
LABEL_14:
    v9[2](v9, 0);
    goto LABEL_15;
  }

  if (![(NCNotificationShortLookViewController *)self shouldCommitToExpandedPlatterPresentationWithFeedback])
  {
    goto LABEL_14;
  }

  reachedForceThreshold = [managerCopy reachedForceThreshold];
  trigger = self->_trigger;
  if (trigger == 1)
  {
    v15 = reachedForceThreshold;
  }

  else
  {
    v15 = 0;
  }

  if (v15 == 1)
  {
    trigger = 2;
    self->_trigger = 2;
  }

  _isLockedByAppProtection = [(NCNotificationShortLookViewController *)self _isLockedByAppProtection];
  if (trigger == 1 && _isLockedByAppProtection)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __99__NCNotificationShortLookViewController_expandedPlatterInteractionManager_shouldCommitInteraction___block_invoke_3;
    v18[3] = &unk_278373330;
    v18[4] = self;
    v19 = v9;
    v20 = 1;
    [(NCNotificationShortLookViewController *)self _requestAppProtectionUnlockWithCompletion:v18];
  }

  else
  {
    [(NCNotificationShortLookViewController *)self _checkDelegateShouldTransitionForTrigger:trigger completionBlock:v9];
  }

LABEL_15:

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

uint64_t __99__NCNotificationShortLookViewController_expandedPlatterInteractionManager_shouldCommitInteraction___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _notifyObserversWithBlock:&__block_literal_global_206];
  }

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __99__NCNotificationShortLookViewController_expandedPlatterInteractionManager_shouldCommitInteraction___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 notificationViewControllerDidEndUserInteraction:v5];
  }
}

uint64_t __99__NCNotificationShortLookViewController_expandedPlatterInteractionManager_shouldCommitInteraction___block_invoke_3(uint64_t a1, char a2)
{
  if (a2)
  {
    return [*(a1 + 32) _checkDelegateShouldTransitionForTrigger:*(a1 + 48) completionBlock:*(a1 + 40)];
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

- (void)_checkDelegateShouldTransitionForTrigger:(int64_t)trigger completionBlock:(id)block
{
  v15 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  delegate = [(NCNotificationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate notificationRequestPresenter:self shouldTransitionToStage:@"notificationViewController.presentingStage.longLook" forTrigger:trigger completionBlock:blockCopy];
  }

  else
  {
    v8 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      notificationRequest = [(NCNotificationViewController *)self notificationRequest];
      notificationIdentifier = [notificationRequest notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      v13 = 138543362;
      v14 = un_logDigest;
      _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "Delegate for notification view controller for request %{public}@ doesn't respond to selector – denying presentation", &v13, 0xCu);
    }

    blockCopy[2](blockCopy, 0);
    [objc_opt_class() _playNegativeInteractionHaptic];
  }
}

- (void)expandedPlatterInteractionManager:(id)manager willPresentContentWithAnimator:(id)animator
{
  managerCopy = manager;
  animatorCopy = animator;
  objc_storeStrong(&self->_activeExpandedPlatterInteractionAnimator, animator);
  v8 = self->_expandedPlatterViewController;
  [(NCExpandedPlatterViewController *)v8 expandedPlatterWillPresent:v8];
  delegate = [(NCNotificationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    notificationRequest = [(NCNotificationViewController *)self notificationRequest];
    [delegate notificationViewController:self willPresentLongLookForRequst:notificationRequest animator:animatorCopy];
  }

  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __106__NCNotificationShortLookViewController_expandedPlatterInteractionManager_willPresentContentWithAnimator___block_invoke;
  v13[3] = &unk_278370C40;
  objc_copyWeak(&v16, &location);
  v11 = v8;
  v14 = v11;
  v12 = animatorCopy;
  v15 = v12;
  [v12 addCompletion:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __106__NCNotificationShortLookViewController_expandedPlatterInteractionManager_willPresentContentWithAnimator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_opt_class();
  v4 = WeakRetained;
  v8 = v4;
  if (v3)
  {
    v5 = (objc_opt_isKindOfClass() & 1) == 0;
    v4 = v8;
    if (v5)
    {
      v3 = 0;
    }

    else
    {
      v3 = v8;
    }
  }

  if (v3)
  {
    v8[166] = 0;
  }

  [*(a1 + 32) expandedPlatterDidPresent:*(a1 + 32)];
  v6 = [v8 _activeExpandedPlatterInteractionAnimator];
  v7 = *(a1 + 40);

  if (v6 == v7)
  {
    [v8 _setActiveExpandedPlatterInteractionAnimator:0];
  }
}

- (BOOL)expandedPlatterInteractionManagerShouldAllowLongPressGesture:(id)gesture
{
  delegate = [(NCNotificationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegate notificationViewControllerShouldAllowLongPressGesture:self];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)expandedPlatterInteractionManager:(id)manager willDismissContentWithAnimator:(id)animator
{
  managerCopy = manager;
  animatorCopy = animator;
  objc_storeStrong(&self->_activeExpandedPlatterInteractionAnimator, animator);
  expandedPlatterDismissalReason = self->_expandedPlatterDismissalReason;
  if (!expandedPlatterDismissalReason)
  {
    expandedPlatterDismissalReason = @"NCExpandedPlatterObservableDismissalReasonUnknown";
  }

  v9 = expandedPlatterDismissalReason;
  [(NCNotificationShortLookViewController *)self _expandedPlatterInteractionManager:managerCopy willDismissWithReason:v9];
  delegate = [(NCNotificationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    notificationRequest = [(NCNotificationViewController *)self notificationRequest];
    [delegate notificationViewController:self dismissPresentLongLookForRequst:notificationRequest animator:animatorCopy];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __106__NCNotificationShortLookViewController_expandedPlatterInteractionManager_willDismissContentWithAnimator___block_invoke;
  v16[3] = &unk_278371788;
  v16[4] = self;
  v17 = animatorCopy;
  v18 = managerCopy;
  v19 = v9;
  v12 = v9;
  v13 = managerCopy;
  v14 = animatorCopy;
  selfCopy = self;
  [v14 addCompletion:v16];
}

void __106__NCNotificationShortLookViewController_expandedPlatterInteractionManager_willDismissContentWithAnimator___block_invoke(uint64_t a1)
{
  v4 = *(a1 + 32);
  v2 = [v4 _activeExpandedPlatterInteractionAnimator];
  v3 = *(a1 + 40);

  if (v2 == v3)
  {
    [v4 _expandedPlatterInteractionManager:*(a1 + 48) didDismissWithReason:*(a1 + 56)];
    [v4 _setActiveExpandedPlatterInteractionAnimator:0];
  }
}

- (int64_t)expandedPlatterViewController:(id)controller dateFormatStyleForNotificationRequest:(id)request
{
  v5 = [(NCNotificationViewController *)self delegate:controller];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 notificationViewControllerDateFormatStyle:self];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)expandedPlatterViewController:(id)controller requestsDismissalWithReason:(id)reason userInfo:(id)info
{
  reasonCopy = reason;
  infoCopy = info;
  objc_storeStrong(&self->_expandedPlatterDismissalReason, reason);
  if (NCEqualExpandedPlatterObservableDismissalReasons(self->_expandedPlatterDismissalReason, @"dismissalReasonURL"))
  {
    v10 = [infoCopy objectForKey:@"NCExpandedPlatterObservableDismissalReasonUserInfoKeyURL"];
    if (v10)
    {
      v11 = dispatch_get_global_queue(25, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __108__NCNotificationShortLookViewController_expandedPlatterViewController_requestsDismissalWithReason_userInfo___block_invoke;
      block[3] = &unk_27836F6A8;
      v19 = v10;
      dispatch_async(v11, block);
    }
  }

  else if (NCEqualExpandedPlatterObservableDismissalReasons(self->_expandedPlatterDismissalReason, @"dismissalReasonDefaultTap"))
  {
    v12 = +[NCNotificationEventTracker sharedInstance];
    notificationRequest = [(NCNotificationViewController *)self notificationRequest];
    notificationUsageTrackingState = [(NCNotificationViewController *)self notificationUsageTrackingState];
    [v12 longLookDefaultActionInvokedWithTrigger:1 forNotificationRequest:notificationRequest withState:notificationUsageTrackingState];

    [(NCNotificationViewController *)self _executeDefaultAction:1];
  }

  else if (NCEqualExpandedPlatterObservableDismissalReasons(self->_expandedPlatterDismissalReason, @"dismissalReasonHomeAction"))
  {
    v15 = +[NCNotificationEventTracker sharedInstance];
    notificationRequest2 = [(NCNotificationViewController *)self notificationRequest];
    notificationUsageTrackingState2 = [(NCNotificationViewController *)self notificationUsageTrackingState];
    [v15 longLookReparkInvokedWithTrigger:0 forNotificationRequest:notificationRequest2 withState:notificationUsageTrackingState2];

    [(NCNotificationViewController *)self _executeCancelAction:1];
  }
}

void __108__NCNotificationShortLookViewController_expandedPlatterViewController_requestsDismissalWithReason_userInfo___block_invoke(uint64_t a1)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [objc_alloc(MEMORY[0x277D6EED0]) initWithURL:*(a1 + 32)];
  if ([v3 isValid])
  {
    [v3 setShowUIPrompt:1];
    v4 = [v3 URL];

    v2 = v4;
  }

  v5 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v6 = *MEMORY[0x277D0AC70];
  v8[0] = *MEMORY[0x277D0AC58];
  v8[1] = v6;
  v9[0] = MEMORY[0x277CBEC38];
  v9[1] = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [v5 openSensitiveURL:v2 withOptions:v7 error:0];
}

- (unint64_t)importantAdornmentEligibleOptionsForNotificationViewController:(id)controller
{
  delegate = [(NCNotificationViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0 && [delegate importantAdornmentEligibleOptionsForNotificationViewController:self])
  {
    v5 = [delegate importantAdornmentEligibleOptionsForNotificationViewController:self];
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

- (void)expandedPlatterWillPresent:(id)present
{
  v23 = *MEMORY[0x277D85DE8];
  presentCopy = present;
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    notificationRequest = [(NCNotificationViewController *)self notificationRequest];
    notificationIdentifier = [notificationRequest notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v10 = NCStringFromLongLookPresentationTrigger(self->_trigger);
    v19 = 138543618;
    v20 = un_logDigest;
    v21 = 2114;
    v22 = v10;
    _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "Notification view controller will present expanded platter for request %{public}@ (_trigger: %{public}@)", &v19, 0x16u);
  }

  self->_expandedPlatterPresentationState = 1;
  v11 = +[NCNotificationEventTracker sharedInstance];
  notificationRequest2 = [(NCNotificationViewController *)self notificationRequest];
  [v11 longLookPresentedForNotificationRequest:notificationRequest2];

  [(NCNotificationViewController *)self _notifyObserversWithBlock:&__block_literal_global_220];
  customContentViewController = [(NCExpandedPlatterViewController *)self->_expandedPlatterViewController customContentViewController];
  contentExtensionIdentifier = [customContentViewController contentExtensionIdentifier];

  if ([contentExtensionIdentifier length])
  {
    v15 = NCSDKVersionForExtensionWithIdentifier(contentExtensionIdentifier, 0);
    v16 = NCIsSDKVersionSameOrAfterSDKVersion(v15, @"13.0");

    if (!v16)
    {
      presentationController = [(NCExpandedPlatterViewController *)self->_expandedPlatterViewController presentationController];
      v18 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
      [presentationController setOverrideTraitCollection:v18];
    }
  }
}

void __68__NCNotificationShortLookViewController_expandedPlatterWillPresent___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 longLookWillPresentForNotificationViewController:v5];
  }
}

- (void)expandedPlatterDidPresent:(id)present
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    notificationRequest = [(NCNotificationViewController *)self notificationRequest];
    notificationIdentifier = [notificationRequest notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v9 = 138543362;
    v10 = un_logDigest;
    _os_log_impl(&dword_21E77E000, v5, OS_LOG_TYPE_DEFAULT, "Notification view controller did present expanded platter for request %{public}@", &v9, 0xCu);
  }

  self->_expandedPlatterPresentationState = 2;
  [(NCNotificationViewController *)self _notifyObserversWithBlock:&__block_literal_global_228];
}

void __67__NCNotificationShortLookViewController_expandedPlatterDidPresent___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 longLookDidPresentForNotificationViewController:v5];
  }
}

- (void)expandedPlatter:(id)platter willDismissWithReason:(id)reason
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    notificationRequest = [(NCNotificationViewController *)self notificationRequest];
    notificationIdentifier = [notificationRequest notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v10 = 138543362;
    v11 = un_logDigest;
    _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "Notification view controller will dismiss expanded platter for request %{public}@", &v10, 0xCu);
  }

  self->_expandedPlatterPresentationState = 3;
  [(NCNotificationViewController *)self _notifyObserversWithBlock:&__block_literal_global_232];
}

void __79__NCNotificationShortLookViewController_expandedPlatter_willDismissWithReason___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 longLookWillDismissForNotificationViewController:v5];
  }
}

- (void)expandedPlatter:(id)platter didDismissWithReason:(id)reason
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    notificationRequest = [(NCNotificationViewController *)self notificationRequest];
    notificationIdentifier = [notificationRequest notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v14 = 138543362;
    v15 = un_logDigest;
    _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "Notification view controller did dismiss expanded platter for request %{public}@", &v14, 0xCu);
  }

  self->_expandedPlatterPresentationState = 0;
  [(NCExpandedPlatterViewController *)self->_expandedPlatterViewController removeExpandedPlatterObserver:self];
  expandedPlatterViewController = self->_expandedPlatterViewController;
  self->_expandedPlatterViewController = 0;

  firstObject = [(NSMutableArray *)self->_containerViewProviders firstObject];
  [firstObject invalidate];

  [(NSMutableArray *)self->_containerViewProviders removeFirstObject];
  containerViewForExpandedContent = self->_containerViewForExpandedContent;
  self->_containerViewForExpandedContent = 0;

  expandedPlatterDismissalReason = self->_expandedPlatterDismissalReason;
  self->_expandedPlatterDismissalReason = 0;

  [(NCNotificationViewController *)self _setupCustomContentProvider];
  self->_didScrollPresentLongLookViewController = 0;
  [(NCNotificationViewController *)self _notifyObserversWithBlock:&__block_literal_global_236];
}

void __78__NCNotificationShortLookViewController_expandedPlatter_didDismissWithReason___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 longLookDidDismissForNotificationViewController:v5];
  }
}

- (void)customContent:(id)content didUpdateUserNotificationActions:(id)actions
{
  v21 = *MEMORY[0x277D85DE8];
  contentCopy = content;
  actionsCopy = actions;
  if (self->_expandedPlatterViewController)
  {
    v8 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      notificationRequest = [(NCNotificationViewController *)self notificationRequest];
      notificationIdentifier = [notificationRequest notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      *buf = 138543362;
      v20 = un_logDigest;
      _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "Custom content extension is updating expanded platter actions for notification request %{public}@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __88__NCNotificationShortLookViewController_customContent_didUpdateUserNotificationActions___block_invoke;
    aBlock[3] = &unk_278370A90;
    objc_copyWeak(&v18, buf);
    v17 = actionsCopy;
    v13 = _Block_copy(aBlock);
    activeExpandedPlatterInteractionAnimator = self->_activeExpandedPlatterInteractionAnimator;
    if (activeExpandedPlatterInteractionAnimator)
    {
      [(PLExpandedPlatterInteractionAnimating *)activeExpandedPlatterInteractionAnimator addCompletion:v13];
    }

    else
    {
      v13[2](v13);
    }

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }

  else
  {
    v15.receiver = self;
    v15.super_class = NCNotificationShortLookViewController;
    [(NCNotificationShortLookViewController *)&v15 customContent:contentCopy didUpdateUserNotificationActions:actionsCopy];
  }
}

void __88__NCNotificationShortLookViewController_customContent_didUpdateUserNotificationActions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained staticContentProvider];
    [v4 setOverriddenActions:*(a1 + 32)];

    v5 = v3[167];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __88__NCNotificationShortLookViewController_customContent_didUpdateUserNotificationActions___block_invoke_2;
    v6[3] = &unk_278373358;
    v6[4] = v3;
    [v5 updateVisibleMenuWithBlock:v6];
  }
}

id __88__NCNotificationShortLookViewController_customContent_didUpdateUserNotificationActions___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277D75710];
  v2 = [*(a1 + 32) staticContentProvider];
  v3 = [v2 menuActions];
  v4 = [v1 menuWithChildren:v3];

  return v4;
}

- (id)_longLookNotificationViewController
{
  longLookNotificationViewController = self->_longLookNotificationViewController;
  if (!longLookNotificationViewController)
  {
    v4 = [NCNotificationLongLookViewController alloc];
    notificationRequest = [(NCNotificationViewController *)self notificationRequest];
    v6 = [(NCNotificationLongLookViewController *)v4 _initWithNotificationRequest:notificationRequest andPresentingNotificationViewController:self revealingAdditionalContentOnPresentation:[(NCNotificationViewController *)self revealAdditionalContentOnPresentation]];
    v7 = self->_longLookNotificationViewController;
    self->_longLookNotificationViewController = v6;

    v8 = self->_longLookNotificationViewController;
    delegate = [(NCNotificationViewController *)self delegate];
    [(NCNotificationViewController *)v8 setDelegate:delegate];

    [(NCNotificationViewController *)self->_longLookNotificationViewController addObserver:self];
    [(NCNotificationViewController *)self->_longLookNotificationViewController updateContent];
    staticContentProvider = [(NCNotificationViewController *)self->_longLookNotificationViewController staticContentProvider];

    longLookNotificationViewController = self->_longLookNotificationViewController;
    if (!staticContentProvider)
    {
      staticContentProvider2 = [(NCNotificationViewController *)self staticContentProvider];
      [(NCNotificationViewController *)longLookNotificationViewController setStaticContentProvider:staticContentProvider2];

      longLookNotificationViewController = self->_longLookNotificationViewController;
    }
  }

  return longLookNotificationViewController;
}

- (id)transitioningDelegateForClickPresentationInteractionManager:(id)manager
{
  v3 = objc_alloc_init(NCLongLookTransitioningDelegate);

  return v3;
}

- (BOOL)clickPresentationInteractionManager:(id)manager shouldBeginInteractionWithTouchAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  managerCopy = manager;
  isInteractionEnabled = [(NCNotificationViewController *)self isInteractionEnabled];
  if (([(NCNotificationShortLookViewController *)self isBeingPresented]& 1) != 0)
  {
    isBeingDismissed = 1;
    if (!isInteractionEnabled)
    {
      goto LABEL_7;
    }
  }

  else
  {
    isBeingDismissed = [(NCNotificationShortLookViewController *)self isBeingDismissed];
    if (!isInteractionEnabled)
    {
LABEL_7:
      v14 = 0;
      goto LABEL_14;
    }
  }

  _notificationShortLookViewIfLoaded = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
  auxiliaryOptionsVisible = [_notificationShortLookViewIfLoaded auxiliaryOptionsVisible];

  if (auxiliaryOptionsVisible)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    _notificationShortLookViewIfLoaded2 = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
    auxiliaryOptionButtons = [_notificationShortLookViewIfLoaded2 auxiliaryOptionButtons];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __119__NCNotificationShortLookViewController_clickPresentationInteractionManager_shouldBeginInteractionWithTouchAtLocation___block_invoke;
    v19[3] = &unk_278373308;
    v19[4] = self;
    v19[5] = &v20;
    *&v19[6] = x;
    *&v19[7] = y;
    [auxiliaryOptionButtons enumerateObjectsUsingBlock:v19];

    LOBYTE(_notificationShortLookViewIfLoaded2) = *(v21 + 24);
    _Block_object_dispose(&v20, 8);
    if (_notificationShortLookViewIfLoaded2)
    {
      goto LABEL_7;
    }
  }

  delegate = [(NCNotificationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v14 = [delegate notificationViewControllerShouldAllowClickPresentationInteraction:self];
  }

  else
  {
    v14 = 1;
  }

  if (!(isBeingDismissed & 1 | ((v14 & 1) == 0)))
  {
    date = [MEMORY[0x277CBEAA8] date];
    tapBeginTime = self->_tapBeginTime;
    self->_tapBeginTime = date;

    self->_trigger = 1;
  }

LABEL_14:
  return v14 & (isBeingDismissed ^ 1);
}

void __119__NCNotificationShortLookViewController_clickPresentationInteractionManager_shouldBeginInteractionWithTouchAtLocation___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 viewForPreview];
  [v8 convertPoint:v7 toView:{*(a1 + 48), *(a1 + 56)}];
  v9 = [v7 hitTest:0 withEvent:?];

  *(*(*(a1 + 40) + 8) + 24) = v9 != 0;
  *a4 = *(*(*(a1 + 40) + 8) + 24);
}

void __101__NCNotificationShortLookViewController_clickPresentationInteractionManagerWillBeginUserInteraction___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 notificationViewControllerWillBeginUserInteraction:v5];
  }
}

- (void)clickPresentationInteractionManagerDidEndUserInteraction:(id)interaction
{
  tapBeginTime = self->_tapBeginTime;
  self->_tapBeginTime = 0;

  if (!self->_didScrollPresentLongLookViewController)
  {
    [(NCNotificationViewController *)self _notifyObserversWithBlock:&__block_literal_global_248_0];
    self->_trigger = 0;
  }
}

void __98__NCNotificationShortLookViewController_clickPresentationInteractionManagerDidEndUserInteraction___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 notificationViewControllerDidEndUserInteraction:v5];
  }
}

- (void)clickPresentationInteractionManager:(id)manager shouldFinishInteractionThatReachedForceThreshold:(BOOL)threshold withCompletionBlock:(id)block
{
  thresholdCopy = threshold;
  blockCopy = block;
  delegate = [(NCNotificationViewController *)self delegate];
  if (thresholdCopy && self->_trigger == 1)
  {
    self->_trigger = 2;
  }

  if (objc_opt_respondsToSelector())
  {
    [delegate notificationRequestPresenter:self shouldTransitionToStage:@"notificationViewController.presentingStage.longLook" forTrigger:self->_trigger completionBlock:blockCopy];
  }

  else
  {
    blockCopy[2](blockCopy, 0);
  }
}

- (void)_handlePresentedContentDismissalForClickPresentationInteractionManagerWithTrigger:(int64_t)trigger
{
  v16 = *MEMORY[0x277D85DE8];
  if (objc_opt_respondsToSelector())
  {
    longLookNotificationViewController = self->_longLookNotificationViewController;
  }

  else
  {
    longLookNotificationViewController = 0;
  }

  v6 = longLookNotificationViewController;
  if (objc_opt_respondsToSelector())
  {
    v7 = self->_longLookNotificationViewController;
    v8 = v7;
    if (v6 && v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
  {
    v10 = 138543874;
    v11 = v6;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    selfCopy = self;
    _os_log_error_impl(&dword_21E77E000, v9, OS_LOG_TYPE_ERROR, "Couldn't find both presentable (%{public}@) and dismisser (%{public}@) for long look VC %{public}@", &v10, 0x20u);
  }

LABEL_11:
  [(NCNotificationLongLookViewController *)v8 expandedPlatterPresentable:v6 requestsDismissalWithTrigger:trigger];
}

- (BOOL)clickPresentationInteractionManagerShouldAllowLongPressGesture:(id)gesture
{
  delegate = [(NCNotificationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegate notificationViewControllerShouldAllowLongPressGesture:self];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (CGRect)initialPresentedFrameOfViewForPreview
{
  delegate = [(NCNotificationViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();
  viewForPreview = [(NCNotificationShortLookViewController *)self viewForPreview];
  v6 = viewForPreview;
  if (v4)
  {
    [delegate notificationViewController:self initialFrameForPresentingLongLookFromView:viewForPreview];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    superview = [viewForPreview superview];
    [v6 frame];
    [superview convertRect:0 toView:?];
    v8 = v16;
    v10 = v17;
    v12 = v18;
    v14 = v19;
  }

  v20 = v8;
  v21 = v10;
  v22 = v12;
  v23 = v14;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)finalPresentedFrameOfViewForPreview
{
  [(NCNotificationShortLookViewController *)self initialPresentedFrameOfViewForPreview];
  self->_finalPresentedFrameOfViewForPreview.origin.x = v3;
  self->_finalPresentedFrameOfViewForPreview.origin.y = v4;
  self->_finalPresentedFrameOfViewForPreview.size.width = v5;
  self->_finalPresentedFrameOfViewForPreview.size.height = v6;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)finalDismissedFrameOfViewForPreview
{
  delegate = [(NCNotificationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    viewForPreview = [(NCNotificationShortLookViewController *)self viewForPreview];
    [delegate notificationViewController:self finalFrameForDismissingLongLookFromView:viewForPreview];
    x = v5;
    y = v7;
    width = v9;
    height = v11;
  }

  else
  {
    x = self->_finalPresentedFrameOfViewForPreview.origin.x;
    y = self->_finalPresentedFrameOfViewForPreview.origin.y;
    width = self->_finalPresentedFrameOfViewForPreview.size.width;
    height = self->_finalPresentedFrameOfViewForPreview.size.height;
  }

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  _notificationShortLookViewIfLoaded = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
  backgroundMaterialView = [_notificationShortLookViewIfLoaded backgroundMaterialView];
  [backgroundMaterialView setHighlighted:highlightedCopy];
}

- (UIBezierPath)visiblePath
{
  viewForPreview = [(NCNotificationShortLookViewController *)self viewForPreview];
  v3 = MEMORY[0x277D75208];
  [viewForPreview bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [viewForPreview _continuousCornerRadius];
  v13 = [v3 bezierPathWithRoundedRect:v5 cornerRadius:{v7, v9, v11, v12 + -2.0}];

  return v13;
}

- (void)notificationViewControllerWillPresent:(id)present
{
  v23 = *MEMORY[0x277D85DE8];
  presentCopy = present;
  v5 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    notificationRequest = [(NCNotificationViewController *)self notificationRequest];
    notificationIdentifier = [notificationRequest notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v10 = NCStringFromLongLookPresentationTrigger(self->_trigger);
    v19 = 138543618;
    v20 = un_logDigest;
    v21 = 2114;
    v22 = v10;
    _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "Notification view controller will present long look for request %{public}@ (_trigger: %{public}@)", &v19, 0x16u);
  }

  v11 = +[NCNotificationEventTracker sharedInstance];
  notificationRequest2 = [(NCNotificationViewController *)self notificationRequest];
  [v11 longLookPresentedForNotificationRequest:notificationRequest2];

  [(UITapGestureRecognizer *)self->_tapGesture setEnabled:0];
  [(NCNotificationViewController *)self _notifyObserversWithBlock:&__block_literal_global_259];
  _customContentProvidingViewController = [(NCNotificationViewController *)self->_longLookNotificationViewController _customContentProvidingViewController];
  contentExtensionIdentifier = [_customContentProvidingViewController contentExtensionIdentifier];

  if ([contentExtensionIdentifier length])
  {
    v15 = NCSDKVersionForExtensionWithIdentifier(contentExtensionIdentifier, 0);
    v16 = NCIsSDKVersionSameOrAfterSDKVersion(v15, @"13.0");

    if (!v16)
    {
      presentationController = [(NCNotificationLongLookViewController *)self->_longLookNotificationViewController presentationController];
      v18 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
      [presentationController setOverrideTraitCollection:v18];
    }
  }

  [(NCNotificationLongLookViewController *)self->_longLookNotificationViewController _updateWithProvidedCustomContent];
}

void __79__NCNotificationShortLookViewController_notificationViewControllerWillPresent___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 longLookWillPresentForNotificationViewController:v5];
  }
}

- (void)notificationViewControllerDidPresent:(id)present
{
  v15 = *MEMORY[0x277D85DE8];
  presentCopy = present;
  v5 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    notificationRequest = [(NCNotificationViewController *)self notificationRequest];
    notificationIdentifier = [notificationRequest notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v13 = 138543362;
    v14 = un_logDigest;
    _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "Notification view controller did present long look for request %{public}@", &v13, 0xCu);
  }

  if ([(NCNotificationViewController *)self _canPan])
  {
    view = [(NCNotificationShortLookViewController *)self view];
    presentationController = [(NCNotificationLongLookViewController *)self->_longLookNotificationViewController presentationController];
    containerView = [presentationController containerView];
    [containerView bounds];
    [view setFrame:?];
  }

  [(NCNotificationViewController *)self _notifyObserversWithBlock:&__block_literal_global_261];
}

void __78__NCNotificationShortLookViewController_notificationViewControllerDidPresent___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 longLookDidPresentForNotificationViewController:v5];
  }
}

- (void)notificationViewControllerWillDismiss:(id)dismiss
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    notificationRequest = [(NCNotificationViewController *)self notificationRequest];
    notificationIdentifier = [notificationRequest notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v9 = 138543362;
    v10 = un_logDigest;
    _os_log_impl(&dword_21E77E000, v5, OS_LOG_TYPE_DEFAULT, "Notification view controller will dismiss long look for request %{public}@", &v9, 0xCu);
  }

  [(NCNotificationViewController *)self _notifyObserversWithBlock:&__block_literal_global_263];
}

void __79__NCNotificationShortLookViewController_notificationViewControllerWillDismiss___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 longLookWillDismissForNotificationViewController:v5];
  }
}

- (void)notificationViewControllerDidDismiss:(id)dismiss
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    notificationRequest = [(NCNotificationViewController *)self notificationRequest];
    notificationIdentifier = [notificationRequest notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v10 = 138543362;
    v11 = un_logDigest;
    _os_log_impl(&dword_21E77E000, v5, OS_LOG_TYPE_DEFAULT, "Notification view controller did dismiss long look for request %{public}@", &v10, 0xCu);
  }

  [(UITapGestureRecognizer *)self->_tapGesture setEnabled:1];
  longLookNotificationViewController = self->_longLookNotificationViewController;
  self->_longLookNotificationViewController = 0;

  self->_didScrollPresentLongLookViewController = 0;
  [(NCNotificationViewController *)self _notifyObserversWithBlock:&__block_literal_global_265];
}

void __78__NCNotificationShortLookViewController_notificationViewControllerDidDismiss___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 longLookDidDismissForNotificationViewController:v5];
  }
}

- (id)customBackgroundContainerViewForExpandedPlatterPresentationController:(id)controller
{
  controllerCopy = controller;
  parentViewController = [(NCNotificationShortLookViewController *)self parentViewController];
  if (objc_opt_respondsToSelector())
  {
    v6 = [parentViewController customBackgroundContainerViewForExpandedPlatterPresentationController:controllerCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_presentedLongLookViewController
{
  presentedViewController = [(PLClickPresentationInteractionManager *)self->_clickPresentationInteractionManager presentedViewController];
  longLookNotificationViewController = presentedViewController;
  if (!presentedViewController)
  {
    longLookNotificationViewController = self->_longLookNotificationViewController;
  }

  v5 = objc_opt_class();
  v6 = longLookNotificationViewController;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v6;
    }

    else
    {
      v5 = 0;
    }
  }

  v7 = v5;

  return v5;
}

- (void)shouldCommitToExpandedPlatterPresentationWithFeedback
{
  v9 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  notificationRequest = [a2 notificationRequest];
  notificationIdentifier = [notificationRequest notificationIdentifier];
  un_logDigest = [notificationIdentifier un_logDigest];
  v7 = 138543362;
  v8 = un_logDigest;
  _os_log_error_impl(&dword_21E77E000, selfCopy, OS_LOG_TYPE_ERROR, "Notification view controller for request %{public}@ doesn't have a container view for expanded content – aborting presentation", &v7, 0xCu);
}

void __83__NCNotificationShortLookViewController__requestAppProtectionUnlockWithCompletion___block_invoke_cold_1(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 un_logDigest];
  v12 = [a3 localizedDescription];
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x16u);
}

- (void)containerViewForExpandedContent
{
  v4 = a2;
  notificationRequest = [a3 notificationRequest];
  notificationIdentifier = [notificationRequest notificationIdentifier];
  un_logDigest = [notificationIdentifier un_logDigest];
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x16u);
}

- (void)_handleTapOnView:(void *)a3 .cold.1(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = [a2 notificationRequest];
  v7 = [v6 notificationIdentifier];
  v13 = [v7 un_logDigest];
  [a3 state];
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v8, v9, v10, v11, v12, 0x20u);
}

- (void)pointerInteraction:(__CFString *)a3 styleForRegion:.cold.1(void *a1, void *a2, __CFString *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 notificationRequest];
  v7 = [v6 sectionIdentifier];
  v8 = v7;
  v9 = @"<nil>";
  if (a3)
  {
    v9 = a3;
  }

  v10 = 138543618;
  v11 = v7;
  v12 = 2114;
  v13 = v9;
  _os_log_error_impl(&dword_21E77E000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] Short look view is not a member of a window. Cannot provide a pointer interaction. Short look view: %{public}@", &v10, 0x16u);
}

@end