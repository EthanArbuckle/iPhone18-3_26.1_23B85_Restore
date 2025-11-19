@interface UIPhysicalButtonInteractionArbiter
@end

@implementation UIPhysicalButtonInteractionArbiter

uint64_t __74___UIPhysicalButtonInteractionArbiter__createEvaluatedObjectCacheIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [a2 _wantsRelaxedVisibilityRequirement];
    v5 = [a2 view];
    v6 = [v5 _window];
    if (v4 & 1) == 0 && (([v5 isHidden] & 1) != 0 || (objc_msgSend(v6, "isHidden")))
    {
      v8 = 0;
    }

    else
    {
      v7 = WeakRetained[1];
      if (v7)
      {
        v8 = (*(v7 + 16))(v7, a2);
      }

      else
      {
        v8 = 1;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __53___UIPhysicalButtonInteractionArbiter_initWithScene___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained descriptionBuilderWithMultilinePrefix:&stru_1EFB14550];
  v3 = [v2 build];

  return v3;
}

void __74___UIPhysicalButtonInteractionArbiter__registerPhysicalButtonInteraction___block_invoke(uint64_t a1, uint64_t a2)
{
  v75 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v51 = WeakRetained;
    v5 = [WeakRetained _scene];
    WeakRetained = v51;
    if (v5)
    {
      v6 = [v5 _hasInvalidated];

      WeakRetained = v51;
      if ((v6 & 1) == 0)
      {
        v7 = *(a1 + 32);
        v8 = [v51 _scene];
        if (v8)
        {
          v9 = v8;
          v10 = [v8 _hasInvalidated];

          if ((v10 & 1) == 0)
          {
            v11 = [v7 view];
            v12 = [v11 _window];

            v13 = [v12 _windowHostingScene];
            v14 = objc_loadWeakRetained(v51 + 6);

            if (v13 != v14)
            {
              v43 = [MEMORY[0x1E696AAA8] currentHandler];
              v44 = objc_loadWeakRetained(v51 + 6);
              [v43 handleFailureInMethod:sel__unregisterPhysicalButtonInteraction_withRegistrationToken_ object:"-[_UIPhysicalButtonInteractionArbiter _unregisterPhysicalButtonInteraction:withRegistrationToken:]" file:v12 lineNumber:v44 description:v51];
            }

            v15 = *(__UILogGetCategoryCachedImpl("PhysicalButtonInteraction", &qword_1ED4A09A8) + 8);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = v15;
              v17 = [v7 succinctDescription];
              *buf = 134349570;
              v70 = v51;
              v71 = 2112;
              v72 = v17;
              v73 = 2112;
              v74 = a2;
              _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}p] Arbiter: unregistering physical button interaction: %@; with registrationToken: %@", buf, 0x20u);
            }

            [(_UIEvaluatedObjectCache *)*(v51 + 9) removeObject:v7];
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v18 = [v7 _configurationSet];
            v19 = [v18 countByEnumeratingWithState:&v60 objects:buf count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v61;
              do
              {
                for (i = 0; i != v20; ++i)
                {
                  if (*v61 != v21)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v23 = *(v51 + 3);
                  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*(*(&v60 + 1) + 8 * i), "_generation")}];
                  [v23 removeObject:v24];
                }

                v20 = [v18 countByEnumeratingWithState:&v60 objects:buf count:16];
              }

              while (v20);
            }

            v25 = [MEMORY[0x1E696B098] valueWithPointer:v12];
            [*(v51 + 11) removeObject:v25];
            if (![*(v51 + 11) countForObject:v25])
            {
              [*(v51 + 10) removeObject:v12];
            }

            v26 = objc_loadWeakRetained(v51 + 7);

            if (!v26)
            {
              [*(v51 + 12) removeObject:v25];
              if (![*(v51 + 12) countForObject:v25])
              {
                [v12 _removeWindowLevelChangedObserver:v51];
                CategoryCachedImpl = __UILogGetCategoryCachedImpl("PhysicalButtonInteraction", &qword_1ED4A09E8);
                if (*CategoryCachedImpl)
                {
                  v45 = *(CategoryCachedImpl + 8);
                  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                  {
                    if (v12)
                    {
                      v46 = MEMORY[0x1E696AEC0];
                      v47 = v12;
                      v48 = objc_opt_class();
                      v49 = NSStringFromClass(v48);
                      v50 = [v46 stringWithFormat:@"<%@: %p>", v49, v47];
                    }

                    else
                    {
                      v50 = @"(nil)";
                    }

                    *v65 = 134349314;
                    v66 = v51;
                    v67 = 2112;
                    v68 = v50;
                    _os_log_impl(&dword_188A29000, v45, OS_LOG_TYPE_ERROR, "[%{public}p] Arbiter ended observing window level for window: %@", v65, 0x16u);
                  }
                }
              }
            }

            v28 = objc_loadWeakRetained(v51 + 7);
            if (v28)
            {
              v29 = [*(v51 + 16) objectForKey:v12];
              [v29 configurationToInteractionMap];
              v56 = 0u;
              v57 = 0u;
              v58 = 0u;
              v30 = v59 = 0u;
              v31 = [v30 countByEnumeratingWithState:&v56 objects:v65 count:16];
              if (v31)
              {
                v32 = v31;
                v33 = *v57;
                while (2)
                {
                  for (j = 0; j != v32; ++j)
                  {
                    if (*v57 != v33)
                    {
                      objc_enumerationMutation(v30);
                    }

                    v35 = [v30 objectForKey:*(*(&v56 + 1) + 8 * j)];

                    if (v35 == v7)
                    {
                      v36 = 1;
                      goto LABEL_33;
                    }
                  }

                  v32 = [v30 countByEnumeratingWithState:&v56 objects:v65 count:16];
                  if (v32)
                  {
                    continue;
                  }

                  break;
                }
              }

              v36 = 0;
LABEL_33:
            }

            else
            {
              v36 = 0;
            }

            [*(v51 + 14) configurationToInteractionMap];
            v52 = 0u;
            v53 = 0u;
            v54 = 0u;
            v37 = v55 = 0u;
            v38 = [v37 countByEnumeratingWithState:&v52 objects:v64 count:16];
            if (v38)
            {
              v39 = v38;
              v40 = *v53;
              while (2)
              {
                for (k = 0; k != v39; ++k)
                {
                  if (*v53 != v40)
                  {
                    objc_enumerationMutation(v37);
                  }

                  v42 = [v37 objectForKey:*(*(&v52 + 1) + 8 * k)];

                  if (v42 == v7)
                  {

                    goto LABEL_46;
                  }
                }

                v39 = [v37 countByEnumeratingWithState:&v52 objects:v64 count:16];
                if (v39)
                {
                  continue;
                }

                break;
              }
            }

            if (v36)
            {
LABEL_46:
              [(_UIPhysicalButtonInteractionArbiter *)v51 _addSystemShellWindowRequiringResolutionIfNeeded:v12];
              [(_UIPhysicalButtonInteractionArbiter *)v51 _resolveConfigurations];
            }
          }
        }

        WeakRetained = v51;
      }
    }
  }
}

