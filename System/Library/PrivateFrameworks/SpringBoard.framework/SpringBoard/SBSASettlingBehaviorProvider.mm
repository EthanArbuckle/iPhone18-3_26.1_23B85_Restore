@interface SBSASettlingBehaviorProvider
- (UIEdgeInsets)_overshootOutsetsForTransitionPhase:(int64_t)phase baseOutsets:(UIEdgeInsets)outsets elementContext:(id)context;
- (UIEdgeInsets)_overshootOutsetsTargetingContainerDescription:(id)description initialContainerDescription:(id)containerDescription settings:(id)settings context:(id)context;
- (double)_overshootFractionForDampingRatio:(double)ratio;
- (double)_progressMilestoneForTransitionPhase:(int64_t)phase;
- (id)_fluidBehaviorSettingsForTransitionPhase:(int64_t)phase forElementContext:(id)context;
- (id)preferencesFromContext:(id)context;
- (void)_setActivePhase:(int64_t)phase context:(id)context logReason:(id)reason;
@end

@implementation SBSASettlingBehaviorProvider

- (id)preferencesFromContext:(id)context
{
  v266 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (contextCopy)
  {
    v5 = objc_opt_self();
    v6 = contextCopy;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (!v8)
    {
      [(SBSASettlingBehaviorProvider *)v6 preferencesFromContext:a2, self];
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  preferences = [v9 preferences];
  lastChangingElementLayoutTransition = [preferences lastChangingElementLayoutTransition];

  v197 = BSEqualObjects();
  if ((v197 & 1) == 0)
  {
    v12 = SBLogSystemAperturePreferencesStackSettling();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [SBSASettlingBehaviorProvider preferencesFromContext:v9];
    }

    objc_storeStrong(&self->_lastChangingElementLayoutTransition, lastChangingElementLayoutTransition);
    [(SBSASettlingBehaviorProvider *)self _setActivePhase:0 context:v9 logReason:@"Element Layout Changed"];
    containerIDsToOvershootOutsets = self->_containerIDsToOvershootOutsets;
    self->_containerIDsToOvershootOutsets = 0;

    pendingPhaseTransitionPropertyIdentities = self->_pendingPhaseTransitionPropertyIdentities;
    self->_pendingPhaseTransitionPropertyIdentities = 0;
  }

  requests = [v9 requests];
  v16 = [requests bs_firstObjectOfClass:objc_opt_class()];

  if (v16)
  {
    self->_collisionImminent = 1;
  }

  else if ((v197 & 1) == 0)
  {
    self->_collisionImminent = [(SBSAElementLayoutTransition *)self->_lastChangingElementLayoutTransition isCollisionRequired];
  }

  v189 = contextCopy;
  v190 = lastChangingElementLayoutTransition;
  [(SBSASettlingBehaviorProvider *)self _progressMilestoneForTransitionPhase:self->_activePhase];
  v18 = v17;
  v250 = 0u;
  v251 = 0u;
  v252 = 0u;
  v253 = 0u;
  obj = [v9 animatedTransitionResults];
  v19 = [obj countByEnumeratingWithState:&v250 objects:v265 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v251;
    do
    {
      v22 = 0;
      do
      {
        if (*v251 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v250 + 1) + 8 * v22);
        if (v18 <= 0.0)
        {
          goto LABEL_33;
        }

        v24 = self->_pendingPhaseTransitionPropertyIdentities;
        associatedInterfaceElementPropertyIdentity = [*(*(&v250 + 1) + 8 * v22) associatedInterfaceElementPropertyIdentity];
        v26 = [(NSSet *)v24 containsObject:associatedInterfaceElementPropertyIdentity];

        [v23 targetedMilestone];
        v27 = BSFloatApproximatelyEqualToFloat();
        isTransitionEndTargeted = [v23 isTransitionEndTargeted];
        if (isTransitionEndTargeted)
        {
          isTransitionEndTargeted = [v23 finished];
        }

        if ((v26 & (v27 | isTransitionEndTargeted)) != 1)
        {
          goto LABEL_33;
        }

        v29 = self->_pendingPhaseTransitionPropertyIdentities;
        self->_pendingPhaseTransitionPropertyIdentities = 0;

        v30 = SBLogSystemAperturePreferencesStackSettling();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          queryIteration = [v9 queryIteration];
          *buf = 134349314;
          v49 = @"skipped";
          if (v27)
          {
            v49 = @"hit";
          }

          v255 = queryIteration;
          v256 = 2112;
          v257 = v49;
          _os_log_debug_impl(&dword_21ED4E000, v30, OS_LOG_TYPE_DEBUG, "[%{public}lu] Pending phase transition property identity %@.", buf, 0x16u);
        }

        if (self->_collisionImminent && self->_activePhase == -3)
        {
          v31 = [v9 copyByAddingSignals:1 debugRequestingProvider:self];

          v32 = SBLogSystemAperturePreferencesStackSettling();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            [(SBSASettlingBehaviorProvider *)v264 preferencesFromContext:v31];
          }

          self->_collisionImminent = 0;
        }

        else
        {
LABEL_33:
          v31 = v9;
        }

        pendingCollisionPropertyIdentities = self->_pendingCollisionPropertyIdentities;
        associatedInterfaceElementPropertyIdentity2 = [v23 associatedInterfaceElementPropertyIdentity];
        v35 = [(NSSet *)pendingCollisionPropertyIdentities containsObject:associatedInterfaceElementPropertyIdentity2];

        [v23 targetedMilestone];
        settings = [objc_opt_class() settings];
        [settings boundsCollisionProgress];
        v37 = BSFloatApproximatelyEqualToFloat();

        isTransitionEndTargeted2 = [v23 isTransitionEndTargeted];
        if (isTransitionEndTargeted2)
        {
          isTransitionEndTargeted2 = [v23 finished];
        }

        if ((v35 & (v37 | isTransitionEndTargeted2)) == 1)
        {
          v39 = self->_pendingCollisionPropertyIdentities;
          self->_pendingCollisionPropertyIdentities = 0;

          v9 = [v31 copyByAddingSignals:1 debugRequestingProvider:self];
          v40 = SBLogSystemAperturePreferencesStackSettling();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            queryIteration2 = [v9 queryIteration];
            *buf = 134349314;
            v47 = @"skipped";
            if (v37)
            {
              v47 = @"reached";
            }

            v255 = queryIteration2;
            v256 = 2112;
            v257 = v47;
            _os_log_debug_impl(&dword_21ED4E000, v40, OS_LOG_TYPE_DEBUG, "[%{public}lu] Collision threshold %@ (explicit)", buf, 0x16u);
          }

          self->_collisionImminent = 0;
          if (self->_collisionIsNotOvershooting)
          {
            self->_collisionIsNotOvershooting = 0;
            [(SBSASettlingBehaviorProvider *)self _setActivePhase:0 context:v9 logReason:@"Reset due to handling collision with no overshooting"];
          }
        }

        else
        {
          v9 = v31;
        }

        pendingSteadyPropertyIdentities = self->_pendingSteadyPropertyIdentities;
        associatedInterfaceElementPropertyIdentity3 = [v23 associatedInterfaceElementPropertyIdentity];
        if (-[NSSet containsObject:](pendingSteadyPropertyIdentities, "containsObject:", associatedInterfaceElementPropertyIdentity3) && [v23 isTransitionEndTargeted])
        {
          finished = [v23 finished];

          if (!finished)
          {
            goto LABEL_48;
          }

          v44 = self->_pendingSteadyPropertyIdentities;
          self->_pendingSteadyPropertyIdentities = 0;

          v45 = [v9 copyByAddingSignals:2 debugRequestingProvider:self];
          associatedInterfaceElementPropertyIdentity3 = SBLogSystemAperturePreferencesStackSettling();
          if (os_log_type_enabled(associatedInterfaceElementPropertyIdentity3, OS_LOG_TYPE_DEBUG))
          {
            [(SBSASettlingBehaviorProvider *)v263 preferencesFromContext:v45];
          }
        }

        else
        {
          v45 = v9;
        }

        v9 = v45;
LABEL_48:
        ++v22;
      }

      while (v20 != v22);
      v50 = [obj countByEnumeratingWithState:&v250 objects:v265 count:16];
      v20 = v50;
    }

    while (v50);
  }

  if ((v197 & 1) == 0)
  {
    v51 = self->_pendingCollisionPropertyIdentities;
    self->_pendingCollisionPropertyIdentities = 0;
  }

  v52 = 88;
  if (self->_collisionImminent)
  {
    preferences2 = [v9 preferences];
    v249[0] = MEMORY[0x277D85DD0];
    v249[1] = 3221225472;
    v249[2] = __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke;
    v249[3] = &unk_2783A93E8;
    v249[5] = a2;
    v249[4] = self;
    v54 = [preferences2 copyWithBlock:v249];
    v55 = [v9 copyByUpdatingPreferences:v54];

    v56 = SBLogSystemAperturePreferencesStackSettling();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      [SBSASettlingBehaviorProvider preferencesFromContext:v55];
    }
  }

  else
  {
    v55 = v9;
  }

  v205 = v55;
  v248.receiver = self;
  v248.super_class = SBSASettlingBehaviorProvider;
  v57 = [(SBSABasePreferencesProvider *)&v248 preferencesFromContext:v55];
  v58 = objc_opt_class();
  v59 = v57;
  if (v58)
  {
    if (objc_opt_isKindOfClass())
    {
      v60 = v59;
    }

    else
    {
      v60 = 0;
    }
  }

  else
  {
    v60 = 0;
  }

  v61 = v60;

  v201 = v61;
  containerViewDescriptions = [v61 containerViewDescriptions];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v244 = 0u;
  v245 = 0u;
  v246 = 0u;
  v247 = 0u;
  v64 = containerViewDescriptions;
  v65 = [v64 countByEnumeratingWithState:&v244 objects:v262 count:16];
  if (v65)
  {
    v66 = v65;
    v67 = *v245;
    do
    {
      for (i = 0; i != v66; ++i)
      {
        if (*v245 != v67)
        {
          objc_enumerationMutation(v64);
        }

        v69 = *(*(&v244 + 1) + 8 * i);
        v70 = MEMORY[0x277CCAE60];
        [v69 bounds];
        v71 = [v70 valueWithCGRect:?];
        interfaceElementIdentifier = [v69 interfaceElementIdentifier];
        [dictionary setObject:v71 forKey:interfaceElementIdentifier];
      }

      v66 = [v64 countByEnumeratingWithState:&v244 objects:v262 count:16];
    }

    while (v66);
  }

  v73 = [(SBSABasePreferencesProvider *)self firstChildPreferenceProviderOfClass:objc_opt_class()];

  v74 = v205;
  if (self->_activePhase)
  {
    if (v73)
    {
      stackContainerInterfaceElementIdentifiersToBounds = self->_stackContainerInterfaceElementIdentifiersToBounds;
      if (stackContainerInterfaceElementIdentifiersToBounds)
      {
        if (([(NSDictionary *)stackContainerInterfaceElementIdentifiersToBounds isEqual:dictionary]& 1) == 0)
        {
          objc_storeStrong(&self->_lastChangingElementLayoutTransition, v190);
          [(SBSASettlingBehaviorProvider *)self _setActivePhase:0 context:v205 logReason:@"Reset due to container frames changing during dynamic animation"];
          v76 = self->_containerIDsToOvershootOutsets;
          self->_containerIDsToOvershootOutsets = 0;

          v77 = self->_pendingPhaseTransitionPropertyIdentities;
          self->_pendingPhaseTransitionPropertyIdentities = 0;
        }
      }
    }
  }

  v78 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];
  v79 = self->_stackContainerInterfaceElementIdentifiersToBounds;
  self->_stackContainerInterfaceElementIdentifiersToBounds = v78;

  obja = v64;
  v191 = dictionary;
  if ([v205 containsAnyOfSignals:1])
  {
    if (!self->_activePhase)
    {
      goto LABEL_106;
    }

    v80 = [(NSDictionary *)self->_containerIDsToOvershootOutsets mutableCopy];
    v240 = 0u;
    v241 = 0u;
    v242 = 0u;
    v243 = 0u;
    containerViewDescriptions2 = [v205 containerViewDescriptions];
    v82 = [containerViewDescriptions2 countByEnumeratingWithState:&v240 objects:v261 count:16];
    if (v82)
    {
      v83 = v82;
      v84 = 0;
      v85 = *v241;
      v202 = containerViewDescriptions2;
      do
      {
        for (j = 0; j != v83; ++j)
        {
          if (*v241 != v85)
          {
            objc_enumerationMutation(containerViewDescriptions2);
          }

          v87 = *(*(&v240 + 1) + 8 * j);
          v239[0] = MEMORY[0x277D85DD0];
          v239[1] = 3221225472;
          v239[2] = __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_37;
          v239[3] = &unk_2783B0210;
          v239[4] = v87;
          v88 = [v64 bs_firstObjectPassingTest:v239];
          [v87 bounds];
          v90 = v89;
          v92 = v91;
          v94 = v93;
          v96 = v95;
          [v88 bounds];
          x = v267.origin.x;
          y = v267.origin.y;
          width = v267.size.width;
          height = v267.size.height;
          v273.origin.x = v90;
          v273.origin.y = v92;
          v273.size.width = v94;
          v273.size.height = v96;
          if (CGRectContainsRect(v267, v273))
          {
            v268.origin.x = x;
            v268.origin.y = y;
            v268.size.width = width;
            v268.size.height = height;
            v206 = CGRectGetHeight(v268);
            v269.origin.x = v90;
            v269.origin.y = v92;
            v269.size.width = v94;
            v269.size.height = v96;
            if (v206 > CGRectGetHeight(v269))
            {
              v270.origin.x = x;
              v270.origin.y = y;
              v270.size.width = width;
              v270.size.height = height;
              v101 = CGRectGetWidth(v270);
              v271.origin.x = v90;
              v271.origin.y = v92;
              v271.size.width = v94;
              v271.size.height = v96;
              if (v101 > CGRectGetWidth(v271))
              {
                v102 = v80;
                v103 = SBLogSystemAperturePreferencesStackSettling();
                if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
                {
                  queryIteration3 = [v205 queryIteration];
                  interfaceElementIdentifier2 = [v87 interfaceElementIdentifier];
                  *buf = 134349314;
                  v255 = queryIteration3;
                  v256 = 2112;
                  v257 = interfaceElementIdentifier2;
                  _os_log_debug_impl(&dword_21ED4E000, v103, OS_LOG_TYPE_DEBUG, "[%{public}lu] Container is now Expanding, dropping overshoot offsets for: (%@)", buf, 0x16u);
                }

                interfaceElementIdentifier3 = [v87 interfaceElementIdentifier];
                v80 = v102;
                [v102 removeObjectForKey:interfaceElementIdentifier3];

                v84 = 1;
                containerViewDescriptions2 = v202;
              }
            }
          }

          v64 = obja;
        }

        v83 = [containerViewDescriptions2 countByEnumeratingWithState:&v240 objects:v261 count:16];
      }

      while (v83);

      v74 = v205;
      v52 = 88;
      if ((v84 & 1) == 0)
      {
        goto LABEL_101;
      }

      if ([v80 count])
      {
        v106 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v80];
        containerViewDescriptions2 = self->_containerIDsToOvershootOutsets;
        self->_containerIDsToOvershootOutsets = v106;
      }

      else
      {
        [(SBSASettlingBehaviorProvider *)self _setActivePhase:0 context:v205 logReason:@"Reset due to No container overshoot offsets left after something started expanding"];
        v107 = self->_containerIDsToOvershootOutsets;
        self->_containerIDsToOvershootOutsets = 0;

        containerViewDescriptions2 = self->_pendingPhaseTransitionPropertyIdentities;
        self->_pendingPhaseTransitionPropertyIdentities = 0;
      }
    }

