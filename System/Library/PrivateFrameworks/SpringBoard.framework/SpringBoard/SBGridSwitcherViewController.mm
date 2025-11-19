@interface SBGridSwitcherViewController
- (id)targetItemForSpringLoadingInteractionInView:(id)a3 atLocation:(CGPoint)a4 forDropSession:(id)a5;
- (id)targetViewForSpringLoadingEffectForView:(id)a3;
- (void)_setupSpringLoadingSupport;
- (void)viewDidLoad;
@end

@implementation SBGridSwitcherViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SBGridSwitcherViewController;
  [(SBFluidSwitcherViewController *)&v3 viewDidLoad];
  [(SBGridSwitcherViewController *)self _setupSpringLoadingSupport];
}

- (void)_setupSpringLoadingSupport
{
  v3 = objc_alloc_init(MEMORY[0x277D65F40]);
  v4 = objc_alloc_init(MEMORY[0x277D65F48]);
  [v3 setDelegate:self];
  [v4 setDelegate:self];
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x277D75A58]);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __58__SBGridSwitcherViewController__setupSpringLoadingSupport__block_invoke;
  v11 = &unk_2783C2870;
  objc_copyWeak(&v12, &location);
  v6 = [v5 initWithInteractionBehavior:v3 interactionEffect:v4 activationHandler:&v8];
  v7 = [(SBFluidSwitcherViewController *)self contentView:v8];
  [v7 addInteraction:v6];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __58__SBGridSwitcherViewController__setupSpringLoadingSupport__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 targetItem];

  v6 = objc_opt_class();
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

  [WeakRetained didSelectContainer:v9 modifierFlags:0];
}

- (id)targetItemForSpringLoadingInteractionInView:(id)a3 atLocation:(CGPoint)a4 forDropSession:(id)a5
{
  y = a4.y;
  x = a4.x;
  v83 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [(SBFluidSwitcherViewController *)self layoutContext];
  v10 = [v9 activeGesture];

  v11 = [v10 gestureEvent];
  v12 = objc_opt_class();
  v13 = v11;
  if (v12)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  v16 = [v15 isSwitcherDrag];
  if (v16)
  {
    v17 = SBLogAppSwitcherDrag();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v79 = v10;
      _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_INFO, "Not spring-loading because of active gesture: %@", buf, 0xCu);
    }

LABEL_27:

    v26 = 0;
  }

  else
  {

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v10 = [v8 items];
    v18 = [v10 countByEnumeratingWithState:&v72 objects:v82 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v73;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v73 != v20)
          {
            objc_enumerationMutation(v10);
          }

          v22 = [*(*(&v72 + 1) + 8 * i) localObject];
          v23 = objc_opt_class();
          v24 = v22;
          if (v23)
          {
            if (objc_opt_isKindOfClass())
            {
              v25 = v24;
            }

            else
            {
              v25 = 0;
            }
          }

          else
          {
            v25 = 0;
          }

          v17 = v25;

          if (v17 && [v17 startLocation]== 11)
          {
            v27 = SBLogAppSwitcherDrag();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v79 = v17;
              _os_log_impl(&dword_21ED4E000, v27, OS_LOG_TYPE_INFO, "Not spring-loading because dragged items came from switcher: %@", buf, 0xCu);
            }

            goto LABEL_27;
          }
        }

        v19 = [v10 countByEnumeratingWithState:&v72 objects:v82 count:16];
        v26 = 1;
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v26 = 1;
    }
  }

  v28 = [(SBFluidSwitcherViewController *)self _windowManagementContext];
  v29 = [v28 isChamoisOrFlexibleWindowing];

  v30 = [(SBFluidSwitcherViewController *)self layoutContext];
  v31 = [v30 layoutState];

  v32 = [v31 unlockedEnvironmentMode];
  v33 = v32;
  if (!v26)
  {
    goto LABEL_36;
  }

  v34 = v32 & 0xFFFFFFFFFFFFFFFELL;
  if (!v29)
  {
    v34 = v32;
  }

  if (v34 != 2)
  {
    v36 = SBLogAppSwitcherDrag();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = SBStringForUnlockedEnvironmentMode(v33);
      v38 = [(SBFluidSwitcherViewController *)self _windowManagementContext];
      v39 = NSStringFromSwitcherWindowManagementContext(v38);
      *buf = 138412546;
      v79 = v37;
      v80 = 2112;
      v81 = v39;
      _os_log_impl(&dword_21ED4E000, v36, OS_LOG_TYPE_INFO, "Not spring-loading for unlockedEnvironmentMode: %@, with windowManagementContext: %@", buf, 0x16u);
    }

