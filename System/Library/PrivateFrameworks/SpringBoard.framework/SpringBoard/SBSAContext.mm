@interface SBSAContext
+ (id)instanceWithBlock:(id)a3;
+ (id)instanceWithQueryIteration:(unint64_t)a3 block:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BSOrderedDictionary)dictionaryDescription;
- (CGRect)inertContainerFrame;
- (CGRect)systemContainerBounds;
- (NSString)description;
- (SBSAContext)initWithQueryIteration:(unint64_t)a3;
- (UIEdgeInsets)landscapeScreenEdgeInsets;
- (id)_initWithContext:(id)a3;
- (id)copyByAddingFlags:(unint64_t)a3 debugRequestingProvider:(id)a4;
- (id)copyByAddingSignals:(unint64_t)a3 debugRequestingProvider:(id)a4;
- (id)copyByUpdatingPreferences:(id)a3;
- (id)copyWithBlock:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation SBSAContext

- (CGRect)inertContainerFrame
{
  x = self->_inertContainerFrame.origin.x;
  y = self->_inertContainerFrame.origin.y;
  width = self->_inertContainerFrame.size.width;
  height = self->_inertContainerFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)systemContainerBounds
{
  x = self->_systemContainerBounds.origin.x;
  y = self->_systemContainerBounds.origin.y;
  width = self->_systemContainerBounds.size.width;
  height = self->_systemContainerBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIEdgeInsets)landscapeScreenEdgeInsets
{
  top = self->_landscapeScreenEdgeInsets.top;
  left = self->_landscapeScreenEdgeInsets.left;
  bottom = self->_landscapeScreenEdgeInsets.bottom;
  right = self->_landscapeScreenEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (SBSAContext)initWithQueryIteration:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = SBSAContext;
  result = [(SBSAContext *)&v5 init];
  if (result)
  {
    result->_queryIteration = a3;
  }

  return result;
}

