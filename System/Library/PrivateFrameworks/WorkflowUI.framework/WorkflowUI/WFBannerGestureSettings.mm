@interface WFBannerGestureSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation WFBannerGestureSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = WFBannerGestureSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(WFBannerGestureSettings *)self setPoofResponse:0.55];
  [(WFBannerGestureSettings *)self setPoofScaleUp:0.56];
  [(WFBannerGestureSettings *)self setPoof_scale_multiplier_y:0.92];
  [(WFBannerGestureSettings *)self setPoofScaleDown:0.550000012];
  [(WFBannerGestureSettings *)self setPoofThrowDistanceDown:-110.0];
  [(WFBannerGestureSettings *)self setPoofThrowDistanceUp:-60.0];
  [(WFBannerGestureSettings *)self setFixedEndTranslationUpEnabled:1];
  [(WFBannerGestureSettings *)self setFixedEndTranslationUp:28.0];
  [(WFBannerGestureSettings *)self setAlphaOutEnabled:1];
  [(WFBannerGestureSettings *)self setPoofAlphaResponse:0.32];
  [(WFBannerGestureSettings *)self setPoofAlphaDelay:0.12];
  [(WFBannerGestureSettings *)self setPoofBlurRadius:15.0];
  [(WFBannerGestureSettings *)self setPoofBlurResponse:0.45];
  [(WFBannerGestureSettings *)self setPoofBlurDelay:0.08];
  [(WFBannerGestureSettings *)self setSqueezeEnabled:1];
  [(WFBannerGestureSettings *)self setTrackingSqueezeFactor:0.5];
  [(WFBannerGestureSettings *)self setRubberBandingEnabled:1];
  [(WFBannerGestureSettings *)self setTopLimit:-20.0];
  [(WFBannerGestureSettings *)self setTopRubberBandRange:32.0];
  [(WFBannerGestureSettings *)self setBottomLimit:40.0];
  [(WFBannerGestureSettings *)self setBottomRubberBandRange:220.0];
  [(WFBannerGestureSettings *)self setHorizontalTrackingEnabled:1];
  [(WFBannerGestureSettings *)self setHorizontalTrackingFriction:0.99];
  [(WFBannerGestureSettings *)self setTrackingBlurEnabled:1];
  [(WFBannerGestureSettings *)self setBlurTopLimit:-65.0];
  [(WFBannerGestureSettings *)self setBlurBottomLimit:200.0];
  [(WFBannerGestureSettings *)self setTrackingResponse:0.16];
  [(WFBannerGestureSettings *)self setTrackingDampingRatio:0.75];
  [(WFBannerGestureSettings *)self setTrackingScale:0.38];
  [(WFBannerGestureSettings *)self setSqueeze_up:0.11];
  [(WFBannerGestureSettings *)self setScrollDismissalActivationLeniency:12.0];
  [(WFBannerGestureSettings *)self setTestUnregisteredVelocityEdgeCase:0];
  [(WFBannerGestureSettings *)self setPhase1_response:0.5];
  [(WFBannerGestureSettings *)self setPhase1_impulse:0.018];
  [(WFBannerGestureSettings *)self setPhase1_impulse_unregisteredVelocity:0.042];
  [(WFBannerGestureSettings *)self setPhase1_artificialInitialOffset:34.0];
  [(WFBannerGestureSettings *)self setPhase1_initialScale:0.6];
  [(WFBannerGestureSettings *)self setPhase1_initialBlurRadius:5.0];
  [(WFBannerGestureSettings *)self setPhase1_phaseDuration:0.08];
}

