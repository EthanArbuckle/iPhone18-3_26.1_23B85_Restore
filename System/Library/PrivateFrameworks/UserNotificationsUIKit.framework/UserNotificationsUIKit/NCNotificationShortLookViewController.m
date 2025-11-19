@interface NCNotificationShortLookViewController
+ (id)_sharedNotificationFeedbackGenerator;
+ (void)_playNegativeInteractionHaptic;
+ (void)_prepareSharedNotificationFeedbackGenerator;
- (BOOL)_isLockedByAppProtection;
- (BOOL)_isPresentingCustomContentProvidingViewController;
- (BOOL)_setNotificationRequest:(id)a3;
- (BOOL)_shouldPerformHoverHighlighting;
- (BOOL)_shouldSupportExpandedPlatterInteraction;
- (BOOL)_shouldUseHapticTouch;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canResignFirstResponder;
- (BOOL)clickPresentationInteractionManager:(id)a3 shouldBeginInteractionWithTouchAtLocation:(CGPoint)a4;
- (BOOL)clickPresentationInteractionManagerShouldAllowLongPressGesture:(id)a3;
- (BOOL)didForwardNotificationRequestToCustomContent:(id)a3;
- (BOOL)dismissPresentedViewControllerAnimated:(BOOL)a3;
- (BOOL)expandedPlatterInteractionManager:(id)a3 shouldBeginInteractionWithTouchAtLocation:(CGPoint)a4;
- (BOOL)expandedPlatterInteractionManagerShouldAllowLongPressGesture:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)hasCommittedToPresentingCustomContentProvidingViewController;
- (BOOL)isContentExtensionVisible:(id)a3;
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
- (id)_initWithNotificationRequest:(id)a3 revealingAdditionalContentOnPresentation:(BOOL)a4;
- (id)_interactionManagerCreatingIfNecessary;
- (id)_longLookNotificationViewController;
- (id)_newClickPresentationInteractionManager;
- (id)_notificationShortLookViewIfLoaded;
- (id)_presentedLongLookViewController;
- (id)_presentedViewController;
- (id)backgroundMaterialView;
- (id)containerViewForExpandedContent;
- (id)currentTraits;
- (id)customBackgroundContainerViewForExpandedPlatterPresentationController:(id)a3;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (id)dragInteraction:(id)a3 previewForCancellingItem:(id)a4 withDefault:(id)a5;
- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5;
- (id)expandedPlatterInteractionManager:(id)a3 menuWithSuggestedActions:(id)a4;
- (id)expandedPlatterInteractionManagerIdentifier:(id)a3;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (id)presentedExpandedPlatterViewController;
- (id)transitioningDelegateForClickPresentationInteractionManager:(id)a3;
- (int64_t)expandedPlatterViewController:(id)a3 dateFormatStyleForNotificationRequest:(id)a4;
- (unint64_t)_maximumNumberOfPrimaryTextLinesForProvidedStaticContent;
- (unint64_t)_maximumNumberOfSecondaryTextLinesForProvidedStaticContent;
- (unint64_t)_maximumNumberOfTextLinesForProvidedStaticContentWithDefaultNumber:(unint64_t)a3 isPrimary:(BOOL)a4 isLarge:(BOOL)a5;
- (unint64_t)importantAdornmentEligibleOptionsForNotificationViewController:(id)a3;
- (void)_askDelegateToExecuteAction:(id)a3 withParameters:(id)a4 animated:(BOOL)a5;
- (void)_checkDelegateShouldTransitionForTrigger:(int64_t)a3 completionBlock:(id)a4;
- (void)_dismissPresentedViewControllerAnimated:(BOOL)a3;
- (void)_expandedPlatterInteractionManager:(id)a3 didDismissWithReason:(id)a4;
- (void)_expandedPlatterInteractionManager:(id)a3 willDismissWithReason:(id)a4;
- (void)_handlePresentedContentDismissalForClickPresentationInteractionManagerWithTrigger:(int64_t)a3;
- (void)_handleTapOnView:(id)a3;
- (void)_intelligenceLightAnimationIfNeeded;
- (void)_loadLookView;
- (void)_notificationViewControllerViewDidLoad;
- (void)_presentLongLookAnimated:(BOOL)a3 trigger:(int64_t)a4 completion:(id)a5;
- (void)_presentLongLookForScrollAnimated:(BOOL)a3 completion:(id)a4;
- (void)_presentLongLookViaClickPresentationInteraction:(id)a3;
- (void)_presentLongLookViaInteractionManager:(id)a3;
- (void)_requestAppProtectionUnlockWithCompletion:(id)a3;
- (void)_updateLookView:(id)a3 withTitleFromProvidedStaticContent:(id)a4;
- (void)_updateScreenCaptureProhibited;
- (void)_updateShortLookShadow;
- (void)_updateThumbnailForRichContentForShortLookView:(id)a3 withContentProvider:(id)a4;
- (void)_updateWithProvidedAuxiliaryOptionsContent;
- (void)_updateWithProvidedStaticContent;
- (void)clickPresentationInteractionManager:(id)a3 shouldFinishInteractionThatReachedForceThreshold:(BOOL)a4 withCompletionBlock:(id)a5;
- (void)clickPresentationInteractionManagerDidEndUserInteraction:(id)a3;
- (void)containerViewForExpandedContent;
- (void)contentProvider:(id)a3 performAction:(id)a4 animated:(BOOL)a5;
- (void)customContent:(id)a3 didUpdateUserNotificationActions:(id)a4;
- (void)dragInteraction:(id)a3 item:(id)a4 willAnimateCancelWithAnimator:(id)a5;
- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5;
- (void)dragInteraction:(id)a3 session:(id)a4 willEndWithOperation:(unint64_t)a5;
- (void)dragInteraction:(id)a3 sessionWillBegin:(id)a4;
- (void)dragInteraction:(id)a3 willAnimateLiftWithAnimator:(id)a4 session:(id)a5;
- (void)expandAndPlayMedia;
- (void)expandedPlatter:(id)a3 didDismissWithReason:(id)a4;
- (void)expandedPlatter:(id)a3 willDismissWithReason:(id)a4;
- (void)expandedPlatterDidPresent:(id)a3;
- (void)expandedPlatterInteractionManager:(id)a3 shouldCommitInteraction:(id)a4;
- (void)expandedPlatterInteractionManager:(id)a3 willDismissContentWithAnimator:(id)a4;
- (void)expandedPlatterInteractionManager:(id)a3 willPresentContentWithAnimator:(id)a4;
- (void)expandedPlatterViewController:(id)a3 requestsDismissalWithReason:(id)a4 userInfo:(id)a5;
- (void)expandedPlatterWillPresent:(id)a3;
- (void)notificationViewControllerDidDismiss:(id)a3;
- (void)notificationViewControllerDidPresent:(id)a3;
- (void)notificationViewControllerWillDismiss:(id)a3;
- (void)notificationViewControllerWillPresent:(id)a3;
- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5;
- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5;
- (void)presentLongLookAnimated:(BOOL)a3 trigger:(int64_t)a4 completion:(id)a5;
- (void)setContentReplacedWithSnapshot:(BOOL)a3;
- (void)setCustomContentHomeAffordanceGestureRecognizer:(id)a3;
- (void)setCustomContentHomeAffordanceVisible:(BOOL)a3;
- (void)setGlassMode:(unint64_t)a3;
- (void)setHasShadow:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setInteractionEnabled:(BOOL)a3;
- (void)setMaterialGroupNameBase:(id)a3;
- (void)setNotificationContentViewHidden:(BOOL)a3;
- (void)setPlatterHighlighted:(BOOL)a3;
- (void)shouldCommitToExpandedPlatterPresentationWithFeedback;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation NCNotificationShortLookViewController