LABEL_101:
  }

  activePhase = self->_activePhase;
  if (activePhase)
  {
    if (activePhase >= -1)
    {
      activePhase = -1;
    }

    v109 = activePhase + 1;
    goto LABEL_125;
  }

LABEL_106:
  v110 = SBLogSystemAperturePreferencesStackSettling();
  if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
  {
    [SBSASettlingBehaviorProvider preferencesFromContext:v74];
  }

  v203 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v235 = 0u;
  v236 = 0u;
  v237 = 0u;
  v238 = 0u;
  containerViewDescriptions3 = [v74 containerViewDescriptions];
  v111 = [containerViewDescriptions3 countByEnumeratingWithState:&v235 objects:v260 count:16];
  if (v111)
  {
    v112 = v111;
    v210 = *v236;
    do
    {
      for (k = 0; k != v112; ++k)
      {
        if (*v236 != v210)
        {
          objc_enumerationMutation(containerViewDescriptions3);
        }

        v114 = *(*(&v235 + 1) + 8 * k);
        v234[0] = MEMORY[0x277D85DD0];
        v234[1] = 3221225472;
        v234[2] = __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_42;
        v234[3] = &unk_2783B0210;
        v234[4] = v114;
        v115 = [v64 bs_firstObjectPassingTest:v234];
        if (v115)
        {
          elementContexts = [v74 elementContexts];
          v117 = SBSAElementContextAssociatedWithContainerViewDescription(v115, elementContexts, 0);

          v118 = [(SBSASettlingBehaviorProvider *)self _fluidBehaviorSettingsForTransitionPhase:-3 forElementContext:v117];
          [(SBSASettlingBehaviorProvider *)self _overshootOutsetsTargetingContainerDescription:v115 initialContainerDescription:v114 settings:v118 context:v74];
          v123 = v119;
          v124 = v120;
          v125 = v121;
          v126 = v122;
          if (v119 != 0.0 || v121 != 0.0 || v120 != 0.0 || v122 != 0.0)
          {
            *v233 = v119;
            *&v233[1] = v120;
            *&v233[2] = v121;
            *&v233[3] = v122;
            v127 = [MEMORY[0x277CCAE60] valueWithBytes:v233 objCType:"{UIEdgeInsets=dddd}"];
            interfaceElementIdentifier4 = [v114 interfaceElementIdentifier];
            [v203 setObject:v127 forKey:interfaceElementIdentifier4];

            v129 = SBLogSystemAperturePreferencesStackSettling();
            if (os_log_type_enabled(v129, OS_LOG_TYPE_DEBUG))
            {
              queryIteration4 = [v205 queryIteration];
              interfaceElementIdentifier5 = [v114 interfaceElementIdentifier];
              v272.top = v123;
              v272.left = v124;
              v272.bottom = v125;
              v272.right = v126;
              v131 = NSStringFromUIEdgeInsets(v272);
              *buf = 134349570;
              v255 = queryIteration4;
              v256 = 2112;
              v257 = interfaceElementIdentifier5;
              v258 = 2112;
              v259 = v131;
              _os_log_debug_impl(&dword_21ED4E000, v129, OS_LOG_TYPE_DEBUG, "[%{public}lu] Updated overshoot outsets for container description '%@': %@", buf, 0x20u);
            }

            v74 = v205;
          }

          v64 = obja;
        }
      }

      v112 = [containerViewDescriptions3 countByEnumeratingWithState:&v235 objects:v260 count:16];
    }

    while (v112);
  }

  objc_storeStrong(&self->_containerIDsToOvershootOutsets, v203);
  v109 = -3;
  v52 = 88;
  dictionary = v191;