uint64_t __80___UIPhysicalButtonInteractionArbiter__setResolutionStrategy_forInitialization___block_invoke(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && WeakRetained[17])
  {
    v5 = [a2 view];
    v6 = [v5 _window];

    v7 = v4[17];
    if (v7)
    {
      v8 = [*(v7 + 8) copy];
    }

    else
    {
      v8 = 0;
    }

    v9 = [v8 containsObject:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id __188___UIPhysicalButtonInteractionArbiter__enumerateAndValidateInteractionsInWindow_withRequiredBehaviorMask_configurationAcceptanceEvaluator_interactionAcceptanceHandler_shouldStopEvaluator___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 rootViewController];
  v3 = [v2 _effectiveExclusiveCollectionPhysicalButtonConfigurationViewController];

  v4 = [v3 view];

  return v4;
}

void __188___UIPhysicalButtonInteractionArbiter__enumerateAndValidateInteractionsInWindow_withRequiredBehaviorMask_configurationAcceptanceEvaluator_interactionAcceptanceHandler_shouldStopEvaluator___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v57 = *MEMORY[0x1E69E9840];
  v7 = [a2 view];
  v8 = [a2 view];
  v9 = [v8 _window];

  v50 = [a2 _wantsRelaxedVisibilityRequirement];
  [v7 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  if ((*(*(*(a1 + 32) + 16) + 16))())
  {
    v18 = *(a1 + 40);
    if (!v18 || v9 == v18)
    {
      v49 = v9;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      obj = [a2 _configurationSet];
      v19 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = 0;
        v22 = 0;
        v23 = v11 + v15 * 0.5;
        v24 = v13 + v17 * 0.5;
        v25 = *v53;
        v48 = v7;
        do
        {
          v26 = 0;
          v27 = v21;
          do
          {
            if (*v53 != v25)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(*(&v52 + 1) + 8 * v26);
            [v28 _button];
            v29 = [v28 _behavior];
            if (v29 >= 3)
            {
              v30 = 0;
            }

            else
            {
              v30 = 1 << v29;
            }

            v31 = *(a1 + 104);
            if (v31)
            {
              v32 = v30 == v31;
            }

            else
            {
              v32 = 1;
            }

            if (v32)
            {
              if ((v30 & ~v22) != 0)
              {
                v21 = v30 | v27;
                if (v29 != 2)
                {
                  v33 = *(*(a1 + 88) + 8);
                  v35 = *(v33 + 40);
                  v34 = (v33 + 40);
                  if (v49 != v35)
                  {
                    objc_storeStrong(v34, v49);
                    v36 = (*(*(a1 + 56) + 16))();
                    v37 = *(*(a1 + 96) + 8);
                    v38 = *(v37 + 40);
                    *(v37 + 40) = v36;
                  }

                  v39 = [(UIView *)*(*(*(a1 + 96) + 8) + 40) _containsView:v7];
                  if (!(v50 & 1 | ((v39 & 1) == 0)))
                  {
                    v39 = [(UIView *)v7 _isInVisibleHierarchy];
                  }

                  if (v39)
                  {
                    v40 = [v7 superview];
                    [v40 convertPoint:*(a1 + 48) toCoordinateSpace:{v23, v24}];
                    v42 = v41;
                    v44 = v43;

                    v7 = v48;
                    [*(a1 + 48) bounds];
                    v58.x = v42;
                    v58.y = v44;
                    if (!CGRectContainsPoint(v59, v58))
                    {
                      v21 = v27 & ~v30;
                    }
                  }

                  else
                  {
                    v21 = v27 & ~v30;
                  }
                }
              }

              else
              {
                v21 = v27;
              }

              if ((v30 & ~v21) == 0)
              {
                v45 = *(a1 + 64);
                if (!v45 || (*(v45 + 16))(v45, v28))
                {
                  (*(*(a1 + 72) + 16))();
                }
              }

              v22 |= v30;
              v27 = v21;
            }

            else
            {
              v21 = v27;
            }

            ++v26;
          }

          while (v20 != v26);
          v20 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
        }

        while (v20);
      }

      a4 = v47;
      v9 = v49;
    }
  }

  v46 = *(a1 + 80);
  if (v46)
  {
    *a4 = (*(v46 + 16))();
  }
}

