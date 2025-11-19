@interface SBHideSharePlayContentFromSharedScreenController
- (BOOL)_canShareDaemonScenes;
- (BOOL)_deviceHasDaemonSceneThatShouldBeShared;
- (BOOL)_deviceHasDaemonSceneThatShouldBeSharedIfPossible;
- (BOOL)_isCoverSheetFullyPresented;
- (BOOL)_isCoverSheetVisible;
- (BOOL)_isPipViewControllerToHideOnMainDisplay;
- (SBHideSharePlayContentFromSharedScreenController)init;
- (double)_coverSheetWindowLevel;
- (id)_pipViewControllerToHide;
- (id)_systemNotesWindow;
- (id)acquireHideSharePlayContentFromClonedDisplaysAssertionForReason:(id)a3;
- (void)_addAssertion:(id)a3;
- (void)_pipViewControllerToHide;
- (void)_removeAssertion:(id)a3;
- (void)_resolveHidingBehavior;
- (void)_startHidingViewControllerFromClonedDisplaysIfNeeded:(id)a3;
- (void)_startHidingWindowFromClonedDisplaysIfNeeded:(id)a3;
- (void)_startObservingForActiveHideAssertionIfNeeded;
- (void)_startTrackingPresentable:(id)a3;
- (void)_startTrackingTransientOverlayViewController:(id)a3;
- (void)_stopHidingViewControllerFromClonedDisplaysIfNeeded:(id)a3;
- (void)_stopHidingWindowFromClonedDisplaysIfNeeded:(id)a3;
- (void)_stopObservingForActiveHideAssertionIfNeeded;
- (void)_stopTrackingPresentable:(id)a3;
- (void)_stopTrackingTransientOverlayViewController:(id)a3;
- (void)_windowVisibilityDidChange:(id)a3;
- (void)bannerManager:(id)a3 willDismissPresentable:(id)a4 withTransitionCoordinator:(id)a5 userInfo:(id)a6;
- (void)bannerManager:(id)a3 willPresentPresentable:(id)a4 withTransitionCoordinator:(id)a5 userInfo:(id)a6;
- (void)dealloc;
- (void)mousePointerManager:(id)a3 hardwarePointingDeviceAttachedDidChange:(BOOL)a4;
- (void)transientOverlayPresentationManager:(id)a3 didDismissViewController:(id)a4 wasTopmostPresentation:(BOOL)a5;
- (void)transientOverlayPresentationManager:(id)a3 willPresentViewController:(id)a4;
@end

@implementation SBHideSharePlayContentFromSharedScreenController

- (SBHideSharePlayContentFromSharedScreenController)init
{
  v11.receiver = self;
  v11.super_class = SBHideSharePlayContentFromSharedScreenController;
  v2 = [(SBHideSharePlayContentFromSharedScreenController *)&v11 init];
  if (v2)
  {
    v3 = [SBApp bannerManager];
    [v3 addTransitionObserver:v2];

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v2 selector:sel__handleControlCenterDidPresent name:@"SBControlCenterDidPresentNotification" object:0];

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v2 selector:sel__handleControlCenterWillDismiss name:@"SBControlCenterWillDismissNotification" object:0];

    v6 = +[SBDraggingSystemManager sharedInstance];
    [v6 addObserver:v2];

    v7 = [SBApp mousePointerManager];
    [v7 addObserver:v2];

    v8 = +[SBWorkspace mainWorkspace];
    v9 = [v8 transientOverlayPresentationManager];
    [v9 addObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [SBApp bannerManager];
  [v3 removeTransitionObserver:self];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:@"SBControlCenterDidPresentNotification" object:0];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self name:@"SBControlCenterWillDismissNotification" object:0];

  v6 = +[SBDraggingSystemManager sharedInstance];
  [v6 removeObserver:self];

  v7 = [SBApp mousePointerManager];
  [v7 removeObserver:self];

  v8 = +[SBWorkspace mainWorkspace];
  v9 = [v8 transientOverlayPresentationManager];
  [v9 removeObserver:self];

  v10.receiver = self;
  v10.super_class = SBHideSharePlayContentFromSharedScreenController;
  [(SBHideSharePlayContentFromSharedScreenController *)&v10 dealloc];
}

- (id)acquireHideSharePlayContentFromClonedDisplaysAssertionForReason:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SBHideSharePlayContentFromSharedScreenController *)a2 acquireHideSharePlayContentFromClonedDisplaysAssertionForReason:?];
  }

  objc_initWeak(&location, self);
  v6 = objc_alloc(MEMORY[0x277CF0CE8]);
  v7 = [MEMORY[0x277CCAD78] UUID];
  v8 = [v7 UUIDString];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __116__SBHideSharePlayContentFromSharedScreenController_acquireHideSharePlayContentFromClonedDisplaysAssertionForReason___block_invoke;
  v14 = &unk_2783A9070;
  objc_copyWeak(&v15, &location);
  v9 = [v6 initWithIdentifier:v8 forReason:v5 invalidationBlock:&v11];

  [(SBHideSharePlayContentFromSharedScreenController *)self _addAssertion:v9, v11, v12, v13, v14];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v9;
}

