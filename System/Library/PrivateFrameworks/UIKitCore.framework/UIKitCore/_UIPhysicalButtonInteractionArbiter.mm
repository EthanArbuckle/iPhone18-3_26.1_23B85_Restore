@interface _UIPhysicalButtonInteractionArbiter
- (UIScene)_scene;
- (_UIPhysicalButtonInteractionArbiter)init;
- (_UIPhysicalButtonInteractionArbiter)initWithScene:(id)scene;
- (_UIPhysicalButtonInteractionArbiterSystemShellDelegate)systemShellDelegate;
- (id)_actionRespondersForScene:(id)scene;
- (id)_gestureViewsForWindow:(uint64_t)window physicalButton:;
- (id)_mostActiveViewServiceSessionForScene;
- (id)_performConfigurationResolutionForRequiredWindow:(uint64_t)window;
- (id)_registerPhysicalButtonInteraction:(uint64_t)interaction;
- (id)_registerViewServiceObserver:(id *)observer;
- (id)configurationResolutionContextForSystemShellWindow:(id)window;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)localEventDeferringTargetWindowForEnvironment:(id)environment;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (uint64_t)_configureDeferredResolutionDisplayLinkForScreen:(uint64_t)result;
- (void)_addSystemShellWindowRequiringResolutionIfNeeded:(uint64_t)needed;
- (void)_beginObservingWindowVisibilityChanges;
- (void)_beginTrackingWindow:(uint64_t)window;
- (void)_createEvaluatedObjectCacheIfNeeded;
- (void)_deferredResolutionDisplayLinkTicked:(id)ticked;
- (void)_enumerateAndValidateInteractionsInWindow:(uint64_t)window withRequiredBehaviorMask:(uint64_t)mask configurationAcceptanceEvaluator:(uint64_t)evaluator interactionAcceptanceHandler:(uint64_t)handler shouldStopEvaluator:;
- (void)_handleBSAction:(uint64_t)action;
- (void)_mostActiveViewServiceSessionDidChange:(id)change;
- (void)_removeAllSystemShellReferencesForDetachingWindow:(uint64_t)window;
- (void)_resetWindowLevelObservation;
- (void)_resolveConfigurations;
- (void)_sceneWillInvalidate:(id)invalidate;
- (void)_scheduleDeferredConfigurationResolution;
- (void)_setNeedsResolutionOfPhysicalButtonConfigurationsInSceneForReason:(uint64_t)reason;
- (void)_setNeedsResolutionOfPhysicalButtonConfigurationsInWindow:(unint64_t)window forReason:;
- (void)_setResolutionStrategy:(int)strategy forInitialization:;
- (void)_unregisterAllPhysicalButtonInteractionsForDetachingWindow:(uint64_t)window;
- (void)_windowHostingScene:(id)scene willMoveFromScreen:(id)screen toScreen:(id)toScreen;
- (void)_windowVisibilityDidChange:(id)change;
- (void)dealloc;
- (void)setNeedsResolutionOfPhysicalButtonConfigurationsForSystemShellDelegate:(id)delegate;
- (void)setSystemShellDelegate:(id)delegate;
- (void)window:(id)window changedFromLevel:(double)level toLevel:(double)toLevel;
@end

@implementation _UIPhysicalButtonInteractionArbiter

- (void)_scheduleDeferredConfigurationResolution
{
  WeakRetained = objc_loadWeakRetained((self + 48));
  _screen = [WeakRetained _screen];
  [(_UIPhysicalButtonInteractionArbiter *)self _configureDeferredResolutionDisplayLinkForScreen:_screen];

  *(self + 40) |= 2u;
}

- (void)_resolveConfigurations
{
  v282 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  selfCopy = self;
  *(self + 40) &= 0xF9u;
  [*(self + 104) setPaused:1];
  _scene = [selfCopy _scene];
  if (!_scene || (v3 = _scene, v4 = [_scene _hasInvalidated], v3, v4))
  {
    *(selfCopy + 40) &= ~0x20u;
    v5 = *(selfCopy + 120);

    [v5 removeAllObjects];
    return;
  }

  v6 = *(selfCopy + 40);
  if ((v6 & 8) != 0)
  {
    *(selfCopy + 40) = v6 | 0x10;
    return;
  }

  v7 = *(selfCopy + 112);
  location = (selfCopy + 112);
  *(selfCopy + 40) = v6 | 8;
  v190 = v7;
  configurations = [v190 configurations];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("PhysicalButtonInteraction", &unk_1ED4A09C0);
  if (*CategoryCachedImpl)
  {
    v53 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349314;
      v277 = selfCopy;
      v278 = 2112;
      v279 = configurations;
      _os_log_impl(&dword_188A29000, v53, OS_LOG_TYPE_ERROR, "[%{public}p] Arbiter: resolving configurations: current: %@", buf, 0x16u);
    }
  }

  kdebug_trace();
  v10 = *(selfCopy + 40);
  WeakRetained = objc_loadWeakRetained((selfCopy + 56));
  v232 = selfCopy;
  if (!WeakRetained)
  {
    LODWORD(v13) = 0;
    goto LABEL_49;
  }

  v12 = WeakRetained;
  v13 = [*(selfCopy + 120) count];

  if (!v13)
  {
    goto LABEL_49;
  }

  v219 = v10;
  v195 = configurations;
  setRepresentation = [*(selfCopy + 120) setRepresentation];
  *(selfCopy + 40) &= ~0x20u;
  [*(selfCopy + 120) removeAllObjects];
  v249 = 0u;
  v250 = 0u;
  v247 = 0u;
  v248 = 0u;
  obj = setRepresentation;
  v15 = [obj countByEnumeratingWithState:&v247 objects:v258 count:16];
  if (!v15)
  {
    v17 = 0;
    goto LABEL_48;
  }

  v16 = v15;
  v17 = 0;
  v228 = *v248;
  do
  {
    v18 = 0;
    do
    {
      if (*v248 != v228)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v247 + 1) + 8 * v18);
      v20 = [*(selfCopy + 128) objectForKey:v19];
      configurations2 = [v20 configurations];
      v22 = __UILogGetCategoryCachedImpl("PhysicalButtonInteraction", &unk_1ED4A09C8);
      if (*v22)
      {
        v35 = *(v22 + 8);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          if (v19)
          {
            v36 = MEMORY[0x1E696AEC0];
            v37 = v19;
            v38 = objc_opt_class();
            v39 = NSStringFromClass(v38);
            v40 = [v36 stringWithFormat:@"<%@: %p>", v39, v37];

            selfCopy = v232;
          }

          else
          {
            v40 = @"(nil)";
          }

          *buf = 134349570;
          v277 = selfCopy;
          v278 = 2112;
          v279 = v40;
          v280 = 2112;
          v281 = configurations2;
          _os_log_impl(&dword_188A29000, v35, OS_LOG_TYPE_ERROR, "[%{public}p] Arbiter: system shell resolving configurations for window: %@; current: %@", buf, 0x20u);
        }
      }

      v23 = [(_UIPhysicalButtonInteractionArbiter *)selfCopy _performConfigurationResolutionForRequiredWindow:v19];
      configurations3 = [v23 configurations];
      v25 = *(selfCopy + 128);
      if (!v25)
      {
        v26 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:517 valueOptions:512];
        v27 = *(selfCopy + 128);
        *(selfCopy + 128) = v26;

        v25 = *(selfCopy + 128);
      }

      [v25 setObject:v23 forKey:v19];
      v28 = __UILogGetCategoryCachedImpl("PhysicalButtonInteraction", &unk_1ED4A09D0);
      if (*v28)
      {
        v41 = *(v28 + 8);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          log = v41;
          if (v19)
          {
            v42 = MEMORY[0x1E696AEC0];
            v43 = v19;
            v44 = objc_opt_class();
            v207 = NSStringFromClass(v44);
            v45 = [v42 stringWithFormat:@"<%@: %p>", v207, v43];

            selfCopy = v232;
          }

          else
          {
            v45 = @"(nil)";
          }

          *buf = 134349570;
          v277 = selfCopy;
          v278 = 2112;
          v279 = v45;
          v280 = 2112;
          v281 = configurations3;
          _os_log_impl(&dword_188A29000, log, OS_LOG_TYPE_ERROR, "[%{public}p] Arbiter: system shell resolving configurations for window: %@; new: %@", buf, 0x20u);

          v41 = log;
        }
      }

      v29 = configurations2;
      v30 = configurations3;
      v31 = v30;
      if (v29 == v30)
      {
        v33 = v30;
        v34 = v29;
        goto LABEL_28;
      }

      if (!v29 || !v30)
      {

LABEL_27:
        v34 = objc_loadWeakRetained((v232 + 56));
        v33 = [v23 copy];
        [v34 physicalButtonInteractionArbiter:v232 resolvedConfigurationsInContext:v33 forWindow:v19];
        v17 = 1;
LABEL_28:

        goto LABEL_29;
      }

      v32 = [v29 isEqual:v30];

      if ((v32 & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_29:

      ++v18;
      selfCopy = v232;
    }

    while (v16 != v18);
    v46 = [obj countByEnumeratingWithState:&v247 objects:v258 count:16];
    v16 = v46;
  }

  while (v46);
LABEL_48:
  LODWORD(v13) = v17;

  configurations = v195;
  v10 = v219;
