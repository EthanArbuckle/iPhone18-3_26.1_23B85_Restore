@interface SBDragAndDropWorkspaceTransaction
+ (BOOL)_shouldTrackLocationOfDropSession:(id)session forSwitcherController:(id)controller isCurrentlyTracking:(BOOL)tracking;
+ (BOOL)isDragOverFullscreenRegionAtLocation:(CGPoint)location inBounds:(CGRect)bounds;
+ (CGRect)sourceSceneInterfaceOrientedBoundsForDropSession:(id)session switcherController:(id)controller;
+ (CGSize)prototypeSettingsFullscreenActivationRegionSize;
+ (UIEdgeInsets)_screenInsetsForUIDragDropSession:(id)session;
+ (double)prototypeSettingsContentDraggingCommandeerInsetForUniversalControl;
+ (double)prototypeSettingsContentDraggingCommandeerWidth;
+ (double)prototypeSettingsContentDraggingFloatingActivationWidth;
+ (double)prototypeSettingsContentDraggingSideActivationWidth;
+ (double)prototypeSettingsSideActivationGutterSize;
+ (double)prototypeSettingsWindowTearOffDraggingFloatingActivationWidth;
+ (double)prototypeSettingsWindowTearOffDraggingSideActivationWidth;
+ (unint64_t)screenEdgeForDragOverSideGutterRegionsAtLocation:(CGPoint)location inBounds:(CGRect)bounds totalContentDragGutterWidth:(double)width screenInsets:(UIEdgeInsets)insets;
- (BOOL)_handleSessionDidUpdate:(id)update;
- (BOOL)canInterruptForTransitionRequest:(id)request;
- (BOOL)matchesUIDragDropSession:(id)session;
- (CGRect)_platterFrameInSwitcherView;
- (CGRect)applicationTransitionContext:(id)context frameForApplicationSceneEntity:(id)entity;
- (CGSize)_defaultReferenceSizeForSceneView;
- (CGSize)_platterSizeForDropAction:(int64_t)action proposedDropLayoutState:(id)state setDown:(BOOL)down;
- (CGSize)_platterSizeForSwitcherDropContext:(id)context setDown:(BOOL)down;
- (SBDragAndDropWorkspaceTransaction)initWithTransitionRequest:(id)request switcherController:(id)controller dropSession:(id)session delegate:(id)delegate;
- (double)_platterScale;
- (double)_platterScaleForSwitcherDropContext:(id)context;
- (double)_platterSourceViewScaleForSetDropAction:(int64_t)action setDown:(BOOL)down;
- (id)_cornerRadiusConfigurationForDropAction:(int64_t)action proposedDropLayoutState:(id)state setDown:(BOOL)down mode:(unint64_t)mode;
- (id)_cornerRadiusForSwitcherDragContext:(id)context setDown:(BOOL)down sourceViewScale:(double)scale;
- (id)_createPlatterPreviewForApplication:(id)application withSourceView:(id)view dropSession:(id)session;
- (id)_currentGestureEventForGesture:(id)gesture;
- (id)_dragPreviewForDroppingItem:(id)item withDefault:(id)default;
- (id)_dropInteraction:(id)interaction customSpringAnimationBehaviorForDroppingItem:(id)item;
- (id)_iconManager;
- (id)_transitionRequestForDropAction:(int64_t)action;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
- (id)dropInteraction:(id)interaction previewForDroppingItem:(id)item withDefault:(id)default;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
- (id)layoutStateForApplicationTransitionContext:(id)context;
- (int64_t)_layoutRoleForDropAction:(int64_t)action;
- (void)_addChildWorkspaceTransaction:(id)transaction;
- (void)_begin;
- (void)_childTransactionDidComplete:(id)complete;
- (void)_cleanUpAndCompleteTransactionIfNecessary;
- (void)_commitRecencyModelUpdateForDropContext:(id)context;
- (void)_configurePlatterPreview:(id)preview forSceneHandle:(id)handle completion:(id)completion;
- (void)_didComplete;
- (void)_didInterruptWithReason:(id)reason;
- (void)_displayLinkDidUpdate:(id)update;
- (void)_dragInteractionDidCancelLiftWithoutDragging:(id)dragging;
- (void)_endDragAndDropFluidGesture;
- (void)_getPlatterDiffuseShadowParameters:(SBDragPreviewShadowParameters *)parameters rimShadowParameters:(SBDragPreviewShadowParameters *)shadowParameters diffuseFilters:(id *)filters rimFilters:(id *)rimFilters forDropAction:(int64_t)action setDown:(BOOL)down mode:(unint64_t)mode userInterfaceStyle:(int64_t)self0;
- (void)_handleSessionDidEnd:(id)end;
- (void)_handleSessionDidPerformDrop:(id)drop;
- (void)_handleWillAnimateDropWithAnimator:(id)animator;
- (void)_interruptForDragExitedDropZoneIfNecessary;
- (void)_noteSwitcherDropAnimationCompletedIfNeededWithContext:(id)context;
- (void)_runFinalLayoutStateTransaction;
- (void)_setupPlatterPreviewForContentDrag;
- (void)_uncommandeerContentDrag;
- (void)_updateActiveSourceViewProviderWithDragState:(unint64_t)state;
- (void)_updateAnchorPointForPlatterPreview:(id)preview dragPreview:(id)dragPreview withSourceViewBounds:(CGRect)bounds location:(CGPoint)location;
- (void)_updateCurrentDropActionForSession:(id)session;
- (void)_updateCurrentDropActionProposedLayoutState;
- (void)_updateForWindowDragForSession:(id)session;
- (void)_updatePlatterPreviewForSetDown:(BOOL)down animated:(BOOL)animated;
- (void)_updatePlatterPreviewWithUpdatedSourceView;
- (void)_updatePlatterViewBlurForDropCompletion;
- (void)_willInterruptForTransitionRequest:(id)request;
- (void)_willInterruptWithReason:(id)reason;
- (void)dealloc;
- (void)dragInteraction:(id)interaction item:(id)item willAnimateCancelWithAnimator:(id)animator;
- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation;
- (void)dragInteraction:(id)interaction session:(id)session willEndWithOperation:(unint64_t)operation;
- (void)dragInteraction:(id)interaction sessionDidMove:(id)move;
- (void)dropInteraction:(id)interaction concludeDrop:(id)drop;
- (void)dropInteraction:(id)interaction item:(id)item willAnimateDropWithAnimator:(id)animator;
- (void)dropInteraction:(id)interaction sessionDidEnd:(id)end;
- (void)dropInteraction:(id)interaction sessionDidExit:(id)exit;
- (void)transaction:(id)transaction didCommitSceneUpdate:(id)update;
@end

@implementation SBDragAndDropWorkspaceTransaction

+ (UIEdgeInsets)_screenInsetsForUIDragDropSession:(id)session
{
  v4 = SBFSafeProtocolCast();
  v5 = 0.0;
  v6 = 0.0;
  if ([v4 _drivenByPointer])
  {
    v7 = +[SBWorkspace mainWorkspace];
    universalControlServer = [v7 universalControlServer];
    externalProcessActiveOnScreenEdges = [universalControlServer externalProcessActiveOnScreenEdges];

    if ((externalProcessActiveOnScreenEdges & 2) != 0)
    {
      [self prototypeSettingsContentDraggingCommandeerInsetForUniversalControl];
      v6 = v10;
    }

    if ((externalProcessActiveOnScreenEdges & 8) != 0)
    {
      [self prototypeSettingsContentDraggingCommandeerInsetForUniversalControl];
      v5 = v11;
    }
  }

  v12 = 0.0;
  v13 = 0.0;
  v14 = v6;
  v15 = v5;
  result.right = v15;
  result.bottom = v13;
  result.left = v14;
  result.top = v12;
  return result;
}

+ (BOOL)_shouldTrackLocationOfDropSession:(id)session forSwitcherController:(id)controller isCurrentlyTracking:(BOOL)tracking
{
  trackingCopy = tracking;
  v144[1] = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  controllerCopy = controller;
  uiDragDropSession = [sessionCopy uiDragDropSession];
  localContext = [sessionCopy localContext];
  startLocation = [localContext startLocation];

  if (startLocation == 8 || (SBApplicationDropSessionGetDragItem(uiDragDropSession), v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    contentViewController = [controllerCopy contentViewController];
    v15 = objc_opt_class();
    v16 = contentViewController;
    if (v15)
    {
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    view = [v18 view];
    window = [view window];
    screen = [window screen];
    fixedCoordinateSpace = [screen fixedCoordinateSpace];

    view2 = [v18 view];
    [uiDragDropSession locationInView:view2];
    v25 = v24;
    v27 = v26;

    view3 = [v18 view];
    [view3 convertPoint:fixedCoordinateSpace toCoordinateSpace:{v25, v27}];
    v112 = v30;
    v113 = v29;

    v144[0] = *MEMORY[0x277D78028];
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v144 count:1];
    LODWORD(window) = [uiDragDropSession hasItemsConformingToTypeIdentifiers:v31];

    if (window && ([SBApp notificationDispatcher], v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v32, "bannerDestination"), v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "presentedBannerScreenFrame"), v150 = CGRectInset(v149, -50.0, -50.0), x = v150.origin.x, y = v150.origin.y, width = v150.size.width, height = v150.size.height, v33, v32, v151.origin.x = x, v151.origin.y = y, v151.size.width = width, v151.size.height = height, v145.y = v112, v145.x = v113, CGRectContainsPoint(v151, v145)) || (objc_msgSend(v18, "view"), v38 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v38, "bounds"), v40 = v39, v42 = v41, v44 = v43, v46 = v45, v38, UIRectInset(), v146.x = v25, v146.y = v27, !CGRectContainsPoint(v152, v146)))
    {
      v54 = 0;
LABEL_64:

      goto LABEL_65;
    }

    windowManagementContext = [controllerCopy windowManagementContext];
    isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

    if (!isChamoisOrFlexibleWindowing)
    {
LABEL_29:
      v58 = [self isDragOverFullscreenRegionAtLocation:v25 inBounds:{v27, v40, v42, v44, v46}];
      v138[0] = MEMORY[0x277D85DD0];
      v138[1] = 3221225472;
      v138[2] = __113__SBDragAndDropWorkspaceTransaction__shouldTrackLocationOfDropSession_forSwitcherController_isCurrentlyTracking___block_invoke;
      v138[3] = &unk_2783BA210;
      selfCopy = self;
      v141 = v25;
      v142 = v27;
      v139 = uiDragDropSession;
      v111 = MEMORY[0x223D6F7F0](v138);
      dropZones = [sessionCopy dropZones];
      if (dropZones)
      {
        if (dropZones != 2)
        {
          if (dropZones != 1)
          {
LABEL_55:
            v54 = 0;
            goto LABEL_63;
          }

          windowManagementContext2 = [controllerCopy windowManagementContext];
          isFlexibleWindowingEnabled = [windowManagementContext2 isFlexibleWindowingEnabled];

          if (isFlexibleWindowingEnabled)
          {
            [self prototypeSettingsContentDraggingSideActivationWidth];
          }

          else
          {
            if (trackingCopy)
            {
              [self prototypeSettingsContentDraggingSideActivationWidth];
              v72 = v71;
              [self prototypeSettingsContentDraggingFloatingActivationWidth];
              v63.n128_f64[0] = v72 + v73;
LABEL_41:
              if ((v58 & 1) != 0 || v111[2](v40, v42, v44, v46, v63))
              {
                layoutState = [controllerCopy layoutState];
                v132 = 0;
                v133 = &v132;
                v134 = 0x3032000000;
                v135 = __Block_byref_object_copy__81;
                v136 = __Block_byref_object_dispose__81;
                v137 = 0;
                v126 = 0;
                v127 = &v126;
                v128 = 0x4010000000;
                v129 = &unk_21F9DA6A3;
                v75 = *(MEMORY[0x277CBF3A0] + 16);
                v130 = *MEMORY[0x277CBF3A0];
                v131 = v75;
                v119[0] = MEMORY[0x277D85DD0];
                v119[1] = 3221225472;
                v119[2] = __113__SBDragAndDropWorkspaceTransaction__shouldTrackLocationOfDropSession_forSwitcherController_isCurrentlyTracking___block_invoke_81;
                v119[3] = &unk_2783BA238;
                v122 = &v132;
                v108 = layoutState;
                v120 = v108;
                v124 = v25;
                v125 = v27;
                v121 = controllerCopy;
                v123 = &v126;
                SBLayoutRoleEnumerateValidRoles(v119);
                mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
                uniqueIdentifier = [v133[5] uniqueIdentifier];
                v109 = [mEMORY[0x277D0AAD8] sceneWithIdentifier:uniqueIdentifier];

                if (v109 && ([v109 clientSettings], v78 = objc_claimAutoreleasedReturnValue(), v79 = objc_msgSend(v78, "isUISubclass"), v78, v79))
                {
                  view4 = [v18 view];
                  [view4 convertRect:fixedCoordinateSpace toCoordinateSpace:{v127[4], v127[5], v127[6], v127[7]}];
                  v82 = v81;
                  v84 = v83;
                  v86 = v85;
                  v88 = v87;

                  clientSettings = [v109 clientSettings];
                  [clientSettings multitaskingDragExclusionRects];
                  v117 = 0u;
                  v118 = 0u;
                  v115 = 0u;
                  obj = v116 = 0u;
                  v90 = [obj countByEnumeratingWithState:&v115 objects:v143 count:16];
                  v107 = clientSettings;
                  if (v90)
                  {
                    v91 = *v116;
                    while (2)
                    {
                      for (i = 0; i != v90; ++i)
                      {
                        if (*v116 != v91)
                        {
                          objc_enumerationMutation(obj);
                        }

                        [*(*(&v115 + 1) + 8 * i) CGRectValue];
                        v94 = v93;
                        v96 = v95;
                        v98 = v97;
                        v100 = v99;
                        v101 = [SBSceneLayoutCoordinateSpace coordinateSpaceForFrame:fixedCoordinateSpace withinCoordinateSpace:v82, v84, v86, v88];
                        [v101 convertRect:fixedCoordinateSpace toCoordinateSpace:{v94, v96, v98, v100}];
                        v102 = v156.origin.x;
                        v103 = v156.origin.y;
                        v104 = v156.size.width;
                        v105 = v156.size.height;
                        if (!CGRectIsNull(v156))
                        {
                          v157.origin.x = v102;
                          v157.origin.y = v103;
                          v157.size.width = v104;
                          v157.size.height = v105;
                          v148.y = v112;
                          v148.x = v113;
                          if (CGRectContainsPoint(v157, v148))
                          {

                            v54 = 0;
                            goto LABEL_61;
                          }
                        }
                      }

                      v90 = [obj countByEnumeratingWithState:&v115 objects:v143 count:16];
                      if (v90)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v54 = 1;
LABEL_61:
                }

                else
                {
                  v54 = 1;
                }

                _Block_object_dispose(&v126, 8);
                _Block_object_dispose(&v132, 8);

                goto LABEL_63;
              }

              goto LABEL_55;
            }

            [self prototypeSettingsContentDraggingCommandeerWidth];
          }

          v63.n128_u64[0] = v62;
          goto LABEL_41;
        }

        [self prototypeSettingsWindowTearOffDraggingSideActivationWidth];
        v114 = v64;
        [self prototypeSettingsWindowTearOffDraggingFloatingActivationWidth];
        v66 = v65;
        [self sourceSceneInterfaceOrientedBoundsForDropSession:sessionCopy switcherController:controllerCopy];
        v67 = v154.origin.x;
        v68 = v154.origin.y;
        v69 = v154.size.width;
        v70 = v154.size.height;
        if (!CGRectIsNull(v154))
        {
          v155.origin.x = v67;
          v155.origin.y = v68;
          v155.size.width = v69;
          v155.size.height = v70;
          v147.x = v25;
          v147.y = v27;
          if (!(v58 & 1 | !CGRectContainsPoint(v155, v147)))
          {
            v54 = (v111[2])(v67, v68, v69, v70, (v114 + v66) * (v69 / v44));
            goto LABEL_63;
          }
        }
      }

      v54 = 1;
LABEL_63:

      goto LABEL_64;
    }

    windowManagementContext3 = [controllerCopy windowManagementContext];
    if ([windowManagementContext3 isAutomaticStageCreationEnabled])
    {
      prefersStripHiddenAndDisabled = [v18 prefersStripHiddenAndDisabled];

      if ((prefersStripHiddenAndDisabled & 1) != 0 || ![v18 _areContinuousExposeStripsUnoccluded])
      {
        v53 = 0;
LABEL_22:
        dropZones2 = [sessionCopy dropZones];
        if (dropZones2 == 1)
        {
          v56 = [v18 _itemContainerAtLocation:0 environment:{v25, v27}];
          v57 = v56;
          if (v56)
          {
            [v56 size];
          }

          else if (!v53)
          {
            v54 = 1;
            goto LABEL_64;
          }
        }

        else if (!dropZones2)
        {
          v54 = !v53;
          goto LABEL_64;
        }

        goto LABEL_29;
      }

      windowManagementContext3 = [v18 windowingConfiguration];
      [windowManagementContext3 stripWidth];
      v52 = v51;
      if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
      {
        v153.origin.x = v40;
        v153.origin.y = v42;
        v153.size.width = v44;
        v153.size.height = v46;
        v53 = v25 > CGRectGetMaxX(v153) - v52;
      }

      else
      {
        v158.origin.x = v40;
        v158.origin.y = v42;
        v158.size.width = v44;
        v158.size.height = v46;
        v53 = v25 < v52 + CGRectGetMinX(v158);
      }
    }

    else
    {
      v53 = 0;
    }

    goto LABEL_22;
  }

  v54 = 0;
LABEL_65:

  return v54;
}

BOOL __113__SBDragAndDropWorkspaceTransaction__shouldTrackLocationOfDropSession_forSwitcherController_isCurrentlyTracking___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v12 = *(a1 + 40);
  [v12 _screenInsetsForUIDragDropSession:*(a1 + 32)];
  return [v12 screenEdgeForDragOverSideGutterRegionsAtLocation:*(a1 + 48) inBounds:*(a1 + 56) totalContentDragGutterWidth:a2 screenInsets:{a3, a4, a5, a6, v13, v14, v15, v16}] != 0;
}

void __113__SBDragAndDropWorkspaceTransaction__shouldTrackLocationOfDropSession_forSwitcherController_isCurrentlyTracking___block_invoke_81(uint64_t a1, uint64_t a2)
{
  v4 = *(*(*(a1 + 48) + 8) + 40);
  if (!v4 || [v4 layoutRole] != 3)
  {
    v5 = [*(a1 + 32) elementWithRole:a2];
    v6 = v5;
    if (v5)
    {
      obj = v5;
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      if (a2 == 3)
      {
        [v8 frameForFloatingAppLayoutInInterfaceOrientation:objc_msgSend(v7 floatingConfiguration:{"interfaceOrientation"), objc_msgSend(*(a1 + 32), "floatingConfiguration")}];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
      }

      else
      {
        v17 = [v7 appLayout];
        [v8 frameForItemWithRole:a2 inMainAppLayout:v17 interfaceOrientation:{objc_msgSend(*(a1 + 32), "interfaceOrientation")}];
        v10 = v18;
        v12 = v19;
        v14 = v20;
        v16 = v21;
      }

      v22 = SBRectContainsPoint();
      v6 = obj;
      if (v22)
      {
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
        v6 = obj;
        v23 = *(*(a1 + 56) + 8);
        v23[4] = v10;
        v23[5] = v12;
        v23[6] = v14;
        v23[7] = v16;
      }
    }
  }
}