void __116__SBHideSharePlayContentFromSharedScreenController_acquireHideSharePlayContentFromClonedDisplaysAssertionForReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removeAssertion:v3];
}

- (void)_windowVisibilityDidChange:(id)a3
{
  v4 = [a3 object];
  cloneTerminatingWindow = self->_cloneTerminatingWindow;

  if (v4 != cloneTerminatingWindow)
  {

    [(SBHideSharePlayContentFromSharedScreenController *)self _resolveHidingBehavior];
  }
}

- (void)_resolveHidingBehavior
{
  v182 = *MEMORY[0x277D85DE8];
  v142 = [(NSMutableSet *)self->_activeAssertions count];
  if (v142)
  {
    [(SBHideSharePlayContentFromSharedScreenController *)self _startObservingForActiveHideAssertionIfNeeded];
    v3 = [(SBHideSharePlayContentFromSharedScreenController *)self _pipViewControllerToHide];
    LODWORD(v136) = [(SBHideSharePlayContentFromSharedScreenController *)self _isPipViewControllerToHideOnMainDisplay];
  }

  else
  {
    [(SBHideSharePlayContentFromSharedScreenController *)self _stopObservingForActiveHideAssertionIfNeeded];
    v3 = [(SBHideSharePlayContentFromSharedScreenController *)self _pipViewControllerToHide];
    LODWORD(v136) = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_pipViewControllerBeingHiddenWithDisableUpdateMask);
  v5 = WeakRetained;
  if (WeakRetained && WeakRetained != v3)
  {
    [(SBHideSharePlayContentFromSharedScreenController *)self _stopHidingViewControllerFromClonedDisplaysIfNeeded:WeakRetained];
  }

  v139 = v5;
  if (v142)
  {
    v6 = [(NSHashTable *)self->_trackedPresentables allObjects];
  }

  else
  {
    v6 = 0;
  }

  v141 = v3;
  v173 = 0u;
  v174 = 0u;
  v171 = 0u;
  v172 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v171 objects:v181 count:16];
  if (!v7)
  {
    v9 = 0;
    v146 = 0;
    goto LABEL_32;
  }

  v8 = v7;
  v9 = 0;
  v146 = 0;
  v144 = *v172;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v172 != v144)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v171 + 1) + 8 * i);
      v12 = UIViewControllerFromPresentable();
      v13 = [v12 view];
      v14 = [v13 window];

      v15 = [v14 windowScene];
      v16 = objc_opt_class();
      v17 = v15;
      if (v16)
      {
        if (objc_opt_isKindOfClass())
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;

      v20 = [v11 requesterIdentifier];
      if (([v20 isEqualToString:@"com.apple.ConversationKit"] & 1) == 0)
      {

LABEL_24:
        v9 |= [v19 isMainDisplayWindowScene];
        goto LABEL_25;
      }

      v21 = [v11 requestIdentifier];
      v22 = [v21 hasPrefix:@"com.apple.conversationController"];

      if (!v22)
      {
        goto LABEL_24;
      }

      [v14 windowLevel];
      v24 = v23;
      [(SBHideSharePlayContentFromSharedScreenController *)self _coverSheetWindowLevel];
      v146 |= v24 < v25;
LABEL_25:

      if (v146 & 1) != 0 && (v9)
      {
        v9 = 1;
        v146 = 1;
        goto LABEL_32;
      }
    }

    v8 = [obj countByEnumeratingWithState:&v171 objects:v181 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_32:

  if (v142)
  {
    v26 = [(NSHashTable *)self->_trackedTransientOverlays allObjects];
  }

  else
  {
    v26 = 0;
  }

  HIDWORD(v136) = v9;
  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  v145 = v26;
  v27 = [v145 countByEnumeratingWithState:&v167 objects:v180 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = 0;
    v30 = 0;
    v31 = *v168;
    while (2)
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v168 != v31)
        {
          objc_enumerationMutation(v145);
        }

        v33 = [*(*(&v167 + 1) + 8 * j) view];
        v34 = [v33 window];

        v35 = [v34 windowScene];
        v36 = objc_opt_class();
        v37 = v35;
        if (v36)
        {
          if (objc_opt_isKindOfClass())
          {
            v38 = v37;
          }

          else
          {
            v38 = 0;
          }
        }

        else
        {
          v38 = 0;
        }

        v39 = v38;

        [v34 windowLevel];
        v41 = v40;
        [(SBHideSharePlayContentFromSharedScreenController *)self _coverSheetWindowLevel];
        v30 |= v41 < v42;
        v43 = [v39 isMainDisplayWindowScene];

        v29 |= v43;
        if (v30 & 1) != 0 && (v29)
        {
          v29 = 1;
          v30 = 1;
          goto LABEL_52;
        }
      }

      v28 = [v145 countByEnumeratingWithState:&v167 objects:v180 count:16];
      if (v28)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