LABEL_49:
  v47 = objc_loadWeakRetained((selfCopy + 56));

  if (v47)
  {
    if ((v13 | (v10 >> 5)))
    {
      v48 = objc_loadWeakRetained((selfCopy + 56));
      v49 = objc_loadWeakRetained((selfCopy + 48));
      v50 = [v48 physicalButtonInteractionArbiter:selfCopy resolutionContextForScene:v49];

      if (v50)
      {
        v51 = [v50 copy];

        goto LABEL_59;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v55 = objc_loadWeakRetained((selfCopy + 56));
      [currentHandler handleFailureInMethod:sel__resolveConfigurations object:selfCopy file:@"_UIPhysicalButtonInteractionArbiter.m" lineNumber:1419 description:{@"Nil resolution context from system shell delegate: %@", v55}];
    }

    v52 = objc_opt_new();
  }

  else
  {
    v52 = [(_UIPhysicalButtonInteractionArbiter *)selfCopy _performConfigurationResolutionForRequiredWindow:?];
  }

  v51 = v52;
LABEL_59:
  v56 = objc_loadWeakRetained((selfCopy + 48));
  currentHandler2 = v56;
  v208 = v51;
  if (!v51)
  {

    v92 = 0;
    goto LABEL_206;
  }

  _count = [v51[1] _count];
  if (_count != [v51[2] count])
  {
    v180 = MEMORY[0x1E696ABC0];
    v274 = *MEMORY[0x1E696A588];
    v216 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Count of configurations and configurationToInteractionMap do not match"];
    v275 = v216;
    v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v275 forKeys:&v274 count:1];
    v90 = [v180 errorWithDomain:@"_UIPhysicalButtonConfigurationResolutionErrorDomain" code:0 userInfo:v64];
    v181 = v90;
LABEL_99:

    v91 = 0;
LABEL_100:

    v92 = v90;
    if (v91)
    {
      goto LABEL_101;
    }

LABEL_206:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:sel__resolveConfigurations object:selfCopy file:@"_UIPhysicalButtonInteractionArbiter.m" lineNumber:1429 description:{@"Invalid resolution context for reason: %@", v92}];
    v51 = 0;
    goto LABEL_93;
  }

  if (_count)
  {
    v273 = 0u;
    v272 = 0u;
    memset(v271, 0, sizeof(v271));
    v216 = v51[1];
    v220 = [v216 countByEnumeratingWithState:v271 objects:buf count:16];
    if (!v220)
    {
      v90 = 0;
      v91 = 1;
      goto LABEL_100;
    }

    v196 = configurations;
    v200 = 0;
    v59 = 0;
    v60 = **&v271[16];
    loga = *MEMORY[0x1E696A588];
    v198 = 1;
    v203 = **&v271[16];
    v205 = currentHandler2;
LABEL_64:
    v61 = 0;
    while (1)
    {
      if (**&v271[16] != v60)
      {
        objc_enumerationMutation(v216);
      }

      v62 = *(*&v271[8] + 8 * v61);
      v63 = [v51[2] objectForKey:v62];
      if (!v63)
      {
        break;
      }

      v64 = v63;
      obja = v61;
      view = [v63 view];
      _window = [view _window];
      _eventRoutingScene = [_window _eventRoutingScene];

      v229 = _eventRoutingScene;
      if (_eventRoutingScene != currentHandler2)
      {
        v93 = MEMORY[0x1E696ABC0];
        v267 = loga;
        v94 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid interaction from wrong scene in configurationToInteractionMap: %@", v64];
        v268 = v94;
        v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v268 forKeys:&v267 count:1];
        v96 = v93;
        v97 = 2;
        goto LABEL_97;
      }

      if (([v64 _isEnabled] & 1) == 0)
      {
        v98 = MEMORY[0x1E696ABC0];
        v265 = loga;
        v94 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid disabled interaction in configurationToInteractionMap: %@", v64];
        v266 = v94;
        v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v266 forKeys:&v265 count:1];
        v96 = v98;
        v97 = 3;
LABEL_97:
        v90 = [v96 errorWithDomain:@"_UIPhysicalButtonConfigurationResolutionErrorDomain" code:v97 userInfo:v95];
        v99 = v90;

LABEL_98:
        configurations = v196;
        goto LABEL_99;
      }

      _button = [v62 _button];
      v69 = 1 << _button;
      if (_button >= 8)
      {
        v69 = 0;
      }

      if ((v69 & ~v59) != 0)
      {
        v70 = _button;
        v59 |= v69;
        v71 = _UIPhysicalButtonRequiredButtonsForButton([v62 _button]);
        v251 = 0u;
        v252 = 0u;
        v253 = 0u;
        v254 = 0u;
        v72 = v71;
        v73 = [v72 countByEnumeratingWithState:&v251 objects:&v261 count:16];
        if (v73)
        {
          v74 = v73;
          v75 = *v252;
          while (2)
          {
            for (i = 0; i != v74; ++i)
            {
              if (*v252 != v75)
              {
                objc_enumerationMutation(v72);
              }

              unsignedIntegerValue = [*(*(&v251 + 1) + 8 * i) unsignedIntegerValue];
              if (unsignedIntegerValue != v70)
              {
                v78 = unsignedIntegerValue;
                v79 = [v208[1] _configurationForButton:unsignedIntegerValue];
                v80 = [v208[2] objectForKey:v79];
                v81 = v80;
                if (v64 != v80)
                {
                  v83 = MEMORY[0x1E696ABC0];
                  v259 = loga;
                  v84 = MEMORY[0x1E696AEC0];
                  v85 = _NSStringFromUIPhysicalButton(v70);
                  v86 = _NSStringFromUIPhysicalButton(v78);
                  v87 = [v84 stringWithFormat:@"Configurations for required matching buttons do not have the same interaction: button: %@ requiredMatchingButton: %@", v85, v86];;
                  v260 = v87;
                  v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v260 forKeys:&v259 count:1];
                  v200 = [v83 errorWithDomain:@"_UIPhysicalButtonConfigurationResolutionErrorDomain" code:4 userInfo:v88];
                  v89 = v200;

                  v198 = 0;
                  goto LABEL_87;
                }

                v82 = 1 << v78;
                if (v78 >= 8)
                {
                  v82 = 0;
                }

                v59 |= v82;
              }
            }

            v74 = [v72 countByEnumeratingWithState:&v251 objects:&v261 count:16];
            if (v74)
            {
              continue;
            }

            break;
          }

LABEL_87:
          currentHandler2 = v205;
          v51 = v208;
          v60 = v203;
        }

        selfCopy = v232;
      }

      v61 = obja + 1;
      if (obja + 1 == v220)
      {
        v220 = [v216 countByEnumeratingWithState:v271 objects:buf count:16];
        if (v220)
        {
          goto LABEL_64;
        }

        configurations = v196;
        v90 = v200;
        v91 = v198;
        goto LABEL_100;
      }
    }

    v177 = MEMORY[0x1E696ABC0];
    v269 = loga;
    v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No interaction present in configurationToInteractionMap for configuration found in set: %@", v62];
    v270 = v64;
    v178 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v270 forKeys:&v269 count:1];
    v90 = [v177 errorWithDomain:@"_UIPhysicalButtonConfigurationResolutionErrorDomain" code:1 userInfo:v178];
    v179 = v90;

    goto LABEL_98;
  }

  v92 = 0;
LABEL_93:

