@interface SBDragAndDropWorkspaceTransaction
+ (BOOL)_shouldTrackLocationOfDropSession:(id)a3 forSwitcherController:(id)a4 isCurrentlyTracking:(BOOL)a5;
+ (BOOL)isDragOverFullscreenRegionAtLocation:(CGPoint)a3 inBounds:(CGRect)a4;
+ (CGRect)sourceSceneInterfaceOrientedBoundsForDropSession:(id)a3 switcherController:(id)a4;
+ (CGSize)prototypeSettingsFullscreenActivationRegionSize;
+ (UIEdgeInsets)_screenInsetsForUIDragDropSession:(id)a3;
+ (double)prototypeSettingsContentDraggingCommandeerInsetForUniversalControl;
+ (double)prototypeSettingsContentDraggingCommandeerWidth;
+ (double)prototypeSettingsContentDraggingFloatingActivationWidth;
+ (double)prototypeSettingsContentDraggingSideActivationWidth;
+ (double)prototypeSettingsSideActivationGutterSize;
+ (double)prototypeSettingsWindowTearOffDraggingFloatingActivationWidth;
+ (double)prototypeSettingsWindowTearOffDraggingSideActivationWidth;
+ (unint64_t)screenEdgeForDragOverSideGutterRegionsAtLocation:(CGPoint)a3 inBounds:(CGRect)a4 totalContentDragGutterWidth:(double)a5 screenInsets:(UIEdgeInsets)a6;
- (BOOL)_handleSessionDidUpdate:(id)a3;
- (BOOL)canInterruptForTransitionRequest:(id)a3;
- (BOOL)matchesUIDragDropSession:(id)a3;
- (CGRect)_platterFrameInSwitcherView;
- (CGRect)applicationTransitionContext:(id)a3 frameForApplicationSceneEntity:(id)a4;
- (CGSize)_defaultReferenceSizeForSceneView;
- (CGSize)_platterSizeForDropAction:(int64_t)a3 proposedDropLayoutState:(id)a4 setDown:(BOOL)a5;
- (CGSize)_platterSizeForSwitcherDropContext:(id)a3 setDown:(BOOL)a4;
- (SBDragAndDropWorkspaceTransaction)initWithTransitionRequest:(id)a3 switcherController:(id)a4 dropSession:(id)a5 delegate:(id)a6;
- (double)_platterScale;
- (double)_platterScaleForSwitcherDropContext:(id)a3;
- (double)_platterSourceViewScaleForSetDropAction:(int64_t)a3 setDown:(BOOL)a4;
- (id)_cornerRadiusConfigurationForDropAction:(int64_t)a3 proposedDropLayoutState:(id)a4 setDown:(BOOL)a5 mode:(unint64_t)a6;
- (id)_cornerRadiusForSwitcherDragContext:(id)a3 setDown:(BOOL)a4 sourceViewScale:(double)a5;
- (id)_createPlatterPreviewForApplication:(id)a3 withSourceView:(id)a4 dropSession:(id)a5;
- (id)_currentGestureEventForGesture:(id)a3;
- (id)_dragPreviewForDroppingItem:(id)a3 withDefault:(id)a4;
- (id)_dropInteraction:(id)a3 customSpringAnimationBehaviorForDroppingItem:(id)a4;
- (id)_iconManager;
- (id)_transitionRequestForDropAction:(int64_t)a3;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (id)dragInteraction:(id)a3 previewForCancellingItem:(id)a4 withDefault:(id)a5;
- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5;
- (id)dropInteraction:(id)a3 previewForDroppingItem:(id)a4 withDefault:(id)a5;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (id)layoutStateForApplicationTransitionContext:(id)a3;
- (int64_t)_layoutRoleForDropAction:(int64_t)a3;
- (void)_addChildWorkspaceTransaction:(id)a3;
- (void)_begin;
- (void)_childTransactionDidComplete:(id)a3;
- (void)_cleanUpAndCompleteTransactionIfNecessary;
- (void)_commitRecencyModelUpdateForDropContext:(id)a3;
- (void)_configurePlatterPreview:(id)a3 forSceneHandle:(id)a4 completion:(id)a5;
- (void)_didComplete;
- (void)_didInterruptWithReason:(id)a3;
- (void)_displayLinkDidUpdate:(id)a3;
- (void)_dragInteractionDidCancelLiftWithoutDragging:(id)a3;
- (void)_endDragAndDropFluidGesture;
- (void)_getPlatterDiffuseShadowParameters:(SBDragPreviewShadowParameters *)a3 rimShadowParameters:(SBDragPreviewShadowParameters *)a4 diffuseFilters:(id *)a5 rimFilters:(id *)a6 forDropAction:(int64_t)a7 setDown:(BOOL)a8 mode:(unint64_t)a9 userInterfaceStyle:(int64_t)a10;
- (void)_handleSessionDidEnd:(id)a3;
- (void)_handleSessionDidPerformDrop:(id)a3;
- (void)_handleWillAnimateDropWithAnimator:(id)a3;
- (void)_interruptForDragExitedDropZoneIfNecessary;
- (void)_noteSwitcherDropAnimationCompletedIfNeededWithContext:(id)a3;
- (void)_runFinalLayoutStateTransaction;
- (void)_setupPlatterPreviewForContentDrag;
- (void)_uncommandeerContentDrag;
- (void)_updateActiveSourceViewProviderWithDragState:(unint64_t)a3;
- (void)_updateAnchorPointForPlatterPreview:(id)a3 dragPreview:(id)a4 withSourceViewBounds:(CGRect)a5 location:(CGPoint)a6;
- (void)_updateCurrentDropActionForSession:(id)a3;
- (void)_updateCurrentDropActionProposedLayoutState;
- (void)_updateForWindowDragForSession:(id)a3;
- (void)_updatePlatterPreviewForSetDown:(BOOL)a3 animated:(BOOL)a4;
- (void)_updatePlatterPreviewWithUpdatedSourceView;
- (void)_updatePlatterViewBlurForDropCompletion;
- (void)_willInterruptForTransitionRequest:(id)a3;
- (void)_willInterruptWithReason:(id)a3;
- (void)dealloc;
- (void)dragInteraction:(id)a3 item:(id)a4 willAnimateCancelWithAnimator:(id)a5;
- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5;
- (void)dragInteraction:(id)a3 session:(id)a4 willEndWithOperation:(unint64_t)a5;
- (void)dragInteraction:(id)a3 sessionDidMove:(id)a4;
- (void)dropInteraction:(id)a3 concludeDrop:(id)a4;
- (void)dropInteraction:(id)a3 item:(id)a4 willAnimateDropWithAnimator:(id)a5;
- (void)dropInteraction:(id)a3 sessionDidEnd:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4;
- (void)transaction:(id)a3 didCommitSceneUpdate:(id)a4;
@end

@implementation SBDragAndDropWorkspaceTransaction