LABEL_52:

  if (v142)
  {
    v44 = ![(SBHideSharePlayContentFromSharedScreenController *)self _deviceHasDaemonSceneThatShouldBeShared];
  }

  else
  {
    v44 = 1;
  }

  v45 = [SBApp windowSceneManager];
  v46 = [v45 connectedWindowScenes];

  v140 = v46;
  if ([v46 count] != 1)
  {
    v49 = 0;
    LOBYTE(v48) = 0;
    v50 = *MEMORY[0x277D76EF0];
    goto LABEL_70;
  }

  v47 = [v46 anyObject];
  LODWORD(v48) = [v47 isMainDisplayWindowScene];

  v49 = v44 & v48;
  v50 = *MEMORY[0x277D76EF0];
  if (!v48)
  {
LABEL_70:
    v60 = v141;
    goto LABEL_78;
  }

  v51 = [(SBHideSharePlayContentFromSharedScreenController *)self _pipViewControllerToHide];
  v52 = [v51 view];
  v53 = [v52 window];

  if ((v138 | v29))
  {
    v54 = v50;
    if (v138)
    {
      v55 = [(NSHashTable *)self->_trackedPresentables anyObject];
      v56 = UIViewControllerFromPresentable();
      v57 = [v56 view];
      v58 = [v57 window];
      [v58 windowLevel];
      v54 = v59;

      v46 = v140;
    }

    v60 = v141;
    if (v29)
    {
      v61 = [(NSHashTable *)self->_trackedTransientOverlays anyObject];
      v62 = [v61 view];
      v63 = [v62 window];
      [v63 windowLevel];
      v50 = v64;
    }

    if (v54 + 0.01 >= v50 + 0.01)
    {
      v65 = v54 + 0.01;
    }

    else
    {
      v65 = v50 + 0.01;
    }

    LOBYTE(v48) = v146 | v30;
    if (((v146 | v30) & 1) == 0 && ((v137 ^ 1) & 1) == 0)
    {
      [v53 windowLevel];
      if (v54 >= v66)
      {
        LOBYTE(v48) = 1;
      }

      else
      {
        [v53 windowLevel];
        LOBYTE(v48) = v50 >= v67;
      }
    }
  }

  else
  {
    if (self->_isControlCenterFullyPresentedOnMainDisplay)
    {
      v68 = [SBApp windowSceneManager];
      v48 = [v68 embeddedDisplayWindowScene];

      v69 = [v48 controlCenterController];
      v70 = [v69 _controlCenterWindow];
      [v70 windowLevel];
      v72 = v71;

      v65 = v72 + 0.001;
      LOBYTE(v48) = 0;
    }

    else if (v137)
    {
      v73 = [(SBHideSharePlayContentFromSharedScreenController *)self _systemNotesWindow];
      [v73 windowLevel];
      v75 = v74;

      [v53 windowLevel];
      v77 = v76;
      v65 = v76 + -0.001;
      v78 = [(SBHideSharePlayContentFromSharedScreenController *)self _systemNotesWindow];
      LODWORD(v48) = (v75 >= v77) & ~[v78 isHidden];
    }

    else
    {
      LOBYTE(v48) = 0;
      v65 = v50;
    }

    v60 = v141;
  }

  v50 = v65;