void __77___UIPhysicalButtonInteractionArbiter__gestureViewsForWindow_physicalButton___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  if (!v3)
  {
    v5 = objc_opt_new();
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = *(*(*(a1 + 32) + 8) + 40);
  }

  v8 = [a2 view];
  [v3 addObject:v8];
}

BOOL __88___UIPhysicalButtonInteractionArbiter__performConfigurationResolutionForRequiredWindow___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  v8 = [v4 _configurationForButton:{objc_msgSend(a2, "_button")}];
  if (!v8)
  {
    [*(*(*(a1 + 32) + 8) + 40) _setConfiguration:a2 forButton:{objc_msgSend(a2, "_button")}];
  }

  return v8 == 0;
}

uint64_t __88___UIPhysicalButtonInteractionArbiter__performConfigurationResolutionForRequiredWindow___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(*(a1 + 32) + 8) + 40);
  if (!v6)
  {
    v7 = objc_opt_new();
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v6 = *(*(*(a1 + 32) + 8) + 40);
  }

  return [v6 setObject:a2 forKey:a3];
}

void __68___UIPhysicalButtonInteractionArbiter__registerViewServiceObserver___block_invoke(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [WeakRetained _scene];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 _hasInvalidated];

      if ((v7 & 1) == 0)
      {
        if (v4)
        {
          v8 = [WeakRetained _scene];
          if (v8)
          {
            v9 = v8;
            v10 = [v8 _hasInvalidated];

            if ((v10 & 1) == 0)
            {
              v11 = *(__UILogGetCategoryCachedImpl("PhysicalButtonInteraction", &_unregisterViewServiceObserver_withRegistrationToken____s_category) + 8);
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
              {
                v12 = MEMORY[0x1E696AEC0];
                v13 = v4;
                v14 = objc_opt_class();
                v15 = NSStringFromClass(v14);
                v16 = [v12 stringWithFormat:@"<%@: %p>", v15, v13];

                *buf = 134349570;
                v19 = WeakRetained;
                v20 = 2112;
                v21 = v16;
                v22 = 2112;
                v23 = a2;
                _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}p] Arbiter: unregistering view service observer: %@; with registrationToken: %@", buf, 0x20u);
              }

              [WeakRetained[18] removeObject:v4];
            }
          }
        }
      }
    }
  }
}