+ (CGRect)sourceSceneInterfaceOrientedBoundsForDropSession:(id)session switcherController:(id)controller
{
  controllerCopy = controller;
  systemSession = [session systemSession];
  info = [systemSession info];

  v8 = +[SBApplicationController sharedInstance];
  v9 = [v8 applicationWithPid:{objc_msgSend(info, "processIdentifier")}];

  windowScene = [controllerCopy windowScene];
  sceneManager = [windowScene sceneManager];

  bundleIdentifier = [v9 bundleIdentifier];
  sceneIdentifier = [info sceneIdentifier];
  v14 = [sceneManager sceneIdentifierForBundleIdentifier:bundleIdentifier uniqueIdentifier:sceneIdentifier];

  layoutState = [controllerCopy layoutState];
  v16 = [layoutState elementWithIdentifier:v14];
  v17 = v16;
  if (v16)
  {
    if ([v16 layoutRole] == 3)
    {
      [controllerCopy frameForFloatingAppLayoutInInterfaceOrientation:objc_msgSend(layoutState floatingConfiguration:{"interfaceOrientation"), objc_msgSend(layoutState, "floatingConfiguration")}];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
    }

    else
    {
      v26 = [controllerCopy interfaceOrientationForLayoutElement:v17];
      layoutRole = [v17 layoutRole];
      appLayout = [layoutState appLayout];
      [controllerCopy frameForItemWithRole:layoutRole inMainAppLayout:appLayout interfaceOrientation:v26];
      v19 = v29;
      v21 = v30;
      v23 = v31;
      v25 = v32;
    }
  }

  else
  {
    v19 = *MEMORY[0x277CBF398];
    v21 = *(MEMORY[0x277CBF398] + 8);
    v23 = *(MEMORY[0x277CBF398] + 16);
    v25 = *(MEMORY[0x277CBF398] + 24);
  }

  v33 = v19;
  v34 = v21;
  v35 = v23;
  v36 = v25;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

+ (BOOL)isDragOverFullscreenRegionAtLocation:(CGPoint)location inBounds:(CGRect)bounds
{
  y = location.y;
  x = location.x;
  [self prototypeSettingsFullscreenActivationRegionSize];
  SBRectWithSize();
  UIRectCenteredXInRect();
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

+ (unint64_t)screenEdgeForDragOverSideGutterRegionsAtLocation:(CGPoint)location inBounds:(CGRect)bounds totalContentDragGutterWidth:(double)width screenInsets:(UIEdgeInsets)insets
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v11 = location.x;
  v12 = insets.left + CGRectGetMinX(bounds);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v13 = CGRectGetMinX(v19) + width;
  if (v11 > v12 && v11 < v13)
  {
    return 2;
  }

  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v15 = CGRectGetMaxX(v20) - insets.right;
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v16 = CGRectGetMaxX(v21) - width;
  if (v11 >= v15 || v11 <= v16)
  {
    return 0;
  }

  else
  {
    return 8;
  }
}

- (SBDragAndDropWorkspaceTransaction)initWithTransitionRequest:(id)request switcherController:(id)controller dropSession:(id)session delegate:(id)delegate
{
  v76 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  obj = controller;
  sessionCopy = session;
  delegateCopy = delegate;
  v74.receiver = self;
  v74.super_class = SBDragAndDropWorkspaceTransaction;
  v62 = requestCopy;
  v11 = [(SBMainWorkspaceTransaction *)&v74 initWithTransitionRequest:requestCopy];
  if (v11)
  {
    contentViewController = [obj contentViewController];
    v13 = objc_opt_class();
    v14 = contentViewController;
    if (v13)
    {
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v61 = v15;

    windowScene = [obj windowScene];
    sceneManager = [windowScene sceneManager];

    objc_storeWeak(v11 + 26, obj);
    objc_storeWeak(v11 + 27, v61);
    objc_storeWeak(v11 + 28, sceneManager);
    objc_storeWeak(v11 + 29, delegateCopy);
    objc_storeStrong(v11 + 33, session);
    *(v11 + 34) = 0;
    *(v11 + 39) = 0;
    *(v11 + 344) = SBInvalidSize;
    v17 = objc_alloc_init(SBTouchHistory);
    v18 = *(v11 + 57);
    *(v11 + 57) = v17;

    v19 = +[SBMedusaDomain rootSettings];
    v20 = *(v11 + 58);
    *(v11 + 58) = v19;

    v21 = +[SBAppSwitcherDomain rootSettings];
    windowingSettings = [v21 windowingSettings];
    v23 = *(v11 + 59);
    *(v11 + 59) = windowingSettings;

    layoutState = [obj layoutState];
    v25 = *(v11 + 30);
    *(v11 + 30) = layoutState;

    objc_storeStrong(v11 + 31, *(v11 + 30));
    application = [sessionCopy application];
    if (!application)
    {
      [SBDragAndDropWorkspaceTransaction initWithTransitionRequest:switcherController:dropSession:delegate:];
    }

    v26 = +[SBDraggingSystemManager sharedInstance];
    allowsCommandeering = [sessionCopy allowsCommandeering];
    systemSession = [sessionCopy systemSession];
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    [v26 setCommandeered:allowsCommandeering forDraggingSystemSession:systemSession forReason:v30];

    sceneIdentity = [sessionCopy sceneIdentity];
    displayIdentity = [sceneManager displayIdentity];
    v59 = [SBApplicationSceneHandleRequest defaultRequestForApplication:application sceneIdentity:sceneIdentity displayIdentity:displayIdentity];

    v32 = objc_opt_class();
    v33 = [sceneManager fetchOrCreateApplicationSceneHandleForRequest:v59];
    v34 = SBSafeCast(v32, v33);
    v35 = *(v11 + 35);
    *(v11 + 35) = v34;

    if (!*(v11 + 35))
    {
      [SBDragAndDropWorkspaceTransaction initWithTransitionRequest:switcherController:dropSession:delegate:];
    }

    localContext = [*(v11 + 33) localContext];
    v37 = [localContext startLocation] == 8;

    if (v37)
    {
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      elements = [*(v11 + 31) elements];
      v39 = [elements countByEnumeratingWithState:&v70 objects:v75 count:16];
      if (v39)
      {
        v40 = *v71;
        while (2)
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v71 != v40)
            {
              objc_enumerationMutation(elements);
            }

            v42 = *(*(&v70 + 1) + 8 * i);
            uniqueIdentifier = [v42 uniqueIdentifier];
            sceneIdentifier = [*(v11 + 35) sceneIdentifier];
            v45 = [uniqueIdentifier isEqualToString:sceneIdentifier];

            if (v45)
            {
              v46 = v42;
              goto LABEL_22;
            }
          }

          v39 = [elements countByEnumeratingWithState:&v70 objects:v75 count:16];
          if (v39)
          {
            continue;
          }

          break;
        }
      }

      v46 = 0;
LABEL_22:

      v47 = *(v11 + 45);
      *(v11 + 45) = v46;
    }

    v48 = objc_opt_class();
    localContext2 = [sessionCopy localContext];
    portaledPreview = [localContext2 portaledPreview];
    v51 = SBSafeCast(v48, portaledPreview);

    objc_storeStrong(v11 + 51, v51);
    uiDragDropSession = [sessionCopy uiDragDropSession];
    v53 = SBFSafeProtocolCast();

    if (v53)
    {
      v11[288] = 1;
      if (!v51)
      {
        [v11 _setupPlatterPreviewForContentDrag];
      }
    }

    objc_initWeak(&location, v11);
    v54 = MEMORY[0x277D85CD0];
    v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"SpringBoard - DragAndDropTransaction - %p", v11];
    objc_copyWeak(&v68, &location);
    v56 = BSLogAddStateCaptureBlockWithTitle();
    v57 = *(v11 + 62);
    *(v11 + 62) = v56;

    objc_destroyWeak(&v68);
    objc_destroyWeak(&location);
  }

  return v11;
}

id __103__SBDragAndDropWorkspaceTransaction_initWithTransitionRequest_switcherController_dropSession_delegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [MEMORY[0x277CF0C00] builderWithObject:WeakRetained];
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __103__SBDragAndDropWorkspaceTransaction_initWithTransitionRequest_switcherController_dropSession_delegate___block_invoke_2;
    v9 = &unk_2783A92D8;
    v10 = v2;
    v11 = WeakRetained;
    v3 = v2;
    [v3 appendBodySectionWithName:0 multilinePrefix:0 block:&v6];
    v4 = [v3 build];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __103__SBDragAndDropWorkspaceTransaction_initWithTransitionRequest_switcherController_dropSession_delegate___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appendUnsignedInteger:*(*(a1 + 40) + 272) withName:@"sessionState"];
  v3 = [*(a1 + 32) appendInteger:*(*(a1 + 40) + 312) withName:@"currentDropAction"];
  v4 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 376) withName:@"sceneUpdateTransactionForWindowDrag"];
  v5 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 400) withName:@"pendingSceneUpdatesTransactions"];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 176) withName:@"transitionRequest"];
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_stateCaptureInvalidatable invalidate];
  v3.receiver = self;
  v3.super_class = SBDragAndDropWorkspaceTransaction;
  [(SBDragAndDropWorkspaceTransaction *)&v3 dealloc];
}

- (void)_setupPlatterPreviewForContentDrag
{
  if (!self->_activePlatterPreview)
  {
    v15 = v2;
    v16 = v3;
    v5 = self->_dropSession;
    uiDragDropSession = [(SBApplicationDropSession *)v5 uiDragDropSession];
    v7 = SBFSafeProtocolCast();

    v8 = SBApplicationDropSessionGetDragItem(v7);
    v9 = SBFSafeProtocolCast();
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __71__SBDragAndDropWorkspaceTransaction__setupPlatterPreviewForContentDrag__block_invoke;
    v12[3] = &unk_2783BA288;
    v12[4] = self;
    v13 = v5;
    v14 = v8;
    v10 = v8;
    v11 = v5;
    [v9 requestVisibleItems:v12];
  }
}

void __71__SBDragAndDropWorkspaceTransaction__setupPlatterPreviewForContentDrag__block_invoke(uint64_t a1, void *a2)
{
  ++*(*(a1 + 32) + 424);
  v3 = [a2 firstObject];
  v4 = *(a1 + 32);
  if (v3 || *(v4 + 424) >= 4uLL)
  {
    objc_storeStrong((v4 + 432), v3);
    v5 = [*(a1 + 40) application];
    v6 = [*(a1 + 32) _createPlatterPreviewForApplication:v5 withSourceView:v3 dropSession:*(a1 + 40)];
    [*(a1 + 32) _configurePlatterPreview:v6 forSceneHandle:*(*(a1 + 32) + 280) completion:0];
    v7 = [objc_alloc(MEMORY[0x277CF0BE8]) initWithCornerRadius:10.0];
    [v6 setCornerRadiusConfiguration:v7];

    [v6 layoutIfNeeded];
    v8 = *(a1 + 48);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __71__SBDragAndDropWorkspaceTransaction__setupPlatterPreviewForContentDrag__block_invoke_2;
    v15[3] = &unk_2783BA260;
    v9 = v6;
    v16 = v9;
    v17 = *(a1 + 40);
    [v8 setPreviewProvider:v15];
    v10 = *(a1 + 32);
    v11 = *(v10 + 408);
    *(v10 + 408) = v9;
    v12 = v9;
  }

  else
  {
    v13 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__SBDragAndDropWorkspaceTransaction__setupPlatterPreviewForContentDrag__block_invoke_3;
    block[3] = &unk_2783A8C18;
    block[4] = *(a1 + 32);
    dispatch_after(v13, MEMORY[0x277D85CD0], block);
  }
}

id __71__SBDragAndDropWorkspaceTransaction__setupPlatterPreviewForContentDrag__block_invoke_2(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D75478]) initWithView:*(a1 + 32)];
  if ([*(a1 + 40) isWindowTearOff])
  {
    [*(a1 + 32) bounds];
    v4 = 33.0 / v3;
  }

  else
  {
    v4 = 0.5;
  }

  [*(a1 + 32) setAnchorPoint:{0.5, v4}];
  [*(a1 + 32) bounds];
  [v2 setPreferredAnchorPoint:{0.5 * v5, v4 * v6}];
  [v2 set_springboardPlatterStyle:1];
  [v2 setAvoidAnimation:1];

  return v2;
}

uint64_t __71__SBDragAndDropWorkspaceTransaction__setupPlatterPreviewForContentDrag__block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) isRunning];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _setupPlatterPreviewForContentDrag];
  }

  return result;
}

+ (double)prototypeSettingsSideActivationGutterSize
{
  v2 = +[SBMedusaDomain rootSettings];
  [v2 draggingPlatterSideActivationGutterPadding];
  v4 = v3;

  return v4;
}

+ (CGSize)prototypeSettingsFullscreenActivationRegionSize
{
  v2 = +[SBMedusaDomain rootSettings];
  [v2 draggingPlatterFullscreenActivationRegionWidth];
  v4 = v3;
  [v2 draggingPlatterFullscreenActivationRegionHeight];
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

+ (double)prototypeSettingsContentDraggingCommandeerInsetForUniversalControl
{
  v2 = +[SBMedusaDomain rootSettings];
  [v2 contentDraggingCommandeerGutterInsetForUniversalControl];
  v4 = v3;

  return v4;
}

+ (double)prototypeSettingsContentDraggingCommandeerWidth
{
  v2 = +[SBMedusaDomain rootSettings];
  [v2 contentDraggingCommandeerGutterWidth];
  v4 = v3;

  return v4;
}

+ (double)prototypeSettingsContentDraggingSideActivationWidth
{
  v2 = +[SBMedusaDomain rootSettings];
  [v2 contentDraggingSideActivationGutterWidth];
  v4 = v3;

  return v4;
}

+ (double)prototypeSettingsContentDraggingFloatingActivationWidth
{
  v2 = +[SBMedusaDomain rootSettings];
  [v2 contentDraggingFloatingActivationGutterWidth];
  v4 = v3;

  return v4;
}

+ (double)prototypeSettingsWindowTearOffDraggingSideActivationWidth
{
  v2 = +[SBMedusaDomain rootSettings];
  [v2 windowTearOffDraggingSideActivationGutterWidth];
  v4 = v3;

  return v4;
}

+ (double)prototypeSettingsWindowTearOffDraggingFloatingActivationWidth
{
  v2 = +[SBMedusaDomain rootSettings];
  [v2 windowTearOffDraggingFloatingActivationGutterWidth];
  v4 = v3;

  return v4;
}

- (BOOL)matchesUIDragDropSession:(id)session
{
  sessionCopy = session;
  uiDragDropSession = [(SBApplicationDropSession *)self->_dropSession uiDragDropSession];

  if (uiDragDropSession == sessionCopy)
  {
    v9 = 1;
  }

  else
  {
    v6 = SBFSafeProtocolCast();
    uiDragDropSession2 = [(SBApplicationDropSession *)self->_dropSession uiDragDropSession];
    localDragSession = [v6 localDragSession];
    v9 = uiDragDropSession2 == localDragSession;
  }

  return v9;
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBDragAndDropWorkspaceTransaction.m" lineNumber:666 description:{@"%s shouldn't be forwarded to %@", "-[SBDragAndDropWorkspaceTransaction dragInteraction:itemsForBeginningSession:]", v8}];

  return 0;
}

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  sessionCopy = session;
  interactionCopy = interaction;
  v9 = objc_opt_class();
  v10 = SBSafeCast(v9, interactionCopy);

  if (!v10)
  {
    [SBDragAndDropWorkspaceTransaction dragInteraction:previewForLiftingItem:session:];
  }

  v11 = self->_dropSession;
  application = [(SBApplicationDropSession *)v11 application];
  sourceViewProvider = [v10 sourceViewProvider];
  sourceView = [sourceViewProvider sourceView];
  v15 = [(SBDragAndDropWorkspaceTransaction *)self _createPlatterPreviewForApplication:application withSourceView:sourceView dropSession:v11];
  initialCornerRadiusConfiguration = [sourceViewProvider initialCornerRadiusConfiguration];
  [(SBAppPlatterDragPreview *)v15 setCornerRadiusConfiguration:initialCornerRadiusConfiguration];

  [sourceViewProvider initialDiffuseShadowParameters];
  [(SBAppPlatterDragPreview *)v15 setDiffuseShadowParameters:?];
  [sourceViewProvider initialRimShadowParameters];
  [(SBAppPlatterDragPreview *)v15 setRimShadowParameters:?];
  initialDiffuseShadowFilters = [sourceViewProvider initialDiffuseShadowFilters];
  [(SBAppPlatterDragPreview *)v15 setDiffuseShadowFilters:initialDiffuseShadowFilters];

  initialRimShadowFilters = [sourceViewProvider initialRimShadowFilters];
  [(SBAppPlatterDragPreview *)v15 setRimShadowFilters:initialRimShadowFilters];

  [(SBAppPlatterDragPreview *)v15 setDragState:1];
  [(SBAppPlatterDragPreview *)v15 layoutIfNeeded];
  activePlatterPreview = self->_activePlatterPreview;
  self->_activePlatterPreview = v15;
  v20 = v15;

  activeSourceViewProvider = self->_activeSourceViewProvider;
  self->_activeSourceViewProvider = sourceViewProvider;
  v22 = sourceViewProvider;

  [(SBDragAndDropWorkspaceTransaction *)self _updateActiveSourceViewProviderWithDragState:1];
  localContext = [(SBApplicationDropSession *)v11 localContext];
  [localContext setPortaledPreview:v20];

  v24 = objc_alloc(MEMORY[0x277D75B88]);
  v25 = [v24 initWithView:v20];
  [v25 set_springboardPlatterStyle:1];
  [sessionCopy locationInView:sourceView];

  [sourceView bounds];
  [SBDragAndDropWorkspaceTransaction _updateAnchorPointForPlatterPreview:"_updateAnchorPointForPlatterPreview:dragPreview:withSourceViewBounds:location:" dragPreview:v20 withSourceViewBounds:v25 location:?];

  return v25;
}

- (void)dragInteraction:(id)interaction sessionDidMove:(id)move
{
  moveCopy = move;
  if (!self->_beganTrackingDropSession && !self->_performedDrop)
  {
    v6 = moveCopy;
    [(SBDragAndDropWorkspaceTransaction *)self _handleSessionDidUpdate:moveCopy];
    moveCopy = v6;
  }
}

- (void)dragInteraction:(id)interaction session:(id)session willEndWithOperation:(unint64_t)operation
{
  sessionCopy = session;
  isInterrupted = [(SBDragAndDropWorkspaceTransaction *)self isInterrupted];
  if (!operation && (isInterrupted & 1) == 0)
  {
    [(SBDragAndDropWorkspaceTransaction *)self _handleSessionDidPerformDrop:sessionCopy];
  }
}

- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation
{
  sessionCopy = session;
  isInterrupted = [(SBDragAndDropWorkspaceTransaction *)self isInterrupted];
  if (!operation && (isInterrupted & 1) == 0)
  {
    [(SBDragAndDropWorkspaceTransaction *)self _handleSessionDidEnd:sessionCopy];
  }

  [(SBAppPlatterDragPreview *)self->_activePlatterPreview draggingSourceDroppedWithOperation:operation];
}

- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default
{
  itemCopy = item;
  defaultCopy = default;
  if (([(SBDragAndDropWorkspaceTransaction *)self isInterrupted]& 1) == 0 && [(SBDragAndDropWorkspaceTransaction *)self _layoutRoleForDropAction:self->_currentDropAction])
  {
    v9 = [(SBDragAndDropWorkspaceTransaction *)self _dragPreviewForDroppingItem:itemCopy withDefault:defaultCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)dragInteraction:(id)interaction item:(id)item willAnimateCancelWithAnimator:(id)animator
{
  animatorCopy = animator;
  if (([(SBDragAndDropWorkspaceTransaction *)self isInterrupted]& 1) == 0 && [(SBDragAndDropWorkspaceTransaction *)self _layoutRoleForDropAction:self->_currentDropAction])
  {
    [(SBDragAndDropWorkspaceTransaction *)self _handleWillAnimateDropWithAnimator:animatorCopy];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __88__SBDragAndDropWorkspaceTransaction_dragInteraction_item_willAnimateCancelWithAnimator___block_invoke;
    v7[3] = &unk_2783ACA48;
    v7[4] = self;
    [animatorCopy addCompletion:v7];
  }
}

- (void)_dragInteractionDidCancelLiftWithoutDragging:(id)dragging
{
  [(SBAppPlatterDragPreview *)self->_activePlatterPreview draggingSourceCancelAnimationCompleted];
  uiDragDropSession = [(SBApplicationDropSession *)self->_dropSession uiDragDropSession];
  [(SBDragAndDropWorkspaceTransaction *)self _handleSessionDidEnd:uiDragDropSession];
}

- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update
{
  self->_beganTrackingDropSession = 1;
  updateCopy = update;
  v6 = [(SBDragAndDropWorkspaceTransaction *)self _handleSessionDidUpdate:updateCopy];
  allowsMoveOperation = [updateCopy allowsMoveOperation];

  if (allowsMoveOperation)
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  v9 = objc_alloc(MEMORY[0x277D754A8]);
  if (v6)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v9 initWithDropOperation:v10];
  [v11 _setPreferredBadgeStyle:1];

  return v11;
}

- (void)dropInteraction:(id)interaction sessionDidExit:(id)exit
{
  if (!self->_performedDrop)
  {
    [(SBDragAndDropWorkspaceTransaction *)self _handleSessionDidUpdate:exit];
  }
}

- (void)dropInteraction:(id)interaction concludeDrop:(id)drop
{
  if (([(SBDragAndDropWorkspaceTransaction *)self isInterrupted:interaction]& 1) == 0)
  {
    self->_sessionState = 2;
  }
}

- (void)dropInteraction:(id)interaction sessionDidEnd:(id)end
{
  endCopy = end;
  if (([(SBDragAndDropWorkspaceTransaction *)self isInterrupted]& 1) == 0)
  {
    if (!self->_performedDrop)
    {
      if (self->_currentDropAction)
      {
        self->_currentDropAction = 0;
        [(SBDragAndDropWorkspaceTransaction *)self _updateCurrentDropActionProposedLayoutState];
      }

      objc_storeStrong(&self->_finalLayoutState, self->_currentLayoutState);
      WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
      applicationContext = [(SBWorkspaceTransitionRequest *)self->super.super._transitionRequest applicationContext];
      [WeakRetained performTransitionWithContext:applicationContext animated:1 completion:0];

      [(SBDragAndDropWorkspaceTransaction *)self _cleanUpAndCompleteTransactionIfNecessary];
    }

    [(SBDragAndDropWorkspaceTransaction *)self _handleSessionDidEnd:endCopy];
  }
}

- (id)dropInteraction:(id)interaction previewForDroppingItem:(id)item withDefault:(id)default
{
  itemCopy = item;
  defaultCopy = default;
  if (([(SBDragAndDropWorkspaceTransaction *)self isInterrupted]& 1) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = [(SBDragAndDropWorkspaceTransaction *)self _dragPreviewForDroppingItem:itemCopy withDefault:defaultCopy];
  }

  return v9;
}

- (void)dropInteraction:(id)interaction item:(id)item willAnimateDropWithAnimator:(id)animator
{
  animatorCopy = animator;
  if (([(SBDragAndDropWorkspaceTransaction *)self isInterrupted]& 1) == 0)
  {
    [(SBDragAndDropWorkspaceTransaction *)self _handleWillAnimateDropWithAnimator:animatorCopy];
  }
}

- (id)_dropInteraction:(id)interaction customSpringAnimationBehaviorForDroppingItem:(id)item
{
  currentDropAction = self->_currentDropAction;
  medusaSettings = self->_medusaSettings;
  if (currentDropAction == 10)
  {
    [(SBMedusaSettings *)medusaSettings switcherCardDropAnimationSettings:interaction];
  }

  else
  {
    [(SBMedusaSettings *)medusaSettings dropAnimationSettings:interaction];
  }
  v6 = ;

  return v6;
}

- (void)_interruptForDragExitedDropZoneIfNecessary
{
  if (self->_dragExitedDropZone && !self->_animatingPlatterPreview)
  {
    [(SBDragAndDropWorkspaceTransaction *)self interruptWithReason:@"User moved system content drag outside drop boundaries."];
  }
}

- (BOOL)_handleSessionDidUpdate:(id)update
{
  updateCopy = update;
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  maximumNumberOfScenesOnStage = [WeakRetained maximumNumberOfScenesOnStage];
  appLayout = [(SBMainDisplayLayoutState *)self->_initialLayoutState appLayout];
  allItems = [appLayout allItems];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __61__SBDragAndDropWorkspaceTransaction__handleSessionDidUpdate___block_invoke;
  v28[3] = &unk_2783A8C90;
  v29 = appLayout;
  v9 = appLayout;
  v10 = [allItems bs_filter:v28];
  v11 = [v10 count];

  if (v11 >= maximumNumberOfScenesOnStage && [(SBSwitcherWindowingSettings *)self->_windowingSettings rejectDropsWhenStageIsFull])
  {
    goto LABEL_8;
  }

  if (([(SBDragAndDropWorkspaceTransaction *)self isInterrupted]& 1) == 0)
  {
    v12 = objc_opt_class();
    dropSession = self->_dropSession;
    v14 = objc_loadWeakRetained(&self->_switcherController);
    LODWORD(v12) = [v12 _shouldTrackLocationOfDropSession:dropSession forSwitcherController:v14 isCurrentlyTracking:1];

    v15 = v12 ^ 1;
    if (self->_dragExitedDropZone != (v12 ^ 1))
    {
      self->_dragExitedDropZone = v15;
      uiDragDropSession = [(SBApplicationDropSession *)self->_dropSession uiDragDropSession];
      v17 = SBApplicationDropSessionGetDragItem(uiDragDropSession);

      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __61__SBDragAndDropWorkspaceTransaction__handleSessionDidUpdate___block_invoke_2;
      v26[3] = &unk_2783BA2B0;
      v26[4] = self;
      v27 = v15;
      [v17 setPreviewProvider:v26];
      [(SBDragAndDropWorkspaceTransaction *)self _updatePlatterPreviewForSetDown:0 animated:1];
    }

    [(SBDragAndDropWorkspaceTransaction *)self _interruptForDragExitedDropZoneIfNecessary];
  }

  if (([(SBDragAndDropWorkspaceTransaction *)self isInterrupted]& 1) != 0)
  {
LABEL_8:
    v18 = 0;
  }

  else
  {
    self->_sessionState = 1;
    view = [WeakRetained view];
    [updateCopy locationInView:view];
    v21 = v20;
    v23 = v22;

    [(SBTouchHistory *)self->_touchHistory updateWithLocation:v21 timestamp:v23, CACurrentMediaTime()];
    [(SBDragAndDropWorkspaceTransaction *)self _updateForWindowDragForSession:updateCopy];
    [(SBDragAndDropWorkspaceTransaction *)self _updateCurrentDropActionForSession:updateCopy];
    [(SBDragAndDropWorkspaceTransaction *)self _updatePlatterPreviewForSetDown:0 animated:1];
    [(SBFluidSwitcherGesture *)self->_dragAndDropGesture _setState:2];
    v24 = objc_loadWeakRetained(&self->_delegate);
    [v24 dragAndDropTransaction:self didUpdateGesture:self->_dragAndDropGesture];

    v18 = self->_currentDropAction != 0;
  }

  return v18;
}

uint64_t __61__SBDragAndDropWorkspaceTransaction__handleSessionDidUpdate___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) layoutRoleForItem:a2];

  return SBLayoutRoleIsValidForSplitView(v2);
}

id __61__SBDragAndDropWorkspaceTransaction__handleSessionDidUpdate___block_invoke_2(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D75478]) initWithView:*(*(a1 + 32) + 408)];
  [*(*(a1 + 32) + 432) bounds];
  v4 = v3;
  if (*(a1 + 40))
  {
    v5 = 0.5;
  }

  else
  {
    v5 = 0.5;
    if (![*(*(a1 + 32) + 264) isWindowTearOff])
    {
      v6 = 0.5;
      goto LABEL_6;
    }
  }

  v6 = 0.5;
  if (v4 > 0.0)
  {
    v6 = 33.0 / v4;
  }

LABEL_6:
  [*(*(a1 + 32) + 408) bounds];
  [v2 setPreferredAnchorPoint:{v5 * v7, v6 * v8}];
  [v2 set_springboardPlatterStyle:1];
  [v2 setAvoidAnimation:1];

  return v2;
}

- (void)_commitRecencyModelUpdateForDropContext:(id)context
{
  if (context)
  {
    self->_needsSwitcherDropAnimationCompletedNotification = 1;
    contextCopy = context;
    WeakRetained = objc_loadWeakRetained(&self->_switcherController);
    [WeakRetained _performSwitcherDropWithContext:contextCopy];
  }
}

- (void)_handleSessionDidPerformDrop:(id)drop
{
  if (([(SBDragAndDropWorkspaceTransaction *)self isInterrupted]& 1) == 0)
  {
    self->_performedDrop = 1;
    self->_sessionState = 2;
    [(CADisplayLink *)self->_displayLinkForWindowDrag invalidate];
    displayLinkForWindowDrag = self->_displayLinkForWindowDrag;
    self->_displayLinkForWindowDrag = 0;

    currentDropAction = self->_currentDropAction;
    if (currentDropAction == 10)
    {
      [(SBDragAndDropWorkspaceTransaction *)self _commitRecencyModelUpdateForDropContext:self->_currentSwitcherDropRegionContext];
      currentDropAction = self->_currentDropAction;
    }

    v6 = [(SBDragAndDropWorkspaceTransaction *)self _transitionRequestForDropAction:currentDropAction];
    dropTransitionRequest = self->_dropTransitionRequest;
    self->_dropTransitionRequest = v6;

    v8 = +[SBWorkspace mainWorkspace];
    v9 = [v8 canExecuteTransitionRequest:self->_dropTransitionRequest];

    if (v9)
    {
      if ([(SBDragAndDropWorkspaceTransaction *)self _shouldFailLayoutStateTransitionForWindowDrag])
      {
        objc_storeStrong(&self->_currentLayoutState, self->_initialLayoutState);
      }

      if (![(SBWorkspaceTransitionRequest *)self->_dropTransitionRequest isFinalized])
      {
        [(SBMainWorkspaceTransitionRequest *)self->_dropTransitionRequest finalize];
        applicationContext = [(SBWorkspaceTransitionRequest *)self->_dropTransitionRequest applicationContext];
        layoutState = [applicationContext layoutState];

        finalLayoutState = self->_finalLayoutState;
        self->_finalLayoutState = layoutState;
      }
    }

    else
    {

      [(SBDragAndDropWorkspaceTransaction *)self _cleanUpAndCompleteTransactionIfNecessary];
    }
  }
}

- (id)_dragPreviewForDroppingItem:(id)item withDefault:(id)default
{
  currentDropAction = self->_currentDropAction;
  defaultCopy = default;
  v7 = [(SBDragAndDropWorkspaceTransaction *)self _layoutRoleForDropAction:currentDropAction];
  if (!v7)
  {
    [SBDragAndDropWorkspaceTransaction _dragPreviewForDroppingItem:withDefault:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  view = [WeakRetained view];
  windowScene = [(SBWorkspaceTransaction *)self windowScene];
  switcherController = [windowScene switcherController];

  v12 = self->_currentDropAction;
  if (v12 != 10)
  {
LABEL_9:
    if (v12 == 9)
    {
      interfaceOrientation = [(SBLayoutState *)self->_finalLayoutState interfaceOrientation];
      v19 = switcherController;
      floatingConfiguration = 4;
    }

    else if (v12 == 8)
    {
      interfaceOrientation = [(SBLayoutState *)self->_finalLayoutState interfaceOrientation];
      v19 = switcherController;
      floatingConfiguration = 3;
    }

    else
    {
      finalLayoutState = self->_finalLayoutState;
      if (v7 != 3)
      {
        appLayout = [(SBMainDisplayLayoutState *)finalLayoutState appLayout];
        [switcherController frameForItemWithRole:v7 inMainAppLayout:appLayout interfaceOrientation:{-[SBLayoutState interfaceOrientation](self->_finalLayoutState, "interfaceOrientation")}];

        goto LABEL_19;
      }

      interfaceOrientation2 = [(SBLayoutState *)finalLayoutState interfaceOrientation];
      floatingConfiguration = [(SBMainDisplayLayoutState *)self->_finalLayoutState floatingConfiguration];
      v19 = switcherController;
      interfaceOrientation = interfaceOrientation2;
    }

    [v19 frameForFloatingAppLayoutInInterfaceOrientation:interfaceOrientation floatingConfiguration:floatingConfiguration];
    goto LABEL_19;
  }

  if (![(SBSwitcherDropRegionContext *)self->_currentSwitcherDropRegionContext currentDropRegion])
  {
    v12 = self->_currentDropAction;
    goto LABEL_9;
  }

  v13 = self->_currentSwitcherDropRegionContext;
  currentDropRegion = [(SBSwitcherDropRegionContext *)v13 currentDropRegion];
  if (currentDropRegion <= 7)
  {
    if (((1 << currentDropRegion) & 0x78) != 0)
    {
      finalTargetAppLayout = [(SBSwitcherDropRegionContext *)v13 finalTargetAppLayout];
      draggingLeafAppLayout = [(SBSwitcherDropRegionContext *)v13 draggingLeafAppLayout];
      v17 = [draggingLeafAppLayout itemForLayoutRole:1];

      [WeakRetained scaledFrameForLayoutRole:objc_msgSend(finalTargetAppLayout inAppLayout:{"layoutRoleForItem:", v17), finalTargetAppLayout}];
    }

    else
    {
      [(SBSwitcherDropRegionContext *)v13 originRect];
    }
  }

LABEL_19:
  v24 = objc_alloc(MEMORY[0x277D75488]);
  UIRectGetCenter();
  v25 = *(MEMORY[0x277CBF2C0] + 16);
  v29[0] = *MEMORY[0x277CBF2C0];
  v29[1] = v25;
  v29[2] = *(MEMORY[0x277CBF2C0] + 32);
  v26 = [v24 initWithContainer:view center:v29 transform:?];
  v27 = [defaultCopy retargetedPreviewWithTarget:v26];

  [v27 set_springboardPlatterStyle:1];

  return v27;
}

- (void)_handleWillAnimateDropWithAnimator:(id)animator
{
  animatorCopy = animator;
  [(SBDragAndDropWorkspaceTransaction *)self addMilestone:@"SBDragAndDropAppActivationDropAnimationMilestone"];
  windowScene = [(SBWorkspaceTransaction *)self windowScene];
  floatingDockController = [windowScene floatingDockController];
  [floatingDockController dismissFloatingDockIfPresentedAnimated:1 completionHandler:0];
  mEMORY[0x277D66210] = [MEMORY[0x277D66210] sharedInstance];
  [mEMORY[0x277D66210] dismissAppIconForceTouchControllers:0];

  _iconManager = [(SBDragAndDropWorkspaceTransaction *)self _iconManager];
  [_iconManager dismissIconShareSheets];

  [(SBDragAndDropWorkspaceTransaction *)self addMilestone:@"SBDragAndDropAppActivationWaitingToAddToAppsTransactionMilestone"];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__SBDragAndDropWorkspaceTransaction__handleWillAnimateDropWithAnimator___block_invoke;
  v10[3] = &unk_2783A8C18;
  v10[4] = self;
  [animatorCopy addAnimations:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__SBDragAndDropWorkspaceTransaction__handleWillAnimateDropWithAnimator___block_invoke_3;
  v9[3] = &unk_2783ACA48;
  v9[4] = self;
  [animatorCopy addCompletion:v9];
}

void __72__SBDragAndDropWorkspaceTransaction__handleWillAnimateDropWithAnimator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updatePlatterPreviewForSetDown:1 animated:1];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__SBDragAndDropWorkspaceTransaction__handleWillAnimateDropWithAnimator___block_invoke_2;
  block[3] = &unk_2783A8C18;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __72__SBDragAndDropWorkspaceTransaction__handleWillAnimateDropWithAnimator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _runFinalLayoutStateTransaction];
  v2 = *(a1 + 32);

  return [v2 removeMilestone:@"SBDragAndDropAppActivationWaitingToAddToAppsTransactionMilestone"];
}

void *__72__SBDragAndDropWorkspaceTransaction__handleWillAnimateDropWithAnimator___block_invoke_3(uint64_t a1)
{
  if (([*(a1 + 32) isComplete] & 1) == 0)
  {
    [*(*(a1 + 32) + 304) _stopDelayingTransitionCompletionForRequester:@"SBToAppsDelayTransitionCompletionForDropAnimation"];
    [*(a1 + 32) _updatePlatterViewBlurForDropCompletion];
    v2 = *(*(a1 + 32) + 408);
    [v2 dropDestinationAnimationCompleted];
    [*(a1 + 32) removeMilestone:@"SBDragAndDropAppActivationDropAnimationMilestone"];
    *(*(a1 + 32) + 337) = 1;
  }

  result = *(a1 + 32);
  if (result[39] == 10)
  {
    v4 = result[40];

    return [result _noteSwitcherDropAnimationCompletedIfNeededWithContext:v4];
  }

  return result;
}

- (void)_handleSessionDidEnd:(id)end
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = *MEMORY[0x277D67518];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_currentDropAction];
  v13[0] = v4;
  v12[1] = *MEMORY[0x277D67510];
  v5 = MEMORY[0x277CCABB0];
  localContext = [(SBApplicationDropSession *)self->_dropSession localContext];
  v7 = [v5 numberWithInteger:{objc_msgSend(localContext, "startLocation")}];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v9 = MEMORY[0x277D65DD0];
  v10 = v8;
  sharedInstance = [v9 sharedInstance];
  [sharedInstance emitEvent:32 withPayload:v10];

  self->_sessionState = 2;
  [(SBDragAndDropWorkspaceTransaction *)self _uncommandeerContentDrag];
  [(SBDragAndDropWorkspaceTransaction *)self _noteSwitcherDropAnimationCompletedIfNeededWithContext:self->_currentSwitcherDropRegionContext];
  [(SBDragAndDropWorkspaceTransaction *)self removeMilestone:@"SBDragAndDropAppActivationDraggingMilestone"];
}

- (void)_noteSwitcherDropAnimationCompletedIfNeededWithContext:(id)context
{
  if (self->_needsSwitcherDropAnimationCompletedNotification)
  {
    self->_needsSwitcherDropAnimationCompletedNotification = 0;
    contextCopy = context;
    WeakRetained = objc_loadWeakRetained(&self->_switcherController);
    [WeakRetained _noteSwitcherDropAnimationCompletedWithContext:contextCopy];
  }
}

- (void)_uncommandeerContentDrag
{
  uiDragDropSession = [(SBApplicationDropSession *)self->_dropSession uiDragDropSession];
  v8 = SBApplicationDropSessionGetDragItem(uiDragDropSession);

  [v8 setPreviewProvider:0];
  v4 = +[SBDraggingSystemManager sharedInstance];
  systemSession = [(SBApplicationDropSession *)self->_dropSession systemSession];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v4 setCommandeered:0 forDraggingSystemSession:systemSession forReason:v7];
}

- (void)_displayLinkDidUpdate:(id)update
{
  uiDragDropSession = [(SBApplicationDropSession *)self->_dropSession uiDragDropSession];
  [(SBDragAndDropWorkspaceTransaction *)self _updateForWindowDragForSession:?];
  if (self->_windowDragEnteredPlatterZone)
  {
    [(SBDragAndDropWorkspaceTransaction *)self _handleSessionDidUpdate:uiDragDropSession];
  }
}

- (void)_updateForWindowDragForSession:(id)session
{
  sessionCopy = session;
  if (self->_layoutElementForWindowDrag && !self->_windowDragEnteredPlatterZone)
  {
    if (!self->_displayLinkForWindowDrag)
    {
      v5 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__displayLinkDidUpdate_];
      displayLinkForWindowDrag = self->_displayLinkForWindowDrag;
      self->_displayLinkForWindowDrag = v5;

      [(CADisplayLink *)self->_displayLinkForWindowDrag setPaused:0];
      v7 = self->_displayLinkForWindowDrag;
      mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
      [(CADisplayLink *)v7 addToRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];

      self->_windowDragPauseCounter = 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
    view = [WeakRetained view];
    [view bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [sessionCopy locationInView:view];
    v20 = v19;
    v22 = v21;
    [objc_opt_class() prototypeSettingsContentDraggingCommandeerWidth];
    v24 = v23;
    [(SBTouchHistory *)self->_touchHistory averageTouchVelocityOverTimeDuration:0.0416666667];
    if (BSFloatLessThanFloat() && (([objc_opt_class() isDragOverFullscreenRegionAtLocation:v20 inBounds:{v22, v12, v14, v16, v18}] & 1) != 0 || -[SBLayoutElement layoutRole](self->_layoutElementForWindowDrag, "layoutRole") == 3 && (v25 = objc_opt_class(), objc_msgSend(objc_opt_class(), "_screenInsetsForUIDragDropSession:", sessionCopy), objc_msgSend(v25, "screenEdgeForDragOverSideGutterRegionsAtLocation:inBounds:totalContentDragGutterWidth:screenInsets:", v20, v22, v12, v14, v16, v18, v24, v26, v27, v28, v29))))
    {
      ++self->_windowDragPauseCounter;
    }

    else
    {
      self->_windowDragPauseCounter = 0;
    }

    v30 = SBScreenMaximumFramesPerSecond();
    if (v22 <= 150.0)
    {
      v30 = v30 * 0.05;
      windowDragPauseCounter = self->_windowDragPauseCounter;
      self->_windowDragEnteredPlatterZone = windowDragPauseCounter > v30;
      if (windowDragPauseCounter <= v30)
      {
LABEL_23:

        goto LABEL_24;
      }
    }

    else
    {
      self->_windowDragEnteredPlatterZone = 1;
    }

    [(CADisplayLink *)self->_displayLinkForWindowDrag invalidate];
    v32 = self->_displayLinkForWindowDrag;
    self->_displayLinkForWindowDrag = 0;

    v33 = objc_alloc_init(SBWorkspaceApplicationSceneTransitionContext);
    [(SBWorkspaceTransitionContext *)v33 setAnimationDisabled:1];
    layoutRole = [(SBLayoutElement *)self->_layoutElementForWindowDrag layoutRole];
    v35 = layoutRole;
    v69 = view;
    if (layoutRole == 1)
    {
      v36 = [SBPreviousWorkspaceEntity entityWithPreviousLayoutRole:2];
      [(SBWorkspaceApplicationSceneTransitionContext *)v33 setEntity:v36 forLayoutRole:1];

      v37 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
      [(SBWorkspaceApplicationSceneTransitionContext *)v33 setEntity:v37 forLayoutRole:2];
    }

    else
    {
      if (layoutRole != 2)
      {
        if (layoutRole == 3)
        {
          v64 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
          [(SBWorkspaceApplicationSceneTransitionContext *)v33 setEntity:v64 forLayoutRole:1];

          v65 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
          [(SBWorkspaceApplicationSceneTransitionContext *)v33 setEntity:v65 forLayoutRole:2];
        }

        else
        {
          if (layoutRole != 4)
          {
            goto LABEL_20;
          }

          v66 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
          [(SBWorkspaceApplicationSceneTransitionContext *)v33 setEntity:v66 forLayoutRole:1];

          v67 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
          [(SBWorkspaceApplicationSceneTransitionContext *)v33 setEntity:v67 forLayoutRole:2];

          v68 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
          [(SBWorkspaceApplicationSceneTransitionContext *)v33 setEntity:v68 forLayoutRole:3];
        }

        v40 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
        v42 = v33;
        v43 = v40;
        v41 = v35;
LABEL_19:
        [(SBWorkspaceApplicationSceneTransitionContext *)v42 setEntity:v43 forLayoutRole:v41];

LABEL_20:
        transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
        workspace = [transitionRequest workspace];
        displayConfiguration = [transitionRequest displayConfiguration];
        v47 = [workspace createRequestWithOptions:0 displayConfiguration:displayConfiguration];

        [v47 setSource:{objc_msgSend(transitionRequest, "source")}];
        [v47 setEventLabel:@"DragAndDropAppActivation"];
        [v47 setApplicationContext:v33];
        [v47 finalize];
        objc_storeStrong(&self->super.super._transitionRequest, v47);
        layoutStateTransitionCoordinator = [(SBWorkspaceTransaction *)self layoutStateTransitionCoordinator];
        [layoutStateTransitionCoordinator beginTransitionForWorkspaceTransaction:self];

        v49 = SBLayoutRoleSetAppLayout();
        LODWORD(displayConfiguration) = [v49 containsRole:{-[SBLayoutElement layoutRole](self->_layoutElementForWindowDrag, "layoutRole")}];

        if (displayConfiguration)
        {
          applicationContext = [v47 applicationContext];
          layoutState = [applicationContext layoutState];
          v52 = [layoutState elementWithRole:1];

          workspaceEntity = [v52 workspaceEntity];
          applicationSceneEntity = [workspaceEntity applicationSceneEntity];

          v55 = [[SBApplicationSceneUpdateTransaction alloc] initWithApplicationSceneEntity:applicationSceneEntity transitionRequest:v47];
          sceneUpdateTransactionForWindowDrag = self->_sceneUpdateTransactionForWindowDrag;
          self->_sceneUpdateTransactionForWindowDrag = v55;

          v57 = *MEMORY[0x277D76620];
          v70[0] = MEMORY[0x277D85DD0];
          v70[1] = 3221225472;
          v70[2] = __68__SBDragAndDropWorkspaceTransaction__updateForWindowDragForSession___block_invoke;
          v70[3] = &unk_2783A8C18;
          v70[4] = self;
          [v57 sb_performBlockAfterCATransactionSynchronizedCommit:v70];
        }

        applicationContext2 = [v47 applicationContext];
        layoutState2 = [applicationContext2 layoutState];
        currentLayoutState = self->_currentLayoutState;
        self->_currentLayoutState = layoutState2;

        v61 = objc_loadWeakRetained(&self->_delegate);
        sceneIdentifier = [(SBDeviceApplicationSceneHandle *)self->_draggingApplicationSceneHandle sceneIdentifier];
        [v61 dragAndDropTransaction:self didPlatterizeWindowDragWithSceneIdentifier:sceneIdentifier];

        applicationContext3 = [(SBWorkspaceTransitionRequest *)self->super.super._transitionRequest applicationContext];
        [WeakRetained performTransitionWithContext:applicationContext3 animated:1 completion:0];

        view = v69;
        goto LABEL_23;
      }

      v38 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
      [(SBWorkspaceApplicationSceneTransitionContext *)v33 setEntity:v38 forLayoutRole:1];

      v39 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
      [(SBWorkspaceApplicationSceneTransitionContext *)v33 setEntity:v39 forLayoutRole:2];
    }

    v40 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    v41 = 3;
    v42 = v33;
    v43 = v40;
    goto LABEL_19;
  }

LABEL_24:
}

- (void)_updatePlatterViewBlurForDropCompletion
{
  v3 = self->_activePlatterPreview;
  v4 = self->_activeSourceViewProvider;
  if (v4 && ([(SBAppPlatterDragPreview *)v3 mode]!= 2 || [(SBAppPlatterDragPreview *)v3 isAnimatingPlatterViewAlpha]))
  {
    [(SBDragAndDropWorkspaceTransaction *)self addMilestone:@"SBDragAndDropAppActivationPlatterFadeOutMilestone"];
    containerViewForBlurContentView = [(SBAppPlatterDragSourceViewProviding *)v4 containerViewForBlurContentView];
    platterView = [(SBAppPlatterDragPreview *)v3 platterView];
    iconView = [platterView iconView];
    imageView = [iconView imageView];
    [imageView setHidden:0];

    layer = [platterView layer];
    [layer setZPosition:1.79769313e308];

    [containerViewForBlurContentView addSubview:platterView];
    [containerViewForBlurContentView bounds];
    [platterView setBounds:?];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __76__SBDragAndDropWorkspaceTransaction__updatePlatterViewBlurForDropCompletion__block_invoke;
    v11[3] = &unk_2783A92D8;
    v11[4] = self;
    v12 = platterView;
    v10 = platterView;
    [(SBAppPlatterDragPreview *)v3 setPlatterViewAlphaAnimationCompletionBlock:v11];
  }
}

uint64_t __76__SBDragAndDropWorkspaceTransaction__updatePlatterViewBlurForDropCompletion__block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeMilestone:@"SBDragAndDropAppActivationPlatterFadeOutMilestone"];
  v2 = *(a1 + 40);

  return [v2 removeFromSuperview];
}