LABEL_78:
  v79 = 0.0;
  if (![(SBHideSharePlayContentFromSharedScreenController *)self _isCoverSheetFullyPresented])
  {
    if ([(SBHideSharePlayContentFromSharedScreenController *)self _isCoverSheetVisible])
    {
      [(SBHideSharePlayContentFromSharedScreenController *)self _coverSheetWindowLevel];
      v81 = v80 + -0.01;
      if (v50 >= v81)
      {
        v79 = v81;
      }

      else
      {
        v79 = v50;
      }
    }

    else
    {
      v79 = v50;
    }
  }

  if (v49)
  {
    v82 = v48;
  }

  else
  {
    v82 = v142 != 0;
  }

  cloneTerminatingWindow = self->_cloneTerminatingWindow;
  if (((v142 != 0) & v49) == 1)
  {
    if (!cloneTerminatingWindow)
    {
      v84 = [v46 anyObject];
      v85 = [objc_alloc(MEMORY[0x277D75DA0]) initWithWindowScene:v84];
      v86 = self->_cloneTerminatingWindow;
      self->_cloneTerminatingWindow = v85;

      [(UIWindow *)self->_cloneTerminatingWindow setUserInteractionEnabled:0];
      v87 = [(UIWindow *)self->_cloneTerminatingWindow layer];
      [v87 setAllowsHitTesting:0];

      v88 = self->_cloneTerminatingWindow;
      v89 = [MEMORY[0x277D75348] clearColor];
      [(UIWindow *)v88 setBackgroundColor:v89];

      [(UIWindow *)self->_cloneTerminatingWindow setWindowLevel:v79];
      [(UIWindow *)self->_cloneTerminatingWindow setHidden:0];
      if (!self->_cloneTerminatingLayer)
      {
        v90 = objc_opt_new();
        cloneTerminatingLayer = self->_cloneTerminatingLayer;
        self->_cloneTerminatingLayer = v90;

        v92 = [(UIWindow *)self->_cloneTerminatingWindow layer];
        v93 = [v92 superlayer];

        if (v93)
        {
          do
          {
            v94 = [v92 superlayer];

            v95 = [v94 superlayer];

            v92 = v94;
          }

          while (v95);
        }

        else
        {
          v94 = v92;
        }

        [v94 addSublayer:self->_cloneTerminatingLayer];
      }

      cloneTerminatingWindow = self->_cloneTerminatingWindow;
    }

    [(UIWindow *)cloneTerminatingWindow setWindowLevel:v79];
    if (v82)
    {
LABEL_114:
      objc_storeWeak(&self->_pipViewControllerBeingHiddenWithDisableUpdateMask, v60);
      [(SBHideSharePlayContentFromSharedScreenController *)self _startHidingViewControllerFromClonedDisplaysIfNeeded:v60];
      v165 = 0u;
      v166 = 0u;
      v163 = 0u;
      v164 = 0u;
      v109 = [(NSHashTable *)self->_trackedPresentables allObjects];
      v110 = [v109 countByEnumeratingWithState:&v163 objects:v179 count:16];
      if (!v110)
      {
        goto LABEL_125;
      }

      v111 = v110;
      v112 = *v164;
      while (1)
      {
        for (k = 0; k != v111; ++k)
        {
          if (*v164 != v112)
          {
            objc_enumerationMutation(v109);
          }

          v114 = *(*(&v163 + 1) + 8 * k);
          v115 = [v114 requesterIdentifier];
          if ([v115 isEqualToString:@"com.apple.ConversationKit"])
          {
            v116 = [v114 requestIdentifier];
            v117 = [v116 hasPrefix:@"com.apple.conversationController"];

            if (!v117)
            {
              continue;
            }

            v115 = UIViewControllerFromPresentable();
            [(SBHideSharePlayContentFromSharedScreenController *)self _startHidingViewControllerFromClonedDisplaysIfNeeded:v115];
          }
        }

        v111 = [v109 countByEnumeratingWithState:&v163 objects:v179 count:16];
        if (!v111)
        {
LABEL_125:

          v118 = self->_cloneTerminatingWindow;
          if (v118 && ([(UIWindow *)v118 isHidden]& 1) == 0)
          {
            v161 = 0u;
            v162 = 0u;
            v159 = 0u;
            v160 = 0u;
            v104 = [(NSHashTable *)self->_windowsBeingHiddenWithDisableUpdateMask allObjects];
            v132 = [v104 countByEnumeratingWithState:&v159 objects:v178 count:16];
            v100 = v139;
            if (v132)
            {
              v133 = v132;
              v134 = *v160;
              v60 = v141;
              do
              {
                for (m = 0; m != v133; ++m)
                {
                  if (*v160 != v134)
                  {
                    objc_enumerationMutation(v104);
                  }

                  [(SBHideSharePlayContentFromSharedScreenController *)self _stopHidingWindowFromClonedDisplaysIfNeeded:*(*(&v159 + 1) + 8 * m)];
                }

                v133 = [v104 countByEnumeratingWithState:&v159 objects:v178 count:16];
              }

              while (v133);
            }

            else
            {
              v60 = v141;
            }
          }

          else
          {
            v104 = [MEMORY[0x277D75DA0] allWindowsIncludingInternalWindows:0 onlyVisibleWindows:1];
            v155 = 0u;
            v156 = 0u;
            v157 = 0u;
            v158 = 0u;
            v119 = [v104 countByEnumeratingWithState:&v155 objects:v177 count:16];
            if (v119)
            {
              v120 = v119;
              v121 = *v156;
              do
              {
                v122 = 0;
                do
                {
                  if (*v156 != v121)
                  {
                    objc_enumerationMutation(v104);
                  }

                  v123 = *(*(&v155 + 1) + 8 * v122);
                  v124 = [(UIWindow *)v123 windowScene];
                  v125 = objc_opt_class();
                  v126 = v124;
                  if (v125)
                  {
                    if (objc_opt_isKindOfClass())
                    {
                      v127 = v126;
                    }

                    else
                    {
                      v127 = 0;
                    }
                  }

                  else
                  {
                    v127 = 0;
                  }

                  v128 = v127;

                  v129 = [v128 isMainDisplayWindowScene];
                  if (v129 && v123 != self->_cloneTerminatingWindow && ([(UIWindow *)v123 windowLevel], v130 >= v79))
                  {
                    [(SBHideSharePlayContentFromSharedScreenController *)self _startHidingWindowFromClonedDisplaysIfNeeded:v123];
                  }

                  else
                  {
                    [(SBHideSharePlayContentFromSharedScreenController *)self _stopHidingWindowFromClonedDisplaysIfNeeded:v123];
                  }

                  ++v122;
                }

                while (v120 != v122);
                v131 = [v104 countByEnumeratingWithState:&v155 objects:v177 count:16];
                v120 = v131;
              }

              while (v131);
            }

            v60 = v141;
            v100 = v139;
          }

          goto LABEL_155;
        }
      }
    }
  }

  else
  {
    [(UIWindow *)cloneTerminatingWindow setHidden:1];
    v96 = self->_cloneTerminatingLayer;
    self->_cloneTerminatingLayer = 0;

    v97 = self->_cloneTerminatingWindow;
    self->_cloneTerminatingWindow = 0;

    if (v82)
    {
      goto LABEL_114;
    }
  }

  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v98 = [(NSHashTable *)self->_viewControllersWithDisableUpdateMasks allObjects];
  v99 = [v98 countByEnumeratingWithState:&v151 objects:v176 count:16];
  v100 = v139;
  if (v99)
  {
    v101 = v99;
    v102 = *v152;
    do
    {
      for (n = 0; n != v101; ++n)
      {
        if (*v152 != v102)
        {
          objc_enumerationMutation(v98);
        }

        [(SBHideSharePlayContentFromSharedScreenController *)self _stopHidingViewControllerFromClonedDisplaysIfNeeded:*(*(&v151 + 1) + 8 * n)];
      }

      v101 = [v98 countByEnumeratingWithState:&v151 objects:v176 count:16];
    }

    while (v101);
  }

  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v104 = [(NSHashTable *)self->_windowsBeingHiddenWithDisableUpdateMask allObjects];
  v105 = [v104 countByEnumeratingWithState:&v147 objects:v175 count:16];
  if (v105)
  {
    v106 = v105;
    v107 = *v148;
    do
    {
      for (ii = 0; ii != v106; ++ii)
      {
        if (*v148 != v107)
        {
          objc_enumerationMutation(v104);
        }

        [(SBHideSharePlayContentFromSharedScreenController *)self _stopHidingWindowFromClonedDisplaysIfNeeded:*(*(&v147 + 1) + 8 * ii)];
      }

      v106 = [v104 countByEnumeratingWithState:&v147 objects:v175 count:16];
    }

    while (v106);
  }