LABEL_125:
  v132 = [(NSDictionary *)self->_containerIDsToOvershootOutsets count];
  v133 = v132;
  v194 = v132 != 0;
  if (self->_collisionImminent)
  {
    v134 = self->_activePhase;
    v135 = v134 == 0;
    if (!v132)
    {
      if (v134)
      {
        goto LABEL_134;
      }

      self->_collisionIsNotOvershooting = 1;
      goto LABEL_133;
    }
  }

  else
  {
    if (!v132)
    {
      goto LABEL_134;
    }

    v135 = 0;
  }

  if (!self->_pendingPhaseTransitionPropertyIdentities || v135)
  {
LABEL_133:
    [(SBSASettlingBehaviorProvider *)self _setActivePhase:v109 context:v74 logReason:@"Incremented Phase"];
  }

LABEL_134:
  v196 = [v64 mutableCopy];
  v199 = [v64 count];
  if (v199)
  {
    v192 = objc_alloc_init(MEMORY[0x277CBEB58]);

    v195 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v193 = objc_alloc_init(MEMORY[0x277CBEB58]);

    v137 = 0;
    v138 = @"Will Not Overshoot";
    if (v133)
    {
      v138 = @"Will Overshoot";
    }

    v188 = v138;
    *&v136 = 134349314;
    v187 = v136;
    v204 = v133;
    while (1)
    {
      v139 = [obja objectAtIndex:{v137, v187}];
      v140 = [SBSAInterfaceElementPropertyIdentity alloc];
      interfaceElementIdentifier6 = [v139 interfaceElementIdentifier];
      v209 = [(SBSAInterfaceElementPropertyIdentity *)v140 initWithAssociatedInterfaceElementIdentifier:interfaceElementIdentifier6 andProperty:@"bounds"];

      v142 = self->_containerIDsToOvershootOutsets;
      interfaceElementIdentifier7 = [v139 interfaceElementIdentifier];
      v144 = [(NSDictionary *)v142 objectForKey:interfaceElementIdentifier7];

      v145 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v211 = v145;
      if (v133 && v144)
      {
        v146 = v145;
        [v144 UIEdgeInsetsValue];
        v148 = v147;
        v150 = v149;
        v152 = v151;
        v154 = v153;
        elementContexts2 = [v74 elementContexts];
        SBSAElementContextAssociatedWithContainerViewDescription(v139, elementContexts2, 0);
        v157 = v156 = v146;

        [(SBSASettlingBehaviorProvider *)self _overshootOutsetsForTransitionPhase:self->_activePhase baseOutsets:v157 elementContext:v148, v150, v152, v154];
        v226[0] = MEMORY[0x277D85DD0];
        v226[1] = 3221225472;
        v226[2] = __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_52;
        v226[3] = &unk_2783B8748;
        v228 = a2;
        v226[4] = self;
        v229 = v158;
        v230 = v159;
        v231 = v160;
        v232 = v161;
        v162 = v74;
        v227 = v162;
        v163 = [v139 copyWithBlock:v226];
        [v196 replaceObjectAtIndex:v137 withObject:v163];

        v218[0] = MEMORY[0x277D85DD0];
        v218[1] = 3221225472;
        v218[2] = __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_57;
        v218[3] = &unk_2783C0B10;
        v224 = a2;
        v218[4] = self;
        v225 = v194;
        v219 = v139;
        v220 = v162;
        v221 = v209;
        v222 = v156;
        v223 = v195;
        v164 = [v201 copyWithBlock:v218];

        v133 = v204;
        v201 = v164;
      }

      if (*(&self->super.super.isa + v52) == 1 && self->_activePhase == -3)
      {
        if (!v144 || ([v144 UIEdgeInsetsValue], BSFloatIsZero()))
        {
          v165 = MEMORY[0x277CCABB0];
          settings2 = [objc_opt_class() settings];
          [settings2 boundsCollisionProgress];
          v167 = [v165 numberWithDouble:?];
          [v211 addObject:v167];

          [v192 addObject:v209];
          v168 = SBLogSystemAperturePreferencesStackSettling();
          if (os_log_type_enabled(v168, OS_LOG_TYPE_DEBUG))
          {
            queryIteration5 = [v205 queryIteration];
            *buf = v187;
            v255 = queryIteration5;
            v256 = 2112;
            v257 = v209;
            _os_log_debug_impl(&dword_21ED4E000, v168, OS_LOG_TYPE_DEBUG, "[%{public}lu] Added pending collision property ID: %@", buf, 0x16u);
          }
        }
      }

      elementLayoutTransition = [v201 elementLayoutTransition];
      isLayoutChange = [elementLayoutTransition isLayoutChange];

      v171 = self->_activePhase;
      if (!v133)
      {
        break;
      }

      v74 = v205;
      if (v171 == -1)
      {
        goto LABEL_154;
      }

LABEL_157:
      v175 = v52;
      v176 = v211;
      if ([v211 count])
      {
        v214[0] = MEMORY[0x277D85DD0];
        v214[1] = 3221225472;
        v214[2] = __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_74;
        v214[3] = &unk_2783AD778;
        v217 = a2;
        v214[4] = self;
        v215 = v211;
        v177 = v209;
        v216 = v209;
        v178 = [v201 copyWithBlock:v214];

        v133 = v204;
        v201 = v178;
        v176 = v211;
      }

      else
      {
        v177 = v209;
      }

      ++v137;
      v52 = v175;
      if (v199 == v137)
      {
        dictionary = v191;
        v181 = v192;
        v182 = v195;
        v183 = v193;
        goto LABEL_163;
      }
    }

    v172 = v171 == 0;
    v173 = v197 ^ 1;
    if (!v172)
    {
      v173 = 1;
    }

    v74 = v205;
    if (((v173 | isLayoutChange) & 1) == 0)
    {
      goto LABEL_157;
    }

LABEL_154:
    [v211 addObject:0x28336F620];
    [v193 addObject:v209];
    v174 = SBLogSystemAperturePreferencesStackSettling();
    if (os_log_type_enabled(v174, OS_LOG_TYPE_DEBUG))
    {
      queryIteration6 = [v74 queryIteration];
      *buf = 134349570;
      v255 = queryIteration6;
      v256 = 2112;
      v257 = v188;
      v258 = 2112;
      v259 = v209;
      _os_log_debug_impl(&dword_21ED4E000, v174, OS_LOG_TYPE_DEBUG, "[%{public}lu] Added pending steady state (%@) property ID: %@", buf, 0x20u);
    }

    goto LABEL_157;
  }

  v182 = 0;
  v181 = 0;
  v183 = 0;