- (double)_platterScale
{
  [(SBMedusaSettings *)self->_medusaSettings iconPlatterScale];
  v4 = v3;
  localContext = [(SBApplicationDropSession *)self->_dropSession localContext];
  if ([localContext startLocation] == 8)
  {
  }

  else
  {
    isWindowTearOff = [(SBApplicationDropSession *)self->_dropSession isWindowTearOff];

    if (!isWindowTearOff)
    {
      currentDropAction = self->_currentDropAction;
      goto LABEL_9;
    }
  }

  if (!self->_currentDropAction)
  {
    goto LABEL_11;
  }

  [(SBMedusaSettings *)self->_medusaSettings windowPlatterScale];
  currentDropAction = self->_currentDropAction;
  if (currentDropAction == 1)
  {
    v4 = 0.6;
  }

  else
  {
    v4 = v7;
  }

LABEL_9:
  if (currentDropAction == 10)
  {
    [(SBDragAndDropWorkspaceTransaction *)self _platterScaleForSwitcherDropContext:self->_currentSwitcherDropRegionContext];
    v4 = v9;
  }

LABEL_11:
  v10 = +[SBPlatformController sharedInstance];
  isiPadMini = [v10 isiPadMini];

  result = v4 / 0.9;
  if (!isiPadMini)
  {
    return v4;
  }

  return result;
}

- (double)_platterScaleForSwitcherDropContext:(id)context
{
  medusaSettings = self->_medusaSettings;
  contextCopy = context;
  [(SBMedusaSettings *)medusaSettings cardPlatterScale];
  v7 = v6;
  draggingLeafAppLayout = [contextCopy draggingLeafAppLayout];
  environment = [draggingLeafAppLayout environment];

  currentDropRegion = [contextCopy currentDropRegion];
  intersectingAppLayout = [contextCopy intersectingAppLayout];

  environment2 = [intersectingAppLayout environment];
  if (environment == 2)
  {
    v13 = currentDropRegion;
  }

  else
  {
    v13 = environment2;
  }

  if (v13 != 2)
  {
    return v7;
  }

  v14 = self->_medusaSettings;

  [(SBMedusaSettings *)v14 floatingCardPlatterScale];
  return result;
}

- (CGSize)_platterSizeForDropAction:(int64_t)action proposedDropLayoutState:(id)state setDown:(BOOL)down
{
  downCopy = down;
  stateCopy = state;
  windowScene = [(SBWorkspaceTransaction *)self windowScene];
  switcherController = [windowScene switcherController];

  windowManagementContext = [switcherController windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  v13 = *MEMORY[0x277CBF3A8];
  v14 = *(MEMORY[0x277CBF3A8] + 8);
  if (!isChamoisOrFlexibleWindowing)
  {
    if (action > 4)
    {
      if ((action - 6) < 4)
      {
        [switcherController frameForFloatingAppLayoutInInterfaceOrientation:objc_msgSend(stateCopy floatingConfiguration:{"interfaceOrientation"), objc_msgSend(stateCopy, "floatingConfiguration")}];
        v13 = v19;
        v14 = v20;
        goto LABEL_16;
      }

      if (action != 5)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if ((action - 1) < 2)
      {
LABEL_8:
        v18 = &SBLayoutRolePrimary;
LABEL_15:
        v23 = *v18;
        appLayout = [stateCopy appLayout];
        [switcherController frameForItemWithRole:v23 inMainAppLayout:appLayout interfaceOrientation:{objc_msgSend(stateCopy, "interfaceOrientation")}];
        v13 = v25;
        v14 = v26;

        goto LABEL_16;
      }

      if (action != 3)
      {
        if (action != 4)
        {
          goto LABEL_16;
        }

        goto LABEL_8;
      }
    }

    v18 = &SBLayoutRoleSide;
    goto LABEL_15;
  }

  if ((action - 1) < 5)
  {
    appLayout2 = [stateCopy appLayout];
    [switcherController frameForItemWithRole:1 inMainAppLayout:appLayout2 interfaceOrientation:{objc_msgSend(stateCopy, "interfaceOrientation")}];
    v13 = v16;
    v14 = v17;

    goto LABEL_16;
  }

LABEL_12:
  if (action == 10)
  {
    [(SBDragAndDropWorkspaceTransaction *)self _platterSizeForSwitcherDropContext:self->_currentSwitcherDropRegionContext setDown:downCopy];
    v13 = v21;
    v14 = v22;
  }

LABEL_16:
  if (!downCopy)
  {
    [(SBDragAndDropWorkspaceTransaction *)self _platterScale];
    v14 = v14 * v27;
    v13 = v13 * v27;
  }

  v28 = v13;
  v29 = v14;
  result.height = v29;
  result.width = v28;
  return result;
}

- (CGSize)_platterSizeForSwitcherDropContext:(id)context setDown:(BOOL)down
{
  downCopy = down;
  contextCopy = context;
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  draggingLeafAppLayout = [contextCopy draggingLeafAppLayout];
  currentDropRegion = [contextCopy currentDropRegion];
  currentDropAction = [contextCopy currentDropAction];
  if (downCopy)
  {
    appLayouts = [WeakRetained appLayouts];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __80__SBDragAndDropWorkspaceTransaction__platterSizeForSwitcherDropContext_setDown___block_invoke;
    v25[3] = &unk_2783A8CB8;
    v26 = draggingLeafAppLayout;
    draggingLeafAppLayout = [appLayouts bs_firstObjectPassingTest:v25];
  }

  windowScene = [(SBWorkspaceTransaction *)self windowScene];
  switcherController = [windowScene switcherController];

  switcherInterfaceOrientation = [WeakRetained switcherInterfaceOrientation];
  if ([draggingLeafAppLayout environment] == 1 || currentDropAction == 3)
  {
    [switcherController frameForItemWithRole:1 inMainAppLayout:draggingLeafAppLayout interfaceOrientation:switcherInterfaceOrientation];
    goto LABEL_8;
  }

  if ([draggingLeafAppLayout environment] == 2)
  {
    [switcherController frameForFloatingAppLayoutInInterfaceOrientation:switcherInterfaceOrientation floatingConfiguration:2];
LABEL_8:
    v17 = v15;
    v18 = v16;
    goto LABEL_10;
  }

  v17 = *MEMORY[0x277CBF3A8];
  v18 = *(MEMORY[0x277CBF3A8] + 8);
LABEL_10:
  if (currentDropRegion <= 7)
  {
    if (((1 << currentDropRegion) & 0x8D) != 0)
    {
      if (currentDropAction == 3)
      {
        [contextCopy targetRect];
        v17 = v19;
        v18 = v20;
        goto LABEL_19;
      }

      [(SBAppPlatterDragPreview *)self->_activePlatterPreview sourceViewScale];
      SBTransformedSizeWithScale();
    }

    else if (((1 << currentDropRegion) & 0x70) != 0)
    {
      [contextCopy scaledIntersectingAppLayoutSize];
    }

    else
    {
      [(SBAppPlatterDragPreview *)self->_activePlatterPreview size];
    }

    v17 = v21;
    v18 = v22;
  }

LABEL_19:

  v23 = v17;
  v24 = v18;
  result.height = v24;
  result.width = v23;
  return result;
}

uint64_t __80__SBDragAndDropWorkspaceTransaction__platterSizeForSwitcherDropContext_setDown___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 itemForLayoutRole:1];
  v5 = [v4 uniqueIdentifier];
  v6 = [v3 containsItemWithUniqueIdentifier:v5];

  return v6;
}

- (double)_platterSourceViewScaleForSetDropAction:(int64_t)action setDown:(BOOL)down
{
  downCopy = down;
  [(SBAppPlatterDragPreview *)self->_activePlatterPreview sourceViewScale];
  if (!downCopy)
  {
    return v7;
  }

  v8 = 1.0;
  if (action == 10)
  {
    WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
    sceneIdentifier = [(SBDeviceApplicationSceneHandle *)self->_draggingApplicationSceneHandle sceneIdentifier];
    appLayouts = [WeakRetained appLayouts];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __85__SBDragAndDropWorkspaceTransaction__platterSourceViewScaleForSetDropAction_setDown___block_invoke;
    v16[3] = &unk_2783A8CB8;
    v17 = sceneIdentifier;
    v12 = sceneIdentifier;
    v13 = [appLayouts bs_firstObjectPassingTest:v16];

    [WeakRetained contentPageViewScaleForAppLayout:v13];
    v8 = v14;
  }

  return v8;
}

- (id)_cornerRadiusConfigurationForDropAction:(int64_t)action proposedDropLayoutState:(id)state setDown:(BOOL)down mode:(unint64_t)mode
{
  downCopy = down;
  v33 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (mode != 2 && !downCopy)
  {
    v11 = 0.0;
    if ((action - 1) <= 9)
    {
      v11 = dbl_21F8A7278[action - 1];
    }

    v12 = objc_alloc(MEMORY[0x277CF0BE8]);
    v13 = v11;
    goto LABEL_10;
  }

  v14 = [(SBDragAndDropWorkspaceTransaction *)self _layoutRoleForDropAction:action];
  v15 = v14;
  if (mode == 2 && !self->_layoutElementForWindowDrag)
  {
    activeSourceViewProvider = self->_activeSourceViewProvider;
    if (activeSourceViewProvider)
    {
      initialCornerRadiusConfiguration = [(SBAppPlatterDragSourceViewProviding *)activeSourceViewProvider initialCornerRadiusConfiguration];
      goto LABEL_11;
    }

    v12 = objc_alloc(MEMORY[0x277CF0BE8]);
    v13 = 10.0;
LABEL_10:
    initialCornerRadiusConfiguration = [v12 initWithCornerRadius:v13];
LABEL_11:
    v18 = initialCornerRadiusConfiguration;
    goto LABEL_12;
  }

  if (v14 == 3)
  {
    v16 = objc_alloc(MEMORY[0x277CF0BE8]);
    [(SBMedusaSettings *)self->_medusaSettings cornerRadiusForFloatingApps];
    v12 = v16;
    goto LABEL_10;
  }

  v20 = [stateCopy elementWithRole:v14];
  v18 = SBDefaultCornerRadiusConfigurationForElementInLayoutState(v20, stateCopy);

  if (mode == 2 && !downCopy)
  {
    [v18 topLeft];
    v22 = v21;
    [v18 topRight];
    v30 = v23;
    [v18 bottomLeft];
    v31 = v24;
    [v18 bottomRight];
    v32 = v25;
    for (i = 8; i != 32; i += 8)
    {
      if (v22 < *&v29[i])
      {
        v22 = *&v29[i];
      }
    }

    v27 = [objc_alloc(MEMORY[0x277CF0BE8]) initWithCornerRadius:v22];

    v18 = v27;
  }

LABEL_12:

  return v18;
}

- (id)_cornerRadiusForSwitcherDragContext:(id)context setDown:(BOOL)down sourceViewScale:(double)scale
{
  downCopy = down;
  contextCopy = context;
  v9 = contextCopy;
  if (downCopy)
  {
    finalTargetAppLayout = [contextCopy finalTargetAppLayout];
    draggingLeafAppLayout = [v9 draggingLeafAppLayout];

    v12 = [draggingLeafAppLayout itemForLayoutRole:1];
    v13 = [finalTargetAppLayout layoutRoleForItem:v12];
  }

  else
  {
    finalTargetAppLayout = [contextCopy draggingAppLayout];

    v13 = 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  [WeakRetained cornerRadiiForLayoutRole:v13 inAppLayout:finalTargetAppLayout];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  scale = [objc_alloc(MEMORY[0x277CF0BE8]) initWithTopLeft:v16 * scale bottomLeft:v18 * scale bottomRight:v20 * scale topRight:v22 * scale];

  return scale;
}

- (void)_getPlatterDiffuseShadowParameters:(SBDragPreviewShadowParameters *)parameters rimShadowParameters:(SBDragPreviewShadowParameters *)shadowParameters diffuseFilters:(id *)filters rimFilters:(id *)rimFilters forDropAction:(int64_t)action setDown:(BOOL)down mode:(unint64_t)mode userInterfaceStyle:(int64_t)self0
{
  v58[1] = *MEMORY[0x277D85DE8];
  if (mode == 2)
  {
    if (!self->_layoutElementForWindowDrag)
    {
      v17 = self->_activeSourceViewProvider;
      [(SBAppPlatterDragSourceViewProviding *)v17 initialDiffuseShadowParameters];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      [(SBAppPlatterDragSourceViewProviding *)v17 initialRimShadowParameters];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;
      initialDiffuseShadowFilters = [(SBAppPlatterDragSourceViewProviding *)v17 initialDiffuseShadowFilters];
      initialRimShadowFilters = [(SBAppPlatterDragSourceViewProviding *)v17 initialRimShadowFilters];
LABEL_27:

      goto LABEL_28;
    }

LABEL_5:
    v17 = self->_medusaSettings;
    if ([(SBDragAndDropWorkspaceTransaction *)self _layoutRoleForDropAction:action]== 3)
    {
      if (style == 2)
      {
        [(SBAppPlatterDragSourceViewProviding *)v17 coronaDiffuseShadowOpacity];
      }

      else
      {
        [(SBAppPlatterDragSourceViewProviding *)v17 diffuseShadowOpacity];
      }

      v19 = v36;
      [(SBAppPlatterDragSourceViewProviding *)v17 diffuseShadowRadius];
      v21 = v38;
      userInterfaceLayoutDirection = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
      [(SBAppPlatterDragSourceViewProviding *)v17 diffuseShadowOffsetHorizontal];
      if (userInterfaceLayoutDirection == 1)
      {
        v40 = -v40;
      }

      if (self->_currentDropAction == 6)
      {
        v23 = -v40;
      }

      else
      {
        v23 = v40;
      }

      [(SBAppPlatterDragSourceViewProviding *)v17 diffuseShadowOffsetVertical];
      v25 = v41;
      if (style == 2)
      {
        [(SBAppPlatterDragSourceViewProviding *)v17 coronaRimShadowOpacity];
        v27 = v42;
        [(SBAppPlatterDragSourceViewProviding *)v17 rimShadowRadius];
        v29 = v43;
        v44 = MEMORY[0x277CBF3A8];
        v45 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA640]];
        v46 = MEMORY[0x277CCAE60];
        medusaSettings = self->_medusaSettings;
        if (medusaSettings)
        {
          [(SBMedusaSettings *)medusaSettings coronaVibrantColorMatrixInput];
        }

        else
        {
          memset(v56, 0, sizeof(v56));
        }

        v31 = *v44;
        v33 = v44[1];
        v53 = [v46 valueWithCAColorMatrix:v56];
        [v45 setValue:v53 forKey:@"inputColorMatrix"];

        v58[0] = v45;
        initialDiffuseShadowFilters = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:1];
        v57 = v45;
        initialRimShadowFilters = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];

        goto LABEL_27;
      }
    }

    else
    {
      v23 = 0.0;
      if (mode != 2 || down)
      {
        initialRimShadowFilters = 0;
        initialDiffuseShadowFilters = 0;
        v33 = 0.0;
        v31 = 0.0;
        v29 = 0.0;
        v27 = 0.0;
        v25 = 0.0;
        v21 = 0.0;
        v19 = 0.0;
        goto LABEL_27;
      }

      [(SBAppPlatterDragSourceViewProviding *)v17 diffuseShadowOpacity];
      v19 = v48;
      [(SBAppPlatterDragSourceViewProviding *)v17 diffuseShadowRadius];
      v21 = v49;
      [(SBAppPlatterDragSourceViewProviding *)v17 diffuseShadowOffsetVertical];
      v25 = v50;
    }

    [(SBAppPlatterDragSourceViewProviding *)v17 rimShadowOpacity];
    v27 = v51;
    [(SBAppPlatterDragSourceViewProviding *)v17 rimShadowRadius];
    v29 = v52;
    initialRimShadowFilters = 0;
    initialDiffuseShadowFilters = 0;
    v31 = *MEMORY[0x277CBF3A8];
    v33 = *(MEMORY[0x277CBF3A8] + 8);
    goto LABEL_27;
  }

  if (down)
  {
    goto LABEL_5;
  }

  v37 = action - 1;
  v33 = 0.0;
  initialRimShadowFilters = 0;
  initialDiffuseShadowFilters = 0;
  if ((action - 1) > 9)
  {
    v31 = 0.0;
    v29 = 0.0;
    v27 = 0.0;
    v25 = 0.0;
    v23 = 0.0;
    v21 = 0.0;
    v19 = 0.0;
  }

  else
  {
    v25 = dbl_21F8A72C8[v37];
    v21 = dbl_21F8A7318[v37];
    v19 = 0.25;
    v31 = 0.0;
    v29 = 0.0;
    v27 = 0.0;
    v23 = 0.0;
  }

LABEL_28:
  if (parameters)
  {
    parameters->shadowOpacity = v19;
    parameters->shadowRadius = v21;
    parameters->shadowOffset.width = v23;
    parameters->shadowOffset.height = v25;
  }

  if (shadowParameters)
  {
    shadowParameters->shadowOpacity = v27;
    shadowParameters->shadowRadius = v29;
    shadowParameters->shadowOffset.width = v31;
    shadowParameters->shadowOffset.height = v33;
  }

  if (filters)
  {
    v54 = initialDiffuseShadowFilters;
    *filters = initialDiffuseShadowFilters;
  }

  if (rimFilters)
  {
    v55 = initialRimShadowFilters;
    *rimFilters = initialRimShadowFilters;
  }
}

