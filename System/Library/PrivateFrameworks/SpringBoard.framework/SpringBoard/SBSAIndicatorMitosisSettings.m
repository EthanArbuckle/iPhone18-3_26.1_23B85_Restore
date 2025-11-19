@interface SBSAIndicatorMitosisSettings
+ (id)settingsControllerModule;
- (void)setDefaultBabyJindoValues;
- (void)setDefaultCompactValues;
- (void)setDefaultCustomValues;
- (void)setDefaultReversedBabyJindoValues;
- (void)setDefaultReversedCompactValues;
- (void)setDefaultReversedCustomValues;
- (void)setDefaultValues;
- (void)setPrefix:(id)a3;
@end

@implementation SBSAIndicatorMitosisSettings

- (void)setPrefix:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v16 = a3;
  objc_storeStrong(&self->_prefix, a3);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  kickedPhaseSettings = self->_kickedPhaseSettings;
  v22[0] = self->_kickingPhaseSettings;
  v22[1] = kickedPhaseSettings;
  settlingPhaseSettings = self->_settlingPhaseSettings;
  v22[2] = self->_preparingToSettlePhaseSettings;
  v22[3] = settlingPhaseSettings;
  obj = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
  v7 = [obj countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = MEMORY[0x277CCACA8];
        prefix = self->_prefix;
        v14 = [v11 phaseName];
        v15 = [v12 stringWithFormat:@"%@ - %@", prefix, v14, v16];
        [v11 setPhaseName:v15];
      }

      v8 = [obj countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v8);
  }
}

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBSAIndicatorMitosisSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(SBSAIndicatorMitosisPhaseSettings *)self->_kickingPhaseSettings setDefaultValues];
  [(SBSAIndicatorMitosisPhaseSettings *)self->_kickingPhaseSettings setPhaseName:@"Kicking"];
  [(SBSAIndicatorMitosisPhaseSettings *)self->_kickedPhaseSettings setDefaultValues];
  [(SBSAIndicatorMitosisPhaseSettings *)self->_kickedPhaseSettings setPhaseName:@"Kicked"];
  [(SBSAIndicatorMitosisPhaseSettings *)self->_preparingToSettlePhaseSettings setDefaultValues];
  [(SBSAIndicatorMitosisPhaseSettings *)self->_preparingToSettlePhaseSettings setPhaseName:@"Preparing To Settle"];
  [(SBSAIndicatorMitosisPhaseSettings *)self->_settlingPhaseSettings setDefaultValues];
  [(SBSAIndicatorMitosisPhaseSettings *)self->_settlingPhaseSettings setPhaseName:@"Settling"];
  [(SBSAIndicatorMitosisSettings *)self setInterSensorIndicatorAppearanceTransitionBeginPhase:0];
  [(SBSAIndicatorMitosisSettings *)self setMicroIndicatorTranslationTransitionBeginPhase:0];
  [(SBSAIndicatorMitosisSettings *)self setMicroIndicatorAppearanceTransitionBeginPhase:0];
}

