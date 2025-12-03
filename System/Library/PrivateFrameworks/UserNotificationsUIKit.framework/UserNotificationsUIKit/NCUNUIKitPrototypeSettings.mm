@interface NCUNUIKitPrototypeSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation NCUNUIKitPrototypeSettings

+ (id)settingsControllerModule
{
  v135[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D431A8];
  v3 = [MEMORY[0x277D43238] actionWithSettingsKeyPath:0];
  v112 = [v2 rowWithTitle:@"Restore Defaults" action:v3];

  v4 = MEMORY[0x277D43218];
  v135[0] = v112;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v135 count:1];
  v125 = [v4 sectionWithRows:v5];

  v111 = [MEMORY[0x277D431E0] rowWithTitle:@"Scroll View Exclusion Settings" childSettingsKeyPath:@"scrollViewExclusionSettings"];
  v6 = MEMORY[0x277D43218];
  v134 = v111;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v134 count:1];
  v123 = [v6 sectionWithRows:v7 title:@"Modern Settings"];

  v110 = [MEMORY[0x277D431E0] rowWithTitle:@"List Animation Settings" childSettingsKeyPath:@"listAnimationSettings"];
  v8 = MEMORY[0x277D43218];
  v133 = v110;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v133 count:1];
  v121 = [v8 sectionWithRows:v9 title:@"List Settings"];

  v124 = [MEMORY[0x277D431E0] rowWithTitle:@"Brief Icon Opacity Settings" childSettingsKeyPath:@"briefIconOpacitySettings"];
  v10 = [MEMORY[0x277D431F0] rowWithTitle:@"Brief Icon Position Milestone" valueKeyPath:@"briefIconPositionMilestone"];
  v11 = [v10 between:0.0 and:1.0];
  v122 = [v11 precision:3];

  v109 = [MEMORY[0x277D431E0] rowWithTitle:@"Brief Icon Position Settings" childSettingsKeyPath:@"briefIconPositionSettings"];
  v12 = [MEMORY[0x277D431F0] rowWithTitle:@"Brief Icon Scale Milestone" valueKeyPath:@"briefIconScaleMilestone"];
  v13 = [v12 between:0.0 and:1.0];
  v108 = [v13 precision:3];

  v107 = [MEMORY[0x277D431E0] rowWithTitle:@"Brief Icon Scale Settings" childSettingsKeyPath:@"briefIconScaleSettings"];
  v14 = [MEMORY[0x277D431F0] rowWithTitle:@"Brief Grabber Milestone" valueKeyPath:@"briefGrabberMilestone"];
  v15 = [v14 between:0.0 and:1.0];
  v106 = [v15 precision:3];

  v105 = [MEMORY[0x277D431E0] rowWithTitle:@"Brief Grabber Settings" childSettingsKeyPath:@"briefGrabberSettings"];
  v104 = [MEMORY[0x277D431E0] rowWithTitle:@"Brief Text Opacity Settings" childSettingsKeyPath:@"briefTextOpacitySettings"];
  v16 = [MEMORY[0x277D431F0] rowWithTitle:@"Brief Text Position Milestone" valueKeyPath:@"briefTextPositionMilestone"];
  v17 = [v16 between:0.0 and:1.0];
  v103 = [v17 precision:3];

  v102 = [MEMORY[0x277D431E0] rowWithTitle:@"Brief Text Position Settings" childSettingsKeyPath:@"briefTextPositionSettings"];
  v101 = [MEMORY[0x277D431E0] rowWithTitle:@"Brief Background Settings" childSettingsKeyPath:@"briefBackgroundSettings"];
  v18 = MEMORY[0x277D43218];
  v132[0] = v124;
  v132[1] = v122;
  v132[2] = v109;
  v132[3] = v108;
  v132[4] = v107;
  v132[5] = v106;
  v132[6] = v105;
  v132[7] = v104;
  v132[8] = v103;
  v132[9] = v102;
  v132[10] = v101;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v132 count:11];
  v119 = [v18 sectionWithRows:v19 title:@"Brief Stage Animation Settings"];

  v20 = [MEMORY[0x277D431F0] rowWithTitle:@"Detail Stage Transition Delay" valueKeyPath:@"detailStageTransitionDelay"];
  v21 = [v20 between:0.0 and:10.0];
  v120 = [v21 precision:2];

  v22 = [MEMORY[0x277D431F0] rowWithTitle:@"Detail Stage Transition Max Attempts" valueKeyPath:@"detailStageTransitionMaxAttempts"];
  v23 = [v22 between:0.0 and:10.0];
  v118 = [v23 precision:0];

  v117 = [MEMORY[0x277D431E0] rowWithTitle:@"Detail Outgoing Text Position Settings" childSettingsKeyPath:@"detailOutgoingTextPositionSettings"];
  v116 = [MEMORY[0x277D431E0] rowWithTitle:@"Detail Outgoing Text Opacity Settings" childSettingsKeyPath:@"detailOutgoingTextOpacitySettings"];
  v100 = [MEMORY[0x277D431E0] rowWithTitle:@"Detail Icon Scale Settings" childSettingsKeyPath:@"detailIconScaleSettings"];
  v24 = [MEMORY[0x277D431F0] rowWithTitle:@"Detail Icon Position Milestone" valueKeyPath:@"detailIconPositionMilestone"];
  v25 = [v24 between:0.0 and:1.0];
  v99 = [v25 precision:2];

  v98 = [MEMORY[0x277D431E0] rowWithTitle:@"Detail Icon Position Settings" childSettingsKeyPath:@"detailIconPositionSettings"];
  v26 = [MEMORY[0x277D431F0] rowWithTitle:@"Detail Text Milestone" valueKeyPath:@"detailTextMilestone"];
  v27 = [v26 between:0.0 and:1.0];
  v97 = [v27 precision:2];

  v28 = [MEMORY[0x277D431F0] rowWithTitle:@"Detail Secondary Text Milestone" valueKeyPath:@"detailSecondaryTextMilestone"];
  v29 = [v28 between:0.0 and:1.0];
  v96 = [v29 precision:2];

  v95 = [MEMORY[0x277D431E0] rowWithTitle:@"Detail Text Position Settings" childSettingsKeyPath:@"detailTextPositionSettings"];
  v94 = [MEMORY[0x277D431E0] rowWithTitle:@"Detail Text Opacity Settings" childSettingsKeyPath:@"detailTextOpacitySettings"];
  v93 = [MEMORY[0x277D431E0] rowWithTitle:@"Detail Background Settings" childSettingsKeyPath:@"detailBackgroundSettings"];
  v30 = MEMORY[0x277D43218];
  v131[0] = v120;
  v131[1] = v118;
  v131[2] = v117;
  v131[3] = v116;
  v131[4] = v100;
  v131[5] = v99;
  v131[6] = v98;
  v131[7] = v97;
  v131[8] = v96;
  v131[9] = v95;
  v131[10] = v94;
  v131[11] = v93;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v131 count:12];
  v88 = [v30 sectionWithRows:v31 title:@"Detail Stage Animation Settings"];

  v92 = [MEMORY[0x277D431E0] rowWithTitle:@"Dismiss Icon Opacity Settings" childSettingsKeyPath:@"dismissIconOpacitySettings"];
  v91 = [MEMORY[0x277D431E0] rowWithTitle:@"Dismiss Text Opacity Settings" childSettingsKeyPath:@"dismissTextOpacitySettings"];
  v90 = [MEMORY[0x277D431E0] rowWithTitle:@"Dismiss Text Position Settings" childSettingsKeyPath:@"dismissTextPositionSettings"];
  v89 = [MEMORY[0x277D431E0] rowWithTitle:@"Dismiss Background Settings" childSettingsKeyPath:@"dismissBackgroundSettings"];
  v32 = MEMORY[0x277D43218];
  v130[0] = v92;
  v130[1] = v91;
  v130[2] = v90;
  v130[3] = v89;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v130 count:4];
  v87 = [v32 sectionWithRows:v33 title:@"Dismiss Stage Animation Settings"];

  v115 = [MEMORY[0x277D431E0] rowWithTitle:@"Interactive Animation Settings" childSettingsKeyPath:@"interactiveDismissalTrackingSettings"];
  v114 = [MEMORY[0x277D431E0] rowWithTitle:@"Automatic Animation Settings" childSettingsKeyPath:@"interactiveDismissalAutomaticSettings"];
  v113 = [MEMORY[0x277D431E0] rowWithTitle:@"Automatic Background Settings" childSettingsKeyPath:@"interactiveDismissalBackgoundSettings"];
  v34 = [MEMORY[0x277D431F0] rowWithTitle:@"Threshold" valueKeyPath:@"interactiveDismissalThreshold"];
  v35 = [v34 between:0.0 and:400.0];
  v86 = [v35 precision:1];

  v36 = [MEMORY[0x277D431F0] rowWithTitle:@"Rubberbanding Inset" valueKeyPath:@"interactiveDismissalRubberbandingInset"];
  v37 = [v36 between:0.0 and:200.0];
  v85 = [v37 precision:1];

  v38 = [MEMORY[0x277D431F0] rowWithTitle:@"Rubberbanding Range" valueKeyPath:@"interactiveDismissalRubberbandingRange"];
  v39 = [v38 between:0.0 and:400.0];
  v84 = [v39 precision:1];

  v40 = [MEMORY[0x277D431F0] rowWithTitle:@"Min Background Progress" valueKeyPath:@"interactiveDismissalMinBackgroundProgress"];
  v41 = [v40 between:0.0 and:1.0];
  v83 = [v41 precision:2];

  v42 = [MEMORY[0x277D431F0] rowWithTitle:@"Min Content Scale" valueKeyPath:@"interactiveDismissalMinContentScale"];
  v43 = [v42 between:0.0 and:1.0];
  v82 = [v43 precision:2];

  v44 = [MEMORY[0x277D431F0] rowWithTitle:@"Min Content Alpha" valueKeyPath:@"interactiveDismissalMinContentAlpha"];
  v45 = [v44 between:0.0 and:1.0];
  v81 = [v45 precision:2];

  v46 = [MEMORY[0x277D431F0] rowWithTitle:@"Final Content Scale" valueKeyPath:@"interactiveDismissalFinalContentScale"];
  v47 = [v46 between:0.0 and:1.0];
  v80 = [v47 precision:2];

  v48 = MEMORY[0x277D43218];
  v129[0] = v115;
  v129[1] = v114;
  v129[2] = v113;
  v129[3] = v86;
  v129[4] = v85;
  v129[5] = v84;
  v129[6] = v83;
  v129[7] = v82;
  v129[8] = v81;
  v129[9] = v80;
  v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v129 count:10];
  v79 = [v48 sectionWithRows:v49 title:@"Interactive Dismissal Settings"];

  v78 = [MEMORY[0x277D432A0] rowWithTitle:@"Make Hit Rects Visible" valueKeyPath:@"contentHitRectVisible"];
  v50 = [MEMORY[0x277D431F0] rowWithTitle:@"Leading Margin" valueKeyPath:@"contentHitRectLeadingMargin"];
  v51 = [v50 between:0.0 and:100.0];
  v77 = [v51 precision:2];

  v52 = [MEMORY[0x277D431F0] rowWithTitle:@"Trailing Margin" valueKeyPath:@"contentHitRectTrailingMargin"];
  v53 = [v52 between:0.0 and:100.0];
  v76 = [v53 precision:2];

  v54 = [MEMORY[0x277D431F0] rowWithTitle:@"Top Margin" valueKeyPath:@"contentHitRectTopMargin"];
  v55 = [v54 between:0.0 and:100.0];
  v75 = [v55 precision:2];

  v56 = [MEMORY[0x277D431F0] rowWithTitle:@"Bottom Margin" valueKeyPath:@"contentHitRectBottomMargin"];
  v57 = [v56 between:0.0 and:100.0];
  v58 = [v57 precision:2];

  v59 = MEMORY[0x277D43218];
  v128[0] = v78;
  v128[1] = v77;
  v128[2] = v76;
  v128[3] = v75;
  v128[4] = v58;
  v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v128 count:5];
  v61 = [v59 sectionWithRows:v60 title:@"Content Hit Testing"];

  v62 = [MEMORY[0x277D431F0] rowWithTitle:@"Dynamic Grouping Threshold" valueKeyPath:@"dynamicGroupingThreshold"];
  v63 = [v62 between:1.0 and:10.0];
  v64 = [v63 precision:0];

  v65 = [MEMORY[0x277D431F0] rowWithTitle:@"Dynamic Grouping Threshold (iPad)" valueKeyPath:@"dynamicGroupingThresholdPad"];
  v66 = [v65 between:1.0 and:10.0];
  v67 = [v66 precision:0];

  v68 = MEMORY[0x277D43218];
  v127[0] = v64;
  v127[1] = v67;
  v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v127 count:2];
  v70 = [v68 sectionWithRows:v69 title:@"Dynamic Grouping"];

  v71 = MEMORY[0x277D43218];
  v126[0] = v125;
  v126[1] = v123;
  v126[2] = v121;
  v126[3] = v119;
  v126[4] = v88;
  v126[5] = v87;
  v126[6] = v79;
  v126[7] = v61;
  v126[8] = v70;
  v72 = [MEMORY[0x277CBEA60] arrayWithObjects:v126 count:9];
  v73 = [v71 moduleWithTitle:@"Full Screen Banner Settings" contents:v72];

  return v73;
}