- (id)containerViewForExpandedContent
{
  containerViewForExpandedContent = self->_containerViewForExpandedContent;
  if (!containerViewForExpandedContent)
  {
    v4 = [(NCNotificationViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 notificationViewControllerContainerViewProviderForExpandedContent:self];
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
        v9 = [v5 containerView];
        v10 = self->_containerViewForExpandedContent;
        self->_containerViewForExpandedContent = v9;
      }

      else
      {
        v11 = *MEMORY[0x277D77DB0];
        if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
        {
          [(NCNotificationShortLookViewController *)v4 containerViewForExpandedContent];
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
    v3 = [(NCNotificationShortLookViewController *)self _presentedViewController];
    v4 = [v3 canBecomeFirstResponder];

    return v4;
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

  v4 = [(NCNotificationShortLookViewController *)self _presentedViewController];
  v5 = [v4 presentingViewController];
  v2 = v5 != 0;

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
    v5 = [(PLClickPresentationInteractionManager *)self->_clickPresentationInteractionManager presentedViewController];
    longLookNotificationViewController = v5;
    if (!v5)
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
    v3 = [(NCNotificationShortLookViewController *)self _presentedViewController];
    v4 = [v3 becomeFirstResponder];

    return v4;
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
  v3 = [(NCNotificationShortLookViewController *)self view];
  [v3 bounds];
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
  v3 = [(NCNotificationViewController *)self _lookViewIfLoaded];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
      v5 = [(NCNotificationViewController *)self staticContentProvider];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v7 = [(NCNotificationViewController *)self staticContentProvider];
        [(NCNotificationShortLookViewController *)self _updateThumbnailForRichContentForShortLookView:v4 withContentProvider:v7];
        if (([v7 isIconVisible] & 1) == 0)
        {
          [v4 setBadgedIconDescription:0];
        }
      }
    }
  }

  v8 = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
  if (v8)
  {
    v9 = [(NCNotificationViewController *)self delegate];
    if (v9)
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = [v9 shouldAlignContentToBottomForNotificationViewController:self];
      }

      else
      {
        v10 = 0;
      }

      [v8 setAlignContentToBottom:v10];
      if (objc_opt_respondsToSelector())
      {
        v11 = [v9 isGroupCollapsedForNotificationViewController:self];
LABEL_17:
        [v8 setIsGroupCollapsed:v11];

        goto LABEL_18;
      }
    }

    else
    {
      [v8 setAlignContentToBottom:0];
    }

    v11 = 0;
    goto LABEL_17;
  }

LABEL_18:
}

- (id)_notificationShortLookViewIfLoaded
{
  v2 = [(NCNotificationViewController *)self _lookViewIfLoaded];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
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
  v3 = [(NCNotificationViewController *)&v8 _maximumNumberOfPrimaryTextLinesForProvidedStaticContent];
  v4 = [MEMORY[0x277D75128] sharedApplication];
  v5 = [v4 preferredContentSizeCategory];
  v6 = [(NCNotificationShortLookViewController *)self _maximumNumberOfTextLinesForProvidedStaticContentWithDefaultNumber:v3 isPrimary:1 isLarge:UIContentSizeCategoryIsAccessibilityCategory(v5)];

  return v6;
}

- (unint64_t)_maximumNumberOfSecondaryTextLinesForProvidedStaticContent
{
  v8.receiver = self;
  v8.super_class = NCNotificationShortLookViewController;
  v3 = [(NCNotificationViewController *)&v8 _maximumNumberOfSecondaryTextLinesForProvidedStaticContent];
  v4 = [MEMORY[0x277D75128] sharedApplication];
  v5 = [v4 preferredContentSizeCategory];
  v6 = [(NCNotificationShortLookViewController *)self _maximumNumberOfTextLinesForProvidedStaticContentWithDefaultNumber:v3 isPrimary:0 isLarge:UIContentSizeCategoryIsAccessibilityCategory(v5)];

  return v6;
}

- (void)_updateWithProvidedAuxiliaryOptionsContent
{
  v19.receiver = self;
  v19.super_class = NCNotificationShortLookViewController;
  [(NCNotificationViewController *)&v19 _updateWithProvidedAuxiliaryOptionsContent];
  v3 = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
  if (v3)
  {
    v4 = [(NCNotificationViewController *)self auxiliaryOptionsContentProvider];

    if (v4)
    {
      v5 = [(NCNotificationViewController *)self auxiliaryOptionsContentProvider];
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        v7 = [(NCNotificationViewController *)self auxiliaryOptionsContentProvider];
        v8 = [v7 auxiliaryOptionsVisible];

        if (v8)
        {
          v9 = [(NCNotificationViewController *)self auxiliaryOptionsContentProvider];
          v10 = objc_opt_respondsToSelector();

          if (v10)
          {
            v11 = [(NCNotificationViewController *)self auxiliaryOptionsContentProvider];
            v12 = [v11 auxiliaryOptionsSummaryText];
          }

          else
          {
            v12 = 0;
          }

          [v3 setAuxiliaryOptionsSummaryText:v12];
          [v3 setMaterialRecipe:{-[NCNotificationViewController materialRecipe](self, "materialRecipe")}];
          v14 = [(NCNotificationViewController *)self materialGroupNameBase];
          [v3 setMaterialGroupNameBase:v14];

          v15 = [(NCNotificationViewController *)self auxiliaryOptionsContentProvider];
          v16 = objc_opt_respondsToSelector();

          if (v16)
          {
            v17 = [(NCNotificationViewController *)self auxiliaryOptionsContentProvider];
            v18 = [v17 auxiliaryOptionActions];
          }

          else
          {
            v18 = 0;
          }

          [v3 setAuxiliaryOptionActions:v18];

          v13 = 1;
          goto LABEL_9;
        }
      }
    }

    else
    {
      [v3 removeAuxiliaryOptionsView];
    }

    v13 = 0;
LABEL_9:
    [v3 setAuxiliaryOptionsVisible:v13];
    [(NCNotificationViewController *)self _updatePreferredContentSize];
  }
}

- (id)currentTraits
{
  v2 = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 currentTraits];
  }

  else
  {
    v4 = objc_alloc_init(NCNotificationListCellDynamicHeightTraits);
  }

  v5 = v4;

  return v5;
}

- (BOOL)isHighlighted
{
  v2 = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
  v3 = [v2 backgroundMaterialView];
  v4 = [v3 isHighlighted];

  return v4;
}

- (id)_initWithNotificationRequest:(id)a3 revealingAdditionalContentOnPresentation:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = NCNotificationShortLookViewController;
  v4 = [(NCNotificationViewController *)&v7 _initWithNotificationRequest:a3 revealingAdditionalContentOnPresentation:a4];
  v5 = v4;
  if (v4)
  {
    [v4 _setupCustomContentProvider];
  }

  return v5;
}

- (void)setMaterialGroupNameBase:(id)a3
{
  v6.receiver = self;
  v6.super_class = NCNotificationShortLookViewController;
  [(NCNotificationViewController *)&v6 setMaterialGroupNameBase:a3];
  v4 = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
  v5 = [(NCNotificationViewController *)self materialGroupNameBase];
  [v4 setMaterialGroupNameBase:v5];
}

- (BOOL)isNotPresentingOrHasCommittedToDismissingCustomContentProvidingViewController
{
  if (![(NCNotificationShortLookViewController *)self hasCommittedToPresentingCustomContentProvidingViewController])
  {
    return 1;
  }

  v3 = [(NCNotificationShortLookViewController *)self _presentedViewController];
  v4 = [v3 isBeingDismissed];

  return v4;
}

- (BOOL)didForwardNotificationRequestToCustomContent:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationViewController *)self _customContentProvidingViewController];

  if (v5)
  {
    v11.receiver = self;
    v11.super_class = NCNotificationShortLookViewController;
    v6 = [(NCNotificationViewController *)&v11 didForwardNotificationRequestToCustomContent:v4];
  }

  else
  {
    expandedPlatterViewController = self->_expandedPlatterViewController;
    if (expandedPlatterViewController)
    {
      v9 = [(NCExpandedPlatterViewController *)expandedPlatterViewController customContentViewController];
      v7 = [v9 didReceiveNotificationRequest:v4];

      goto LABEL_6;
    }

    v6 = [(NCNotificationViewController *)self->_longLookNotificationViewController didForwardNotificationRequestToCustomContent:v4];
  }

  v7 = v6;
LABEL_6:

  return v7;
}

- (BOOL)dismissPresentedViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(NCNotificationShortLookViewController *)self _isPresentingCustomContentProvidingViewController];
  if (v5)
  {
    [(NCNotificationViewController *)self _executeNilAction:v3];
  }

  return v5;
}