- (void)setDefaultCompactValues
{
  [(SBSAIndicatorMitosisSettings *)self setDefaultValues];
  [(SBSAIndicatorMitosisSettings *)self setPrefix:@"Compact"];
  [(SBSAIndicatorMitosisSettings *)self setMicroIndicatorAppearanceTransitionBeginPhase:2];
  [(SBSAIndicatorMitosisSettings *)self setMicroIndicatorTranslationTransitionBeginPhase:1];
  [(SBSAIndicatorMitosisSettings *)self setInterSensorIndicatorAppearanceTransitionBeginPhase:2];
  v3 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  v4 = [v3 scale];
  [v4 setWidth:1.08];

  v5 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  v6 = [v5 scale];
  [v6 setHeight:1.08];

  v7 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  v8 = [v7 contentScale];
  [v8 setWidth:1.05];

  v9 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  v10 = [v9 contentScale];
  [v10 setHeight:1.05];

  v11 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  v12 = [v11 containerCenterOffset];
  [v12 setX:0.0];

  v13 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  v14 = [v13 containerCenterOffset];
  [v14 setY:0.0];

  v15 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [v15 setPhaseEndMilestone:0.6];

  v16 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [v16 setPhaseEndMilestoneTargetProperty:@"bounds"];

  v17 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [v17 setPhaseEndMilestoneTarget:0];

  v18 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [v18 setSensorShadowProgress:0.0];

  v19 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v20 = [v19 scale];
  [v20 setWidth:1.11];

  v21 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v22 = [v21 scale];
  [v22 setHeight:1.1];

  v23 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v24 = [v23 contentScale];
  [v24 setWidth:1.085];

  v25 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v26 = [v25 contentScale];
  [v26 setHeight:1.05];

  v27 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v28 = [v27 containerCenterOffset];
  [v28 setX:4.0];

  v29 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [v29 setPhaseEndMilestone:0.6];

  v30 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [v30 setPhaseEndMilestoneTargetProperty:@"center"];

  v31 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [v31 setPhaseEndMilestoneTarget:0];

  v32 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [v32 setSensorShadowProgress:1.0];

  v33 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v34 = [v33 scale];
  [v34 setWidth:1.0];

  v35 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v36 = [v35 scale];
  [v36 setHeight:1.0];

  v37 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v38 = [v37 contentScale];
  [v38 setWidth:1.0];

  v39 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v40 = [v39 contentScale];
  [v40 setHeight:1.0];

  v41 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v42 = [v41 containerCenterOffset];
  [v42 setX:0.0];

  v43 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [v43 setPhaseEndMilestone:0.4];

  v44 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [v44 setPhaseEndMilestoneTargetProperty:@"bounds"];

  v45 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [v45 setPhaseEndMilestoneTarget:0];

  v46 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [v46 setSensorShadowProgress:0.6];

  v47 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  v48 = [v47 scale];
  [v48 setWidth:1.0];

  v49 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  v50 = [v49 scale];
  [v50 setHeight:1.0];

  v51 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  v52 = [v51 contentScale];
  [v52 setWidth:1.0];

  v53 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  v54 = [v53 contentScale];
  [v54 setHeight:1.0];

  v55 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  v56 = [v55 containerCenterOffset];
  [v56 setX:0.0];

  v57 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  [v57 setPhaseEndMilestone:2.0];

  v58 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  [v58 setPhaseEndMilestoneTargetProperty:@"center"];

  v59 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  [v59 setPhaseEndMilestoneTarget:0];

  v60 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  [v60 setSensorShadowProgress:0.0];
}

- (void)setDefaultBabyJindoValues
{
  [(SBSAIndicatorMitosisSettings *)self setDefaultValues];
  [(SBSAIndicatorMitosisSettings *)self setPrefix:@"BabyJindo"];
  [(SBSAIndicatorMitosisSettings *)self setMicroIndicatorAppearanceTransitionBeginPhase:2];
  [(SBSAIndicatorMitosisSettings *)self setMicroIndicatorTranslationTransitionBeginPhase:1];
  [(SBSAIndicatorMitosisSettings *)self setInterSensorIndicatorAppearanceTransitionBeginPhase:2];
  v3 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  v4 = [v3 scale];
  [v4 setWidth:1.16];

  v5 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  v6 = [v5 scale];
  [v6 setHeight:1.0];

  v7 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  v8 = [v7 contentScale];
  [v8 setWidth:1.16];

  v9 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  v10 = [v9 contentScale];
  [v10 setHeight:1.0];

  v11 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  v12 = [v11 containerCenterOffset];
  [v12 setX:2.33333333];

  v13 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [v13 setPhaseEndMilestone:0.6];

  v14 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [v14 setPhaseEndMilestoneTargetProperty:@"bounds"];

  v15 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [v15 setPhaseEndMilestoneTarget:0];

  v16 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v17 = [v16 scale];
  [v17 setWidth:1.12];

  v18 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v19 = [v18 scale];
  [v19 setHeight:1.08];

  v20 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v21 = [v20 contentScale];
  [v21 setWidth:1.12];

  v22 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v23 = [v22 contentScale];
  [v23 setHeight:1.08];

  v24 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v25 = [v24 containerCenterOffset];
  [v25 setX:1.66666667];

  v26 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v27 = [v26 containerCenterOffset];
  [v27 setY:0.0];

  v28 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [v28 setPhaseEndMilestone:0.4];

  v29 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [v29 setPhaseEndMilestoneTargetProperty:@"center"];

  v30 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [v30 setPhaseEndMilestoneTarget:0];

  v31 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [v31 setBlobRadius:3.33333333];

  v32 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v33 = [v32 scale];
  [v33 setWidth:1.0];

  v34 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v35 = [v34 scale];
  [v35 setHeight:1.0];

  v36 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v37 = [v36 contentScale];
  [v37 setWidth:1.0];

  v38 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v39 = [v38 contentScale];
  [v39 setHeight:1.0];

  v40 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v41 = [v40 containerCenterOffset];
  [v41 setX:0.333333333];

  v42 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [v42 setPhaseEndMilestone:0.5];

  v43 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [v43 setPhaseEndMilestoneTargetProperty:@"center"];

  v44 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [v44 setPhaseEndMilestoneTarget:0];

  v45 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [v45 setSensorShadowProgress:0.0];

  v46 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  v47 = [v46 scale];
  [v47 setWidth:1.0];

  v48 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  v49 = [v48 scale];
  [v49 setHeight:1.0];

  v50 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  v51 = [v50 contentScale];
  [v51 setWidth:1.0];

  v52 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  v53 = [v52 contentScale];
  [v53 setHeight:1.0];

  v54 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  v55 = [v54 containerCenterOffset];
  [v55 setX:0.0];

  v56 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  [v56 setPhaseEndMilestone:2.0];

  v57 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  [v57 setPhaseEndMilestoneTargetProperty:@"center"];

  v58 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  [v58 setPhaseEndMilestoneTarget:0];

  v59 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  [v59 setSensorShadowProgress:0.0];
}