LABEL_101:
  objc_storeStrong(location, v51);
  configurations4 = [*location configurations];
  v101 = __UILogGetCategoryCachedImpl("PhysicalButtonInteraction", &unk_1ED4A09D8);
  if (*v101)
  {
    v182 = *(v101 + 8);
    if (os_log_type_enabled(v182, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349314;
      v277 = selfCopy;
      v278 = 2112;
      v279 = configurations4;
      _os_log_impl(&dword_188A29000, v182, OS_LOG_TYPE_ERROR, "[%{public}p] Arbiter: resolving configurations: new: %@", buf, 0x16u);
    }
  }

  v102 = configurations;
  v103 = configurations4;
  v104 = v103;
  configurationToInteractionMap2 = v103;
  configurationToInteractionMap = v102;
  if (v102 == v103)
  {
    goto LABEL_193;
  }

  if (!v102 || !v103)
  {

LABEL_108:
    v188 = v102;
    v189 = v92;
    configurationToInteractionMap = [*location configurationToInteractionMap];
    v243 = 0u;
    v244 = 0u;
    v245 = 0u;
    v246 = 0u;
    v217 = _UIPhysicalButtonAllBKSHIDEventDeferringEnvironments();
    v230 = [v217 countByEnumeratingWithState:&v243 objects:v257 count:16];
    if (v230)
    {
      objb = *v244;
      do
      {
        for (j = 0; j != v230; ++j)
        {
          if (*v244 != objb)
          {
            objc_enumerationMutation(v217);
          }

          v109 = *(*(&v243 + 1) + 8 * j);
          v110 = _UIPhysicalButtonsForBKSHIDEventDeferringEnvironment(v109);
          v239 = 0u;
          v240 = 0u;
          v241 = 0u;
          v242 = 0u;
          v111 = [v110 countByEnumeratingWithState:&v239 objects:v256 count:16];
          if (v111)
          {
            v112 = v111;
            v221 = v109;
            v113 = 0;
            v114 = *v240;
            do
            {
              for (k = 0; k != v112; ++k)
              {
                if (*v240 != v114)
                {
                  objc_enumerationMutation(v110);
                }

                v116 = -[__CFString _configurationForButton:](v104, "_configurationForButton:", [*(*(&v239 + 1) + 8 * k) unsignedIntegerValue]);
                if (v116)
                {
                  v117 = [configurationToInteractionMap objectForKey:v116];
                  v118 = v117;
                  if (v113)
                  {
                    if (v117 != v113)
                    {
                      logc = [MEMORY[0x1E696AAA8] currentHandler];
                      [logc handleFailureInMethod:sel__resolveConfigurations object:"[_UIPhysicalButtonInteractionArbiter _resolveConfigurations]" file:v221 lineNumber:v232 description:?];
                    }
                  }

                  else
                  {
                    v113 = v117;
                  }
                }
              }

              v112 = [v110 countByEnumeratingWithState:&v239 objects:v256 count:16];
            }

            while (v112);
          }

          else
          {
            v113 = 0;
          }
        }

        v230 = [v217 countByEnumeratingWithState:&v243 objects:v257 count:16];
      }

      while (v230);
    }

    v119 = *location;
    configurations5 = [v119 configurations];
    v102 = v188;
    v121 = v188;
    v122 = configurations5;
    v123 = v122;
    if (v122 == v121)
    {
      v125 = v122;
      v206 = v121;
      selfCopy = v232;
      v92 = v189;
    }

    else
    {
      selfCopy = v232;
      if (v188 && v122)
      {
        v124 = [(__CFString *)v121 isEqual:v122];

        v92 = v189;
        if (v124)
        {
          goto LABEL_178;
        }
      }

      else
      {

        v92 = v189;
      }

      v126 = objc_loadWeakRetained((v232 + 48));
      _eventDeferringManager = [v126 _eventDeferringManager];

      v206 = _eventDeferringManager;
      if (!_eventDeferringManager)
      {
LABEL_177:

LABEL_178:
        v166 = *(selfCopy + 64);
        if (!v166)
        {
          v167 = objc_loadWeakRetained((selfCopy + 48));
          v237[0] = MEMORY[0x1E69E9820];
          v237[1] = 3221225472;
          v237[2] = __61___UIPhysicalButtonInteractionArbiter__resolveConfigurations__block_invoke;
          v237[3] = &unk_1E70F44D8;
          v238 = v104;
          [v167 _updateUIClientSettingsWithBlock:v237];

          v166 = *(selfCopy + 64);
        }

        if (v166 != 1)
        {
          goto LABEL_194;
        }

        configurationToInteractionMap2 = [*(selfCopy + 112) configurationToInteractionMap];
        v233 = 0u;
        v234 = 0u;
        v235 = 0u;
        v236 = 0u;
        v168 = *(selfCopy + 144);
        v169 = [v168 countByEnumeratingWithState:&v233 objects:v255 count:16];
        if (v169)
        {
          v170 = v169;
          v171 = *v234;
          do
          {
            v172 = 0;
            do
            {
              if (*v234 != v171)
              {
                objc_enumerationMutation(v168);
              }

              v173 = *(*(&v233 + 1) + 8 * v172);
              v174 = __UILogGetCategoryCachedImpl("PhysicalButtonInteraction", &unk_1ED4A09E0);
              if (*v174)
              {
                objd = *(v174 + 8);
                if (os_log_type_enabled(objd, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134349314;
                  v277 = v232;
                  v278 = 2112;
                  v279 = v173;
                  _os_log_impl(&dword_188A29000, objd, OS_LOG_TYPE_ERROR, "[%{public}p] Arbiter: notifying view service observer of resolving configurations: %@", buf, 0x16u);
                }
              }

              [(__CFString *)v173 _physicalButtonInteractionArbiter:v232 didUpdateResolvedConfigurations:configurationToInteractionMap2 inActiveViewServiceSession:*(v232 + 136)];
              ++v172;
            }

            while (v170 != v172);
            v175 = [v168 countByEnumeratingWithState:&v233 objects:v255 count:16];
            v170 = v175;
          }

          while (v175);
        }

        selfCopy = v232;
        v102 = v188;
        v92 = v189;
LABEL_193:

LABEL_194:
        goto LABEL_195;
      }

      v193 = v121;
      v211 = v123;
      v128 = __UILogGetCategoryCachedImpl("PhysicalButtonInteraction", &unk_1ED4A09B0);
      if (*v128)
      {
        v183 = *(v128 + 8);
        if (os_log_type_enabled(v183, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349056;
          v277 = v232;
          _os_log_impl(&dword_188A29000, v183, OS_LOG_TYPE_ERROR, "[%{public}p] Arbiter: handling event deferring updates for change in resolved configurations", buf, 0xCu);
        }
      }

      mEMORY[0x1E698E3B0] = [MEMORY[0x1E698E3B0] sharedInstance];
      v130 = MEMORY[0x1E696AEC0];
      v131 = v232;
      v132 = objc_opt_class();
      v133 = NSStringFromClass(v132);
      v131 = [v130 stringWithFormat:@"<%@: %p>", v133, v131];

      v135 = v130;
      v136 = v131;
      v134 = [v135 stringWithFormat:@"%@: updating physical button event deferring rules", v131];

      v186 = v134;
      v187 = mEMORY[0x1E698E3B0];
      v185 = [mEMORY[0x1E698E3B0] transactionAssertionWithReason:v134];
      v261 = 0u;
      v262 = 0u;
      v263 = 0u;
      v264 = 0u;
      v204 = _UIPhysicalButtonAllBKSHIDEventDeferringEnvironments();
      v218 = [v204 countByEnumeratingWithState:&v261 objects:buf count:16];
      if (v218)
      {
        logb = *v262;
        v199 = v119;
        v222 = v131;
        do
        {
          for (m = 0; m != v218; ++m)
          {
            if (*v262 != logb)
            {
              objc_enumerationMutation(v204);
            }

            v139 = *(*(&v261 + 1) + 8 * m);
            v140 = _UIPhysicalButtonsForBKSHIDEventDeferringEnvironment(v139);
            firstObject = [v140 firstObject];
            v142 = firstObject;
            if (firstObject)
            {
              unsignedIntegerValue2 = [firstObject unsignedIntegerValue];
              v144 = [v136[19] objectForKey:v139];
              if (v144)
              {
                objc = [(_UIEventDeferringManager *)v206 currentLocalDeferringTargetWindowMatchingEnvironment:v139 deferringToken:v144];
              }

              else
              {
                objc = 0;
              }

              configurationToInteractionMap3 = [v119 configurationToInteractionMap];
              v231 = _UIPhysicalButtonInteractionArbiterTargetWindowForButton(v211, configurationToInteractionMap3);

              if (v144)
              {
                v136 = v222;
                v146 = objc;
                v147 = (objc == 0) & ~v144[24];
              }

              else
              {
                v147 = 0;
                v136 = v222;
                v146 = objc;
              }

              if (v146 != v231 || v147 != 0)
              {
                locationa = [v136[19] objectForKey:v139];
                if (locationa)
                {
                  v201 = [(__CFString *)v193 _configurationForButton:unsignedIntegerValue2];
                  v149 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%p]: end %@ event deferring for generation: %llu", v136, v139, objc_msgSend(v201, "_generation")];
                  v150 = locationa[2];
                  if (v150)
                  {
                    v150[2](v150, locationa, v149);
                    v151 = locationa[2];
                    locationa[2] = 0;
                  }

                  [v222[19] removeObjectForKey:v139];

                  v136 = v222;
                  v119 = v199;
                }

                if (v231)
                {
                  v152 = [(__CFString *)v211 _configurationForButton:unsignedIntegerValue2];
                  v153 = MEMORY[0x1E696AEC0];
                  v202 = v152;
                  _generation = [v152 _generation];
                  v154 = v153;
                  v136 = v222;
                  v184 = [v154 stringWithFormat:@"[%p]: begin %@ event deferring for generation: %llu", v222, v139, _generation];
                  v194 = [MEMORY[0x1E695DFD8] setWithObject:v139];
                  v197 = v184;
                  v156 = [(_UIEventDeferringManager *)v206 beginLocalEventDeferringInEnvironments:v194 forOwningInterfaceElement:v222 withReason:v184];
                  if (v156)
                  {
                    v157 = v222[19];
                    if (!v157)
                    {
                      v158 = objc_opt_new();
                      v159 = v222[19];
                      v222[19] = v158;

                      v157 = v222[19];
                    }

                    [v157 setObject:v156 forKey:v139];
                  }

                  else
                  {
                    v160 = *(__UILogGetCategoryCachedImpl("PhysicalButtonInteraction", &unk_1ED4A09B8) + 8);
                    if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
                    {
                      v192 = v160;
                      v161 = v202;
                      if (v161)
                      {
                        v162 = MEMORY[0x1E696AEC0];
                        v163 = objc_opt_class();
                        v191 = NSStringFromClass(v163);
                        v161 = [v162 stringWithFormat:@"<%@: %p>", v191, v161];
                      }

                      else
                      {
                        v161 = @"(nil)";
                      }

                      *v271 = 134349570;
                      *&v271[4] = v232;
                      *&v271[12] = 2112;
                      *&v271[14] = v139;
                      *&v271[22] = 2112;
                      v165 = v161;
                      *&v271[24] = v161;
                      v160 = v192;
                      _os_log_impl(&dword_188A29000, v192, OS_LOG_TYPE_ERROR, "[%{public}p] Arbiter: failed to begin %@ event deferring for configuration: %@", v271, 0x20u);

                      v136 = v222;
                    }
                  }

                  v119 = v199;
                }
              }

              selfCopy = v232;
            }
          }

          v218 = [v204 countByEnumeratingWithState:&v261 objects:buf count:16];
        }

        while (v218);
      }

      [v185 invalidate];
      v102 = v188;
      v92 = v189;
      v123 = v211;
      v125 = v187;
    }

    goto LABEL_177;
  }

  v107 = [(__CFString *)v102 isEqual:v103];

  if ((v107 & 1) == 0)
  {
    goto LABEL_108;
  }

LABEL_195:

  v176 = *(selfCopy + 40);
  *(selfCopy + 40) = v176 & 0xE7;
  if ((v176 & 0x10) != 0)
  {
    [(_UIPhysicalButtonInteractionArbiter *)selfCopy _scheduleDeferredConfigurationResolution];
    *(selfCopy + 40) |= 4u;
  }
}

- (void)_beginObservingWindowVisibilityChanges
{
  if (self)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__windowVisibilityDidChange_ name:@"UIWindowDidBecomeVisibleNotification" object:0];
    [defaultCenter addObserver:self selector:sel__windowVisibilityDidChange_ name:@"UIWindowDidBecomeHiddenNotification" object:0];
  }
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (void)_createEvaluatedObjectCacheIfNeeded
{
  if (!*(val + 9))
  {
    objc_initWeak(&location, val);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __74___UIPhysicalButtonInteractionArbiter__createEvaluatedObjectCacheIfNeeded__block_invoke;
    v6[3] = &unk_1E7120C88;
    objc_copyWeak(&v7, &location);
    v2 = _Block_copy(v6);
    v3 = *(val + 2);
    *(val + 2) = v2;

    v4 = [[_UIEvaluatedObjectCache alloc] initWithSortComparator:0 evaluationBlock:?];
    v5 = *(val + 9);
    *(val + 9) = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (_UIPhysicalButtonInteractionArbiter)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonInteractionArbiter.m" lineNumber:568 description:{@"%s: init is not allowed on %@", "-[_UIPhysicalButtonInteractionArbiter init]", objc_opt_class()}];

  return 0;
}

- (void)dealloc
{
  v6[4] = *MEMORY[0x1E69E9840];
  [(CADisplayLink *)self->_deferredConfigurationResolutionDisplayLink invalidate];
  [(BSInvalidatable *)self->_stateCaptureToken invalidate];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"UIWindowFirstResponderDidChangeNotification";
  v6[1] = @"UIWindowDidBecomeVisibleNotification";
  v6[2] = @"UIWindowDidBecomeHiddenNotification";
  v6[3] = @"_UIActiveViewServiceSessionDidChangeNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v4 names:?];

  v5.receiver = self;
  v5.super_class = _UIPhysicalButtonInteractionArbiter;
  [(_UIPhysicalButtonInteractionArbiter *)&v5 dealloc];
}

- (_UIPhysicalButtonInteractionArbiter)initWithScene:(id)scene
{
  v39 = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = _UIPhysicalButtonInteractionArbiter;
  v4 = [(_UIPhysicalButtonInteractionArbiter *)&v31 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_scene, scene);
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("PhysicalButtonInteraction", &initWithScene____s_category_1);
    if (*CategoryCachedImpl)
    {
      v24 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        if (scene)
        {
          v25 = MEMORY[0x1E696AEC0];
          sceneCopy = scene;
          v27 = objc_opt_class();
          v28 = NSStringFromClass(v27);
          sceneCopy = [v25 stringWithFormat:@"<%@: %p>", v28, sceneCopy];
        }

        else
        {
          sceneCopy = @"(nil)";
        }

        *location = 134349314;
        *&location[4] = v5;
        v37 = 2112;
        v38 = sceneCopy;
        _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "[%{public}p] Arbiter: initializing with scene: %@", location, 0x16u);
      }
    }

    WeakRetained = objc_loadWeakRetained((v5 + 48));
    _FBSScene = [WeakRetained _FBSScene];
    v9 = _FBSScene == 0;

    [(_UIPhysicalButtonInteractionArbiter *)v5 _setResolutionStrategy:v9 forInitialization:1];
    v10 = objc_loadWeakRetained((v5 + 48));
    _eventDeferringManager = [v10 _eventDeferringManager];

    if (_eventDeferringManager && (*(v5 + 40) & 1) == 0)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v12 = _UIPhysicalButtonAllBKSHIDEventDeferringEnvironments();
      v13 = [v12 countByEnumeratingWithState:&v32 objects:location count:16];
      if (v13)
      {
        v14 = *v33;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v33 != v14)
            {
              objc_enumerationMutation(v12);
            }

            [(_UIEventDeferringManager *)_eventDeferringManager registerTargetProvider:v5 forEnvironment:*(*(&v32 + 1) + 8 * i)];
          }

          v13 = [v12 countByEnumeratingWithState:&v32 objects:location count:16];
        }

        while (v13);
      }

      *(v5 + 40) |= 1u;
    }

    objc_initWeak(location, v5);
    v16 = MEMORY[0x1E696AEC0];
    v17 = objc_loadWeakRetained((v5 + 48));
    _sceneIdentifier = [v17 _sceneIdentifier];
    v19 = [v16 stringWithFormat:@"UIKit - PhysicalButtonInteractionArbiter - %@", _sceneIdentifier];

    v20 = MEMORY[0x1E69E96A0];
    objc_copyWeak(&v30, location);
    v21 = BSLogAddStateCaptureBlockWithTitle();
    v22 = *(v5 + 32);
    *(v5 + 32) = v21;

    objc_destroyWeak(&v30);
    objc_destroyWeak(location);
  }

  return v5;
}