- (BOOL)isContentExtensionVisible:(id)a3
{
  v4 = a3;
  v5 = [(NCExpandedPlatterViewController *)self->_expandedPlatterViewController customContentViewController];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(NCNotificationViewController *)self->_longLookNotificationViewController _customContentProvidingViewController];
  }

  v8 = v7;

  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 contentExtensionIdentifier];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 isEqualToString:v4];

  return v10;
}

- (void)setCustomContentHomeAffordanceVisible:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = NCNotificationShortLookViewController;
  [(NCNotificationViewController *)&v4 setCustomContentHomeAffordanceVisible:a3];
  [(NCNotificationLongLookViewController *)self->_longLookNotificationViewController setCustomContentHomeAffordanceVisible:[(NCNotificationViewController *)self isCustomContentHomeAffordanceVisible]];
}

- (void)setCustomContentHomeAffordanceGestureRecognizer:(id)a3
{
  v5.receiver = self;
  v5.super_class = NCNotificationShortLookViewController;
  v4 = a3;
  [(NCNotificationViewController *)&v5 setCustomContentHomeAffordanceGestureRecognizer:v4];
  [(NCNotificationLongLookViewController *)self->_longLookNotificationViewController setCustomContentHomeAffordanceGestureRecognizer:v4, v5.receiver, v5.super_class];
}

- (void)setNotificationContentViewHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
  if (v4)
  {
    v5 = v4;
    [v4 setNotificationContentViewHidden:v3];
    v4 = v5;
  }
}

- (BOOL)isNotificationContentViewHidden
{
  v2 = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isNotificationContentViewHidden];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasShadow:(BOOL)a3
{
  v3 = a3;
  v5 = [(NCNotificationViewController *)self hasShadow];
  v6.receiver = self;
  v6.super_class = NCNotificationShortLookViewController;
  [(NCNotificationViewController *)&v6 setHasShadow:v3];
  if (v5 != [(NCNotificationViewController *)self hasShadow])
  {
    [(NCNotificationShortLookViewController *)self _updateShortLookShadow];
  }
}

- (void)setGlassMode:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = NCNotificationShortLookViewController;
  if ([(NCNotificationViewController *)&v6 glassMode]!= a3)
  {
    v5.receiver = self;
    v5.super_class = NCNotificationShortLookViewController;
    [(NCNotificationViewController *)&v5 setGlassMode:a3];
    [(NCNotificationShortLookViewController *)self _updateShortLookShadow];
  }
}

- (void)setContentReplacedWithSnapshot:(BOOL)a3
{
  v3 = a3;
  v5 = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 backgroundMaterialView];
    v8 = v7;
    if (v7)
    {
      [v7 setContentReplacedWithSnapshot:v3];
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
    v3 = [(NCNotificationShortLookViewController *)self _presentedViewController];
    v4 = [v3 canResignFirstResponder];

    return v4;
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
    v3 = [(NCNotificationShortLookViewController *)self _presentedViewController];
    v4 = [v3 resignFirstResponder];

    return v4;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = NCNotificationShortLookViewController;
    return [(NCNotificationShortLookViewController *)&v6 resignFirstResponder];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = NCNotificationShortLookViewController;
  [(NCNotificationViewController *)&v4 viewDidAppear:a3];
  [(NCNotificationShortLookViewController *)self _intelligenceLightAnimationIfNeeded];
  if ([(NCNotificationViewController *)self _canPan])
  {
    [objc_opt_class() _prepareSharedNotificationFeedbackGenerator];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = NCNotificationShortLookViewController;
  [(NCNotificationViewController *)&v5 viewDidDisappear:a3];
  v4 = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
  [v4 updateLightEffectToFillLightEnabled:0 edgeLightEnabled:0 duration:0.0 delay:0.0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = NCNotificationShortLookViewController;
  [(NCNotificationViewController *)&v5 viewWillDisappear:?];
  if ([(NCNotificationShortLookViewController *)self _isPresentingCustomContentProvidingViewController])
  {
    [(NCNotificationShortLookViewController *)self dismissPresentedViewControllerAnimated:v3];
  }
}

- (BOOL)shouldCommitToExpandedPlatterPresentationWithFeedback
{
  v3 = [(NCNotificationShortLookViewController *)self containerViewForExpandedContent];

  if (!v3)
  {
    v4 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
    {
      [(NCNotificationShortLookViewController *)v4 shouldCommitToExpandedPlatterPresentationWithFeedback];
    }
  }

  return v3 != 0;
}

- (void)presentLongLookAnimated:(BOOL)a3 trigger:(int64_t)a4 completion:(id)a5
{
  v6 = a3;
  v27 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [(NCNotificationViewController *)self notificationRequest];
    v12 = [v11 notificationIdentifier];
    v13 = [v12 un_logDigest];
    v14 = NCStringFromLongLookPresentationTrigger(a4);
    *buf = 138543618;
    v24 = v13;
    v25 = 2114;
    v26 = v14;
    _os_log_impl(&dword_21E77E000, v10, OS_LOG_TYPE_DEFAULT, "Asked to present long look for request %{public}@ for trigger %{public}@", buf, 0x16u);
  }

  self->_trigger = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__NCNotificationShortLookViewController_presentLongLookAnimated_trigger_completion___block_invoke;
  aBlock[3] = &unk_2783731F8;
  v15 = v8;
  aBlock[4] = self;
  v22 = v15;
  v16 = _Block_copy(aBlock);
  if ([(NCNotificationShortLookViewController *)self _isLockedByAppProtection])
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __84__NCNotificationShortLookViewController_presentLongLookAnimated_trigger_completion___block_invoke_2;
    v17[3] = &unk_278373220;
    v20 = v6;
    v17[4] = self;
    v19 = a4;
    v18 = v16;
    [(NCNotificationShortLookViewController *)self _requestAppProtectionUnlockWithCompletion:v17];
  }

  else
  {
    [(NCNotificationShortLookViewController *)self _presentLongLookAnimated:v6 trigger:a4 completion:v16];
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

- (void)_presentLongLookAnimated:(BOOL)a3 trigger:(int64_t)a4 completion:(id)a5
{
  if (a4 == 6)
  {
    [(NCNotificationShortLookViewController *)self _presentLongLookForScrollAnimated:a3 completion:a5];
  }

  else
  {
    [(NCNotificationShortLookViewController *)self _presentLongLookViaInteractionManager:a5];
  }
}

- (void)_requestAppProtectionUnlockWithCompletion:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NCNotificationViewController *)self notificationRequest];
  v6 = [v5 notificationIdentifier];
  v7 = [v5 sectionIdentifier];
  v8 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:v7];
  v9 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v6 un_logDigest];
    *buf = 138412546;
    v20 = v11;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_21E77E000, v10, OS_LOG_TYPE_DEFAULT, "Requesting AppProtection authentication for %@ in %@", buf, 0x16u);
  }

  [(NCNotificationShortLookViewController *)self setNotificationContentViewHidden:1];
  objc_initWeak(buf, self);
  v12 = [MEMORY[0x277CEBE98] sharedGuard];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83__NCNotificationShortLookViewController__requestAppProtectionUnlockWithCompletion___block_invoke;
  v15[3] = &unk_278373248;
  v13 = v6;
  v16 = v13;
  objc_copyWeak(&v18, buf);
  v14 = v4;
  v17 = v14;
  [v12 authenticateForSubject:v8 completion:v15];

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

- (void)setInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    if (v3)
    {
      v6 = @"ENABLED";
    }

    else
    {
      v6 = @"DISABLED";
    }

    v7 = v5;
    v8 = [(NCNotificationViewController *)self notificationRequest];
    v9 = [v8 notificationIdentifier];
    v10 = [v9 un_logDigest];
    *buf = 138412546;
    v13 = v6;
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "Setting tap interaction %@ for notification cell for request %{public}@", buf, 0x16u);
  }

  v11.receiver = self;
  v11.super_class = NCNotificationShortLookViewController;
  [(NCNotificationViewController *)&v11 setInteractionEnabled:v3];
  [(UITapGestureRecognizer *)self->_tapGesture setEnabled:v3];
}