LABEL_163:
  if ([v181 count])
  {
    objc_storeStrong(&self->_pendingCollisionPropertyIdentities, v181);
  }

  if ([v182 count])
  {
    objc_storeStrong(&self->_pendingPhaseTransitionPropertyIdentities, v182);
  }

  if ([v183 count])
  {
    objc_storeStrong(&self->_pendingSteadyPropertyIdentities, v183);
  }

  v184 = [v201 copyByUpdatingContainerViewDescriptions:v196];

  v185 = v184;
  return v184;
}

void __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v2 = objc_opt_self();
    v3 = v6;
    if (v2)
    {
      if (objc_opt_isKindOfClass())
      {
        v4 = v3;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

    if (!v5)
    {
      __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_cold_1();
    }
  }

  else
  {
    v5 = 0;
  }

  [v5 setCollisionImminent:1];
}

uint64_t __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_37(uint64_t a1, void *a2)
{
  v3 = [a2 interfaceElementIdentifier];
  v4 = [*(a1 + 32) interfaceElementIdentifier];
  v5 = BSEqualObjects();

  return v5;
}

uint64_t __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_42(uint64_t a1, void *a2)
{
  v3 = [a2 interfaceElementIdentifier];
  v4 = [*(a1 + 32) interfaceElementIdentifier];
  v5 = BSEqualObjects();

  return v5;
}