- (void)_setResolutionStrategy:(int)strategy forInitialization:
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = self[8];
  if (v3 != a2 || strategy != 0)
  {
    self[8] = a2;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    if (strategy)
    {
      [(_UIPhysicalButtonInteractionArbiter *)self _beginObservingWindowVisibilityChanges];
    }

    if (v3 == 1)
    {
      [defaultCenter removeObserver:self name:@"_UIActiveViewServiceSessionDidChangeNotification" object:0];
      v9 = self[17];
      self[17] = 0;

      v10 = self[1];
      self[1] = 0;
    }

    if (a2 == 1)
    {
      [defaultCenter addObserver:self selector:sel__mostActiveViewServiceSessionDidChange_ name:@"_UIActiveViewServiceSessionDidChangeNotification" object:0];
      if (!self[17])
      {
        _mostActiveViewServiceSessionForScene = [(_UIPhysicalButtonInteractionArbiter *)self _mostActiveViewServiceSessionForScene];
        v12 = self[17];
        self[17] = _mostActiveViewServiceSessionForScene;

        v13 = *(__UILogGetCategoryCachedImpl("PhysicalButtonInteraction", &_setResolutionStrategy_forInitialization____s_category) + 8);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = self[8];
          v15 = &stru_1EFB14550;
          if (v14 == 1)
          {
            v15 = @"viewServices";
          }

          if (v14)
          {
            v16 = v15;
          }

          else
          {
            v16 = @"sceneClientSettings";
          }

          v17 = v16;
          v18 = self[17];
          v19 = v13;
          succinctDescription = [v18 succinctDescription];
          *buf = 134349570;
          selfCopy = self;
          v27 = 2112;
          v28 = v17;
          v29 = 2112;
          v30 = succinctDescription;
          _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}p] Arbiter: set %@ strategy; most active view service session: %@", buf, 0x20u);
        }
      }

      objc_initWeak(buf, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __80___UIPhysicalButtonInteractionArbiter__setResolutionStrategy_forInitialization___block_invoke;
      aBlock[3] = &unk_1E7120C88;
      objc_copyWeak(&v24, buf);
      v21 = _Block_copy(aBlock);
      v22 = self[1];
      self[1] = v21;

      objc_destroyWeak(&v24);
      objc_destroyWeak(buf);
    }
  }
}

- (id)_actionRespondersForScene:(id)scene
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  return v4;
}

- (void)_windowHostingScene:(id)scene willMoveFromScreen:(id)screen toScreen:(id)toScreen
{
  arbiterFlags = self->_arbiterFlags;
  [(CADisplayLink *)self->_deferredConfigurationResolutionDisplayLink invalidate:scene];
  deferredConfigurationResolutionDisplayLink = self->_deferredConfigurationResolutionDisplayLink;
  self->_deferredConfigurationResolutionDisplayLink = 0;

  if ((arbiterFlags & 2) != 0)
  {

    [(_UIPhysicalButtonInteractionArbiter *)self _configureDeferredResolutionDisplayLinkForScreen:toScreen];
  }
}

- (uint64_t)_configureDeferredResolutionDisplayLinkForScreen:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 104);
    if (!v3)
    {
      v4 = [a2 displayLinkWithTarget:v2 selector:sel__deferredResolutionDisplayLinkTicked_];
      v5 = *(v2 + 104);
      *(v2 + 104) = v4;

      v6 = *(v2 + 104);
      mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
      [v6 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

      v3 = *(v2 + 104);
    }

    result = [v3 isPaused];
    if (result)
    {
      [*(v2 + 104) setPaused:0];

      return kdebug_trace();
    }
  }

  return result;
}