LABEL_155:
}

- (void)_startObservingForActiveHideAssertionIfNeeded
{
  if (!self->_isObservingPIPWindowLevelsAndVisibility)
  {
    self->_isObservingPIPWindowLevelsAndVisibility = 1;
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:self selector:sel__windowVisibilityDidChange_ name:*MEMORY[0x277D77278] object:0];
    [v4 addObserver:self selector:sel__windowVisibilityDidChange_ name:*MEMORY[0x277D77288] object:0];
    [v4 addObserver:self selector:sel__resolveHidingBehavior name:@"SBCoverSheetWillPresentNotification" object:0];
    [v4 addObserver:self selector:sel__resolveHidingBehavior name:@"SBCoverSheetDidPresentNotification" object:0];
    [v4 addObserver:self selector:sel__resolveHidingBehavior name:@"SBCoverSheetWillDismissNotification" object:0];
    [v4 addObserver:self selector:sel__resolveHidingBehavior name:@"SBCoverSheetDidDismissNotification" object:0];
  }
}

- (void)_stopObservingForActiveHideAssertionIfNeeded
{
  if (self->_isObservingPIPWindowLevelsAndVisibility)
  {
    self->_isObservingPIPWindowLevelsAndVisibility = 0;
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 removeObserver:self name:*MEMORY[0x277D77278] object:0];
    [v4 removeObserver:self name:*MEMORY[0x277D77288] object:0];
    [v4 removeObserver:self name:@"SBCoverSheetWillPresentNotification" object:0];
    [v4 removeObserver:self name:@"SBCoverSheetDidDismissNotification" object:0];
  }
}

