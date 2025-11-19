@interface SBSystemApertureSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBSystemApertureSettings

- (void)setDefaultValues
{
  v304.receiver = self;
  v304.super_class = SBSystemApertureSettings;
  [(PTSettings *)&v304 setDefaultValues];
  v3 = [(SBSystemApertureSettings *)self jindoBoundsOval];
  [v3 setDefaultValues];

  v4 = [(SBSystemApertureSettings *)self jindoBoundsOval];
  [v4 setBehaviorType:1];

  v5 = [(SBSystemApertureSettings *)self jindoBoundsOval];
  [v5 setDampingRatio:1.0];

  v6 = [(SBSystemApertureSettings *)self jindoBoundsOval];
  [v6 setResponse:0.6];

  v7 = [(SBSystemApertureSettings *)self jindoBoundsOval];
  [v7 setName:@"Jindo Bounds Oval"];

  v8 = [(SBSystemApertureSettings *)self jindoBoundsOval];
  v305 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v8 setFrameRateRange:1114137 highFrameRateReason:{*&v305.minimum, *&v305.maximum, *&v305.preferred}];

  [(SBSystemApertureSettings *)self setSensorShadowVisible:0];
  [(SBSystemApertureSettings *)self setSensorShadowOpacityFactor:1.6];
  [(SBSystemApertureSettings *)self setHighlightTransitions:0];
  [(SBSystemApertureSettings *)self setBoundsCollisionProgress:0.77];
  [(SBSystemApertureSettings *)self setBoundsCollapsingPhaseChangeProgress:0.95];
  [(SBSystemApertureSettings *)self setBoundsCompensatingPhaseChangeProgress:0.75];
  [(SBSystemApertureSettings *)self setSensorObscuringShadowApexProgress:0.5];
  v9 = [(SBSystemApertureSettings *)self defaultInterfaceElementTransitionSettings];
  [v9 setDefaultValues];

  v10 = [(SBSystemApertureSettings *)self inertInterfaceElementTransitionSettings];
  [v10 setDefaultValues];

  v11 = [(SBSystemApertureSettings *)self inertInterfaceElementTransitionSettings];
  v12 = [v11 defaultBehaviorSettings];
  [v12 setDampingRatio:0.6];

  v13 = [(SBSystemApertureSettings *)self inertInterfaceElementTransitionSettings];
  v14 = [v13 centerBehaviorSettings];
  [v14 setDampingRatio:0.6];

  v15 = [(SBSystemApertureSettings *)self inertInterfaceElementTransitionSettings];
  v16 = [v15 boundsBehaviorSettings];
  [v16 setDampingRatio:0.6];

  v17 = [(SBSystemApertureSettings *)self inertInterfaceElementTransitionSettings];
  v18 = [v17 cornerRadiusBehaviorSettings];
  [v18 setDampingRatio:0.6];

  v19 = [(SBSystemApertureSettings *)self inertInterfaceElementTransitionSettings];
  v20 = [v19 alphaBehaviorSettings];
  [v20 setDampingRatio:0.6];

  v21 = [(SBSystemApertureSettings *)self inertInterfaceElementTransitionSettings];
  v22 = [v21 backgroundColorBehaviorSettings];
  [v22 setDampingRatio:0.6];

  v23 = [(SBSystemApertureSettings *)self inertInterfaceElementTransitionSettings];
  [v23 setChildBehaviorSettingsNamePrefix:@"Inert Transition"];

  v24 = [(SBSystemApertureSettings *)self inertCollapsingInterfaceElementTransitionSettings];
  [v24 setDefaultValues];

  v25 = [(SBSystemApertureSettings *)self inertCollapsingInterfaceElementTransitionSettings];
  v26 = [v25 defaultBehaviorSettings];
  [v26 setResponse:0.45];

  v27 = [(SBSystemApertureSettings *)self inertCollapsingInterfaceElementTransitionSettings];
  v28 = [v27 centerBehaviorSettings];
  [v28 setResponse:0.45];

  v29 = [(SBSystemApertureSettings *)self inertCollapsingInterfaceElementTransitionSettings];
  v30 = [v29 boundsBehaviorSettings];
  [v30 setResponse:0.45];

  v31 = [(SBSystemApertureSettings *)self inertCollapsingInterfaceElementTransitionSettings];
  v32 = [v31 cornerRadiusBehaviorSettings];
  [v32 setResponse:0.45];

  v33 = [(SBSystemApertureSettings *)self inertCollapsingInterfaceElementTransitionSettings];
  v34 = [v33 alphaBehaviorSettings];
  [v34 setResponse:0.45];

  v35 = [(SBSystemApertureSettings *)self inertCollapsingInterfaceElementTransitionSettings];
  v36 = [v35 backgroundColorBehaviorSettings];
  [v36 setResponse:0.45];

  v37 = [(SBSystemApertureSettings *)self inertCollapsingInterfaceElementTransitionSettings];
  [v37 setChildBehaviorSettingsNamePrefix:@"Inert Collapsing Transition"];

  v38 = [(SBSystemApertureSettings *)self inertCompensatingInterfaceElementTransitionSettings];
  [v38 setDefaultValues];

  v39 = [(SBSystemApertureSettings *)self inertCompensatingInterfaceElementTransitionSettings];
  v40 = [v39 defaultBehaviorSettings];
  [v40 setResponse:0.45];

  v41 = [(SBSystemApertureSettings *)self inertCompensatingInterfaceElementTransitionSettings];
  v42 = [v41 centerBehaviorSettings];
  [v42 setResponse:0.45];

  v43 = [(SBSystemApertureSettings *)self inertCompensatingInterfaceElementTransitionSettings];
  v44 = [v43 boundsBehaviorSettings];
  [v44 setResponse:0.45];

  v45 = [(SBSystemApertureSettings *)self inertCompensatingInterfaceElementTransitionSettings];
  v46 = [v45 cornerRadiusBehaviorSettings];
  [v46 setResponse:0.45];

  v47 = [(SBSystemApertureSettings *)self inertCompensatingInterfaceElementTransitionSettings];
  v48 = [v47 alphaBehaviorSettings];
  [v48 setResponse:0.45];

  v49 = [(SBSystemApertureSettings *)self inertCompensatingInterfaceElementTransitionSettings];
  v50 = [v49 backgroundColorBehaviorSettings];
  [v50 setResponse:0.45];

  v51 = [(SBSystemApertureSettings *)self inertCompensatingInterfaceElementTransitionSettings];
  [v51 setChildBehaviorSettingsNamePrefix:@"Inert Compensating Transition"];

  v52 = [(SBSystemApertureSettings *)self compactInterfaceElementTransitionSettings];
  [v52 setDefaultValues];

  v53 = [(SBSystemApertureSettings *)self compactInterfaceElementTransitionSettings];
  [v53 setChildBehaviorSettingsNamePrefix:@"Compact Transition"];

  v54 = [(SBSystemApertureSettings *)self minimalInterfaceElementTransitionSettings];
  [v54 setDefaultValues];

  v55 = [(SBSystemApertureSettings *)self minimalInterfaceElementTransitionSettings];
  [v55 setChildBehaviorSettingsNamePrefix:@"Minimal Transition"];

  v56 = [(SBSystemApertureSettings *)self customInterfaceElementTransitionSettings];
  [v56 setDefaultValues];

  v57 = [(SBSystemApertureSettings *)self customInterfaceElementTransitionSettings];
  [v57 setChildBehaviorSettingsNamePrefix:@"Custom Transition"];

  v58 = [(SBSystemApertureSettings *)self popToCustomInterfaceElementTransitionSettings];
  [v58 setDefaultValues];

  v59 = [(SBSystemApertureSettings *)self popToCustomInterfaceElementTransitionSettings];
  [v59 setChildBehaviorSettingsNamePrefix:@"Pop To Custom Transition"];

  v60 = [(SBSystemApertureSettings *)self popToCustomInterfaceElementTransitionSettings];
  v61 = [v60 defaultBehaviorSettings];
  [v61 setResponse:0.4];

  v62 = [(SBSystemApertureSettings *)self popToCustomInterfaceElementTransitionSettings];
  v63 = [v62 defaultBehaviorSettings];
  [v63 setDampingRatio:0.78];

  v64 = [(SBSystemApertureSettings *)self popToCustomInterfaceElementTransitionSettings];
  v65 = [v64 centerBehaviorSettings];
  [v65 setResponse:0.4];

  v66 = [(SBSystemApertureSettings *)self popToCustomInterfaceElementTransitionSettings];
  v67 = [v66 centerBehaviorSettings];
  [v67 setDampingRatio:0.78];

  v68 = [(SBSystemApertureSettings *)self popToCustomInterfaceElementTransitionSettings];
  v69 = [v68 boundsBehaviorSettings];
  [v69 setResponse:0.4];

  v70 = [(SBSystemApertureSettings *)self popToCustomInterfaceElementTransitionSettings];
  v71 = [v70 boundsBehaviorSettings];
  [v71 setDampingRatio:0.78];

  v72 = [(SBSystemApertureSettings *)self elementContentTransitionSettings];
  [v72 setDefaultValues];

  v73 = [(SBSystemApertureSettings *)self elementContentTransitionSettings];
  v74 = [v73 customContentBehaviorSettings];
  [v74 setResponse:0.6];

  v75 = [(SBSystemApertureSettings *)self elementContentTransitionSettings];
  v76 = [v75 snapshotBehaviorSettings];
  [v76 setResponse:0.3];

  v77 = [(SBSystemApertureSettings *)self elementContentTransitionSettings];
  [v77 setChildBehaviorSettingsNamePrefix:@"Element Content"];

  v78 = [(SBSystemApertureSettings *)self contentInteractionBeginBehaviorSettings];
  [v78 setDefaultValues];

  v79 = [(SBSystemApertureSettings *)self contentInteractionBeginBehaviorSettings];
  [v79 setBehaviorType:1];

  v80 = [(SBSystemApertureSettings *)self contentInteractionBeginBehaviorSettings];
  [v80 setDampingRatio:?];

  v81 = [(SBSystemApertureSettings *)self contentInteractionBeginBehaviorSettings];
  [v81 setResponse:0.85];

  v82 = [(SBSystemApertureSettings *)self contentInteractionBeginBehaviorSettings];
  [v82 setRetargetImpulse:?];

  v83 = [(SBSystemApertureSettings *)self contentInteractionBeginBehaviorSettings];
  v306 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v83 setFrameRateRange:1114137 highFrameRateReason:{*&v306.minimum, *&v306.maximum, *&v306.preferred}];

  v84 = [(SBSystemApertureSettings *)self contentInteractionBeginBehaviorSettings];
  [v84 setName:@"Content Interation Settings"];

  v85 = [(SBSystemApertureSettings *)self transitionToProminentPillSettings];
  [v85 setDefaultValues];

  v86 = [(SBSystemApertureSettings *)self transitionToProminentPillSettings];
  [v86 setBehaviorType:1];

  v87 = [(SBSystemApertureSettings *)self transitionToProminentPillSettings];
  [v87 setDampingRatio:0.55];

  v88 = [(SBSystemApertureSettings *)self transitionToProminentPillSettings];
  [v88 setResponse:0.45];

  v89 = [(SBSystemApertureSettings *)self transitionToProminentPillSettings];
  [v89 setName:@"Jindo Prominent Pill Transition"];

  v90 = [(SBSystemApertureSettings *)self transitionToProminentPillSettings];
  v307 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v90 setFrameRateRange:1114137 highFrameRateReason:{*&v307.minimum, *&v307.maximum, *&v307.preferred}];

  [(SBSystemApertureSettings *)self setProminentPillScale:1.55454545];
  [(SBSystemApertureSettings *)self setProminentPillContentScale:1.3];
  [(SBSystemApertureSettings *)self setProminentPillVerticalOffsetProportion:0.5];
  [(SBSystemApertureSettings *)self setTallRectWidth:166.0];
  [(SBSystemApertureSettings *)self setTallRectCornerRadius:71.3333333];
  [(SBSystemApertureSettings *)self setIndicatorContentMinimumScale:0.7];
  [(SBSystemApertureSettings *)self setIndicatorContainerMinimumOutset:2.0];
  [(SBSystemApertureSettings *)self setIndicatorContainerInterContainerPadding:?];
  [(SBSystemApertureSettings *)self setIndicatorContainerMinimumPadding:2.0];
  [(SBSystemApertureSettings *)self setIndicatorMinimumScreenPadding:2.0];
  [(SBSystemApertureSettings *)self setContainerHitRectVisible:0];
  [(SBSystemApertureSettings *)self setContainerHitRectTopMarginDefault:10.0];
  [(SBSystemApertureSettings *)self setContainerHitRectTopMarginWide:10.0];
  [(SBSystemApertureSettings *)self setContainerHitRectHorizontalMargin:10.0];
  [(SBSystemApertureSettings *)self setContainerHitRectHorizontalMarginLimit:75.0];
  [(SBSystemApertureSettings *)self setContainerHitRectHorizontalLimit:45.0];
  v91 = [(SBSystemApertureSettings *)self mitosisSecondaryBoundsSettings];
  [v91 setDefaultValues];

  v92 = [(SBSystemApertureSettings *)self mitosisSecondaryBoundsSettings];
  [v92 setBehaviorType:1];

  v303 = 0;
  v302 = 0;
  convertDampingMassAndStiffnessToDampingRatioAndResponse();
  v93 = [(SBSystemApertureSettings *)self mitosisSecondaryBoundsSettings];
  [v93 setDampingRatio:0.141];

  v94 = [(SBSystemApertureSettings *)self mitosisSecondaryBoundsSettings];
  [v94 setResponse:0.222];

  v95 = [(SBSystemApertureSettings *)self mitosisSecondaryBoundsSettings];
  [v95 setRetargetImpulse:0.0];

  v96 = [(SBSystemApertureSettings *)self mitosisSecondaryBoundsSettings];
  v308 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v96 setFrameRateRange:1114137 highFrameRateReason:{*&v308.minimum, *&v308.maximum, *&v308.preferred}];

  v97 = [(SBSystemApertureSettings *)self mitosisSecondaryBoundsSettings];
  [v97 setName:@"Mitosis Secondary Bounds"];

  [(SBSystemApertureSettings *)self setMitosisHeadstartDelay:0.13];
  v98 = [(SBSystemApertureSettings *)self recombinationSecondaryBoundsYSettings];
  [v98 setDefaultValues];

  v99 = [(SBSystemApertureSettings *)self recombinationSecondaryBoundsYSettings];
  [v99 setDampingRatio:0.6];

  v100 = [(SBSystemApertureSettings *)self recombinationSecondaryBoundsYSettings];
  [v100 setResponse:0.222];

  v101 = [(SBSystemApertureSettings *)self recombinationSecondaryBoundsYSettings];
  [v101 setRetargetImpulse:0.008];

  v102 = [(SBSystemApertureSettings *)self recombinationSecondaryBoundsYSettings];
  v309 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v102 setFrameRateRange:1114137 highFrameRateReason:{*&v309.minimum, *&v309.maximum, *&v309.preferred}];

  v103 = [(SBSystemApertureSettings *)self recombinationSecondaryBoundsYSettings];
  [v103 setName:@"Recombination Secondary Y-Bounds"];

  v104 = [(SBSystemApertureSettings *)self jindoAuthErrorShakeInitialKick];
  [v104 setDefaultValues];

  v105 = [(SBSystemApertureSettings *)self jindoAuthErrorShakeInitialKick];
  [v105 setBehaviorType:1];

  v106 = [(SBSystemApertureSettings *)self jindoAuthErrorShakeInitialKick];
  [v106 setDampingRatio:0.141];

  v107 = [(SBSystemApertureSettings *)self jindoAuthErrorShakeInitialKick];
  [v107 setResponse:0.222];

  v108 = [(SBSystemApertureSettings *)self jindoAuthErrorShakeInitialKick];
  [v108 setRetargetImpulse:0.02];

  v109 = [(SBSystemApertureSettings *)self jindoAuthErrorShakeInitialKick];
  v310 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v109 setFrameRateRange:1114137 highFrameRateReason:{*&v310.minimum, *&v310.maximum, *&v310.preferred}];

  v110 = [(SBSystemApertureSettings *)self jindoAuthErrorShakeInitialKick];
  [v110 setName:@"Shake Kick"];

  v111 = [(SBSystemApertureSettings *)self jindoAuthErrorShakeSettle];
  [v111 setDefaultValues];

  v112 = [(SBSystemApertureSettings *)self jindoAuthErrorShakeSettle];
  [v112 setBehaviorType:1];

  v113 = [(SBSystemApertureSettings *)self jindoAuthErrorShakeSettle];
  [v113 setDampingRatio:0.141];

  v114 = [(SBSystemApertureSettings *)self jindoAuthErrorShakeSettle];
  [v114 setResponse:0.222];

  v115 = [(SBSystemApertureSettings *)self jindoAuthErrorShakeSettle];
  [v115 setRetargetImpulse:0.02];

  v116 = [(SBSystemApertureSettings *)self jindoAuthErrorShakeSettle];
  v311 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v116 setFrameRateRange:1114137 highFrameRateReason:{*&v311.minimum, *&v311.maximum, *&v311.preferred}];

  v117 = [(SBSystemApertureSettings *)self jindoAuthErrorShakeSettle];
  [v117 setName:@"Shake Settle"];

  v118 = [(SBSystemApertureSettings *)self jindoAuthErrorStretchOut];
  [v118 setDefaultValues];

  v119 = [(SBSystemApertureSettings *)self jindoAuthErrorStretchOut];
  [v119 setBehaviorType:1];

  v120 = [(SBSystemApertureSettings *)self jindoAuthErrorStretchOut];
  [v120 setDampingRatio:1.0];

  v121 = [(SBSystemApertureSettings *)self jindoAuthErrorStretchOut];
  [v121 setResponse:0.23];

  v122 = [(SBSystemApertureSettings *)self jindoAuthErrorStretchOut];
  [v122 setRetargetImpulse:0.02];

  v123 = [(SBSystemApertureSettings *)self jindoAuthErrorStretchOut];
  v312 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v123 setFrameRateRange:1114137 highFrameRateReason:{*&v312.minimum, *&v312.maximum, *&v312.preferred}];

  v124 = [(SBSystemApertureSettings *)self jindoAuthErrorStretchOut];
  [v124 setName:@"Shake Stretch Out"];

  v125 = [(SBSystemApertureSettings *)self jindoAuthErrorStretchSettle];
  [v125 setDefaultCriticallyDampedValues];

  v126 = [(SBSystemApertureSettings *)self jindoAuthErrorStretchSettle];
  [v126 setBehaviorType:1];

  v127 = [(SBSystemApertureSettings *)self jindoAuthErrorStretchSettle];
  [v127 setDampingRatio:1.0];

  v128 = [(SBSystemApertureSettings *)self jindoAuthErrorStretchSettle];
  [v128 setResponse:0.732];

  v129 = [(SBSystemApertureSettings *)self jindoAuthErrorStretchSettle];
  v313 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v129 setFrameRateRange:1114137 highFrameRateReason:{*&v313.minimum, *&v313.maximum, *&v313.preferred}];

  v130 = [(SBSystemApertureSettings *)self jindoAuthErrorStretchSettle];
  [v130 setName:@"Shake Stretch Settle"];

  [(SBSystemApertureSettings *)self setShakeDisplacement:8.0];
  [(SBSystemApertureSettings *)self setShakeSensorExpansion:22.0];
  [(SBSystemApertureSettings *)self setShakeSensorOffset:3.0];
  [(SBSystemApertureSettings *)self setFirstShakeMilestone:0.923];
  [(SBSystemApertureSettings *)self setSecondShakeMilestone:0.756];
  [(SBSystemApertureSettings *)self setShakeRingerBell:1];
  v131 = [(SBSystemApertureSettings *)self bumpAnimationScaleUpSettings];
  [v131 setDefaultValues];

  v132 = [(SBSystemApertureSettings *)self bumpAnimationScaleUpSettings];
  [v132 setBehaviorType:1];

  v133 = [(SBSystemApertureSettings *)self bumpAnimationScaleUpSettings];
  [v133 setDampingRatio:0.4];

  v134 = [(SBSystemApertureSettings *)self bumpAnimationScaleUpSettings];
  [v134 setResponse:0.4];

  v135 = [(SBSystemApertureSettings *)self bumpAnimationScaleUpSettings];
  v314 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v135 setFrameRateRange:1114137 highFrameRateReason:{*&v314.minimum, *&v314.maximum, *&v314.preferred}];

  v136 = [(SBSystemApertureSettings *)self bumpAnimationScaleUpSettings];
  [v136 setName:@"Bump Scale Up"];

  v137 = [(SBSystemApertureSettings *)self bumpAnimationScaleDownSettings];
  [v137 setDefaultValues];

  v138 = [(SBSystemApertureSettings *)self bumpAnimationScaleDownSettings];
  [v138 setBehaviorType:1];

  v139 = [(SBSystemApertureSettings *)self bumpAnimationScaleDownSettings];
  [v139 setDampingRatio:1.0];

  v140 = [(SBSystemApertureSettings *)self bumpAnimationScaleDownSettings];
  [v140 setResponse:0.85];

  v141 = [(SBSystemApertureSettings *)self bumpAnimationScaleDownSettings];
  v315 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v141 setFrameRateRange:1114137 highFrameRateReason:{*&v315.minimum, *&v315.maximum, *&v315.preferred}];

  v142 = [(SBSystemApertureSettings *)self bumpAnimationScaleDownSettings];
  [v142 setName:@"Bump Scale Down"];

  [(SBSystemApertureSettings *)self setBumpAnimationXScale:1.015];
  [(SBSystemApertureSettings *)self setBumpAnimationYScale:1.03];
  v143 = [(SBSystemApertureSettings *)self pulseNoActionSettings];
  [v143 setDefaultValues];

  v144 = [(SBSystemApertureSettings *)self pulseNoActionSettings];
  v145 = [v144 expandBehaviorSettings];
  [v145 setBehaviorType:1];

  v146 = [(SBSystemApertureSettings *)self pulseNoActionSettings];
  v147 = [v146 expandBehaviorSettings];
  [v147 setDampingRatio:0.694];

  v148 = [(SBSystemApertureSettings *)self pulseNoActionSettings];
  v149 = [v148 expandBehaviorSettings];
  [v149 setResponse:0.525];

  v150 = [(SBSystemApertureSettings *)self pulseNoActionSettings];
  v151 = [v150 expandBehaviorSettings];
  [v151 setRetargetImpulse:0.02];

  v152 = [(SBSystemApertureSettings *)self pulseNoActionSettings];
  v153 = [v152 expandBehaviorSettings];
  [v153 setName:@"Pulse No Action Expand"];

  v154 = [(SBSystemApertureSettings *)self pulseNoActionSettings];
  v155 = [v154 expandBehaviorSettings];
  v316 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v155 setFrameRateRange:1114137 highFrameRateReason:{*&v316.minimum, *&v316.maximum, *&v316.preferred}];

  v156 = [(SBSystemApertureSettings *)self pulseNoActionSettings];
  [v156 setExpandDuration:0.2];

  v157 = [(SBSystemApertureSettings *)self pulseNoActionSettings];
  [v157 setExpandScale:1.25];

  v158 = [(SBSystemApertureSettings *)self pulseNoActionSettings];
  [v158 setExpandDelay:0.0];

  v159 = [(SBSystemApertureSettings *)self pulseNoActionSettings];
  v160 = [v159 contractBehaviorSettings];
  [v160 setDefaultValues];

  v161 = [(SBSystemApertureSettings *)self pulseNoActionSettings];
  v162 = [v161 contractBehaviorSettings];
  [v162 setDampingRatio:1.0];

  v163 = [(SBSystemApertureSettings *)self pulseNoActionSettings];
  v164 = [v163 contractBehaviorSettings];
  [v164 setResponse:0.8];

  v165 = [(SBSystemApertureSettings *)self pulseNoActionSettings];
  v166 = [v165 contractBehaviorSettings];
  [v166 setTrackingDampingRatio:0.86];

  v167 = [(SBSystemApertureSettings *)self pulseNoActionSettings];
  v168 = [v167 contractBehaviorSettings];
  [v168 setTrackingResponse:0.15];

  v169 = [(SBSystemApertureSettings *)self pulseNoActionSettings];
  v170 = [v169 contractBehaviorSettings];
  [v170 setName:@"Pulse No Action Contract"];

  v171 = [(SBSystemApertureSettings *)self pulseNoActionSettings];
  v172 = [v171 contractBehaviorSettings];
  v317 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v172 setFrameRateRange:1114137 highFrameRateReason:{*&v317.minimum, *&v317.maximum, *&v317.preferred}];

  [(SBSystemApertureSettings *)self setPulseIndicatorEnabled:0];
  v173 = [(SBSystemApertureSettings *)self pulseIndicatorSettings];
  [v173 setDefaultValues];

  v174 = [(SBSystemApertureSettings *)self pulseIndicatorSettings];
  v175 = [v174 expandBehaviorSettings];
  [v175 setBehaviorType:1];

  v176 = [(SBSystemApertureSettings *)self pulseIndicatorSettings];
  v177 = [v176 expandBehaviorSettings];
  [v177 setDampingRatio:0.694];

  v178 = [(SBSystemApertureSettings *)self pulseIndicatorSettings];
  v179 = [v178 expandBehaviorSettings];
  [v179 setResponse:0.525];

  v180 = [(SBSystemApertureSettings *)self pulseIndicatorSettings];
  v181 = [v180 expandBehaviorSettings];
  [v181 setRetargetImpulse:0.02];

  v182 = [(SBSystemApertureSettings *)self pulseIndicatorSettings];
  v183 = [v182 expandBehaviorSettings];
  [v183 setName:@"Pulse Indicator Expand"];

  v184 = [(SBSystemApertureSettings *)self pulseIndicatorSettings];
  v185 = [v184 expandBehaviorSettings];
  v318 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v185 setFrameRateRange:1114137 highFrameRateReason:{*&v318.minimum, *&v318.maximum, *&v318.preferred}];

  v186 = [(SBSystemApertureSettings *)self pulseIndicatorSettings];
  [v186 setExpandDuration:0.2];

  v187 = [(SBSystemApertureSettings *)self pulseIndicatorSettings];
  [v187 setExpandScale:1.125];

  v188 = [(SBSystemApertureSettings *)self pulseIndicatorSettings];
  [v188 setExpandDelay:0.1];

  v189 = [(SBSystemApertureSettings *)self pulseIndicatorSettings];
  v190 = [v189 contractBehaviorSettings];
  [v190 setDefaultValues];

  v191 = [(SBSystemApertureSettings *)self pulseNoActionSettings];
  v192 = [v191 contractBehaviorSettings];
  [v192 setDampingRatio:1.0];

  v193 = [(SBSystemApertureSettings *)self pulseNoActionSettings];
  v194 = [v193 contractBehaviorSettings];
  [v194 setResponse:0.8];

  v195 = [(SBSystemApertureSettings *)self pulseNoActionSettings];
  v196 = [v195 contractBehaviorSettings];
  [v196 setTrackingDampingRatio:0.86];

  v197 = [(SBSystemApertureSettings *)self pulseNoActionSettings];
  v198 = [v197 contractBehaviorSettings];
  [v198 setTrackingResponse:0.15];

  v199 = [(SBSystemApertureSettings *)self pulseIndicatorSettings];
  v200 = [v199 contractBehaviorSettings];
  [v200 setName:@"Pulse Indicator Contract"];

  v201 = [(SBSystemApertureSettings *)self pulseIndicatorSettings];
  v202 = [v201 contractBehaviorSettings];
  v319 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v202 setFrameRateRange:1114137 highFrameRateReason:{*&v319.minimum, *&v319.maximum, *&v319.preferred}];

  [(SBSAIndicatorMitosisSettings *)self->_compactIndicatorMitosisSettings setDefaultCompactValues];
  [(SBSAIndicatorMitosisSettings *)self->_babyJindoIndicatorMitosisSettings setDefaultBabyJindoValues];
  [(SBSAIndicatorMitosisSettings *)self->_customIndicatorMitosisSettings setDefaultCustomValues];
  [(SBSAIndicatorMitosisSettings *)self->_reversedCompactIndicatorMitosisSettings setDefaultReversedCompactValues];
  [(SBSAIndicatorMitosisSettings *)self->_reversedBabyJindoIndicatorMitosisSettings setDefaultReversedBabyJindoValues];
  [(SBSAIndicatorMitosisSettings *)self->_reversedCustomIndicatorMitosisSettings setDefaultReversedCustomValues];
  v203 = [(SBSystemApertureSettings *)self inflateAnimationScaleUpSettings];
  [v203 setDefaultValues];

  v204 = [(SBSystemApertureSettings *)self inflateAnimationScaleUpSettings];
  [v204 setBehaviorType:1];

  v205 = [(SBSystemApertureSettings *)self inflateAnimationScaleUpSettings];
  [v205 setDampingRatio:1.0];

  v206 = [(SBSystemApertureSettings *)self inflateAnimationScaleUpSettings];
  [v206 setResponse:2.0];

  v207 = [(SBSystemApertureSettings *)self inflateAnimationScaleUpSettings];
  v320 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v207 setFrameRateRange:1114137 highFrameRateReason:{*&v320.minimum, *&v320.maximum, *&v320.preferred}];

  v208 = [(SBSystemApertureSettings *)self inflateAnimationScaleUpSettings];
  [v208 setName:@"Inflate Scale Up"];

  v209 = [(SBSystemApertureSettings *)self inflateAnimationScaleDownSettings];
  [v209 setDefaultValues];

  v210 = [(SBSystemApertureSettings *)self inflateAnimationScaleDownSettings];
  [v210 setBehaviorType:1];

  v211 = [(SBSystemApertureSettings *)self inflateAnimationScaleDownSettings];
  [v211 setDampingRatio:1.0];

  v212 = [(SBSystemApertureSettings *)self inflateAnimationScaleDownSettings];
  [v212 setResponse:0.35];

  v213 = [(SBSystemApertureSettings *)self inflateAnimationScaleDownSettings];
  v321 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v213 setFrameRateRange:1114137 highFrameRateReason:{*&v321.minimum, *&v321.maximum, *&v321.preferred}];

  v214 = [(SBSystemApertureSettings *)self inflateAnimationScaleDownSettings];
  [v214 setName:@"Inflate Scale Down"];

  [(SBSystemApertureSettings *)self setInflateAnimationScale:1.4];
  [(SBSystemApertureSettings *)self setInflateAnimationContentScale:1.295];
  [(SBSystemApertureSettings *)self setInflateVerticalOffsetProportion:0.0];
  [(SBSystemApertureSettings *)self setExpansionToCompactBeginInflationProgress:0.2];
  [(SBSystemApertureSettings *)self setResizeGestureXRubberbanding:0.8];
  [(SBSystemApertureSettings *)self setResizeGestureYRubberbandingStretch:0.08];
  [(SBSystemApertureSettings *)self setResizeGestureYRubberbandingCompress:0.25];
  [(SBSystemApertureSettings *)self setResizeGestureYRangeBeginTracking:0.8];
  [(SBSystemApertureSettings *)self setResizeGestureYRangeEndTracking:1.0];
  [(SBSystemApertureSettings *)self setResizeGestureUpOffsetFactor:16.0];
  [(SBSystemApertureSettings *)self setResizeGestureMinEdgePadding:0.333333333];
  [(SBSystemApertureSettings *)self setResizeGestureSensorXSafetyMargin:1.1];
  [(SBSystemApertureSettings *)self setRecombineGestureXRubberbandingStretch:0.1];
  [(SBSystemApertureSettings *)self setRecombineGestureXRubberbandingCompress:0.25];
  [(SBSystemApertureSettings *)self setRecombineGestureXScaleFactorStretch:0.5];
  [(SBSystemApertureSettings *)self setRecombineGestureXScaleFactorCompress:0.5];
  [(SBSystemApertureSettings *)self setRecombineGestureTranslateFactorStretch:100.0];
  [(SBSystemApertureSettings *)self setRecombineGestureTranslateFactorCompress:100.0];
  [(SBSystemApertureSettings *)self setAcceptanceUpBounceReboundDelay:0.12];
  [(SBSystemApertureSettings *)self setAcceptanceUpBounceItemAppearanceDelayOffset:0.08];
  [(SBSystemApertureSettings *)self setAcceptanceUpBounceFinishingDelay:1.0];
  [(SBSystemApertureSettings *)self setAcceptanceUpBounceYStretch:17.0];
  [(SBSystemApertureSettings *)self setAcceptanceUpBounceYDownStretch:9.0];
  [(SBSystemApertureSettings *)self setAcceptanceUpBounceXPadding:8.0];
  [(SBSystemApertureSettings *)self setAcceptanceUpBounceFixedOvershootScaling:1.06];
  v215 = [(SBSystemApertureSettings *)self acceptanceBounceStretch];
  [v215 setDefaultValues];

  v216 = [(SBSystemApertureSettings *)self acceptanceBounceStretch];
  [v216 setBehaviorType:1];

  v217 = [(SBSystemApertureSettings *)self acceptanceBounceStretch];
  [v217 setDampingRatio:0.714];

  v218 = [(SBSystemApertureSettings *)self acceptanceBounceStretch];
  [v218 setResponse:0.5];

  v219 = [(SBSystemApertureSettings *)self acceptanceBounceStretch];
  [v219 setRetargetImpulse:0.02];

  v220 = [(SBSystemApertureSettings *)self acceptanceBounceStretch];
  v322 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v220 setFrameRateRange:1114137 highFrameRateReason:{*&v322.minimum, *&v322.maximum, *&v322.preferred}];

  v221 = [(SBSystemApertureSettings *)self acceptanceBounceStretch];
  [v221 setName:@"Acceptance Bounce Stretch"];

  v222 = [(SBSystemApertureSettings *)self acceptanceBounceRebound];
  [v222 setDefaultCriticallyDampedValues];

  v223 = [(SBSystemApertureSettings *)self acceptanceBounceRebound];
  [v223 setBehaviorType:1];

  v224 = [(SBSystemApertureSettings *)self acceptanceBounceRebound];
  [v224 setDampingRatio:1.0];

  v225 = [(SBSystemApertureSettings *)self acceptanceBounceRebound];
  [v225 setResponse:0.35];

  v226 = [(SBSystemApertureSettings *)self acceptanceBounceRebound];
  [v226 setRetargetImpulse:0.016];

  v227 = [(SBSystemApertureSettings *)self acceptanceBounceRebound];
  v323 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v227 setFrameRateRange:1114137 highFrameRateReason:{*&v323.minimum, *&v323.maximum, *&v323.preferred}];

  v228 = [(SBSystemApertureSettings *)self acceptanceBounceRebound];
  [v228 setName:@"Acceptance Bounce Rebound"];

  v229 = [(SBSystemApertureSettings *)self acceptanceBounceLayout];
  [v229 setDefaultValues];

  v230 = [(SBSystemApertureSettings *)self acceptanceBounceLayout];
  [v230 setBehaviorType:1];

  v231 = [(SBSystemApertureSettings *)self acceptanceBounceLayout];
  [v231 setDampingRatio:0.525];

  v232 = [(SBSystemApertureSettings *)self acceptanceBounceLayout];
  [v232 setResponse:0.513];

  v233 = [(SBSystemApertureSettings *)self acceptanceBounceLayout];
  [v233 setRetargetImpulse:0.02];

  v234 = [(SBSystemApertureSettings *)self acceptanceBounceLayout];
  v324 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v234 setFrameRateRange:1114137 highFrameRateReason:{*&v324.minimum, *&v324.maximum, *&v324.preferred}];

  v235 = [(SBSystemApertureSettings *)self acceptanceBounceLayout];
  [v235 setName:@"Acceptance Bounce Layout"];

  v236 = [(SBSystemApertureSettings *)self acceptanceBounceLayoutY];
  [v236 setDefaultValues];

  v237 = [(SBSystemApertureSettings *)self acceptanceBounceLayoutY];
  [v237 setBehaviorType:1];

  v238 = [(SBSystemApertureSettings *)self acceptanceBounceLayoutY];
  [v238 setDampingRatio:1.0];

  v239 = [(SBSystemApertureSettings *)self acceptanceBounceLayoutY];
  [v239 setResponse:0.513];

  v240 = [(SBSystemApertureSettings *)self acceptanceBounceLayoutY];
  v325 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v240 setFrameRateRange:1114137 highFrameRateReason:{*&v325.minimum, *&v325.maximum, *&v325.preferred}];

  v241 = [(SBSystemApertureSettings *)self acceptanceBounceLayoutY];
  [v241 setName:@"Acceptance Bounce LayoutY"];

  [(SBSystemApertureSettings *)self setAcceptanceSideBounceXVelocityThreshold:300.0];
  [(SBSystemApertureSettings *)self setAcceptanceSideBounceReboundDelay:0.12];
  [(SBSystemApertureSettings *)self setAcceptanceSideBounceItemAppearanceDelayOffset:0.1];
  [(SBSystemApertureSettings *)self setAcceptanceSideBounceFinishingDelay:1.0];
  [(SBSystemApertureSettings *)self setAcceptanceSideBounceXStretch:80.0];
  [(SBSystemApertureSettings *)self setAcceptanceSideBounceYPadding:9.0];
  [(SBSystemApertureSettings *)self setAcceptanceSideBounceXSensorExpansion:10.0];
  [(SBSystemApertureSettings *)self setAcceptanceSideBounceXSensorOffset:-5.0];
  v242 = [(SBSystemApertureSettings *)self acceptanceBounceSideStretch];
  [v242 setDefaultCriticallyDampedValues];

  v243 = [(SBSystemApertureSettings *)self acceptanceBounceSideStretch];
  [v243 setBehaviorType:1];

  v244 = [(SBSystemApertureSettings *)self acceptanceBounceSideStretch];
  [v244 setDampingRatio:1.0];

  v245 = [(SBSystemApertureSettings *)self acceptanceBounceSideStretch];
  [v245 setResponse:0.6];

  v246 = [(SBSystemApertureSettings *)self acceptanceBounceSideStretch];
  [v246 setRetargetImpulse:0.02];

  v247 = [(SBSystemApertureSettings *)self acceptanceBounceSideStretch];
  v326 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v247 setFrameRateRange:1114137 highFrameRateReason:{*&v326.minimum, *&v326.maximum, *&v326.preferred}];

  v248 = [(SBSystemApertureSettings *)self acceptanceBounceSideStretch];
  [v248 setName:@"Acceptance Bounce Side Stretch"];

  v249 = [(SBSystemApertureSettings *)self acceptanceBounceSideRebound];
  [v249 setDefaultCriticallyDampedValues];

  v250 = [(SBSystemApertureSettings *)self acceptanceBounceSideRebound];
  [v250 setBehaviorType:1];

  v251 = [(SBSystemApertureSettings *)self acceptanceBounceSideRebound];
  [v251 setDampingRatio:0.65];

  v252 = [(SBSystemApertureSettings *)self acceptanceBounceSideRebound];
  [v252 setResponse:0.62];

  v253 = [(SBSystemApertureSettings *)self acceptanceBounceSideRebound];
  [v253 setRetargetImpulse:0.0];

  v254 = [(SBSystemApertureSettings *)self acceptanceBounceSideRebound];
  v327 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v254 setFrameRateRange:1114137 highFrameRateReason:{*&v327.minimum, *&v327.maximum, *&v327.preferred}];

  v255 = [(SBSystemApertureSettings *)self acceptanceBounceSideRebound];
  [v255 setName:@"Acceptance Bounce Side Rebound"];

  v256 = [(SBSystemApertureSettings *)self acceptanceBounceSideLayout];
  [v256 setDefaultValues];

  v257 = [(SBSystemApertureSettings *)self acceptanceBounceSideLayout];
  [v257 setBehaviorType:1];

  v258 = [(SBSystemApertureSettings *)self acceptanceBounceSideLayout];
  [v258 setDampingRatio:0.512];

  v259 = [(SBSystemApertureSettings *)self acceptanceBounceSideLayout];
  [v259 setResponse:0.513];

  v260 = [(SBSystemApertureSettings *)self acceptanceBounceSideLayout];
  [v260 setRetargetImpulse:0.0];

  v261 = [(SBSystemApertureSettings *)self acceptanceBounceSideLayout];
  v328 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v261 setFrameRateRange:1114137 highFrameRateReason:{*&v328.minimum, *&v328.maximum, *&v328.preferred}];

  v262 = [(SBSystemApertureSettings *)self acceptanceBounceSideLayout];
  [v262 setName:@"Acceptance Bounce Side Layout"];

  v263 = [(SBSystemApertureSettings *)self acceptanceBounceSideLayoutY];
  [v263 setDefaultValues];

  v264 = [(SBSystemApertureSettings *)self acceptanceBounceSideLayoutY];
  [v264 setBehaviorType:1];

  v265 = [(SBSystemApertureSettings *)self acceptanceBounceSideLayoutY];
  [v265 setDampingRatio:1.0];

  v266 = [(SBSystemApertureSettings *)self acceptanceBounceSideLayoutY];
  [v266 setResponse:0.513];

  v267 = [(SBSystemApertureSettings *)self acceptanceBounceSideLayoutY];
  v329 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v267 setFrameRateRange:1114137 highFrameRateReason:{*&v329.minimum, *&v329.maximum, *&v329.preferred}];

  v268 = [(SBSystemApertureSettings *)self acceptanceBounceSideLayoutY];
  [v268 setName:@"Acceptance Bounce Side Layout Y"];

  [(SBSystemApertureSettings *)self setEjectionXStretch:5.33333333];
  [(SBSystemApertureSettings *)self setEjectionYStretch:40.0];
  [(SBSystemApertureSettings *)self setEjectionYUpOffset:5.33333333];
  [(SBSystemApertureSettings *)self setEjectionStretchDuration:0.15];
  [(SBSystemApertureSettings *)self setEjectionMaxCornerRadius:38.6666667];
  v269 = [(SBSystemApertureSettings *)self ejectionStretchSettings];
  [v269 setDefaultCriticallyDampedValues];

  v270 = [(SBSystemApertureSettings *)self ejectionStretchSettings];
  [v270 setBehaviorType:1];

  v271 = [(SBSystemApertureSettings *)self ejectionStretchSettings];
  v330 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v271 setFrameRateRange:1114137 highFrameRateReason:{*&v330.minimum, *&v330.maximum, *&v330.preferred}];

  v272 = [(SBSystemApertureSettings *)self ejectionStretchSettings];
  [v272 setName:@"Ejection Stretch"];

  v273 = [(SBSystemApertureSettings *)self ejectionContractionSettings];
  [v273 setDefaultCriticallyDampedValues];

  v274 = [(SBSystemApertureSettings *)self ejectionContractionSettings];
  [v274 setBehaviorType:1];

  v275 = [(SBSystemApertureSettings *)self ejectionContractionSettings];
  [v275 setDampingRatio:1.0];

  v276 = [(SBSystemApertureSettings *)self ejectionContractionSettings];
  [v276 setResponse:0.513];

  v277 = [(SBSystemApertureSettings *)self ejectionContractionSettings];
  v331 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v277 setFrameRateRange:1114137 highFrameRateReason:{*&v331.minimum, *&v331.maximum, *&v331.preferred}];

  v278 = [(SBSystemApertureSettings *)self ejectionContractionSettings];
  [v278 setName:@"Ejection Contraction"];

  [(SBSystemApertureSettings *)self setKeyLineEnabled:1];
  v279 = [(SBSystemApertureSettings *)self keyLineStyleTransition];
  [v279 setDefaultValues];

  v280 = [(SBSystemApertureSettings *)self keyLineStyleTransition];
  [v280 setBehaviorType:1];

  v281 = [(SBSystemApertureSettings *)self keyLineStyleTransition];
  [v281 setDampingRatio:1.0];

  v282 = [(SBSystemApertureSettings *)self keyLineStyleTransition];
  [v282 setResponse:1.0];

  v283 = [(SBSystemApertureSettings *)self keyLineDisappearToInertTransition];
  [v283 setDefaultValues];

  v284 = [(SBSystemApertureSettings *)self keyLineDisappearToInertTransition];
  [v284 setBehaviorType:1];

  v285 = [(SBSystemApertureSettings *)self keyLineDisappearToInertTransition];
  [v285 setDampingRatio:1.0];

  v286 = [(SBSystemApertureSettings *)self keyLineDisappearToInertTransition];
  [v286 setResponse:1.2];

  v287 = [(SBSystemApertureSettings *)self keyLineAppearForSwoopTransition];
  [v287 setDefaultValues];

  v288 = [(SBSystemApertureSettings *)self keyLineAppearForSwoopTransition];
  [v288 setBehaviorType:1];

  v289 = [(SBSystemApertureSettings *)self keyLineAppearForSwoopTransition];
  [v289 setDampingRatio:1.0];

  v290 = [(SBSystemApertureSettings *)self keyLineAppearForSwoopTransition];
  [v290 setResponse:0.75];

  [(SBSystemApertureSettings *)self setActivityKeyLineColorEnabled:1];
  [(SBSystemApertureSettings *)self setKeyLineAlpha:0.35];
  [(SBSystemApertureSettings *)self setKeyLineThickness:1.66666667];
  [(SBSystemApertureSettings *)self setAdaptiveKeyLineThickness:1.66666667];
  v291 = [(SBSystemApertureSettings *)self adaptiveKeyLineColorMatrix];
  [v291 setDefaultValues];

  v292 = [(SBSystemApertureSettings *)self adaptiveKeyLineColorMatrix];
  v293[0] = 0;
  v293[1] = 0;
  v294 = 1064396915;
  v295 = 0;
  v296 = 0;
  v297 = 1064396915;
  v298 = 0;
  v299 = 0;
  v300 = xmmword_21F8A8410;
  v301 = 1039516303;
  [v292 setColorMatrix:v293];

  [(SBSystemApertureSettings *)self setKeyLineDarkToMixedMinLuma:0.05];
  [(SBSystemApertureSettings *)self setKeyLineMixedToDarkMaxLuma:0.05];
  [(SBSystemApertureSettings *)self setKeyLineColorFixedLstar:50.0];
  [(SBSystemApertureSettings *)self setSuppressHidingOnClonedDisplayWhileEmpty:0];
  [(SBSystemApertureSettings *)self setSuppressHidingInSnapshotsWhileEmpty:0];
  [(SBSystemApertureSettings *)self setAlphaTransitionDurationOnClonedDisplay:0.15];
  [(SBSystemApertureSettings *)self setHideRemotePrototypingFallbackPill:0];
  [(SBSystemApertureSettings *)self setMinimumRequiredSymmetryInCompactLayoutMode:0.75];
  [(SBSystemApertureSettings *)self setPaddingFromScreenEdgeRequiringSymmetricLayout:46.0];
  [(SBSystemApertureSettings *)self setSuppressWhilePresentingControlCenter:0];
  [(SBSystemApertureSettings *)self setElementShadowEnabled:1];
  [(SBSystemApertureSettings *)self setBackgroundBlurEnabled:1];
  [(SBSystemApertureSettings *)self setShowQueryIterationLabel:0];
  [(SBSystemApertureSettings *)self setForceRTLLayout:0];
  [(SBSystemApertureSettings *)self setSecureFlipBookCaptureVerbose:0];
}