- (void)_sceneWillInvalidate:(id)invalidate
{
  v48 = *MEMORY[0x1E69E9840];
  if (![invalidate _hasInvalidated])
  {
    return;
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("PhysicalButtonInteraction", &_sceneWillInvalidate____s_category_1);
  if ((*CategoryCachedImpl & 1) == 0)
  {
    if (!self)
    {
      return;
    }

    goto LABEL_4;
  }

  v33 = *(CategoryCachedImpl + 8);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    if (invalidate)
    {
      v34 = MEMORY[0x1E696AEC0];
      invalidateCopy = invalidate;
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      invalidateCopy = [v34 stringWithFormat:@"<%@: %p>", v37, invalidateCopy];
    }

    else
    {
      invalidateCopy = @"(nil)";
    }

    *buf = 134349314;
    selfCopy = self;
    v46 = 2112;
    v47 = invalidateCopy;
    _os_log_impl(&dword_188A29000, v33, OS_LOG_TYPE_ERROR, "[%{public}p] Arbiter: resetting state for invalidating scene: %@", buf, 0x16u);
  }

  if (self)
  {
LABEL_4:
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = self->_eventDeferringTokenByEnvironment;
    v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v40 objects:buf count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v41;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v41 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v40 + 1) + 8 * i);
          v11 = [(NSMutableDictionary *)self->_eventDeferringTokenByEnvironment objectForKey:v10];
          v12 = MEMORY[0x1E696AEC0];
          selfCopy2 = self;
          v14 = objc_opt_class();
          v15 = NSStringFromClass(v14);
          selfCopy2 = [v12 stringWithFormat:@"<%@: %p>", v15, selfCopy2];

          v17 = [v12 stringWithFormat:@"%@: ending %@ event deferring for arbiter reset", selfCopy2, v10];

          [(_UIEventDeferringOwnershipToken *)v11 endEventDeferringWithReason:v17];
        }

        v7 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v40 objects:buf count:16];
      }

      while (v7);
    }

    *&self->_arbiterFlags &= 0xE1u;
    [(CADisplayLink *)self->_deferredConfigurationResolutionDisplayLink invalidate];
    deferredConfigurationResolutionDisplayLink = self->_deferredConfigurationResolutionDisplayLink;
    self->_deferredConfigurationResolutionDisplayLink = 0;

    mostActiveViewServiceSession = self->_mostActiveViewServiceSession;
    self->_mostActiveViewServiceSession = 0;

    viewServiceObservers = self->_viewServiceObservers;
    self->_viewServiceObservers = 0;

    viewServiceValidationBlock = self->_viewServiceValidationBlock;
    self->_viewServiceValidationBlock = 0;

    interactionValidationBlock = self->_interactionValidationBlock;
    self->_interactionValidationBlock = 0;

    [(_UIPhysicalButtonInteractionArbiter *)self _resetWindowLevelObservation];
    countedWindowPointerValues = self->_countedWindowPointerValues;
    self->_countedWindowPointerValues = 0;

    trackedWindowPointers = self->_trackedWindowPointers;
    self->_trackedWindowPointers = 0;

    registeredAndSortedInteractions = self->_registeredAndSortedInteractions;
    self->_registeredAndSortedInteractions = 0;

    systemShellWindowsRequiringResolution = self->_systemShellWindowsRequiringResolution;
    self->_systemShellWindowsRequiringResolution = 0;

    systemShellWindowConfigurationResolutionContexts = self->_systemShellWindowConfigurationResolutionContexts;
    self->_systemShellWindowConfigurationResolutionContexts = 0;

    sceneConfigurationResolutionContext = self->_sceneConfigurationResolutionContext;
    self->_sceneConfigurationResolutionContext = 0;

    uniqueConfigurationGenerationNumbers = self->_uniqueConfigurationGenerationNumbers;
    self->_uniqueConfigurationGenerationNumbers = 0;

    WeakRetained = objc_loadWeakRetained(&self->_scene);
    _FBSScene = [WeakRetained _FBSScene];
    v32 = _FBSScene == 0;

    [(_UIPhysicalButtonInteractionArbiter *)self _setResolutionStrategy:v32 forInitialization:0];
  }
}

- (id)_registerPhysicalButtonInteraction:(uint64_t)interaction
{
  v76 = *MEMORY[0x1E69E9840];
  if (interaction)
  {
    view = [a2 view];
    _window = [view _window];

    _scene = [interaction _scene];
    v4 = _scene;
    if (_scene)
    {
      _hasInvalidated = [_scene _hasInvalidated];

      if ((_hasInvalidated & 1) == 0)
      {
        _windowHostingScene = [_window _windowHostingScene];
        WeakRetained = objc_loadWeakRetained((interaction + 48));

        if (_windowHostingScene == WeakRetained)
        {
          sortedObjects = [(_UIEvaluatedObjectCache *)*(interaction + 72) sortedObjects];
          v9 = [sortedObjects containsObject:a2];

          if (!v9)
          {
            if (!*(interaction + 24))
            {
              v13 = objc_opt_new();
              v14 = *(interaction + 24);
              *(interaction + 24) = v13;
            }

            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            _configurationSet = [a2 _configurationSet];
            v16 = [_configurationSet countByEnumeratingWithState:&v63 objects:v75 count:16];
            if (v16)
            {
              currentHandler2 = 0;
              v17 = *v64;
              do
              {
                for (i = 0; i != v16; ++i)
                {
                  if (*v64 != v17)
                  {
                    objc_enumerationMutation(_configurationSet);
                  }

                  _generation = [*(*(&v63 + 1) + 8 * i) _generation];
                  v61 = 0u;
                  v62 = 0u;
                  v60 = 0u;
                  v59 = 0u;
                  v20 = *(interaction + 24);
                  v21 = [v20 countByEnumeratingWithState:&v59 objects:v74 count:16];
                  if (v21)
                  {
                    v22 = *v60;
                    while (2)
                    {
                      for (j = 0; j != v21; ++j)
                      {
                        if (*v60 != v22)
                        {
                          objc_enumerationMutation(v20);
                        }

                        if ([*(*(&v59 + 1) + 8 * j) unsignedLongLongValue] == _generation)
                        {

                          v40 = objc_opt_new();
                          v57 = 0u;
                          v58 = 0u;
                          v55 = 0u;
                          v56 = 0u;
                          v41 = *(interaction + 24);
                          v42 = [v41 countByEnumeratingWithState:&v55 objects:v73 count:16];
                          if (v42)
                          {
                            v43 = 0;
                            v44 = *v56;
                            do
                            {
                              for (k = 0; k != v42; ++k)
                              {
                                if (*v56 != v44)
                                {
                                  objc_enumerationMutation(v41);
                                }

                                if (v43)
                                {
                                  v46 = @", ";
                                }

                                else
                                {
                                  v46 = &stru_1EFB14550;
                                }

                                [v40 appendFormat:@"%@%llu", v46, objc_msgSend(*(*(&v55 + 1) + 8 * k), "unsignedLongLongValue")];
                                ++v43;
                              }

                              v42 = [v41 countByEnumeratingWithState:&v55 objects:v73 count:16];
                            }

                            while (v42);
                          }

                          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
                          [currentHandler handleFailureInMethod:sel__registerPhysicalButtonInteraction_ object:"-[_UIPhysicalButtonInteractionArbiter _registerPhysicalButtonInteraction:]" file:a2 lineNumber:v40 description:interaction];

                          goto LABEL_48;
                        }
                      }

                      v21 = [v20 countByEnumeratingWithState:&v59 objects:v74 count:16];
                      if (v21)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  if (!currentHandler2)
                  {
                    currentHandler2 = objc_opt_new();
                  }

                  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:_generation];
                  [currentHandler2 addObject:v24];
                }

                v16 = [_configurationSet countByEnumeratingWithState:&v63 objects:v75 count:16];
              }

              while (v16);

              if (currentHandler2)
              {
                [*(interaction + 24) addObjectsFromArray:currentHandler2];
                [(_UIPhysicalButtonInteractionArbiter *)interaction _beginTrackingWindow:_window];
                [(_UIPhysicalButtonInteractionArbiter *)interaction _addSystemShellWindowRequiringResolutionIfNeeded:_window];
                [(_UIPhysicalButtonInteractionArbiter *)interaction _createEvaluatedObjectCacheIfNeeded];
                objc_initWeak(&location, interaction);
                v25 = ++qword_1ED4A0A08;
                v26 = objc_opt_class();
                v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s-%p-%lu", class_getName(v26), a2, v25];
                v28 = MEMORY[0x1E696AEC0];
                interactionCopy = interaction;
                v30 = MEMORY[0x1E696AEC0];
                v31 = objc_opt_class();
                v32 = NSStringFromClass(v31);
                interactionCopy = [v30 stringWithFormat:@"<%@: %p>", v32, interactionCopy];

                v34 = [v28 stringWithFormat:@"Registering interaction with: %@", interactionCopy];

                v35 = objc_alloc(MEMORY[0x1E698E778]);
                v36 = MEMORY[0x1E69E96A0];
                v52[0] = MEMORY[0x1E69E9820];
                v52[1] = 3221225472;
                v52[2] = __74___UIPhysicalButtonInteractionArbiter__registerPhysicalButtonInteraction___block_invoke;
                v52[3] = &unk_1E71030A0;
                objc_copyWeak(&v53, &location);
                v52[4] = a2;
                v37 = [v35 initWithIdentifier:v27 forReason:v34 queue:MEMORY[0x1E69E96A0] invalidationBlock:v52];

                v38 = *(__UILogGetCategoryCachedImpl("PhysicalButtonInteraction", &_MergedGlobals_1285) + 8);
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                {
                  succinctDescription = [a2 succinctDescription];
                  *buf = 134349570;
                  v68 = interactionCopy;
                  v69 = 2112;
                  v70 = succinctDescription;
                  v71 = 2112;
                  v72 = v37;
                  _os_log_impl(&dword_188A29000, v38, OS_LOG_TYPE_DEFAULT, "[%{public}p] Arbiter: registered physical button interaction: %@; with registrationToken: %@", buf, 0x20u);
                }

                [(_UIEvaluatedObjectCache *)*(interaction + 72) addObject:a2];
                [(_UIPhysicalButtonInteractionArbiter *)interactionCopy _resolveConfigurations];
                v11 = v37;
                objc_destroyWeak(&v53);

                objc_destroyWeak(&location);
                goto LABEL_8;
              }
            }

            else
            {
            }

            currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler2 handleFailureInMethod:sel__registerPhysicalButtonInteraction_ object:"-[_UIPhysicalButtonInteractionArbiter _registerPhysicalButtonInteraction:]" file:a2 lineNumber:interaction description:?];
LABEL_48:
            v11 = 0;

            goto LABEL_8;
          }

          currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler3 handleFailureInMethod:sel__registerPhysicalButtonInteraction_ object:"-[_UIPhysicalButtonInteractionArbiter _registerPhysicalButtonInteraction:]" file:a2 lineNumber:interaction description:?];
        }
      }
    }

    v11 = 0;
LABEL_8:

    goto LABEL_9;
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (void)_beginTrackingWindow:(uint64_t)window
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696B098] valueWithPointer:a2];
  v5 = *(window + 80);
  if (!v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:514 capacity:2];
    v7 = *(window + 80);
    *(window + 80) = v6;

    v5 = *(window + 80);
  }

  [v5 addObject:a2];
  v8 = *(window + 88);
  if (!v8)
  {
    v9 = objc_opt_new();
    v10 = *(window + 88);
    *(window + 88) = v9;

    v8 = *(window + 88);
  }

  [v8 addObject:v4];
  WeakRetained = objc_loadWeakRetained((window + 56));

  if (!WeakRetained)
  {
    v12 = *(window + 96);
    if (!v12)
    {
      v13 = objc_opt_new();
      v14 = *(window + 96);
      *(window + 96) = v13;

      v12 = *(window + 96);
    }

    v15 = [v12 containsObject:v4];
    [*(window + 96) addObject:v4];
    if ((v15 & 1) == 0)
    {
      [a2 _addWindowLevelChangedObserver:window];
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("PhysicalButtonInteraction", &_beginTrackingWindow____s_category);
      if (*CategoryCachedImpl)
      {
        v17 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          if (a2)
          {
            v18 = MEMORY[0x1E696AEC0];
            v19 = a2;
            v20 = objc_opt_class();
            v21 = NSStringFromClass(v20);
            v22 = [v18 stringWithFormat:@"<%@: %p>", v21, v19];
          }

          else
          {
            v22 = @"(nil)";
          }

          *buf = 134349314;
          windowCopy = window;
          v25 = 2112;
          v26 = v22;
          _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "[%{public}p] Arbiter began observing window level for window: %@", buf, 0x16u);
        }
      }
    }
  }
}

