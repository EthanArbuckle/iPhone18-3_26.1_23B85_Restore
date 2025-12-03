@interface SBGridSwitcherViewController
- (id)targetItemForSpringLoadingInteractionInView:(id)view atLocation:(CGPoint)location forDropSession:(id)session;
- (id)targetViewForSpringLoadingEffectForView:(id)view;
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

- (id)targetItemForSpringLoadingInteractionInView:(id)view atLocation:(CGPoint)location forDropSession:(id)session
{
  y = location.y;
  x = location.x;
  v83 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  layoutContext = [(SBFluidSwitcherViewController *)self layoutContext];
  activeGesture = [layoutContext activeGesture];

  gestureEvent = [activeGesture gestureEvent];
  v12 = objc_opt_class();
  v13 = gestureEvent;
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

  isSwitcherDrag = [v15 isSwitcherDrag];
  if (isSwitcherDrag)
  {
    v17 = SBLogAppSwitcherDrag();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v79 = activeGesture;
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
    activeGesture = [sessionCopy items];
    v18 = [activeGesture countByEnumeratingWithState:&v72 objects:v82 count:16];
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
            objc_enumerationMutation(activeGesture);
          }

          localObject = [*(*(&v72 + 1) + 8 * i) localObject];
          v23 = objc_opt_class();
          v24 = localObject;
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

        v19 = [activeGesture countByEnumeratingWithState:&v72 objects:v82 count:16];
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

  _windowManagementContext = [(SBFluidSwitcherViewController *)self _windowManagementContext];
  isChamoisOrFlexibleWindowing = [_windowManagementContext isChamoisOrFlexibleWindowing];

  layoutContext2 = [(SBFluidSwitcherViewController *)self layoutContext];
  layoutState = [layoutContext2 layoutState];

  unlockedEnvironmentMode = [layoutState unlockedEnvironmentMode];
  v33 = unlockedEnvironmentMode;
  if (!v26)
  {
    goto LABEL_36;
  }

  v34 = unlockedEnvironmentMode & 0xFFFFFFFFFFFFFFFELL;
  if (!isChamoisOrFlexibleWindowing)
  {
    v34 = unlockedEnvironmentMode;
  }

  if (v34 != 2)
  {
    v36 = SBLogAppSwitcherDrag();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = SBStringForUnlockedEnvironmentMode(v33);
      _windowManagementContext2 = [(SBFluidSwitcherViewController *)self _windowManagementContext];
      v39 = NSStringFromSwitcherWindowManagementContext(_windowManagementContext2);
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
  appLayout = [v40 appLayout];
  v42 = appLayout;
  v43 = 0;
  if (v40 && appLayout)
  {
    [v40 killingProgress];
    if (!BSFloatIsZero() || [v42 type])
    {
      v43 = 0;
      goto LABEL_42;
    }

    v46 = [MEMORY[0x277D663F0] draggedItemBundleIdentifiersInDrag:sessionCopy];
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
    firstObject = [v46 firstObject];
    v52 = firstObject;
    if (!v35)
    {
      v43 = 0;
      sharedInstance = firstObject;
      v46 = v70;
      goto LABEL_55;
    }

    v53 = firstObject;
    if ([v42 containsItemWithBundleIdentifier:firstObject])
    {
      v54 = +[SBApplicationController sharedInstance];
      v55 = [v54 applicationWithBundleIdentifier:v52];

      v69 = v53;
      v56 = v55;
      info = [v55 info];
      LODWORD(v55) = [info supportsMultiwindow];

      v58 = v55 & isChamoisOrFlexibleWindowing;
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
        sharedInstance = [v49 sharedInstance];
        [sharedInstance emitEvent:31 withPayload:v46];

LABEL_55:
LABEL_65:

        goto LABEL_42;
      }
    }

    else
    {
      if (v33 == 3)
      {
        v60 = isChamoisOrFlexibleWindowing;
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

    dataSource = [(SBFluidSwitcherViewController *)self dataSource];
    displayItemLayoutAttributesProvider = [dataSource displayItemLayoutAttributesProvider];
    appLayout2 = [layoutState appLayout];
    interfaceOrientation = [layoutState interfaceOrientation];
    if ((interfaceOrientation - 1) < 2)
    {
      v64 = 1;
    }

    else
    {
      v64 = 2 * ((interfaceOrientation - 3) < 2);
    }

    v65 = [displayItemLayoutAttributesProvider zOrderedItemsInAppLayout:appLayout2 orientation:v64];
    firstObject2 = [v65 firstObject];

    v67 = [v42 itemForLayoutRole:1];
    v68 = [(SBDisplayItem *)firstObject2 isEqualToItem:v67];

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

- (id)targetViewForSpringLoadingEffectForView:(id)view
{
  viewCopy = view;
  v4 = objc_opt_class();
  v5 = viewCopy;
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

  _springLoadingEffectTargetView = [v7 _springLoadingEffectTargetView];

  return _springLoadingEffectTargetView;
}

@end