- (void)setDefaultCustomValues
{
  [(SBSAIndicatorMitosisSettings *)self setDefaultValues];
  [(SBSAIndicatorMitosisSettings *)self setPrefix:@"Custom"];
  [(SBSAIndicatorMitosisSettings *)self setMicroIndicatorAppearanceTransitionBeginPhase:2];
  [(SBSAIndicatorMitosisSettings *)self setMicroIndicatorTranslationTransitionBeginPhase:1];
  [(SBSAIndicatorMitosisSettings *)self setInterSensorIndicatorAppearanceTransitionBeginPhase:2];
  v3 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  v4 = [v3 scale];
  [v4 setWidth:1.025];

  v5 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  v6 = [v5 scale];
  [v6 setHeight:1.05];

  v7 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  v8 = [v7 contentScale];
  [v8 setWidth:1.025];

  v9 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  v10 = [v9 contentScale];
  [v10 setHeight:1.05];

  v11 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [v11 setPhaseEndMilestone:0.6];

  v12 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [v12 setPhaseEndMilestoneTargetProperty:@"bounds"];

  v13 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [v13 setPhaseEndMilestoneTarget:0];

  v14 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [v14 setSensorShadowProgress:0.5];

  v15 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v16 = [v15 scale];
  [v16 setWidth:1.04];

  v17 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v18 = [v17 scale];
  [v18 setHeight:1.075];

  v19 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v20 = [v19 contentScale];
  [v20 setWidth:1.04];

  v21 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v22 = [v21 contentScale];
  [v22 setHeight:1.075];

  v23 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v24 = [v23 containerCenterOffset];
  [v24 setX:3.0];

  v25 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v26 = [v25 containerCenterOffset];
  [v26 setY:1.0];

  v27 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [v27 setPhaseEndMilestone:0.4];

  v28 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [v28 setPhaseEndMilestoneTargetProperty:@"center"];

  v29 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [v29 setPhaseEndMilestoneTarget:0];

  v30 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v31 = [v30 scale];
  [v31 setWidth:1.0];

  v32 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v33 = [v32 scale];
  [v33 setHeight:1.0];

  v34 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v35 = [v34 contentScale];
  [v35 setWidth:1.0];

  v36 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v37 = [v36 contentScale];
  [v37 setHeight:1.0];

  v38 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v39 = [v38 containerCenterOffset];
  [v39 setX:0.0];

  v40 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v41 = [v40 containerCenterOffset];
  [v41 setY:0.333333333];

  v42 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [v42 setSensorShadowProgress:0.4];

  v43 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [v43 setPhaseEndMilestone:0.4];

  v44 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [v44 setPhaseEndMilestoneTargetProperty:@"center"];

  v45 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [v45 setPhaseEndMilestoneTarget:0];

  v46 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  v47 = [v46 scale];
  [v47 setWidth:1.0];

  v48 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  v49 = [v48 scale];
  [v49 setHeight:1.0];

  v50 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  v51 = [v50 contentScale];
  [v51 setWidth:1.0];

  v52 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  v53 = [v52 contentScale];
  [v53 setHeight:1.0];

  v54 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  v55 = [v54 containerCenterOffset];
  [v55 setX:0.0];

  v56 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  v57 = [v56 containerCenterOffset];
  [v57 setY:0.0];

  v58 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  [v58 setPhaseEndMilestone:2.0];

  v59 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  [v59 setPhaseEndMilestoneTargetProperty:@"center"];

  v60 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  [v60 setPhaseEndMilestoneTarget:0];

  v61 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  [v61 setSensorShadowProgress:0.0];
}