BOOL __55___UIPhysicalButtonInteractionArbiter__handleBSAction___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 _button];
  if (v4 != [*(a1 + 32) button])
  {
    return 0;
  }

  v5 = [a2 _behavior];
  if (v5 != [*(a1 + 32) behavior])
  {
    return 0;
  }

  v6 = [a2 _generation];
  v7 = [*(a1 + 32) generation];
  return v7 == v6 || v7 == 0x3E1CC2CA76C17F8;
}

void __55___UIPhysicalButtonInteractionArbiter__handleBSAction___block_invoke_238(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((*(*(a1[4] + 16) + 16))())
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [a2 _configurationSet];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if ([(_UIPhysicalButtonConfiguration *)*(*(&v9 + 1) + 8 * i) _isEqualToConfigurationMinusGeneration:?])
          {

            v4 = [(_UIPhysicalButtonInteraction *)a2 _bsActionDriver];
            [v4 _handleBSAction:a1[6]];
            goto LABEL_12;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

void __77___UIPhysicalButtonInteractionArbiter_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 activeMultilinePrefix];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77___UIPhysicalButtonInteractionArbiter_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v6[3] = &unk_1E70F35B8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v2 appendBodySectionWithName:0 multilinePrefix:v3 block:v6];
}

void __77___UIPhysicalButtonInteractionArbiter_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 64);
  v4 = &stru_1EFB14550;
  if (v3 == 1)
  {
    v4 = @"viewServices";
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"sceneClientSettings";
  }

  [v2 appendString:v5 withName:@"resolutionStrategy"];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 56));

  if (WeakRetained)
  {
    v7 = *(a1 + 32);
    v8 = objc_loadWeakRetained((*(a1 + 40) + 56));
    if (v8)
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v9 stringWithFormat:@"<%@: %p>", v11, v8];
    }

    else
    {
      v12 = @"(nil)";
    }

    v13 = [v7 appendObject:v12 withName:@"systemShellDelegate"];
  }

  v14 = [*(a1 + 32) appendBool:(*(*(a1 + 40) + 40) >> 3) & 1 withName:@"configurationResolutionPaused" ifEqualTo:1];
  v15 = [*(a1 + 32) appendBool:(*(*(a1 + 40) + 40) >> 4) & 1 withName:@"needsConfigurationResolutionWhenResumed" ifEqualTo:1];
  v16 = [*(a1 + 32) appendBool:(*(*(a1 + 40) + 40) >> 1) & 1 withName:@"hasScheduledDeferredConfigurationResolution"];
  v17 = [*(a1 + 32) appendBool:(*(*(a1 + 40) + 40) >> 2) & 1 withName:@"hasScheduledDeferredConfigurationResolutionForReentrancy"];
  v18 = *(a1 + 32);
  v19 = [*(*(a1 + 40) + 72) succinctDescription];
  v20 = [v18 appendObject:v19 withName:@"evaluatedObjectCache"];

  v21 = [(_UIEvaluatedObjectCache *)*(*(a1 + 40) + 72) sortedObjects];
  v22 = [v21 count];

  v23 = *(a1 + 32);
  if (v22)
  {
    v24 = [*(a1 + 32) activeMultilinePrefix];
    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = __77___UIPhysicalButtonInteractionArbiter_descriptionBuilderWithMultilinePrefix___block_invoke_3;
    v68[3] = &unk_1E70F35B8;
    v55 = *(a1 + 32);
    v25 = v55.i64[0];
    v69 = vextq_s8(v55, v55, 8uLL);
    [v23 appendBodySectionWithName:@"registeredAndSortedInteractions" multilinePrefix:v24 block:v68];
  }

  else
  {
    v26 = [*(a1 + 32) appendObject:0 withName:@"registeredAndSortedInteractions"];
  }

  v27 = *(*(a1 + 40) + 112);
  v28 = *(a1 + 32);
  v29 = [v27 configurations];
  v30 = [v28 appendObject:v29 withName:@"resolvedConfigurations"];

  v31 = [v27 configurationToInteractionMap];
  v32 = [v31 count];
  v33 = *(a1 + 32);
  if (v32)
  {
    v34 = [*(a1 + 32) activeMultilinePrefix];
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __77___UIPhysicalButtonInteractionArbiter_descriptionBuilderWithMultilinePrefix___block_invoke_4;
    v65[3] = &unk_1E70F35B8;
    v66 = v31;
    v67 = *(a1 + 32);
    [v33 appendBodySectionWithName:@"sceneConfigurationToInteractionMap" multilinePrefix:v34 block:v65];
  }

  else
  {
    v35 = [*(a1 + 32) appendObject:0 withName:@"sceneConfigurationToInteractionMap"];
  }

  if ([*(*(a1 + 40) + 80) count])
  {
    v36 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(*(a1 + 40) + 80) withName:{"count"), @"trackedWindowPointers"}];
  }

  else
  {
    v37 = [*(a1 + 32) appendObject:0 withName:@"trackedWindowPointers"];
  }

  v38 = [*(*(a1 + 40) + 96) count];
  v39 = *(a1 + 32);
  if (v38)
  {
    v40 = [*(a1 + 32) activeMultilinePrefix];
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __77___UIPhysicalButtonInteractionArbiter_descriptionBuilderWithMultilinePrefix___block_invoke_5;
    v63[3] = &unk_1E70F35B8;
    v56 = *(a1 + 32);
    v41 = v56.i64[0];
    v64 = vextq_s8(v56, v56, 8uLL);
    [v39 appendBodySectionWithName:@"windowPointersObservedForLevelChanges" multilinePrefix:v40 block:v63];
  }

  else
  {
    v42 = [*(a1 + 32) appendObject:0 withName:@"windowPointersObservedForLevelChanges"];
  }

  v43 = [*(*(a1 + 40) + 152) count];
  v44 = *(a1 + 32);
  if (v43)
  {
    v45 = [*(a1 + 32) activeMultilinePrefix];
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __77___UIPhysicalButtonInteractionArbiter_descriptionBuilderWithMultilinePrefix___block_invoke_6;
    v61[3] = &unk_1E70F35B8;
    v57 = *(a1 + 32);
    v46 = v57.i64[0];
    v62 = vextq_s8(v57, v57, 8uLL);
    [v44 appendBodySectionWithName:@"eventDeferringTokens" multilinePrefix:v45 block:v61];
  }

  else
  {
    v47 = [*(a1 + 32) appendObject:0 withName:@"eventDeferringTokens"];
  }

  v48 = *(a1 + 40);
  if (*(v48 + 64) == 1)
  {
    v49 = [*(a1 + 32) appendObject:*(v48 + 136) withName:@"mostActiveViewServiceSession"];
    v50 = [*(*(a1 + 40) + 144) count];
    v51 = *(a1 + 32);
    if (v50)
    {
      v52 = [*(a1 + 32) activeMultilinePrefix];
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __77___UIPhysicalButtonInteractionArbiter_descriptionBuilderWithMultilinePrefix___block_invoke_7;
      v59[3] = &unk_1E70F35B8;
      v58 = *(a1 + 32);
      v53 = v58.i64[0];
      v60 = vextq_s8(v58, v58, 8uLL);
      [v51 appendBodySectionWithName:@"viewServiceObservers" multilinePrefix:v52 block:v59];
    }

    else
    {
      v54 = [*(a1 + 32) appendObject:0 withName:@"viewServiceObservers"];
    }
  }
}