- (void)setPlatterHighlighted:(BOOL)a3
{
  v3 = a3;
  v4 = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
  [v4 setHighlighted:v3];
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

- (BOOL)_setNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationViewController *)self notificationRequest];
  v6 = [v4 matchesRequest:v5];

  v14.receiver = self;
  v14.super_class = NCNotificationShortLookViewController;
  v7 = [(NCNotificationViewController *)&v14 _setNotificationRequest:v4];

  if (v7)
  {
    if (v6)
    {
      longLookNotificationViewController = self->_longLookNotificationViewController;
      v9 = [(NCNotificationViewController *)self notificationRequest];
      [(NCNotificationLongLookViewController *)longLookNotificationViewController setNotificationRequest:v9];

      expandedPlatterViewController = self->_expandedPlatterViewController;
      v11 = [(NCNotificationViewController *)self notificationRequest];
      [(NCExpandedPlatterViewController *)expandedPlatterViewController setNotificationRequest:v11];
    }

    else
    {
      [(NCNotificationViewController *)self _setCustomContentProvidingViewController:0];
      v12 = self->_longLookNotificationViewController;
      self->_longLookNotificationViewController = 0;

      v11 = self->_expandedPlatterViewController;
      self->_expandedPlatterViewController = 0;
    }

    [(NCNotificationShortLookViewController *)self _updateScreenCaptureProhibited];
  }

  return v7;
}

- (id)_newClickPresentationInteractionManager
{
  v3 = [(NCNotificationViewController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v3 notificationViewControllerShouldSupportClickPresentationInteraction:self])
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
    v3 = [(NCNotificationViewController *)self delegate];
    v4 = off_27836E0F8;
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v3 isRichNotificationContentViewForNotificationViewController:self])
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
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v3 notificationViewControllerShouldAllowDragInteraction:self])
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
  v3 = [(NCNotificationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 notificationViewControllerShouldSupportExpandedPlatterInteraction:self];
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
    v3 = [(NCNotificationShortLookViewController *)self _interactionManagerCreatingIfNecessary];
  }

  v4 = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
  [(NCNotificationShortLookViewController *)self setHasShadow:[(NCNotificationViewController *)self _canPan]];
  [(NCNotificationShortLookViewController *)self _updateShortLookShadow];
  v5 = [(NCNotificationViewController *)self materialGroupNameBase];
  [v4 setMaterialGroupNameBase:v5];

  [v4 setMaterialRecipe:{-[NCNotificationViewController materialRecipe](self, "materialRecipe")}];
  [(UIView *)self->_lookViewWrapper addSubview:v4];
  v6 = [(NCNotificationShortLookViewController *)self view];
  [v6 addSubview:self->_lookViewWrapper];

  v7 = [(NCNotificationViewController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v7 notificationViewControllerShouldInterpretTapAsDefaultAction:self])
  {
    v8 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleTapOnView_];
    tapGesture = self->_tapGesture;
    self->_tapGesture = v8;

    [(UITapGestureRecognizer *)self->_tapGesture setDelegate:self];
    [v4 addGestureRecognizer:self->_tapGesture];
    [(UITapGestureRecognizer *)self->_tapGesture setEnabled:[(NCNotificationViewController *)self isInteractionEnabled]];
    v10 = [(PLClickPresentationInteractionManager *)self->_clickPresentationInteractionManager gestureRecognizerForExclusionRelationship];
    if (v10)
    {
      [(UITapGestureRecognizer *)self->_tapGesture requireGestureRecognizerToFail:v10];
    }
  }

  v11 = [MEMORY[0x277D75418] currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if (v12 == 1)
  {
    v13 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:self];
    pointerInteraction = self->_pointerInteraction;
    self->_pointerInteraction = v13;

    [v4 addInteraction:self->_pointerInteraction];
    v15 = [v4 backgroundMaterialView];
    [v15 _cornerRadius];
    [v4 _setCornerRadius:?];
  }
}

- (void)_updateLookView:(id)a3 withTitleFromProvidedStaticContent:(id)a4
{
  v5 = a4;
  v6 = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
  [v6 setTitle:v5];
}

- (void)_handleTapOnView:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 state] != 3)
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
    v6 = [(NCNotificationViewController *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([v6 handleTapOnNotificationViewController:self] & 1) == 0)
    {
      v7 = +[NCNotificationEventTracker sharedInstance];
      v8 = [(NCNotificationViewController *)self notificationRequest];
      v9 = [(NCNotificationViewController *)self notificationUsageTrackingState];
      [v7 shortLookDefaultActionInvokedWithTrigger:0 forNotificationRequest:v8 withState:v9];

      v10 = [(NCNotificationViewController *)self staticContentProvider];
      v11 = [v10 defaultAction];

      if (v11)
      {
        v12 = *MEMORY[0x277D77DD0];
        if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
          v14 = [(NCNotificationViewController *)self notificationRequest];
          v15 = [v14 notificationIdentifier];
          v16 = [v15 un_logDigest];
          v26 = 138543362;
          v27 = v16;
          _os_log_impl(&dword_21E77E000, v13, OS_LOG_TYPE_DEFAULT, "Notification cell tap performing default action for request %{public}@", &v26, 0xCu);
        }

        [(NCNotificationViewController *)self _executeDefaultAction:1];
      }

      else
      {
        v18 = [(NCNotificationViewController *)self notificationRequest];
        v19 = [v18 options];
        v20 = [v19 revealsAdditionalContentIfNoDefaultAction];

        if (v20)
        {
          v21 = *MEMORY[0x277D77DD0];
          if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
          {
            v22 = v21;
            v23 = [(NCNotificationViewController *)self notificationRequest];
            v24 = [v23 notificationIdentifier];
            v25 = [v24 un_logDigest];
            v26 = 138543362;
            v27 = v25;
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
      [(NCNotificationShortLookViewController *)v17 _handleTapOnView:v4];
    }
  }
}

- (unint64_t)_maximumNumberOfTextLinesForProvidedStaticContentWithDefaultNumber:(unint64_t)a3 isPrimary:(BOOL)a4 isLarge:(BOOL)a5
{
  v5 = a5;
  v9 = [(NCNotificationViewController *)self delegate];
  v10 = [(NCNotificationViewController *)self staticContentProvider];
  v11 = [v10 isNumberOfLinesInfinite];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3;
  }

  if ((v11 & 1) == 0 && !a4)
  {
    if (objc_opt_respondsToSelector())
    {
      v13 = [v9 showAdditionalMessageLinesForNotificationViewController:self];
      v14 = 4;
      if (v5)
      {
        v14 = 6;
      }

      if (v13)
      {
        v12 = v14;
      }

      else
      {
        v12 = a3;
      }
    }

    else
    {
      v12 = a3;
    }
  }

  return v12;
}

- (void)_updateThumbnailForRichContentForShortLookView:(id)a3 withContentProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NCNotificationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 isRichNotificationContentViewForNotificationViewController:self];
  }

  else
  {
    v9 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = [v8 isAttachmentImageFeaturedForNotificationViewController:self];
  }

  else
  {
    v10 = 0;
  }

  [v6 setAttachmentImageFeatured:v10];
  if (([v7 hasAttachmentImage] & v9) == 1)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __108__NCNotificationShortLookViewController__updateThumbnailForRichContentForShortLookView_withContentProvider___block_invoke;
    v11[3] = &unk_278370A40;
    v12 = v6;
    [v7 fetchRichAttachmentImageIsFeatured:v10 withCompletion:v11];
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
  v3 = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
  if (v3)
  {
    v5 = v3;
    if ([(NCNotificationViewController *)self hasShadow])
    {
      v4 = [(NCNotificationViewController *)self backgroundGlassState]== 0;
    }

    else
    {
      v4 = 0;
    }

    [v5 setHasShadow:v4];
    v3 = v5;
  }
}

- (void)_updateScreenCaptureProhibited
{
  lookView = self->super._lookView;
  v4 = [(NCNotificationViewController *)self notificationRequest];
  v3 = [v4 options];
  -[NCNotificationLookView setScreenCaptureProhibited:](lookView, "setScreenCaptureProhibited:", [v3 screenCaptureProhibited]);
}

- (BOOL)_shouldPerformHoverHighlighting
{
  v3 = [(NCNotificationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 notificationViewControllerShouldPerformHoverHighlighting:self];
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
    v5 = [(NCNotificationViewController *)self notificationRequest];
    v6 = [(NCNotificationViewController *)self customContentProvider];
    v7 = [(NCNotificationViewController *)self notificationRequest];
    v8 = [v6 customContentViewControllerForNotificationRequest:v7];
    v9 = [(NCExpandedPlatterViewController *)v4 initWithNotificationRequest:v5 customContentViewController:v8];
    v10 = self->_expandedPlatterViewController;
    self->_expandedPlatterViewController = v9;

    [(NCExpandedPlatterViewController *)self->_expandedPlatterViewController setDelegate:self];
    [(NCExpandedPlatterViewController *)self->_expandedPlatterViewController addExpandedPlatterObserver:self];
    expandedPlatterViewController = self->_expandedPlatterViewController;
  }

  return expandedPlatterViewController;
}