- (void)setDefaultReversedCompactValues
{
  [(SBSAIndicatorMitosisSettings *)self setDefaultValues];
  [(SBSAIndicatorMitosisSettings *)self setPrefix:@"ReversedCompact"];
  [(SBSAIndicatorMitosisSettings *)self setMicroIndicatorTranslationTransitionBeginPhase:2];
  v3 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [v3 setPhaseEndMilestone:0.6];

  v4 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [v4 setPhaseEndMilestoneTargetProperty:@"indicatorViewAlpha"];

  v5 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [v5 setPhaseEndMilestoneTarget:3];

  v6 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  v7 = [v6 indicatorElementTransitionSettings];
  v8 = [v7 indicatorElementViewAlphaBehaviorSettings];
  [v8 setDefaultCriticallyDampedValues];

  v9 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  v10 = [v9 indicatorElementTransitionSettings];
  v11 = [v10 indicatorElementViewBlurProgressBehaviorSettings];
  [v11 setDefaultCriticallyDampedValues];

  v12 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v13 = [v12 scale];
  [v13 setWidth:1.08];

  v14 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v15 = [v14 scale];
  [v15 setHeight:1.07];

  v16 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v17 = [v16 contentScale];
  [v17 setWidth:1.05];

  v18 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v19 = [v18 contentScale];
  [v19 setHeight:1.03];

  v20 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v21 = [v20 containerCenterOffset];
  [v21 setX:3.0];

  v22 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [v22 setPhaseEndMilestone:0.7];

  v23 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [v23 setPhaseEndMilestoneTargetProperty:@"bounds"];

  v24 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [v24 setSensorShadowProgress:1.0];

  v25 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v26 = [v25 indicatorElementTransitionSettings];
  v27 = [v26 indicatorElementViewAlphaBehaviorSettings];
  [v27 setDefaultCriticallyDampedValues];

  v28 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v29 = [v28 indicatorElementTransitionSettings];
  v30 = [v29 indicatorElementViewBlurProgressBehaviorSettings];
  [v30 setDefaultCriticallyDampedValues];

  v31 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v32 = [v31 scale];
  [v32 setWidth:1.0];

  v33 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v34 = [v33 scale];
  [v34 setHeight:1.0];

  v35 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v36 = [v35 contentScale];
  [v36 setWidth:1.0];

  v37 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v38 = [v37 contentScale];
  [v38 setHeight:1.0];

  v39 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v40 = [v39 containerCenterOffset];
  [v40 setX:0.333333333];

  v41 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [v41 setPhaseEndMilestone:0.4];

  v42 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [v42 setPhaseEndMilestoneTargetProperty:@"center"];

  v43 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  [v43 setPhaseEndMilestoneTargetProperty:@"bounds"];

  v44 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v45 = [v44 indicatorElementTransitionSettings];
  v46 = [v45 indicatorElementViewAlphaBehaviorSettings];
  [v46 setDefaultCriticallyDampedValues];

  v49 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v47 = [v49 indicatorElementTransitionSettings];
  v48 = [v47 indicatorElementViewBlurProgressBehaviorSettings];
  [v48 setDefaultCriticallyDampedValues];
}