- (id)_initWithContext:(id)a3
{
  v4 = a3;
  v5 = -[SBSAContext initWithQueryIteration:](self, "initWithQueryIteration:", [v4 queryIteration]);
  if (v5)
  {
    [v4 displayScale];
    v5->_displayScale = v6;
    v5->_minimumNumberOfContainers = [v4 minimumNumberOfContainers];
    v5->_maximumNumberOfElements = [v4 maximumNumberOfElements];
    [v4 inertContainerFrame];
    v5->_inertContainerFrame.origin.x = v7;
    v5->_inertContainerFrame.origin.y = v8;
    v5->_inertContainerFrame.size.width = v9;
    v5->_inertContainerFrame.size.height = v10;
    [v4 systemContainerBounds];
    v5->_systemContainerBounds.origin.x = v11;
    v5->_systemContainerBounds.origin.y = v12;
    v5->_systemContainerBounds.size.width = v13;
    v5->_systemContainerBounds.size.height = v14;
    v15 = [v4 platformMetrics];
    v16 = [v15 copy];
    platformMetrics = v5->_platformMetrics;
    v5->_platformMetrics = v16;

    v5->_layoutDirection = [v4 layoutDirection];
    [v4 landscapeScreenEdgeInsets];
    v5->_landscapeScreenEdgeInsets.top = v18;
    v5->_landscapeScreenEdgeInsets.left = v19;
    v5->_landscapeScreenEdgeInsets.bottom = v20;
    v5->_landscapeScreenEdgeInsets.right = v21;
    v5->_overrideRenderingStyle = [v4 overrideRenderingStyle];
    v5->_cloningStyle = [v4 cloningStyle];
    v5->_activeDisplay = [v4 activeDisplay];
    v5->_backlightLuminanceLevel = [v4 backlightLuminanceLevel];
    v5->_heavyShadowRequiredForTransition = [v4 isHeavyShadowRequiredForTransition];
    v5->_keyLineRequiredForTransition = [v4 isKeyLineRequiredForTransition];
    v5->_clearModeEnabled = [v4 isClearModeEnabled];
    v5->_accessibilityZoomActiveAndEnabled = [v4 isAccessibilityZoomActiveAndEnabled];
    v5->_reduceTransparencyEnabled = [v4 isReduceTransparencyEnabled];
    v5->_animatedTransitionInProgress = [v4 isAnimatedTransitionInProgress];
    v5->_reachabilityActiveOrAnimating = [v4 isReachabilityActiveOrAnimating];
    v22 = [v4 indicatorElementContext];
    v23 = [v22 copy];
    indicatorElementContext = v5->_indicatorElementContext;
    v5->_indicatorElementContext = v23;

    v25 = [v4 maintainedPreferences];
    v26 = [v25 copy];
    maintainedPreferences = v5->_maintainedPreferences;
    v5->_maintainedPreferences = v26;

    v28 = [v4 containerParentViewDescription];
    v29 = [v28 copy];
    containerParentViewDescription = v5->_containerParentViewDescription;
    v5->_containerParentViewDescription = v29;

    v31 = [v4 requests];
    v32 = [v31 copy];
    requests = v5->_requests;
    v5->_requests = v32;

    v34 = [v4 elementContexts];
    v35 = [v34 copy];
    elementContexts = v5->_elementContexts;
    v5->_elementContexts = v35;

    v37 = [v4 elementInteractionResults];
    v38 = [v37 copy];
    elementInteractionResults = v5->_elementInteractionResults;
    v5->_elementInteractionResults = v38;

    v40 = [v4 elementSnapshotContexts];
    v41 = [v40 copy];
    elementSnapshotContexts = v5->_elementSnapshotContexts;
    v5->_elementSnapshotContexts = v41;

    v43 = [v4 secureFlipBookElementContexts];
    v44 = [v43 copy];
    secureFlipBookElementContexts = v5->_secureFlipBookElementContexts;
    v5->_secureFlipBookElementContexts = v44;

    v46 = [v4 secureFlipBookRenderingContext];
    v47 = [v46 copy];
    secureFlipBookRenderingContext = v5->_secureFlipBookRenderingContext;
    v5->_secureFlipBookRenderingContext = v47;

    v49 = [v4 defaultsContext];
    v50 = [v49 copy];
    defaultsContext = v5->_defaultsContext;
    v5->_defaultsContext = v50;

    v52 = [v4 gestureDescriptions];
    v53 = [v52 copy];
    gestureDescriptions = v5->_gestureDescriptions;
    v5->_gestureDescriptions = v53;

    v55 = [v4 animatedTransitionResults];
    v56 = [v55 copy];
    animatedTransitionResults = v5->_animatedTransitionResults;
    v5->_animatedTransitionResults = v56;

    v58 = [v4 elapsedTimerDescriptions];
    v59 = [v58 copy];
    elapsedTimerDescriptions = v5->_elapsedTimerDescriptions;
    v5->_elapsedTimerDescriptions = v59;

    v61 = [v4 indicatorContainerViewDescription];
    v62 = [v61 copy];
    indicatorContainerViewDescription = v5->_indicatorContainerViewDescription;
    v5->_indicatorContainerViewDescription = v62;

    v64 = [v4 containerViewDescriptions];
    v65 = [v64 copy];
    containerViewDescriptions = v5->_containerViewDescriptions;
    v5->_containerViewDescriptions = v65;

    v67 = [v4 preferences];
    v68 = [v67 copy];
    preferences = v5->_preferences;
    v5->_preferences = v68;

    v5->_signals = [v4 signals];
    v5->_flags = [v4 flags];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v101 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  queryIteration = self->_queryIteration;
  v186[0] = MEMORY[0x277D85DD0];
  v186[1] = 3221225472;
  v186[2] = __23__SBSAContext_isEqual___block_invoke;
  v186[3] = &unk_2783A9500;
  v6 = v4;
  v187 = v6;
  v100 = [v101 appendUnsignedInteger:queryIteration counterpart:v186];
  maximumNumberOfElements = self->_maximumNumberOfElements;
  v184[0] = MEMORY[0x277D85DD0];
  v184[1] = 3221225472;
  v184[2] = __23__SBSAContext_isEqual___block_invoke_2;
  v184[3] = &unk_2783A9500;
  v8 = v6;
  v185 = v8;
  v99 = [v100 appendUnsignedInteger:maximumNumberOfElements counterpart:v184];
  minimumNumberOfContainers = self->_minimumNumberOfContainers;
  v182[0] = MEMORY[0x277D85DD0];
  v182[1] = 3221225472;
  v182[2] = __23__SBSAContext_isEqual___block_invoke_3;
  v182[3] = &unk_2783A9500;
  v10 = v8;
  v183 = v10;
  v98 = [v99 appendUnsignedInteger:minimumNumberOfContainers counterpart:v182];
  v180[0] = MEMORY[0x277D85DD0];
  v180[1] = 3221225472;
  v180[2] = __23__SBSAContext_isEqual___block_invoke_4;
  v180[3] = &unk_2783B0268;
  v11 = v10;
  v181 = v11;
  v97 = [v98 appendCGRect:v180 counterpart:{self->_inertContainerFrame.origin.x, self->_inertContainerFrame.origin.y, self->_inertContainerFrame.size.width, self->_inertContainerFrame.size.height}];
  v178[0] = MEMORY[0x277D85DD0];
  v178[1] = 3221225472;
  v178[2] = __23__SBSAContext_isEqual___block_invoke_5;
  v178[3] = &unk_2783B0268;
  v12 = v11;
  v179 = v12;
  v96 = [v97 appendCGRect:v178 counterpart:{self->_systemContainerBounds.origin.x, self->_systemContainerBounds.origin.y, self->_systemContainerBounds.size.width, self->_systemContainerBounds.size.height}];
  platformMetrics = self->_platformMetrics;
  v176[0] = MEMORY[0x277D85DD0];
  v176[1] = 3221225472;
  v176[2] = __23__SBSAContext_isEqual___block_invoke_6;
  v176[3] = &unk_2783ACDB8;
  v14 = v12;
  v177 = v14;
  v95 = [v96 appendObject:platformMetrics counterpart:v176];
  layoutDirection = self->_layoutDirection;
  v174[0] = MEMORY[0x277D85DD0];
  v174[1] = 3221225472;
  v174[2] = __23__SBSAContext_isEqual___block_invoke_7;
  v174[3] = &unk_2783ACDE0;
  v16 = v14;
  v175 = v16;
  v94 = [v95 appendInteger:layoutDirection counterpart:v174];
  overrideRenderingStyle = self->_overrideRenderingStyle;
  v172[0] = MEMORY[0x277D85DD0];
  v172[1] = 3221225472;
  v172[2] = __23__SBSAContext_isEqual___block_invoke_8;
  v172[3] = &unk_2783ACDE0;
  v18 = v16;
  v173 = v18;
  v93 = [v94 appendInteger:overrideRenderingStyle counterpart:v172];
  cloningStyle = self->_cloningStyle;
  v170[0] = MEMORY[0x277D85DD0];
  v170[1] = 3221225472;
  v170[2] = __23__SBSAContext_isEqual___block_invoke_9;
  v170[3] = &unk_2783ACDE0;
  v20 = v18;
  v171 = v20;
  v92 = [v93 appendInteger:cloningStyle counterpart:v170];
  activeDisplay = self->_activeDisplay;
  v168[0] = MEMORY[0x277D85DD0];
  v168[1] = 3221225472;
  v168[2] = __23__SBSAContext_isEqual___block_invoke_10;
  v168[3] = &unk_2783ACDE0;
  v22 = v20;
  v169 = v22;
  v91 = [v92 appendInteger:activeDisplay counterpart:v168];
  backlightLuminanceLevel = self->_backlightLuminanceLevel;
  v166[0] = MEMORY[0x277D85DD0];
  v166[1] = 3221225472;
  v166[2] = __23__SBSAContext_isEqual___block_invoke_11;
  v166[3] = &unk_2783ACDE0;
  v24 = v22;
  v167 = v24;
  v90 = [v91 appendInteger:backlightLuminanceLevel counterpart:v166];
  heavyShadowRequiredForTransition = self->_heavyShadowRequiredForTransition;
  v164[0] = MEMORY[0x277D85DD0];
  v164[1] = 3221225472;
  v164[2] = __23__SBSAContext_isEqual___block_invoke_12;
  v164[3] = &unk_2783ACE58;
  v26 = v24;
  v165 = v26;
  v89 = [v90 appendBool:heavyShadowRequiredForTransition counterpart:v164];
  keyLineRequiredForTransition = self->_keyLineRequiredForTransition;
  v162[0] = MEMORY[0x277D85DD0];
  v162[1] = 3221225472;
  v162[2] = __23__SBSAContext_isEqual___block_invoke_13;
  v162[3] = &unk_2783ACE58;
  v28 = v26;
  v163 = v28;
  v88 = [v89 appendBool:keyLineRequiredForTransition counterpart:v162];
  clearModeEnabled = self->_clearModeEnabled;
  v160[0] = MEMORY[0x277D85DD0];
  v160[1] = 3221225472;
  v160[2] = __23__SBSAContext_isEqual___block_invoke_14;
  v160[3] = &unk_2783ACE58;
  v30 = v28;
  v161 = v30;
  v87 = [v88 appendBool:clearModeEnabled counterpart:v160];
  accessibilityZoomActiveAndEnabled = self->_accessibilityZoomActiveAndEnabled;
  v158[0] = MEMORY[0x277D85DD0];
  v158[1] = 3221225472;
  v158[2] = __23__SBSAContext_isEqual___block_invoke_15;
  v158[3] = &unk_2783ACE58;
  v32 = v30;
  v159 = v32;
  v86 = [v87 appendBool:accessibilityZoomActiveAndEnabled counterpart:v158];
  reduceTransparencyEnabled = self->_reduceTransparencyEnabled;
  v156[0] = MEMORY[0x277D85DD0];
  v156[1] = 3221225472;
  v156[2] = __23__SBSAContext_isEqual___block_invoke_16;
  v156[3] = &unk_2783ACE58;
  v34 = v32;
  v157 = v34;
  v85 = [v86 appendBool:reduceTransparencyEnabled counterpart:v156];
  animatedTransitionInProgress = self->_animatedTransitionInProgress;
  v154[0] = MEMORY[0x277D85DD0];
  v154[1] = 3221225472;
  v154[2] = __23__SBSAContext_isEqual___block_invoke_17;
  v154[3] = &unk_2783ACE58;
  v36 = v34;
  v155 = v36;
  v84 = [v85 appendBool:animatedTransitionInProgress counterpart:v154];
  reachabilityActiveOrAnimating = self->_reachabilityActiveOrAnimating;
  v152[0] = MEMORY[0x277D85DD0];
  v152[1] = 3221225472;
  v152[2] = __23__SBSAContext_isEqual___block_invoke_18;
  v152[3] = &unk_2783ACE58;
  v38 = v36;
  v153 = v38;
  v83 = [v84 appendBool:reachabilityActiveOrAnimating counterpart:v152];
  indicatorElementContext = self->_indicatorElementContext;
  v150[0] = MEMORY[0x277D85DD0];
  v150[1] = 3221225472;
  v150[2] = __23__SBSAContext_isEqual___block_invoke_19;
  v150[3] = &unk_2783ACDB8;
  v40 = v38;
  v151 = v40;
  v82 = [v83 appendObject:indicatorElementContext counterpart:v150];
  maintainedPreferences = self->_maintainedPreferences;
  v148[0] = MEMORY[0x277D85DD0];
  v148[1] = 3221225472;
  v148[2] = __23__SBSAContext_isEqual___block_invoke_20;
  v148[3] = &unk_2783ACDB8;
  v42 = v40;
  v149 = v42;
  v81 = [v82 appendObject:maintainedPreferences counterpart:v148];
  containerParentViewDescription = self->_containerParentViewDescription;
  v146[0] = MEMORY[0x277D85DD0];
  v146[1] = 3221225472;
  v146[2] = __23__SBSAContext_isEqual___block_invoke_21;
  v146[3] = &unk_2783ACDB8;
  v44 = v42;
  v147 = v44;
  v80 = [v81 appendObject:containerParentViewDescription counterpart:v146];
  defaultsContext = self->_defaultsContext;
  v144[0] = MEMORY[0x277D85DD0];
  v144[1] = 3221225472;
  v144[2] = __23__SBSAContext_isEqual___block_invoke_22;
  v144[3] = &unk_2783ACDB8;
  v46 = v44;
  v145 = v46;
  v79 = [v80 appendObject:defaultsContext counterpart:v144];
  indicatorContainerViewDescription = self->_indicatorContainerViewDescription;
  v142[0] = MEMORY[0x277D85DD0];
  v142[1] = 3221225472;
  v142[2] = __23__SBSAContext_isEqual___block_invoke_23;
  v142[3] = &unk_2783ACDB8;
  v48 = v46;
  v143 = v48;
  v78 = [v79 appendObject:indicatorContainerViewDescription counterpart:v142];
  secureFlipBookRenderingContext = self->_secureFlipBookRenderingContext;
  v140[0] = MEMORY[0x277D85DD0];
  v140[1] = 3221225472;
  v140[2] = __23__SBSAContext_isEqual___block_invoke_24;
  v140[3] = &unk_2783ACDB8;
  v50 = v48;
  v141 = v50;
  v104 = [v78 appendObject:secureFlipBookRenderingContext counterpart:v140];
  v138[0] = MEMORY[0x277D85DD0];
  v138[1] = 3221225472;
  v138[2] = __23__SBSAContext_isEqual___block_invoke_25;
  v138[3] = &unk_2783A94B0;
  v138[4] = self;
  v139 = v50;
  v135[0] = MEMORY[0x277D85DD0];
  v135[1] = 3221225472;
  v135[2] = __23__SBSAContext_isEqual___block_invoke_26;
  v135[3] = &unk_2783A94B0;
  v51 = v139;
  v136 = v51;
  v137 = self;
  v103 = MEMORY[0x223D6F7F0](v135);
  v132[0] = MEMORY[0x277D85DD0];
  v132[1] = 3221225472;
  v132[2] = __23__SBSAContext_isEqual___block_invoke_27;
  v132[3] = &unk_2783A94B0;
  v52 = v51;
  v133 = v52;
  v134 = self;
  v102 = MEMORY[0x223D6F7F0](v132);
  v129[0] = MEMORY[0x277D85DD0];
  v129[1] = 3221225472;
  v129[2] = __23__SBSAContext_isEqual___block_invoke_28;
  v129[3] = &unk_2783A94B0;
  v53 = v52;
  v130 = v53;
  v131 = self;
  v77 = MEMORY[0x223D6F7F0](v129);
  v126[0] = MEMORY[0x277D85DD0];
  v126[1] = 3221225472;
  v126[2] = __23__SBSAContext_isEqual___block_invoke_29;
  v126[3] = &unk_2783A94B0;
  v54 = v53;
  v127 = v54;
  v128 = self;
  v55 = MEMORY[0x223D6F7F0](v126);
  v123[0] = MEMORY[0x277D85DD0];
  v123[1] = 3221225472;
  v123[2] = __23__SBSAContext_isEqual___block_invoke_30;
  v123[3] = &unk_2783A94B0;
  v56 = v54;
  v124 = v56;
  v125 = self;
  v76 = MEMORY[0x223D6F7F0](v123);
  v120[0] = MEMORY[0x277D85DD0];
  v120[1] = 3221225472;
  v120[2] = __23__SBSAContext_isEqual___block_invoke_31;
  v120[3] = &unk_2783A94B0;
  v57 = v56;
  v121 = v57;
  v122 = self;
  v75 = MEMORY[0x223D6F7F0](v120);
  v117[0] = MEMORY[0x277D85DD0];
  v117[1] = 3221225472;
  v117[2] = __23__SBSAContext_isEqual___block_invoke_32;
  v117[3] = &unk_2783A94B0;
  v58 = v57;
  v118 = v58;
  v119 = self;
  v59 = MEMORY[0x223D6F7F0](v117);
  v114[0] = MEMORY[0x277D85DD0];
  v114[1] = 3221225472;
  v114[2] = __23__SBSAContext_isEqual___block_invoke_33;
  v114[3] = &unk_2783A94B0;
  v60 = v58;
  v115 = v60;
  v116 = self;
  v61 = MEMORY[0x223D6F7F0](v114);
  v111[0] = MEMORY[0x277D85DD0];
  v111[1] = 3221225472;
  v111[2] = __23__SBSAContext_isEqual___block_invoke_34;
  v111[3] = &unk_2783A94B0;
  v62 = v60;
  v112 = v62;
  v113 = self;
  v63 = MEMORY[0x223D6F7F0](v111);
  v64 = [v104 appendEqualsBlocks:{v138, v103, v102, v77, v55, v76, v75, v59, v61, v63, 0}];
  preferences = self->_preferences;
  v109[0] = MEMORY[0x277D85DD0];
  v109[1] = 3221225472;
  v109[2] = __23__SBSAContext_isEqual___block_invoke_35;
  v109[3] = &unk_2783ACDB8;
  v66 = v62;
  v110 = v66;
  v67 = [v64 appendObject:preferences counterpart:v109];
  signals = self->_signals;
  v107[0] = MEMORY[0x277D85DD0];
  v107[1] = 3221225472;
  v107[2] = __23__SBSAContext_isEqual___block_invoke_36;
  v107[3] = &unk_2783A9500;
  v69 = v66;
  v108 = v69;
  v70 = [v67 appendUnsignedInteger:signals counterpart:v107];
  flags = self->_flags;
  v105[0] = MEMORY[0x277D85DD0];
  v105[1] = 3221225472;
  v105[2] = __23__SBSAContext_isEqual___block_invoke_37;
  v105[3] = &unk_2783A9500;
  v106 = v69;
  v72 = v69;
  v73 = [v70 appendUnsignedInteger:flags counterpart:v105];
  LOBYTE(flags) = [v73 isEqual];

  return flags;
}

BOOL __23__SBSAContext_isEqual___block_invoke_25(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) landscapeScreenEdgeInsets];
  v5 = v1[39] == v4;
  if (v1[38] != v6)
  {
    v5 = 0;
  }

  if (v1[41] != v3)
  {
    v5 = 0;
  }

  return v1[40] == v2 && v5;
}