void __77___UIPhysicalButtonInteractionArbiter_descriptionBuilderWithMultilinePrefix___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(_UIEvaluatedObjectCache *)*(*(a1 + 32) + 72) sortedObjects];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v10 + 1) + 8 * v6) succinctDescription];
        v9 = [v7 appendObject:v8 withName:0];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void __77___UIPhysicalButtonInteractionArbiter_descriptionBuilderWithMultilinePrefix___block_invoke_4(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = *(a1 + 32);
  v18 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v18)
  {
    v17 = *v20;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v19 + 1) + 8 * i);
        v4 = [*(a1 + 32) objectForKey:v3];
        v5 = *(a1 + 40);
        if (v4)
        {
          v6 = MEMORY[0x1E696AEC0];
          v7 = objc_opt_class();
          v8 = NSStringFromClass(v7);
          v9 = [v6 stringWithFormat:@"<%@: %p>", v8, v4];

          if (v3)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v9 = @"(nil)";
          if (v3)
          {
LABEL_8:
            v10 = MEMORY[0x1E696AEC0];
            v11 = v3;
            v12 = objc_opt_class();
            v13 = NSStringFromClass(v12);
            v14 = [v10 stringWithFormat:@"<%@: %p>", v13, v11];

            goto LABEL_11;
          }
        }

        v14 = @"(nil)";