- (void)_dismissPresentedViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  expandedPlatterViewController = self->_expandedPlatterViewController;
  if (!expandedPlatterViewController)
  {
    expandedPlatterViewController = self->_longLookNotificationViewController;
  }

  v9 = expandedPlatterViewController;
  v6 = [(NCExpandedPlatterViewController *)v9 presentingViewController];
  if (v6)
  {
    v7 = v6;
    v8 = [(NCExpandedPlatterViewController *)v9 isBeingDismissed];

    if ((v8 & 1) == 0)
    {
      if (v9 == self->_expandedPlatterViewController)
      {
        [(PLExpandedPlatterInteractionManager *)self->_interactionManager dismiss];
      }

      else if (([(PLClickPresentationInteractionManager *)self->_clickPresentationInteractionManager dismissIfPossible:0]& 1) == 0)
      {
        [(NCNotificationLongLookViewController *)self->_longLookNotificationViewController dismissViewControllerAnimated:v3 completion:0];
      }
    }
  }
}

- (void)_askDelegateToExecuteAction:(id)a3 withParameters:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (!self->_expandedPlatterDismissalReason)
  {
    v10 = [v8 identifier];
    if ([v10 length])
    {
      objc_storeStrong(&self->_expandedPlatterDismissalReason, v10);
    }
  }

  v11.receiver = self;
  v11.super_class = NCNotificationShortLookViewController;
  [(NCNotificationViewController *)&v11 _askDelegateToExecuteAction:v8 withParameters:v9 animated:v5];
}

- (void)_intelligenceLightAnimationIfNeeded
{
  v13 = [(NCNotificationViewController *)self delegate];
  if (v13 && (objc_opt_respondsToSelector() & 1) != 0 && [v13 importantAdornmentEligibleOptionsForNotificationViewController:self])
  {
    v3 = [v13 importantAdornmentEligibleOptionsForNotificationViewController:self];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NCNotificationViewController *)self notificationRequest];
  v5 = [v4 alertOptions];
  v6 = [v5 intelligentBehavior];

  LODWORD(v5) = [v4 isHighlight];
  v7 = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
  v8 = v7;
  v9 = v5 ^ 1;
  if ((v3 & 4) == 0)
  {
    v9 = 1;
  }

  v10 = (v3 & 2) != 0 && v6 == 2;
  if (v10 || !v9)
  {
    [v7 updateLightEffectToFillLightEnabled:1 edgeLightEnabled:1 duration:0.65 delay:0.0];
    v12 = 1.5;
    v7 = v8;
    v11 = 0.65;
  }

  else
  {
    v11 = 0.0;
    v12 = 0.0;
  }

  [v7 updateLightEffectToFillLightEnabled:0 edgeLightEnabled:0 duration:v11 delay:v12];
}

- (void)contentProvider:(id)a3 performAction:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(NCExpandedPlatterViewController *)self->_expandedPlatterViewController customContentViewController];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [(NCNotificationViewController *)self->_longLookNotificationViewController _customContentProvidingViewController];
  }

  v13 = v12;

  if (v9 && (-[NCNotificationViewController notificationRequest](self, "notificationRequest"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v13 performAction:v9 forNotification:v14], v14, (v15 & 1) != 0))
  {
    v16 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = self;
      _os_log_impl(&dword_21E77E000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Notification action handled by customContentProvider", buf, 0xCu);
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = NCNotificationShortLookViewController;
    [(NCNotificationViewController *)&v17 contentProvider:v8 performAction:v9 animated:v5];
  }
}

- (void)_expandedPlatterInteractionManager:(id)a3 willDismissWithReason:(id)a4
{
  if (a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = @"NCExpandedPlatterObservableDismissalReasonUnknown";
  }

  expandedPlatterViewController = self->_expandedPlatterViewController;
  v6 = a4;
  [(NCExpandedPlatterViewController *)expandedPlatterViewController expandedPlatter:expandedPlatterViewController willDismissWithReason:v4];
}

- (void)_expandedPlatterInteractionManager:(id)a3 didDismissWithReason:(id)a4
{
  v5 = a4;
  v8 = v5;
  if (v5)
  {
    v6 = v5;
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
  v2 = [(NCNotificationViewController *)self notificationRequest];
  v3 = [v2 sectionIdentifier];

  v4 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:v3];
  v5 = [v4 isLocked];

  return v5;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v4 = [a4 view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v6 = a5;
  if ([(NCNotificationShortLookViewController *)self _shouldPerformHoverHighlighting])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded:a3];
  v6 = [(__CFString *)v5 window];

  if (v6)
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

- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5
{
  v6 = [(NCNotificationViewController *)self delegate:a3];
  if (objc_opt_respondsToSelector())
  {
    [v6 notificationViewController:self isPerformingHoverHighlighting:1];
  }
}

- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5
{
  v6 = [(NCNotificationViewController *)self delegate:a3];
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
  v2 = [a1 _sharedNotificationFeedbackGenerator];
  [v2 prepare];
}

+ (void)_playNegativeInteractionHaptic
{
  v2 = [a1 _sharedNotificationFeedbackGenerator];
  [v2 notificationOccurred:2];
}

- (void)_presentLongLookViaClickPresentationInteraction:(id)a3
{
  v4 = a3;
  clickPresentationInteractionManager = self->_clickPresentationInteractionManager;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __89__NCNotificationShortLookViewController__presentLongLookViaClickPresentationInteraction___block_invoke;
  v7[3] = &unk_27836F910;
  v8 = v4;
  v6 = v4;
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

- (void)_presentLongLookViaInteractionManager:(id)a3
{
  v4 = a3;
  v6 = [(NCNotificationShortLookViewController *)self _interactionManagerCreatingIfNecessary];
  v5 = [(NCNotificationViewController *)self _lookView];
  [v5 bounds];
  UIRectGetCenter();
  [v6 presentAtLocation:v4 completion:?];
}

- (void)_presentLongLookForScrollAnimated:(BOOL)a3 completion:(id)a4
{
  v5 = a4;
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
  v7 = v5;
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

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CCAA88]);
  [v5 registerDataRepresentationForTypeIdentifier:@"com.apple.usernotifications.drag.response" visibility:3 loadHandler:&__block_literal_global_164_0];
  v6 = [objc_alloc(MEMORY[0x277D75470]) initWithItemProvider:v5];
  v7 = [(NCNotificationViewController *)self notificationRequest];
  v8 = [v7 userNotification];

  v9 = [(NCNotificationViewController *)self notificationRequest];
  v10 = [v9 sectionIdentifier];

  v11 = [v8 request];
  v12 = [v11 content];
  v13 = [v12 defaultActionURL];

  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x277D66998]) initWithUniqueIdentifier:v10 withLaunchActions:0 startLocation:9];
    [v14 setLaunchURL:v13];
    [v6 setLocalObject:v14];
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x277D757C0]);
    v16 = [MEMORY[0x277CE1FC8] responseWithNotification:v8 actionIdentifier:*MEMORY[0x277CE20E8]];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __82__NCNotificationShortLookViewController_dragInteraction_itemsForBeginningSession___block_invoke_2;
    v22[3] = &unk_2783732B8;
    v22[4] = self;
    v14 = [v15 initWithResponse:v16 withHandler:v22];

    v17 = objc_alloc(MEMORY[0x277D66998]);
    v18 = [MEMORY[0x277CBEB98] setWithObject:v14];
    v19 = [v17 initWithUniqueIdentifier:v10 withLaunchActions:v18 startLocation:9];

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

- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5
{
  v5 = [objc_alloc(MEMORY[0x277D75B88]) initWithView:self->_lookViewWrapper];
  [v5 set_springboardPlatterStyle:1];

  return v5;
}