- (void)_updatePlatterPreviewForSetDown:(BOOL)down animated:(BOOL)animated
{
  animatedCopy = animated;
  downCopy = down;
  if (([(SBDragAndDropWorkspaceTransaction *)self isInterrupted]& 1) != 0)
  {
    return;
  }

  v7 = self->_activePlatterPreview;
  currentDropAction = self->_currentDropAction;
  v9 = self->_currentDropActionProposedLayoutState;
  if (self->_dragExitedDropZone)
  {
    WeakRetained = objc_loadWeakRetained(&self->_switcherController);
    windowManagementContext = [WeakRetained windowManagementContext];
    if ([windowManagementContext isChamoisOrFlexibleWindowing])
    {
      dropZones = [(SBApplicationDropSession *)self->_dropSession dropZones];

      if (!dropZones)
      {
        v13 = 0;
        goto LABEL_12;
      }
    }

    else
    {
    }

LABEL_11:
    v13 = 2;
    goto LABEL_12;
  }

  if (self->_layoutElementForWindowDrag && !self->_windowDragEnteredPlatterZone)
  {
    goto LABEL_11;
  }

  if (!currentDropAction)
  {
    localContext = [(SBApplicationDropSession *)self->_dropSession localContext];
    startLocation = [localContext startLocation];

    if (startLocation == 8)
    {
      v14 = 7;
      v45 = [(SBDragAndDropWorkspaceTransaction *)self _transitionRequestForDropAction:7];
      [v45 finalize];
      applicationContext = [v45 applicationContext];
      layoutState = [applicationContext layoutState];
      v48 = v9;
      v9 = layoutState;

      v13 = 1;
    }

    else
    {
      sourceView = [(SBAppPlatterDragPreview *)v7 sourceView];
      v13 = sourceView != 0;

      v14 = 0;
    }

    goto LABEL_13;
  }

  v13 = !self->_draggingExistingItemFromActiveLayoutState;
LABEL_12:
  v14 = currentDropAction;
LABEL_13:
  currentSwitcherDropRegionContext = self->_currentSwitcherDropRegionContext;
  if (currentSwitcherDropRegionContext)
  {
    if ([(SBSwitcherDropRegionContext *)currentSwitcherDropRegionContext currentDropRegion]== 1)
    {
      v13 = 2;
    }

    else if ([(SBSwitcherDropRegionContext *)self->_currentSwitcherDropRegionContext isSwap])
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  v60 = animatedCopy;
  if (self->_sessionState == 2)
  {
    v58 = v14;
    v16 = v7;
    v17 = v9;
    finalLayoutState = self->_finalLayoutState;
    if (!finalLayoutState)
    {
      finalLayoutState = self->_currentLayoutState;
    }

    v19 = finalLayoutState;
    v20 = objc_loadWeakRetained(&self->_switcherContentController);
    appLayout = [(SBMainDisplayLayoutState *)v19 appLayout];
    v22 = [v20 _isAppLayoutBlurred:appLayout];

    if (self->_layoutStateTransitionCompleted || self->_currentWorkspaceTransaction)
    {
      v23 = [(NSMutableSet *)self->_pendingSceneUpdatesTransactions count];
      v24 = 2;
      if (v22)
      {
        v24 = v13;
      }

      if (!v23)
      {
        v13 = v24;
      }
    }

    v9 = v17;
    v7 = v16;

    v14 = v58;
  }

  if (v13 == 1)
  {
    platterView = [(SBAppPlatterDragPreview *)v7 platterView];

    if (!platterView)
    {
      objc_initWeak(location, self);
      draggingApplicationSceneHandle = self->_draggingApplicationSceneHandle;
      v83[0] = MEMORY[0x277D85DD0];
      v83[1] = 3221225472;
      v83[2] = __78__SBDragAndDropWorkspaceTransaction__updatePlatterPreviewForSetDown_animated___block_invoke;
      v83[3] = &unk_2783B1A70;
      objc_copyWeak(&v84, location);
      v85 = downCopy;
      [(SBDragAndDropWorkspaceTransaction *)self _configurePlatterPreview:v7 forSceneHandle:draggingApplicationSceneHandle completion:v83];
      objc_destroyWeak(&v84);
      objc_destroyWeak(location);
    }
  }

  [(SBDragAndDropWorkspaceTransaction *)self _platterSourceViewScaleForSetDropAction:currentDropAction setDown:downCopy];
  v28 = v27;
  [(SBDragAndDropWorkspaceTransaction *)self _platterSizeForDropAction:v14 proposedDropLayoutState:v9 setDown:downCopy];
  v30 = v29;
  v32 = v31;
  if (self->_currentDropAction == 10)
  {
    [(SBDragAndDropWorkspaceTransaction *)self _cornerRadiusForSwitcherDragContext:self->_currentSwitcherDropRegionContext setDown:downCopy sourceViewScale:v28];
  }

  else
  {
    [(SBDragAndDropWorkspaceTransaction *)self _cornerRadiusConfigurationForDropAction:v14 proposedDropLayoutState:v9 setDown:downCopy mode:v13];
  }
  v33 = ;
  *location = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0;
  v78 = 0;
  traitCollection = [(SBAppPlatterDragPreview *)v7 traitCollection];
  -[SBDragAndDropWorkspaceTransaction _getPlatterDiffuseShadowParameters:rimShadowParameters:diffuseFilters:rimFilters:forDropAction:setDown:mode:userInterfaceStyle:](self, "_getPlatterDiffuseShadowParameters:rimShadowParameters:diffuseFilters:rimFilters:forDropAction:setDown:mode:userInterfaceStyle:", location, &v79, &v78, &v77, v14, downCopy, v13, [traitCollection userInterfaceStyle]);
  v35 = v78;
  v36 = v77;

  if (downCopy)
  {
    v37 = 3;
  }

  else if (self->_layoutElementForWindowDrag)
  {
    if (self->_windowLiftAnimationCompleted)
    {
      v37 = 2;
    }

    else
    {
      v37 = 1;
    }
  }

  else
  {
    v37 = 2;
  }

  v59 = v9;
  [(SBDragAndDropWorkspaceTransaction *)self _updateActiveSourceViewProviderWithDragState:v37];
  v38 = 0.0;
  if (self->_finalLayoutState)
  {
    interfaceOrientation = [(SBLayoutState *)self->_currentLayoutState interfaceOrientation];
    interfaceOrientation2 = [(SBLayoutState *)self->_finalLayoutState interfaceOrientation];
    if (interfaceOrientation != interfaceOrientation2)
    {
      v41 = 0.0;
      v42 = 0.0;
      if (interfaceOrientation2 != 1)
      {
        if (interfaceOrientation2 == 3)
        {
          v42 = 1.57079633;
        }

        else if (interfaceOrientation2 == 4)
        {
          v42 = -1.57079633;
        }

        else
        {
          v42 = 3.14159265;
          if (interfaceOrientation2 != 2)
          {
            v42 = 0.0;
          }
        }
      }

      if (interfaceOrientation != 1)
      {
        if (interfaceOrientation == 3)
        {
          v41 = 1.57079633;
        }

        else if (interfaceOrientation == 4)
        {
          v41 = -1.57079633;
        }

        else
        {
          v41 = 3.14159265;
          if (interfaceOrientation != 2)
          {
            v41 = 0.0;
          }
        }
      }

      v38 = v42 - v41;
    }
  }

  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __78__SBDragAndDropWorkspaceTransaction__updatePlatterPreviewForSetDown_animated___block_invoke_2;
  v62[3] = &unk_2783BA2D8;
  v62[4] = self;
  v49 = v7;
  v63 = v49;
  v67 = v13;
  v68 = v30;
  v69 = v32;
  v70 = v28;
  v71 = v38;
  v50 = v33;
  v64 = v50;
  v72 = *location;
  v73 = v82;
  v74 = v79;
  v75 = v80;
  v51 = v35;
  v65 = v51;
  v52 = v36;
  v66 = v52;
  v76 = v37;
  v53 = MEMORY[0x223D6F7F0](v62);
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __78__SBDragAndDropWorkspaceTransaction__updatePlatterPreviewForSetDown_animated___block_invoke_3;
  v61[3] = &unk_2783AE4B8;
  v61[4] = self;
  v54 = MEMORY[0x223D6F7F0](v61);
  if (v60)
  {
    v55 = MEMORY[0x277D75D18];
    platterAnimationSettings = [(SBMedusaSettings *)self->_medusaSettings platterAnimationSettings];
    [v55 _animateUsingSpringBehavior:platterAnimationSettings tracking:0 animations:v53 completion:v54];
  }

  else
  {
    v53[2](v53);
    v54[2](v54, 1, 0);
  }
}

void __78__SBDragAndDropWorkspaceTransaction__updatePlatterPreviewForSetDown_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v4 = [WeakRetained isInterrupted];
    v3 = v5;
    if ((v4 & 1) == 0)
    {
      [v5 _updatePlatterPreviewForSetDown:*(a1 + 40) animated:1];
      v3 = v5;
    }
  }
}

uint64_t __78__SBDragAndDropWorkspaceTransaction__updatePlatterPreviewForSetDown_animated___block_invoke_2(uint64_t a1)
{
  ++*(*(a1 + 32) + 440);
  [*(a1 + 40) setMode:*(a1 + 72)];
  [*(a1 + 40) setPlatterSize:{*(a1 + 80), *(a1 + 88)}];
  [*(a1 + 40) setSourceViewScale:*(a1 + 96)];
  [*(a1 + 40) setRotation:*(a1 + 104)];
  [*(a1 + 40) setCornerRadiusConfiguration:*(a1 + 48)];
  [*(a1 + 40) setDiffuseShadowParameters:{*(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136)}];
  [*(a1 + 40) setRimShadowParameters:{*(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168)}];
  [*(a1 + 40) setDiffuseShadowFilters:*(a1 + 56)];
  [*(a1 + 40) setRimShadowFilters:*(a1 + 64)];
  [*(a1 + 40) setDragState:*(a1 + 176)];
  v2 = *(a1 + 40);

  return [v2 layoutIfNeeded];
}

- (void)_updatePlatterPreviewWithUpdatedSourceView
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_updateActiveSourceViewProviderWithDragState:(unint64_t)state
{
  activeSourceViewProvider = self->_activeSourceViewProvider;
  if (activeSourceViewProvider)
  {
    [(SBAppPlatterDragSourceViewProviding *)activeSourceViewProvider setDragging:state > 1];
  }
}

- (void)_runFinalLayoutStateTransaction
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"newChildTransaction != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(self);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBDragAndDropWorkspaceTransaction.m";
    v16 = 1024;
    v17 = 1810;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_addChildWorkspaceTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = self->_currentWorkspaceTransaction;
  if (v5)
  {
    transitionRequest = [(SBWorkspaceTransaction *)transactionCopy transitionRequest];
    [(SBWorkspaceTransaction *)v5 interruptForTransitionRequest:transitionRequest];
  }

  v7 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(SBDragAndDropWorkspaceTransaction *)transactionCopy _addChildWorkspaceTransaction:v7];
  }

  currentWorkspaceTransaction = self->_currentWorkspaceTransaction;
  self->_currentWorkspaceTransaction = transactionCopy;
  v9 = transactionCopy;

  [(SBDragAndDropWorkspaceTransaction *)self addChildTransaction:v9];
}

- (id)_currentGestureEventForGesture:(id)gesture
{
  v4 = SBGestureModifierPhaseForGestureState([gesture state]);
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  view = [WeakRetained view];

  uiDragDropSession = [(SBApplicationDropSession *)self->_dropSession uiDragDropSession];
  v8 = [SBDragAndDropGestureSwitcherModifierEvent alloc];
  gestureID = self->_gestureID;
  selectedAppLayout = [(SBFluidSwitcherGesture *)self->_dragAndDropGesture selectedAppLayout];
  v11 = [(SBGestureSwitcherModifierEvent *)v8 initWithGestureID:gestureID selectedAppLayout:selectedAppLayout gestureType:6 phase:v4];

  [uiDragDropSession locationInView:view];
  [(SBGestureSwitcherModifierEvent *)v11 setLocationInContainerView:?];
  [(SBTouchHistory *)self->_touchHistory averageTouchVelocityOverTimeDuration:0.0166666667];
  [(SBGestureSwitcherModifierEvent *)v11 setVelocityInContainerView:?];
  [(SBGestureSwitcherModifierEvent *)v11 setTouchHistoryProvider:self->_touchHistory];
  [(SBDragAndDropGestureSwitcherModifierEvent *)v11 setDropAction:self->_currentDropAction];
  sceneIdentifier = [(SBDeviceApplicationSceneHandle *)self->_draggingApplicationSceneHandle sceneIdentifier];
  [(SBDragAndDropGestureSwitcherModifierEvent *)v11 setDraggedSceneIdentifier:sceneIdentifier];

  if (self->_currentSwitcherDropRegionContext)
  {
    selectedLayoutRole = [(SBFluidSwitcherGesture *)self->_dragAndDropGesture selectedLayoutRole];
  }

  else
  {
    selectedLayoutRole = [(SBLayoutElement *)self->_layoutElementForWindowDrag layoutRole];
  }

  [(SBDragAndDropGestureSwitcherModifierEvent *)v11 setDraggedSceneLayoutRole:selectedLayoutRole];
  [(SBDragAndDropWorkspaceTransaction *)self _platterFrameInSwitcherView];
  [(SBDragAndDropGestureSwitcherModifierEvent *)v11 setPlatterViewFrame:?];
  [(SBDragAndDropWorkspaceTransaction *)self _platterScale];
  [(SBDragAndDropGestureSwitcherModifierEvent *)v11 setPlatterScale:?];
  [(SBDragAndDropGestureSwitcherModifierEvent *)v11 setSwitcherDropRegionContext:self->_currentSwitcherDropRegionContext];
  localContext = [(SBApplicationDropSession *)self->_dropSession localContext];
  -[SBDragAndDropGestureSwitcherModifierEvent setWindowDrag:](v11, "setWindowDrag:", [localContext startLocation] == 8);

  localContext2 = [(SBApplicationDropSession *)self->_dropSession localContext];
  -[SBDragAndDropGestureSwitcherModifierEvent setSwitcherDrag:](v11, "setSwitcherDrag:", [localContext2 startLocation] == 11);

  [(SBDragAndDropGestureSwitcherModifierEvent *)v11 setPreviewHasLifted:self->_windowLiftAnimationCompleted];
  [(SBDragAndDropGestureSwitcherModifierEvent *)v11 setPlatterized:self->_windowDragEnteredPlatterZone];
  if ([(SBDragAndDropWorkspaceTransaction *)self isInterrupted])
  {
    [(SBGestureSwitcherModifierEvent *)v11 setCanceled:1];
  }

  else
  {
    error = [(SBDragAndDropWorkspaceTransaction *)self error];
    [(SBGestureSwitcherModifierEvent *)v11 setCanceled:error != 0];
  }

  return v11;
}

- (void)_begin
{
  v45.receiver = self;
  v45.super_class = SBDragAndDropWorkspaceTransaction;
  [(SBDragAndDropWorkspaceTransaction *)&v45 _begin];
  v3 = +[SBKeyboardSuppressionManager sharedInstance];
  transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
  displayIdentity = [transitionRequest displayIdentity];
  [v3 startSuppressingKeyboardWithReason:@"medusa-drag" predicate:0 displayIdentity:displayIdentity];

  v6 = [SBApp deviceOrientationUpdateDeferralAssertionWithReason:@"SBDragAndDropAppActivationDisableRotationReason"];
  deferOrientationUpdatesForDragAndDropAssertion = self->_deferOrientationUpdatesForDragAndDropAssertion;
  self->_deferOrientationUpdatesForDragAndDropAssertion = v6;

  self->_performedDrop = 0;
  [(SBDragAndDropWorkspaceTransaction *)self addMilestone:@"SBDragAndDropAppActivationDraggingMilestone"];
  transactionForDismissingSearchTransientOverlay = [SBApp transactionForDismissingSearchTransientOverlay];
  if (transactionForDismissingSearchTransientOverlay)
  {
    [(SBDragAndDropWorkspaceTransaction *)self addChildTransaction:transactionForDismissingSearchTransientOverlay withSchedulingPolicy:0];
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  gestureID = self->_gestureID;
  self->_gestureID = uUID;

  if (!self->_currentDropActionProposedLayoutState)
  {
    [(SBDragAndDropWorkspaceTransaction *)self _updateCurrentDropActionProposedLayoutState];
  }

  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  objc_initWeak(&location, self);
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __43__SBDragAndDropWorkspaceTransaction__begin__block_invoke;
  v42[3] = &unk_2783B0290;
  objc_copyWeak(&v43, &location);
  v12 = MEMORY[0x223D6F7F0](v42);
  v13 = [[SBFluidSwitcherGesture alloc] initWithType:6 eventProvider:v12];
  dragAndDropGesture = self->_dragAndDropGesture;
  self->_dragAndDropGesture = v13;

  layoutElementForWindowDrag = self->_layoutElementForWindowDrag;
  if (layoutElementForWindowDrag)
  {
    layoutRole = [(SBLayoutElement *)layoutElementForWindowDrag layoutRole];
    currentLayoutState = self->_currentLayoutState;
    if (layoutRole == 3)
    {
      floatingAppLayout = [(SBMainDisplayLayoutState *)currentLayoutState floatingAppLayout];
      [floatingAppLayout anyLeafAppLayout];
    }

    else
    {
      floatingAppLayout = [(SBMainDisplayLayoutState *)currentLayoutState appLayout];
      [floatingAppLayout leafAppLayoutForRole:{-[SBLayoutElement layoutRole](self->_layoutElementForWindowDrag, "layoutRole")}];
    }
    v22 = ;
    goto LABEL_12;
  }

  if ([(SBMainDisplayLayoutState *)self->_currentLayoutState unlockedEnvironmentMode]== 2)
  {
    sceneIdentifier = [(SBDeviceApplicationSceneHandle *)self->_draggingApplicationSceneHandle sceneIdentifier];
    appLayouts = [WeakRetained appLayouts];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __43__SBDragAndDropWorkspaceTransaction__begin__block_invoke_2;
    v40[3] = &unk_2783A8CB8;
    v21 = sceneIdentifier;
    v41 = v21;
    v22 = [appLayouts bs_firstObjectPassingTest:v40];

    allItems = [v22 allItems];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __43__SBDragAndDropWorkspaceTransaction__begin__block_invoke_3;
    v38[3] = &unk_2783A8C90;
    floatingAppLayout = v21;
    v39 = floatingAppLayout;
    v24 = [allItems bs_firstObjectPassingTest:v38];

    -[SBFluidSwitcherGesture _setSelectedLayoutRole:](self->_dragAndDropGesture, "_setSelectedLayoutRole:", [v22 layoutRoleForItem:v24]);
LABEL_12:

    goto LABEL_13;
  }

  v22 = 0;
LABEL_13:
  appLayout = [(SBMainDisplayLayoutState *)self->_initialLayoutState appLayout];
  sceneIdentity = [(SBApplicationDropSession *)self->_dropSession sceneIdentity];
  identifier = [sceneIdentity identifier];
  self->_draggingExistingItemFromActiveLayoutState = [appLayout containsItemWithUniqueIdentifier:identifier];

  [(SBFluidSwitcherGesture *)self->_dragAndDropGesture _setSelectedAppLayout:v22];
  [(SBFluidSwitcherGesture *)self->_dragAndDropGesture _setState:1];
  if (self->_layoutElementForWindowDrag)
  {
    sceneIdentifier2 = [(SBDeviceApplicationSceneHandle *)self->_draggingApplicationSceneHandle sceneIdentifier];
    appLayouts2 = [WeakRetained appLayouts];
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __43__SBDragAndDropWorkspaceTransaction__begin__block_invoke_4;
    v36 = &unk_2783A8CB8;
    v30 = sceneIdentifier2;
    v37 = v30;
    v31 = [appLayouts2 bs_firstObjectPassingTest:&v33];

    if (v31)
    {
      [(SBFluidSwitcherGesture *)self->_dragAndDropGesture _setSelectedAppLayout:v31, v33, v34, v35, v36];
    }
  }

  v32 = objc_loadWeakRetained(&self->_delegate);
  [v32 dragAndDropTransaction:self didBeginGesture:self->_dragAndDropGesture];

  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);
}

id __43__SBDragAndDropWorkspaceTransaction__begin__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _currentGestureEventForGesture:v3];

  return v5;
}

uint64_t __43__SBDragAndDropWorkspaceTransaction__begin__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

