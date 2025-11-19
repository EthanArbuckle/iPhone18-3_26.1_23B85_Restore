@interface SBSABackgroundBlurPreferencesProvider
+ (CGRect)frameForVariableBlurUnderContainerViewWithFrame:(CGRect)a3 offscreen:(BOOL)a4 context:(id)a5;
- (id)preferencesFromContext:(id)a3;
@end

@implementation SBSABackgroundBlurPreferencesProvider

- (id)preferencesFromContext:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = v5;
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
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

    if (!v9)
    {
      [(SBSABackgroundBlurPreferencesProvider *)v7 preferencesFromContext:a2, self];
    }
  }

  else
  {
    v9 = 0;
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__107;
  v37 = __Block_byref_object_dispose__107;
  v10 = [v9 preferences];
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

  v38 = v14;
  v15 = v34[5];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __64__SBSABackgroundBlurPreferencesProvider_preferencesFromContext___block_invoke;
  v29[3] = &unk_2783BA100;
  v32 = a2;
  v29[4] = self;
  v16 = v9;
  v30 = v16;
  v31 = &v33;
  v17 = [v15 copyWithBlock:v29];
  v18 = v34[5];
  v34[5] = v17;

  v19 = [v16 copyByUpdatingPreferences:v34[5]];
  v28.receiver = self;
  v28.super_class = SBSABackgroundBlurPreferencesProvider;
  v20 = [(SBSABasePreferencesProvider *)&v28 preferencesFromContext:v19];
  v21 = objc_opt_class();
  v22 = v20;
  if (v21)
  {
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  v25 = v34[5];
  v34[5] = v24;

  v26 = v34[5];
  _Block_object_dispose(&v33, 8);

  return v26;
}

void __64__SBSABackgroundBlurPreferencesProvider_preferencesFromContext___block_invoke(uint64_t a1, void *a2)
{
  v91 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
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

    v7 = v6;

    if (!v7)
    {
      __64__SBSABackgroundBlurPreferencesProvider_preferencesFromContext___block_invoke_cold_1(a1);
    }
  }

  else
  {
    v7 = 0;
  }

  v78 = v7;
  v8 = v3;

  v9 = [*(a1 + 40) elementContexts];
  v10 = [v9 objectAtIndex:0];

  v11 = [*(*(*(a1 + 48) + 8) + 40) containerViewDescriptions];
  v12 = [v11 firstObject];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [*(*(*(a1 + 48) + 8) + 40) indicatorContainerViewDescription];
  }

  v15 = v14;

  v16 = [v10 systemApertureCustomLayout];
  v17 = SBSABehavesLikeCustom([v10 layoutMode], v16);
  v18 = [*(a1 + 40) isReduceTransparencyEnabled];
  v19 = (a1 + 32);
  v20 = [objc_opt_class() settings];
  v21 = [v20 backgroundBlurEnabled];

  v80 = a1;
  v22 = [*(a1 + 40) isClearModeEnabled];
  v81 = v15;
  [v15 bounds];
  v27 = 0;
  v76 = v10;
  if (v17)
  {
    v28 = v8;
    if (v16 != 2)
    {
      v27 = (((CGRectGetHeight(*&v23) < 74.0) | v18 | v22) ^ 1) & v21;
    }
  }

  else
  {
    v28 = v8;
  }

  v29 = v81;
  [v81 center];
  SBUnintegralizedRectCenteredAboutPoint();
  v30 = ~v27;
  [objc_opt_class() frameForVariableBlurUnderContainerViewWithFrame:(v27 & 1) == 0 offscreen:*(v80 + 40) context:{v31, v32, v33, v34}];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = objc_alloc_init(SBSABackgroundBlurDescription);
  v44 = [SBSAInterfaceElementPropertyIdentity alloc];
  v75 = v43;
  v45 = [(SBSABackgroundBlurDescription *)v43 interfaceElementIdentifier];
  obj = [(SBSAInterfaceElementPropertyIdentity *)v44 initWithAssociatedInterfaceElementIdentifier:v45 andProperty:@"blurFrame"];

  v46 = v80;
  v47 = [SBSAInterfaceElementPropertyIdentity alloc];
  v48 = [v81 interfaceElementIdentifier];
  v82 = [(SBSAInterfaceElementPropertyIdentity *)v47 initWithAssociatedInterfaceElementIdentifier:v48 andProperty:@"bounds"];

  v49 = *(v80 + 32);
  v50 = v78;
  v77 = v28;
  if (v30)
  {
    v53 = *(v49 + 32);
    if (v53 == 1)
    {
      if (*(v49 + 40))
      {
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v54 = [*(v80 + 40) animatedTransitionResults];
        v55 = [v54 countByEnumeratingWithState:&v83 objects:v90 count:16];
        if (v55)
        {
          v56 = v55;
          v57 = *v84;
          v53 = 1;
          do
          {
            for (i = 0; i != v56; ++i)
            {
              if (*v84 != v57)
              {
                objc_enumerationMutation(v54);
              }

              v59 = *(*(&v83 + 1) + 8 * i);
              v60 = [v59 associatedInterfaceElementPropertyIdentity];
              v61 = [v60 isEqual:*(*v19 + 40)];

              if (v61 && [v59 finished])
              {
                v62 = *(*v19 + 40);
                *(*v19 + 40) = 0;

                v53 = 0;
              }
            }

            v56 = [v54 countByEnumeratingWithState:&v83 objects:v90 count:16];
          }

          while (v56);
        }

        else
        {
          v53 = 1;
        }

        v52 = 0;
        v50 = v78;
        v46 = v80;
        v29 = v81;
      }

      else
      {
        v52 = 0;
        v53 = 1;
        v29 = v81;
      }
    }

    else if (v53 == 2)
    {
      objc_storeStrong((v49 + 40), obj);
      v52 = 1;
      v53 = 1;
    }

    else
    {
      v52 = 0;
    }
  }

  else
  {
    v51 = *(v49 + 40);
    *(v49 + 40) = 0;

    v52 = 0;
    v53 = 2;
  }

  if (v53 != *(*v19 + 32))
  {
    v63 = SBLogSystemApertureController();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      v64 = *(*v19 + 32);
      if (v64 == 1)
      {
        v65 = @"visible-pending-milestone";
      }

      else
      {
        v65 = @"hidden";
      }

      if (v64 == 2)
      {
        v66 = @"visible";
      }

      else
      {
        v66 = v65;
      }

      v67 = v66;
      if (v53 == 1)
      {
        v68 = @"visible-pending-milestone";
      }

      else
      {
        v68 = @"hidden";
      }

      if (v53 == 2)
      {
        v68 = @"visible";
      }

      v46 = v80;
      v29 = v81;
      v69 = v68;
      *buf = 138543618;
      *&buf[4] = v67;
      v88 = 2114;
      v89 = v69;
      _os_log_impl(&dword_21ED4E000, v63, OS_LOG_TYPE_DEFAULT, "Background Blur: Updating background blur visibility: (%{public}@) -> (%{public}@)", buf, 0x16u);
    }

    *(*v19 + 32) = v53;
  }

  v70 = [*(*(*(v46 + 48) + 8) + 40) effectiveAnimatedTransitionDescriptionForProperty:v82];
  if (v70)
  {
    v71 = obj;
    if (v52)
    {
      v72 = [MEMORY[0x277CBEB98] setWithObject:0x28336F620];
    }

    else
    {
      v72 = 0;
    }

    [v50 associateAnimatedTransitionDescriptionOfProperty:v82 withProperty:obj withMilestones:v72];
    goto LABEL_60;
  }

  v71 = obj;
  if (v52)
  {
    __64__SBSABackgroundBlurPreferencesProvider_preferencesFromContext___block_invoke_cold_2(v46, v19, buf);
    v72 = *buf;
LABEL_60:
  }

  v73 = [(SBSABackgroundBlurDescription *)v75 copyBySettingBlurHidden:*(*v19 + 32) == 0];

  v74 = [v73 copyBySettingBlurFrame:{v36, v38, v40, v42}];
  [v50 setBackgroundBlurDescription:v74];
}