- (void)setDefaultValues
{
  v88.receiver = self;
  v88.super_class = NCUNUIKitPrototypeSettings;
  [(PTSettings *)&v88 setDefaultValues];
  listAnimationSettings = [(NCUNUIKitPrototypeSettings *)self listAnimationSettings];
  [listAnimationSettings setDefaultValues];

  [(NCUNUIKitPrototypeSettings *)self setBriefIconPositionMilestone:0.168];
  [(NCUNUIKitPrototypeSettings *)self setBriefIconScaleMilestone:0.337];
  [(NCUNUIKitPrototypeSettings *)self setBriefGrabberMilestone:0.85];
  [(NCUNUIKitPrototypeSettings *)self setBriefTextPositionMilestone:0.015];
  briefIconPositionSettings = [(NCUNUIKitPrototypeSettings *)self briefIconPositionSettings];
  [briefIconPositionSettings setDefaultValues];

  briefIconPositionSettings2 = [(NCUNUIKitPrototypeSettings *)self briefIconPositionSettings];
  [briefIconPositionSettings2 setDampingRatio:?];

  briefIconPositionSettings3 = [(NCUNUIKitPrototypeSettings *)self briefIconPositionSettings];
  [briefIconPositionSettings3 setResponse:0.702481473];

  briefIconPositionSettings4 = [(NCUNUIKitPrototypeSettings *)self briefIconPositionSettings];
  v89 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [briefIconPositionSettings4 setFrameRateRange:2621441 highFrameRateReason:{*&v89.minimum, *&v89.maximum, *&v89.preferred}];

  briefIconScaleSettings = [(NCUNUIKitPrototypeSettings *)self briefIconScaleSettings];
  [briefIconScaleSettings setDefaultValues];

  briefIconScaleSettings2 = [(NCUNUIKitPrototypeSettings *)self briefIconScaleSettings];
  [briefIconScaleSettings2 setDampingRatio:0.9];

  briefIconScaleSettings3 = [(NCUNUIKitPrototypeSettings *)self briefIconScaleSettings];
  [briefIconScaleSettings3 setResponse:1.0];

  briefIconScaleSettings4 = [(NCUNUIKitPrototypeSettings *)self briefIconScaleSettings];
  v90 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [briefIconScaleSettings4 setFrameRateRange:2621441 highFrameRateReason:{*&v90.minimum, *&v90.maximum, *&v90.preferred}];

  briefIconOpacitySettings = [(NCUNUIKitPrototypeSettings *)self briefIconOpacitySettings];
  [briefIconOpacitySettings setDefaultValues];

  briefIconOpacitySettings2 = [(NCUNUIKitPrototypeSettings *)self briefIconOpacitySettings];
  [briefIconOpacitySettings2 setDampingRatio:1.02062073];

  briefIconOpacitySettings3 = [(NCUNUIKitPrototypeSettings *)self briefIconOpacitySettings];
  [briefIconOpacitySettings3 setResponse:0.513019932];

  briefIconOpacitySettings4 = [(NCUNUIKitPrototypeSettings *)self briefIconOpacitySettings];
  v91 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [briefIconOpacitySettings4 setFrameRateRange:2621441 highFrameRateReason:{*&v91.minimum, *&v91.maximum, *&v91.preferred}];

  briefGrabberSettings = [(NCUNUIKitPrototypeSettings *)self briefGrabberSettings];
  [briefGrabberSettings setDefaultCriticallyDampedValues];

  briefGrabberSettings2 = [(NCUNUIKitPrototypeSettings *)self briefGrabberSettings];
  [briefGrabberSettings2 response];
  [briefGrabberSettings2 setResponse:v18 + v18];

  briefGrabberSettings3 = [(NCUNUIKitPrototypeSettings *)self briefGrabberSettings];
  v92 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [briefGrabberSettings3 setFrameRateRange:2621441 highFrameRateReason:{*&v92.minimum, *&v92.maximum, *&v92.preferred}];

  briefTextPositionSettings = [(NCUNUIKitPrototypeSettings *)self briefTextPositionSettings];
  [briefTextPositionSettings setDefaultValues];

  briefTextPositionSettings2 = [(NCUNUIKitPrototypeSettings *)self briefTextPositionSettings];
  [briefTextPositionSettings2 setDampingRatio:0.8];

  briefTextPositionSettings3 = [(NCUNUIKitPrototypeSettings *)self briefTextPositionSettings];
  [briefTextPositionSettings3 setResponse:0.9];

  briefTextPositionSettings4 = [(NCUNUIKitPrototypeSettings *)self briefTextPositionSettings];
  v93 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [briefTextPositionSettings4 setFrameRateRange:2621441 highFrameRateReason:{*&v93.minimum, *&v93.maximum, *&v93.preferred}];

  briefTextOpacitySettings = [(NCUNUIKitPrototypeSettings *)self briefTextOpacitySettings];
  [briefTextOpacitySettings setDefaultValues];

  briefTextOpacitySettings2 = [(NCUNUIKitPrototypeSettings *)self briefTextOpacitySettings];
  [briefTextOpacitySettings2 setDampingRatio:1.02062073];

  briefTextOpacitySettings3 = [(NCUNUIKitPrototypeSettings *)self briefTextOpacitySettings];
  [briefTextOpacitySettings3 setResponse:0.513019932];

  briefTextOpacitySettings4 = [(NCUNUIKitPrototypeSettings *)self briefTextOpacitySettings];
  v94 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [briefTextOpacitySettings4 setFrameRateRange:2621441 highFrameRateReason:{*&v94.minimum, *&v94.maximum, *&v94.preferred}];

  briefBackgroundSettings = [(NCUNUIKitPrototypeSettings *)self briefBackgroundSettings];
  [briefBackgroundSettings setDefaultValues];

  briefBackgroundSettings2 = [(NCUNUIKitPrototypeSettings *)self briefBackgroundSettings];
  [briefBackgroundSettings2 setDampingRatio:0.9];

  briefBackgroundSettings3 = [(NCUNUIKitPrototypeSettings *)self briefBackgroundSettings];
  [briefBackgroundSettings3 setResponse:0.5];

  briefBackgroundSettings4 = [(NCUNUIKitPrototypeSettings *)self briefBackgroundSettings];
  v95 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [briefBackgroundSettings4 setFrameRateRange:2621441 highFrameRateReason:{*&v95.minimum, *&v95.maximum, *&v95.preferred}];

  [(NCUNUIKitPrototypeSettings *)self setDetailStageTransitionDelay:1.0];
  [(NCUNUIKitPrototypeSettings *)self setDetailStageTransitionMaxAttempts:4];
  [(NCUNUIKitPrototypeSettings *)self setDynamicGroupingThreshold:4];
  [(NCUNUIKitPrototypeSettings *)self setDynamicGroupingThresholdPad:6];
  [(NCUNUIKitPrototypeSettings *)self setDetailIconPositionMilestone:0.185];
  [(NCUNUIKitPrototypeSettings *)self setDetailTextMilestone:0.85];
  [(NCUNUIKitPrototypeSettings *)self setDetailSecondaryTextMilestone:0.7];
  detailOutgoingTextPositionSettings = [(NCUNUIKitPrototypeSettings *)self detailOutgoingTextPositionSettings];
  [detailOutgoingTextPositionSettings setDefaultValues];

  detailOutgoingTextPositionSettings2 = [(NCUNUIKitPrototypeSettings *)self detailOutgoingTextPositionSettings];
  [detailOutgoingTextPositionSettings2 setDampingRatio:1.021];

  detailOutgoingTextPositionSettings3 = [(NCUNUIKitPrototypeSettings *)self detailOutgoingTextPositionSettings];
  [detailOutgoingTextPositionSettings3 setResponse:0.9];

  detailOutgoingTextPositionSettings4 = [(NCUNUIKitPrototypeSettings *)self detailOutgoingTextPositionSettings];
  v96 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [detailOutgoingTextPositionSettings4 setFrameRateRange:2621441 highFrameRateReason:{*&v96.minimum, *&v96.maximum, *&v96.preferred}];

  detailOutgoingTextOpacitySettings = [(NCUNUIKitPrototypeSettings *)self detailOutgoingTextOpacitySettings];
  [detailOutgoingTextOpacitySettings setDefaultValues];

  detailOutgoingTextOpacitySettings2 = [(NCUNUIKitPrototypeSettings *)self detailOutgoingTextOpacitySettings];
  [detailOutgoingTextOpacitySettings2 setDampingRatio:0.8];

  detailOutgoingTextOpacitySettings3 = [(NCUNUIKitPrototypeSettings *)self detailOutgoingTextOpacitySettings];
  [detailOutgoingTextOpacitySettings3 setResponse:0.257];

  detailOutgoingTextOpacitySettings4 = [(NCUNUIKitPrototypeSettings *)self detailOutgoingTextOpacitySettings];
  v97 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [detailOutgoingTextOpacitySettings4 setFrameRateRange:2621441 highFrameRateReason:{*&v97.minimum, *&v97.maximum, *&v97.preferred}];

  detailIconScaleSettings = [(NCUNUIKitPrototypeSettings *)self detailIconScaleSettings];
  [detailIconScaleSettings setDefaultValues];

  detailIconScaleSettings2 = [(NCUNUIKitPrototypeSettings *)self detailIconScaleSettings];
  [detailIconScaleSettings2 setDampingRatio:0.782623792];

  detailIconScaleSettings3 = [(NCUNUIKitPrototypeSettings *)self detailIconScaleSettings];
  [detailIconScaleSettings3 setResponse:0.702481473];

  detailIconScaleSettings4 = [(NCUNUIKitPrototypeSettings *)self detailIconScaleSettings];
  v98 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [detailIconScaleSettings4 setFrameRateRange:2621441 highFrameRateReason:{*&v98.minimum, *&v98.maximum, *&v98.preferred}];

  detailIconPositionSettings = [(NCUNUIKitPrototypeSettings *)self detailIconPositionSettings];
  [detailIconPositionSettings setDefaultValues];

  detailIconPositionSettings2 = [(NCUNUIKitPrototypeSettings *)self detailIconPositionSettings];
  [detailIconPositionSettings2 setDampingRatio:1.11803399];

  detailIconPositionSettings3 = [(NCUNUIKitPrototypeSettings *)self detailIconPositionSettings];
  [detailIconPositionSettings3 setResponse:0.702481473];

  detailIconPositionSettings4 = [(NCUNUIKitPrototypeSettings *)self detailIconPositionSettings];
  v99 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [detailIconPositionSettings4 setFrameRateRange:2621441 highFrameRateReason:{*&v99.minimum, *&v99.maximum, *&v99.preferred}];

  detailTextPositionSettings = [(NCUNUIKitPrototypeSettings *)self detailTextPositionSettings];
  [detailTextPositionSettings setDefaultValues];

  detailTextPositionSettings2 = [(NCUNUIKitPrototypeSettings *)self detailTextPositionSettings];
  [detailTextPositionSettings2 setDampingRatio:1.0];

  detailTextPositionSettings3 = [(NCUNUIKitPrototypeSettings *)self detailTextPositionSettings];
  [detailTextPositionSettings3 setResponse:1.2];

  detailTextPositionSettings4 = [(NCUNUIKitPrototypeSettings *)self detailTextPositionSettings];
  v100 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [detailTextPositionSettings4 setFrameRateRange:2621441 highFrameRateReason:{*&v100.minimum, *&v100.maximum, *&v100.preferred}];

  detailTextOpacitySettings = [(NCUNUIKitPrototypeSettings *)self detailTextOpacitySettings];
  [detailTextOpacitySettings setDefaultValues];

  detailTextOpacitySettings2 = [(NCUNUIKitPrototypeSettings *)self detailTextOpacitySettings];
  [detailTextOpacitySettings2 setDampingRatio:0.9];

  detailTextOpacitySettings3 = [(NCUNUIKitPrototypeSettings *)self detailTextOpacitySettings];
  [detailTextOpacitySettings3 setResponse:0.95];

  detailTextOpacitySettings4 = [(NCUNUIKitPrototypeSettings *)self detailTextOpacitySettings];
  v101 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [detailTextOpacitySettings4 setFrameRateRange:2621441 highFrameRateReason:{*&v101.minimum, *&v101.maximum, *&v101.preferred}];

  detailBackgroundSettings = [(NCUNUIKitPrototypeSettings *)self detailBackgroundSettings];
  [detailBackgroundSettings setDefaultValues];

  detailBackgroundSettings2 = [(NCUNUIKitPrototypeSettings *)self detailBackgroundSettings];
  [detailBackgroundSettings2 setDampingRatio:1.02062073];

  detailBackgroundSettings3 = [(NCUNUIKitPrototypeSettings *)self detailBackgroundSettings];
  [detailBackgroundSettings3 setResponse:0.513019932];

  detailBackgroundSettings4 = [(NCUNUIKitPrototypeSettings *)self detailBackgroundSettings];
  v102 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [detailBackgroundSettings4 setFrameRateRange:2621441 highFrameRateReason:{*&v102.minimum, *&v102.maximum, *&v102.preferred}];

  dismissIconOpacitySettings = [(NCUNUIKitPrototypeSettings *)self dismissIconOpacitySettings];
  [dismissIconOpacitySettings setDefaultValues];

  dismissIconOpacitySettings2 = [(NCUNUIKitPrototypeSettings *)self dismissIconOpacitySettings];
  [dismissIconOpacitySettings2 setDampingRatio:2.04124145];

  dismissIconOpacitySettings3 = [(NCUNUIKitPrototypeSettings *)self dismissIconOpacitySettings];
  [dismissIconOpacitySettings3 setResponse:0.256509966];

  dismissIconOpacitySettings4 = [(NCUNUIKitPrototypeSettings *)self dismissIconOpacitySettings];
  v103 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [dismissIconOpacitySettings4 setFrameRateRange:2621441 highFrameRateReason:{*&v103.minimum, *&v103.maximum, *&v103.preferred}];

  dismissTextOpacitySettings = [(NCUNUIKitPrototypeSettings *)self dismissTextOpacitySettings];
  [dismissTextOpacitySettings setDefaultValues];

  dismissTextOpacitySettings2 = [(NCUNUIKitPrototypeSettings *)self dismissTextOpacitySettings];
  [dismissTextOpacitySettings2 setDampingRatio:1.02062073];

  dismissTextOpacitySettings3 = [(NCUNUIKitPrototypeSettings *)self dismissTextOpacitySettings];
  [dismissTextOpacitySettings3 setResponse:0.513019932];

  dismissTextOpacitySettings4 = [(NCUNUIKitPrototypeSettings *)self dismissTextOpacitySettings];
  v104 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [dismissTextOpacitySettings4 setFrameRateRange:2621441 highFrameRateReason:{*&v104.minimum, *&v104.maximum, *&v104.preferred}];

  dismissTextPositionSettings = [(NCUNUIKitPrototypeSettings *)self dismissTextPositionSettings];
  [dismissTextPositionSettings setDefaultValues];

  dismissTextPositionSettings2 = [(NCUNUIKitPrototypeSettings *)self dismissTextPositionSettings];
  [dismissTextPositionSettings2 setDampingRatio:1.5];

  dismissTextPositionSettings3 = [(NCUNUIKitPrototypeSettings *)self dismissTextPositionSettings];
  [dismissTextPositionSettings3 setResponse:1.2];

  dismissTextPositionSettings4 = [(NCUNUIKitPrototypeSettings *)self dismissTextPositionSettings];
  v105 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [dismissTextPositionSettings4 setFrameRateRange:2621441 highFrameRateReason:{*&v105.minimum, *&v105.maximum, *&v105.preferred}];

  dismissBackgroundSettings = [(NCUNUIKitPrototypeSettings *)self dismissBackgroundSettings];
  [dismissBackgroundSettings setDefaultValues];

  dismissBackgroundSettings2 = [(NCUNUIKitPrototypeSettings *)self dismissBackgroundSettings];
  [dismissBackgroundSettings2 setDampingRatio:1.0];

  dismissBackgroundSettings3 = [(NCUNUIKitPrototypeSettings *)self dismissBackgroundSettings];
  [dismissBackgroundSettings3 setResponse:0.85];

  dismissBackgroundSettings4 = [(NCUNUIKitPrototypeSettings *)self dismissBackgroundSettings];
  v106 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [dismissBackgroundSettings4 setFrameRateRange:2621441 highFrameRateReason:{*&v106.minimum, *&v106.maximum, *&v106.preferred}];

  interactiveDismissalTrackingSettings = [(NCUNUIKitPrototypeSettings *)self interactiveDismissalTrackingSettings];
  [interactiveDismissalTrackingSettings setDefaultValues];

  interactiveDismissalTrackingSettings2 = [(NCUNUIKitPrototypeSettings *)self interactiveDismissalTrackingSettings];
  [interactiveDismissalTrackingSettings2 setDampingRatio:0.85];

  interactiveDismissalTrackingSettings3 = [(NCUNUIKitPrototypeSettings *)self interactiveDismissalTrackingSettings];
  [interactiveDismissalTrackingSettings3 setResponse:0.36];

  interactiveDismissalTrackingSettings4 = [(NCUNUIKitPrototypeSettings *)self interactiveDismissalTrackingSettings];
  v107 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [interactiveDismissalTrackingSettings4 setFrameRateRange:2621441 highFrameRateReason:{*&v107.minimum, *&v107.maximum, *&v107.preferred}];

  interactiveDismissalAutomaticSettings = [(NCUNUIKitPrototypeSettings *)self interactiveDismissalAutomaticSettings];
  [interactiveDismissalAutomaticSettings setDefaultValues];

  interactiveDismissalAutomaticSettings2 = [(NCUNUIKitPrototypeSettings *)self interactiveDismissalAutomaticSettings];
  [interactiveDismissalAutomaticSettings2 setDampingRatio:0.85];

  interactiveDismissalAutomaticSettings3 = [(NCUNUIKitPrototypeSettings *)self interactiveDismissalAutomaticSettings];
  [interactiveDismissalAutomaticSettings3 setResponse:0.4];

  interactiveDismissalAutomaticSettings4 = [(NCUNUIKitPrototypeSettings *)self interactiveDismissalAutomaticSettings];
  v108 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [interactiveDismissalAutomaticSettings4 setFrameRateRange:2621441 highFrameRateReason:{*&v108.minimum, *&v108.maximum, *&v108.preferred}];

  interactiveDismissalBackgoundSettings = [(NCUNUIKitPrototypeSettings *)self interactiveDismissalBackgoundSettings];
  [interactiveDismissalBackgoundSettings setDefaultValues];

  interactiveDismissalBackgoundSettings2 = [(NCUNUIKitPrototypeSettings *)self interactiveDismissalBackgoundSettings];
  [interactiveDismissalBackgoundSettings2 setDampingRatio:1.0];

  interactiveDismissalBackgoundSettings3 = [(NCUNUIKitPrototypeSettings *)self interactiveDismissalBackgoundSettings];
  [interactiveDismissalBackgoundSettings3 setResponse:0.85];

  interactiveDismissalBackgoundSettings4 = [(NCUNUIKitPrototypeSettings *)self interactiveDismissalBackgoundSettings];
  v109 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [interactiveDismissalBackgoundSettings4 setFrameRateRange:2621441 highFrameRateReason:{*&v109.minimum, *&v109.maximum, *&v109.preferred}];

  [(NCUNUIKitPrototypeSettings *)self setInteractiveDismissalThreshold:0.2];
  [(NCUNUIKitPrototypeSettings *)self setInteractiveDismissalRubberbandingInset:0.05];
  [(NCUNUIKitPrototypeSettings *)self setInteractiveDismissalRubberbandingRange:0.35];
  [(NCUNUIKitPrototypeSettings *)self setInteractiveDismissalMinBackgroundProgress:0.55];
  [(NCUNUIKitPrototypeSettings *)self setInteractiveDismissalMinContentScale:0.9];
  [(NCUNUIKitPrototypeSettings *)self setInteractiveDismissalMinContentAlpha:0.9];
  [(NCUNUIKitPrototypeSettings *)self setInteractiveDismissalFinalContentScale:0.8];
  [(NCUNUIKitPrototypeSettings *)self setContentHitRectVisible:0];
  [(NCUNUIKitPrototypeSettings *)self setContentHitRectLeadingMargin:24.0];
  [(NCUNUIKitPrototypeSettings *)self setContentHitRectTrailingMargin:24.0];
  [(NCUNUIKitPrototypeSettings *)self setContentHitRectTopMargin:39.0];
  [(NCUNUIKitPrototypeSettings *)self setContentHitRectBottomMargin:39.0];
}

@end