+ (id)settingsControllerModule
{
  v158[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D43218];
  v3 = MEMORY[0x277D431A8];
  v4 = [MEMORY[0x277D43238] actionWithSettingsKeyPath:0];
  v5 = [v3 rowWithTitle:@"Restore Defaults" action:v4];
  v158[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v158 count:1];
  v144 = [v2 sectionWithRows:v6];

  v142 = MEMORY[0x277D43218];
  v140 = [MEMORY[0x277D431F0] rowWithTitle:@"Transform Response" valueKeyPath:@"poofResponse"];
  v138 = [v140 between:0.0 and:10.0];
  v157[0] = v138;
  v135 = [MEMORY[0x277D431F0] rowWithTitle:@"Scale (Upward)" valueKeyPath:@"poofScaleUp"];
  v132 = [v135 between:0.0 and:2.0];
  v157[1] = v132;
  v128 = [MEMORY[0x277D431F0] rowWithTitle:@"Vertical Scale Multiplier" valueKeyPath:@"poof_scale_multiplier_y"];
  v124 = [v128 between:0.0 and:2.0];
  v157[2] = v124;
  v121 = [MEMORY[0x277D432A0] rowWithTitle:@"Fixed Endpoint (Upward)" valueKeyPath:@"fixedEndTranslationUpEnabled"];
  v157[3] = v121;
  v117 = [MEMORY[0x277D431F0] rowWithTitle:@"Endpoint (Upward)" valueKeyPath:@"fixedEndTranslationUp"];
  v115 = [v117 between:-500.0 and:500.0];
  v113 = [v115 precision:0];
  v111 = [v113 conditionFormat:@"fixedEndTranslationUpEnabled = YES"];
  v157[4] = v111;
  v109 = [MEMORY[0x277D431F0] rowWithTitle:@"Throw Distance (Upward)" valueKeyPath:@"poofThrowDistanceUp"];
  v107 = [v109 between:-500.0 and:500.0];
  v7 = [v107 precision:0];
  v8 = [v7 conditionFormat:@"fixedEndTranslationUpEnabled = NO"];
  v157[5] = v8;
  v9 = [MEMORY[0x277D431F0] rowWithTitle:@"Scale (Downward)" valueKeyPath:@"poofScaleDown"];
  v10 = [v9 between:0.0 and:2.0];
  v11 = [v10 conditionFormat:@"squeezeEnabled = NO"];
  v157[6] = v11;
  v12 = [MEMORY[0x277D431F0] rowWithTitle:@"Throw Distance (Downward)" valueKeyPath:@"poofThrowDistanceDown"];
  v13 = [v12 between:-500.0 and:500.0];
  v14 = [v13 precision:0];
  v15 = [v14 conditionFormat:@"squeezeEnabled = NO"];
  v157[7] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v157 count:8];
  v143 = [v142 sectionWithRows:v16 title:@"Interactive Poof (Phase 2)"];

  v17 = MEMORY[0x277D43218];
  v18 = [MEMORY[0x277D432A0] rowWithTitle:@"Alpha" valueKeyPath:@"alphaOutEnabled"];
  v156[0] = v18;
  v19 = [MEMORY[0x277D431F0] rowWithTitle:@"Response" valueKeyPath:@"poofAlphaResponse"];
  v20 = [v19 between:0.0 and:1.0];
  v21 = [v20 conditionFormat:@"alphaOutEnabled = YES"];
  v156[1] = v21;
  v22 = [MEMORY[0x277D431F0] rowWithTitle:@"Delay" valueKeyPath:@"poofAlphaDelay"];
  v23 = [v22 between:0.0 and:1.0];
  v24 = [v23 conditionFormat:@"alphaOutEnabled = YES"];
  v156[2] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v156 count:3];
  v141 = [v17 sectionWithRows:v25 title:0];

  v26 = MEMORY[0x277D43218];
  v27 = [MEMORY[0x277D431F0] rowWithTitle:@"Blur Radius" valueKeyPath:@"poofBlurRadius"];
  v28 = [v27 between:0.0 and:1.79769313e308];
  v29 = [v28 precision:0];
  v155[0] = v29;
  v30 = [MEMORY[0x277D431F0] rowWithTitle:@"Blur Response" valueKeyPath:@"poofBlurResponse"];
  v31 = [v30 between:0.0 and:1.79769313e308];
  v155[1] = v31;
  v32 = [MEMORY[0x277D431F0] rowWithTitle:@"Blur Delay" valueKeyPath:@"poofBlurDelay"];
  v33 = [v32 between:0.0 and:1.79769313e308];
  v155[2] = v33;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v155 count:3];
  v139 = [v26 sectionWithRows:v34 title:0];

  v136 = MEMORY[0x277D43218];
  v133 = [MEMORY[0x277D431F0] rowWithTitle:@"Response" valueKeyPath:@"phase1_response"];
  v154[0] = v133;
  v129 = [MEMORY[0x277D431F0] rowWithTitle:@"Impulse" valueKeyPath:@"phase1_impulse"];
  v125 = [v129 between:0.0 and:1.79769313e308];
  v35 = [v125 precision:3];
  v154[1] = v35;
  v36 = [MEMORY[0x277D431F0] rowWithTitle:@"Impulse (Unregistered Velocity)" valueKeyPath:@"phase1_impulse_unregisteredVelocity"];
  v37 = [v36 between:0.0 and:1.79769313e308];
  v38 = [v37 precision:3];
  v154[2] = v38;
  v39 = [MEMORY[0x277D431F0] rowWithTitle:@"Offset" valueKeyPath:@"phase1_artificialInitialOffset"];
  v154[3] = v39;
  v40 = [MEMORY[0x277D431F0] rowWithTitle:@"Scale" valueKeyPath:@"phase1_initialScale"];
  v154[4] = v40;
  v41 = [MEMORY[0x277D431F0] rowWithTitle:@"Blur Radius" valueKeyPath:@"phase1_initialBlurRadius"];
  v154[5] = v41;
  v42 = [MEMORY[0x277D431F0] rowWithTitle:@"Intermediate Phase Duration" valueKeyPath:@"phase1_phaseDuration"];
  v43 = [v42 precision:2];
  v154[6] = v43;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v154 count:7];
  v137 = [v136 sectionWithRows:v44 title:@"Interactive Poof (Phase 1)"];

  v45 = MEMORY[0x277D43218];
  v46 = [MEMORY[0x277D431F0] rowWithTitle:@"Tracking Response" valueKeyPath:@"trackingResponse"];
  v47 = [v46 between:0.0 and:1.79769313e308];
  v48 = [v47 precision:2];
  v153[0] = v48;
  v49 = [MEMORY[0x277D431F0] rowWithTitle:@"Tracking Damping Ratio" valueKeyPath:@"trackingDampingRatio"];
  v50 = [v49 between:0.0 and:1.79769313e308];
  v51 = [v50 precision:2];
  v153[1] = v51;
  v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v153 count:2];
  v134 = [v45 sectionWithRows:v52 title:@"Gesture"];

  v130 = MEMORY[0x277D43218];
  v126 = [MEMORY[0x277D432A0] rowWithTitle:@"Rubber Banding" valueKeyPath:@"rubberBandingEnabled"];
  v152[0] = v126;
  v122 = [MEMORY[0x277D431F0] rowWithTitle:@"Start Offset (Upward)" valueKeyPath:@"topLimit"];
  v118 = [v122 between:-1.79769313e308 and:0.0];
  v116 = [v118 precision:0];
  v114 = [v116 conditionFormat:@"rubberBandingEnabled = YES"];
  v152[1] = v114;
  v112 = [MEMORY[0x277D431F0] rowWithTitle:@"Range (Upward)" valueKeyPath:@"topRubberBandRange"];
  v110 = [v112 between:5.0 and:1.79769313e308];
  v108 = [v110 precision:0];
  v53 = [v108 conditionFormat:@"rubberBandingEnabled = YES"];
  v152[2] = v53;
  v54 = [MEMORY[0x277D431F0] rowWithTitle:@"Start Offset (Downward)" valueKeyPath:@"bottomLimit"];
  v55 = [v54 between:0.0 and:1.79769313e308];
  v56 = [v55 precision:0];
  v57 = [v56 conditionFormat:@"rubberBandingEnabled = YES"];
  v152[3] = v57;
  v58 = [MEMORY[0x277D431F0] rowWithTitle:@"Range (Downward)" valueKeyPath:@"bottomRubberBandRange"];
  v59 = [v58 between:0.0 and:1.79769313e308];
  v60 = [v59 precision:0];
  v61 = [v60 conditionFormat:@"rubberBandingEnabled = YES"];
  v152[4] = v61;
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v152 count:5];
  v131 = [v130 sectionWithRows:v62 title:0];

  v63 = MEMORY[0x277D43218];
  v64 = [MEMORY[0x277D432A0] rowWithTitle:@"Horizontal Tracking" valueKeyPath:@"horizontalTrackingEnabled"];
  v151[0] = v64;
  v65 = [MEMORY[0x277D431F0] rowWithTitle:@"Friction" valueKeyPath:@"horizontalTrackingFriction"];
  v66 = [v65 between:0.0 and:1.0];
  v67 = [v66 precision:3];
  v68 = [v67 conditionFormat:@"horizontalTrackingEnabled = YES"];
  v151[1] = v68;
  v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v151 count:2];
  v127 = [v63 sectionWithRows:v69 title:0];

  v70 = MEMORY[0x277D43218];
  v71 = [MEMORY[0x277D432A0] rowWithTitle:@"Squeeze" valueKeyPath:@"squeezeEnabled"];
  v150[0] = v71;
  v72 = [MEMORY[0x277D431F0] rowWithTitle:@"Strength" valueKeyPath:@"trackingSqueezeFactor"];
  v73 = [v72 between:0.0 and:1.0];
  v74 = [v73 conditionFormat:@"squeezeEnabled = YES"];
  v150[1] = v74;
  v75 = [MEMORY[0x277CBEA60] arrayWithObjects:v150 count:2];
  v123 = [v70 sectionWithRows:v75 title:0];

  v119 = MEMORY[0x277D43218];
  v76 = [MEMORY[0x277D432A0] rowWithTitle:@"Tracking Blur" valueKeyPath:@"trackingBlurEnabled"];
  v149[0] = v76;
  v77 = [MEMORY[0x277D431F0] rowWithTitle:@"Blur Activation Offset (Upward)" valueKeyPath:@"blurTopLimit"];
  v78 = [v77 between:-1.79769313e308 and:0.0];
  v79 = [v78 precision:0];
  v80 = [v79 conditionFormat:@"trackingBlurEnabled == YES"];
  v149[1] = v80;
  v81 = [MEMORY[0x277D431F0] rowWithTitle:@"Blur Activation Offset (Downward)" valueKeyPath:@"blurBottomLimit"];
  v82 = [v81 between:0.0 and:1.79769313e308];
  v83 = [v82 precision:0];
  v84 = [v83 conditionFormat:@"trackingBlurEnabled == YES && squeezeEnabled = NO"];
  v149[2] = v84;
  v85 = [MEMORY[0x277CBEA60] arrayWithObjects:v149 count:3];
  v120 = [v119 sectionWithRows:v85 title:0];

  v86 = MEMORY[0x277D43218];
  v87 = [MEMORY[0x277D431F0] rowWithTitle:@"Tracking Scale" valueKeyPath:@"trackingScale"];
  v88 = [v87 between:0.0 and:1.0];
  v148[0] = v88;
  v89 = [MEMORY[0x277D431F0] rowWithTitle:@"Upwards Squeeze" valueKeyPath:@"squeeze_up"];
  v90 = [v89 between:0.0 and:1.0];
  v148[1] = v90;
  v91 = [MEMORY[0x277CBEA60] arrayWithObjects:v148 count:2];
  v92 = [v86 sectionWithRows:v91 title:0];

  v93 = MEMORY[0x277D43218];
  v94 = [MEMORY[0x277D431F0] rowWithTitle:@"Scroll Dismissal Leniency" valueKeyPath:@"scrollDismissalActivationLeniency"];
  v95 = [v94 between:0.0 and:1.79769313e308];
  v96 = [v95 precision:0];
  v147 = v96;
  v97 = [MEMORY[0x277CBEA60] arrayWithObjects:&v147 count:1];
  v98 = [v93 sectionWithRows:v97 title:0];

  v99 = MEMORY[0x277D43218];
  v100 = [MEMORY[0x277D432A0] rowWithTitle:@"Test Quick Flick" valueKeyPath:@"testUnregisteredVelocityEdgeCase"];
  v146 = v100;
  v101 = [MEMORY[0x277CBEA60] arrayWithObjects:&v146 count:1];
  v102 = [v99 sectionWithRows:v101 title:@"Debug"];

  v103 = MEMORY[0x277D43218];
  v145[0] = v144;
  v145[1] = v143;
  v145[2] = v141;
  v145[3] = v139;
  v145[4] = v137;
  v145[5] = v134;
  v145[6] = v131;
  v145[7] = v127;
  v145[8] = v123;
  v145[9] = v120;
  v145[10] = v92;
  v145[11] = v98;
  v145[12] = v102;
  v104 = [MEMORY[0x277CBEA60] arrayWithObjects:v145 count:13];
  v105 = [v103 moduleWithTitle:@"Custom Banner Transitions" contents:v104];

  return v105;
}

@end