LABEL_11:
        v15 = [v5 appendObject:v9 withName:v14];
      }

      v18 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v18);
  }
}

void __77___UIPhysicalButtonInteractionArbiter_descriptionBuilderWithMultilinePrefix___block_invoke_5(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = *(*(a1 + 32) + 96);
  v2 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v13;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        v7 = [*(*(a1 + 32) + 96) countForObject:v6];
        v8 = *(a1 + 40);
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p count", objc_msgSend(v6, "pointerValue")];
        v10 = [v8 appendUnsignedInteger:v7 withName:v9];
      }

      v3 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }
}

void __77___UIPhysicalButtonInteractionArbiter_descriptionBuilderWithMultilinePrefix___block_invoke_6(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(*(a1 + 32) + 152);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [*(*(a1 + 32) + 152) objectForKey:{v7, v13}];
        v9 = *(a1 + 40);
        v10 = [v8 succinctDescription];
        v11 = [v7 description];
        v12 = [v9 appendObject:v10 withName:v11];
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

void __77___UIPhysicalButtonInteractionArbiter_descriptionBuilderWithMultilinePrefix___block_invoke_7(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(*(a1 + 32) + 144);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        v8 = *(a1 + 40);
        if (v7)
        {
          v9 = MEMORY[0x1E696AEC0];
          v10 = v7;
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          v13 = [v9 stringWithFormat:@"<%@: %p>", v12, v10, v15];
        }

        else
        {
          v13 = @"(nil)";
        }

        v14 = [v8 appendObject:v13 withName:0];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }
}

@end