- (void)_addAssertion:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    if (!self->_activeAssertions)
    {
      v5 = [MEMORY[0x277CBEB58] set];
      activeAssertions = self->_activeAssertions;
      self->_activeAssertions = v5;
    }

    v7 = SBLogInCallPresentation();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v4;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "acquiring hide SharePlay content from cloned displays assertion %{public}@", &v8, 0xCu);
    }

    [(NSMutableSet *)self->_activeAssertions addObject:v4];
  }

  [(SBHideSharePlayContentFromSharedScreenController *)self _resolveHidingBehavior];
}

- (void)_removeAssertion:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = SBLogInCallPresentation();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "removing hide SharePlay content from cloned displays assertion %{public}@", &v7, 0xCu);
    }

    [(NSMutableSet *)self->_activeAssertions removeObject:v4];
  }

  if (![(NSMutableSet *)self->_activeAssertions count])
  {
    activeAssertions = self->_activeAssertions;
    self->_activeAssertions = 0;
  }

  [(SBHideSharePlayContentFromSharedScreenController *)self _resolveHidingBehavior];
}

- (void)bannerManager:(id)a3 willPresentPresentable:(id)a4 withTransitionCoordinator:(id)a5 userInfo:(id)a6
{
  v8 = a4;
  v9 = a5;
  [(SBHideSharePlayContentFromSharedScreenController *)self _startTrackingPresentable:v8];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __124__SBHideSharePlayContentFromSharedScreenController_bannerManager_willPresentPresentable_withTransitionCoordinator_userInfo___block_invoke;
  v11[3] = &unk_2783B6F60;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [v9 animateAlongsideTransition:0 completion:v11];
}

uint64_t __124__SBHideSharePlayContentFromSharedScreenController_bannerManager_willPresentPresentable_withTransitionCoordinator_userInfo___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 _stopTrackingPresentable:v5];
  }

  return result;
}

- (void)bannerManager:(id)a3 willDismissPresentable:(id)a4 withTransitionCoordinator:(id)a5 userInfo:(id)a6
{
  v8 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __124__SBHideSharePlayContentFromSharedScreenController_bannerManager_willDismissPresentable_withTransitionCoordinator_userInfo___block_invoke;
  v10[3] = &unk_2783B6F60;
  v10[4] = self;
  v11 = v8;
  v9 = v8;
  [a5 animateAlongsideTransition:0 completion:v10];
}

uint64_t __124__SBHideSharePlayContentFromSharedScreenController_bannerManager_willDismissPresentable_withTransitionCoordinator_userInfo___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 _stopTrackingPresentable:v5];
  }

  return result;
}

- (void)_startTrackingPresentable:(id)a3
{
  v4 = a3;
  trackedPresentables = self->_trackedPresentables;
  v8 = v4;
  if (!trackedPresentables)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_trackedPresentables;
    self->_trackedPresentables = v6;

    v4 = v8;
    trackedPresentables = self->_trackedPresentables;
  }

  [(NSHashTable *)trackedPresentables addObject:v4];
  [(SBHideSharePlayContentFromSharedScreenController *)self _resolveHidingBehavior];
}

- (void)_stopTrackingPresentable:(id)a3
{
  v4 = a3;
  v5 = UIViewControllerFromPresentable();
  [(SBHideSharePlayContentFromSharedScreenController *)self _stopHidingViewControllerFromClonedDisplaysIfNeeded:v5];

  [(NSHashTable *)self->_trackedPresentables removeObject:v4];
  if (![(NSHashTable *)self->_trackedPresentables count])
  {
    trackedPresentables = self->_trackedPresentables;
    self->_trackedPresentables = 0;
  }

  [(SBHideSharePlayContentFromSharedScreenController *)self _resolveHidingBehavior];
}

- (id)_pipViewControllerToHide
{
  if (self->_isControlCenterFullyPresentedOnMainDisplay)
  {
    v2 = 0;
  }

  else
  {
    v5 = +[SBWorkspace mainWorkspace];
    v6 = [v5 pipControllerForType:0];

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      [(SBHideSharePlayContentFromSharedScreenController *)a2 _pipViewControllerToHide];
    }

    v7 = [v6 containerViewControllersOnWindowScene:0];
    v2 = [v7 bs_firstObjectPassingTest:&__block_literal_global_175];
  }

  return v2;
}

- (BOOL)_isPipViewControllerToHideOnMainDisplay
{
  v2 = [(SBHideSharePlayContentFromSharedScreenController *)self _pipViewControllerToHide];
  v3 = [v2 view];
  v4 = [v3 window];
  v5 = [v4 windowScene];

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

  v10 = [v9 isMainDisplayWindowScene];
  return v10;
}

- (id)_systemNotesWindow
{
  v2 = [SBApp windowSceneManager];
  v3 = [v2 embeddedDisplayWindowScene];

  v4 = +[SBWorkspace mainWorkspace];
  v5 = [v4 pipControllerForType:1];
  v6 = [v5 _leadingWindowForWindowScene:v3];

  return v6;
}