- (id)dragInteraction:(id)a3 previewForCancellingItem:(id)a4 withDefault:(id)a5
{
  v6 = a5;
  v7 = self->_lookViewWrapper;
  v8 = [(UIView *)v7 superview];
  v9 = v6;
  v10 = v9;
  if (v7)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v9;
  if (!v11)
  {
    v13 = [v8 window];

    v12 = v10;
    if (v13)
    {
      v14 = objc_alloc(MEMORY[0x277D75488]);
      [(UIView *)v7 center];
      v15 = *(MEMORY[0x277CBF2C0] + 16);
      v18[0] = *MEMORY[0x277CBF2C0];
      v18[1] = v15;
      v18[2] = *(MEMORY[0x277CBF2C0] + 32);
      v16 = [v14 initWithContainer:v8 center:v18 transform:?];
      v12 = [v10 retargetedPreviewWithTarget:v16];

      [v12 set_springboardPlatterStyle:1];
    }
  }

  return v12;
}

- (void)dragInteraction:(id)a3 willAnimateLiftWithAnimator:(id)a4 session:(id)a5
{
  v7 = self->super._lookView;
  v8 = a4;
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
  [v8 addAnimations:v20];
  v16 = self->_lookViewWrapper;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __93__NCNotificationShortLookViewController_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke_2;
  v18[3] = &unk_2783732E0;
  v19 = v16;
  v17 = v16;
  [v8 addCompletion:v18];
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

- (void)dragInteraction:(id)a3 item:(id)a4 willAnimateCancelWithAnimator:(id)a5
{
  v6 = self->super._lookView;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __92__NCNotificationShortLookViewController_dragInteraction_item_willAnimateCancelWithAnimator___block_invoke;
  v8[3] = &unk_27836F6A8;
  v9 = v6;
  v7 = v6;
  [a5 addAnimations:v8];
}

uint64_t __92__NCNotificationShortLookViewController_dragInteraction_item_willAnimateCancelWithAnimator___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  CGAffineTransformMakeScale(&v3, 1.0, 1.0);
  return [v1 setTransform:&v3];
}

- (void)dragInteraction:(id)a3 sessionWillBegin:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(NCNotificationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 notificationViewController:self dragInteraction:v8 sessionWillBegin:v6];
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

- (void)dragInteraction:(id)a3 session:(id)a4 willEndWithOperation:(unint64_t)a5
{
  v10 = a3;
  v8 = a4;
  v9 = [(NCNotificationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v9 notificationViewController:self dragInteraction:v10 session:v8 willEndWithOperation:a5];
  }

  if (a5 <= 1)
  {
    [(UIView *)self->_lookViewWrapper setAlpha:1.0];
  }
}

- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5
{
  v10 = a3;
  v8 = a4;
  v9 = [(NCNotificationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v9 notificationViewController:self dragInteraction:v10 session:v8 didEndWithOperation:a5];
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

- (id)expandedPlatterInteractionManagerIdentifier:(id)a3
{
  v4 = [(NCNotificationViewController *)self notificationRequest];
  v5 = [v4 sectionIdentifier];
  v6 = [(NCNotificationViewController *)self notificationRequest];
  v7 = [v6 notificationIdentifier];
  v8 = [v7 un_logDigest];
  v9 = [v5 stringByAppendingPathExtension:v8];

  return v9;
}

- (id)expandedPlatterInteractionManager:(id)a3 menuWithSuggestedActions:(id)a4
{
  v4 = MEMORY[0x277D75710];
  v5 = [(NCNotificationViewController *)self staticContentProvider:a3];
  v6 = [v5 menuActions];
  v7 = [v4 menuWithChildren:v6];

  return v7;
}

- (BOOL)expandedPlatterInteractionManager:(id)a3 shouldBeginInteractionWithTouchAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v34 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [(NCNotificationViewController *)self staticContentProvider];
  v9 = [v8 isThreadSummary];

  if (v9)
  {
LABEL_33:
    v22 = 0;
    goto LABEL_34;
  }

  v10 = [(NCNotificationViewController *)self isInteractionEnabled];
  if ([(NCNotificationShortLookViewController *)self isViewLoaded])
  {
    v11 = [(NCNotificationShortLookViewController *)self viewForPreview];
    v12 = [v11 window];
    v13 = v12 != 0;
  }

  else
  {
    v13 = 0;
  }

  if (([(NCNotificationShortLookViewController *)self isBeingPresented]& 1) != 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = [(NCNotificationShortLookViewController *)self isBeingDismissed];
  }

  if (!v10 || !v13)
  {
    if (v10)
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
      v27 = [(NCNotificationViewController *)self notificationRequest];
      v28 = [v27 notificationIdentifier];
      v29 = [v28 un_logDigest];
      *buf = 138543618;
      *&buf[4] = v29;
      *&buf[12] = 2114;
      *&buf[14] = v24;
      _os_log_impl(&dword_21E77E000, v26, OS_LOG_TYPE_DEFAULT, "Denying interaction for view controller for request %{public}@: %{public}@", buf, 0x16u);
    }

    goto LABEL_33;
  }

  v15 = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
  v16 = [v15 auxiliaryOptionsVisible];

  if (v16)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v33 = 0;
    v17 = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
    v18 = [v17 auxiliaryOptionButtons];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __117__NCNotificationShortLookViewController_expandedPlatterInteractionManager_shouldBeginInteractionWithTouchAtLocation___block_invoke;
    v31[3] = &unk_278373308;
    v31[4] = self;
    v31[5] = buf;
    *&v31[6] = x;
    *&v31[7] = y;
    [v18 enumerateObjectsUsingBlock:v31];

    LOBYTE(v17) = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    if (v17)
    {
      goto LABEL_29;
    }
  }

  if (self->_trigger == 3)
  {
    goto LABEL_15;
  }

  v19 = [(NCNotificationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v20 = [v19 notificationViewControllerShouldAllowExpandedPlatterInteraction:self];
LABEL_24:
    v23 = v20;
    goto LABEL_26;
  }

  if (objc_opt_respondsToSelector())
  {
    v20 = [v19 notificationViewControllerShouldAllowClickPresentationInteraction:self];
    goto LABEL_24;
  }

  v23 = 1;
LABEL_26:
  if (!((self->_trigger != 0 || (v23 & 1) == 0) | v14 & 1))
  {
    self->_trigger = 1;
  }

  if ((v23 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_15:
  if (v14 & 1 | !v13)
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

- (void)expandedPlatterInteractionManager:(id)a3 shouldCommitInteraction:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __99__NCNotificationShortLookViewController_expandedPlatterInteractionManager_shouldCommitInteraction___block_invoke;
  aBlock[3] = &unk_2783706E8;
  objc_copyWeak(&v23, &location);
  v8 = v7;
  v22 = v8;
  v9 = _Block_copy(aBlock);
  v10 = [(NCNotificationViewController *)self delegate];
  v11 = [(NCNotificationViewController *)self staticContentProvider];
  v12 = [v11 isThreadSummary];

  if (v12)
  {
    [v10 handleTapOnNotificationViewController:self];
LABEL_14:
    v9[2](v9, 0);
    goto LABEL_15;
  }

  if (![(NCNotificationShortLookViewController *)self shouldCommitToExpandedPlatterPresentationWithFeedback])
  {
    goto LABEL_14;
  }

  v13 = [v6 reachedForceThreshold];
  trigger = self->_trigger;
  if (trigger == 1)
  {
    v15 = v13;
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

  v16 = [(NCNotificationShortLookViewController *)self _isLockedByAppProtection];
  if (trigger == 1 && v16)
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

- (void)_checkDelegateShouldTransitionForTrigger:(int64_t)a3 completionBlock:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(NCNotificationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 notificationRequestPresenter:self shouldTransitionToStage:@"notificationViewController.presentingStage.longLook" forTrigger:a3 completionBlock:v6];
  }

  else
  {
    v8 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [(NCNotificationViewController *)self notificationRequest];
      v11 = [v10 notificationIdentifier];
      v12 = [v11 un_logDigest];
      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "Delegate for notification view controller for request %{public}@ doesn't respond to selector – denying presentation", &v13, 0xCu);
    }

    v6[2](v6, 0);
    [objc_opt_class() _playNegativeInteractionHaptic];
  }
}