uint64_t __23__SBSAContext_isEqual___block_invoke_26(uint64_t a1)
{
  v1 = [*(a1 + 32) requests];
  v2 = BSEqualArrays();

  return v2;
}

uint64_t __23__SBSAContext_isEqual___block_invoke_27(uint64_t a1)
{
  v1 = [*(a1 + 32) elementContexts];
  v2 = BSEqualArrays();

  return v2;
}

uint64_t __23__SBSAContext_isEqual___block_invoke_28(uint64_t a1)
{
  v1 = [*(a1 + 32) elementInteractionResults];
  v2 = BSEqualArrays();

  return v2;
}

uint64_t __23__SBSAContext_isEqual___block_invoke_29(uint64_t a1)
{
  v1 = [*(a1 + 32) elementSnapshotContexts];
  v2 = BSEqualArrays();

  return v2;
}

uint64_t __23__SBSAContext_isEqual___block_invoke_30(uint64_t a1)
{
  v1 = [*(a1 + 32) secureFlipBookElementContexts];
  v2 = BSEqualArrays();

  return v2;
}

uint64_t __23__SBSAContext_isEqual___block_invoke_31(uint64_t a1)
{
  v1 = [*(a1 + 32) gestureDescriptions];
  v2 = BSEqualArrays();

  return v2;
}