BOOL __43__SBDragAndDropWorkspaceTransaction__begin__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 containsItemWithUniqueIdentifier:*(a1 + 32)])
  {
    v4 = [v3 environment] == 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_didComplete
{
  if ([(SBDragAndDropWorkspaceTransaction *)self isInterrupted])
  {
    uiDragDropSession = [(SBApplicationDropSession *)self->_dropSession uiDragDropSession];
    [(SBDragAndDropWorkspaceTransaction *)self _handleSessionDidEnd:uiDragDropSession];
  }

  [(SBDragAndDropWorkspaceTransaction *)self _endDragAndDropFluidGesture];
  [(BSInvalidatable *)self->_deferOrientationUpdatesForDragAndDropAssertion invalidate];
  deferOrientationUpdatesForDragAndDropAssertion = self->_deferOrientationUpdatesForDragAndDropAssertion;
  self->_deferOrientationUpdatesForDragAndDropAssertion = 0;

  v5 = +[SBKeyboardSuppressionManager sharedInstance];
  [v5 stopSuppressingKeyboardWithReason:@"medusa-drag"];

  [(SBAppPlatterDragPreview *)self->_activePlatterPreview invalidateSourceView];
  [(SBAppPlatterDragSourceViewProviding *)self->_activeSourceViewProvider setDragging:0];
  completionBlock = [(SBMainWorkspaceTransitionRequest *)self->_dropTransitionRequest completionBlock];

  if (completionBlock)
  {
    completionBlock2 = [(SBMainWorkspaceTransitionRequest *)self->_dropTransitionRequest completionBlock];
    completionBlock2[2](completionBlock2, 1);
  }

  v8.receiver = self;
  v8.super_class = SBDragAndDropWorkspaceTransaction;
  [(SBMainWorkspaceTransaction *)&v8 _didComplete];
}

- (void)_endDragAndDropFluidGesture
{
  if (self->_dragAndDropGesture)
  {
    [(CADisplayLink *)self->_displayLinkForWindowDrag invalidate];
    displayLinkForWindowDrag = self->_displayLinkForWindowDrag;
    self->_displayLinkForWindowDrag = 0;

    [(SBFluidSwitcherGesture *)self->_dragAndDropGesture _setState:3];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained dragAndDropTransaction:self didEndGesture:self->_dragAndDropGesture];

    dragAndDropGesture = self->_dragAndDropGesture;
    self->_dragAndDropGesture = 0;
  }
}

- (void)_childTransactionDidComplete:(id)complete
{
  completeCopy = complete;
  v7.receiver = self;
  v7.super_class = SBDragAndDropWorkspaceTransaction;
  [(SBDragAndDropWorkspaceTransaction *)&v7 _childTransactionDidComplete:completeCopy];
  currentWorkspaceTransaction = self->_currentWorkspaceTransaction;
  if (currentWorkspaceTransaction == completeCopy)
  {
    self->_currentWorkspaceTransaction = 0;

    self->_layoutStateTransitionCompleted = 1;
    [(NSMutableSet *)self->_pendingSceneUpdatesTransactions removeAllObjects];
    goto LABEL_5;
  }

  sceneUpdateTransactionForWindowDrag = self->_sceneUpdateTransactionForWindowDrag;
  if (sceneUpdateTransactionForWindowDrag == completeCopy)
  {
    self->_sceneUpdateTransactionForWindowDrag = 0;

LABEL_5:
    [(SBDragAndDropWorkspaceTransaction *)self _updatePlatterPreviewForSetDown:1 animated:1];
  }
}

- (BOOL)canInterruptForTransitionRequest:(id)request
{
  if (([(SBDragAndDropWorkspaceTransaction *)self isComplete]& 1) != 0 || ([(SBDragAndDropWorkspaceTransaction *)self isInterrupted]& 1) != 0 || self->_layoutElementForWindowDrag && (!self->_windowDragEnteredPlatterZone || self->_sceneUpdateTransactionForWindowDrag) && !self->_performedDrop || self->_currentDropAction == 10 && !self->_dropAnimationCompleted || ([(SBDragAndDropWorkspaceTransaction *)self isWaitingForMilestone:@"SBDragAndDropAppActivationPlatterFadeOutMilestone"]& 1) != 0 || ([(SBDragAndDropWorkspaceTransaction *)self isWaitingForMilestone:@"SBDragAndDropAppActivationWaitingToAddToAppsTransactionMilestone"]& 1) != 0)
  {
    return 0;
  }

  else
  {
    return !self->_currentWorkspaceTransaction && !self->_performedDrop || self->_dropAnimationCompleted || self->_performedDrop;
  }
}

- (void)_willInterruptWithReason:(id)reason
{
  v5.receiver = self;
  v5.super_class = SBDragAndDropWorkspaceTransaction;
  [(SBDragAndDropWorkspaceTransaction *)&v5 _willInterruptWithReason:reason];
  [(SBDragAndDropWorkspaceTransaction *)self _endDragAndDropFluidGesture];
  layoutStateTransitionCoordinator = [(SBWorkspaceTransaction *)self layoutStateTransitionCoordinator];
  if ([layoutStateTransitionCoordinator isTransitioning])
  {
    [layoutStateTransitionCoordinator willEndTransition];
    [layoutStateTransitionCoordinator endTransitionWithError:0];
  }
}

- (void)_willInterruptForTransitionRequest:(id)request
{
  v7.receiver = self;
  v7.super_class = SBDragAndDropWorkspaceTransaction;
  requestCopy = request;
  [(SBWorkspaceTransaction *)&v7 _willInterruptForTransitionRequest:requestCopy];
  v5 = objc_opt_class();
  v6 = SBSafeCast(v5, requestCopy);

  if ([v6 source] == 27 || self->_performedDrop)
  {
    [(SBAppPlatterDragPreview *)self->_activePlatterPreview dropDestinationAnimationCompleted];
  }
}

- (void)_didInterruptWithReason:(id)reason
{
  v10 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v7.receiver = self;
  v7.super_class = SBDragAndDropWorkspaceTransaction;
  [(SBDragAndDropWorkspaceTransaction *)&v7 _didInterruptWithReason:reasonCopy];
  self->_sessionState = 2;
  if (!self->_performedDrop)
  {
    objc_storeStrong(&self->_finalLayoutState, self->_currentLayoutState);
    uiDragDropSession = [(SBApplicationDropSession *)self->_dropSession uiDragDropSession];
    [(SBDragAndDropWorkspaceTransaction *)self _updateCurrentDropActionForSession:uiDragDropSession];

    [(SBDragAndDropWorkspaceTransaction *)self _cleanUpAndCompleteTransactionIfNecessary];
  }

  v6 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = reasonCopy;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "SBAppDrop transaction did interrupt for reason: %{public}@", buf, 0xCu);
  }
}

- (CGRect)_platterFrameInSwitcherView
{
  windowScene = [(SBWorkspaceTransaction *)self windowScene];
  switcherController = [windowScene switcherController];

  uiDragDropSession = [(SBApplicationDropSession *)self->_dropSession uiDragDropSession];
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  view = [WeakRetained view];
  [uiDragDropSession locationInView:view];

  [switcherController frameForFloatingAppLayoutInInterfaceOrientation:-[SBLayoutState interfaceOrientation](self->_currentLayoutState floatingConfiguration:{"interfaceOrientation"), 2}];
  v8 = self->_activePlatterPreview;
  platterView = [(SBAppPlatterDragPreview *)v8 platterView];
  [platterView bounds];

  [(SBDragAndDropWorkspaceTransaction *)self _platterScale];
  SBRectWithSize();
  UIRectGetCenter();
  UIRectCenteredAboutPoint();
  [(SBAppPlatterDragPreview *)v8 convertRect:v8 toView:?];

  UIRectCenteredAboutPoint();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)_updateCurrentDropActionForSession:(id)session
{
  v193 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v6 = objc_loadWeakRetained(&self->_switcherContentController);
  view = [v6 view];
  windowScene = [WeakRetained windowScene];
  windowManagementContext = [WeakRetained windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  selfCopy = self;
  rect = isChamoisOrFlexibleWindowing;
  if (isChamoisOrFlexibleWindowing && [(SBMainDisplayLayoutState *)self->_initialLayoutState unlockedEnvironmentMode]== 3)
  {
    v10 = WeakRetained;
    v11 = sessionCopy;
    appLayout = [(SBMainDisplayLayoutState *)self->_initialLayoutState appLayout];
    visibleItemContainers = [v6 visibleItemContainers];
    v14 = [appLayout leafAppLayoutForRole:1];
    v15 = [visibleItemContainers objectForKey:v14];
    [v15 frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v24 = [appLayout itemForLayoutRole:2];

    if (v24)
    {
      visibleItemContainers2 = [v6 visibleItemContainers];
      v26 = [appLayout leafAppLayoutForRole:2];
      v27 = [visibleItemContainers2 objectForKey:v26];
      [v27 frame];
      v29 = v28;
      v31 = v30;

      v21 = v31 + v29 - (v17 + v21);
    }

    sessionCopy = v11;
    WeakRetained = v10;
  }

  else
  {
    [view bounds];
    v17 = v32;
    v19 = v33;
    v21 = v34;
    v23 = v35;
  }

  [sessionCopy locationInView:view];
  v37 = v36;
  v39 = v38;
  [(SBTouchHistory *)self->_touchHistory averageTouchVelocityOverTimeDuration:0.0416666667];
  v41 = v40;
  v43 = v42;
  isInterrupted = [(SBDragAndDropWorkspaceTransaction *)self isInterrupted];
  if (!self->_dragExitedDropZone && !((self->_activePlatterPreview == 0) | isInterrupted & 1))
  {
    v160 = v43;
    v161 = v41;
    v46 = v39;
    v47 = v37;
    v171 = v21;
    v155 = v17;
    v48 = v19;
    v49 = v23;
    v50 = WeakRetained;
    localContext = [(SBApplicationDropSession *)self->_dropSession localContext];
    startLocation = [localContext startLocation];

    floatingDockController = [windowScene floatingDockController];
    [floatingDockController floatingDockScreenFrame];
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;

    screen = [windowScene screen];
    fixedCoordinateSpace = [screen fixedCoordinateSpace];
    [view convertRect:fixedCoordinateSpace fromCoordinateSpace:{v55, v57, v59, v61}];
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v71 = v70;

    if (startLocation == 8 || (v197.origin.x = v65, v197.origin.y = v67, v197.size.width = v69, v197.size.height = v71, v194.x = v47, v194.y = v46, !CGRectContainsPoint(v197, v194)))
    {
      _iconManager = [(SBDragAndDropWorkspaceTransaction *)self _iconManager];
      v73 = [_iconManager hasOpenFolderInLocation:*MEMORY[0x277D66690]];

      WeakRetained = v50;
      if (v73)
      {
        v74 = SBLogMedusaDropDestination();
        v23 = v49;
        v39 = v46;
        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          [SBDragAndDropWorkspaceTransaction _updateCurrentDropActionForSession:v74];
        }

        v45 = 0;
        v19 = v48;
        v17 = v155;
        v21 = v171;
        v37 = v47;
        goto LABEL_19;
      }

      v45 = 1;
    }

    else
    {
      v45 = 0;
      WeakRetained = v50;
    }

    v23 = v49;
    v19 = v48;
    v17 = v155;
    v21 = v171;
    v37 = v47;
    v39 = v46;
LABEL_19:
    v43 = v160;
    v41 = v161;
    goto LABEL_20;
  }

  v45 = 0;
LABEL_20:
  v167 = view;
  v168 = v6;
  if ([(SBMainDisplayLayoutState *)self->_currentLayoutState unlockedEnvironmentMode]== 3)
  {
    appLayout2 = [(SBMainDisplayLayoutState *)self->_currentLayoutState appLayout];
    v76 = [appLayout2 itemForLayoutRole:4];

    if (v76)
    {
      v77 = SBLogMedusaDropDestination();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
      {
        [SBDragAndDropWorkspaceTransaction _updateCurrentDropActionForSession:v77];
      }

      v78 = 0;
      selfCopy3 = self;
      goto LABEL_114;
    }
  }

  if (v45)
  {
    v157 = sessionCopy;
    windowManagementContext2 = [WeakRetained windowManagementContext];
    displayIdentity = [WeakRetained displayIdentity];
    v82 = +[SBPlatformController sharedInstance];
    isMedusaCapable = [v82 isMedusaCapable];

    windowManagementContext3 = [WeakRetained windowManagementContext];
    baseStyle = [windowManagementContext3 baseStyle];

    v156 = WeakRetained;
    windowManagementContext4 = [WeakRetained windowManagementContext];
    isMedusaEnabled = [windowManagementContext4 isMedusaEnabled];

    application = [(SBApplicationSceneHandle *)selfCopy->_draggingApplicationSceneHandle application];
    v172 = displayIdentity;
    v153 = [application supportsMultiWindowLayoutsForSwitcherWindowManagementContext:windowManagementContext2 displayIdentity:displayIdentity];

    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    elements = [(SBLayoutState *)selfCopy->_currentLayoutState elements];
    v87 = [elements countByEnumeratingWithState:&v188 objects:v192 count:16];
    v88 = windowManagementContext2;
    v159 = v23;
    if (v87)
    {
      v89 = v87;
      v90 = *v189;
      v91 = 1;
      do
      {
        for (i = 0; i != v89; ++i)
        {
          if (*v189 != v90)
          {
            objc_enumerationMutation(elements);
          }

          v93 = *(*(&v188 + 1) + 8 * i);
          if ([v93 layoutRole] != 3)
          {
            workspaceEntity = [v93 workspaceEntity];
            applicationSceneEntity = [workspaceEntity applicationSceneEntity];

            if (applicationSceneEntity)
            {
              application2 = [applicationSceneEntity application];
              v97 = [application2 supportsMultiWindowLayoutsForSwitcherWindowManagementContext:windowManagementContext2 displayIdentity:v172];

              v91 &= v97;
              windowManagementContext2 = v88;
            }
          }
        }

        v89 = [elements countByEnumeratingWithState:&v188 objects:v192 count:16];
      }

      while (v89);
    }

    else
    {
      v91 = 1;
    }

    v162 = v41;

    [objc_opt_class() prototypeSettingsFullscreenActivationRegionSize];
    SBRectWithSize();
    UIRectCenteredXInRect();
    v195.x = v37;
    v195.y = v39;
    v98 = CGRectContainsPoint(v198, v195);
    [objc_opt_class() prototypeSettingsSideActivationGutterSize];
    v158 = v19;
    v99 = v17;
    v101 = v100 + v100;
    [(SBLayoutState *)selfCopy->_currentLayoutState interfaceOrientation];
    SBLayoutDefaultSideLayoutElementWidth();
    v102 = v39;
    v104 = v103;
    [(SBDragAndDropWorkspaceTransaction *)selfCopy _platterScale];
    v106 = v101 + v104 * v105 * 0.5;
    if (rect)
    {
      dropZones = [(SBApplicationDropSession *)selfCopy->_dropSession dropZones];
      WeakRetained = v156;
      if (!baseStyle)
      {
        v78 = v98;
        selfCopy3 = selfCopy;
        v77 = v88;
        goto LABEL_66;
      }

      v77 = v88;
      if ((isMedusaCapable & v91 & v153) == 1)
      {
        v108 = dropZones;
        v78 = dropZones < 2;
        if (dropZones <= 1 && !v98)
        {
          v199.origin.x = v99;
          v199.origin.y = v158;
          v199.size.width = v21;
          v199.size.height = v23;
          selfCopy3 = selfCopy;
          if (v37 < v106 + CGRectGetMinX(v199))
          {
            if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
            {
              v78 = 5;
            }

            else
            {
              v78 = 4;
            }

            goto LABEL_66;
          }

          v200.origin.x = v99;
          v200.origin.y = v158;
          v200.size.width = v21;
          v200.size.height = v23;
          if (v37 > CGRectGetMaxX(v200) - v106)
          {
            if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
            {
              v78 = 4;
            }

            else
            {
              v78 = 5;
            }

LABEL_66:
            if ([v77 isFlexibleWindowingEnabled])
            {
              if (([v77 isAutomaticStageCreationEnabled]& 1) == 0)
              {
                draggingApplicationSceneHandle = selfCopy3->_draggingApplicationSceneHandle;
                if (draggingApplicationSceneHandle)
                {
                  displayItemRepresentation = [(SBApplicationSceneHandle *)draggingApplicationSceneHandle displayItemRepresentation];
                  if (([v156 _isDisplayItemFullScreen:displayItemRepresentation preferredAttributes:0] & ((v78 & 0xFFFFFFFFFFFFFFFELL) == 4)) != 0)
                  {
                    v78 = 1;
                  }
                }
              }
            }

            goto LABEL_113;
          }

          v128 = [v168 _itemContainerAtLocation:1 environment:{v37, v102}];
          if (v128 && v108)
          {
            v78 = 0;
          }

          else
          {
            userInterfaceLayoutDirection = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
            v201.origin.x = v99;
            v201.origin.y = v158;
            v201.size.width = v21;
            v201.size.height = v23;
            MidX = CGRectGetMidX(v201);
            v131 = v37 < MidX;
            if (userInterfaceLayoutDirection == 1)
            {
              v131 = v37 >= MidX;
            }

            if (v131)
            {
              v78 = 4;
            }

            else
            {
              v78 = 5;
            }
          }
        }
      }

      else
      {
        v78 = 1;
      }

      selfCopy3 = selfCopy;
      goto LABEL_66;
    }

    userInterfaceLayoutDirection2 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
    v149 = v21 * 0.5;
    v151 = v37 + v162 * 0.15;
    v110 = v151 < v21 * 0.5;
    if (userInterfaceLayoutDirection2 == 1)
    {
      v110 = v151 >= v21 * 0.5;
    }

    if (v110)
    {
      v78 = 6;
    }

    else
    {
      v78 = 7;
    }

    v176[0] = MEMORY[0x277D85DD0];
    v176[1] = 3221225472;
    v176[2] = __72__SBDragAndDropWorkspaceTransaction__updateCurrentDropActionForSession___block_invoke;
    v176[3] = &unk_2783BA300;
    v176[4] = selfCopy;
    WeakRetained = v156;
    recta = v156;
    v177 = recta;
    v178 = v37;
    v179 = v102;
    v180 = v99;
    v181 = v158;
    v182 = v21;
    v183 = v23;
    v184 = v106;
    v186 = v98;
    v185 = v78;
    v187 = baseStyle != 0;
    v111 = MEMORY[0x223D6F7F0](v176);
    v174[0] = MEMORY[0x277D85DD0];
    v174[1] = 3221225472;
    v174[2] = __72__SBDragAndDropWorkspaceTransaction__updateCurrentDropActionForSession___block_invoke_2;
    v174[3] = &unk_2783BA328;
    *&v174[5] = v37;
    *&v174[6] = v102;
    v174[4] = selfCopy;
    v175 = v98;
    v112 = MEMORY[0x223D6F7F0](v174);
    v173[0] = MEMORY[0x277D85DD0];
    v173[1] = 3221225472;
    v173[2] = __72__SBDragAndDropWorkspaceTransaction__updateCurrentDropActionForSession___block_invoke_3;
    v173[3] = &unk_2783BA350;
    v173[4] = selfCopy;
    *&v173[5] = v162;
    v173[6] = v43;
    *&v173[7] = v99;
    *&v173[8] = v158;
    *&v173[9] = v21;
    *&v173[10] = v23;
    *&v173[11] = v37;
    *&v173[12] = v102;
    v113 = v102;
    v114 = MEMORY[0x223D6F7F0](v173);
    dropZones2 = [(SBApplicationDropSession *)selfCopy->_dropSession dropZones];
    if ((isMedusaCapable & v153) != 1)
    {
      v78 = 1;
      selfCopy3 = selfCopy;
      v77 = v88;
      v116 = v112;
      v117 = v111;
      goto LABEL_112;
    }

    v77 = v88;
    if (v91)
    {
      v116 = v112;
      if (dropZones2 == 2)
      {
        v117 = v111;
        if (baseStyle)
        {
          [objc_opt_class() prototypeSettingsWindowTearOffDraggingSideActivationWidth];
          v126 = v125;
          [objc_opt_class() prototypeSettingsWindowTearOffDraggingFloatingActivationWidth];
          if (v98)
          {
            v78 = 1;
            selfCopy3 = selfCopy;
          }

          else
          {
            v163 = v127;
            [objc_opt_class() sourceSceneInterfaceOrientedBoundsForDropSession:selfCopy->_dropSession switcherController:recta];
            x = v202.origin.x;
            y = v202.origin.y;
            width = v202.size.width;
            rectb = v202.size.height;
            selfCopy3 = selfCopy;
            if (CGRectIsNull(v202) || (v203.origin.x = x, v203.origin.y = y, v203.size.width = width, v203.size.height = rectb, v196.x = v37, v196.y = v113, !CGRectContainsPoint(v203, v196)))
            {
              v135 = (*(v111 + 16))(v111);
            }

            else
            {
              v135 = v116[2](v116, v99, v158, v21, v159, x, y, width, rectb, v21 / v21 * v126, v21 / v21 * v163);
            }

            if (v135)
            {
              v78 = v135;
            }
          }
        }

        else
        {
          if (v98)
          {
            v78 = 1;
          }

          selfCopy3 = selfCopy;
        }

        goto LABEL_112;
      }

      v117 = v111;
      if (dropZones2 == 1)
      {
        if (baseStyle)
        {
          selfCopy3 = selfCopy;
          [objc_opt_class() prototypeSettingsContentDraggingSideActivationWidth];
          v123 = v122;
          [objc_opt_class() prototypeSettingsContentDraggingFloatingActivationWidth];
          v119 = v116[2](v116, v99, v158, v21, v23, v99, v158, v21, v23, v123, v124);
          goto LABEL_86;
        }

        if (v98)
        {
          v78 = 1;
        }
      }

      else
      {
        if (!dropZones2)
        {
          selfCopy3 = selfCopy;
          if (![(SBMainDisplayLayoutState *)selfCopy->_currentLayoutState isFloatingSwitcherVisible])
          {
            layoutElementForWindowDrag = selfCopy->_layoutElementForWindowDrag;
            if (!layoutElementForWindowDrag || selfCopy->_windowDragEnteredPlatterZone)
            {
              v119 = (*(v111 + 16))(v111);
LABEL_86:
              v78 = v119;
              goto LABEL_112;
            }

            if ([(SBLayoutElement *)layoutElementForWindowDrag layoutRole]!= 3)
            {
              if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
              {
                v148 = v151 >= v149;
              }

              else
              {
                v148 = v151 < v149;
              }

              if (v148)
              {
                v78 = 4;
              }

              else
              {
                v78 = 5;
              }

              goto LABEL_112;
            }

LABEL_78:
            v119 = v114[2](v114);
            goto LABEL_86;
          }

          goto LABEL_112;
        }

        v78 = 0;
      }

      selfCopy3 = selfCopy;
      goto LABEL_112;
    }

    v116 = v112;
    if (v98)
    {
      selfCopy3 = selfCopy;
      v117 = v111;
      if (selfCopy->_layoutElementForWindowDrag)
      {
        v78 = 1;
        if (selfCopy->_windowDragEnteredPlatterZone || ((isMedusaEnabled ^ 1) & 1) != 0)
        {
          goto LABEL_112;
        }

        goto LABEL_78;
      }
    }

    else
    {
      selfCopy3 = selfCopy;
      v117 = v111;
      if (isMedusaEnabled)
      {
        goto LABEL_78;
      }
    }

    v78 = 1;
LABEL_112:

LABEL_113:
    sessionCopy = v157;
LABEL_114:

    goto LABEL_115;
  }

  v78 = 0;
  selfCopy3 = self;
LABEL_115:
  if (-[SBMainDisplayLayoutState unlockedEnvironmentMode](selfCopy3->_currentLayoutState, "unlockedEnvironmentMode") == 2 && (-[SBApplicationDropSession localContext](selfCopy3->_dropSession, "localContext"), v136 = objc_claimAutoreleasedReturnValue(), v137 = [v136 startLocation], v136, v137 == 11) && selfCopy3->_dragAndDropGesture)
  {
    uiDragDropSession = [(SBApplicationDropSession *)selfCopy3->_dropSession uiDragDropSession];
    view2 = [v168 view];
    [uiDragDropSession locationInView:view2];
    v141 = v140;
    v143 = v142;

    selectedLayoutRole = [(SBFluidSwitcherGesture *)selfCopy3->_dragAndDropGesture selectedLayoutRole];
    selectedAppLayout = [(SBFluidSwitcherGesture *)selfCopy3->_dragAndDropGesture selectedAppLayout];
    v146 = [v168 _switcherDropRegionContextForDraggingLayoutRole:selectedLayoutRole inAppLayout:selectedAppLayout atLocation:{v141, v143}];

    currentSwitcherDropRegionContext = selfCopy3->_currentSwitcherDropRegionContext;
    selfCopy3->_currentSwitcherDropRegionContext = v146;

    v78 = 10;
  }

  else
  {
    uiDragDropSession = selfCopy3->_currentSwitcherDropRegionContext;
    selfCopy3->_currentSwitcherDropRegionContext = 0;
  }

  if (selfCopy3->_currentDropAction != v78)
  {
    selfCopy3->_currentDropAction = v78;
    [(SBDragAndDropWorkspaceTransaction *)selfCopy3 _updateCurrentDropActionProposedLayoutState];
  }
}

uint64_t __72__SBDragAndDropWorkspaceTransaction__updateCurrentDropActionForSession___block_invoke(uint64_t a1)
{
  if (![*(*(a1 + 32) + 248) layoutContainsRole:2])
  {
    if (*(a1 + 113) == 1)
    {
      v41 = *(a1 + 48);
      if (v41 < CGRectGetMinX(*(a1 + 64)) + *(a1 + 96))
      {
        v42 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1;
        v43 = 4;
        goto LABEL_34;
      }

      v61 = *(a1 + 48);
      if (v61 > CGRectGetMaxX(*(a1 + 64)) - *(a1 + 96))
      {
        v59 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1;
        v60 = 4;
LABEL_41:
        if (v59)
        {
          return v60;
        }

        else
        {
          return v60 + 1;
        }
      }
    }

    if (*(a1 + 112))
    {
      return 1;
    }

    return *(a1 + 104);
  }

  v2 = *(a1 + 40);
  v3 = [*(*(a1 + 32) + 248) appLayout];
  [v2 frameForItemWithRole:1 inMainAppLayout:v3 interfaceOrientation:{objc_msgSend(*(*(a1 + 32) + 248), "interfaceOrientation")}];
  v5 = v4;
  v74 = v7;
  v75 = v6;
  v73 = v8;

  v9 = *(a1 + 40);
  v10 = [*(*(a1 + 32) + 248) appLayout];
  [v9 frameForItemWithRole:2 inMainAppLayout:v10 interfaceOrientation:{objc_msgSend(*(*(a1 + 32) + 248), "interfaceOrientation")}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v76 = v17;

  if (SBSpaceConfigurationIsSplitView([*(*(a1 + 32) + 248) spaceConfiguration]))
  {
    v18 = v5;
    v77.origin.x = v5;
    v77.origin.y = v75;
    v77.size.width = v74;
    v77.size.height = v73;
    MinX = CGRectGetMinX(v77);
    v78.origin.x = v12;
    v78.origin.y = v14;
    v78.size.width = v16;
    v78.size.height = v76;
    v19 = CGRectGetMinX(v78);
    v20 = MinX < v19;
    if (MinX >= v19)
    {
      v21 = v12;
    }

    else
    {
      v21 = v5;
    }

    v22 = v12;
    if (MinX >= v19)
    {
      v23 = v14;
    }

    else
    {
      v23 = v75;
    }

    v24 = v14;
    if (MinX >= v19)
    {
      v25 = v16;
    }

    else
    {
      v25 = v74;
    }

    v26 = v16;
    if (MinX >= v19)
    {
      v27 = v76;
    }

    else
    {
      v27 = v73;
    }

    v71 = v5;
    if (v20)
    {
      v18 = v22;
    }

    v28 = v24;
    if (v20)
    {
      v29 = v24;
    }

    else
    {
      v29 = v75;
    }

    v30 = v74;
    v31 = v26;
    if (v20)
    {
      v30 = v26;
    }

    v63 = v30;
    v64 = v29;
    v32 = v73;
    v33 = v22;
    if (v20)
    {
      v32 = v76;
    }

    rect = v32;
    v34 = v21;
    v79.origin.x = v21;
    v79.origin.y = v23;
    v79.size.width = v25;
    v79.size.height = v27;
    MaxX = CGRectGetMaxX(v79);
    v80.origin.x = v34;
    v80.origin.y = v23;
    v80.size.width = v25;
    v80.size.height = v27;
    MinY = CGRectGetMinY(v80);
    v81.origin.x = v18;
    v81.size.width = v63;
    v81.origin.y = v64;
    v81.size.height = rect;
    v35 = CGRectGetMinX(v81);
    v82.origin.x = v34;
    v82.origin.y = v23;
    v82.size.width = v25;
    v82.size.height = v27;
    v36 = v35 - CGRectGetMaxX(v82);
    v83.origin.x = v34;
    v83.origin.y = v23;
    v83.size.width = v25;
    v83.size.height = v27;
    v84.size.height = CGRectGetHeight(v83);
    v84.origin.y = MinY;
    v84.origin.x = MaxX;
    v84.size.width = v36;
    v5 = v71;
    v85 = CGRectInset(v84, -50.0, 0.0);
    x = v85.origin.x;
    y = v85.origin.y;
    width = v85.size.width;
    height = v85.size.height;
  }

  else
  {
    v33 = v12;
    x = *MEMORY[0x277CBF3A0];
    y = *(MEMORY[0x277CBF3A0] + 8);
    v28 = v14;
    v31 = v16;
    width = *(MEMORY[0x277CBF3A0] + 16);
    height = *(MEMORY[0x277CBF3A0] + 24);
  }

  [*(a1 + 40) frameForFloatingAppLayoutInInterfaceOrientation:objc_msgSend(*(*(a1 + 32) + 248) floatingConfiguration:{"interfaceOrientation", *&rect), objc_msgSend(*(*(a1 + 32) + 248), "floatingConfiguration")}];
  v69 = v45;
  v72 = v44;
  v65 = v47;
  v67 = v46;
  v86.origin.x = v5;
  v86.size.width = v74;
  v86.origin.y = v75;
  v86.size.height = v73;
  v48 = CGRectContainsPoint(v86, *(a1 + 48));
  v87.origin.x = v33;
  v87.origin.y = v28;
  v87.size.width = v31;
  v87.size.height = v76;
  v49 = CGRectContainsPoint(v87, *(a1 + 48));
  v88.origin.x = x;
  v88.origin.y = y;
  v88.size.width = width;
  v88.size.height = height;
  v50 = CGRectContainsPoint(v88, *(a1 + 48));
  if ([*(*(a1 + 32) + 248) layoutContainsRole:3])
  {
    [*(a1 + 32) _platterFrameInSwitcherView];
    v90.origin.x = v51;
    v90.origin.y = v52;
    v90.size.width = v53;
    v90.size.height = v54;
    v89.origin.y = v69;
    v89.origin.x = v72;
    v89.size.height = v65;
    v89.size.width = v67;
    v55 = CGRectIntersectsRect(v89, v90);
  }

  else
  {
    v55 = 0;
  }

  v56 = *(a1 + 48);
  if (v56 < CGRectGetMinX(*(a1 + 64)) + *(a1 + 96))
  {
    v42 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1;
    v43 = 2;
LABEL_34:
    if (v42)
    {
      return v43 + 1;
    }

    else
    {
      return v43;
    }
  }

  v58 = *(a1 + 48);
  if (v58 > CGRectGetMaxX(*(a1 + 64)) - *(a1 + 96))
  {
    v59 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1;
    v60 = 2;
    goto LABEL_41;
  }

  if (*(a1 + 112))
  {
    return 1;
  }

  if (v50 || v55)
  {
    return *(a1 + 104);
  }

  result = v48 ? 2 : 3;
  if (!v48 && !v49)
  {
    return *(a1 + 104);
  }

  return result;
}

uint64_t __72__SBDragAndDropWorkspaceTransaction__updateCurrentDropActionForSession___block_invoke_2(uint64_t a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10, double a11)
{
  MaxX = CGRectGetMaxX(*&a2);
  v34.origin.x = a6;
  v34.origin.y = a7;
  v34.size.width = a8;
  v34.size.height = a9;
  MinX = CGRectGetMinX(v34);
  v35.origin.x = a6;
  v35.origin.y = a7;
  v35.size.width = a8;
  v35.size.height = a9;
  v25 = CGRectGetMaxX(v35);
  v26 = *(a1 + 40);
  v27 = [*(*(a1 + 32) + 248) layoutContainsRole:2];
  if (v26 >= a10 && v26 <= MaxX - a10)
  {
    if (v26 >= MinX + a11 && v26 <= v25 - a11)
    {
      return *(a1 + 56);
    }

    v30 = v26 < MinX + a11 == ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1);
    v31 = 6;
  }

  else
  {
    v29 = v27;
    v30 = v26 < a10 == ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1);
    if (v29)
    {
      v31 = 2;
    }

    else
    {
      v31 = 4;
    }
  }

  if (v30)
  {
    return v31 + 1;
  }

  else
  {
    return v31;
  }
}

