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
  v3 = [(NCUNUIKitPrototypeSettings *)self listAnimationSettings];
  [v3 setDefaultValues];

  [(NCUNUIKitPrototypeSettings *)self setBriefIconPositionMilestone:0.168];
  [(NCUNUIKitPrototypeSettings *)self setBriefIconScaleMilestone:0.337];
  [(NCUNUIKitPrototypeSettings *)self setBriefGrabberMilestone:0.85];
  [(NCUNUIKitPrototypeSettings *)self setBriefTextPositionMilestone:0.015];
  v4 = [(NCUNUIKitPrototypeSettings *)self briefIconPositionSettings];
  [v4 setDefaultValues];

  v5 = [(NCUNUIKitPrototypeSettings *)self briefIconPositionSettings];
  [v5 setDampingRatio:?];

  v6 = [(NCUNUIKitPrototypeSettings *)self briefIconPositionSettings];
  [v6 setResponse:0.702481473];

  v7 = [(NCUNUIKitPrototypeSettings *)self briefIconPositionSettings];
  v89 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v7 setFrameRateRange:2621441 highFrameRateReason:{*&v89.minimum, *&v89.maximum, *&v89.preferred}];

  v8 = [(NCUNUIKitPrototypeSettings *)self briefIconScaleSettings];
  [v8 setDefaultValues];

  v9 = [(NCUNUIKitPrototypeSettings *)self briefIconScaleSettings];
  [v9 setDampingRatio:0.9];

  v10 = [(NCUNUIKitPrototypeSettings *)self briefIconScaleSettings];
  [v10 setResponse:1.0];

  v11 = [(NCUNUIKitPrototypeSettings *)self briefIconScaleSettings];
  v90 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v11 setFrameRateRange:2621441 highFrameRateReason:{*&v90.minimum, *&v90.maximum, *&v90.preferred}];

  v12 = [(NCUNUIKitPrototypeSettings *)self briefIconOpacitySettings];
  [v12 setDefaultValues];

  v13 = [(NCUNUIKitPrototypeSettings *)self briefIconOpacitySettings];
  [v13 setDampingRatio:1.02062073];

  v14 = [(NCUNUIKitPrototypeSettings *)self briefIconOpacitySettings];
  [v14 setResponse:0.513019932];

  v15 = [(NCUNUIKitPrototypeSettings *)self briefIconOpacitySettings];
  v91 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v15 setFrameRateRange:2621441 highFrameRateReason:{*&v91.minimum, *&v91.maximum, *&v91.preferred}];

  v16 = [(NCUNUIKitPrototypeSettings *)self briefGrabberSettings];
  [v16 setDefaultCriticallyDampedValues];

  v17 = [(NCUNUIKitPrototypeSettings *)self briefGrabberSettings];
  [v17 response];
  [v17 setResponse:v18 + v18];

  v19 = [(NCUNUIKitPrototypeSettings *)self briefGrabberSettings];
  v92 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v19 setFrameRateRange:2621441 highFrameRateReason:{*&v92.minimum, *&v92.maximum, *&v92.preferred}];

  v20 = [(NCUNUIKitPrototypeSettings *)self briefTextPositionSettings];
  [v20 setDefaultValues];

  v21 = [(NCUNUIKitPrototypeSettings *)self briefTextPositionSettings];
  [v21 setDampingRatio:0.8];

  v22 = [(NCUNUIKitPrototypeSettings *)self briefTextPositionSettings];
  [v22 setResponse:0.9];

  v23 = [(NCUNUIKitPrototypeSettings *)self briefTextPositionSettings];
  v93 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v23 setFrameRateRange:2621441 highFrameRateReason:{*&v93.minimum, *&v93.maximum, *&v93.preferred}];

  v24 = [(NCUNUIKitPrototypeSettings *)self briefTextOpacitySettings];
  [v24 setDefaultValues];

  v25 = [(NCUNUIKitPrototypeSettings *)self briefTextOpacitySettings];
  [v25 setDampingRatio:1.02062073];

  v26 = [(NCUNUIKitPrototypeSettings *)self briefTextOpacitySettings];
  [v26 setResponse:0.513019932];

  v27 = [(NCUNUIKitPrototypeSettings *)self briefTextOpacitySettings];
  v94 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v27 setFrameRateRange:2621441 highFrameRateReason:{*&v94.minimum, *&v94.maximum, *&v94.preferred}];

  v28 = [(NCUNUIKitPrototypeSettings *)self briefBackgroundSettings];
  [v28 setDefaultValues];

  v29 = [(NCUNUIKitPrototypeSettings *)self briefBackgroundSettings];
  [v29 setDampingRatio:0.9];

  v30 = [(NCUNUIKitPrototypeSettings *)self briefBackgroundSettings];
  [v30 setResponse:0.5];

  v31 = [(NCUNUIKitPrototypeSettings *)self briefBackgroundSettings];
  v95 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v31 setFrameRateRange:2621441 highFrameRateReason:{*&v95.minimum, *&v95.maximum, *&v95.preferred}];

  [(NCUNUIKitPrototypeSettings *)self setDetailStageTransitionDelay:1.0];
  [(NCUNUIKitPrototypeSettings *)self setDetailStageTransitionMaxAttempts:4];
  [(NCUNUIKitPrototypeSettings *)self setDynamicGroupingThreshold:4];
  [(NCUNUIKitPrototypeSettings *)self setDynamicGroupingThresholdPad:6];
  [(NCUNUIKitPrototypeSettings *)self setDetailIconPositionMilestone:0.185];
  [(NCUNUIKitPrototypeSettings *)self setDetailTextMilestone:0.85];
  [(NCUNUIKitPrototypeSettings *)self setDetailSecondaryTextMilestone:0.7];
  v32 = [(NCUNUIKitPrototypeSettings *)self detailOutgoingTextPositionSettings];
  [v32 setDefaultValues];

  v33 = [(NCUNUIKitPrototypeSettings *)self detailOutgoingTextPositionSettings];
  [v33 setDampingRatio:1.021];

  v34 = [(NCUNUIKitPrototypeSettings *)self detailOutgoingTextPositionSettings];
  [v34 setResponse:0.9];

  v35 = [(NCUNUIKitPrototypeSettings *)self detailOutgoingTextPositionSettings];
  v96 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v35 setFrameRateRange:2621441 highFrameRateReason:{*&v96.minimum, *&v96.maximum, *&v96.preferred}];

  v36 = [(NCUNUIKitPrototypeSettings *)self detailOutgoingTextOpacitySettings];
  [v36 setDefaultValues];

  v37 = [(NCUNUIKitPrototypeSettings *)self detailOutgoingTextOpacitySettings];
  [v37 setDampingRatio:0.8];

  v38 = [(NCUNUIKitPrototypeSettings *)self detailOutgoingTextOpacitySettings];
  [v38 setResponse:0.257];

  v39 = [(NCUNUIKitPrototypeSettings *)self detailOutgoingTextOpacitySettings];
  v97 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v39 setFrameRateRange:2621441 highFrameRateReason:{*&v97.minimum, *&v97.maximum, *&v97.preferred}];

  v40 = [(NCUNUIKitPrototypeSettings *)self detailIconScaleSettings];
  [v40 setDefaultValues];

  v41 = [(NCUNUIKitPrototypeSettings *)self detailIconScaleSettings];
  [v41 setDampingRatio:0.782623792];

  v42 = [(NCUNUIKitPrototypeSettings *)self detailIconScaleSettings];
  [v42 setResponse:0.702481473];

  v43 = [(NCUNUIKitPrototypeSettings *)self detailIconScaleSettings];
  v98 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v43 setFrameRateRange:2621441 highFrameRateReason:{*&v98.minimum, *&v98.maximum, *&v98.preferred}];

  v44 = [(NCUNUIKitPrototypeSettings *)self detailIconPositionSettings];
  [v44 setDefaultValues];

  v45 = [(NCUNUIKitPrototypeSettings *)self detailIconPositionSettings];
  [v45 setDampingRatio:1.11803399];

  v46 = [(NCUNUIKitPrototypeSettings *)self detailIconPositionSettings];
  [v46 setResponse:0.702481473];

  v47 = [(NCUNUIKitPrototypeSettings *)self detailIconPositionSettings];
  v99 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v47 setFrameRateRange:2621441 highFrameRateReason:{*&v99.minimum, *&v99.maximum, *&v99.preferred}];

  v48 = [(NCUNUIKitPrototypeSettings *)self detailTextPositionSettings];
  [v48 setDefaultValues];

  v49 = [(NCUNUIKitPrototypeSettings *)self detailTextPositionSettings];
  [v49 setDampingRatio:1.0];

  v50 = [(NCUNUIKitPrototypeSettings *)self detailTextPositionSettings];
  [v50 setResponse:1.2];

  v51 = [(NCUNUIKitPrototypeSettings *)self detailTextPositionSettings];
  v100 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v51 setFrameRateRange:2621441 highFrameRateReason:{*&v100.minimum, *&v100.maximum, *&v100.preferred}];

  v52 = [(NCUNUIKitPrototypeSettings *)self detailTextOpacitySettings];
  [v52 setDefaultValues];

  v53 = [(NCUNUIKitPrototypeSettings *)self detailTextOpacitySettings];
  [v53 setDampingRatio:0.9];

  v54 = [(NCUNUIKitPrototypeSettings *)self detailTextOpacitySettings];
  [v54 setResponse:0.95];

  v55 = [(NCUNUIKitPrototypeSettings *)self detailTextOpacitySettings];
  v101 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v55 setFrameRateRange:2621441 highFrameRateReason:{*&v101.minimum, *&v101.maximum, *&v101.preferred}];

  v56 = [(NCUNUIKitPrototypeSettings *)self detailBackgroundSettings];
  [v56 setDefaultValues];

  v57 = [(NCUNUIKitPrototypeSettings *)self detailBackgroundSettings];
  [v57 setDampingRatio:1.02062073];

  v58 = [(NCUNUIKitPrototypeSettings *)self detailBackgroundSettings];
  [v58 setResponse:0.513019932];

  v59 = [(NCUNUIKitPrototypeSettings *)self detailBackgroundSettings];
  v102 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v59 setFrameRateRange:2621441 highFrameRateReason:{*&v102.minimum, *&v102.maximum, *&v102.preferred}];

  v60 = [(NCUNUIKitPrototypeSettings *)self dismissIconOpacitySettings];
  [v60 setDefaultValues];

  v61 = [(NCUNUIKitPrototypeSettings *)self dismissIconOpacitySettings];
  [v61 setDampingRatio:2.04124145];

  v62 = [(NCUNUIKitPrototypeSettings *)self dismissIconOpacitySettings];
  [v62 setResponse:0.256509966];

  v63 = [(NCUNUIKitPrototypeSettings *)self dismissIconOpacitySettings];
  v103 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v63 setFrameRateRange:2621441 highFrameRateReason:{*&v103.minimum, *&v103.maximum, *&v103.preferred}];

  v64 = [(NCUNUIKitPrototypeSettings *)self dismissTextOpacitySettings];
  [v64 setDefaultValues];

  v65 = [(NCUNUIKitPrototypeSettings *)self dismissTextOpacitySettings];
  [v65 setDampingRatio:1.02062073];

  v66 = [(NCUNUIKitPrototypeSettings *)self dismissTextOpacitySettings];
  [v66 setResponse:0.513019932];

  v67 = [(NCUNUIKitPrototypeSettings *)self dismissTextOpacitySettings];
  v104 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v67 setFrameRateRange:2621441 highFrameRateReason:{*&v104.minimum, *&v104.maximum, *&v104.preferred}];

  v68 = [(NCUNUIKitPrototypeSettings *)self dismissTextPositionSettings];
  [v68 setDefaultValues];

  v69 = [(NCUNUIKitPrototypeSettings *)self dismissTextPositionSettings];
  [v69 setDampingRatio:1.5];

  v70 = [(NCUNUIKitPrototypeSettings *)self dismissTextPositionSettings];
  [v70 setResponse:1.2];

  v71 = [(NCUNUIKitPrototypeSettings *)self dismissTextPositionSettings];
  v105 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v71 setFrameRateRange:2621441 highFrameRateReason:{*&v105.minimum, *&v105.maximum, *&v105.preferred}];

  v72 = [(NCUNUIKitPrototypeSettings *)self dismissBackgroundSettings];
  [v72 setDefaultValues];

  v73 = [(NCUNUIKitPrototypeSettings *)self dismissBackgroundSettings];
  [v73 setDampingRatio:1.0];

  v74 = [(NCUNUIKitPrototypeSettings *)self dismissBackgroundSettings];
  [v74 setResponse:0.85];

  v75 = [(NCUNUIKitPrototypeSettings *)self dismissBackgroundSettings];
  v106 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v75 setFrameRateRange:2621441 highFrameRateReason:{*&v106.minimum, *&v106.maximum, *&v106.preferred}];

  v76 = [(NCUNUIKitPrototypeSettings *)self interactiveDismissalTrackingSettings];
  [v76 setDefaultValues];

  v77 = [(NCUNUIKitPrototypeSettings *)self interactiveDismissalTrackingSettings];
  [v77 setDampingRatio:0.85];

  v78 = [(NCUNUIKitPrototypeSettings *)self interactiveDismissalTrackingSettings];
  [v78 setResponse:0.36];

  v79 = [(NCUNUIKitPrototypeSettings *)self interactiveDismissalTrackingSettings];
  v107 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v79 setFrameRateRange:2621441 highFrameRateReason:{*&v107.minimum, *&v107.maximum, *&v107.preferred}];

  v80 = [(NCUNUIKitPrototypeSettings *)self interactiveDismissalAutomaticSettings];
  [v80 setDefaultValues];

  v81 = [(NCUNUIKitPrototypeSettings *)self interactiveDismissalAutomaticSettings];
  [v81 setDampingRatio:0.85];

  v82 = [(NCUNUIKitPrototypeSettings *)self interactiveDismissalAutomaticSettings];
  [v82 setResponse:0.4];

  v83 = [(NCUNUIKitPrototypeSettings *)self interactiveDismissalAutomaticSettings];
  v108 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v83 setFrameRateRange:2621441 highFrameRateReason:{*&v108.minimum, *&v108.maximum, *&v108.preferred}];

  v84 = [(NCUNUIKitPrototypeSettings *)self interactiveDismissalBackgoundSettings];
  [v84 setDefaultValues];

  v85 = [(NCUNUIKitPrototypeSettings *)self interactiveDismissalBackgoundSettings];
  [v85 setDampingRatio:1.0];

  v86 = [(NCUNUIKitPrototypeSettings *)self interactiveDismissalBackgoundSettings];
  [v86 setResponse:0.85];

  v87 = [(NCUNUIKitPrototypeSettings *)self interactiveDismissalBackgoundSettings];
  v109 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v87 setFrameRateRange:2621441 highFrameRateReason:{*&v109.minimum, *&v109.maximum, *&v109.preferred}];

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