- (BOOL)_isCoverSheetVisible
{
  v2 = +[SBCoverSheetPresentationManager sharedInstanceIfExists];
  v3 = [v2 isVisible];

  return v3;
}

- (BOOL)_isCoverSheetFullyPresented
{
  v2 = +[SBCoverSheetPresentationManager sharedInstanceIfExists];
  if ([v2 isVisible])
  {
    v3 = +[SBCoverSheetPresentationManager sharedInstanceIfExists];
    v4 = [v3 isTransitioning] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (double)_coverSheetWindowLevel
{
  v2 = +[SBCoverSheetPresentationManager sharedInstanceIfExists];
  v3 = [v2 coverSheetWindow];
  [v3 windowLevel];
  v5 = v4;

  return v5;
}

- (void)_startHidingViewControllerFromClonedDisplaysIfNeeded:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && ![(NSHashTable *)self->_viewControllersWithDisableUpdateMasks containsObject:v4])
  {
    viewControllersWithDisableUpdateMasks = self->_viewControllersWithDisableUpdateMasks;
    if (!viewControllersWithDisableUpdateMasks)
    {
      v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v7 = self->_viewControllersWithDisableUpdateMasks;
      self->_viewControllersWithDisableUpdateMasks = v6;

      viewControllersWithDisableUpdateMasks = self->_viewControllersWithDisableUpdateMasks;
    }

    [(NSHashTable *)viewControllersWithDisableUpdateMasks addObject:v4];
    if ((objc_opt_respondsToSelector() & 1) == 0 || [v4 wantsDisableUpdateClonedDuringSharePlay])
    {
      v8 = [v4 viewIfLoaded];
      v9 = [v8 layer];

      [v9 setDisableUpdateMask:{objc_msgSend(v9, "disableUpdateMask") | 0x10}];
      v10 = SBLogInCallPresentation();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543362;
        v12 = v4;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Started hiding %{public}@ from cloned display", &v11, 0xCu);
      }
    }
  }
}

- (void)_stopHidingViewControllerFromClonedDisplaysIfNeeded:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    if ([(NSHashTable *)self->_viewControllersWithDisableUpdateMasks containsObject:v4])
    {
      [(NSHashTable *)self->_viewControllersWithDisableUpdateMasks removeObject:v4];
      if ((objc_opt_respondsToSelector() & 1) == 0 || [v4 wantsDisableUpdateClonedDuringSharePlay])
      {
        v5 = [v4 viewIfLoaded];
        v6 = [v5 layer];

        [v6 setDisableUpdateMask:{objc_msgSend(v6, "disableUpdateMask") & 0xFFFFFFEFLL}];
        v7 = SBLogInCallPresentation();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 138543362;
          v11 = v4;
          _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Stopped hiding %{public}@ from cloned display", &v10, 0xCu);
        }
      }
    }
  }

  if (![(NSHashTable *)self->_viewControllersWithDisableUpdateMasks count])
  {
    viewControllersWithDisableUpdateMasks = self->_viewControllersWithDisableUpdateMasks;
    self->_viewControllersWithDisableUpdateMasks = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_pipViewControllerBeingHiddenWithDisableUpdateMask);

  if (WeakRetained == v4)
  {
    objc_storeWeak(&self->_pipViewControllerBeingHiddenWithDisableUpdateMask, 0);
  }
}

- (void)_startHidingWindowFromClonedDisplaysIfNeeded:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && ![(NSHashTable *)self->_windowsBeingHiddenWithDisableUpdateMask containsObject:v4])
  {
    windowsBeingHiddenWithDisableUpdateMask = self->_windowsBeingHiddenWithDisableUpdateMask;
    if (!windowsBeingHiddenWithDisableUpdateMask)
    {
      v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v7 = self->_windowsBeingHiddenWithDisableUpdateMask;
      self->_windowsBeingHiddenWithDisableUpdateMask = v6;

      windowsBeingHiddenWithDisableUpdateMask = self->_windowsBeingHiddenWithDisableUpdateMask;
    }

    [(NSHashTable *)windowsBeingHiddenWithDisableUpdateMask addObject:v4];
    if ((objc_opt_respondsToSelector() & 1) == 0 || [v4 wantsDisableUpdateClonedDuringSharePlay])
    {
      v8 = [v4 layer];
      [v8 setDisableUpdateMask:{objc_msgSend(v8, "disableUpdateMask") | 0x10}];
      v9 = SBLogInCallPresentation();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543362;
        v11 = v4;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Started hiding %{public}@ from cloned display", &v10, 0xCu);
      }
    }
  }
}