uint64_t __23__SBSAContext_isEqual___block_invoke_32(uint64_t a1)
{
  v1 = [*(a1 + 32) animatedTransitionResults];
  v2 = BSEqualArrays();

  return v2;
}

uint64_t __23__SBSAContext_isEqual___block_invoke_33(uint64_t a1)
{
  v1 = [*(a1 + 32) animatedTransitionResults];
  v2 = BSEqualArrays();

  return v2;
}

uint64_t __23__SBSAContext_isEqual___block_invoke_34(uint64_t a1)
{
  v1 = [*(a1 + 32) containerViewDescriptions];
  v2 = BSEqualArrays();

  return v2;
}

- (unint64_t)hash
{
  v45 = [MEMORY[0x277CF0C40] builder];
  v44 = [v45 appendUnsignedInteger:self->_queryIteration];
  v43 = [v44 appendUnsignedInteger:self->_minimumNumberOfContainers];
  v42 = [v43 appendUnsignedInteger:self->_maximumNumberOfElements];
  v41 = [v42 appendCGRect:{self->_inertContainerFrame.origin.x, self->_inertContainerFrame.origin.y, self->_inertContainerFrame.size.width, self->_inertContainerFrame.size.height}];
  v40 = [v41 appendCGRect:{self->_systemContainerBounds.origin.x, self->_systemContainerBounds.origin.y, self->_systemContainerBounds.size.width, self->_systemContainerBounds.size.height}];
  v39 = [v40 appendInteger:self->_layoutDirection];
  v38 = [v39 appendCGFloat:self->_landscapeScreenEdgeInsets.top];
  v37 = [v38 appendCGFloat:self->_landscapeScreenEdgeInsets.left];
  v36 = [v37 appendCGFloat:self->_landscapeScreenEdgeInsets.bottom];
  v35 = [v36 appendCGFloat:self->_landscapeScreenEdgeInsets.right];
  v34 = [v35 appendInteger:self->_overrideRenderingStyle];
  v33 = [v34 appendInteger:self->_cloningStyle];
  v32 = [v33 appendInteger:self->_activeDisplay];
  v31 = [v32 appendInteger:self->_backlightLuminanceLevel];
  v30 = [v31 appendBool:self->_heavyShadowRequiredForTransition];
  v29 = [v30 appendBool:self->_keyLineRequiredForTransition];
  v28 = [v29 appendBool:self->_clearModeEnabled];
  v27 = [v28 appendBool:self->_accessibilityZoomActiveAndEnabled];
  v26 = [v27 appendBool:self->_reachabilityActiveOrAnimating];
  v25 = [v26 appendBool:self->_reduceTransparencyEnabled];
  v24 = [v25 appendBool:self->_animatedTransitionInProgress];
  v23 = [v24 appendObject:self->_indicatorElementContext];
  v22 = [v23 appendObject:self->_maintainedPreferences];
  v21 = [v22 appendObject:self->_containerParentViewDescription];
  v20 = [v21 appendObject:self->_platformMetrics];
  v18 = [v20 appendObject:self->_requests];
  v17 = [v18 appendObject:self->_elementContexts];
  v16 = [v17 appendObject:self->_elementInteractionResults];
  v15 = [v16 appendObject:self->_elementSnapshotContexts];
  v14 = [v15 appendObject:self->_secureFlipBookRenderingContext];
  v3 = [v14 appendObject:self->_secureFlipBookElementContexts];
  v4 = [v3 appendObject:self->_defaultsContext];
  v5 = [v4 appendObject:self->_gestureDescriptions];
  v6 = [v5 appendObject:self->_animatedTransitionResults];
  v7 = [v6 appendObject:self->_elapsedTimerDescriptions];
  v8 = [v7 appendObject:self->_indicatorContainerViewDescription];
  v9 = [v8 appendObject:self->_containerViewDescriptions];
  v10 = [v9 appendObject:self->_preferences];
  v11 = [v10 appendUnsignedInteger:self->_signals];
  v12 = [v11 appendUnsignedInteger:self->_flags];
  v19 = [v12 hash];

  return v19;
}