void __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_52(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
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
      __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_52_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12 - (*(a1 + 64) + *(a1 + 80));
  v15 = v14 - (*(a1 + 56) + *(a1 + 72));
  [v7 setBounds:{v8, v10, v13, v15}];
  v16 = SBLogSystemAperturePreferencesStackSettling();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v29 = [*(a1 + 40) queryIteration];
    v30 = [v7 interfaceElementIdentifier];
    v43.origin.x = v9;
    v43.origin.y = v11;
    v43.size.width = v13;
    v43.size.height = v15;
    v31 = NSStringFromCGRect(v43);
    LODWORD(buf.a) = 134349570;
    *(&buf.a + 4) = v29;
    WORD2(buf.b) = 2112;
    *(&buf.b + 6) = v30;
    HIWORD(buf.c) = 2112;
    *&buf.d = v31;
    _os_log_debug_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEBUG, "[%{public}lu] Updated bounds for container description '%@': %@", &buf, 0x20u);
  }

  [v7 center];
  __asm { FMOV            V3.2D, #0.5 }

  v23.f64[1] = v22;
  v24 = vaddq_f64(v23, vmulq_f64(vsubq_f64(*(a1 + 56), *(a1 + 72)), _Q3));
  v25 = v24.f64[1];
  point = v24.f64[0];
  [v7 setCenter:v24.f64[1]];
  v26 = SBLogSystemAperturePreferencesStackSettling();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v32 = [*(a1 + 40) queryIteration];
    v33 = [v7 interfaceElementIdentifier];
    v40.x = v25;
    v40.y = point;
    v34 = NSStringFromCGPoint(v40);
    LODWORD(buf.a) = 134349570;
    *(&buf.a + 4) = v32;
    WORD2(buf.b) = 2112;
    *(&buf.b + 6) = v33;
    HIWORD(buf.c) = 2112;
    *&buf.d = v34;
    _os_log_debug_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEBUG, "[%{public}lu] Updated center for container description '%@': %@", &buf, 0x20u);
  }

  memset(&buf, 0, sizeof(buf));
  [v7 contentScale];
  SBSAAffineTransformFromContentScale(&buf, v27, v28);
  v36 = buf;
  CGAffineTransformInvert(&v37, &v36);
  v41.origin.x = v9;
  v41.origin.y = v11;
  v41.size.width = v13;
  v41.size.height = v15;
  v42 = CGRectApplyAffineTransform(v41, &v37);
  [v7 setContentBounds:{v42.origin.x, v42.origin.y, v42.size.width, v42.size.height}];
  UIRectGetCenter();
  [v7 setContentCenter:?];
}