- (void)_addSystemShellWindowRequiringResolutionIfNeeded:(uint64_t)needed
{
  WeakRetained = objc_loadWeakRetained((needed + 56));
  if (a2 && WeakRetained)
  {
    v5 = *(a2 + 88);

    if ((v5 & 0x800) == 0)
    {
      v6 = *(needed + 120);
      if (!v6)
      {
        v7 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:3];
        v8 = *(needed + 120);
        *(needed + 120) = v7;

        v6 = *(needed + 120);
      }

      [v6 addObject:a2];
    }
  }

  else
  {
  }
}

- (void)_unregisterAllPhysicalButtonInteractionsForDetachingWindow:(uint64_t)window
{
  v19 = *MEMORY[0x1E69E9840];
  if (window)
  {
    if ((*(window + 40) & 8) == 0)
    {
      *(window + 40) |= 8u;
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    sortedObjects = [(_UIEvaluatedObjectCache *)*(window + 72) sortedObjects];
    v5 = [sortedObjects copy];

    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          view = [v10 view];
          _window = [view _window];

          if (_window == a2)
          {
            [(_UIPhysicalButtonInteraction *)v10 _unregisterFromArbiter];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v13 = *(window + 40);
    *(window + 40) = v13 & 0xE7;
    if ((v13 & 0x10) != 0)
    {
      [(_UIPhysicalButtonInteractionArbiter *)window _resolveConfigurations];
    }

    [(_UIPhysicalButtonInteractionArbiter *)window _removeAllSystemShellReferencesForDetachingWindow:a2];
  }
}

- (void)_removeAllSystemShellReferencesForDetachingWindow:(uint64_t)window
{
  if (window)
  {
    WeakRetained = objc_loadWeakRetained((window + 56));

    if (WeakRetained)
    {
      [*(window + 120) removeObject:a2];
      v5 = *(window + 128);

      [v5 removeObjectForKey:a2];
    }
  }
}

- (id)localEventDeferringTargetWindowForEnvironment:(id)environment
{
  v6 = _UIPhysicalButtonsForBKSHIDEventDeferringEnvironment(environment);
  firstObject = [v6 firstObject];
  unsignedIntegerValue = [firstObject unsignedIntegerValue];
  if (!firstObject || (unsignedIntegerValue - 1) >= 7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonInteractionArbiter.m" lineNumber:985 description:{@"%s: Invalid state: asked for target window of unknown event deferring environment: %@", "-[_UIPhysicalButtonInteractionArbiter localEventDeferringTargetWindowForEnvironment:]", environment}];
  }

  v10 = self->_sceneConfigurationResolutionContext;
  configurations = [(_UIPhysicalButtonConfigurationResolutionContext *)v10 configurations];
  configurationToInteractionMap = [(_UIPhysicalButtonConfigurationResolutionContext *)v10 configurationToInteractionMap];

  v13 = _UIPhysicalButtonInteractionArbiterTargetWindowForButton(configurations, configurationToInteractionMap);

  return v13;
}

- (id)_mostActiveViewServiceSessionForScene
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 48));
    _screen = [WeakRetained _screen];
    _userInterfaceIdiom = [_screen _userInterfaceIdiom];

    v4 = _UIActiveViewServiceSessionEffectiveIdiomForIdiom(_userInterfaceIdiom);
    v5 = +[_UIActiveViewServiceSessionTracker sharedTracker];
    v6 = [(_UIActiveViewServiceSessionTracker *)v5 mostActiveViewServiceSessionForUserInterfaceIdiom:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_enumerateAndValidateInteractionsInWindow:(uint64_t)window withRequiredBehaviorMask:(uint64_t)mask configurationAcceptanceEvaluator:(uint64_t)evaluator interactionAcceptanceHandler:(uint64_t)handler shouldStopEvaluator:
{
  v6 = *(self + 72);
  if (v6)
  {
    if ([*(v6 + 24) count])
    {
      v26[0] = 0;
      v26[1] = v26;
      v26[2] = 0x3032000000;
      v26[3] = __Block_byref_object_copy__181;
      v26[4] = __Block_byref_object_dispose__181;
      v27 = 0;
      v24[0] = 0;
      v24[1] = v24;
      v24[2] = 0x3032000000;
      v24[3] = __Block_byref_object_copy__181;
      v24[4] = __Block_byref_object_dispose__181;
      v25 = 0;
      WeakRetained = objc_loadWeakRetained((self + 48));
      _coordinateSpace = [WeakRetained _coordinateSpace];

      sortedObjects = [(_UIEvaluatedObjectCache *)*(self + 72) sortedObjects];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __188___UIPhysicalButtonInteractionArbiter__enumerateAndValidateInteractionsInWindow_withRequiredBehaviorMask_configurationAcceptanceEvaluator_interactionAcceptanceHandler_shouldStopEvaluator___block_invoke_2;
      v16[3] = &unk_1E7120CD0;
      v16[4] = self;
      v16[5] = a2;
      v22 = v24;
      windowCopy = window;
      v16[6] = _coordinateSpace;
      v17 = &__block_literal_global_138_0;
      maskCopy = mask;
      evaluatorCopy = evaluator;
      handlerCopy = handler;
      v21 = v26;
      [sortedObjects enumerateObjectsWithOptions:2 usingBlock:v16];

      _Block_object_dispose(v24, 8);
      _Block_object_dispose(v26, 8);
    }
  }
}

- (id)_gestureViewsForWindow:(uint64_t)window physicalButton:
{
  if (self)
  {
    configurations = [*(self + 112) configurations];
    v7 = [configurations _configurationForButton:window];

    if (v7)
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x3032000000;
      v20 = __Block_byref_object_copy__181;
      v21 = __Block_byref_object_dispose__181;
      v22 = 0;
      _behavior = [v7 _behavior];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __77___UIPhysicalButtonInteractionArbiter__gestureViewsForWindow_physicalButton___block_invoke;
      v16[3] = &unk_1E7120CF8;
      v16[4] = &v17;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __77___UIPhysicalButtonInteractionArbiter__gestureViewsForWindow_physicalButton___block_invoke_2;
      v14[3] = &unk_1E7120D20;
      if (_behavior >= 3)
      {
        v9 = 0;
      }

      else
      {
        v9 = 1 << _behavior;
      }

      v15 = _behavior != 2;
      v14[4] = &v17;
      [(_UIPhysicalButtonInteractionArbiter *)self _enumerateAndValidateInteractionsInWindow:a2 withRequiredBehaviorMask:v9 configurationAcceptanceEvaluator:0 interactionAcceptanceHandler:v16 shouldStopEvaluator:v14];
      v10 = v18[5];
      if (v10)
      {
        v11 = [v10 copy];
      }

      else
      {
        v11 = objc_opt_new();
      }

      v12 = v11;
      _Block_object_dispose(&v17, 8);
    }

    else
    {
      v12 = objc_opt_new();
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_performConfigurationResolutionForRequiredWindow:(uint64_t)window
{
  v4 = objc_opt_new();
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__181;
  v19 = __Block_byref_object_dispose__181;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__181;
  v13 = __Block_byref_object_dispose__181;
  v14 = 0;
  v7[4] = &v9;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __88___UIPhysicalButtonInteractionArbiter__performConfigurationResolutionForRequiredWindow___block_invoke;
  v8[3] = &unk_1E7120D48;
  v8[4] = &v15;
  v6[4] = &v15;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88___UIPhysicalButtonInteractionArbiter__performConfigurationResolutionForRequiredWindow___block_invoke_2;
  v7[3] = &unk_1E7120CF8;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __88___UIPhysicalButtonInteractionArbiter__performConfigurationResolutionForRequiredWindow___block_invoke_3;
  v6[3] = &unk_1E7120D70;
  [(_UIPhysicalButtonInteractionArbiter *)window _enumerateAndValidateInteractionsInWindow:a2 withRequiredBehaviorMask:0 configurationAcceptanceEvaluator:v8 interactionAcceptanceHandler:v7 shouldStopEvaluator:v6];
  [v4 setConfigurations:v16[5]];
  [v4 setConfigurationToInteractionMap:v10[5]];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v4;
}

- (void)_deferredResolutionDisplayLinkTicked:(id)ticked
{
  arbiterFlags = self->_arbiterFlags;
  *&self->_arbiterFlags = arbiterFlags & 0xF9;
  [(CADisplayLink *)self->_deferredConfigurationResolutionDisplayLink setPaused:1];
  if ((arbiterFlags & 2) == 0)
  {
    goto LABEL_13;
  }

  registeredAndSortedInteractions = self->_registeredAndSortedInteractions;
  if (registeredAndSortedInteractions)
  {
    v6 = arbiterFlags & 4;
    if ([(NSMutableOrderedSet *)registeredAndSortedInteractions->_sortedObjects count])
    {
      v7 = 0;
    }

    else
    {
      v7 = v6 == 0;
    }

    if (v7)
    {
      goto LABEL_13;
    }
  }

  else if ((arbiterFlags & 4) == 0)
  {
    goto LABEL_13;
  }

  _scene = [(_UIPhysicalButtonInteractionArbiter *)self _scene];
  if (_scene)
  {
    v9 = _scene;
    _hasInvalidated = [_scene _hasInvalidated];

    kdebug_trace();
    if ((_hasInvalidated & 1) == 0)
    {

      [(_UIPhysicalButtonInteractionArbiter *)self _resolveConfigurations];
    }

    return;
  }

LABEL_13:

  kdebug_trace();
}

- (void)_setNeedsResolutionOfPhysicalButtonConfigurationsInSceneForReason:(uint64_t)reason
{
  if (reason)
  {
    v2 = *(reason + 72);
    if (v2)
    {
      if ([*(v2 + 24) count])
      {
        _scene = [reason _scene];
        if (_scene)
        {
          v4 = _scene;
          _hasInvalidated = [_scene _hasInvalidated];

          if ((_hasInvalidated & 1) == 0)
          {
            v6 = *(reason + 40) & 2;
            kdebug_trace();
            if (!v6)
            {

              [(_UIPhysicalButtonInteractionArbiter *)reason _scheduleDeferredConfigurationResolution];
            }
          }
        }
      }
    }
  }
}

- (void)_setNeedsResolutionOfPhysicalButtonConfigurationsInWindow:(unint64_t)window forReason:
{
  v21 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (a2)
    {
      v5 = *(self + 72);
      if (v5)
      {
        if ([*(v5 + 24) count])
        {
          _scene = [self _scene];
          if (_scene)
          {
            v8 = _scene;
            _hasInvalidated = [_scene _hasInvalidated];

            if ((_hasInvalidated & 1) == 0 && (window != 2 || [*(self + 80) containsObject:a2]))
            {
              _windowHostingScene = [a2 _windowHostingScene];
              WeakRetained = objc_loadWeakRetained((self + 48));

              if (_windowHostingScene == WeakRetained)
              {
                [(_UIPhysicalButtonInteractionArbiter *)self _addSystemShellWindowRequiringResolutionIfNeeded:a2];

                [_UIPhysicalButtonInteractionArbiter _setNeedsResolutionOfPhysicalButtonConfigurationsInSceneForReason:self];
              }

              else
              {
                v12 = *(__UILogGetCategoryCachedImpl("PhysicalButtonInteraction", &_setNeedsResolutionOfPhysicalButtonConfigurationsInWindow_forReason____s_category) + 8);
                if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
                {
                  if (window > 4)
                  {
                    v13 = &stru_1EFB14550;
                  }

                  else
                  {
                    v13 = off_1E7120DE0[window];
                  }

                  v15 = 134349570;
                  selfCopy = self;
                  v17 = 2112;
                  v18 = a2;
                  v19 = 2112;
                  v20 = v13;
                  v14 = v12;
                  _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "[%{public}p] Arbiter: Invalid state: dropping request to resolve configurations due to invalid window in scene: %@; resolutionReason: %@", &v15, 0x20u);
                }
              }
            }
          }
        }
      }
    }
  }
}

- (void)_windowVisibilityDidChange:(id)change
{
  WeakRetained = objc_loadWeakRetained(&self->_systemShellDelegate);

  if (!WeakRetained)
  {
    object = [change object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      object2 = [change object];

      v7 = object2;
      if (object2)
      {
        _windowHostingScene = [object2 _windowHostingScene];
        v9 = objc_loadWeakRetained(&self->_scene);

        if (_windowHostingScene == v9)
        {
          [(_UIPhysicalButtonInteractionArbiter *)self _setNeedsResolutionOfPhysicalButtonConfigurationsInWindow:object2 forReason:0];
        }

        v7 = object2;
      }
    }

    else
    {

      v7 = 0;
    }
  }
}

- (void)window:(id)window changedFromLevel:(double)level toLevel:(double)toLevel
{
  WeakRetained = objc_loadWeakRetained(&self->_systemShellDelegate);

  if (!WeakRetained)
  {
    [(_UIEvaluatedObjectCache *)self->_registeredAndSortedInteractions sortAndEvaluateTopObject];

    [(_UIPhysicalButtonInteractionArbiter *)self _resolveConfigurations];
  }
}

- (void)_resetWindowLevelObservation
{
  v15 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = *(self + 96);
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

          pointerValue = [*(*(&v10 + 1) + 8 * v6) pointerValue];
          v8 = pointerValue;
          if (pointerValue)
          {
            [pointerValue _removeWindowLevelChangedObserver:self];
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v4);
    }

    v9 = *(self + 96);
    *(self + 96) = 0;
  }
}