- (NSString)description
{
  v2 = [(SBSAContext *)self dictionaryDescription];
  v3 = SBSAStringFromDictionaryDescription(v2);

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 _initWithContext:self];
}

- (BSOrderedDictionary)dictionaryDescription
{
  v3 = objc_alloc(MEMORY[0x277CF0C78]);
  v4 = [MEMORY[0x277CF0C98] sortByInsertionOrder];
  v5 = [v3 initWithKeyOrderingStrategy:v4];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", self];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v5 setObject:v6 forKey:v8];

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", self->_queryIteration];
  [v5 setObject:v9 forKey:@"queryIteration"];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f", *&self->_displayScale];
  [v5 setObject:v10 forKey:@"displayScale"];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", self->_minimumNumberOfContainers];
  [v5 setObject:v11 forKey:@"minimumNumberOfContainers"];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", self->_maximumNumberOfElements];
  [v5 setObject:v12 forKey:@"maximumNumberOfElements"];

  v13 = NSStringFromCGRect(self->_inertContainerFrame);
  [v5 setObject:v13 forKey:@"inertContainerFrame"];

  v14 = NSStringFromCGRect(self->_systemContainerBounds);
  [v5 setObject:v14 forKey:@"systemContainerBounds"];

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", self->_platformMetrics];
  [v5 setObject:v15 forKey:@"platformMetrics"];

  v16 = SBSAStringFromUITraitEnvironmentLayoutDirection(self->_layoutDirection);
  [v5 setObject:v16 forKey:@"layoutDirection"];

  v17 = NSStringFromUIEdgeInsets(self->_landscapeScreenEdgeInsets);
  [v5 setObject:v17 forKey:@"landscapeScreenEdgeInsets"];

  v18 = SBStringFromSystemApertureContainerRenderingStyle(self->_overrideRenderingStyle);
  [v5 setObject:v18 forKey:@"overrideRenderingStyle"];

  v19 = SBStringFromSystemApertureContainerCloningStyle(self->_cloningStyle);
  [v5 setObject:v19 forKey:@"cloningStyle"];

  v20 = NSStringFromBOOL();
  [v5 setObject:v20 forKey:@"heavyShadowRequiredForTransition"];

  v21 = NSStringFromBOOL();
  [v5 setObject:v21 forKey:@"keyLineRequiredForTransition"];

  v22 = NSStringFromBOOL();
  [v5 setObject:v22 forKey:@"clearModeEnabled"];

  v23 = NSStringFromBOOL();
  [v5 setObject:v23 forKey:@"accessibilityZoomActiveAndEnabled"];

  v24 = NSStringFromBOOL();
  [v5 setObject:v24 forKey:@"reduceTransparencyEnabled"];

  v25 = NSStringFromBOOL();
  [v5 setObject:v25 forKey:@"animatedTransitionInProgress"];

  v26 = NSStringFromBOOL();
  [v5 setObject:v26 forKey:@"reachabilityActiveOrAnimating"];

  v27 = [(SBSAIndicatorElementContext *)self->_indicatorElementContext description];
  v28 = v27;
  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = @"nil";
  }

  [v5 setObject:v29 forKey:@"indicatorElementContext"];

  v30 = SBStringFromSBSystemApertureActiveDisplay(self->_activeDisplay);
  [v5 setObject:v30 forKey:@"activeDisplay"];

  v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", self->_backlightLuminanceLevel];
  [v5 setObject:v31 forKey:@"backlightLuminanceLevel"];

  indicatorElementContext = self->_indicatorElementContext;
  if (indicatorElementContext)
  {
    v33 = [(SBSAIndicatorElementContext *)indicatorElementContext description];
    [v5 setObject:v33 forKey:@"indicatorElementContext"];
  }

  maintainedPreferences = self->_maintainedPreferences;
  if (maintainedPreferences)
  {
    v35 = [(SBSAMaintainedPreferences *)maintainedPreferences description];
    [v5 setObject:v35 forKey:@"maintainedPreferences"];
  }

  containerParentViewDescription = self->_containerParentViewDescription;
  if (containerParentViewDescription)
  {
    v37 = [(SBSAViewDescription *)containerParentViewDescription description];
    [v5 setObject:v37 forKey:@"containerParentViewDescription"];
  }

  if ([(NSArray *)self->_requests count])
  {
    v38 = [(NSArray *)self->_requests description];
    [v5 setObject:v38 forKey:@"requests"];
  }

  if ([(NSArray *)self->_elementContexts count])
  {
    [v5 setObject:self->_elementContexts forKey:@"elementContexts"];
  }

  if ([(NSArray *)self->_elementInteractionResults count])
  {
    [v5 setObject:self->_elementInteractionResults forKey:@"elementInteractionResults"];
  }

  if ([(NSArray *)self->_elementSnapshotContexts count])
  {
    v39 = [(NSArray *)self->_elementSnapshotContexts description];
    [v5 setObject:v39 forKey:@"elementSnapshotContexts"];
  }

  if ([(NSArray *)self->_secureFlipBookElementContexts count])
  {
    v40 = [(NSArray *)self->_secureFlipBookElementContexts description];
    [v5 setObject:v40 forKey:@"secureFlipBookElementContexts"];
  }

  secureFlipBookRenderingContext = self->_secureFlipBookRenderingContext;
  if (secureFlipBookRenderingContext)
  {
    v42 = [(SBSAAbstractDictionaryBackedContext *)secureFlipBookRenderingContext description];
    [v5 setObject:v42 forKey:@"secureFlipBookRenderingContext"];
  }

  defaultsContext = self->_defaultsContext;
  if (defaultsContext)
  {
    v44 = [(SBSADefaultsContext *)defaultsContext description];
    [v5 setObject:v44 forKey:@"defaultsContext"];
  }

  if ([(NSArray *)self->_gestureDescriptions count])
  {
    v45 = [(NSArray *)self->_gestureDescriptions description];
    [v5 setObject:v45 forKey:@"gestureDescriptions"];
  }

  if ([(NSArray *)self->_animatedTransitionResults count])
  {
    v46 = [(NSArray *)self->_animatedTransitionResults description];
    [v5 setObject:v46 forKey:@"animatedTransitionResults"];
  }

  if ([(NSArray *)self->_elapsedTimerDescriptions count])
  {
    v47 = [(NSArray *)self->_elapsedTimerDescriptions description];
    [v5 setObject:v47 forKey:@"elapsedTimerDescriptions"];
  }

  indicatorContainerViewDescription = self->_indicatorContainerViewDescription;
  if (indicatorContainerViewDescription)
  {
    v49 = [(SBSAContainerViewDescription *)indicatorContainerViewDescription description];
    [v5 setObject:v49 forKey:@"indicatorContainerViewDescription"];
  }

  if ([(NSArray *)self->_containerViewDescriptions count])
  {
    [v5 setObject:self->_containerViewDescriptions forKey:@"containerViewDescriptions"];
  }

  v50 = _StringFromPreferencesStackSignals(self->_signals);
  [v5 setObject:v50 forKey:@"signals"];

  v51 = _StringFromPreferencesStackFlags(self->_flags);
  [v5 setObject:v51 forKey:@"flags"];

  v52 = SBStringFromSBSystemApertureActiveDisplay(self->_activeDisplay);
  [v5 setObject:v52 forKey:@"activeDisplay"];

  preferences = self->_preferences;
  if (preferences)
  {
    [v5 setObject:preferences forKey:@"preferences"];
  }

  return v5;
}