void __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_57(uint64_t a1, void *a2)
{
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
      __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_57_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 88) == 1)
  {
    v8 = *(a1 + 40);
    v9 = [*(a1 + 48) elementContexts];
    v10 = SBSAElementContextAssociatedWithContainerViewDescription(v8, v9, 0);

    v11 = [*(a1 + 32) _fluidBehaviorSettingsForTransitionPhase:*(*(a1 + 32) + 40) forElementContext:v10];
    v12 = [objc_opt_class() newAnimatedTransitionDescriptionWithBehaviorSettings:v11];
    [v7 setAnimatedTransitionDescription:v12 forProperty:*(a1 + 56) withMilestones:0];
    v13 = *(a1 + 56);
    v14 = [SBSAInterfaceElementPropertyIdentity alloc];
    v15 = [*(a1 + 40) interfaceElementIdentifier];
    v16 = [(SBSAInterfaceElementPropertyIdentity *)v14 initWithAssociatedInterfaceElementIdentifier:v15 andProperty:@"center"];
    [v7 associateAnimatedTransitionDescriptionOfProperty:v13 withProperty:v16 withMilestones:0];

    v17 = *(a1 + 56);
    v18 = [SBSAInterfaceElementPropertyIdentity alloc];
    v19 = [*(a1 + 40) interfaceElementIdentifier];
    v20 = [(SBSAInterfaceElementPropertyIdentity *)v18 initWithAssociatedInterfaceElementIdentifier:v19 andProperty:@"contentBounds"];
    [v7 associateAnimatedTransitionDescriptionOfProperty:v17 withProperty:v20 withMilestones:0];

    v21 = *(a1 + 56);
    v22 = [SBSAInterfaceElementPropertyIdentity alloc];
    v23 = [*(a1 + 40) interfaceElementIdentifier];
    v24 = [(SBSAInterfaceElementPropertyIdentity *)v22 initWithAssociatedInterfaceElementIdentifier:v23 andProperty:@"contentCenter"];
    [v7 associateAnimatedTransitionDescriptionOfProperty:v21 withProperty:v24 withMilestones:0];
  }

  v25 = *(a1 + 32);
  if (!v25[7])
  {
    [v25 _progressMilestoneForTransitionPhase:v25[5]];
    if (v26 > 0.0)
    {
      v27 = *(a1 + 64);
      v28 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      [v27 addObject:v28];

      [*(a1 + 72) addObject:*(a1 + 56)];
      v29 = SBLogSystemAperturePreferencesStackSettling();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_57_cold_2(a1);
      }
    }
  }
}

void __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_74(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = objc_opt_self();
    v4 = v7;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (!v6)
    {
      __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_74_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  [v6 addMilestones:*(a1 + 40) forPropertyIdentity:*(a1 + 48)];
}

- (void)_setActivePhase:(int64_t)phase context:(id)context logReason:(id)reason
{
  v31 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  reasonCopy = reason;
  activePhase = self->_activePhase;
  v11 = SBLogSystemAperturePreferencesStackSettling();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (activePhase == phase)
  {
    if (v12)
    {
      queryIteration = [contextCopy queryIteration];
      v14 = self->_activePhase + 3;
      if (v14 != 3 && self->_activePhase < 0xFFFFFFFFFFFFFFFDLL)
      {
        v15 = @"[invalid]";
      }

      else
      {
        v15 = off_2783C0B30[v14];
      }

      v23 = 134349570;
      v24 = queryIteration;
      v25 = 2112;
      v26 = v15;
      v27 = 2112;
      v28 = reasonCopy;
      v19 = "[%{public}lu] (%@) Active Phase Not updated: %@";
      v20 = v11;
      v21 = 32;
LABEL_16:
      _os_log_debug_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEBUG, v19, &v23, v21);
    }
  }

  else if (v12)
  {
    queryIteration2 = [contextCopy queryIteration];
    v17 = self->_activePhase + 3;
    if (v17 != 3 && self->_activePhase < 0xFFFFFFFFFFFFFFFDLL)
    {
      v18 = @"[invalid]";
    }

    else
    {
      v18 = off_2783C0B30[v17];
    }

    if (phase != 0 && phase < 0xFFFFFFFFFFFFFFFDLL)
    {
      v22 = @"[invalid]";
    }

    else
    {
      v22 = off_2783C0B30[phase + 3];
    }

    v23 = 134349826;
    v24 = queryIteration2;
    v25 = 2112;
    v26 = v18;
    v27 = 2112;
    v28 = v22;
    v29 = 2112;
    v30 = reasonCopy;
    v19 = "[%{public}lu] (%@) -> (%@) Active Phase Updated: %@";
    v20 = v11;
    v21 = 42;
    goto LABEL_16;
  }

  self->_activePhase = phase;
}