+ (UIEdgeInsets)_screenInsetsForUIDragDropSession:(id)a3
{
  v4 = SBFSafeProtocolCast();
  v5 = 0.0;
  v6 = 0.0;
  if ([v4 _drivenByPointer])
  {
    v7 = +[SBWorkspace mainWorkspace];
    v8 = [v7 universalControlServer];
    v9 = [v8 externalProcessActiveOnScreenEdges];

    if ((v9 & 2) != 0)
    {
      [a1 prototypeSettingsContentDraggingCommandeerInsetForUniversalControl];
      v6 = v10;
    }

    if ((v9 & 8) != 0)
    {
      [a1 prototypeSettingsContentDraggingCommandeerInsetForUniversalControl];
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

+ (BOOL)_shouldTrackLocationOfDropSession:(id)a3 forSwitcherController:(id)a4 isCurrentlyTracking:(BOOL)a5
{
  v5 = a5;
  v144[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v8 uiDragDropSession];
  v11 = [v8 localContext];
  v12 = [v11 startLocation];

  if (v12 == 8 || (SBApplicationDropSessionGetDragItem(v10), v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    v14 = [v9 contentViewController];
    v15 = objc_opt_class();
    v16 = v14;
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

    v19 = [v18 view];
    v20 = [v19 window];
    v21 = [v20 screen];
    v22 = [v21 fixedCoordinateSpace];

    v23 = [v18 view];
    [v10 locationInView:v23];
    v25 = v24;
    v27 = v26;

    v28 = [v18 view];
    [v28 convertPoint:v22 toCoordinateSpace:{v25, v27}];
    v112 = v30;
    v113 = v29;

    v144[0] = *MEMORY[0x277D78028];
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v144 count:1];
    LODWORD(v20) = [v10 hasItemsConformingToTypeIdentifiers:v31];

    if (v20 && ([SBApp notificationDispatcher], v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v32, "bannerDestination"), v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "presentedBannerScreenFrame"), v150 = CGRectInset(v149, -50.0, -50.0), x = v150.origin.x, y = v150.origin.y, width = v150.size.width, height = v150.size.height, v33, v32, v151.origin.x = x, v151.origin.y = y, v151.size.width = width, v151.size.height = height, v145.y = v112, v145.x = v113, CGRectContainsPoint(v151, v145)) || (objc_msgSend(v18, "view"), v38 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v38, "bounds"), v40 = v39, v42 = v41, v44 = v43, v46 = v45, v38, UIRectInset(), v146.x = v25, v146.y = v27, !CGRectContainsPoint(v152, v146)))
    {
      v54 = 0;
LABEL_64:

      goto LABEL_65;
    }

    v47 = [v9 windowManagementContext];
    v48 = [v47 isChamoisOrFlexibleWindowing];

    if (!v48)
    {
LABEL_29:
      v58 = [a1 isDragOverFullscreenRegionAtLocation:v25 inBounds:{v27, v40, v42, v44, v46}];
      v138[0] = MEMORY[0x277D85DD0];
      v138[1] = 3221225472;
      v138[2] = __113__SBDragAndDropWorkspaceTransaction__shouldTrackLocationOfDropSession_forSwitcherController_isCurrentlyTracking___block_invoke;
      v138[3] = &unk_2783BA210;
      v140 = a1;
      v141 = v25;
      v142 = v27;
      v139 = v10;
      v111 = MEMORY[0x223D6F7F0](v138);
      v59 = [v8 dropZones];
      if (v59)
      {
        if (v59 != 2)
        {
          if (v59 != 1)
          {
LABEL_55:
            v54 = 0;
            goto LABEL_63;
          }

          v60 = [v9 windowManagementContext];
          v61 = [v60 isFlexibleWindowingEnabled];

          if (v61)
          {
            [a1 prototypeSettingsContentDraggingSideActivationWidth];
          }

          else
          {
            if (v5)
            {
              [a1 prototypeSettingsContentDraggingSideActivationWidth];
              v72 = v71;
              [a1 prototypeSettingsContentDraggingFloatingActivationWidth];
              v63.n128_f64[0] = v72 + v73;
LABEL_41:
              if ((v58 & 1) != 0 || v111[2](v40, v42, v44, v46, v63))
              {
                v74 = [v9 layoutState];
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
                v108 = v74;
                v120 = v108;
                v124 = v25;
                v125 = v27;
                v121 = v9;
                v123 = &v126;
                SBLayoutRoleEnumerateValidRoles(v119);
                v76 = [MEMORY[0x277D0AAD8] sharedInstance];
                v77 = [v133[5] uniqueIdentifier];
                v109 = [v76 sceneWithIdentifier:v77];

                if (v109 && ([v109 clientSettings], v78 = objc_claimAutoreleasedReturnValue(), v79 = objc_msgSend(v78, "isUISubclass"), v78, v79))
                {
                  v80 = [v18 view];
                  [v80 convertRect:v22 toCoordinateSpace:{v127[4], v127[5], v127[6], v127[7]}];
                  v82 = v81;
                  v84 = v83;
                  v86 = v85;
                  v88 = v87;

                  v89 = [v109 clientSettings];
                  [v89 multitaskingDragExclusionRects];
                  v117 = 0u;
                  v118 = 0u;
                  v115 = 0u;
                  obj = v116 = 0u;
                  v90 = [obj countByEnumeratingWithState:&v115 objects:v143 count:16];
                  v107 = v89;
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
                        v101 = [SBSceneLayoutCoordinateSpace coordinateSpaceForFrame:v22 withinCoordinateSpace:v82, v84, v86, v88];
                        [v101 convertRect:v22 toCoordinateSpace:{v94, v96, v98, v100}];
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

            [a1 prototypeSettingsContentDraggingCommandeerWidth];
          }

          v63.n128_u64[0] = v62;
          goto LABEL_41;
        }

        [a1 prototypeSettingsWindowTearOffDraggingSideActivationWidth];
        v114 = v64;
        [a1 prototypeSettingsWindowTearOffDraggingFloatingActivationWidth];
        v66 = v65;
        [a1 sourceSceneInterfaceOrientedBoundsForDropSession:v8 switcherController:v9];
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

    v49 = [v9 windowManagementContext];
    if ([v49 isAutomaticStageCreationEnabled])
    {
      v50 = [v18 prefersStripHiddenAndDisabled];

      if ((v50 & 1) != 0 || ![v18 _areContinuousExposeStripsUnoccluded])
      {
        v53 = 0;
LABEL_22:
        v55 = [v8 dropZones];
        if (v55 == 1)
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

        else if (!v55)
        {
          v54 = !v53;
          goto LABEL_64;
        }

        goto LABEL_29;
      }

      v49 = [v18 windowingConfiguration];
      [v49 stripWidth];
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

+ (CGRect)sourceSceneInterfaceOrientedBoundsForDropSession:(id)a3 switcherController:(id)a4
{
  v5 = a4;
  v6 = [a3 systemSession];
  v7 = [v6 info];

  v8 = +[SBApplicationController sharedInstance];
  v9 = [v8 applicationWithPid:{objc_msgSend(v7, "processIdentifier")}];

  v10 = [v5 windowScene];
  v11 = [v10 sceneManager];

  v12 = [v9 bundleIdentifier];
  v13 = [v7 sceneIdentifier];
  v14 = [v11 sceneIdentifierForBundleIdentifier:v12 uniqueIdentifier:v13];

  v15 = [v5 layoutState];
  v16 = [v15 elementWithIdentifier:v14];
  v17 = v16;
  if (v16)
  {
    if ([v16 layoutRole] == 3)
    {
      [v5 frameForFloatingAppLayoutInInterfaceOrientation:objc_msgSend(v15 floatingConfiguration:{"interfaceOrientation"), objc_msgSend(v15, "floatingConfiguration")}];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
    }

    else
    {
      v26 = [v5 interfaceOrientationForLayoutElement:v17];
      v27 = [v17 layoutRole];
      v28 = [v15 appLayout];
      [v5 frameForItemWithRole:v27 inMainAppLayout:v28 interfaceOrientation:v26];
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

+ (BOOL)isDragOverFullscreenRegionAtLocation:(CGPoint)a3 inBounds:(CGRect)a4
{
  y = a3.y;
  x = a3.x;
  [a1 prototypeSettingsFullscreenActivationRegionSize];
  SBRectWithSize();
  UIRectCenteredXInRect();
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

+ (unint64_t)screenEdgeForDragOverSideGutterRegionsAtLocation:(CGPoint)a3 inBounds:(CGRect)a4 totalContentDragGutterWidth:(double)a5 screenInsets:(UIEdgeInsets)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3.x;
  v12 = a6.left + CGRectGetMinX(a4);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v13 = CGRectGetMinX(v19) + a5;
  if (v11 > v12 && v11 < v13)
  {
    return 2;
  }

  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v15 = CGRectGetMaxX(v20) - a6.right;
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v16 = CGRectGetMaxX(v21) - a5;
  if (v11 >= v15 || v11 <= v16)
  {
    return 0;
  }

  else
  {
    return 8;
  }
}

- (SBDragAndDropWorkspaceTransaction)initWithTransitionRequest:(id)a3 switcherController:(id)a4 dropSession:(id)a5 delegate:(id)a6
{
  v76 = *MEMORY[0x277D85DE8];
  v10 = a3;
  obj = a4;
  v67 = a5;
  v64 = a6;
  v74.receiver = self;
  v74.super_class = SBDragAndDropWorkspaceTransaction;
  v62 = v10;
  v11 = [(SBMainWorkspaceTransaction *)&v74 initWithTransitionRequest:v10];
  if (v11)
  {
    v12 = [obj contentViewController];
    v13 = objc_opt_class();
    v14 = v12;
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

    v16 = [obj windowScene];
    v65 = [v16 sceneManager];

    objc_storeWeak(v11 + 26, obj);
    objc_storeWeak(v11 + 27, v61);
    objc_storeWeak(v11 + 28, v65);
    objc_storeWeak(v11 + 29, v64);
    objc_storeStrong(v11 + 33, a5);
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
    v22 = [v21 windowingSettings];
    v23 = *(v11 + 59);
    *(v11 + 59) = v22;

    v24 = [obj layoutState];
    v25 = *(v11 + 30);
    *(v11 + 30) = v24;

    objc_storeStrong(v11 + 31, *(v11 + 30));
    v63 = [v67 application];
    if (!v63)
    {
      [SBDragAndDropWorkspaceTransaction initWithTransitionRequest:switcherController:dropSession:delegate:];
    }

    v26 = +[SBDraggingSystemManager sharedInstance];
    v27 = [v67 allowsCommandeering];
    v28 = [v67 systemSession];
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    [v26 setCommandeered:v27 forDraggingSystemSession:v28 forReason:v30];

    v60 = [v67 sceneIdentity];
    v31 = [v65 displayIdentity];
    v59 = [SBApplicationSceneHandleRequest defaultRequestForApplication:v63 sceneIdentity:v60 displayIdentity:v31];

    v32 = objc_opt_class();
    v33 = [v65 fetchOrCreateApplicationSceneHandleForRequest:v59];
    v34 = SBSafeCast(v32, v33);
    v35 = *(v11 + 35);
    *(v11 + 35) = v34;

    if (!*(v11 + 35))
    {
      [SBDragAndDropWorkspaceTransaction initWithTransitionRequest:switcherController:dropSession:delegate:];
    }

    v36 = [*(v11 + 33) localContext];
    v37 = [v36 startLocation] == 8;

    if (v37)
    {
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v38 = [*(v11 + 31) elements];
      v39 = [v38 countByEnumeratingWithState:&v70 objects:v75 count:16];
      if (v39)
      {
        v40 = *v71;
        while (2)
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v71 != v40)
            {
              objc_enumerationMutation(v38);
            }

            v42 = *(*(&v70 + 1) + 8 * i);
            v43 = [v42 uniqueIdentifier];
            v44 = [*(v11 + 35) sceneIdentifier];
            v45 = [v43 isEqualToString:v44];

            if (v45)
            {
              v46 = v42;
              goto LABEL_22;
            }
          }

          v39 = [v38 countByEnumeratingWithState:&v70 objects:v75 count:16];
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
    v49 = [v67 localContext];
    v50 = [v49 portaledPreview];
    v51 = SBSafeCast(v48, v50);

    objc_storeStrong(v11 + 51, v51);
    v52 = [v67 uiDragDropSession];
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
    v6 = [(SBApplicationDropSession *)v5 uiDragDropSession];
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

- (BOOL)matchesUIDragDropSession:(id)a3
{
  v4 = a3;
  v5 = [(SBApplicationDropSession *)self->_dropSession uiDragDropSession];

  if (v5 == v4)
  {
    v9 = 1;
  }

  else
  {
    v6 = SBFSafeProtocolCast();
    v7 = [(SBApplicationDropSession *)self->_dropSession uiDragDropSession];
    v8 = [v6 localDragSession];
    v9 = v7 == v8;
  }

  return v9;
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"SBDragAndDropWorkspaceTransaction.m" lineNumber:666 description:{@"%s shouldn't be forwarded to %@", "-[SBDragAndDropWorkspaceTransaction dragInteraction:itemsForBeginningSession:]", v8}];

  return 0;
}

- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = objc_opt_class();
  v10 = SBSafeCast(v9, v8);

  if (!v10)
  {
    [SBDragAndDropWorkspaceTransaction dragInteraction:previewForLiftingItem:session:];
  }

  v11 = self->_dropSession;
  v12 = [(SBApplicationDropSession *)v11 application];
  v13 = [v10 sourceViewProvider];
  v14 = [v13 sourceView];
  v15 = [(SBDragAndDropWorkspaceTransaction *)self _createPlatterPreviewForApplication:v12 withSourceView:v14 dropSession:v11];
  v16 = [v13 initialCornerRadiusConfiguration];
  [(SBAppPlatterDragPreview *)v15 setCornerRadiusConfiguration:v16];

  [v13 initialDiffuseShadowParameters];
  [(SBAppPlatterDragPreview *)v15 setDiffuseShadowParameters:?];
  [v13 initialRimShadowParameters];
  [(SBAppPlatterDragPreview *)v15 setRimShadowParameters:?];
  v17 = [v13 initialDiffuseShadowFilters];
  [(SBAppPlatterDragPreview *)v15 setDiffuseShadowFilters:v17];

  v18 = [v13 initialRimShadowFilters];
  [(SBAppPlatterDragPreview *)v15 setRimShadowFilters:v18];

  [(SBAppPlatterDragPreview *)v15 setDragState:1];
  [(SBAppPlatterDragPreview *)v15 layoutIfNeeded];
  activePlatterPreview = self->_activePlatterPreview;
  self->_activePlatterPreview = v15;
  v20 = v15;

  activeSourceViewProvider = self->_activeSourceViewProvider;
  self->_activeSourceViewProvider = v13;
  v22 = v13;

  [(SBDragAndDropWorkspaceTransaction *)self _updateActiveSourceViewProviderWithDragState:1];
  v23 = [(SBApplicationDropSession *)v11 localContext];
  [v23 setPortaledPreview:v20];

  v24 = objc_alloc(MEMORY[0x277D75B88]);
  v25 = [v24 initWithView:v20];
  [v25 set_springboardPlatterStyle:1];
  [v7 locationInView:v14];

  [v14 bounds];
  [SBDragAndDropWorkspaceTransaction _updateAnchorPointForPlatterPreview:"_updateAnchorPointForPlatterPreview:dragPreview:withSourceViewBounds:location:" dragPreview:v20 withSourceViewBounds:v25 location:?];

  return v25;
}

- (void)dragInteraction:(id)a3 sessionDidMove:(id)a4
{
  v5 = a4;
  if (!self->_beganTrackingDropSession && !self->_performedDrop)
  {
    v6 = v5;
    [(SBDragAndDropWorkspaceTransaction *)self _handleSessionDidUpdate:v5];
    v5 = v6;
  }
}

- (void)dragInteraction:(id)a3 session:(id)a4 willEndWithOperation:(unint64_t)a5
{
  v8 = a4;
  v7 = [(SBDragAndDropWorkspaceTransaction *)self isInterrupted];
  if (!a5 && (v7 & 1) == 0)
  {
    [(SBDragAndDropWorkspaceTransaction *)self _handleSessionDidPerformDrop:v8];
  }
}

- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5
{
  v8 = a4;
  v7 = [(SBDragAndDropWorkspaceTransaction *)self isInterrupted];
  if (!a5 && (v7 & 1) == 0)
  {
    [(SBDragAndDropWorkspaceTransaction *)self _handleSessionDidEnd:v8];
  }

  [(SBAppPlatterDragPreview *)self->_activePlatterPreview draggingSourceDroppedWithOperation:a5];
}

- (id)dragInteraction:(id)a3 previewForCancellingItem:(id)a4 withDefault:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (([(SBDragAndDropWorkspaceTransaction *)self isInterrupted]& 1) == 0 && [(SBDragAndDropWorkspaceTransaction *)self _layoutRoleForDropAction:self->_currentDropAction])
  {
    v9 = [(SBDragAndDropWorkspaceTransaction *)self _dragPreviewForDroppingItem:v7 withDefault:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)dragInteraction:(id)a3 item:(id)a4 willAnimateCancelWithAnimator:(id)a5
{
  v6 = a5;
  if (([(SBDragAndDropWorkspaceTransaction *)self isInterrupted]& 1) == 0 && [(SBDragAndDropWorkspaceTransaction *)self _layoutRoleForDropAction:self->_currentDropAction])
  {
    [(SBDragAndDropWorkspaceTransaction *)self _handleWillAnimateDropWithAnimator:v6];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __88__SBDragAndDropWorkspaceTransaction_dragInteraction_item_willAnimateCancelWithAnimator___block_invoke;
    v7[3] = &unk_2783ACA48;
    v7[4] = self;
    [v6 addCompletion:v7];
  }
}

- (void)_dragInteractionDidCancelLiftWithoutDragging:(id)a3
{
  [(SBAppPlatterDragPreview *)self->_activePlatterPreview draggingSourceCancelAnimationCompleted];
  v4 = [(SBApplicationDropSession *)self->_dropSession uiDragDropSession];
  [(SBDragAndDropWorkspaceTransaction *)self _handleSessionDidEnd:v4];
}

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  self->_beganTrackingDropSession = 1;
  v5 = a4;
  v6 = [(SBDragAndDropWorkspaceTransaction *)self _handleSessionDidUpdate:v5];
  v7 = [v5 allowsMoveOperation];

  if (v7)
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

- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4
{
  if (!self->_performedDrop)
  {
    [(SBDragAndDropWorkspaceTransaction *)self _handleSessionDidUpdate:a4];
  }
}

- (void)dropInteraction:(id)a3 concludeDrop:(id)a4
{
  if (([(SBDragAndDropWorkspaceTransaction *)self isInterrupted:a3]& 1) == 0)
  {
    self->_sessionState = 2;
  }
}

- (void)dropInteraction:(id)a3 sessionDidEnd:(id)a4
{
  v7 = a4;
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
      v6 = [(SBWorkspaceTransitionRequest *)self->super.super._transitionRequest applicationContext];
      [WeakRetained performTransitionWithContext:v6 animated:1 completion:0];

      [(SBDragAndDropWorkspaceTransaction *)self _cleanUpAndCompleteTransactionIfNecessary];
    }

    [(SBDragAndDropWorkspaceTransaction *)self _handleSessionDidEnd:v7];
  }
}

- (id)dropInteraction:(id)a3 previewForDroppingItem:(id)a4 withDefault:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (([(SBDragAndDropWorkspaceTransaction *)self isInterrupted]& 1) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = [(SBDragAndDropWorkspaceTransaction *)self _dragPreviewForDroppingItem:v7 withDefault:v8];
  }

  return v9;
}

- (void)dropInteraction:(id)a3 item:(id)a4 willAnimateDropWithAnimator:(id)a5
{
  v6 = a5;
  if (([(SBDragAndDropWorkspaceTransaction *)self isInterrupted]& 1) == 0)
  {
    [(SBDragAndDropWorkspaceTransaction *)self _handleWillAnimateDropWithAnimator:v6];
  }
}

- (id)_dropInteraction:(id)a3 customSpringAnimationBehaviorForDroppingItem:(id)a4
{
  currentDropAction = self->_currentDropAction;
  medusaSettings = self->_medusaSettings;
  if (currentDropAction == 10)
  {
    [(SBMedusaSettings *)medusaSettings switcherCardDropAnimationSettings:a3];
  }

  else
  {
    [(SBMedusaSettings *)medusaSettings dropAnimationSettings:a3];
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

- (BOOL)_handleSessionDidUpdate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v6 = [WeakRetained maximumNumberOfScenesOnStage];
  v7 = [(SBMainDisplayLayoutState *)self->_initialLayoutState appLayout];
  v8 = [v7 allItems];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __61__SBDragAndDropWorkspaceTransaction__handleSessionDidUpdate___block_invoke;
  v28[3] = &unk_2783A8C90;
  v29 = v7;
  v9 = v7;
  v10 = [v8 bs_filter:v28];
  v11 = [v10 count];

  if (v11 >= v6 && [(SBSwitcherWindowingSettings *)self->_windowingSettings rejectDropsWhenStageIsFull])
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
      v16 = [(SBApplicationDropSession *)self->_dropSession uiDragDropSession];
      v17 = SBApplicationDropSessionGetDragItem(v16);

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
    v19 = [WeakRetained view];
    [v4 locationInView:v19];
    v21 = v20;
    v23 = v22;

    [(SBTouchHistory *)self->_touchHistory updateWithLocation:v21 timestamp:v23, CACurrentMediaTime()];
    [(SBDragAndDropWorkspaceTransaction *)self _updateForWindowDragForSession:v4];
    [(SBDragAndDropWorkspaceTransaction *)self _updateCurrentDropActionForSession:v4];
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

- (void)_commitRecencyModelUpdateForDropContext:(id)a3
{
  if (a3)
  {
    self->_needsSwitcherDropAnimationCompletedNotification = 1;
    v4 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_switcherController);
    [WeakRetained _performSwitcherDropWithContext:v4];
  }
}

- (void)_handleSessionDidPerformDrop:(id)a3
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
        v10 = [(SBWorkspaceTransitionRequest *)self->_dropTransitionRequest applicationContext];
        v11 = [v10 layoutState];

        finalLayoutState = self->_finalLayoutState;
        self->_finalLayoutState = v11;
      }
    }

    else
    {

      [(SBDragAndDropWorkspaceTransaction *)self _cleanUpAndCompleteTransactionIfNecessary];
    }
  }
}

- (id)_dragPreviewForDroppingItem:(id)a3 withDefault:(id)a4
{
  currentDropAction = self->_currentDropAction;
  v6 = a4;
  v7 = [(SBDragAndDropWorkspaceTransaction *)self _layoutRoleForDropAction:currentDropAction];
  if (!v7)
  {
    [SBDragAndDropWorkspaceTransaction _dragPreviewForDroppingItem:withDefault:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v9 = [WeakRetained view];
  v10 = [(SBWorkspaceTransaction *)self windowScene];
  v11 = [v10 switcherController];

  v12 = self->_currentDropAction;
  if (v12 != 10)
  {
LABEL_9:
    if (v12 == 9)
    {
      v18 = [(SBLayoutState *)self->_finalLayoutState interfaceOrientation];
      v19 = v11;
      v20 = 4;
    }

    else if (v12 == 8)
    {
      v18 = [(SBLayoutState *)self->_finalLayoutState interfaceOrientation];
      v19 = v11;
      v20 = 3;
    }

    else
    {
      finalLayoutState = self->_finalLayoutState;
      if (v7 != 3)
      {
        v23 = [(SBMainDisplayLayoutState *)finalLayoutState appLayout];
        [v11 frameForItemWithRole:v7 inMainAppLayout:v23 interfaceOrientation:{-[SBLayoutState interfaceOrientation](self->_finalLayoutState, "interfaceOrientation")}];

        goto LABEL_19;
      }

      v22 = [(SBLayoutState *)finalLayoutState interfaceOrientation];
      v20 = [(SBMainDisplayLayoutState *)self->_finalLayoutState floatingConfiguration];
      v19 = v11;
      v18 = v22;
    }

    [v19 frameForFloatingAppLayoutInInterfaceOrientation:v18 floatingConfiguration:v20];
    goto LABEL_19;
  }

  if (![(SBSwitcherDropRegionContext *)self->_currentSwitcherDropRegionContext currentDropRegion])
  {
    v12 = self->_currentDropAction;
    goto LABEL_9;
  }

  v13 = self->_currentSwitcherDropRegionContext;
  v14 = [(SBSwitcherDropRegionContext *)v13 currentDropRegion];
  if (v14 <= 7)
  {
    if (((1 << v14) & 0x78) != 0)
    {
      v15 = [(SBSwitcherDropRegionContext *)v13 finalTargetAppLayout];
      v16 = [(SBSwitcherDropRegionContext *)v13 draggingLeafAppLayout];
      v17 = [v16 itemForLayoutRole:1];

      [WeakRetained scaledFrameForLayoutRole:objc_msgSend(v15 inAppLayout:{"layoutRoleForItem:", v17), v15}];
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
  v26 = [v24 initWithContainer:v9 center:v29 transform:?];
  v27 = [v6 retargetedPreviewWithTarget:v26];

  [v27 set_springboardPlatterStyle:1];

  return v27;
}

- (void)_handleWillAnimateDropWithAnimator:(id)a3
{
  v4 = a3;
  [(SBDragAndDropWorkspaceTransaction *)self addMilestone:@"SBDragAndDropAppActivationDropAnimationMilestone"];
  v5 = [(SBWorkspaceTransaction *)self windowScene];
  v6 = [v5 floatingDockController];
  [v6 dismissFloatingDockIfPresentedAnimated:1 completionHandler:0];
  v7 = [MEMORY[0x277D66210] sharedInstance];
  [v7 dismissAppIconForceTouchControllers:0];

  v8 = [(SBDragAndDropWorkspaceTransaction *)self _iconManager];
  [v8 dismissIconShareSheets];

  [(SBDragAndDropWorkspaceTransaction *)self addMilestone:@"SBDragAndDropAppActivationWaitingToAddToAppsTransactionMilestone"];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__SBDragAndDropWorkspaceTransaction__handleWillAnimateDropWithAnimator___block_invoke;
  v10[3] = &unk_2783A8C18;
  v10[4] = self;
  [v4 addAnimations:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__SBDragAndDropWorkspaceTransaction__handleWillAnimateDropWithAnimator___block_invoke_3;
  v9[3] = &unk_2783ACA48;
  v9[4] = self;
  [v4 addCompletion:v9];
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

- (void)_handleSessionDidEnd:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = *MEMORY[0x277D67518];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_currentDropAction];
  v13[0] = v4;
  v12[1] = *MEMORY[0x277D67510];
  v5 = MEMORY[0x277CCABB0];
  v6 = [(SBApplicationDropSession *)self->_dropSession localContext];
  v7 = [v5 numberWithInteger:{objc_msgSend(v6, "startLocation")}];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v9 = MEMORY[0x277D65DD0];
  v10 = v8;
  v11 = [v9 sharedInstance];
  [v11 emitEvent:32 withPayload:v10];

  self->_sessionState = 2;
  [(SBDragAndDropWorkspaceTransaction *)self _uncommandeerContentDrag];
  [(SBDragAndDropWorkspaceTransaction *)self _noteSwitcherDropAnimationCompletedIfNeededWithContext:self->_currentSwitcherDropRegionContext];
  [(SBDragAndDropWorkspaceTransaction *)self removeMilestone:@"SBDragAndDropAppActivationDraggingMilestone"];
}

- (void)_noteSwitcherDropAnimationCompletedIfNeededWithContext:(id)a3
{
  if (self->_needsSwitcherDropAnimationCompletedNotification)
  {
    self->_needsSwitcherDropAnimationCompletedNotification = 0;
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_switcherController);
    [WeakRetained _noteSwitcherDropAnimationCompletedWithContext:v5];
  }
}

- (void)_uncommandeerContentDrag
{
  v3 = [(SBApplicationDropSession *)self->_dropSession uiDragDropSession];
  v8 = SBApplicationDropSessionGetDragItem(v3);

  [v8 setPreviewProvider:0];
  v4 = +[SBDraggingSystemManager sharedInstance];
  v5 = [(SBApplicationDropSession *)self->_dropSession systemSession];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v4 setCommandeered:0 forDraggingSystemSession:v5 forReason:v7];
}

- (void)_displayLinkDidUpdate:(id)a3
{
  v4 = [(SBApplicationDropSession *)self->_dropSession uiDragDropSession];
  [(SBDragAndDropWorkspaceTransaction *)self _updateForWindowDragForSession:?];
  if (self->_windowDragEnteredPlatterZone)
  {
    [(SBDragAndDropWorkspaceTransaction *)self _handleSessionDidUpdate:v4];
  }
}

- (void)_updateForWindowDragForSession:(id)a3
{
  v4 = a3;
  if (self->_layoutElementForWindowDrag && !self->_windowDragEnteredPlatterZone)
  {
    if (!self->_displayLinkForWindowDrag)
    {
      v5 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel__displayLinkDidUpdate_];
      displayLinkForWindowDrag = self->_displayLinkForWindowDrag;
      self->_displayLinkForWindowDrag = v5;

      [(CADisplayLink *)self->_displayLinkForWindowDrag setPaused:0];
      v7 = self->_displayLinkForWindowDrag;
      v8 = [MEMORY[0x277CBEB88] mainRunLoop];
      [(CADisplayLink *)v7 addToRunLoop:v8 forMode:*MEMORY[0x277CBE738]];

      self->_windowDragPauseCounter = 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
    v10 = [WeakRetained view];
    [v10 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [v4 locationInView:v10];
    v20 = v19;
    v22 = v21;
    [objc_opt_class() prototypeSettingsContentDraggingCommandeerWidth];
    v24 = v23;
    [(SBTouchHistory *)self->_touchHistory averageTouchVelocityOverTimeDuration:0.0416666667];
    if (BSFloatLessThanFloat() && (([objc_opt_class() isDragOverFullscreenRegionAtLocation:v20 inBounds:{v22, v12, v14, v16, v18}] & 1) != 0 || -[SBLayoutElement layoutRole](self->_layoutElementForWindowDrag, "layoutRole") == 3 && (v25 = objc_opt_class(), objc_msgSend(objc_opt_class(), "_screenInsetsForUIDragDropSession:", v4), objc_msgSend(v25, "screenEdgeForDragOverSideGutterRegionsAtLocation:inBounds:totalContentDragGutterWidth:screenInsets:", v20, v22, v12, v14, v16, v18, v24, v26, v27, v28, v29))))
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
    v34 = [(SBLayoutElement *)self->_layoutElementForWindowDrag layoutRole];
    v35 = v34;
    v69 = v10;
    if (v34 == 1)
    {
      v36 = [SBPreviousWorkspaceEntity entityWithPreviousLayoutRole:2];
      [(SBWorkspaceApplicationSceneTransitionContext *)v33 setEntity:v36 forLayoutRole:1];

      v37 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
      [(SBWorkspaceApplicationSceneTransitionContext *)v33 setEntity:v37 forLayoutRole:2];
    }

    else
    {
      if (v34 != 2)
      {
        if (v34 == 3)
        {
          v64 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
          [(SBWorkspaceApplicationSceneTransitionContext *)v33 setEntity:v64 forLayoutRole:1];

          v65 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
          [(SBWorkspaceApplicationSceneTransitionContext *)v33 setEntity:v65 forLayoutRole:2];
        }

        else
        {
          if (v34 != 4)
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
        v44 = [(SBWorkspaceTransaction *)self transitionRequest];
        v45 = [v44 workspace];
        v46 = [v44 displayConfiguration];
        v47 = [v45 createRequestWithOptions:0 displayConfiguration:v46];

        [v47 setSource:{objc_msgSend(v44, "source")}];
        [v47 setEventLabel:@"DragAndDropAppActivation"];
        [v47 setApplicationContext:v33];
        [v47 finalize];
        objc_storeStrong(&self->super.super._transitionRequest, v47);
        v48 = [(SBWorkspaceTransaction *)self layoutStateTransitionCoordinator];
        [v48 beginTransitionForWorkspaceTransaction:self];

        v49 = SBLayoutRoleSetAppLayout();
        LODWORD(v46) = [v49 containsRole:{-[SBLayoutElement layoutRole](self->_layoutElementForWindowDrag, "layoutRole")}];

        if (v46)
        {
          v50 = [v47 applicationContext];
          v51 = [v50 layoutState];
          v52 = [v51 elementWithRole:1];

          v53 = [v52 workspaceEntity];
          v54 = [v53 applicationSceneEntity];

          v55 = [[SBApplicationSceneUpdateTransaction alloc] initWithApplicationSceneEntity:v54 transitionRequest:v47];
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

        v58 = [v47 applicationContext];
        v59 = [v58 layoutState];
        currentLayoutState = self->_currentLayoutState;
        self->_currentLayoutState = v59;

        v61 = objc_loadWeakRetained(&self->_delegate);
        v62 = [(SBDeviceApplicationSceneHandle *)self->_draggingApplicationSceneHandle sceneIdentifier];
        [v61 dragAndDropTransaction:self didPlatterizeWindowDragWithSceneIdentifier:v62];

        v63 = [(SBWorkspaceTransitionRequest *)self->super.super._transitionRequest applicationContext];
        [WeakRetained performTransitionWithContext:v63 animated:1 completion:0];

        v10 = v69;
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
    v5 = [(SBAppPlatterDragSourceViewProviding *)v4 containerViewForBlurContentView];
    v6 = [(SBAppPlatterDragPreview *)v3 platterView];
    v7 = [v6 iconView];
    v8 = [v7 imageView];
    [v8 setHidden:0];

    v9 = [v6 layer];
    [v9 setZPosition:1.79769313e308];

    [v5 addSubview:v6];
    [v5 bounds];
    [v6 setBounds:?];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __76__SBDragAndDropWorkspaceTransaction__updatePlatterViewBlurForDropCompletion__block_invoke;
    v11[3] = &unk_2783A92D8;
    v11[4] = self;
    v12 = v6;
    v10 = v6;
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
  v5 = [(SBApplicationDropSession *)self->_dropSession localContext];
  if ([v5 startLocation] == 8)
  {
  }

  else
  {
    v6 = [(SBApplicationDropSession *)self->_dropSession isWindowTearOff];

    if (!v6)
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
  v11 = [v10 isiPadMini];

  result = v4 / 0.9;
  if (!v11)
  {
    return v4;
  }

  return result;
}

- (double)_platterScaleForSwitcherDropContext:(id)a3
{
  medusaSettings = self->_medusaSettings;
  v5 = a3;
  [(SBMedusaSettings *)medusaSettings cardPlatterScale];
  v7 = v6;
  v8 = [v5 draggingLeafAppLayout];
  v9 = [v8 environment];

  v10 = [v5 currentDropRegion];
  v11 = [v5 intersectingAppLayout];

  v12 = [v11 environment];
  if (v9 == 2)
  {
    v13 = v10;
  }

  else
  {
    v13 = v12;
  }

  if (v13 != 2)
  {
    return v7;
  }

  v14 = self->_medusaSettings;

  [(SBMedusaSettings *)v14 floatingCardPlatterScale];
  return result;
}

- (CGSize)_platterSizeForDropAction:(int64_t)a3 proposedDropLayoutState:(id)a4 setDown:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = [(SBWorkspaceTransaction *)self windowScene];
  v10 = [v9 switcherController];

  v11 = [v10 windowManagementContext];
  v12 = [v11 isChamoisOrFlexibleWindowing];

  v13 = *MEMORY[0x277CBF3A8];
  v14 = *(MEMORY[0x277CBF3A8] + 8);
  if (!v12)
  {
    if (a3 > 4)
    {
      if ((a3 - 6) < 4)
      {
        [v10 frameForFloatingAppLayoutInInterfaceOrientation:objc_msgSend(v8 floatingConfiguration:{"interfaceOrientation"), objc_msgSend(v8, "floatingConfiguration")}];
        v13 = v19;
        v14 = v20;
        goto LABEL_16;
      }

      if (a3 != 5)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if ((a3 - 1) < 2)
      {
LABEL_8:
        v18 = &SBLayoutRolePrimary;
LABEL_15:
        v23 = *v18;
        v24 = [v8 appLayout];
        [v10 frameForItemWithRole:v23 inMainAppLayout:v24 interfaceOrientation:{objc_msgSend(v8, "interfaceOrientation")}];
        v13 = v25;
        v14 = v26;

        goto LABEL_16;
      }

      if (a3 != 3)
      {
        if (a3 != 4)
        {
          goto LABEL_16;
        }

        goto LABEL_8;
      }
    }

    v18 = &SBLayoutRoleSide;
    goto LABEL_15;
  }

  if ((a3 - 1) < 5)
  {
    v15 = [v8 appLayout];
    [v10 frameForItemWithRole:1 inMainAppLayout:v15 interfaceOrientation:{objc_msgSend(v8, "interfaceOrientation")}];
    v13 = v16;
    v14 = v17;

    goto LABEL_16;
  }

LABEL_12:
  if (a3 == 10)
  {
    [(SBDragAndDropWorkspaceTransaction *)self _platterSizeForSwitcherDropContext:self->_currentSwitcherDropRegionContext setDown:v5];
    v13 = v21;
    v14 = v22;
  }

LABEL_16:
  if (!v5)
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

- (CGSize)_platterSizeForSwitcherDropContext:(id)a3 setDown:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v8 = [v6 draggingLeafAppLayout];
  v9 = [v6 currentDropRegion];
  v10 = [v6 currentDropAction];
  if (v4)
  {
    v11 = [WeakRetained appLayouts];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __80__SBDragAndDropWorkspaceTransaction__platterSizeForSwitcherDropContext_setDown___block_invoke;
    v25[3] = &unk_2783A8CB8;
    v26 = v8;
    v8 = [v11 bs_firstObjectPassingTest:v25];
  }

  v12 = [(SBWorkspaceTransaction *)self windowScene];
  v13 = [v12 switcherController];

  v14 = [WeakRetained switcherInterfaceOrientation];
  if ([v8 environment] == 1 || v10 == 3)
  {
    [v13 frameForItemWithRole:1 inMainAppLayout:v8 interfaceOrientation:v14];
    goto LABEL_8;
  }

  if ([v8 environment] == 2)
  {
    [v13 frameForFloatingAppLayoutInInterfaceOrientation:v14 floatingConfiguration:2];
LABEL_8:
    v17 = v15;
    v18 = v16;
    goto LABEL_10;
  }

  v17 = *MEMORY[0x277CBF3A8];
  v18 = *(MEMORY[0x277CBF3A8] + 8);
LABEL_10:
  if (v9 <= 7)
  {
    if (((1 << v9) & 0x8D) != 0)
    {
      if (v10 == 3)
      {
        [v6 targetRect];
        v17 = v19;
        v18 = v20;
        goto LABEL_19;
      }

      [(SBAppPlatterDragPreview *)self->_activePlatterPreview sourceViewScale];
      SBTransformedSizeWithScale();
    }

    else if (((1 << v9) & 0x70) != 0)
    {
      [v6 scaledIntersectingAppLayoutSize];
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

- (double)_platterSourceViewScaleForSetDropAction:(int64_t)a3 setDown:(BOOL)a4
{
  v4 = a4;
  [(SBAppPlatterDragPreview *)self->_activePlatterPreview sourceViewScale];
  if (!v4)
  {
    return v7;
  }

  v8 = 1.0;
  if (a3 == 10)
  {
    WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
    v10 = [(SBDeviceApplicationSceneHandle *)self->_draggingApplicationSceneHandle sceneIdentifier];
    v11 = [WeakRetained appLayouts];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __85__SBDragAndDropWorkspaceTransaction__platterSourceViewScaleForSetDropAction_setDown___block_invoke;
    v16[3] = &unk_2783A8CB8;
    v17 = v10;
    v12 = v10;
    v13 = [v11 bs_firstObjectPassingTest:v16];

    [WeakRetained contentPageViewScaleForAppLayout:v13];
    v8 = v14;
  }

  return v8;
}

- (id)_cornerRadiusConfigurationForDropAction:(int64_t)a3 proposedDropLayoutState:(id)a4 setDown:(BOOL)a5 mode:(unint64_t)a6
{
  v7 = a5;
  v33 = *MEMORY[0x277D85DE8];
  v10 = a4;
  if (a6 != 2 && !v7)
  {
    v11 = 0.0;
    if ((a3 - 1) <= 9)
    {
      v11 = dbl_21F8A7278[a3 - 1];
    }

    v12 = objc_alloc(MEMORY[0x277CF0BE8]);
    v13 = v11;
    goto LABEL_10;
  }

  v14 = [(SBDragAndDropWorkspaceTransaction *)self _layoutRoleForDropAction:a3];
  v15 = v14;
  if (a6 == 2 && !self->_layoutElementForWindowDrag)
  {
    activeSourceViewProvider = self->_activeSourceViewProvider;
    if (activeSourceViewProvider)
    {
      v17 = [(SBAppPlatterDragSourceViewProviding *)activeSourceViewProvider initialCornerRadiusConfiguration];
      goto LABEL_11;
    }

    v12 = objc_alloc(MEMORY[0x277CF0BE8]);
    v13 = 10.0;
LABEL_10:
    v17 = [v12 initWithCornerRadius:v13];
LABEL_11:
    v18 = v17;
    goto LABEL_12;
  }

  if (v14 == 3)
  {
    v16 = objc_alloc(MEMORY[0x277CF0BE8]);
    [(SBMedusaSettings *)self->_medusaSettings cornerRadiusForFloatingApps];
    v12 = v16;
    goto LABEL_10;
  }

  v20 = [v10 elementWithRole:v14];
  v18 = SBDefaultCornerRadiusConfigurationForElementInLayoutState(v20, v10);

  if (a6 == 2 && !v7)
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

- (id)_cornerRadiusForSwitcherDragContext:(id)a3 setDown:(BOOL)a4 sourceViewScale:(double)a5
{
  v6 = a4;
  v8 = a3;
  v9 = v8;
  if (v6)
  {
    v10 = [v8 finalTargetAppLayout];
    v11 = [v9 draggingLeafAppLayout];

    v12 = [v11 itemForLayoutRole:1];
    v13 = [v10 layoutRoleForItem:v12];
  }

  else
  {
    v10 = [v8 draggingAppLayout];

    v13 = 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  [WeakRetained cornerRadiiForLayoutRole:v13 inAppLayout:v10];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = [objc_alloc(MEMORY[0x277CF0BE8]) initWithTopLeft:v16 * a5 bottomLeft:v18 * a5 bottomRight:v20 * a5 topRight:v22 * a5];

  return v23;
}

- (void)_getPlatterDiffuseShadowParameters:(SBDragPreviewShadowParameters *)a3 rimShadowParameters:(SBDragPreviewShadowParameters *)a4 diffuseFilters:(id *)a5 rimFilters:(id *)a6 forDropAction:(int64_t)a7 setDown:(BOOL)a8 mode:(unint64_t)a9 userInterfaceStyle:(int64_t)a10
{
  v58[1] = *MEMORY[0x277D85DE8];
  if (a9 == 2)
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
      v34 = [(SBAppPlatterDragSourceViewProviding *)v17 initialDiffuseShadowFilters];
      v35 = [(SBAppPlatterDragSourceViewProviding *)v17 initialRimShadowFilters];
LABEL_27:

      goto LABEL_28;
    }

LABEL_5:
    v17 = self->_medusaSettings;
    if ([(SBDragAndDropWorkspaceTransaction *)self _layoutRoleForDropAction:a7]== 3)
    {
      if (a10 == 2)
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
      v39 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
      [(SBAppPlatterDragSourceViewProviding *)v17 diffuseShadowOffsetHorizontal];
      if (v39 == 1)
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
      if (a10 == 2)
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
        v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:1];
        v57 = v45;
        v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];

        goto LABEL_27;
      }
    }

    else
    {
      v23 = 0.0;
      if (a9 != 2 || a8)
      {
        v35 = 0;
        v34 = 0;
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
    v35 = 0;
    v34 = 0;
    v31 = *MEMORY[0x277CBF3A8];
    v33 = *(MEMORY[0x277CBF3A8] + 8);
    goto LABEL_27;
  }

  if (a8)
  {
    goto LABEL_5;
  }

  v37 = a7 - 1;
  v33 = 0.0;
  v35 = 0;
  v34 = 0;
  if ((a7 - 1) > 9)
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
  if (a3)
  {
    a3->shadowOpacity = v19;
    a3->shadowRadius = v21;
    a3->shadowOffset.width = v23;
    a3->shadowOffset.height = v25;
  }

  if (a4)
  {
    a4->shadowOpacity = v27;
    a4->shadowRadius = v29;
    a4->shadowOffset.width = v31;
    a4->shadowOffset.height = v33;
  }

  if (a5)
  {
    v54 = v34;
    *a5 = v34;
  }

  if (a6)
  {
    v55 = v35;
    *a6 = v35;
  }
}

- (void)_updatePlatterPreviewForSetDown:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
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
    v11 = [WeakRetained windowManagementContext];
    if ([v11 isChamoisOrFlexibleWindowing])
    {
      v12 = [(SBApplicationDropSession *)self->_dropSession dropZones];

      if (!v12)
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
    v43 = [(SBApplicationDropSession *)self->_dropSession localContext];
    v44 = [v43 startLocation];

    if (v44 == 8)
    {
      v14 = 7;
      v45 = [(SBDragAndDropWorkspaceTransaction *)self _transitionRequestForDropAction:7];
      [v45 finalize];
      v46 = [v45 applicationContext];
      v47 = [v46 layoutState];
      v48 = v9;
      v9 = v47;

      v13 = 1;
    }

    else
    {
      v57 = [(SBAppPlatterDragPreview *)v7 sourceView];
      v13 = v57 != 0;

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

  v60 = v4;
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
    v21 = [(SBMainDisplayLayoutState *)v19 appLayout];
    v22 = [v20 _isAppLayoutBlurred:v21];

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
    v25 = [(SBAppPlatterDragPreview *)v7 platterView];

    if (!v25)
    {
      objc_initWeak(location, self);
      draggingApplicationSceneHandle = self->_draggingApplicationSceneHandle;
      v83[0] = MEMORY[0x277D85DD0];
      v83[1] = 3221225472;
      v83[2] = __78__SBDragAndDropWorkspaceTransaction__updatePlatterPreviewForSetDown_animated___block_invoke;
      v83[3] = &unk_2783B1A70;
      objc_copyWeak(&v84, location);
      v85 = v5;
      [(SBDragAndDropWorkspaceTransaction *)self _configurePlatterPreview:v7 forSceneHandle:draggingApplicationSceneHandle completion:v83];
      objc_destroyWeak(&v84);
      objc_destroyWeak(location);
    }
  }

  [(SBDragAndDropWorkspaceTransaction *)self _platterSourceViewScaleForSetDropAction:currentDropAction setDown:v5];
  v28 = v27;
  [(SBDragAndDropWorkspaceTransaction *)self _platterSizeForDropAction:v14 proposedDropLayoutState:v9 setDown:v5];
  v30 = v29;
  v32 = v31;
  if (self->_currentDropAction == 10)
  {
    [(SBDragAndDropWorkspaceTransaction *)self _cornerRadiusForSwitcherDragContext:self->_currentSwitcherDropRegionContext setDown:v5 sourceViewScale:v28];
  }

  else
  {
    [(SBDragAndDropWorkspaceTransaction *)self _cornerRadiusConfigurationForDropAction:v14 proposedDropLayoutState:v9 setDown:v5 mode:v13];
  }
  v33 = ;
  *location = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0;
  v78 = 0;
  v34 = [(SBAppPlatterDragPreview *)v7 traitCollection];
  -[SBDragAndDropWorkspaceTransaction _getPlatterDiffuseShadowParameters:rimShadowParameters:diffuseFilters:rimFilters:forDropAction:setDown:mode:userInterfaceStyle:](self, "_getPlatterDiffuseShadowParameters:rimShadowParameters:diffuseFilters:rimFilters:forDropAction:setDown:mode:userInterfaceStyle:", location, &v79, &v78, &v77, v14, v5, v13, [v34 userInterfaceStyle]);
  v35 = v78;
  v36 = v77;

  if (v5)
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
    v39 = [(SBLayoutState *)self->_currentLayoutState interfaceOrientation];
    v40 = [(SBLayoutState *)self->_finalLayoutState interfaceOrientation];
    if (v39 != v40)
    {
      v41 = 0.0;
      v42 = 0.0;
      if (v40 != 1)
      {
        if (v40 == 3)
        {
          v42 = 1.57079633;
        }

        else if (v40 == 4)
        {
          v42 = -1.57079633;
        }

        else
        {
          v42 = 3.14159265;
          if (v40 != 2)
          {
            v42 = 0.0;
          }
        }
      }

      if (v39 != 1)
      {
        if (v39 == 3)
        {
          v41 = 1.57079633;
        }

        else if (v39 == 4)
        {
          v41 = -1.57079633;
        }

        else
        {
          v41 = 3.14159265;
          if (v39 != 2)
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
    v56 = [(SBMedusaSettings *)self->_medusaSettings platterAnimationSettings];
    [v55 _animateUsingSpringBehavior:v56 tracking:0 animations:v53 completion:v54];
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
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_updateActiveSourceViewProviderWithDragState:(unint64_t)a3
{
  activeSourceViewProvider = self->_activeSourceViewProvider;
  if (activeSourceViewProvider)
  {
    [(SBAppPlatterDragSourceViewProviding *)activeSourceViewProvider setDragging:a3 > 1];
  }
}

- (void)_runFinalLayoutStateTransaction
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"newChildTransaction != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
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

- (void)_addChildWorkspaceTransaction:(id)a3
{
  v4 = a3;
  v5 = self->_currentWorkspaceTransaction;
  if (v5)
  {
    v6 = [(SBWorkspaceTransaction *)v4 transitionRequest];
    [(SBWorkspaceTransaction *)v5 interruptForTransitionRequest:v6];
  }

  v7 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(SBDragAndDropWorkspaceTransaction *)v4 _addChildWorkspaceTransaction:v7];
  }

  currentWorkspaceTransaction = self->_currentWorkspaceTransaction;
  self->_currentWorkspaceTransaction = v4;
  v9 = v4;

  [(SBDragAndDropWorkspaceTransaction *)self addChildTransaction:v9];
}

- (id)_currentGestureEventForGesture:(id)a3
{
  v4 = SBGestureModifierPhaseForGestureState([a3 state]);
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v6 = [WeakRetained view];

  v7 = [(SBApplicationDropSession *)self->_dropSession uiDragDropSession];
  v8 = [SBDragAndDropGestureSwitcherModifierEvent alloc];
  gestureID = self->_gestureID;
  v10 = [(SBFluidSwitcherGesture *)self->_dragAndDropGesture selectedAppLayout];
  v11 = [(SBGestureSwitcherModifierEvent *)v8 initWithGestureID:gestureID selectedAppLayout:v10 gestureType:6 phase:v4];

  [v7 locationInView:v6];
  [(SBGestureSwitcherModifierEvent *)v11 setLocationInContainerView:?];
  [(SBTouchHistory *)self->_touchHistory averageTouchVelocityOverTimeDuration:0.0166666667];
  [(SBGestureSwitcherModifierEvent *)v11 setVelocityInContainerView:?];
  [(SBGestureSwitcherModifierEvent *)v11 setTouchHistoryProvider:self->_touchHistory];
  [(SBDragAndDropGestureSwitcherModifierEvent *)v11 setDropAction:self->_currentDropAction];
  v12 = [(SBDeviceApplicationSceneHandle *)self->_draggingApplicationSceneHandle sceneIdentifier];
  [(SBDragAndDropGestureSwitcherModifierEvent *)v11 setDraggedSceneIdentifier:v12];

  if (self->_currentSwitcherDropRegionContext)
  {
    v13 = [(SBFluidSwitcherGesture *)self->_dragAndDropGesture selectedLayoutRole];
  }

  else
  {
    v13 = [(SBLayoutElement *)self->_layoutElementForWindowDrag layoutRole];
  }

  [(SBDragAndDropGestureSwitcherModifierEvent *)v11 setDraggedSceneLayoutRole:v13];
  [(SBDragAndDropWorkspaceTransaction *)self _platterFrameInSwitcherView];
  [(SBDragAndDropGestureSwitcherModifierEvent *)v11 setPlatterViewFrame:?];
  [(SBDragAndDropWorkspaceTransaction *)self _platterScale];
  [(SBDragAndDropGestureSwitcherModifierEvent *)v11 setPlatterScale:?];
  [(SBDragAndDropGestureSwitcherModifierEvent *)v11 setSwitcherDropRegionContext:self->_currentSwitcherDropRegionContext];
  v14 = [(SBApplicationDropSession *)self->_dropSession localContext];
  -[SBDragAndDropGestureSwitcherModifierEvent setWindowDrag:](v11, "setWindowDrag:", [v14 startLocation] == 8);

  v15 = [(SBApplicationDropSession *)self->_dropSession localContext];
  -[SBDragAndDropGestureSwitcherModifierEvent setSwitcherDrag:](v11, "setSwitcherDrag:", [v15 startLocation] == 11);

  [(SBDragAndDropGestureSwitcherModifierEvent *)v11 setPreviewHasLifted:self->_windowLiftAnimationCompleted];
  [(SBDragAndDropGestureSwitcherModifierEvent *)v11 setPlatterized:self->_windowDragEnteredPlatterZone];
  if ([(SBDragAndDropWorkspaceTransaction *)self isInterrupted])
  {
    [(SBGestureSwitcherModifierEvent *)v11 setCanceled:1];
  }

  else
  {
    v16 = [(SBDragAndDropWorkspaceTransaction *)self error];
    [(SBGestureSwitcherModifierEvent *)v11 setCanceled:v16 != 0];
  }

  return v11;
}

- (void)_begin
{
  v45.receiver = self;
  v45.super_class = SBDragAndDropWorkspaceTransaction;
  [(SBDragAndDropWorkspaceTransaction *)&v45 _begin];
  v3 = +[SBKeyboardSuppressionManager sharedInstance];
  v4 = [(SBWorkspaceTransaction *)self transitionRequest];
  v5 = [v4 displayIdentity];
  [v3 startSuppressingKeyboardWithReason:@"medusa-drag" predicate:0 displayIdentity:v5];

  v6 = [SBApp deviceOrientationUpdateDeferralAssertionWithReason:@"SBDragAndDropAppActivationDisableRotationReason"];
  deferOrientationUpdatesForDragAndDropAssertion = self->_deferOrientationUpdatesForDragAndDropAssertion;
  self->_deferOrientationUpdatesForDragAndDropAssertion = v6;

  self->_performedDrop = 0;
  [(SBDragAndDropWorkspaceTransaction *)self addMilestone:@"SBDragAndDropAppActivationDraggingMilestone"];
  v8 = [SBApp transactionForDismissingSearchTransientOverlay];
  if (v8)
  {
    [(SBDragAndDropWorkspaceTransaction *)self addChildTransaction:v8 withSchedulingPolicy:0];
  }

  v9 = [MEMORY[0x277CCAD78] UUID];
  gestureID = self->_gestureID;
  self->_gestureID = v9;

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
    v16 = [(SBLayoutElement *)layoutElementForWindowDrag layoutRole];
    currentLayoutState = self->_currentLayoutState;
    if (v16 == 3)
    {
      v18 = [(SBMainDisplayLayoutState *)currentLayoutState floatingAppLayout];
      [v18 anyLeafAppLayout];
    }

    else
    {
      v18 = [(SBMainDisplayLayoutState *)currentLayoutState appLayout];
      [v18 leafAppLayoutForRole:{-[SBLayoutElement layoutRole](self->_layoutElementForWindowDrag, "layoutRole")}];
    }
    v22 = ;
    goto LABEL_12;
  }

  if ([(SBMainDisplayLayoutState *)self->_currentLayoutState unlockedEnvironmentMode]== 2)
  {
    v19 = [(SBDeviceApplicationSceneHandle *)self->_draggingApplicationSceneHandle sceneIdentifier];
    v20 = [WeakRetained appLayouts];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __43__SBDragAndDropWorkspaceTransaction__begin__block_invoke_2;
    v40[3] = &unk_2783A8CB8;
    v21 = v19;
    v41 = v21;
    v22 = [v20 bs_firstObjectPassingTest:v40];

    v23 = [v22 allItems];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __43__SBDragAndDropWorkspaceTransaction__begin__block_invoke_3;
    v38[3] = &unk_2783A8C90;
    v18 = v21;
    v39 = v18;
    v24 = [v23 bs_firstObjectPassingTest:v38];

    -[SBFluidSwitcherGesture _setSelectedLayoutRole:](self->_dragAndDropGesture, "_setSelectedLayoutRole:", [v22 layoutRoleForItem:v24]);
LABEL_12:

    goto LABEL_13;
  }

  v22 = 0;
LABEL_13:
  v25 = [(SBMainDisplayLayoutState *)self->_initialLayoutState appLayout];
  v26 = [(SBApplicationDropSession *)self->_dropSession sceneIdentity];
  v27 = [v26 identifier];
  self->_draggingExistingItemFromActiveLayoutState = [v25 containsItemWithUniqueIdentifier:v27];

  [(SBFluidSwitcherGesture *)self->_dragAndDropGesture _setSelectedAppLayout:v22];
  [(SBFluidSwitcherGesture *)self->_dragAndDropGesture _setState:1];
  if (self->_layoutElementForWindowDrag)
  {
    v28 = [(SBDeviceApplicationSceneHandle *)self->_draggingApplicationSceneHandle sceneIdentifier];
    v29 = [WeakRetained appLayouts];
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __43__SBDragAndDropWorkspaceTransaction__begin__block_invoke_4;
    v36 = &unk_2783A8CB8;
    v30 = v28;
    v37 = v30;
    v31 = [v29 bs_firstObjectPassingTest:&v33];

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
    v3 = [(SBApplicationDropSession *)self->_dropSession uiDragDropSession];
    [(SBDragAndDropWorkspaceTransaction *)self _handleSessionDidEnd:v3];
  }

  [(SBDragAndDropWorkspaceTransaction *)self _endDragAndDropFluidGesture];
  [(BSInvalidatable *)self->_deferOrientationUpdatesForDragAndDropAssertion invalidate];
  deferOrientationUpdatesForDragAndDropAssertion = self->_deferOrientationUpdatesForDragAndDropAssertion;
  self->_deferOrientationUpdatesForDragAndDropAssertion = 0;

  v5 = +[SBKeyboardSuppressionManager sharedInstance];
  [v5 stopSuppressingKeyboardWithReason:@"medusa-drag"];

  [(SBAppPlatterDragPreview *)self->_activePlatterPreview invalidateSourceView];
  [(SBAppPlatterDragSourceViewProviding *)self->_activeSourceViewProvider setDragging:0];
  v6 = [(SBMainWorkspaceTransitionRequest *)self->_dropTransitionRequest completionBlock];

  if (v6)
  {
    v7 = [(SBMainWorkspaceTransitionRequest *)self->_dropTransitionRequest completionBlock];
    v7[2](v7, 1);
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

- (void)_childTransactionDidComplete:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SBDragAndDropWorkspaceTransaction;
  [(SBDragAndDropWorkspaceTransaction *)&v7 _childTransactionDidComplete:v4];
  currentWorkspaceTransaction = self->_currentWorkspaceTransaction;
  if (currentWorkspaceTransaction == v4)
  {
    self->_currentWorkspaceTransaction = 0;

    self->_layoutStateTransitionCompleted = 1;
    [(NSMutableSet *)self->_pendingSceneUpdatesTransactions removeAllObjects];
    goto LABEL_5;
  }

  sceneUpdateTransactionForWindowDrag = self->_sceneUpdateTransactionForWindowDrag;
  if (sceneUpdateTransactionForWindowDrag == v4)
  {
    self->_sceneUpdateTransactionForWindowDrag = 0;

LABEL_5:
    [(SBDragAndDropWorkspaceTransaction *)self _updatePlatterPreviewForSetDown:1 animated:1];
  }
}

- (BOOL)canInterruptForTransitionRequest:(id)a3
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

- (void)_willInterruptWithReason:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBDragAndDropWorkspaceTransaction;
  [(SBDragAndDropWorkspaceTransaction *)&v5 _willInterruptWithReason:a3];
  [(SBDragAndDropWorkspaceTransaction *)self _endDragAndDropFluidGesture];
  v4 = [(SBWorkspaceTransaction *)self layoutStateTransitionCoordinator];
  if ([v4 isTransitioning])
  {
    [v4 willEndTransition];
    [v4 endTransitionWithError:0];
  }
}

- (void)_willInterruptForTransitionRequest:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBDragAndDropWorkspaceTransaction;
  v4 = a3;
  [(SBWorkspaceTransaction *)&v7 _willInterruptForTransitionRequest:v4];
  v5 = objc_opt_class();
  v6 = SBSafeCast(v5, v4);

  if ([v6 source] == 27 || self->_performedDrop)
  {
    [(SBAppPlatterDragPreview *)self->_activePlatterPreview dropDestinationAnimationCompleted];
  }
}

- (void)_didInterruptWithReason:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SBDragAndDropWorkspaceTransaction;
  [(SBDragAndDropWorkspaceTransaction *)&v7 _didInterruptWithReason:v4];
  self->_sessionState = 2;
  if (!self->_performedDrop)
  {
    objc_storeStrong(&self->_finalLayoutState, self->_currentLayoutState);
    v5 = [(SBApplicationDropSession *)self->_dropSession uiDragDropSession];
    [(SBDragAndDropWorkspaceTransaction *)self _updateCurrentDropActionForSession:v5];

    [(SBDragAndDropWorkspaceTransaction *)self _cleanUpAndCompleteTransactionIfNecessary];
  }

  v6 = SBLogMedusaDropDestination();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = v4;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "SBAppDrop transaction did interrupt for reason: %{public}@", buf, 0xCu);
  }
}

- (CGRect)_platterFrameInSwitcherView
{
  v3 = [(SBWorkspaceTransaction *)self windowScene];
  v4 = [v3 switcherController];

  v5 = [(SBApplicationDropSession *)self->_dropSession uiDragDropSession];
  WeakRetained = objc_loadWeakRetained(&self->_switcherContentController);
  v7 = [WeakRetained view];
  [v5 locationInView:v7];

  [v4 frameForFloatingAppLayoutInInterfaceOrientation:-[SBLayoutState interfaceOrientation](self->_currentLayoutState floatingConfiguration:{"interfaceOrientation"), 2}];
  v8 = self->_activePlatterPreview;
  v9 = [(SBAppPlatterDragPreview *)v8 platterView];
  [v9 bounds];

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

- (void)_updateCurrentDropActionForSession:(id)a3
{
  v193 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v6 = objc_loadWeakRetained(&self->_switcherContentController);
  v7 = [v6 view];
  v169 = [WeakRetained windowScene];
  v8 = [WeakRetained windowManagementContext];
  v9 = [v8 isChamoisOrFlexibleWindowing];

  v170 = self;
  rect = v9;
  if (v9 && [(SBMainDisplayLayoutState *)self->_initialLayoutState unlockedEnvironmentMode]== 3)
  {
    v10 = WeakRetained;
    v11 = v4;
    v12 = [(SBMainDisplayLayoutState *)self->_initialLayoutState appLayout];
    v13 = [v6 visibleItemContainers];
    v14 = [v12 leafAppLayoutForRole:1];
    v15 = [v13 objectForKey:v14];
    [v15 frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v24 = [v12 itemForLayoutRole:2];

    if (v24)
    {
      v25 = [v6 visibleItemContainers];
      v26 = [v12 leafAppLayoutForRole:2];
      v27 = [v25 objectForKey:v26];
      [v27 frame];
      v29 = v28;
      v31 = v30;

      v21 = v31 + v29 - (v17 + v21);
    }

    v4 = v11;
    WeakRetained = v10;
  }

  else
  {
    [v7 bounds];
    v17 = v32;
    v19 = v33;
    v21 = v34;
    v23 = v35;
  }

  [v4 locationInView:v7];
  v37 = v36;
  v39 = v38;
  [(SBTouchHistory *)self->_touchHistory averageTouchVelocityOverTimeDuration:0.0416666667];
  v41 = v40;
  v43 = v42;
  v44 = [(SBDragAndDropWorkspaceTransaction *)self isInterrupted];
  if (!self->_dragExitedDropZone && !((self->_activePlatterPreview == 0) | v44 & 1))
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
    v51 = [(SBApplicationDropSession *)self->_dropSession localContext];
    v52 = [v51 startLocation];

    v53 = [v169 floatingDockController];
    [v53 floatingDockScreenFrame];
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;

    v62 = [v169 screen];
    v63 = [v62 fixedCoordinateSpace];
    [v7 convertRect:v63 fromCoordinateSpace:{v55, v57, v59, v61}];
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v71 = v70;

    if (v52 == 8 || (v197.origin.x = v65, v197.origin.y = v67, v197.size.width = v69, v197.size.height = v71, v194.x = v47, v194.y = v46, !CGRectContainsPoint(v197, v194)))
    {
      v72 = [(SBDragAndDropWorkspaceTransaction *)self _iconManager];
      v73 = [v72 hasOpenFolderInLocation:*MEMORY[0x277D66690]];

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
  v167 = v7;
  v168 = v6;
  if ([(SBMainDisplayLayoutState *)self->_currentLayoutState unlockedEnvironmentMode]== 3)
  {
    v75 = [(SBMainDisplayLayoutState *)self->_currentLayoutState appLayout];
    v76 = [v75 itemForLayoutRole:4];

    if (v76)
    {
      v77 = SBLogMedusaDropDestination();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
      {
        [SBDragAndDropWorkspaceTransaction _updateCurrentDropActionForSession:v77];
      }

      v78 = 0;
      v79 = self;
      goto LABEL_114;
    }
  }

  if (v45)
  {
    v157 = v4;
    v80 = [WeakRetained windowManagementContext];
    v81 = [WeakRetained displayIdentity];
    v82 = +[SBPlatformController sharedInstance];
    v154 = [v82 isMedusaCapable];

    v83 = [WeakRetained windowManagementContext];
    v152 = [v83 baseStyle];

    v156 = WeakRetained;
    v84 = [WeakRetained windowManagementContext];
    v150 = [v84 isMedusaEnabled];

    v85 = [(SBApplicationSceneHandle *)v170->_draggingApplicationSceneHandle application];
    v172 = v81;
    v153 = [v85 supportsMultiWindowLayoutsForSwitcherWindowManagementContext:v80 displayIdentity:v81];

    v190 = 0u;
    v191 = 0u;
    v188 = 0u;
    v189 = 0u;
    v86 = [(SBLayoutState *)v170->_currentLayoutState elements];
    v87 = [v86 countByEnumeratingWithState:&v188 objects:v192 count:16];
    v88 = v80;
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
            objc_enumerationMutation(v86);
          }

          v93 = *(*(&v188 + 1) + 8 * i);
          if ([v93 layoutRole] != 3)
          {
            v94 = [v93 workspaceEntity];
            v95 = [v94 applicationSceneEntity];

            if (v95)
            {
              v96 = [v95 application];
              v97 = [v96 supportsMultiWindowLayoutsForSwitcherWindowManagementContext:v80 displayIdentity:v172];

              v91 &= v97;
              v80 = v88;
            }
          }
        }

        v89 = [v86 countByEnumeratingWithState:&v188 objects:v192 count:16];
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
    [(SBLayoutState *)v170->_currentLayoutState interfaceOrientation];
    SBLayoutDefaultSideLayoutElementWidth();
    v102 = v39;
    v104 = v103;
    [(SBDragAndDropWorkspaceTransaction *)v170 _platterScale];
    v106 = v101 + v104 * v105 * 0.5;
    if (rect)
    {
      v107 = [(SBApplicationDropSession *)v170->_dropSession dropZones];
      WeakRetained = v156;
      if (!v152)
      {
        v78 = v98;
        v79 = v170;
        v77 = v88;
        goto LABEL_66;
      }

      v77 = v88;
      if ((v154 & v91 & v153) == 1)
      {
        v108 = v107;
        v78 = v107 < 2;
        if (v107 <= 1 && !v98)
        {
          v199.origin.x = v99;
          v199.origin.y = v158;
          v199.size.width = v21;
          v199.size.height = v23;
          v79 = v170;
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
                draggingApplicationSceneHandle = v79->_draggingApplicationSceneHandle;
                if (draggingApplicationSceneHandle)
                {
                  v121 = [(SBApplicationSceneHandle *)draggingApplicationSceneHandle displayItemRepresentation];
                  if (([v156 _isDisplayItemFullScreen:v121 preferredAttributes:0] & ((v78 & 0xFFFFFFFFFFFFFFFELL) == 4)) != 0)
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
            v129 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
            v201.origin.x = v99;
            v201.origin.y = v158;
            v201.size.width = v21;
            v201.size.height = v23;
            MidX = CGRectGetMidX(v201);
            v131 = v37 < MidX;
            if (v129 == 1)
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

      v79 = v170;
      goto LABEL_66;
    }

    v109 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
    v149 = v21 * 0.5;
    v151 = v37 + v162 * 0.15;
    v110 = v151 < v21 * 0.5;
    if (v109 == 1)
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
    v176[4] = v170;
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
    v187 = v152 != 0;
    v111 = MEMORY[0x223D6F7F0](v176);
    v174[0] = MEMORY[0x277D85DD0];
    v174[1] = 3221225472;
    v174[2] = __72__SBDragAndDropWorkspaceTransaction__updateCurrentDropActionForSession___block_invoke_2;
    v174[3] = &unk_2783BA328;
    *&v174[5] = v37;
    *&v174[6] = v102;
    v174[4] = v170;
    v175 = v98;
    v112 = MEMORY[0x223D6F7F0](v174);
    v173[0] = MEMORY[0x277D85DD0];
    v173[1] = 3221225472;
    v173[2] = __72__SBDragAndDropWorkspaceTransaction__updateCurrentDropActionForSession___block_invoke_3;
    v173[3] = &unk_2783BA350;
    v173[4] = v170;
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
    v115 = [(SBApplicationDropSession *)v170->_dropSession dropZones];
    if ((v154 & v153) != 1)
    {
      v78 = 1;
      v79 = v170;
      v77 = v88;
      v116 = v112;
      v117 = v111;
      goto LABEL_112;
    }

    v77 = v88;
    if (v91)
    {
      v116 = v112;
      if (v115 == 2)
      {
        v117 = v111;
        if (v152)
        {
          [objc_opt_class() prototypeSettingsWindowTearOffDraggingSideActivationWidth];
          v126 = v125;
          [objc_opt_class() prototypeSettingsWindowTearOffDraggingFloatingActivationWidth];
          if (v98)
          {
            v78 = 1;
            v79 = v170;
          }

          else
          {
            v163 = v127;
            [objc_opt_class() sourceSceneInterfaceOrientedBoundsForDropSession:v170->_dropSession switcherController:recta];
            x = v202.origin.x;
            y = v202.origin.y;
            width = v202.size.width;
            rectb = v202.size.height;
            v79 = v170;
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

          v79 = v170;
        }

        goto LABEL_112;
      }

      v117 = v111;
      if (v115 == 1)
      {
        if (v152)
        {
          v79 = v170;
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
        if (!v115)
        {
          v79 = v170;
          if (![(SBMainDisplayLayoutState *)v170->_currentLayoutState isFloatingSwitcherVisible])
          {
            layoutElementForWindowDrag = v170->_layoutElementForWindowDrag;
            if (!layoutElementForWindowDrag || v170->_windowDragEnteredPlatterZone)
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

      v79 = v170;
      goto LABEL_112;
    }

    v116 = v112;
    if (v98)
    {
      v79 = v170;
      v117 = v111;
      if (v170->_layoutElementForWindowDrag)
      {
        v78 = 1;
        if (v170->_windowDragEnteredPlatterZone || ((v150 ^ 1) & 1) != 0)
        {
          goto LABEL_112;
        }

        goto LABEL_78;
      }
    }

    else
    {
      v79 = v170;
      v117 = v111;
      if (v150)
      {
        goto LABEL_78;
      }
    }

    v78 = 1;
LABEL_112:

LABEL_113:
    v4 = v157;
LABEL_114:

    goto LABEL_115;
  }

  v78 = 0;
  v79 = self;
LABEL_115:
  if (-[SBMainDisplayLayoutState unlockedEnvironmentMode](v79->_currentLayoutState, "unlockedEnvironmentMode") == 2 && (-[SBApplicationDropSession localContext](v79->_dropSession, "localContext"), v136 = objc_claimAutoreleasedReturnValue(), v137 = [v136 startLocation], v136, v137 == 11) && v79->_dragAndDropGesture)
  {
    v138 = [(SBApplicationDropSession *)v79->_dropSession uiDragDropSession];
    v139 = [v168 view];
    [v138 locationInView:v139];
    v141 = v140;
    v143 = v142;

    v144 = [(SBFluidSwitcherGesture *)v79->_dragAndDropGesture selectedLayoutRole];
    v145 = [(SBFluidSwitcherGesture *)v79->_dragAndDropGesture selectedAppLayout];
    v146 = [v168 _switcherDropRegionContextForDraggingLayoutRole:v144 inAppLayout:v145 atLocation:{v141, v143}];

    currentSwitcherDropRegionContext = v79->_currentSwitcherDropRegionContext;
    v79->_currentSwitcherDropRegionContext = v146;

    v78 = 10;
  }

  else
  {
    v138 = v79->_currentSwitcherDropRegionContext;
    v79->_currentSwitcherDropRegionContext = 0;
  }

  if (v79->_currentDropAction != v78)
  {
    v79->_currentDropAction = v78;
    [(SBDragAndDropWorkspaceTransaction *)v79 _updateCurrentDropActionProposedLayoutState];
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

- (id)_transitionRequestForDropAction:(int64_t)a3
{
  v5 = self;
  v140[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_switcherController);
  v7 = [WeakRetained switcherCoordinator];
  v8 = [WeakRetained contentViewController];
  v9 = objc_opt_class();
  v10 = v8;
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

  v13 = [(SBWorkspaceTransaction *)v5 transitionRequest];
  v14 = [v13 workspace];
  v15 = [v13 displayConfiguration];
  v16 = [v14 createRequestWithOptions:0 displayConfiguration:v15];

  v115 = v13;
  [v16 setSource:{objc_msgSend(v13, "source")}];
  [v16 setEventLabel:@"DragAndDropAppActivation"];
  v17 = objc_alloc_init(SBWorkspaceApplicationSceneTransitionContext);
  [(SBWorkspaceApplicationSceneTransitionContext *)v17 setDelegate:v5];
  v112 = v16;
  [v16 setApplicationContext:v17];
  v18 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationSceneHandle:v5->_draggingApplicationSceneHandle];
  v19 = [(SBApplicationDropSession *)v5->_dropSession launchActions];
  [(SBApplicationSceneEntity *)v18 addActions:v19];

  v20 = [(SBApplicationDropSession *)v5->_dropSession activationSettings];
  [(SBWorkspaceEntity *)v18 applyActivationSettings:v20];

  v134[0] = MEMORY[0x277D85DD0];
  v134[1] = 3221225472;
  v134[2] = __69__SBDragAndDropWorkspaceTransaction__transitionRequestForDropAction___block_invoke;
  v134[3] = &unk_2783B3258;
  v134[4] = v5;
  v134[5] = a2;
  v117 = MEMORY[0x223D6F7F0](v134);
  v21 = [(SBApplicationDropSession *)v5->_dropSession uiDragDropSession];
  v22 = [v12 view];
  [v21 locationInView:v22];
  v24 = v23;
  v26 = v25;

  v119 = v12;
  v27 = [v12 view];
  [v27 bounds];
  v32 = [(SBDisplayItemLayoutAttributes *)v24 normalizedPointForPoint:v26 inBounds:v28, v29, v30, v31];
  v34 = v33;

  v118 = WeakRetained;
  v35 = [WeakRetained windowManagementContext];
  v36 = [v35 isChamoisOrFlexibleWindowing];

  v120 = v5;
  v121 = v7;
  v116 = a3;
  v122 = v17;
  v123 = v18;
  if (a3 == 1)
  {
    v37 = 0.5;
    v38 = 0.5;
    if (v36)
    {
      goto LABEL_8;
    }
  }

  v38 = v32;
  v37 = v34;
  if (a3 > 4)
  {
    if (a3 <= 7)
    {
      if (a3 != 5)
      {
        v43 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
        [(SBWorkspaceApplicationSceneTransitionContext *)v17 setEntities:MEMORY[0x277CBEBF8] withPolicy:1 centerEntity:v43 floatingEntity:v18];

        v44 = v17;
        if (a3 == 6)
        {
          v45 = 1;
        }

        else
        {
          v45 = 2;
        }

        goto LABEL_39;
      }

      if (v36)
      {
        v136 = v18;
        v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&v136 count:1];
        v47 = &SBLayoutRoleSide;
        goto LABEL_37;
      }

      layoutElementForWindowDrag = v5->_layoutElementForWindowDrag;
      if (!layoutElementForWindowDrag || v5->_windowDragEnteredPlatterZone)
      {
        v73 = 1;
        v77 = [SBPreviousWorkspaceEntity entityWithPreviousLayoutRole:1];
        [(SBWorkspaceApplicationSceneTransitionContext *)v17 setEntity:v77 forLayoutRole:1];

        [(SBWorkspaceApplicationSceneTransitionContext *)v17 setEntity:v18 forLayoutRole:2];
LABEL_49:
        if (v5->_layoutElementForWindowDrag && (SBLayoutRoleSetAppLayout(), v78 = objc_claimAutoreleasedReturnValue(), v79 = [v78 containsRole:{-[SBLayoutElement layoutRole](v5->_layoutElementForWindowDrag, "layoutRole")}], v78, v79))
        {
          if ([(SBLayoutElement *)v5->_layoutElementForWindowDrag layoutRole]== v73)
          {
            v80 = v117[2](v117, [(SBMainDisplayLayoutState *)v5->_initialLayoutState spaceConfiguration], [(SBLayoutState *)v5->_initialLayoutState interfaceOrientation]);
          }

          else
          {
            v80 = [(SBMainDisplayLayoutState *)v5->_initialLayoutState spaceConfiguration];
          }

          v82 = v80;
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
        v89 = [(SBMainDisplayLayoutState *)v5->_currentLayoutState spaceConfiguration];
        currentLayoutState = v5->_currentLayoutState;
        goto LABEL_62;
      }

      goto LABEL_63;
    }

    switch(a3)
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
        v48 = v5->_currentSwitcherDropRegionContext;
        v49 = [(SBSwitcherDropRegionContext *)v48 currentDropRegion];
        v50 = [(SBSwitcherDropRegionContext *)v48 draggingLeafAppLayout];
        v51 = [v12 appLayouts];
        v132[0] = MEMORY[0x277D85DD0];
        v132[1] = 3221225472;
        v132[2] = __69__SBDragAndDropWorkspaceTransaction__transitionRequestForDropAction___block_invoke_2;
        v132[3] = &unk_2783A8CB8;
        v52 = v50;
        v133 = v52;
        v53 = [v51 bs_firstObjectPassingTest:v132];

        if ((v49 & 0xFFFFFFFFFFFFFFFELL) == 4)
        {
          [v53 itemForLayoutRole:1];
          obja = v48;
          v55 = v54 = v52;
          v56 = [v53 itemForLayoutRole:2];
          v57 = [v7 _entityForDisplayItem:v55 switcherController:WeakRetained];
          v58 = [v7 _entityForDisplayItem:v56 switcherController:WeakRetained];
          [(SBWorkspaceApplicationSceneTransitionContext *)v122 setEntity:v57 forLayoutRole:1];
          [(SBWorkspaceApplicationSceneTransitionContext *)v122 setEntity:v58 forLayoutRole:2];
          v59 = v55;
          v52 = v54;
          v48 = obja;
          -[SBWorkspaceApplicationSceneTransitionContext setRequestedSpaceConfiguration:](v122, "setRequestedSpaceConfiguration:", SBMainDisplayLayoutStateSpaceConfigurationFromAppLayoutConfiguration([v53 configuration]));
        }

        else
        {
          if (v49 == 6)
          {
            [v53 itemForLayoutRole:1];
            objb = v48;
            v84 = v83 = v52;
            v56 = [v7 _entityForDisplayItem:v84 switcherController:WeakRetained];
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
            if (v49 != 3)
            {
LABEL_57:
              [(SBWorkspaceApplicationSceneTransitionContext *)v122 setRequestedUnlockedEnvironmentMode:2];

              v5 = v120;
              goto LABEL_70;
            }

            v59 = [v53 itemForLayoutRole:1];
            v56 = [v7 _entityForDisplayItem:v59 switcherController:WeakRetained];
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

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v139[0] = v18;
      v60 = [SBPreviousWorkspaceEntity entityWithPreviousLayoutRole:2];
      v139[1] = v60;
      v62 = MEMORY[0x277CBEA60];
      v63 = v139;
    }

    else
    {
      if (a3 != 3)
      {
        if (v36)
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

        v70 = v5->_layoutElementForWindowDrag;
        if (!v70 || v5->_windowDragEnteredPlatterZone)
        {
          [(SBWorkspaceApplicationSceneTransitionContext *)v17 setEntity:v18 forLayoutRole:1];
          v71 = [(SBLayoutState *)v5->_currentLayoutState elementWithRole:1];
          v72 = [v71 workspaceEntity];
          v73 = 2;
          [(SBWorkspaceApplicationSceneTransitionContext *)v17 setEntity:v72 forLayoutRole:2];

          goto LABEL_49;
        }

        if ([(SBLayoutElement *)v70 layoutRole]== 2)
        {
          [(SBWorkspaceApplicationSceneTransitionContext *)v17 setEntity:v18 forLayoutRole:1];
          v87 = [(SBLayoutState *)v5->_currentLayoutState elementWithRole:1];
          v88 = [v87 workspaceEntity];
          [(SBWorkspaceApplicationSceneTransitionContext *)v17 setEntity:v88 forLayoutRole:2];

          v18 = v123;
          v89 = [(SBMainDisplayLayoutState *)v5->_currentLayoutState spaceConfiguration];
          currentLayoutState = v5->_currentLayoutState;
LABEL_62:
          v92 = v117[2](v117, v89, [(SBLayoutState *)currentLayoutState interfaceOrientation]);
LABEL_64:
          [(SBWorkspaceApplicationSceneTransitionContext *)v17 setRequestedSpaceConfiguration:v92];
          goto LABEL_68;
        }

LABEL_63:
        v92 = [(SBMainDisplayLayoutState *)v5->_currentLayoutState spaceConfiguration];
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

  if (!a3)
  {
    v60 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    v61 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    [(SBWorkspaceApplicationSceneTransitionContext *)v17 setEntities:MEMORY[0x277CBEBF8] withPolicy:1 centerEntity:v60 floatingEntity:v61];
    goto LABEL_34;
  }

  if (a3 == 1)
  {
LABEL_8:
    v140[0] = v18;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v140 count:1];
    v40 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    [(SBWorkspaceApplicationSceneTransitionContext *)v17 setEntities:v39 withPolicy:0 centerEntity:0 floatingEntity:v40];

    v18 = v123;
    if (!v36)
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
  v114 = [(SBApplicationDropSession *)v5->_dropSession localContext];
  v113 = [v7 _recentAppLayoutsController];
  v93 = [(SBApplicationSceneEntity *)v18 application];
  v124 = [v93 bundleIdentifier];

  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  obj = [(SBLayoutState *)v5->_currentLayoutState elements];
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

        v99 = [*(*(&v128 + 1) + 8 * i) workspaceEntity];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v100 = objc_opt_class();
          v101 = SBSafeCast(v100, v99);
          v102 = [v101 application];
          v103 = [v102 bundleIdentifier];
          v104 = [v103 isEqualToString:v124];

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

  v105 = [v114 startLocation];
  v106 = [(SBApplicationDropSession *)v120->_dropSession launchActions];
  v107 = [v106 count];

  v108 = [(SBApplicationDropSession *)v120->_dropSession dropZones];
  if (!v107 && v105 != 12 && (v105 & 0xFFFFFFFFFFFFFFFELL) != 8 && v116 && !v108)
  {
    v109 = [v113 recentDisplayItemsForBundleIdentifier:v124 includingHiddenAppLayouts:0];
    if ([v109 count] >= 2)
    {
      v110 = [v109 count];
      if (v116 == 1 && v110 - v96 >= 2)
      {
        [(SBWorkspaceApplicationSceneTransitionContext *)v122 setRequestedAppExposeBundleID:v124];
      }

      else if (v116 != 1)
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
    v5 = [(SBWorkspaceTransaction *)self layoutStateTransitionCoordinator];
    v25 = [v5 sceneEntityFrameProvider];

    v6 = [(SBDragAndDropWorkspaceTransaction *)self _transitionRequestForDropAction:4];
    [v6 finalize];
    v24 = v6;
    v7 = [v6 applicationContext];
    v8 = [v7 layoutState];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23 = v8;
    v9 = [v8 elements];
    v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v26 + 1) + 8 * v13) workspaceEntity];
        v15 = [v14 applicationSceneEntity];

        if (v15)
        {
          v16 = [v15 sceneHandle];
          v17 = [v16 isEqual:self->_draggingApplicationSceneHandle];

          if (v17)
          {
            break;
          }
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
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

      v9 = [MEMORY[0x277CCA890] currentHandler];
      [v9 handleFailureInMethod:v22 object:self file:@"SBDragAndDropWorkspaceTransaction.m" lineNumber:2801 description:@"workspaceEntity must be present in layout state"];
      v15 = 0;
    }

    [v25 sceneEntityFrameForWorkspaceEntity:v15 inLayoutState:v23];
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

- (void)_configurePlatterPreview:(id)a3 forSceneHandle:(id)a4 completion:(id)a5
{
  v30 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v30 platterView];

  if (!v10)
  {
    v11 = [v30 sourceView];
    if (v11)
    {
      [v30 configurePlatterForSceneHandle:v8 withTargetView:v11 completion:v9];
    }

    else
    {
      v12 = [(SBDeviceApplicationScenePlaceholderContentContext *)[SBMutableDeviceApplicationScenePlaceholderContentContext alloc] initWithActivationSettings:0];
      [(SBDeviceApplicationScenePlaceholderContentContext *)v12 setPreferredContentType:1];
      v13 = [(SBLayoutState *)self->_currentLayoutState interfaceOrientation];
      currentLayoutState = self->_currentLayoutState;
      v15 = [v8 sceneIdentifier];
      v16 = [(SBLayoutState *)currentLayoutState interfaceOrientationForElementIdentifier:v15];

      v17 = [(SBWorkspaceTransaction *)self displayConfiguration];
      [v17 pointScale];
      v19 = v18;

      v20 = [v8 mostRecentSceneSnapshotsForScale:v16 launchingOrientation:v19];
      [(SBDragAndDropWorkspaceTransaction *)self _defaultReferenceSizeForSceneView];
      v22 = v21;
      v24 = v23;
      if ([v20 count])
      {
        v25 = [v20 sortedArrayUsingComparator:&__block_literal_global_226];

        v26 = [v25 firstObject];
        [v26 referenceSize];
        v22 = v27;
        v24 = v28;

        v20 = v25;
      }

      v29 = [v8 newSceneViewWithReferenceSize:v16 contentOrientation:v13 containerOrientation:0 hostRequester:{v22, v24}];
      [v29 setPlaceholderContentContext:v12];
      [v29 setDisplayMode:2 animationFactory:0 completion:0];
      [v30 configurePlatterForSceneHandle:v8 withTargetView:v29 completion:v9];
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

- (void)_updateAnchorPointForPlatterPreview:(id)a3 dragPreview:(id)a4 withSourceViewBounds:(CGRect)a5 location:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  height = a5.size.height;
  width = a5.size.width;
  v25 = self->_medusaSettings;
  layoutElementForWindowDrag = self->_layoutElementForWindowDrag;
  v14 = a4;
  v15 = a3;
  v16 = [(SBLayoutElement *)layoutElementForWindowDrag layoutRole];
  if (v16 == 3)
  {
    goto LABEL_2;
  }

  v18 = v16;
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

  [v14 setLiftAnchorPoint:{v23, y}];

  [v15 setAnchorPoint:{v23 / width, y / height}];
}

- (int64_t)_layoutRoleForDropAction:(int64_t)a3
{
  result = 0;
  if (a3 > 4)
  {
    if ((a3 - 6) < 4)
    {
      v5 = &SBLayoutRoleFloating;
      return *v5;
    }

    if (a3 != 5)
    {
      if (a3 != 10)
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

  if (a3 > 2)
  {
    if (a3 != 3)
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if ((a3 - 1) < 2)
  {
    goto LABEL_13;
  }

  if (!a3)
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

- (id)_createPlatterPreviewForApplication:(id)a3 withSourceView:(id)a4 dropSession:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SBDragAndDropWorkspaceTransaction *)self _iconManager];
  v12 = [v11 iconModel];
  if ([v8 isWebApplication])
  {
    v13 = [v10 localContext];
    v14 = [v13 draggedSceneIdentifier];

    v15 = [SBWebApplication _webClipIdentifierFromWebAppIdentifier:v14];
    v16 = [v12 leafIconForIdentifier:v15];
  }

  else
  {
    v14 = [v8 bundleIdentifier];
    v16 = [v12 applicationIconForBundleIdentifier:v14];
  }

  if (!v16)
  {
    [SBDragAndDropWorkspaceTransaction _createPlatterPreviewForApplication:v8 withSourceView:? dropSession:?];
  }

  v17 = [objc_alloc(MEMORY[0x277D663F0]) initWithConfigurationOptions:6];
  [v17 setLocation:*MEMORY[0x277D666D0]];
  v18 = [v11 listLayoutProvider];
  [v17 setListLayoutProvider:v18];

  [v17 setDelegate:v11];
  [v17 setIcon:v16];
  [v17 setEnabled:0];
  v19 = [[SBAppPlatterDragPreview alloc] initWithReferenceIconView:v17 sourceView:v9];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __100__SBDragAndDropWorkspaceTransaction__createPlatterPreviewForApplication_withSourceView_dropSession___block_invoke;
  v32[3] = &unk_2783B5AF0;
  v20 = v11;
  v33 = v20;
  [(SBAppPlatterDragPreview *)v19 setCleanUpHandler:v32];
  v21 = [v20 iconDragManager];
  v22 = [(SBWorkspaceTransaction *)self windowScene];
  [v21 addPlatterViewToMedusaDragOffscreenWindow:v19 forWindowScene:v22];

  if (v9)
  {
    [v9 bounds];
    UIRectGetCenter();
    v24 = v23;
    v26 = v25;
    v27 = [(SBAppPlatterDragPreview *)v19 window];
    v28 = v9;
  }

  else
  {
    [v17 iconImageCenter];
    v24 = v29;
    v26 = v30;
    v27 = [v17 window];
    v28 = v17;
  }

  [v28 convertPoint:v27 toView:{v24, v26}];
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
  v3 = [v6 applicationContext];
  v4 = [v3 layoutState];
  currentDropActionProposedLayoutState = self->_currentDropActionProposedLayoutState;
  self->_currentDropActionProposedLayoutState = v4;
}

- (id)_iconManager
{
  v2 = [(SBWorkspaceTransaction *)self windowScene];
  v3 = [v2 homeScreenController];

  v4 = [v3 iconManager];

  return v4;
}

- (id)layoutStateForApplicationTransitionContext:(id)a3
{
  v4 = a3;
  v5 = [(SBWorkspaceTransaction *)self layoutStateTransitionCoordinator];
  v6 = [v5 layoutStateForApplicationTransitionContext:v4];

  return v6;
}

- (CGRect)applicationTransitionContext:(id)a3 frameForApplicationSceneEntity:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 request];
  [v7 applicationTransitionContext:v6 frameForApplicationSceneEntity:v5];
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

- (void)transaction:(id)a3 didCommitSceneUpdate:(id)a4
{
  v5 = a3;
  if ([(NSMutableSet *)self->_pendingSceneUpdatesTransactions count])
  {
    [(NSMutableSet *)self->_pendingSceneUpdatesTransactions removeObject:v5];
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