+ (id)settingsControllerModule
{
  v401[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D431B0];
  v3 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v312 = [v2 rowWithTitle:@"Restore Defaults" action:v3];

  v4 = MEMORY[0x277D43210];
  v401[0] = v312;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v401 count:1];
  v374 = [v4 sectionWithRows:v5];

  v372 = MEMORY[0x277D43210];
  v370 = [MEMORY[0x277D432A8] rowWithTitle:@"Highlight Transitions" valueKeyPath:@"highlightTransitions"];
  v400[0] = v370;
  v368 = [MEMORY[0x277D431E8] rowWithTitle:@"Collision Progress" valueKeyPath:@"boundsCollisionProgress"];
  v365 = [v368 between:0.0 and:1.0];
  v362 = [v365 precision:2];
  v400[1] = v362;
  v359 = [MEMORY[0x277D431E8] rowWithTitle:@"Inert Collapsing Layout Progress" valueKeyPath:@"boundsCollapsingPhaseChangeProgress"];
  v356 = [v359 between:0.0 and:1.0];
  v353 = [v356 precision:2];
  v400[2] = v353;
  v350 = [MEMORY[0x277D431E8] rowWithTitle:@"Inert Compensating Layout Progress" valueKeyPath:@"boundsCompensatingPhaseChangeProgress"];
  v346 = [v350 between:0.0 and:1.0];
  v341 = [v346 precision:2];
  v400[3] = v341;
  v335 = [MEMORY[0x277D431E8] rowWithTitle:@"Sensor Shadow Apex Progress" valueKeyPath:@"sensorObscuringShadowApexProgress"];
  v329 = [v335 between:0.0 and:1.0];
  v323 = [v329 precision:2];
  v400[4] = v323;
  v6 = [MEMORY[0x277D431D8] rowWithTitle:@"Default Behavior Settings" childSettingsKeyPath:@"defaultInterfaceElementTransitionSettings"];
  v400[5] = v6;
  v7 = [MEMORY[0x277D431D8] rowWithTitle:@"Inert Default Behavior Settings" childSettingsKeyPath:@"inertInterfaceElementTransitionSettings"];
  v400[6] = v7;
  v8 = [MEMORY[0x277D431D8] rowWithTitle:@"Inert Collapsing Behavior Settings" childSettingsKeyPath:@"inertCollapsingInterfaceElementTransitionSettings"];
  v400[7] = v8;
  v9 = [MEMORY[0x277D431D8] rowWithTitle:@"Inert Compensating Behavior Settings" childSettingsKeyPath:@"inertCompensatingInterfaceElementTransitionSettings"];
  v400[8] = v9;
  v10 = [MEMORY[0x277D431D8] rowWithTitle:@"*->Compact Behavior Settings" childSettingsKeyPath:@"compactInterfaceElementTransitionSettings"];
  v400[9] = v10;
  v11 = [MEMORY[0x277D431D8] rowWithTitle:@"*->Minimal Behavior Settings" childSettingsKeyPath:@"minimalInterfaceElementTransitionSettings"];
  v400[10] = v11;
  v12 = [MEMORY[0x277D431D8] rowWithTitle:@"*->Custom Behavior Settings" childSettingsKeyPath:@"customInterfaceElementTransitionSettings"];
  v400[11] = v12;
  v13 = [MEMORY[0x277D431D8] rowWithTitle:@"User Pop to Custom Behavior Settings" childSettingsKeyPath:@"popToCustomInterfaceElementTransitionSettings"];
  v400[12] = v13;
  v14 = [MEMORY[0x277D431D8] rowWithTitle:@"Element Content Behavior Settings" childSettingsKeyPath:@"elementContentTransitionSettings"];
  v400[13] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v400 count:14];
  v373 = [v372 sectionWithRows:v15 title:@"Interface Element Transitions"];

  v16 = MEMORY[0x277D43210];
  v17 = [MEMORY[0x277D431D8] rowWithTitle:@"Oval Layout Animation Settings" childSettingsKeyPath:@"jindoBoundsOval"];
  v399 = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v399 count:1];
  v371 = [v16 sectionWithRows:v18 title:@"Resize Settings"];

  v19 = MEMORY[0x277D43210];
  v20 = [MEMORY[0x277D432A8] rowWithTitle:@"Make Sensor Shadow Visible" valueKeyPath:@"sensorShadowVisible"];
  v398[0] = v20;
  v21 = [MEMORY[0x277D431E8] rowWithTitle:@"Sensor Shadow Opacity Factor" valueKeyPath:@"sensorShadowOpacityFactor"];
  v22 = [v21 between:0.0 and:100.0];
  v23 = [v22 precision:2];
  v398[1] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v398 count:2];
  v369 = [v19 sectionWithRows:v24 title:@"Content Settings"];

  v366 = MEMORY[0x277D43210];
  v363 = [MEMORY[0x277D431D8] rowWithTitle:@"Transition To Prominent Pill Settings" childSettingsKeyPath:@"transitionToProminentPillSettings"];
  v397[0] = v363;
  v25 = [MEMORY[0x277D431E8] rowWithTitle:@"Prominent Pill Scale" valueKeyPath:@"prominentPillScale"];
  v26 = [v25 between:0.0 and:10.0];
  v27 = [v26 precision:2];
  v397[1] = v27;
  v28 = [MEMORY[0x277D431E8] rowWithTitle:@"Prominent Pill Content Scale" valueKeyPath:@"prominentPillContentScale"];
  v29 = [v28 between:0.0 and:10.0];
  v30 = [v29 precision:2];
  v397[2] = v30;
  v31 = [MEMORY[0x277D431E8] rowWithTitle:@"Prominent Pill Vertical Offset" valueKeyPath:@"prominentPillVerticalOffsetProportion"];
  v32 = [v31 between:-1.0 and:1.0];
  v33 = [v32 precision:2];
  v397[3] = v33;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v397 count:4];
  v367 = [v366 sectionWithRows:v34 title:@"Prominent Pill"];

  v35 = MEMORY[0x277D43210];
  v36 = [MEMORY[0x277D43290] rowWithTitle:@"Corner Radius" valueKeyPath:@"tallRectCornerRadius"];
  v37 = [v36 minValue:39.0 maxValue:56.0];
  v396[0] = v37;
  v38 = [MEMORY[0x277D43290] rowWithTitle:@"Width" valueKeyPath:@"tallRectWidth"];
  v39 = [v38 minValue:160.0 maxValue:180.0];
  v396[1] = v39;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v396 count:2];
  v364 = [v35 sectionWithRows:v40 title:@"Tall Rect"];

  v360 = MEMORY[0x277D43210];
  v357 = [MEMORY[0x277D431E8] rowWithTitle:@"Minimum Content Scale" valueKeyPath:@"indicatorContentMinimumScale"];
  v354 = [v357 between:0.0 and:2.0];
  v395[0] = v354;
  v351 = [MEMORY[0x277D43290] rowWithTitle:@"Minimum Content Scale" valueKeyPath:@"indicatorContentMinimumScale"];
  v347 = [v351 minValue:0.0 maxValue:2.0];
  v395[1] = v347;
  v342 = [MEMORY[0x277D431E8] rowWithTitle:@"Minimum Container Outset" valueKeyPath:@"indicatorContainerMinimumOutset"];
  v336 = [v342 between:0.0 and:20.0];
  v395[2] = v336;
  v330 = [MEMORY[0x277D43290] rowWithTitle:@"Minimum Container Outset" valueKeyPath:@"indicatorContainerMinimumOutset"];
  v324 = [v330 minValue:0.0 maxValue:20.0];
  v395[3] = v324;
  v318 = [MEMORY[0x277D431E8] rowWithTitle:@"Inter Container Padding" valueKeyPath:@"indicatorContainerInterContainerPadding"];
  v313 = [v318 between:0.0 and:200.0];
  v395[4] = v313;
  v310 = [MEMORY[0x277D43290] rowWithTitle:@"Inter Container Padding" valueKeyPath:@"indicatorContainerInterContainerPadding"];
  v41 = [v310 minValue:0.0 maxValue:200.0];
  v395[5] = v41;
  v42 = [MEMORY[0x277D431E8] rowWithTitle:@"Minimum Container Padding" valueKeyPath:@"indicatorContainerMinimumPadding"];
  v43 = [v42 between:0.0 and:50.0];
  v395[6] = v43;
  v44 = [MEMORY[0x277D43290] rowWithTitle:@"Minimum Container Padding" valueKeyPath:@"indicatorContainerMinimumPadding"];
  v45 = [v44 minValue:0.0 maxValue:50.0];
  v395[7] = v45;
  v46 = [MEMORY[0x277D431E8] rowWithTitle:@"Minimum Screen Padding" valueKeyPath:@"indicatorMinimumScreenPadding"];
  v47 = [v46 between:0.0 and:50.0];
  v395[8] = v47;
  v48 = [MEMORY[0x277D43290] rowWithTitle:@"Minimum Screen Padding" valueKeyPath:@"indicatorMinimumScreenPadding"];
  v49 = [v48 minValue:0.0 maxValue:50.0];
  v395[9] = v49;
  v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v395 count:10];
  v361 = [v360 sectionWithRows:v50 title:@"Indicator Layout"];

  v311 = [MEMORY[0x277D432A8] rowWithTitle:@"Make Hit Rects Visible" valueKeyPath:@"containerHitRectVisible"];
  v51 = [MEMORY[0x277D431E8] rowWithTitle:@"Default Top Margin" valueKeyPath:@"containerHitRectTopMarginDefault"];
  v52 = [v51 between:0.0 and:10.0];
  v309 = [v52 precision:2];

  v53 = [MEMORY[0x277D431E8] rowWithTitle:@"Wide Top Margin" valueKeyPath:@"containerHitRectTopMarginWide"];
  v54 = [v53 between:0.0 and:10.0];
  v308 = [v54 precision:2];

  v55 = [MEMORY[0x277D431E8] rowWithTitle:@"Horizontal Margin" valueKeyPath:@"containerHitRectHorizontalMargin"];
  v56 = [v55 between:0.0 and:100.0];
  v307 = [v56 precision:2];

  v57 = [MEMORY[0x277D431E8] rowWithTitle:@"Horizontal Margin Limit" valueKeyPath:@"containerHitRectHorizontalMarginLimit"];
  v58 = [v57 between:0.0 and:100.0];
  v306 = [v58 precision:2];

  v59 = [MEMORY[0x277D431E8] rowWithTitle:@"Horizontal Limit" valueKeyPath:@"containerHitRectHorizontalLimit"];
  v60 = [v59 between:0.0 and:100.0];
  v305 = [v60 precision:2];

  v61 = MEMORY[0x277D43210];
  v394[0] = v311;
  v394[1] = v309;
  v394[2] = v308;
  v394[3] = v307;
  v394[4] = v306;
  v394[5] = v305;
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v394 count:6];
  v358 = [v61 sectionWithRows:v62 title:@"Content Hit Testing"];

  v63 = MEMORY[0x277D43210];
  v64 = [MEMORY[0x277D431D8] rowWithTitle:@"Baby Split Bounds Settings" childSettingsKeyPath:@"mitosisSecondaryBoundsSettings"];
  v393[0] = v64;
  v65 = [MEMORY[0x277D431E8] rowWithTitle:@"Baby Headstart Delay" valueKeyPath:@"mitosisHeadstartDelay"];
  v66 = [v65 between:0.0 and:1.0];
  v67 = [v66 precision:2];
  v393[1] = v67;
  v68 = [MEMORY[0x277CBEA60] arrayWithObjects:v393 count:2];
  v355 = [v63 sectionWithRows:v68 title:@"Mitosis"];

  v69 = MEMORY[0x277D43210];
  v70 = [MEMORY[0x277D431D8] rowWithTitle:@"Baby Recombination Y Bounds Settings" childSettingsKeyPath:@"recombinationSecondaryBoundsYSettings"];
  v392 = v70;
  v71 = [MEMORY[0x277CBEA60] arrayWithObjects:&v392 count:1];
  v352 = [v69 sectionWithRows:v71 title:@"Mitosis Recombination"];

  v348 = MEMORY[0x277D43210];
  v343 = [MEMORY[0x277D431D8] rowWithTitle:@"Shake Initial Kick Animation Settings" childSettingsKeyPath:@"jindoAuthErrorShakeInitialKick"];
  v391[0] = v343;
  v337 = [MEMORY[0x277D431D8] rowWithTitle:@"Shake Settle Animation Settings" childSettingsKeyPath:@"jindoAuthErrorShakeSettle"];
  v391[1] = v337;
  v331 = [MEMORY[0x277D431D8] rowWithTitle:@"Shake Stretch Out Animation Settings" childSettingsKeyPath:@"jindoAuthErrorStretchOut"];
  v391[2] = v331;
  v325 = [MEMORY[0x277D431D8] rowWithTitle:@"Shake Stretch Settle Animation Settings" childSettingsKeyPath:@"jindoAuthErrorStretchSettle"];
  v391[3] = v325;
  v319 = [MEMORY[0x277D431E8] rowWithTitle:@"Shake X Displacement" valueKeyPath:@"shakeDisplacement"];
  v314 = [v319 between:-100.0 and:100.0];
  v301 = [v314 precision:3];
  v391[4] = v301;
  v297 = [MEMORY[0x277D431E8] rowWithTitle:@"Shake Sensor Expand Width" valueKeyPath:@"shakeSensorExpansion"];
  v292 = [v297 between:0.0 and:100.0];
  v286 = [v292 precision:3];
  v391[5] = v286;
  v279 = [MEMORY[0x277D43290] rowWithTitle:@"Shake Sensor Expand Width" valueKeyPath:@"shakeSensorExpansion"];
  v272 = [v279 minValue:-50.0 maxValue:50.0];
  v391[6] = v272;
  v265 = [MEMORY[0x277D431E8] rowWithTitle:@"Shake Sensor Expand Offset" valueKeyPath:@"shakeSensorOffset"];
  v258 = [v265 between:-100.0 and:100.0];
  v251 = [v258 precision:3];
  v391[7] = v251;
  v72 = [MEMORY[0x277D43290] rowWithTitle:@"Shake Sensor Expand Offset" valueKeyPath:@"shakeSensorOffset"];
  v73 = [v72 minValue:-50.0 maxValue:50.0];
  v391[8] = v73;
  v74 = [MEMORY[0x277D431E8] rowWithTitle:@"First Shake Milestone" valueKeyPath:@"firstShakeMilestone"];
  v75 = [v74 between:0.0 and:1.0];
  v76 = [v75 precision:2];
  v391[9] = v76;
  v77 = [MEMORY[0x277D431E8] rowWithTitle:@"Second Shake Milestone" valueKeyPath:@"secondShakeMilestone"];
  v78 = [v77 between:0.0 and:1.0];
  v79 = [v78 precision:2];
  v391[10] = v79;
  v80 = [MEMORY[0x277D432A8] rowWithTitle:@"Shake Ringer Bell" valueKeyPath:@"shakeRingerBell"];
  v391[11] = v80;
  v81 = [MEMORY[0x277CBEA60] arrayWithObjects:v391 count:12];
  v349 = [v348 sectionWithRows:v81 title:@"Shake (Auth Error) Settings"];

  v344 = MEMORY[0x277D43210];
  v338 = [MEMORY[0x277D431D8] rowWithTitle:@"Bump ScaleUp Anim. Settings" childSettingsKeyPath:@"bumpAnimationScaleUpSettings"];
  v390[0] = v338;
  v332 = [MEMORY[0x277D431D8] rowWithTitle:@"Bump ScaleDown Anim. Settings" childSettingsKeyPath:@"bumpAnimationScaleDownSettings"];
  v390[1] = v332;
  v326 = [MEMORY[0x277D431E8] rowWithTitle:@"Bump Scale X" valueKeyPath:@"bumpAnimationXScale"];
  v82 = [v326 between:0.1 and:1.5];
  v83 = [v82 precision:4];
  v390[2] = v83;
  v84 = [MEMORY[0x277D43290] rowWithTitle:@"Bump Scale X" valueKeyPath:@"bumpAnimationXScale"];
  v85 = [v84 minValue:0.1 maxValue:1.5];
  v390[3] = v85;
  v86 = [MEMORY[0x277D431E8] rowWithTitle:@"Bump Scale Y" valueKeyPath:@"bumpAnimationYScale"];
  v87 = [v86 between:0.1 and:1.5];
  v88 = [v87 precision:4];
  v390[4] = v88;
  v89 = [MEMORY[0x277D43290] rowWithTitle:@"Bump Scale Y" valueKeyPath:@"bumpAnimationYScale"];
  v90 = [v89 minValue:0.1 maxValue:1.5];
  v390[5] = v90;
  v91 = [MEMORY[0x277CBEA60] arrayWithObjects:v390 count:6];
  v345 = [v344 sectionWithRows:v91 title:@"Bump Animation"];

  v339 = MEMORY[0x277D43210];
  v333 = [MEMORY[0x277D431D8] rowWithTitle:@"Inflate ScaleUp Anim. Settings" childSettingsKeyPath:@"inflateAnimationScaleUpSettings"];
  v389[0] = v333;
  v327 = [MEMORY[0x277D431D8] rowWithTitle:@"Inflate ScaleDown Anim. Settings" childSettingsKeyPath:@"inflateAnimationScaleDownSettings"];
  v389[1] = v327;
  v320 = [MEMORY[0x277D431E8] rowWithTitle:@"Inflate Scale" valueKeyPath:@"inflateAnimationScale"];
  v315 = [v320 between:0.1 and:5.0];
  v302 = [v315 precision:2];
  v389[2] = v302;
  v92 = [MEMORY[0x277D431E8] rowWithTitle:@"Inflate Vertical Offset" valueKeyPath:@"inflateVerticalOffsetProportion"];
  v93 = [v92 between:-1.0 and:1.0];
  v94 = [v93 precision:2];
  v389[3] = v94;
  v95 = [MEMORY[0x277D431E8] rowWithTitle:@"Inflate Content Scale" valueKeyPath:@"inflateAnimationContentScale"];
  v96 = [v95 between:0.1 and:5.0];
  v97 = [v96 precision:2];
  v389[4] = v97;
  v98 = [MEMORY[0x277D431E8] rowWithTitle:@"Expansion Begin Inflate Milestone" valueKeyPath:@"expansionToCompactBeginInflationProgress"];
  v99 = [v98 between:0.01 and:1.0];
  v100 = [v99 precision:2];
  v389[5] = v100;
  v101 = [MEMORY[0x277CBEA60] arrayWithObjects:v389 count:6];
  v340 = [v339 sectionWithRows:v101 title:@"Inflate Animation"];

  v102 = MEMORY[0x277D43210];
  v103 = [MEMORY[0x277D431D8] rowWithTitle:@"Pulse No Action Settings" childSettingsKeyPath:@"pulseNoActionSettings"];
  v388[0] = v103;
  v104 = [MEMORY[0x277D432A8] rowWithTitle:@"Pulse Indicator Enabled" valueKeyPath:@"pulseIndicatorEnabled"];
  v388[1] = v104;
  v105 = [MEMORY[0x277D431D8] rowWithTitle:@"Pulse Indicator Settings" childSettingsKeyPath:@"pulseIndicatorSettings"];
  v388[2] = v105;
  v106 = [MEMORY[0x277CBEA60] arrayWithObjects:v388 count:3];
  v334 = [v102 sectionWithRows:v106 title:@"Pulse Animation"];

  v107 = MEMORY[0x277D43210];
  v108 = [MEMORY[0x277D431D8] rowWithTitle:@"Compact" childSettingsKeyPath:@"compactIndicatorMitosisSettings"];
  v387[0] = v108;
  v109 = [MEMORY[0x277D431D8] rowWithTitle:@"Baby Jindo" childSettingsKeyPath:@"babyJindoIndicatorMitosisSettings"];
  v387[1] = v109;
  v110 = [MEMORY[0x277D431D8] rowWithTitle:@"Custom" childSettingsKeyPath:@"customIndicatorMitosisSettings"];
  v387[2] = v110;
  v111 = [MEMORY[0x277D431D8] rowWithTitle:@"Reversed Compact" childSettingsKeyPath:@"reversedCompactIndicatorMitosisSettings"];
  v387[3] = v111;
  v112 = [MEMORY[0x277D431D8] rowWithTitle:@"Reversed Baby Jindo" childSettingsKeyPath:@"reversedBabyJindoIndicatorMitosisSettings"];
  v387[4] = v112;
  v113 = [MEMORY[0x277D431D8] rowWithTitle:@"Reversed Custom" childSettingsKeyPath:@"reversedCustomIndicatorMitosisSettings"];
  v387[5] = v113;
  v114 = [MEMORY[0x277CBEA60] arrayWithObjects:v387 count:6];
  v328 = [v107 sectionWithRows:v114 title:@"Indicator Mitosis"];

  v321 = MEMORY[0x277D43210];
  v316 = [MEMORY[0x277D432A8] rowWithTitle:@"Key Line" valueKeyPath:@"keyLineEnabled"];
  v386[0] = v316;
  v303 = [MEMORY[0x277D431D8] rowWithTitle:@"Key Line Transition Animation Settings" childSettingsKeyPath:@"keyLineStyleTransition"];
  v386[1] = v303;
  v298 = [MEMORY[0x277D431D8] rowWithTitle:@"[disabled?] Key Line Disappear to Inert Anim. Settings" childSettingsKeyPath:@"keyLineDisappearToInertTransition"];
  v386[2] = v298;
  v293 = [MEMORY[0x277D431D8] rowWithTitle:@"Key Line Appear for Swoop Anim. Settings" childSettingsKeyPath:@"keyLineAppearForSwoopTransition"];
  v386[3] = v293;
  v287 = [MEMORY[0x277D432A8] rowWithTitle:@"Key Line Session/Activity Colors" valueKeyPath:@"activityKeyLineColorEnabled"];
  v386[4] = v287;
  v280 = [MEMORY[0x277D431E8] rowWithTitle:@"Key Line Alpha" valueKeyPath:@"keyLineAlpha"];
  v273 = [v280 between:0.0 and:1.0];
  v266 = [v273 precision:2];
  v386[5] = v266;
  v259 = [MEMORY[0x277D431B8] rowWithTitle:@"Key Line Thickness" valueKeyPath:@"keyLineThickness"];
  v252 = [v259 possibleValues:&unk_28336EBF8 titles:&unk_28336EC10];
  v386[6] = v252;
  v246 = [MEMORY[0x277D431B8] rowWithTitle:@"Adaptive Key Line Thickness" valueKeyPath:@"adaptiveKeyLineThickness"];
  v241 = [v246 possibleValues:&unk_28336EBF8 titles:&unk_28336EC10];
  v386[7] = v241;
  v236 = [MEMORY[0x277D431D8] rowWithTitle:@"Adaptive Key Line Color Matrix" childSettingsKeyPath:@"adaptiveKeyLineColorMatrix"];
  v386[8] = v236;
  v115 = [MEMORY[0x277D431E8] rowWithTitle:@"Dark To Mixed Min Luma" valueKeyPath:@"keyLineDarkToMixedMinLuma"];
  v116 = [v115 between:0.0 and:1.0];
  v117 = [v116 precision:2];
  v386[9] = v117;
  v118 = [MEMORY[0x277D431E8] rowWithTitle:@"Mixed to Dark Max Luma" valueKeyPath:@"keyLineMixedToDarkMaxLuma"];
  v119 = [v118 between:0.0 and:1.0];
  v120 = [v119 precision:2];
  v386[10] = v120;
  v121 = [MEMORY[0x277D431E8] rowWithTitle:@"Color Key Fixed Lightness" valueKeyPath:@"keyLineColorFixedLstar"];
  v122 = [v121 between:0.0 and:100.0];
  v123 = [v122 precision:1];
  v386[11] = v123;
  v124 = [MEMORY[0x277CBEA60] arrayWithObjects:v386 count:12];
  v322 = [v321 sectionWithRows:v124 title:@"Key Line"];

  v125 = MEMORY[0x277D43210];
  v126 = [MEMORY[0x277D432A8] rowWithTitle:@"Suppress Hiding for Mirroring/Recording" valueKeyPath:@"suppressHidingOnClonedDisplayWhileEmpty"];
  v385[0] = v126;
  v127 = [MEMORY[0x277D432A8] rowWithTitle:@"Suppress Hiding for Screenshots" valueKeyPath:@"suppressHidingInSnapshotsWhileEmpty"];
  v385[1] = v127;
  v128 = [MEMORY[0x277D431E8] rowWithTitle:@"Alpha Transition Duration" valueKeyPath:@"alphaTransitionDurationOnClonedDisplay"];
  v129 = [v128 between:0.0 and:1.0];
  v130 = [v129 precision:2];
  v385[2] = v130;
  v131 = [MEMORY[0x277CBEA60] arrayWithObjects:v385 count:3];
  v317 = [v125 sectionWithRows:v131 title:@"Screen Recording/Mirroring/Screenshots"];

  v132 = MEMORY[0x277D43210];
  v133 = [MEMORY[0x277D432A8] rowWithTitle:@"Suppress Fallback Pill for Remote Prototyping" valueKeyPath:@"hideRemotePrototypingFallbackPill"];
  v384 = v133;
  v134 = [MEMORY[0x277CBEA60] arrayWithObjects:&v384 count:1];
  v304 = [v132 sectionWithRows:v134 title:@"Remote Prototyping"];

  v299 = MEMORY[0x277D43210];
  v294 = [MEMORY[0x277D431E8] rowWithTitle:@"X Rubberbanding" valueKeyPath:@"resizeGestureXRubberbanding"];
  v288 = [v294 between:0.0 and:2.0];
  v281 = [v288 precision:2];
  v383[0] = v281;
  v274 = [MEMORY[0x277D431E8] rowWithTitle:@"Y Rubberbanding (Stretch)" valueKeyPath:@"resizeGestureYRubberbandingStretch"];
  v267 = [v274 between:0.0 and:2.0];
  v260 = [v267 precision:2];
  v383[1] = v260;
  v253 = [MEMORY[0x277D431E8] rowWithTitle:@"Y Rubberbanding (Compress)" valueKeyPath:@"resizeGestureYRubberbandingCompress"];
  v247 = [v253 between:0.0 and:2.0];
  v242 = [v247 precision:2];
  v383[2] = v242;
  v237 = [MEMORY[0x277D431E8] rowWithTitle:@"Y Begin 1-1 Tracking" valueKeyPath:@"resizeGestureYRangeBeginTracking"];
  v233 = [v237 between:0.0 and:2.0];
  v231 = [v233 precision:2];
  v383[3] = v231;
  v229 = [MEMORY[0x277D431E8] rowWithTitle:@"Y End 1-1 Tracking" valueKeyPath:@"resizeGestureYRangeEndTracking"];
  v227 = [v229 between:0.0 and:2.0];
  v225 = [v227 precision:2];
  v383[4] = v225;
  v135 = [MEMORY[0x277D431E8] rowWithTitle:@"Slide Up Factor" valueKeyPath:@"resizeGestureUpOffsetFactor"];
  v136 = [v135 between:0.0 and:100.0];
  v137 = [v136 precision:2];
  v383[5] = v137;
  v138 = [MEMORY[0x277D431E8] rowWithTitle:@"Min Edge Padding" valueKeyPath:@"resizeGestureMinEdgePadding"];
  v139 = [v138 between:0.0 and:100.0];
  v140 = [v139 precision:2];
  v383[6] = v140;
  v141 = [MEMORY[0x277D431E8] rowWithTitle:@"Compress Sensor X Safety Margin" valueKeyPath:@"resizeGestureSensorXSafetyMargin"];
  v142 = [v141 between:0.0 and:100.0];
  v143 = [v142 precision:2];
  v383[7] = v143;
  v144 = [MEMORY[0x277CBEA60] arrayWithObjects:v383 count:8];
  v300 = [v299 sectionWithRows:v144 title:@"Resize Gesture"];

  v295 = MEMORY[0x277D43210];
  v289 = [MEMORY[0x277D431E8] rowWithTitle:@"Baby Translate Stretch" valueKeyPath:@"recombineGestureTranslateFactorStretch"];
  v282 = [v289 between:0.0 and:300.0];
  v275 = [v282 precision:2];
  v382[0] = v275;
  v268 = [MEMORY[0x277D431E8] rowWithTitle:@"Baby Translate Compress" valueKeyPath:@"recombineGestureTranslateFactorCompress"];
  v261 = [v268 between:0.0 and:300.0];
  v254 = [v261 precision:2];
  v382[1] = v254;
  v248 = [MEMORY[0x277D431E8] rowWithTitle:@"Baby X Scale Stretch" valueKeyPath:@"recombineGestureXScaleFactorStretch"];
  v243 = [v248 between:0.0 and:1.0];
  v238 = [v243 precision:2];
  v382[2] = v238;
  v145 = [MEMORY[0x277D431E8] rowWithTitle:@"Baby X Scale Compress" valueKeyPath:@"recombineGestureXScaleFactorCompress"];
  v146 = [v145 between:0.0 and:1.0];
  v147 = [v146 precision:2];
  v382[3] = v147;
  v148 = [MEMORY[0x277D431E8] rowWithTitle:@"Baby Rubberbanding Stretch" valueKeyPath:@"recombineGestureXRubberbandingStretch"];
  v149 = [v148 between:0.0 and:1.0];
  v150 = [v149 precision:2];
  v382[4] = v150;
  v151 = [MEMORY[0x277D431E8] rowWithTitle:@"Baby Rubberbanding Compress" valueKeyPath:@"recombineGestureXRubberbandingCompress"];
  v152 = [v151 between:0.0 and:1.0];
  v153 = [v152 precision:2];
  v382[5] = v153;
  v154 = [MEMORY[0x277CBEA60] arrayWithObjects:v382 count:6];
  v296 = [v295 sectionWithRows:v154 title:@"Recombine Gesture"];

  v290 = MEMORY[0x277D43210];
  v283 = [MEMORY[0x277D431E8] rowWithTitle:@"Up Rebound Delay" valueKeyPath:@"acceptanceUpBounceReboundDelay"];
  v276 = [v283 between:0.0 and:2.0];
  v269 = [v276 precision:2];
  v381[0] = v269;
  v262 = [MEMORY[0x277D431E8] rowWithTitle:@"Up Item Appearance Delay Offset" valueKeyPath:@"acceptanceUpBounceItemAppearanceDelayOffset"];
  v255 = [v262 between:0.0 and:2.0];
  v249 = [v255 precision:2];
  v381[1] = v249;
  v244 = [MEMORY[0x277D431E8] rowWithTitle:@"Up Finishing Delay" valueKeyPath:@"acceptanceUpBounceFinishingDelay"];
  v239 = [v244 between:0.0 and:2.0];
  v234 = [v239 precision:2];
  v381[2] = v234;
  v232 = [MEMORY[0x277D431E8] rowWithTitle:@"Up Y Stretch" valueKeyPath:@"acceptanceUpBounceYStretch"];
  v230 = [v232 between:0.0 and:500.0];
  v228 = [v230 precision:1];
  v381[3] = v228;
  v226 = [MEMORY[0x277D431E8] rowWithTitle:@"Up Y Down Stretch" valueKeyPath:@"acceptanceUpBounceYDownStretch"];
  v224 = [v226 between:0.0 and:500.0];
  v223 = [v224 precision:1];
  v381[4] = v223;
  v222 = [MEMORY[0x277D431E8] rowWithTitle:@"Up X Padding" valueKeyPath:@"acceptanceUpBounceXPadding"];
  v221 = [v222 between:0.0 and:500.0];
  v220 = [v221 precision:1];
  v381[5] = v220;
  v219 = [MEMORY[0x277D431E8] rowWithTitle:@"Up Overshoot Scale" valueKeyPath:@"acceptanceUpBounceFixedOvershootScaling"];
  v218 = [v219 between:0.0 and:2.0];
  v217 = [v218 precision:3];
  v381[6] = v217;
  v216 = [MEMORY[0x277D431D8] rowWithTitle:@"Up Stretch Settings" childSettingsKeyPath:@"acceptanceBounceStretch"];
  v381[7] = v216;
  v215 = [MEMORY[0x277D431D8] rowWithTitle:@"Up Rebound Settings" childSettingsKeyPath:@"acceptanceBounceRebound"];
  v381[8] = v215;
  v214 = [MEMORY[0x277D431D8] rowWithTitle:@"Up Layout Settings" childSettingsKeyPath:@"acceptanceBounceLayout"];
  v381[9] = v214;
  v213 = [MEMORY[0x277D431E8] rowWithTitle:@"Up/Side Velocity Threshld" valueKeyPath:@"acceptanceSideBounceXVelocityThreshold"];
  v212 = [v213 between:0.0 and:10000.0];
  v211 = [v212 precision:1];
  v381[10] = v211;
  v210 = [MEMORY[0x277D431E8] rowWithTitle:@"Side Rebound Delay" valueKeyPath:@"acceptanceSideBounceReboundDelay"];
  v209 = [v210 between:0.0 and:2.0];
  v208 = [v209 precision:2];
  v381[11] = v208;
  v207 = [MEMORY[0x277D431E8] rowWithTitle:@"Side Item Appearance Delay Offset" valueKeyPath:@"acceptanceSideBounceItemAppearanceDelayOffset"];
  v206 = [v207 between:0.0 and:2.0];
  v205 = [v206 precision:2];
  v381[12] = v205;
  v204 = [MEMORY[0x277D431E8] rowWithTitle:@"Side Finishing Delay" valueKeyPath:@"acceptanceSideBounceFinishingDelay"];
  v203 = [v204 between:0.0 and:2.0];
  v202 = [v203 precision:2];
  v381[13] = v202;
  v201 = [MEMORY[0x277D431E8] rowWithTitle:@"Side X Stretch" valueKeyPath:@"acceptanceSideBounceXStretch"];
  v200 = [v201 between:0.0 and:500.0];
  v199 = [v200 precision:1];
  v381[14] = v199;
  v198 = [MEMORY[0x277D431E8] rowWithTitle:@"Side Y Padding" valueKeyPath:@"acceptanceSideBounceYPadding"];
  v197 = [v198 between:0.0 and:500.0];
  v196 = [v197 precision:1];
  v381[15] = v196;
  v155 = [MEMORY[0x277D431E8] rowWithTitle:@"Side X Shake Sensor Expansion" valueKeyPath:@"acceptanceSideBounceXSensorExpansion"];
  v156 = [v155 between:-500.0 and:500.0];
  v157 = [v156 precision:1];
  v381[16] = v157;
  v158 = [MEMORY[0x277D431E8] rowWithTitle:@"Side X Shake Sensor Offset" valueKeyPath:@"acceptanceSideBounceXSensorOffset"];
  v159 = [v158 between:-500.0 and:500.0];
  v160 = [v159 precision:1];
  v381[17] = v160;
  v161 = [MEMORY[0x277D431D8] rowWithTitle:@"Side Stretch Settings" childSettingsKeyPath:@"acceptanceBounceSideStretch"];
  v381[18] = v161;
  v162 = [MEMORY[0x277D431D8] rowWithTitle:@"Side Rebound Settings" childSettingsKeyPath:@"acceptanceBounceSideRebound"];
  v381[19] = v162;
  v163 = [MEMORY[0x277D431D8] rowWithTitle:@"Side Layout Settings" childSettingsKeyPath:@"acceptanceBounceSideLayout"];
  v381[20] = v163;
  v164 = [MEMORY[0x277CBEA60] arrayWithObjects:v381 count:21];
  v291 = [v290 sectionWithRows:v164 title:@"Acceptance Bounce"];

  v284 = MEMORY[0x277D43210];
  v277 = [MEMORY[0x277D431E8] rowWithTitle:@"X increase" valueKeyPath:@"ejectionXStretch"];
  v270 = [v277 between:0.0 and:300.0];
  v263 = [v270 precision:2];
  v380[0] = v263;
  v256 = [MEMORY[0x277D431E8] rowWithTitle:@"Y increase" valueKeyPath:@"ejectionYStretch"];
  v250 = [v256 between:0.0 and:300.0];
  v245 = [v250 precision:2];
  v380[1] = v245;
  v240 = [MEMORY[0x277D431E8] rowWithTitle:@"Y Up Offset" valueKeyPath:@"ejectionYUpOffset"];
  v235 = [v240 between:-300.0 and:300.0];
  v165 = [v235 precision:2];
  v380[2] = v165;
  v166 = [MEMORY[0x277D431E8] rowWithTitle:@"Duration" valueKeyPath:@"ejectionStretchDuration"];
  v167 = [v166 between:0.0 and:1.0];
  v168 = [v167 precision:2];
  v380[3] = v168;
  v169 = [MEMORY[0x277D431E8] rowWithTitle:@"Max Corner Radius" valueKeyPath:@"ejectionMaxCornerRadius"];
  v170 = [v169 between:0.0 and:200.0];
  v171 = [v170 precision:2];
  v380[4] = v171;
  v172 = [MEMORY[0x277D431D8] rowWithTitle:@"Stretch Settings" childSettingsKeyPath:@"ejectionStretchSettings"];
  v380[5] = v172;
  v173 = [MEMORY[0x277D431D8] rowWithTitle:@"Contraction Settings" childSettingsKeyPath:@"ejectionContractionSettings"];
  v380[6] = v173;
  v174 = [MEMORY[0x277CBEA60] arrayWithObjects:v380 count:7];
  v285 = [v284 sectionWithRows:v174 title:@"Ejection Stretch"];

  v175 = MEMORY[0x277D43210];
  v176 = [MEMORY[0x277D43290] rowWithTitle:@"Min. required" valueKeyPath:@"minimumRequiredSymmetryInCompactLayoutMode"];
  v177 = [v176 minValue:0.25 maxValue:1.0];
  v379[0] = v177;
  v178 = [MEMORY[0x277D43290] rowWithTitle:@"Max symmetric padding" valueKeyPath:@"paddingFromScreenEdgeRequiringSymmetricLayout"];
  v179 = [v178 minValue:0.0 maxValue:100.0];
  v379[1] = v179;
  v180 = [MEMORY[0x277CBEA60] arrayWithObjects:v379 count:2];
  v278 = [v175 sectionWithRows:v180 title:@"Compact Layout Symmetry"];

  v181 = MEMORY[0x277D43210];
  v182 = [MEMORY[0x277D432A8] rowWithTitle:@"Suppress during Control Center Presentation" valueKeyPath:@"suppressWhilePresentingControlCenter"];
  v378 = v182;
  v183 = [MEMORY[0x277CBEA60] arrayWithObjects:&v378 count:1];
  v271 = [v181 sectionWithRows:v183 title:@"Suppression"];

  v184 = MEMORY[0x277D43210];
  v185 = [MEMORY[0x277D432A8] rowWithTitle:@"Element Shadow" valueKeyPath:@"elementShadowEnabled"];
  v377[0] = v185;
  v186 = [MEMORY[0x277D432A8] rowWithTitle:@"Background Blur" valueKeyPath:@"backgroundBlurEnabled"];
  v377[1] = v186;
  v187 = [MEMORY[0x277CBEA60] arrayWithObjects:v377 count:2];
  v264 = [v184 sectionWithRows:v187 title:@"Background Separation"];

  v188 = MEMORY[0x277D43210];
  v189 = [MEMORY[0x277D432A8] rowWithTitle:@"Show Query Iteration Label" valueKeyPath:@"showQueryIterationLabel"];
  v376[0] = v189;
  v190 = [MEMORY[0x277D432A8] rowWithTitle:@"Force Jindo RTL Layout" valueKeyPath:@"forceRTLLayout"];
  v376[1] = v190;
  v191 = [MEMORY[0x277D432A8] rowWithTitle:@"Secure Flip Book Capture Verbose" valueKeyPath:@"secureFlipBookCaptureVerbose"];
  v376[2] = v191;
  v192 = [MEMORY[0x277CBEA60] arrayWithObjects:v376 count:3];
  v193 = [v188 sectionWithRows:v192 title:@"Debugging"];

  v375[0] = v374;
  v375[1] = v373;
  v375[2] = v371;
  v375[3] = v369;
  v375[4] = v367;
  v375[5] = v364;
  v375[6] = v361;
  v375[7] = v328;
  v375[8] = v358;
  v375[9] = v355;
  v375[10] = v352;
  v375[11] = v349;
  v375[12] = v345;
  v375[13] = v340;
  v375[14] = v334;
  v375[15] = v322;
  v375[16] = v317;
  v375[17] = v304;
  v375[18] = v300;
  v375[19] = v296;
  v375[20] = v291;
  v375[21] = v285;
  v375[22] = v278;
  v375[23] = v271;
  v375[24] = v264;
  v375[25] = v193;
  v194 = [MEMORY[0x277CBEA60] arrayWithObjects:v375 count:26];
  v257 = [MEMORY[0x277D43210] moduleWithTitle:@"System Aperture" contents:v194];

  return v257;
}

@end