- (void)setDefaultReversedBabyJindoValues
{
  [(SBSAIndicatorMitosisSettings *)self setDefaultValues];
  [(SBSAIndicatorMitosisSettings *)self setPrefix:@"ReversedBabyJindo"];
  [(SBSAIndicatorMitosisSettings *)self setMicroIndicatorTranslationTransitionBeginPhase:1];
  v3 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [v3 setPhaseEndMilestone:0.6];

  v4 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [v4 setPhaseEndMilestoneTargetProperty:@"indicatorViewAlpha"];

  v5 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [v5 setPhaseEndMilestoneTarget:3];

  v6 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  v7 = [v6 indicatorElementTransitionSettings];
  v8 = [v7 indicatorElementViewAlphaBehaviorSettings];
  [v8 setDefaultCriticallyDampedValues];

  v9 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  v10 = [v9 indicatorElementTransitionSettings];
  v11 = [v10 indicatorElementViewBlurProgressBehaviorSettings];
  [v11 setDefaultCriticallyDampedValues];

  v12 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v13 = [v12 scale];
  [v13 setWidth:1.16];

  v14 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v15 = [v14 scale];
  [v15 setHeight:1.05];

  v16 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v17 = [v16 contentScale];
  [v17 setWidth:1.16];

  v18 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v19 = [v18 contentScale];
  [v19 setHeight:1.05];

  v20 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v21 = [v20 containerCenterOffset];
  [v21 setX:2.33333333];

  v22 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [v22 setPhaseEndMilestone:0.8];

  v23 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [v23 setPhaseEndMilestoneTargetProperty:@"center"];

  v24 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [v24 setSensorShadowProgress:0.7];

  v25 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v26 = [v25 indicatorElementTransitionSettings];
  v27 = [v26 indicatorElementViewAlphaBehaviorSettings];
  [v27 setDefaultCriticallyDampedValues];

  v28 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v29 = [v28 indicatorElementTransitionSettings];
  v30 = [v29 indicatorElementViewBlurProgressBehaviorSettings];
  [v30 setDefaultCriticallyDampedValues];

  v31 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v32 = [v31 scale];
  [v32 setWidth:1.02];

  v33 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v34 = [v33 scale];
  [v34 setHeight:1.01];

  v35 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v36 = [v35 contentScale];
  [v36 setWidth:1.02];

  v37 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v38 = [v37 contentScale];
  [v38 setHeight:1.01];

  v39 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v40 = [v39 containerCenterOffset];
  [v40 setX:0.333333333];

  v41 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [v41 setPhaseEndMilestone:0.6];

  v42 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [v42 setPhaseEndMilestoneTargetProperty:@"center"];

  v43 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v44 = [v43 indicatorElementTransitionSettings];
  v45 = [v44 indicatorElementViewAlphaBehaviorSettings];
  [v45 setDefaultCriticallyDampedValues];

  v46 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v47 = [v46 indicatorElementTransitionSettings];
  v48 = [v47 indicatorElementViewBlurProgressBehaviorSettings];
  [v48 setDefaultCriticallyDampedValues];

  v49 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  [v49 setPhaseEndMilestoneTargetProperty:@"center"];
}