- (id)_fluidBehaviorSettingsForTransitionPhase:(int64_t)phase forElementContext:(id)context
{
  systemApertureCustomLayoutCustomAnimationStyle = [context systemApertureCustomLayoutCustomAnimationStyle];
  settings = [objc_opt_class() settings];
  v7 = settings;
  if (systemApertureCustomLayoutCustomAnimationStyle == 3)
  {
    jindoBoundsOval = [settings jindoBoundsOval];
  }

  else
  {
    inertInterfaceElementTransitionSettings = [settings inertInterfaceElementTransitionSettings];
    jindoBoundsOval = [inertInterfaceElementTransitionSettings boundsBehaviorSettings];
  }

  if (phase == -2)
  {
    settings2 = [objc_opt_class() settings];
    inertCompensatingInterfaceElementTransitionSettings = [settings2 inertCompensatingInterfaceElementTransitionSettings];
    goto LABEL_9;
  }

  if (phase == -3 && systemApertureCustomLayoutCustomAnimationStyle != 3)
  {
    settings2 = [objc_opt_class() settings];
    inertCompensatingInterfaceElementTransitionSettings = [settings2 inertCollapsingInterfaceElementTransitionSettings];
LABEL_9:
    v12 = inertCompensatingInterfaceElementTransitionSettings;
    boundsBehaviorSettings = [inertCompensatingInterfaceElementTransitionSettings boundsBehaviorSettings];

    jindoBoundsOval = boundsBehaviorSettings;
  }

  return jindoBoundsOval;
}

- (double)_progressMilestoneForTransitionPhase:(int64_t)phase
{
  if (phase == -2)
  {
    settings = [objc_opt_class() settings];
    [settings boundsCompensatingPhaseChangeProgress];
    goto LABEL_5;
  }

  v3 = 0.0;
  if (phase == -3)
  {
    settings = [objc_opt_class() settings];
    [settings boundsCollapsingPhaseChangeProgress];
LABEL_5:
    v3 = v5;
  }

  return v3;
}

- (double)_overshootFractionForDampingRatio:(double)ratio
{
  if (!BSFloatLessThanFloat())
  {
    return 0.0;
  }

  v4 = ratio * -3.14159265 / sqrt(1.0 - ratio * ratio);

  return exp(v4);
}

- (UIEdgeInsets)_overshootOutsetsTargetingContainerDescription:(id)description initialContainerDescription:(id)containerDescription settings:(id)settings context:(id)context
{
  v86 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  containerDescriptionCopy = containerDescription;
  settingsCopy = settings;
  contextCopy = context;
  v14 = *(MEMORY[0x277D768C8] + 8);
  v75 = *(MEMORY[0x277D768C8] + 16);
  v73 = *MEMORY[0x277D768C8];
  v74 = *(MEMORY[0x277D768C8] + 24);
  [containerDescriptionCopy bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [descriptionCopy bounds];
  height = v87.size.height;
  x = v87.origin.x;
  width = v87.size.width;
  y = v87.origin.y;
  v100.origin.x = v16;
  v100.origin.y = v18;
  aRect = v20;
  v100.size.width = v20;
  v100.size.height = v22;
  if (CGRectContainsRect(v87, v100))
  {
    goto LABEL_5;
  }

  v67 = v14;
  v23 = SBLogSystemAperturePreferencesStackSettling();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    queryIteration = [contextCopy queryIteration];
    v97.origin.x = v16;
    v97.origin.y = v18;
    v97.size.width = v20;
    v97.size.height = v22;
    v58 = NSStringFromRect(v97);
    v98.size.height = height;
    v98.origin.x = x;
    v98.size.width = width;
    v98.origin.y = y;
    v59 = NSStringFromRect(v98);
    associatedSystemApertureElementIdentity = [descriptionCopy associatedSystemApertureElementIdentity];
    elementIdentifier = [associatedSystemApertureElementIdentity elementIdentifier];
    interfaceElementIdentifier = [descriptionCopy interfaceElementIdentifier];
    *buf = 134350082;
    v77 = queryIteration;
    v78 = 2112;
    v79 = v58;
    v80 = 2112;
    v81 = v59;
    v82 = 2112;
    v83 = elementIdentifier;
    v84 = 2112;
    v85 = interfaceElementIdentifier;
    _os_log_debug_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEBUG, "[%{public}lu] initial:(%@) target:(%@) '%@' -> %@", buf, 0x34u);
  }

  [settingsCopy dampingRatio];
  [(SBSASettlingBehaviorProvider *)self _overshootFractionForDampingRatio:?];
  if (BSFloatIsZero())
  {
LABEL_5:
    v24 = v73;
  }

  else
  {
    [descriptionCopy boundsVelocity];
    v30 = v29;
    v63 = v31;
    v64 = v29;
    v32 = v31;
    v34 = v33;
    v62 = v33;
    v36 = v35;
    v88.origin.x = v16;
    v88.origin.y = v18;
    v88.size.height = v22;
    v88.size.width = aRect;
    CGRectGetMaxX(v88);
    v89.size.width = width;
    v89.origin.y = y;
    v89.size.height = height;
    v89.origin.x = x;
    CGRectGetMaxX(v89);
    v90.origin.x = v30;
    v90.origin.y = v32;
    v90.size.width = v34;
    v90.size.height = v36;
    CGRectGetWidth(v90);
    v91.origin.y = v18;
    v91.origin.x = v16;
    v91.size.width = aRect;
    v91.size.height = v22;
    CGRectGetMaxY(v91);
    v92.origin.x = x;
    v92.origin.y = y;
    v92.size.width = width;
    v92.size.height = height;
    CGRectGetMaxY(v92);
    v93.origin.y = v63;
    v93.origin.x = v64;
    v93.size.width = v62;
    v93.size.height = v36;
    CGRectGetHeight(v93);
    [contextCopy displayScale];
    BSFloatRoundForScale();
    v38 = v37;
    BSFloatRoundForScale();
    v40 = v39;
    v94.origin.x = x;
    v94.origin.y = y;
    v94.size.width = width;
    v94.size.height = height;
    CGRectGetWidth(v94);
    v95.origin.x = x;
    v95.origin.y = y;
    v95.size.width = width;
    v95.size.height = height;
    CGRectGetHeight(v95);
    BSRectWithSize();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    [contextCopy inertContainerFrame];
    BSRectWithSize();
    v101.origin.x = v49;
    v101.origin.y = v50;
    v101.size.width = v51;
    v101.size.height = v52;
    v96.origin.x = v42;
    v96.origin.y = v44;
    v96.size.width = v46;
    v96.size.height = v48;
    v14 = v67;
    v24 = v73;
    if (!CGRectContainsRect(v96, v101))
    {
      elementContexts = [contextCopy elementContexts];
      v54 = SBSAElementContextAssociatedWithContainerViewDescription(containerDescriptionCopy, elementContexts, 0);

      interfaceOrientation = [v54 interfaceOrientation];
      v56 = v38 * -2.0;
      if (interfaceOrientation == 3)
      {
        v57 = v38 * -2.0;
      }

      else
      {
        v57 = -v38;
      }

      if (interfaceOrientation == 4)
      {
        v57 = -v38;
      }

      else
      {
        v56 = -v38;
      }

      if (interfaceOrientation < 3)
      {
        v57 = -v38;
      }

      v74 = v57;
      v75 = -v40;
      if (interfaceOrientation >= 3)
      {
        v14 = v56;
      }

      else
      {
        v14 = -v38;
      }

      if (interfaceOrientation >= 3)
      {
        v24 = -v40;
      }

      else
      {
        v24 = v40 * -2.0;
      }
    }
  }

  v25 = v24;
  v26 = v14;
  v28 = v74;
  v27 = v75;
  result.right = v28;
  result.bottom = v27;
  result.left = v26;
  result.top = v25;
  return result;
}