+ (id)instanceWithBlock:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];

  return 0;
}

+ (id)instanceWithQueryIteration:(unint64_t)a3 block:(id)a4
{
  v5 = a4;
  v6 = [objc_alloc(objc_opt_class()) initWithQueryIteration:a3];
  v7 = [v6 copyWithBlock:v5];

  return v7;
}

- (id)copyWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(SBSAContext *)self copy];
  if (v4)
  {
    v6 = [objc_alloc(objc_msgSend(objc_opt_class() "mutatorClass"))];
    v4[2](v4, v6);
  }

  return v5;
}

- (id)copyByAddingSignals:(unint64_t)a3 debugRequestingProvider:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = self;
  if (a3)
  {
    v9 = SBLogSystemAperturePreferencesStack();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = [(SBSAContext *)v8 queryIteration];
      v13 = _StringFromPreferencesStackSignals(a3);
      v14 = [v7 description];
      *buf = 134349570;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      _os_log_debug_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEBUG, "[%{public}lu] Signals added: <%@> by provider: %@", buf, 0x20u);
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __68__SBSAContext_Private__copyByAddingSignals_debugRequestingProvider___block_invoke;
    v15[3] = &unk_2783ACD90;
    v15[4] = v8;
    v15[5] = a2;
    v15[6] = a3;
    v10 = [(SBSAContext *)v8 copyWithBlock:v15];

    v8 = v10;
  }

  return v8;
}