- (void)expandedPlatterInteractionManager:(id)a3 willPresentContentWithAnimator:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_storeStrong(&self->_activeExpandedPlatterInteractionAnimator, a4);
  v8 = self->_expandedPlatterViewController;
  [(NCExpandedPlatterViewController *)v8 expandedPlatterWillPresent:v8];
  v9 = [(NCNotificationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = [(NCNotificationViewController *)self notificationRequest];
    [v9 notificationViewController:self willPresentLongLookForRequst:v10 animator:v7];
  }

  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __106__NCNotificationShortLookViewController_expandedPlatterInteractionManager_willPresentContentWithAnimator___block_invoke;
  v13[3] = &unk_278370C40;
  objc_copyWeak(&v16, &location);
  v11 = v8;
  v14 = v11;
  v12 = v7;
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

- (BOOL)expandedPlatterInteractionManagerShouldAllowLongPressGesture:(id)a3
{
  v4 = [(NCNotificationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 notificationViewControllerShouldAllowLongPressGesture:self];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)expandedPlatterInteractionManager:(id)a3 willDismissContentWithAnimator:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_storeStrong(&self->_activeExpandedPlatterInteractionAnimator, a4);
  expandedPlatterDismissalReason = self->_expandedPlatterDismissalReason;
  if (!expandedPlatterDismissalReason)
  {
    expandedPlatterDismissalReason = @"NCExpandedPlatterObservableDismissalReasonUnknown";
  }

  v9 = expandedPlatterDismissalReason;
  [(NCNotificationShortLookViewController *)self _expandedPlatterInteractionManager:v6 willDismissWithReason:v9];
  v10 = [(NCNotificationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v11 = [(NCNotificationViewController *)self notificationRequest];
    [v10 notificationViewController:self dismissPresentLongLookForRequst:v11 animator:v7];
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __106__NCNotificationShortLookViewController_expandedPlatterInteractionManager_willDismissContentWithAnimator___block_invoke;
  v16[3] = &unk_278371788;
  v16[4] = self;
  v17 = v7;
  v18 = v6;
  v19 = v9;
  v12 = v9;
  v13 = v6;
  v14 = v7;
  v15 = self;
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

- (int64_t)expandedPlatterViewController:(id)a3 dateFormatStyleForNotificationRequest:(id)a4
{
  v5 = [(NCNotificationViewController *)self delegate:a3];
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

- (void)expandedPlatterViewController:(id)a3 requestsDismissalWithReason:(id)a4 userInfo:(id)a5
{
  v8 = a4;
  v9 = a5;
  objc_storeStrong(&self->_expandedPlatterDismissalReason, a4);
  if (NCEqualExpandedPlatterObservableDismissalReasons(self->_expandedPlatterDismissalReason, @"dismissalReasonURL"))
  {
    v10 = [v9 objectForKey:@"NCExpandedPlatterObservableDismissalReasonUserInfoKeyURL"];
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
    v13 = [(NCNotificationViewController *)self notificationRequest];
    v14 = [(NCNotificationViewController *)self notificationUsageTrackingState];
    [v12 longLookDefaultActionInvokedWithTrigger:1 forNotificationRequest:v13 withState:v14];

    [(NCNotificationViewController *)self _executeDefaultAction:1];
  }

  else if (NCEqualExpandedPlatterObservableDismissalReasons(self->_expandedPlatterDismissalReason, @"dismissalReasonHomeAction"))
  {
    v15 = +[NCNotificationEventTracker sharedInstance];
    v16 = [(NCNotificationViewController *)self notificationRequest];
    v17 = [(NCNotificationViewController *)self notificationUsageTrackingState];
    [v15 longLookReparkInvokedWithTrigger:0 forNotificationRequest:v16 withState:v17];

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

- (unint64_t)importantAdornmentEligibleOptionsForNotificationViewController:(id)a3
{
  v4 = [(NCNotificationViewController *)self delegate];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0 && [v4 importantAdornmentEligibleOptionsForNotificationViewController:self])
  {
    v5 = [v4 importantAdornmentEligibleOptionsForNotificationViewController:self];
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

- (void)expandedPlatterWillPresent:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(NCNotificationViewController *)self notificationRequest];
    v8 = [v7 notificationIdentifier];
    v9 = [v8 un_logDigest];
    v10 = NCStringFromLongLookPresentationTrigger(self->_trigger);
    v19 = 138543618;
    v20 = v9;
    v21 = 2114;
    v22 = v10;
    _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "Notification view controller will present expanded platter for request %{public}@ (_trigger: %{public}@)", &v19, 0x16u);
  }

  self->_expandedPlatterPresentationState = 1;
  v11 = +[NCNotificationEventTracker sharedInstance];
  v12 = [(NCNotificationViewController *)self notificationRequest];
  [v11 longLookPresentedForNotificationRequest:v12];

  [(NCNotificationViewController *)self _notifyObserversWithBlock:&__block_literal_global_220];
  v13 = [(NCExpandedPlatterViewController *)self->_expandedPlatterViewController customContentViewController];
  v14 = [v13 contentExtensionIdentifier];

  if ([v14 length])
  {
    v15 = NCSDKVersionForExtensionWithIdentifier(v14, 0);
    v16 = NCIsSDKVersionSameOrAfterSDKVersion(v15, @"13.0");

    if (!v16)
    {
      v17 = [(NCExpandedPlatterViewController *)self->_expandedPlatterViewController presentationController];
      v18 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
      [v17 setOverrideTraitCollection:v18];
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

- (void)expandedPlatterDidPresent:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [(NCNotificationViewController *)self notificationRequest];
    v7 = [v6 notificationIdentifier];
    v8 = [v7 un_logDigest];
    v9 = 138543362;
    v10 = v8;
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

- (void)expandedPlatter:(id)a3 willDismissWithReason:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(NCNotificationViewController *)self notificationRequest];
    v8 = [v7 notificationIdentifier];
    v9 = [v8 un_logDigest];
    v10 = 138543362;
    v11 = v9;
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

- (void)expandedPlatter:(id)a3 didDismissWithReason:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(NCNotificationViewController *)self notificationRequest];
    v8 = [v7 notificationIdentifier];
    v9 = [v8 un_logDigest];
    v14 = 138543362;
    v15 = v9;
    _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "Notification view controller did dismiss expanded platter for request %{public}@", &v14, 0xCu);
  }

  self->_expandedPlatterPresentationState = 0;
  [(NCExpandedPlatterViewController *)self->_expandedPlatterViewController removeExpandedPlatterObserver:self];
  expandedPlatterViewController = self->_expandedPlatterViewController;
  self->_expandedPlatterViewController = 0;

  v11 = [(NSMutableArray *)self->_containerViewProviders firstObject];
  [v11 invalidate];

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

- (void)customContent:(id)a3 didUpdateUserNotificationActions:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_expandedPlatterViewController)
  {
    v8 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [(NCNotificationViewController *)self notificationRequest];
      v11 = [v10 notificationIdentifier];
      v12 = [v11 un_logDigest];
      *buf = 138543362;
      v20 = v12;
      _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "Custom content extension is updating expanded platter actions for notification request %{public}@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __88__NCNotificationShortLookViewController_customContent_didUpdateUserNotificationActions___block_invoke;
    aBlock[3] = &unk_278370A90;
    objc_copyWeak(&v18, buf);
    v17 = v7;
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
    [(NCNotificationShortLookViewController *)&v15 customContent:v6 didUpdateUserNotificationActions:v7];
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
    v5 = [(NCNotificationViewController *)self notificationRequest];
    v6 = [(NCNotificationLongLookViewController *)v4 _initWithNotificationRequest:v5 andPresentingNotificationViewController:self revealingAdditionalContentOnPresentation:[(NCNotificationViewController *)self revealAdditionalContentOnPresentation]];
    v7 = self->_longLookNotificationViewController;
    self->_longLookNotificationViewController = v6;

    v8 = self->_longLookNotificationViewController;
    v9 = [(NCNotificationViewController *)self delegate];
    [(NCNotificationViewController *)v8 setDelegate:v9];

    [(NCNotificationViewController *)self->_longLookNotificationViewController addObserver:self];
    [(NCNotificationViewController *)self->_longLookNotificationViewController updateContent];
    v10 = [(NCNotificationViewController *)self->_longLookNotificationViewController staticContentProvider];

    longLookNotificationViewController = self->_longLookNotificationViewController;
    if (!v10)
    {
      v11 = [(NCNotificationViewController *)self staticContentProvider];
      [(NCNotificationViewController *)longLookNotificationViewController setStaticContentProvider:v11];

      longLookNotificationViewController = self->_longLookNotificationViewController;
    }
  }

  return longLookNotificationViewController;
}

- (id)transitioningDelegateForClickPresentationInteractionManager:(id)a3
{
  v3 = objc_alloc_init(NCLongLookTransitioningDelegate);

  return v3;
}

- (BOOL)clickPresentationInteractionManager:(id)a3 shouldBeginInteractionWithTouchAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [(NCNotificationViewController *)self isInteractionEnabled];
  if (([(NCNotificationShortLookViewController *)self isBeingPresented]& 1) != 0)
  {
    v9 = 1;
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = [(NCNotificationShortLookViewController *)self isBeingDismissed];
    if (!v8)
    {
LABEL_7:
      v14 = 0;
      goto LABEL_14;
    }
  }

  v10 = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
  v11 = [v10 auxiliaryOptionsVisible];

  if (v11)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v12 = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
    v13 = [v12 auxiliaryOptionButtons];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __119__NCNotificationShortLookViewController_clickPresentationInteractionManager_shouldBeginInteractionWithTouchAtLocation___block_invoke;
    v19[3] = &unk_278373308;
    v19[4] = self;
    v19[5] = &v20;
    *&v19[6] = x;
    *&v19[7] = y;
    [v13 enumerateObjectsUsingBlock:v19];

    LOBYTE(v12) = *(v21 + 24);
    _Block_object_dispose(&v20, 8);
    if (v12)
    {
      goto LABEL_7;
    }
  }

  v15 = [(NCNotificationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v14 = [v15 notificationViewControllerShouldAllowClickPresentationInteraction:self];
  }

  else
  {
    v14 = 1;
  }

  if (!(v9 & 1 | ((v14 & 1) == 0)))
  {
    v16 = [MEMORY[0x277CBEAA8] date];
    tapBeginTime = self->_tapBeginTime;
    self->_tapBeginTime = v16;

    self->_trigger = 1;
  }

LABEL_14:
  return v14 & (v9 ^ 1);
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

- (void)clickPresentationInteractionManagerDidEndUserInteraction:(id)a3
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

- (void)clickPresentationInteractionManager:(id)a3 shouldFinishInteractionThatReachedForceThreshold:(BOOL)a4 withCompletionBlock:(id)a5
{
  v5 = a4;
  v8 = a5;
  v7 = [(NCNotificationViewController *)self delegate];
  if (v5 && self->_trigger == 1)
  {
    self->_trigger = 2;
  }

  if (objc_opt_respondsToSelector())
  {
    [v7 notificationRequestPresenter:self shouldTransitionToStage:@"notificationViewController.presentingStage.longLook" forTrigger:self->_trigger completionBlock:v8];
  }

  else
  {
    v8[2](v8, 0);
  }
}

- (void)_handlePresentedContentDismissalForClickPresentationInteractionManagerWithTrigger:(int64_t)a3
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
    v15 = self;
    _os_log_error_impl(&dword_21E77E000, v9, OS_LOG_TYPE_ERROR, "Couldn't find both presentable (%{public}@) and dismisser (%{public}@) for long look VC %{public}@", &v10, 0x20u);
  }