- (void)setSystemShellDelegate:(id)delegate
{
  v38 = *MEMORY[0x1E69E9840];
  IsSpringBoard = _UIApplicationProcessIsSpringBoard();
  v7 = IsSpringBoard;
  if (delegate)
  {
    v8 = [delegate conformsToProtocol:&unk_1F016DB90];
    v9 = v8;
    if ((v7 & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonInteractionArbiter.m" lineNumber:1713 description:{@"%s: A system shell delegate is not allowed for this process", "-[_UIPhysicalButtonInteractionArbiter setSystemShellDelegate:]"}];

      if (v9)
      {
        return;
      }

      goto LABEL_4;
    }

    if ((v8 & 1) == 0)
    {
LABEL_4:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonInteractionArbiter.m" lineNumber:1714 description:{@"%s: Candidate system shell delegate does not conform to _UIPhysicalButtonInteractionArbiterSystemShellDelegate: %@", "-[_UIPhysicalButtonInteractionArbiter setSystemShellDelegate:]", delegate}];
LABEL_28:

      return;
    }
  }

  else if ((IsSpringBoard & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonInteractionArbiter.m" lineNumber:1713 description:{@"%s: A system shell delegate is not allowed for this process", "-[_UIPhysicalButtonInteractionArbiter setSystemShellDelegate:]", v30}];
    goto LABEL_28;
  }

  WeakRetained = objc_loadWeakRetained(&self->_systemShellDelegate);
  delegateCopy = delegate;
  v12 = WeakRetained;
  v13 = v12;
  if (v12 == delegateCopy)
  {
    v14 = 1;
  }

  else
  {
    v14 = 0;
    if (delegateCopy && v12)
    {
      v14 = [delegateCopy isEqual:v12];
    }
  }

  v15 = *(__UILogGetCategoryCachedImpl("PhysicalButtonInteraction", &setSystemShellDelegate____s_category) + 8);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_loadWeakRetained(&self->_systemShellDelegate);
    if (v16)
    {
      v17 = MEMORY[0x1E696AEC0];
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = [v17 stringWithFormat:@"<%@: %p>", v19, v16];
    }

    else
    {
      v20 = @"(nil)";
    }

    v21 = v20;
    if (delegate)
    {
      v22 = MEMORY[0x1E696AEC0];
      v23 = delegateCopy;
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = [v22 stringWithFormat:@"<%@: %p>", v25, v23];
    }

    else
    {
      v26 = @"(nil)";
    }

    *buf = 134349570;
    selfCopy = self;
    v34 = 2112;
    v35 = v21;
    v36 = 2112;
    v37 = v26;
    _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}p] Arbiter: setting system shell delegate: existing: %@; new: %@", buf, 0x20u);
  }

  objc_storeWeak(&self->_systemShellDelegate, delegateCopy);
  if ((v14 & 1) == 0)
  {
    v27 = objc_loadWeakRetained(&self->_systemShellDelegate);

    if (v27)
    {
      [(_UIPhysicalButtonInteractionArbiter *)self _resetWindowLevelObservation];
      if (self)
      {
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter removeObserver:self name:@"UIWindowDidBecomeVisibleNotification" object:0];
        [defaultCenter removeObserver:self name:@"UIWindowDidBecomeHiddenNotification" object:0];
      }
    }

    else
    {
      [(_UIPhysicalButtonInteractionArbiter *)self _beginObservingWindowVisibilityChanges];
    }
  }
}

- (void)setNeedsResolutionOfPhysicalButtonConfigurationsForSystemShellDelegate:(id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_systemShellDelegate);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = objc_loadWeakRetained(&self->_systemShellDelegate);

    if (v7 == delegate)
    {
      *&self->_arbiterFlags |= 0x20u;

      [_UIPhysicalButtonInteractionArbiter _setNeedsResolutionOfPhysicalButtonConfigurationsInSceneForReason:?];
    }
  }
}