void __68__SBSAContext_Private__copyByAddingSignals_debugRequestingProvider___block_invoke(uint64_t a1, void *a2)
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
      __68__SBSAContext_Private__copyByAddingSignals_debugRequestingProvider___block_invoke_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  [v6 setSignals:{*(a1 + 48) | objc_msgSend(v6, "signals")}];
}

- (id)copyByAddingFlags:(unint64_t)a3 debugRequestingProvider:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = self;
  if (a3)
  {
    v9 = SBLogSystemAperturePreferencesStack();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = [(SBSAContext *)v8 queryIteration];
      v13 = _StringFromPreferencesStackFlags(a3);
      v14 = [v7 description];
      *buf = 134349570;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      _os_log_debug_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEBUG, "[%{public}lu] Flags Added: <%@> by provider: %@", buf, 0x20u);
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __66__SBSAContext_Private__copyByAddingFlags_debugRequestingProvider___block_invoke;
    v15[3] = &unk_2783ACD90;
    v15[4] = v8;
    v15[5] = a2;
    v15[6] = a3;
    v10 = [(SBSAContext *)v8 copyWithBlock:v15];

    v8 = v10;
  }

  return v8;
}

void __66__SBSAContext_Private__copyByAddingFlags_debugRequestingProvider___block_invoke(uint64_t a1, void *a2)
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
      __66__SBSAContext_Private__copyByAddingFlags_debugRequestingProvider___block_invoke_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  [v6 setFlags:{*(a1 + 48) | objc_msgSend(v6, "flags")}];
}