LABEL_11:
  [(NCNotificationLongLookViewController *)v8 expandedPlatterPresentable:v6 requestsDismissalWithTrigger:a3];
}

- (BOOL)clickPresentationInteractionManagerShouldAllowLongPressGesture:(id)a3
{
  v4 = [(NCNotificationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 notificationViewControllerShouldAllowLongPressGesture:self];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (CGRect)initialPresentedFrameOfViewForPreview
{
  v3 = [(NCNotificationViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();
  v5 = [(NCNotificationShortLookViewController *)self viewForPreview];
  v6 = v5;
  if (v4)
  {
    [v3 notificationViewController:self initialFrameForPresentingLongLookFromView:v5];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v15 = [v5 superview];
    [v6 frame];
    [v15 convertRect:0 toView:?];
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
  v3 = [(NCNotificationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(NCNotificationShortLookViewController *)self viewForPreview];
    [v3 notificationViewController:self finalFrameForDismissingLongLookFromView:v4];
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

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = [(NCNotificationShortLookViewController *)self _notificationShortLookViewIfLoaded];
  v4 = [v5 backgroundMaterialView];
  [v4 setHighlighted:v3];
}

- (UIBezierPath)visiblePath
{
  v2 = [(NCNotificationShortLookViewController *)self viewForPreview];
  v3 = MEMORY[0x277D75208];
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v2 _continuousCornerRadius];
  v13 = [v3 bezierPathWithRoundedRect:v5 cornerRadius:{v7, v9, v11, v12 + -2.0}];

  return v13;
}

- (void)notificationViewControllerWillPresent:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(NCNotificationViewController *)self notificationRequest];
    v8 = [v7 notificationIdentifier];
    v9 = [v8 un_logDigest];
    v10 = NCStringFromLongLookPresentationTrigger(self->_trigger);
    v19 = 138543618;
    v20 = v9;
    v21 = 2114;
    v22 = v10;
    _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "Notification view controller will present long look for request %{public}@ (_trigger: %{public}@)", &v19, 0x16u);
  }

  v11 = +[NCNotificationEventTracker sharedInstance];
  v12 = [(NCNotificationViewController *)self notificationRequest];
  [v11 longLookPresentedForNotificationRequest:v12];

  [(UITapGestureRecognizer *)self->_tapGesture setEnabled:0];
  [(NCNotificationViewController *)self _notifyObserversWithBlock:&__block_literal_global_259];
  v13 = [(NCNotificationViewController *)self->_longLookNotificationViewController _customContentProvidingViewController];
  v14 = [v13 contentExtensionIdentifier];

  if ([v14 length])
  {
    v15 = NCSDKVersionForExtensionWithIdentifier(v14, 0);
    v16 = NCIsSDKVersionSameOrAfterSDKVersion(v15, @"13.0");

    if (!v16)
    {
      v17 = [(NCNotificationLongLookViewController *)self->_longLookNotificationViewController presentationController];
      v18 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
      [v17 setOverrideTraitCollection:v18];
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

- (void)notificationViewControllerDidPresent:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(NCNotificationViewController *)self notificationRequest];
    v8 = [v7 notificationIdentifier];
    v9 = [v8 un_logDigest];
    v13 = 138543362;
    v14 = v9;
    _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "Notification view controller did present long look for request %{public}@", &v13, 0xCu);
  }

  if ([(NCNotificationViewController *)self _canPan])
  {
    v10 = [(NCNotificationShortLookViewController *)self view];
    v11 = [(NCNotificationLongLookViewController *)self->_longLookNotificationViewController presentationController];
    v12 = [v11 containerView];
    [v12 bounds];
    [v10 setFrame:?];
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

- (void)notificationViewControllerWillDismiss:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [(NCNotificationViewController *)self notificationRequest];
    v7 = [v6 notificationIdentifier];
    v8 = [v7 un_logDigest];
    v9 = 138543362;
    v10 = v8;
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

- (void)notificationViewControllerDidDismiss:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [(NCNotificationViewController *)self notificationRequest];
    v7 = [v6 notificationIdentifier];
    v8 = [v7 un_logDigest];
    v10 = 138543362;
    v11 = v8;
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

- (id)customBackgroundContainerViewForExpandedPlatterPresentationController:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationShortLookViewController *)self parentViewController];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 customBackgroundContainerViewForExpandedPlatterPresentationController:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_presentedLongLookViewController
{
  v3 = [(PLClickPresentationInteractionManager *)self->_clickPresentationInteractionManager presentedViewController];
  longLookNotificationViewController = v3;
  if (!v3)
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
  v3 = a1;
  v4 = [a2 notificationRequest];
  v5 = [v4 notificationIdentifier];
  v6 = [v5 un_logDigest];
  v7 = 138543362;
  v8 = v6;
  _os_log_error_impl(&dword_21E77E000, v3, OS_LOG_TYPE_ERROR, "Notification view controller for request %{public}@ doesn't have a container view for expanded content – aborting presentation", &v7, 0xCu);
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
  v5 = [a3 notificationRequest];
  v6 = [v5 notificationIdentifier];
  v12 = [v6 un_logDigest];
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