+ (CGRect)frameForVariableBlurUnderContainerViewWithFrame:(CGRect)a3 offscreen:(BOOL)a4 context:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a5;
  if (a4)
  {
    v11 = -360.0;
  }

  else
  {
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    v12 = CGRectGetMaxY(v18) + -40.0;
    if (v12 > 180.0)
    {
      v12 = 180.0;
    }

    v11 = v12 + -180.0;
  }

  [v10 systemContainerBounds];
  v13 = CGRectGetWidth(v19);

  v14 = 360.0;
  v15 = 0.0;
  v16 = v11;
  v17 = v13;
  result.size.height = v14;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)preferencesFromContext:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSClassFromString(&cfstr_Sbsacontext.isa);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v8 handleFailureInMethod:a2 object:a3 file:@"SBSABackgroundBlurPreferencesProvider.m" lineNumber:39 description:{@"Unexpected class – expected '%@', got '%@'", v5, v7}];
}

void __64__SBSABackgroundBlurPreferencesProvider_preferencesFromContext___block_invoke_cold_1(uint64_t a1)
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v7 handleFailureInMethod:v2 object:v3 file:@"SBSABackgroundBlurPreferencesProvider.m" lineNumber:43 description:{@"Unexpected class – expected '%@', got '%@'", v4, v6}];
}

uint64_t __64__SBSABackgroundBlurPreferencesProvider_preferencesFromContext___block_invoke_cold_2(uint64_t a1, void *a2, void *a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  *a3 = v6;
  return [v6 handleFailureInMethod:*(a1 + 56) object:*a2 file:@"SBSABackgroundBlurPreferencesProvider.m" lineNumber:105 description:@"Can't add milestone when there's no dismissal animation."];
}

@end