LABEL_36:
    v35 = 0;
    goto LABEL_37;
  }

  v35 = 1;
LABEL_37:
  v40 = [(SBFluidSwitcherViewController *)self _itemContainerAtLocation:0 environment:x, y];
  v41 = [v40 appLayout];
  v42 = v41;
  v43 = 0;
  if (v40 && v41)
  {
    [v40 killingProgress];
    if (!BSFloatIsZero() || [v42 type])
    {
      v43 = 0;
      goto LABEL_42;
    }

    v46 = [MEMORY[0x277D663F0] draggedItemBundleIdentifiersInDrag:v8];
    v47 = [v46 count];
    if (v47 != 1)
    {
      if (!v47 && ([v40 isEligibleForContentDragSpringLoading] & 1) != 0)
      {
        goto LABEL_47;
      }

LABEL_64:
      v43 = 0;
      goto LABEL_65;
    }

    v70 = v46;
    v51 = [v46 firstObject];
    v52 = v51;
    if (!v35)
    {
      v43 = 0;
      v50 = v51;
      v46 = v70;
      goto LABEL_55;
    }

    v53 = v51;
    if ([v42 containsItemWithBundleIdentifier:v51])
    {
      v54 = +[SBApplicationController sharedInstance];
      v55 = [v54 applicationWithBundleIdentifier:v52];

      v69 = v53;
      v56 = v55;
      v57 = [v55 info];
      LODWORD(v55) = [v57 supportsMultiwindow];

      v58 = v55 & v29;
      v59 = v55;
      v53 = v69;
      v46 = v70;
      if (v58 != 1 || v33 != 3)
      {

        if (!v59)
        {
          goto LABEL_64;
        }

LABEL_47:
        v43 = v40;

        v76 = *MEMORY[0x277D674E0];
        v77 = &unk_2833722F0;
        v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
        v49 = MEMORY[0x277D65DD0];
        v46 = v48;
        v50 = [v49 sharedInstance];
        [v50 emitEvent:31 withPayload:v46];

LABEL_55:
LABEL_65:

        goto LABEL_42;
      }
    }

    else
    {
      if (v33 == 3)
      {
        v60 = v29;
      }

      else
      {
        v60 = 0;
      }

      v46 = v70;
      if ((v60 & 1) == 0)
      {

        goto LABEL_47;
      }
    }

    v71 = [(SBFluidSwitcherViewController *)self dataSource];
    v61 = [v71 displayItemLayoutAttributesProvider];
    v62 = [v31 appLayout];
    v63 = [v31 interfaceOrientation];
    if ((v63 - 1) < 2)
    {
      v64 = 1;
    }

    else
    {
      v64 = 2 * ((v63 - 3) < 2);
    }

    v65 = [v61 zOrderedItemsInAppLayout:v62 orientation:v64];
    v66 = [v65 firstObject];

    v67 = [v42 itemForLayoutRole:1];
    v68 = [(SBDisplayItem *)v66 isEqualToItem:v67];

    if ((v68 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_64;
  }

LABEL_42:
  v44 = v43;

  return v43;
}

- (id)targetViewForSpringLoadingEffectForView:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
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

  v8 = [v7 _springLoadingEffectTargetView];

  return v8;
}

@end