uint64_t __72__SBDragAndDropWorkspaceTransaction__updateCurrentDropActionForSession___block_invoke_3(uint64_t a1)
{
  [objc_opt_class() prototypeSettingsContentDraggingFloatingActivationWidth];
  v3 = SBFloatingConfigurationForMovingFloatingApplication([*(*(a1 + 32) + 248) floatingConfiguration], *(*(a1 + 32) + 464), *(a1 + 40), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), v2, *(a1 + 88));
  if (v3 > 4)
  {
    return 0;
  }

  else
  {
    return qword_21F8A7368[v3];
  }
}

- (id)_transitionRequestForDropAction:(int64_t)action
{
  selfCopy = self;
  v140[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  switcherCoordinator = [WeakRetained switcherCoordinator];
  contentViewController = [WeakRetained contentViewController];
  v9 = objc_opt_class();
  v10 = contentViewController;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  transitionRequest = [(SBWorkspaceTransaction *)selfCopy transitionRequest];
  workspace = [transitionRequest workspace];
  displayConfiguration = [transitionRequest displayConfiguration];
  v16 = [workspace createRequestWithOptions:0 displayConfiguration:displayConfiguration];

  v115 = transitionRequest;
  [v16 setSource:{objc_msgSend(transitionRequest, "source")}];
  [v16 setEventLabel:@"DragAndDropAppActivation"];
  v17 = objc_alloc_init(SBWorkspaceApplicationSceneTransitionContext);
  [(SBWorkspaceApplicationSceneTransitionContext *)v17 setDelegate:selfCopy];
  v112 = v16;
  [v16 setApplicationContext:v17];
  v18 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationSceneHandle:selfCopy->_draggingApplicationSceneHandle];
  launchActions = [(SBApplicationDropSession *)selfCopy->_dropSession launchActions];
  [(SBApplicationSceneEntity *)v18 addActions:launchActions];

  activationSettings = [(SBApplicationDropSession *)selfCopy->_dropSession activationSettings];
  [(SBWorkspaceEntity *)v18 applyActivationSettings:activationSettings];

  v134[0] = MEMORY[0x277D85DD0];
  v134[1] = 3221225472;
  v134[2] = __69__SBDragAndDropWorkspaceTransaction__transitionRequestForDropAction___block_invoke;
  v134[3] = &unk_2783B3258;
  v134[4] = selfCopy;
  v134[5] = a2;
  v117 = MEMORY[0x223D6F7F0](v134);
  uiDragDropSession = [(SBApplicationDropSession *)selfCopy->_dropSession uiDragDropSession];
  view = [v12 view];
  [uiDragDropSession locationInView:view];
  v24 = v23;
  v26 = v25;

  v119 = v12;
  view2 = [v12 view];
  [view2 bounds];
  v32 = [(SBDisplayItemLayoutAttributes *)v24 normalizedPointForPoint:v26 inBounds:v28, v29, v30, v31];
  v34 = v33;

  v118 = WeakRetained;
  windowManagementContext = [WeakRetained windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  v120 = selfCopy;
  v121 = switcherCoordinator;
  actionCopy = action;
  v122 = v17;
  v123 = v18;
  if (action == 1)
  {
    v37 = 0.5;
    v38 = 0.5;
    if (isChamoisOrFlexibleWindowing)
    {
      goto LABEL_8;
    }
  }

  v38 = v32;
  v37 = v34;
  if (action > 4)
  {
    if (action <= 7)
    {
      if (action != 5)
      {
        v43 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
        [(SBWorkspaceApplicationSceneTransitionContext *)v17 setEntities:MEMORY[0x277CBEBF8] withPolicy:1 centerEntity:v43 floatingEntity:v18];

        v44 = v17;
        if (action == 6)
        {
          v45 = 1;
        }

        else
        {
          v45 = 2;
        }

        goto LABEL_39;
      }

      if (isChamoisOrFlexibleWindowing)
      {
        v136 = v18;
        v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&v136 count:1];
        v47 = &SBLayoutRoleSide;
        goto LABEL_37;
      }

      layoutElementForWindowDrag = selfCopy->_layoutElementForWindowDrag;
      if (!layoutElementForWindowDrag || selfCopy->_windowDragEnteredPlatterZone)
      {
        v73 = 1;
        v77 = [SBPreviousWorkspaceEntity entityWithPreviousLayoutRole:1];
        [(SBWorkspaceApplicationSceneTransitionContext *)v17 setEntity:v77 forLayoutRole:1];

        [(SBWorkspaceApplicationSceneTransitionContext *)v17 setEntity:v18 forLayoutRole:2];
LABEL_49:
        if (selfCopy->_layoutElementForWindowDrag && (SBLayoutRoleSetAppLayout(), v78 = objc_claimAutoreleasedReturnValue(), v79 = [v78 containsRole:{-[SBLayoutElement layoutRole](selfCopy->_layoutElementForWindowDrag, "layoutRole")}], v78, v79))
        {
          if ([(SBLayoutElement *)selfCopy->_layoutElementForWindowDrag layoutRole]== v73)
          {
            spaceConfiguration = v117[2](v117, [(SBMainDisplayLayoutState *)selfCopy->_initialLayoutState spaceConfiguration], [(SBLayoutState *)selfCopy->_initialLayoutState interfaceOrientation]);
          }

          else
          {
            spaceConfiguration = [(SBMainDisplayLayoutState *)selfCopy->_initialLayoutState spaceConfiguration];
          }

          v82 = spaceConfiguration;
          v81 = v17;
        }

        else
        {
          v81 = v17;
          v82 = 3;
        }

        [(SBWorkspaceApplicationSceneTransitionContext *)v81 setRequestedSpaceConfiguration:v82];
        v18 = v123;
        goto LABEL_68;
      }

      if ([(SBLayoutElement *)layoutElementForWindowDrag layoutRole]== 1)
      {
        v91 = [SBPreviousWorkspaceEntity entityWithPreviousLayoutRole:2];
        [(SBWorkspaceApplicationSceneTransitionContext *)v17 setEntity:v91 forLayoutRole:1];

        v18 = v123;
        [(SBWorkspaceApplicationSceneTransitionContext *)v17 setEntity:v123 forLayoutRole:2];
        spaceConfiguration2 = [(SBMainDisplayLayoutState *)selfCopy->_currentLayoutState spaceConfiguration];
        currentLayoutState = selfCopy->_currentLayoutState;
        goto LABEL_62;
      }

      goto LABEL_63;
    }

    switch(action)
    {
      case 8:
        v44 = v17;
        v45 = 3;
        break;
      case 9:
        v44 = v17;
        v45 = 4;
        break;
      case 10:
        v48 = selfCopy->_currentSwitcherDropRegionContext;
        currentDropRegion = [(SBSwitcherDropRegionContext *)v48 currentDropRegion];
        draggingLeafAppLayout = [(SBSwitcherDropRegionContext *)v48 draggingLeafAppLayout];
        appLayouts = [v12 appLayouts];
        v132[0] = MEMORY[0x277D85DD0];
        v132[1] = 3221225472;
        v132[2] = __69__SBDragAndDropWorkspaceTransaction__transitionRequestForDropAction___block_invoke_2;
        v132[3] = &unk_2783A8CB8;
        v52 = draggingLeafAppLayout;
        v133 = v52;
        v53 = [appLayouts bs_firstObjectPassingTest:v132];

        if ((currentDropRegion & 0xFFFFFFFFFFFFFFFELL) == 4)
        {
          [v53 itemForLayoutRole:1];
          obja = v48;
          v55 = v54 = v52;
          v56 = [v53 itemForLayoutRole:2];
          v57 = [switcherCoordinator _entityForDisplayItem:v55 switcherController:WeakRetained];
          v58 = [switcherCoordinator _entityForDisplayItem:v56 switcherController:WeakRetained];
          [(SBWorkspaceApplicationSceneTransitionContext *)v122 setEntity:v57 forLayoutRole:1];
          [(SBWorkspaceApplicationSceneTransitionContext *)v122 setEntity:v58 forLayoutRole:2];
          v59 = v55;
          v52 = v54;
          v48 = obja;
          -[SBWorkspaceApplicationSceneTransitionContext setRequestedSpaceConfiguration:](v122, "setRequestedSpaceConfiguration:", SBMainDisplayLayoutStateSpaceConfigurationFromAppLayoutConfiguration([v53 configuration]));
        }

        else
        {
          if (currentDropRegion == 6)
          {
            [v53 itemForLayoutRole:1];
            objb = v48;
            v84 = v83 = v52;
            v56 = [switcherCoordinator _entityForDisplayItem:v84 switcherController:WeakRetained];
            [(SBWorkspaceApplicationSceneTransitionContext *)v122 setEntity:v56 forLayoutRole:3];
            v85 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
            [(SBWorkspaceApplicationSceneTransitionContext *)v122 setEntity:v85 forLayoutRole:1];

            v59 = v84;
            v52 = v83;
            v48 = objb;
            v86 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
            [(SBWorkspaceApplicationSceneTransitionContext *)v122 setEntity:v86 forLayoutRole:2];

            v75 = v122;
          }

          else
          {
            v18 = v123;
            if (currentDropRegion != 3)
            {
LABEL_57:
              [(SBWorkspaceApplicationSceneTransitionContext *)v122 setRequestedUnlockedEnvironmentMode:2];

              selfCopy = v120;
              goto LABEL_70;
            }

            v59 = [v53 itemForLayoutRole:1];
            v56 = [switcherCoordinator _entityForDisplayItem:v59 switcherController:WeakRetained];
            [(SBWorkspaceApplicationSceneTransitionContext *)v122 setEntity:v56 forLayoutRole:1];
            v74 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
            [(SBWorkspaceApplicationSceneTransitionContext *)v122 setEntity:v74 forLayoutRole:2];

            v75 = v122;
          }

          [(SBWorkspaceApplicationSceneTransitionContext *)v75 setRequestedSpaceConfiguration:1];
        }

        v18 = v123;
        goto LABEL_57;
      default:
        goto LABEL_70;
    }

LABEL_39:
    [(SBWorkspaceApplicationSceneTransitionContext *)v44 setRequestedFloatingConfiguration:v45];
    goto LABEL_70;
  }

  if (action > 1)
  {
    if (action == 2)
    {
      v139[0] = v18;
      v60 = [SBPreviousWorkspaceEntity entityWithPreviousLayoutRole:2];
      v139[1] = v60;
      v62 = MEMORY[0x277CBEA60];
      v63 = v139;
    }

    else
    {
      if (action != 3)
      {
        if (isChamoisOrFlexibleWindowing)
        {
          v137 = v18;
          v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&v137 count:1];
          v47 = &SBLayoutRolePrimary;
LABEL_37:
          v65 = *v47;
          v66 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
          v67 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
          [(SBWorkspaceApplicationSceneTransitionContext *)v17 setEntities:v46 startingAtLayoutRole:v65 withPolicy:1 centerEntity:v66 floatingEntity:v67];

          v18 = v123;
          [(SBWorkspaceApplicationSceneTransitionContext *)v17 _setRequestedFrontmostEntity:v123];
          v68 = [(SBWorkspaceApplicationSceneTransitionContext *)v17 requestedLayoutAttributesForEntity:v123];
          v69 = [(SBDisplayItemLayoutAttributes *)v68 attributesByModifyingNormalizedCenter:v32, v34];

          [(SBWorkspaceApplicationSceneTransitionContext *)v17 setRequestedLayoutAttributes:v69 forEntity:v123];
LABEL_68:
          v42 = [SBPreviousWorkspaceEntity entityWithPreviousLayoutRole:3];
          [(SBWorkspaceApplicationSceneTransitionContext *)v17 setEntity:v42 forLayoutRole:3];
LABEL_69:

          goto LABEL_70;
        }

        v70 = selfCopy->_layoutElementForWindowDrag;
        if (!v70 || selfCopy->_windowDragEnteredPlatterZone)
        {
          [(SBWorkspaceApplicationSceneTransitionContext *)v17 setEntity:v18 forLayoutRole:1];
          v71 = [(SBLayoutState *)selfCopy->_currentLayoutState elementWithRole:1];
          workspaceEntity = [v71 workspaceEntity];
          v73 = 2;
          [(SBWorkspaceApplicationSceneTransitionContext *)v17 setEntity:workspaceEntity forLayoutRole:2];

          goto LABEL_49;
        }

        if ([(SBLayoutElement *)v70 layoutRole]== 2)
        {
          [(SBWorkspaceApplicationSceneTransitionContext *)v17 setEntity:v18 forLayoutRole:1];
          v87 = [(SBLayoutState *)selfCopy->_currentLayoutState elementWithRole:1];
          workspaceEntity2 = [v87 workspaceEntity];
          [(SBWorkspaceApplicationSceneTransitionContext *)v17 setEntity:workspaceEntity2 forLayoutRole:2];

          v18 = v123;
          spaceConfiguration2 = [(SBMainDisplayLayoutState *)selfCopy->_currentLayoutState spaceConfiguration];
          currentLayoutState = selfCopy->_currentLayoutState;
LABEL_62:
          spaceConfiguration3 = v117[2](v117, spaceConfiguration2, [(SBLayoutState *)currentLayoutState interfaceOrientation]);
LABEL_64:
          [(SBWorkspaceApplicationSceneTransitionContext *)v17 setRequestedSpaceConfiguration:spaceConfiguration3];
          goto LABEL_68;
        }

LABEL_63:
        spaceConfiguration3 = [(SBMainDisplayLayoutState *)selfCopy->_currentLayoutState spaceConfiguration];
        goto LABEL_64;
      }

      v60 = [SBPreviousWorkspaceEntity entityWithPreviousLayoutRole:1];
      v138[0] = v60;
      v138[1] = v18;
      v62 = MEMORY[0x277CBEA60];
      v63 = v138;
    }

    v61 = [v62 arrayWithObjects:v63 count:2];
    v64 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    [(SBWorkspaceApplicationSceneTransitionContext *)v17 setEntities:v61 withPolicy:0 centerEntity:0 floatingEntity:v64];

    v18 = v123;
LABEL_34:

    goto LABEL_70;
  }

  if (!action)
  {
    v60 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    v61 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    [(SBWorkspaceApplicationSceneTransitionContext *)v17 setEntities:MEMORY[0x277CBEBF8] withPolicy:1 centerEntity:v60 floatingEntity:v61];
    goto LABEL_34;
  }

  if (action == 1)
  {
LABEL_8:
    v140[0] = v18;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v140 count:1];
    v40 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    [(SBWorkspaceApplicationSceneTransitionContext *)v17 setEntities:v39 withPolicy:0 centerEntity:0 floatingEntity:v40];

    v18 = v123;
    if (!isChamoisOrFlexibleWindowing)
    {
      goto LABEL_70;
    }

    [(SBWorkspaceApplicationSceneTransitionContext *)v17 _setRequestedFrontmostEntity:v123];
    v41 = [(SBWorkspaceApplicationSceneTransitionContext *)v17 requestedLayoutAttributesForEntity:v123];
    v42 = [(SBDisplayItemLayoutAttributes *)v41 attributesByModifyingNormalizedCenter:v38, v37];

    [(SBWorkspaceApplicationSceneTransitionContext *)v17 setRequestedLayoutAttributes:v42 forEntity:v123];
    goto LABEL_69;
  }