- (void)_stopHidingWindowFromClonedDisplaysIfNeeded:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    if ([(NSHashTable *)self->_windowsBeingHiddenWithDisableUpdateMask containsObject:v4])
    {
      [(NSHashTable *)self->_windowsBeingHiddenWithDisableUpdateMask removeObject:v4];
      if ((objc_opt_respondsToSelector() & 1) == 0 || [v4 wantsDisableUpdateClonedDuringSharePlay])
      {
        v5 = [v4 layer];
        [v5 setDisableUpdateMask:{objc_msgSend(v5, "disableUpdateMask") & 0xFFFFFFEFLL}];
        v6 = SBLogInCallPresentation();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 138543362;
          v9 = v4;
          _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Stopped hiding %{public}@ from cloned display", &v8, 0xCu);
        }
      }
    }
  }

  if (![(NSHashTable *)self->_windowsBeingHiddenWithDisableUpdateMask count])
  {
    windowsBeingHiddenWithDisableUpdateMask = self->_windowsBeingHiddenWithDisableUpdateMask;
    self->_windowsBeingHiddenWithDisableUpdateMask = 0;
  }
}

- (BOOL)_deviceHasDaemonSceneThatShouldBeShared
{
  v3 = [(SBHideSharePlayContentFromSharedScreenController *)self _canShareDaemonScenes];
  if (v3)
  {
    if ([(SBHideSharePlayContentFromSharedScreenController *)self _deviceHasDaemonSceneThatShouldBeSharedIfPossible])
    {
      LOBYTE(v3) = 1;
    }

    else
    {

      LOBYTE(v3) = SBSIsSystemApertureAvailable();
    }
  }

  return v3;
}

- (BOOL)_canShareDaemonScenes
{
  if (_os_feature_enabled_impl())
  {
    return 0;
  }

  else
  {
    return ![(SBHideSharePlayContentFromSharedScreenController *)self _isCoverSheetVisible];
  }
}

- (BOOL)_deviceHasDaemonSceneThatShouldBeSharedIfPossible
{
  v3 = [SBApp mousePointerManager];
  v4 = ([v3 isHardwarePointingDeviceAttached] & 1) != 0 || self->_numberOfActiveDragSessions > 0;

  return v4;
}

- (void)mousePointerManager:(id)a3 hardwarePointingDeviceAttachedDidChange:(BOOL)a4
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __112__SBHideSharePlayContentFromSharedScreenController_mousePointerManager_hardwarePointingDeviceAttachedDidChange___block_invoke;
  v4[3] = &unk_2783A8C68;
  objc_copyWeak(&v5, &location);
  dispatch_async(MEMORY[0x277D85CD0], v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __112__SBHideSharePlayContentFromSharedScreenController_mousePointerManager_hardwarePointingDeviceAttachedDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resolveHidingBehavior];
}

- (void)transientOverlayPresentationManager:(id)a3 willPresentViewController:(id)a4
{
  [(SBHideSharePlayContentFromSharedScreenController *)self _startTrackingTransientOverlayViewController:a4];

  [(SBHideSharePlayContentFromSharedScreenController *)self _resolveHidingBehavior];
}

- (void)transientOverlayPresentationManager:(id)a3 didDismissViewController:(id)a4 wasTopmostPresentation:(BOOL)a5
{
  [(SBHideSharePlayContentFromSharedScreenController *)self _stopTrackingTransientOverlayViewController:a4];

  [(SBHideSharePlayContentFromSharedScreenController *)self _resolveHidingBehavior];
}

- (void)_startTrackingTransientOverlayViewController:(id)a3
{
  v4 = a3;
  trackedTransientOverlays = self->_trackedTransientOverlays;
  v8 = v4;
  if (!trackedTransientOverlays)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_trackedTransientOverlays;
    self->_trackedTransientOverlays = v6;

    v4 = v8;
    trackedTransientOverlays = self->_trackedTransientOverlays;
  }

  [(NSHashTable *)trackedTransientOverlays addObject:v4];
  [(SBHideSharePlayContentFromSharedScreenController *)self _resolveHidingBehavior];
}

- (void)_stopTrackingTransientOverlayViewController:(id)a3
{
  v4 = a3;
  [(SBHideSharePlayContentFromSharedScreenController *)self _stopHidingViewControllerFromClonedDisplaysIfNeeded:v4];
  [(NSHashTable *)self->_trackedTransientOverlays removeObject:v4];

  if (![(NSHashTable *)self->_trackedTransientOverlays count])
  {
    trackedTransientOverlays = self->_trackedTransientOverlays;
    self->_trackedTransientOverlays = 0;
  }

  [(SBHideSharePlayContentFromSharedScreenController *)self _resolveHidingBehavior];
}

- (void)acquireHideSharePlayContentFromClonedDisplaysAssertionForReason:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBHideSharePlayContentFromSharedScreenController.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"reason != nil"}];
}

- (void)_pipViewControllerToHide
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBHideSharePlayContentFromSharedScreenController.m" lineNumber:389 description:@"Instance should respond to protocol method"];
}

@end