- (id)configurationResolutionContextForSystemShellWindow:(id)window
{
  v5 = [(NSMapTable *)self->_systemShellWindowConfigurationResolutionContexts objectForKey:window];
  v6 = [v5 copy];

  return v6;
}

- (void)_mostActiveViewServiceSessionDidChange:(id)change
{
  v21 = *MEMORY[0x1E69E9840];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_scene);
  }

  else
  {
    WeakRetained = 0;
  }

  _screen = [WeakRetained _screen];
  _userInterfaceIdiom = [_screen _userInterfaceIdiom];

  v8 = _UIActiveViewServiceSessionEffectiveIdiomForIdiom(_userInterfaceIdiom);
  userInfo = [change userInfo];
  v10 = [userInfo objectForKey:@"_UIActiveViewServiceSessionChangingIdiomKey"];

  if (v10 && [v10 integerValue] == v8)
  {
    _mostActiveViewServiceSessionForScene = [(_UIPhysicalButtonInteractionArbiter *)self _mostActiveViewServiceSessionForScene];
    mostActiveViewServiceSession = self->_mostActiveViewServiceSession;
    self->_mostActiveViewServiceSession = _mostActiveViewServiceSessionForScene;

    v13 = *(__UILogGetCategoryCachedImpl("PhysicalButtonInteraction", &_mostActiveViewServiceSessionDidChange____s_category) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_mostActiveViewServiceSession;
      v15 = v13;
      succinctDescription = [(_UIViewServiceSessionActivityRecord *)v14 succinctDescription];
      v17 = 134349314;
      selfCopy = self;
      v19 = 2112;
      v20 = succinctDescription;
      _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}p] Arbiter: received new most active view service session: %@", &v17, 0x16u);
    }

    [(_UIPhysicalButtonInteractionArbiter *)self _resolveConfigurations];
  }
}

- (id)_registerViewServiceObserver:(id *)observer
{
  observerCopy = observer;
  v41 = *MEMORY[0x1E69E9840];
  if (observer)
  {
    _scene = [observer _scene];
    v5 = _scene;
    if (!_scene)
    {
      goto LABEL_16;
    }

    _hasInvalidated = [_scene _hasInvalidated];

    if (_hasInvalidated)
    {
      goto LABEL_16;
    }

    if ([observerCopy[18] containsObject:a2])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__registerViewServiceObserver_ object:observerCopy file:@"_UIPhysicalButtonInteractionArbiter.m" lineNumber:1837 description:{@"%s: View service observer is already registered with arbiter: viewServiceObserver: %@; arbiter: %@", "-[_UIPhysicalButtonInteractionArbiter _registerViewServiceObserver:]", a2, observerCopy}];
LABEL_15:

LABEL_16:
      observerCopy = 0;
      goto LABEL_17;
    }

    if ((objc_opt_respondsToSelector() & 1) == 0 || ([a2 isMemberOfClass:objc_opt_class()] & 1) == 0 && (objc_msgSend(a2, "isMemberOfClass:", objc_opt_class()) & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__registerViewServiceObserver_ object:observerCopy file:@"_UIPhysicalButtonInteractionArbiter.m" lineNumber:1848 description:{@"%s: Invalid view service observer attempting registration with arbiter: viewServiceObserver: %@; arbiter: %@", "-[_UIPhysicalButtonInteractionArbiter _registerViewServiceObserver:]", a2, observerCopy}];
      goto LABEL_15;
    }

    if (!observerCopy[18])
    {
      v8 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
      v9 = observerCopy[18];
      observerCopy[18] = v8;
    }

    objc_initWeak(&location, observerCopy);
    objc_initWeak(&from, a2);
    v10 = ++qword_1ED4A0A20;
    v11 = objc_opt_class();
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s-%p-%lu", class_getName(v11), a2, v10];
    v12 = MEMORY[0x1E696AEC0];
    v13 = observerCopy;
    v14 = MEMORY[0x1E696AEC0];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v14 stringWithFormat:@"<%@: %p>", v16, v13];

    v18 = [v12 stringWithFormat:@"Registering view service observer with: %@", v17];

    v19 = objc_alloc(MEMORY[0x1E698E778]);
    v20 = MEMORY[0x1E69E96A0];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __68___UIPhysicalButtonInteractionArbiter__registerViewServiceObserver___block_invoke;
    v30[3] = &unk_1E710E3D0;
    objc_copyWeak(&v31, &location);
    objc_copyWeak(&v32, &from);
    v21 = [v19 initWithIdentifier:v29 forReason:v18 queue:MEMORY[0x1E69E96A0] invalidationBlock:v30];

    v22 = *(__UILogGetCategoryCachedImpl("PhysicalButtonInteraction", &qword_1ED4A09F0) + 8);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = a2;
      if (v23)
      {
        v24 = MEMORY[0x1E696AEC0];
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v27 = [v24 stringWithFormat:@"<%@: %p>", v26, v23];
      }

      else
      {
        v27 = @"(nil)";
      }

      *buf = 134349570;
      v36 = v13;
      v37 = 2112;
      v38 = v27;
      v39 = 2112;
      v40 = v21;
      _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}p] Arbiter: registered view service observer: %@ with registrationToken: %@", buf, 0x20u);
    }

    [observerCopy[18] addObject:a2];
    observerCopy = v21;
    objc_destroyWeak(&v32);
    objc_destroyWeak(&v31);

    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

LABEL_17:

  return observerCopy;
}

- (void)_handleBSAction:(uint64_t)action
{
  v28 = *MEMORY[0x1E69E9840];
  if (action)
  {
    v4 = *(__UILogGetCategoryCachedImpl("PhysicalButtonInteraction", &qword_1ED4A09F8) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349314;
      actionCopy3 = action;
      v24 = 2112;
      v25 = a2;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}p] Arbiter: received BSAction: %@", buf, 0x16u);
    }

    configurations = [*(action + 112) configurations];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __55___UIPhysicalButtonInteractionArbiter__handleBSAction___block_invoke;
    v21[3] = &unk_1E7120D98;
    v21[4] = a2;
    v6 = [configurations _configurationPassingTest:v21];
    if (v6)
    {
      configurationToInteractionMap = [*(action + 112) configurationToInteractionMap];
      v8 = [configurationToInteractionMap objectForKey:v6];

      if ([v8 _isProxyInteraction])
      {
        _bsActionDriver = [(_UIPhysicalButtonInteraction *)v8 _bsActionDriver];
        [_bsActionDriver _handleBSAction:a2];
LABEL_17:

LABEL_18:
LABEL_19:

        return;
      }

      if ([a2 behavior] == 2)
      {
        sortedObjects = [(_UIEvaluatedObjectCache *)*(action + 72) sortedObjects];
        v14 = MEMORY[0x1E69E9820];
        v15 = 3221225472;
        v16 = __55___UIPhysicalButtonInteractionArbiter__handleBSAction___block_invoke_238;
        v17 = &unk_1E7120DC0;
        actionCopy2 = action;
        v19 = v6;
        v20 = a2;
        [sortedObjects enumerateObjectsWithOptions:2 usingBlock:&v14];
      }

      else
      {
        _bsActionDriver2 = [(_UIPhysicalButtonInteraction *)v8 _bsActionDriver];
        [_bsActionDriver2 _handleBSAction:a2];
      }

      if (![a2 canSendResponse])
      {
        goto LABEL_18;
      }

      response = [MEMORY[0x1E698E600] response];
    }

    else
    {
      v10 = *(__UILogGetCategoryCachedImpl("PhysicalButtonInteraction", &qword_1ED4A0A00) + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349570;
        actionCopy3 = action;
        v24 = 2112;
        v25 = a2;
        v26 = 2112;
        v27 = configurations;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "[%{public}p] Arbiter: dropping action as there is no matching configuration in resolved configurations; action: %@; resolved configurations: %@", buf, 0x20u);
      }

      if (![a2 canSendResponse])
      {
        goto LABEL_19;
      }

      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"_UIPhysicalButtonBSActionErrorDomain" code:0 userInfo:0];
      response = [MEMORY[0x1E698E600] responseForError:v8];
    }

    _bsActionDriver = response;
    [a2 sendResponse:response];
    goto LABEL_17;
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_UIPhysicalButtonInteractionArbiter *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = v3;
  resolutionStrategy = self->_resolutionStrategy;
  v6 = &stru_1EFB14550;
  if (resolutionStrategy == 1)
  {
    v6 = @"viewServices";
  }

  if (resolutionStrategy)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"sceneClientSettings";
  }

  [v3 appendString:v7 withName:@"resolutionStrategy"];
  v8 = [v4 appendBool:(*&self->_arbiterFlags >> 1) & 1 withName:@"hasScheduledDeferredConfigurationResolution"];
  configurations = [(_UIPhysicalButtonConfigurationResolutionContext *)self->_sceneConfigurationResolutionContext configurations];
  v10 = _UIPhysicalButtonSuccinctConfigurationsDescriptionForSet(configurations);
  v11 = [v4 appendObject:v10 withName:@"resolvedConfigurations"];

  return v4;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIPhysicalButtonInteractionArbiter *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIPhysicalButtonInteractionArbiter *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v5 setActiveMultilinePrefix:prefix];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77___UIPhysicalButtonInteractionArbiter_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E70F35B8;
  v6 = v5;
  v11 = v6;
  selfCopy = self;
  v7 = [v6 modifyBody:v10];
  v8 = v6;

  return v6;
}

- (_UIPhysicalButtonInteractionArbiterSystemShellDelegate)systemShellDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_systemShellDelegate);

  return WeakRetained;
}

@end