LABEL_70:
  localContext = [(SBApplicationDropSession *)selfCopy->_dropSession localContext];
  _recentAppLayoutsController = [switcherCoordinator _recentAppLayoutsController];
  application = [(SBApplicationSceneEntity *)v18 application];
  bundleIdentifier = [application bundleIdentifier];

  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  obj = [(SBLayoutState *)selfCopy->_currentLayoutState elements];
  v94 = [obj countByEnumeratingWithState:&v128 objects:v135 count:16];
  if (v94)
  {
    v95 = v94;
    v96 = 0;
    v97 = *v129;
    do
    {
      for (i = 0; i != v95; ++i)
      {
        if (*v129 != v97)
        {
          objc_enumerationMutation(obj);
        }

        workspaceEntity3 = [*(*(&v128 + 1) + 8 * i) workspaceEntity];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v100 = objc_opt_class();
          v101 = SBSafeCast(v100, workspaceEntity3);
          application2 = [v101 application];
          bundleIdentifier2 = [application2 bundleIdentifier];
          v104 = [bundleIdentifier2 isEqualToString:bundleIdentifier];

          v96 += v104;
        }
      }

      v95 = [obj countByEnumeratingWithState:&v128 objects:v135 count:16];
    }

    while (v95);
  }

  else
  {
    v96 = 0;
  }

  startLocation = [localContext startLocation];
  launchActions2 = [(SBApplicationDropSession *)v120->_dropSession launchActions];
  v107 = [launchActions2 count];

  dropZones = [(SBApplicationDropSession *)v120->_dropSession dropZones];
  if (!v107 && startLocation != 12 && (startLocation & 0xFFFFFFFFFFFFFFFELL) != 8 && actionCopy && !dropZones)
  {
    v109 = [_recentAppLayoutsController recentDisplayItemsForBundleIdentifier:bundleIdentifier includingHiddenAppLayouts:0];
    if ([v109 count] >= 2)
    {
      v110 = [v109 count];
      if (actionCopy == 1 && v110 - v96 >= 2)
      {
        [(SBWorkspaceApplicationSceneTransitionContext *)v122 setRequestedAppExposeBundleID:bundleIdentifier];
      }

      else if (actionCopy != 1)
      {
        [(SBWorkspaceApplicationSceneTransitionContext *)v122 setRequestedWindowPickerRole:[(SBWorkspaceEntity *)v123 layoutRole]];
      }
    }
  }

  [(SBWorkspaceApplicationSceneTransitionContext *)v122 setPreferredInterfaceOrientation:[(SBLayoutState *)v120->_initialLayoutState interfaceOrientation]];

  return v112;
}

uint64_t __69__SBDragAndDropWorkspaceTransaction__transitionRequestForDropAction___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = SBSpaceConfigurationForSpaceConfigurationAndInterfaceOrientation(a2, a3);
  v5 = v4;
  if (v4 < 2)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v10 = a1 + 32;
    v8 = *(a1 + 32);
    v9 = *(v10 + 8);
    v11 = SBStringForSpaceConfiguration(v5);
    [v7 handleFailureInMethod:v9 object:v8 file:@"SBDragAndDropWorkspaceTransaction.m" lineNumber:2549 description:{@"Can't swap primary/side in space configuration: %@", v11}];
  }

  else
  {
    v6 = 2;
    if (v4 != 4)
    {
      v6 = v4;
    }

    if (v4 == 2)
    {
      return 4;
    }

    else
    {
      return v6;
    }
  }

  return v5;
}

uint64_t __69__SBDragAndDropWorkspaceTransaction__transitionRequestForDropAction___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 itemForLayoutRole:1];
  v5 = [v4 uniqueIdentifier];
  v6 = [v3 containsItemWithUniqueIdentifier:v5];

  return v6;
}

- (CGSize)_defaultReferenceSizeForSceneView
{
  v31 = *MEMORY[0x277D85DE8];
  p_cachedDefaultReferenceSizeForSceneView = &self->_cachedDefaultReferenceSizeForSceneView;
  if (BSSizeEqualToSize())
  {
    v22 = a2;
    layoutStateTransitionCoordinator = [(SBWorkspaceTransaction *)self layoutStateTransitionCoordinator];
    sceneEntityFrameProvider = [layoutStateTransitionCoordinator sceneEntityFrameProvider];

    v6 = [(SBDragAndDropWorkspaceTransaction *)self _transitionRequestForDropAction:4];
    [v6 finalize];
    v24 = v6;
    applicationContext = [v6 applicationContext];
    layoutState = [applicationContext layoutState];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23 = layoutState;
    elements = [layoutState elements];
    v10 = [elements countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(elements);
        }

        workspaceEntity = [*(*(&v26 + 1) + 8 * v13) workspaceEntity];
        applicationSceneEntity = [workspaceEntity applicationSceneEntity];

        if (applicationSceneEntity)
        {
          sceneHandle = [applicationSceneEntity sceneHandle];
          v17 = [sceneHandle isEqual:self->_draggingApplicationSceneHandle];

          if (v17)
          {
            break;
          }
        }

        if (v11 == ++v13)
        {
          v11 = [elements countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v11)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:

      elements = [MEMORY[0x277CCA890] currentHandler];
      [elements handleFailureInMethod:v22 object:self file:@"SBDragAndDropWorkspaceTransaction.m" lineNumber:2801 description:@"workspaceEntity must be present in layout state"];
      applicationSceneEntity = 0;
    }

    [sceneEntityFrameProvider sceneEntityFrameForWorkspaceEntity:applicationSceneEntity inLayoutState:v23];
    p_cachedDefaultReferenceSizeForSceneView->width = v18;
    p_cachedDefaultReferenceSizeForSceneView->height = v19;
  }

  width = p_cachedDefaultReferenceSizeForSceneView->width;
  height = p_cachedDefaultReferenceSizeForSceneView->height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_cleanUpAndCompleteTransactionIfNecessary
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    dropSession = self->_dropSession;
    v5 = 138543362;
    v6 = dropSession;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "SBAppDrop transaction _cleanUpAndCompleteTransactionIfNecessary for session %{public}@", &v5, 0xCu);
  }

  [(SBDragAndDropWorkspaceTransaction *)self _updatePlatterPreviewForSetDown:0 animated:1];
}

- (void)_configurePlatterPreview:(id)preview forSceneHandle:(id)handle completion:(id)completion
{
  previewCopy = preview;
  handleCopy = handle;
  completionCopy = completion;
  platterView = [previewCopy platterView];

  if (!platterView)
  {
    sourceView = [previewCopy sourceView];
    if (sourceView)
    {
      [previewCopy configurePlatterForSceneHandle:handleCopy withTargetView:sourceView completion:completionCopy];
    }

    else
    {
      v12 = [(SBDeviceApplicationScenePlaceholderContentContext *)[SBMutableDeviceApplicationScenePlaceholderContentContext alloc] initWithActivationSettings:0];
      [(SBDeviceApplicationScenePlaceholderContentContext *)v12 setPreferredContentType:1];
      interfaceOrientation = [(SBLayoutState *)self->_currentLayoutState interfaceOrientation];
      currentLayoutState = self->_currentLayoutState;
      sceneIdentifier = [handleCopy sceneIdentifier];
      v16 = [(SBLayoutState *)currentLayoutState interfaceOrientationForElementIdentifier:sceneIdentifier];

      displayConfiguration = [(SBWorkspaceTransaction *)self displayConfiguration];
      [displayConfiguration pointScale];
      v19 = v18;

      v20 = [handleCopy mostRecentSceneSnapshotsForScale:v16 launchingOrientation:v19];
      [(SBDragAndDropWorkspaceTransaction *)self _defaultReferenceSizeForSceneView];
      v22 = v21;
      v24 = v23;
      if ([v20 count])
      {
        v25 = [v20 sortedArrayUsingComparator:&__block_literal_global_226];

        firstObject = [v25 firstObject];
        [firstObject referenceSize];
        v22 = v27;
        v24 = v28;

        v20 = v25;
      }

      v29 = [handleCopy newSceneViewWithReferenceSize:v16 contentOrientation:interfaceOrientation containerOrientation:0 hostRequester:{v22, v24}];
      [v29 setPlaceholderContentContext:v12];
      [v29 setDisplayMode:2 animationFactory:0 completion:0];
      [previewCopy configurePlatterForSceneHandle:handleCopy withTargetView:v29 completion:completionCopy];
    }
  }
}

uint64_t __88__SBDragAndDropWorkspaceTransaction__configurePlatterPreview_forSceneHandle_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 referenceSize];
  v6 = v5;
  v8 = v7;
  [v4 referenceSize];
  v10 = v9;
  v12 = v11;

  v13 = [MEMORY[0x277CCABB0] numberWithDouble:v6 * v8];
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v10 * v12];
  v15 = [v13 compare:v14];

  return v15;
}

- (void)_updateAnchorPointForPlatterPreview:(id)preview dragPreview:(id)dragPreview withSourceViewBounds:(CGRect)bounds location:(CGPoint)location
{
  y = location.y;
  x = location.x;
  height = bounds.size.height;
  width = bounds.size.width;
  v25 = self->_medusaSettings;
  layoutElementForWindowDrag = self->_layoutElementForWindowDrag;
  dragPreviewCopy = dragPreview;
  previewCopy = preview;
  layoutRole = [(SBLayoutElement *)layoutElementForWindowDrag layoutRole];
  if (layoutRole == 3)
  {
    goto LABEL_2;
  }

  v18 = layoutRole;
  v19 = SBSpaceConfigurationForSpaceConfigurationAndInterfaceOrientation([(SBMainDisplayLayoutState *)self->_currentLayoutState spaceConfiguration], [(SBLayoutState *)self->_currentLayoutState interfaceOrientation]);
  if (v19 == 2)
  {
    if (v18 != 1)
    {
      goto LABEL_10;
    }

LABEL_2:
    [(SBMedusaSettings *)v25 narrowEdgeSwipeHitTestWidth];
    goto LABEL_11;
  }

  if (v19 == 4)
  {
    if (v18 == 1)
    {
      goto LABEL_10;
    }

    goto LABEL_2;
  }

  v17 = 0.0;
  if (v19 == 3)
  {
LABEL_10:
    [(SBMedusaSettings *)v25 wideEdgeSwipeHitTestWidth];
  }

LABEL_11:
  v20 = v17 * 0.5;
  v21 = width * 0.5 + v20;
  v22 = width * 0.5 - v20;
  if (v22 < x)
  {
    v22 = x;
  }

  if (v21 <= v22)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  +[SBNubView height];
  if (y > v24)
  {
    y = v24;
  }

  [dragPreviewCopy setLiftAnchorPoint:{v23, y}];

  [previewCopy setAnchorPoint:{v23 / width, y / height}];
}

- (int64_t)_layoutRoleForDropAction:(int64_t)action
{
  result = 0;
  if (action > 4)
  {
    if ((action - 6) < 4)
    {
      v5 = &SBLayoutRoleFloating;
      return *v5;
    }

    if (action != 5)
    {
      if (action != 10)
      {
        return result;
      }

LABEL_13:
      v5 = &SBLayoutRolePrimary;
      return *v5;
    }

LABEL_14:
    v5 = &SBLayoutRoleSide;
    return *v5;
  }

  if (action > 2)
  {
    if (action != 3)
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if ((action - 1) < 2)
  {
    goto LABEL_13;
  }

  if (!action)
  {
    layoutElementForWindowDrag = self->_layoutElementForWindowDrag;
    if (layoutElementForWindowDrag)
    {
      return [(SBLayoutElement *)layoutElementForWindowDrag layoutRole];
    }

    v5 = &SBLayoutRoleUndefined;
    return *v5;
  }

  return result;
}

- (id)_createPlatterPreviewForApplication:(id)application withSourceView:(id)view dropSession:(id)session
{
  applicationCopy = application;
  viewCopy = view;
  sessionCopy = session;
  _iconManager = [(SBDragAndDropWorkspaceTransaction *)self _iconManager];
  iconModel = [_iconManager iconModel];
  if ([applicationCopy isWebApplication])
  {
    localContext = [sessionCopy localContext];
    draggedSceneIdentifier = [localContext draggedSceneIdentifier];

    v15 = [SBWebApplication _webClipIdentifierFromWebAppIdentifier:draggedSceneIdentifier];
    v16 = [iconModel leafIconForIdentifier:v15];
  }

  else
  {
    draggedSceneIdentifier = [applicationCopy bundleIdentifier];
    v16 = [iconModel applicationIconForBundleIdentifier:draggedSceneIdentifier];
  }

  if (!v16)
  {
    [SBDragAndDropWorkspaceTransaction _createPlatterPreviewForApplication:applicationCopy withSourceView:? dropSession:?];
  }

  v17 = [objc_alloc(MEMORY[0x277D663F0]) initWithConfigurationOptions:6];
  [v17 setLocation:*MEMORY[0x277D666D0]];
  listLayoutProvider = [_iconManager listLayoutProvider];
  [v17 setListLayoutProvider:listLayoutProvider];

  [v17 setDelegate:_iconManager];
  [v17 setIcon:v16];
  [v17 setEnabled:0];
  v19 = [[SBAppPlatterDragPreview alloc] initWithReferenceIconView:v17 sourceView:viewCopy];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __100__SBDragAndDropWorkspaceTransaction__createPlatterPreviewForApplication_withSourceView_dropSession___block_invoke;
  v32[3] = &unk_2783B5AF0;
  v20 = _iconManager;
  v33 = v20;
  [(SBAppPlatterDragPreview *)v19 setCleanUpHandler:v32];
  iconDragManager = [v20 iconDragManager];
  windowScene = [(SBWorkspaceTransaction *)self windowScene];
  [iconDragManager addPlatterViewToMedusaDragOffscreenWindow:v19 forWindowScene:windowScene];

  if (viewCopy)
  {
    [viewCopy bounds];
    UIRectGetCenter();
    v24 = v23;
    v26 = v25;
    window = [(SBAppPlatterDragPreview *)v19 window];
    v28 = viewCopy;
  }

  else
  {
    [v17 iconImageCenter];
    v24 = v29;
    v26 = v30;
    window = [v17 window];
    v28 = v17;
  }

  [v28 convertPoint:window toView:{v24, v26}];
  [(SBAppPlatterDragPreview *)v19 setCenter:?];

  return v19;
}

void __100__SBDragAndDropWorkspaceTransaction__createPlatterPreviewForApplication_withSourceView_dropSession___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 iconDragManager];
  [v4 removePlatterViewFromMedusaDragOffscreenWindow:v3];
}

- (void)_updateCurrentDropActionProposedLayoutState
{
  v6 = [(SBDragAndDropWorkspaceTransaction *)self _transitionRequestForDropAction:self->_currentDropAction];
  [v6 finalize];
  applicationContext = [v6 applicationContext];
  layoutState = [applicationContext layoutState];
  currentDropActionProposedLayoutState = self->_currentDropActionProposedLayoutState;
  self->_currentDropActionProposedLayoutState = layoutState;
}

- (id)_iconManager
{
  windowScene = [(SBWorkspaceTransaction *)self windowScene];
  homeScreenController = [windowScene homeScreenController];

  iconManager = [homeScreenController iconManager];

  return iconManager;
}

- (id)layoutStateForApplicationTransitionContext:(id)context
{
  contextCopy = context;
  layoutStateTransitionCoordinator = [(SBWorkspaceTransaction *)self layoutStateTransitionCoordinator];
  v6 = [layoutStateTransitionCoordinator layoutStateForApplicationTransitionContext:contextCopy];

  return v6;
}

- (CGRect)applicationTransitionContext:(id)context frameForApplicationSceneEntity:(id)entity
{
  entityCopy = entity;
  contextCopy = context;
  request = [contextCopy request];
  [request applicationTransitionContext:contextCopy frameForApplicationSceneEntity:entityCopy];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)transaction:(id)transaction didCommitSceneUpdate:(id)update
{
  transactionCopy = transaction;
  if ([(NSMutableSet *)self->_pendingSceneUpdatesTransactions count])
  {
    [(NSMutableSet *)self->_pendingSceneUpdatesTransactions removeObject:transactionCopy];
    if (![(NSMutableSet *)self->_pendingSceneUpdatesTransactions count])
    {
      [(SBDragAndDropWorkspaceTransaction *)self _updatePlatterPreviewForSetDown:1 animated:1];
    }
  }
}

- (void)initWithTransitionRequest:switcherController:dropSession:delegate:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)initWithTransitionRequest:switcherController:dropSession:delegate:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)dragInteraction:previewForLiftingItem:session:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_dragPreviewForDroppingItem:withDefault:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_addChildWorkspaceTransaction:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "Adding child transaction: %{public}@", &v2, 0xCu);
}

- (void)_createPlatterPreviewForApplication:(void *)a1 withSourceView:dropSession:.cold.1(void *a1)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v2 = [a1 bundleIdentifier];
  OUTLINED_FUNCTION_0_3();
  [v3 handleFailureInMethod:v2 object:? file:? lineNumber:? description:?];
}

@end