- (void)setDefaultReversedCustomValues
{
  [(SBSAIndicatorMitosisSettings *)self setDefaultValues];
  [(SBSAIndicatorMitosisSettings *)self setPrefix:@"ReversedCustom"];
  [(SBSAIndicatorMitosisSettings *)self setMicroIndicatorTranslationTransitionBeginPhase:2];
  v3 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [v3 setPhaseEndMilestone:0.6];

  v4 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [v4 setPhaseEndMilestoneTargetProperty:@"indicatorViewAlpha"];

  v5 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [v5 setPhaseEndMilestoneTarget:3];

  v6 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [v6 setSensorShadowProgress:0.5];

  v7 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  v8 = [v7 indicatorElementTransitionSettings];
  v9 = [v8 indicatorElementViewAlphaBehaviorSettings];
  [v9 setDefaultCriticallyDampedValues];

  v10 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  v11 = [v10 indicatorElementTransitionSettings];
  v12 = [v11 indicatorElementViewBlurProgressBehaviorSettings];
  [v12 setDefaultCriticallyDampedValues];

  v13 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v14 = [v13 scale];
  [v14 setWidth:1.04];

  v15 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v16 = [v15 scale];
  [v16 setHeight:1.075];

  v17 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v18 = [v17 contentScale];
  [v18 setWidth:1.04];

  v19 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v20 = [v19 contentScale];
  [v20 setHeight:1.075];

  v21 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v22 = [v21 containerCenterOffset];
  [v22 setX:3.0];

  v23 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v24 = [v23 containerCenterOffset];
  [v24 setY:1.0];

  v25 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [v25 setPhaseEndMilestone:0.4];

  v26 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [v26 setPhaseEndMilestoneTargetProperty:@"center"];

  v27 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [v27 setSensorShadowProgress:1.0];

  v28 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v29 = [v28 indicatorElementTransitionSettings];
  v30 = [v29 indicatorElementViewAlphaBehaviorSettings];
  [v30 setDefaultCriticallyDampedValues];

  v31 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  v32 = [v31 indicatorElementTransitionSettings];
  v33 = [v32 indicatorElementViewBlurProgressBehaviorSettings];
  [v33 setDefaultCriticallyDampedValues];

  v34 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v35 = [v34 scale];
  [v35 setWidth:1.0];

  v36 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v37 = [v36 scale];
  [v37 setHeight:1.0];

  v38 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v39 = [v38 contentScale];
  [v39 setWidth:1.0];

  v40 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v41 = [v40 contentScale];
  [v41 setHeight:1.0];

  v42 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v43 = [v42 containerCenterOffset];
  [v43 setX:0.0];

  v44 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v45 = [v44 containerCenterOffset];
  [v45 setY:0.333333333];

  v46 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [v46 setSensorShadowProgress:0.4];

  v47 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [v47 setPhaseEndMilestone:0.4];

  v48 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [v48 setPhaseEndMilestoneTargetProperty:@"center"];

  v49 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v50 = [v49 indicatorElementTransitionSettings];
  v51 = [v50 indicatorElementViewAlphaBehaviorSettings];
  [v51 setDefaultCriticallyDampedValues];

  v52 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  v53 = [v52 indicatorElementTransitionSettings];
  v54 = [v53 indicatorElementViewBlurProgressBehaviorSettings];
  [v54 setDefaultCriticallyDampedValues];

  v55 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  [v55 setPhaseEndMilestoneTargetProperty:@"bounds"];
}

+ (id)settingsControllerModule
{
  v25[4] = *MEMORY[0x277D85DE8];
  v2 = [&unk_28336DF98 bs_map:&__block_literal_global_220];
  v3 = MEMORY[0x277D43210];
  v4 = [MEMORY[0x277D431D8] rowWithTitle:@"Kicking" childSettingsKeyPath:@"kickingPhaseSettings"];
  v25[0] = v4;
  v5 = [MEMORY[0x277D431D8] rowWithTitle:@"Kicked" childSettingsKeyPath:@"kickedPhaseSettings"];
  v25[1] = v5;
  v6 = [MEMORY[0x277D431D8] rowWithTitle:@"Preparing To Settle" childSettingsKeyPath:@"preparingToSettlePhaseSettings"];
  v25[2] = v6;
  v7 = [MEMORY[0x277D431D8] rowWithTitle:@"Settling" childSettingsKeyPath:@"settlingPhaseSettings"];
  v25[3] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
  v22 = [v3 sectionWithRows:v8 title:@"Stages"];

  v9 = MEMORY[0x277D43210];
  v10 = [MEMORY[0x277D431B8] rowWithTitle:@"InterSensor Appearance Begin Phase" valueKeyPath:@"interSensorIndicatorAppearanceTransitionBeginPhase"];
  v11 = [v10 possibleValues:&unk_28336DF98 titles:v2];
  v24[0] = v11;
  v12 = [MEMORY[0x277D431B8] rowWithTitle:@"Micro Translation Begin Phase" valueKeyPath:@"microIndicatorTranslationTransitionBeginPhase"];
  v13 = [v12 possibleValues:&unk_28336DF98 titles:v2];
  v24[1] = v13;
  v14 = [MEMORY[0x277D431B8] rowWithTitle:@"Micro Appearance Begin Phase" valueKeyPath:@"microIndicatorAppearanceTransitionBeginPhase"];
  v15 = [v14 possibleValues:&unk_28336DF98 titles:v2];
  v24[2] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
  v17 = [v9 sectionWithRows:v16 title:@"Transitions"];

  v18 = MEMORY[0x277D43210];
  v23[0] = v22;
  v23[1] = v17;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v20 = [v18 moduleWithTitle:@"Mitosis Settings" contents:v19];

  return v20;
}

__CFString *__56__SBSAIndicatorMitosisSettings_settingsControllerModule__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 intValue];
  if (v2 > 3)
  {
    return @"unexpected";
  }

  else
  {
    return off_2783B0408[v2];
  }
}

@end