- (id)copyByUpdatingPreferences:(id)a3
{
  v5 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__SBSAContext_Private__copyByUpdatingPreferences___block_invoke;
  v9[3] = &unk_2783AD750;
  v10 = v5;
  v11 = a2;
  v9[4] = self;
  v6 = v5;
  v7 = [(SBSAContext *)self copyWithBlock:v9];

  return v7;
}

void __50__SBSAContext_Private__copyByUpdatingPreferences___block_invoke(uint64_t a1, void *a2)
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
      __50__SBSAContext_Private__copyByUpdatingPreferences___block_invoke_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  [v6 setPreferences:*(a1 + 40)];
}

void __68__SBSAContext_Private__copyByAddingSignals_debugRequestingProvider___block_invoke_cold_1()
{
  v9 = [MEMORY[0x277CCA890] currentHandler];
  v0 = NSClassFromString(&cfstr_Sbsacontextmut.isa);
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __66__SBSAContext_Private__copyByAddingFlags_debugRequestingProvider___block_invoke_cold_1()
{
  v9 = [MEMORY[0x277CCA890] currentHandler];
  v0 = NSClassFromString(&cfstr_Sbsacontextmut.isa);
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __50__SBSAContext_Private__copyByUpdatingPreferences___block_invoke_cold_1()
{
  v9 = [MEMORY[0x277CCA890] currentHandler];
  v0 = NSClassFromString(&cfstr_Sbsacontextmut.isa);
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

@end