- (UIEdgeInsets)_overshootOutsetsForTransitionPhase:(int64_t)phase baseOutsets:(UIEdgeInsets)outsets elementContext:(id)context
{
  right = outsets.right;
  bottom = outsets.bottom;
  left = outsets.left;
  top = outsets.top;
  contextCopy = context;
  v11 = contextCopy;
  if ((phase + 1) < 2)
  {
    top = *MEMORY[0x277D768C8];
    left = *(MEMORY[0x277D768C8] + 8);
    bottom = *(MEMORY[0x277D768C8] + 16);
    right = *(MEMORY[0x277D768C8] + 24);
  }

  else if (phase == -2)
  {
    interfaceOrientation = [contextCopy interfaceOrientation];
    v16 = top + top;
    v17 = bottom + bottom;
    v18 = right + left;
    v19 = left + right;
    if (interfaceOrientation == 3)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = right;
    }

    if (interfaceOrientation == 3)
    {
      v21 = bottom + bottom;
    }

    else
    {
      v21 = bottom;
    }

    if (interfaceOrientation == 3)
    {
      v22 = top + top;
    }

    else
    {
      v19 = left;
      v22 = top;
    }

    if (interfaceOrientation == 4)
    {
      v19 = 0.0;
    }

    else
    {
      v18 = v20;
      v17 = v21;
      v16 = v22;
    }

    if (interfaceOrientation >= 3)
    {
      right = v18;
    }

    else
    {
      right = right + right;
    }

    if (interfaceOrientation >= 3)
    {
      bottom = v17;
    }

    else
    {
      bottom = bottom + top;
    }

    if (interfaceOrientation >= 3)
    {
      left = v19;
    }

    else
    {
      left = left + left;
    }

    if (interfaceOrientation >= 3)
    {
      top = v16;
    }

    else
    {
      top = 0.0;
    }
  }

  else if (phase == -3)
  {
    interfaceOrientation2 = [contextCopy interfaceOrientation];
    v13 = right * 0.5;
    v14 = left * 0.5;
    if (interfaceOrientation2 != 3)
    {
      v14 = left;
    }

    if (interfaceOrientation2 == 4)
    {
      v14 = left;
    }

    else
    {
      v13 = right;
    }

    if (interfaceOrientation2 < 3)
    {
      bottom = 0.0;
    }

    else
    {
      right = v13;
    }

    if (interfaceOrientation2 >= 3)
    {
      left = v14;
    }
  }

  v23 = top;
  v24 = left;
  v25 = bottom;
  v26 = right;
  result.right = v26;
  result.bottom = v25;
  result.left = v24;
  result.top = v23;
  return result;
}

- (void)preferencesFromContext:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSClassFromString(&cfstr_Sbsacontext.isa);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v8 handleFailureInMethod:a2 object:a3 file:@"SBSASettlingBehaviorProvider.m" lineNumber:94 description:{@"Unexpected class – expected '%@', got '%@'", v5, v7}];
}

- (void)preferencesFromContext:(void *)a1 .cold.2(void *a1)
{
  [a1 queryIteration];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)preferencesFromContext:(uint64_t)a1 .cold.3(uint64_t a1, void *a2)
{
  v4 = OUTLINED_FUNCTION_6_12(a1, a2);
  *v3 = 134349056;
  *v2 = v4;
  OUTLINED_FUNCTION_5_14(&dword_21ED4E000, v5, v6, "[%{public}lu] Collision threshold reached (collapsing)");
}

- (void)preferencesFromContext:(uint64_t)a1 .cold.4(uint64_t a1, void *a2)
{
  v4 = OUTLINED_FUNCTION_6_12(a1, a2);
  *v3 = 134349056;
  *v2 = v4;
  OUTLINED_FUNCTION_5_14(&dword_21ED4E000, v5, v6, "[%{public}lu] Steady state reached");
}

- (void)preferencesFromContext:(void *)a1 .cold.5(void *a1)
{
  [a1 queryIteration];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)preferencesFromContext:(void *)a1 .cold.6(void *a1)
{
  [a1 queryIteration];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_52_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsacontainerv.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_57_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_57_cold_2(uint64_t a1)
{
  [*(a1 + 48) queryIteration];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __55__SBSASettlingBehaviorProvider_preferencesFromContext___block_invoke_74_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

@end