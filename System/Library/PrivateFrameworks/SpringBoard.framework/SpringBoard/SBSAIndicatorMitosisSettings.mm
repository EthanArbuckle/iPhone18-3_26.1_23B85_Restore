@interface SBSAIndicatorMitosisSettings
+ (id)settingsControllerModule;
- (void)setDefaultBabyJindoValues;
- (void)setDefaultCompactValues;
- (void)setDefaultCustomValues;
- (void)setDefaultReversedBabyJindoValues;
- (void)setDefaultReversedCompactValues;
- (void)setDefaultReversedCustomValues;
- (void)setDefaultValues;
- (void)setPrefix:(id)prefix;
@end

@implementation SBSAIndicatorMitosisSettings

- (void)setPrefix:(id)prefix
{
  v24 = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  objc_storeStrong(&self->_prefix, prefix);
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
        phaseName = [v11 phaseName];
        prefixCopy = [v12 stringWithFormat:@"%@ - %@", prefix, phaseName, prefixCopy];
        [v11 setPhaseName:prefixCopy];
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
  kickingPhaseSettings = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  scale = [kickingPhaseSettings scale];
  [scale setWidth:1.08];

  kickingPhaseSettings2 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  scale2 = [kickingPhaseSettings2 scale];
  [scale2 setHeight:1.08];

  kickingPhaseSettings3 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  contentScale = [kickingPhaseSettings3 contentScale];
  [contentScale setWidth:1.05];

  kickingPhaseSettings4 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  contentScale2 = [kickingPhaseSettings4 contentScale];
  [contentScale2 setHeight:1.05];

  kickingPhaseSettings5 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  containerCenterOffset = [kickingPhaseSettings5 containerCenterOffset];
  [containerCenterOffset setX:0.0];

  kickingPhaseSettings6 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  containerCenterOffset2 = [kickingPhaseSettings6 containerCenterOffset];
  [containerCenterOffset2 setY:0.0];

  kickingPhaseSettings7 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [kickingPhaseSettings7 setPhaseEndMilestone:0.6];

  kickingPhaseSettings8 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [kickingPhaseSettings8 setPhaseEndMilestoneTargetProperty:@"bounds"];

  kickingPhaseSettings9 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [kickingPhaseSettings9 setPhaseEndMilestoneTarget:0];

  kickingPhaseSettings10 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [kickingPhaseSettings10 setSensorShadowProgress:0.0];

  kickedPhaseSettings = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  scale3 = [kickedPhaseSettings scale];
  [scale3 setWidth:1.11];

  kickedPhaseSettings2 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  scale4 = [kickedPhaseSettings2 scale];
  [scale4 setHeight:1.1];

  kickedPhaseSettings3 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  contentScale3 = [kickedPhaseSettings3 contentScale];
  [contentScale3 setWidth:1.085];

  kickedPhaseSettings4 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  contentScale4 = [kickedPhaseSettings4 contentScale];
  [contentScale4 setHeight:1.05];

  kickedPhaseSettings5 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  containerCenterOffset3 = [kickedPhaseSettings5 containerCenterOffset];
  [containerCenterOffset3 setX:4.0];

  kickedPhaseSettings6 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [kickedPhaseSettings6 setPhaseEndMilestone:0.6];

  kickedPhaseSettings7 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [kickedPhaseSettings7 setPhaseEndMilestoneTargetProperty:@"center"];

  kickedPhaseSettings8 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [kickedPhaseSettings8 setPhaseEndMilestoneTarget:0];

  kickedPhaseSettings9 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [kickedPhaseSettings9 setSensorShadowProgress:1.0];

  preparingToSettlePhaseSettings = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  scale5 = [preparingToSettlePhaseSettings scale];
  [scale5 setWidth:1.0];

  preparingToSettlePhaseSettings2 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  scale6 = [preparingToSettlePhaseSettings2 scale];
  [scale6 setHeight:1.0];

  preparingToSettlePhaseSettings3 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  contentScale5 = [preparingToSettlePhaseSettings3 contentScale];
  [contentScale5 setWidth:1.0];

  preparingToSettlePhaseSettings4 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  contentScale6 = [preparingToSettlePhaseSettings4 contentScale];
  [contentScale6 setHeight:1.0];

  preparingToSettlePhaseSettings5 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  containerCenterOffset4 = [preparingToSettlePhaseSettings5 containerCenterOffset];
  [containerCenterOffset4 setX:0.0];

  preparingToSettlePhaseSettings6 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [preparingToSettlePhaseSettings6 setPhaseEndMilestone:0.4];

  preparingToSettlePhaseSettings7 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [preparingToSettlePhaseSettings7 setPhaseEndMilestoneTargetProperty:@"bounds"];

  preparingToSettlePhaseSettings8 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [preparingToSettlePhaseSettings8 setPhaseEndMilestoneTarget:0];

  preparingToSettlePhaseSettings9 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [preparingToSettlePhaseSettings9 setSensorShadowProgress:0.6];

  settlingPhaseSettings = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  scale7 = [settlingPhaseSettings scale];
  [scale7 setWidth:1.0];

  settlingPhaseSettings2 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  scale8 = [settlingPhaseSettings2 scale];
  [scale8 setHeight:1.0];

  settlingPhaseSettings3 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  contentScale7 = [settlingPhaseSettings3 contentScale];
  [contentScale7 setWidth:1.0];

  settlingPhaseSettings4 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  contentScale8 = [settlingPhaseSettings4 contentScale];
  [contentScale8 setHeight:1.0];

  settlingPhaseSettings5 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  containerCenterOffset5 = [settlingPhaseSettings5 containerCenterOffset];
  [containerCenterOffset5 setX:0.0];

  settlingPhaseSettings6 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  [settlingPhaseSettings6 setPhaseEndMilestone:2.0];

  settlingPhaseSettings7 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  [settlingPhaseSettings7 setPhaseEndMilestoneTargetProperty:@"center"];

  settlingPhaseSettings8 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  [settlingPhaseSettings8 setPhaseEndMilestoneTarget:0];

  settlingPhaseSettings9 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  [settlingPhaseSettings9 setSensorShadowProgress:0.0];
}

- (void)setDefaultBabyJindoValues
{
  [(SBSAIndicatorMitosisSettings *)self setDefaultValues];
  [(SBSAIndicatorMitosisSettings *)self setPrefix:@"BabyJindo"];
  [(SBSAIndicatorMitosisSettings *)self setMicroIndicatorAppearanceTransitionBeginPhase:2];
  [(SBSAIndicatorMitosisSettings *)self setMicroIndicatorTranslationTransitionBeginPhase:1];
  [(SBSAIndicatorMitosisSettings *)self setInterSensorIndicatorAppearanceTransitionBeginPhase:2];
  kickingPhaseSettings = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  scale = [kickingPhaseSettings scale];
  [scale setWidth:1.16];

  kickingPhaseSettings2 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  scale2 = [kickingPhaseSettings2 scale];
  [scale2 setHeight:1.0];

  kickingPhaseSettings3 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  contentScale = [kickingPhaseSettings3 contentScale];
  [contentScale setWidth:1.16];

  kickingPhaseSettings4 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  contentScale2 = [kickingPhaseSettings4 contentScale];
  [contentScale2 setHeight:1.0];

  kickingPhaseSettings5 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  containerCenterOffset = [kickingPhaseSettings5 containerCenterOffset];
  [containerCenterOffset setX:2.33333333];

  kickingPhaseSettings6 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [kickingPhaseSettings6 setPhaseEndMilestone:0.6];

  kickingPhaseSettings7 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [kickingPhaseSettings7 setPhaseEndMilestoneTargetProperty:@"bounds"];

  kickingPhaseSettings8 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [kickingPhaseSettings8 setPhaseEndMilestoneTarget:0];

  kickedPhaseSettings = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  scale3 = [kickedPhaseSettings scale];
  [scale3 setWidth:1.12];

  kickedPhaseSettings2 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  scale4 = [kickedPhaseSettings2 scale];
  [scale4 setHeight:1.08];

  kickedPhaseSettings3 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  contentScale3 = [kickedPhaseSettings3 contentScale];
  [contentScale3 setWidth:1.12];

  kickedPhaseSettings4 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  contentScale4 = [kickedPhaseSettings4 contentScale];
  [contentScale4 setHeight:1.08];

  kickedPhaseSettings5 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  containerCenterOffset2 = [kickedPhaseSettings5 containerCenterOffset];
  [containerCenterOffset2 setX:1.66666667];

  kickedPhaseSettings6 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  containerCenterOffset3 = [kickedPhaseSettings6 containerCenterOffset];
  [containerCenterOffset3 setY:0.0];

  kickedPhaseSettings7 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [kickedPhaseSettings7 setPhaseEndMilestone:0.4];

  kickedPhaseSettings8 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [kickedPhaseSettings8 setPhaseEndMilestoneTargetProperty:@"center"];

  kickedPhaseSettings9 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [kickedPhaseSettings9 setPhaseEndMilestoneTarget:0];

  preparingToSettlePhaseSettings = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [preparingToSettlePhaseSettings setBlobRadius:3.33333333];

  preparingToSettlePhaseSettings2 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  scale5 = [preparingToSettlePhaseSettings2 scale];
  [scale5 setWidth:1.0];

  preparingToSettlePhaseSettings3 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  scale6 = [preparingToSettlePhaseSettings3 scale];
  [scale6 setHeight:1.0];

  preparingToSettlePhaseSettings4 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  contentScale5 = [preparingToSettlePhaseSettings4 contentScale];
  [contentScale5 setWidth:1.0];

  preparingToSettlePhaseSettings5 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  contentScale6 = [preparingToSettlePhaseSettings5 contentScale];
  [contentScale6 setHeight:1.0];

  preparingToSettlePhaseSettings6 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  containerCenterOffset4 = [preparingToSettlePhaseSettings6 containerCenterOffset];
  [containerCenterOffset4 setX:0.333333333];

  preparingToSettlePhaseSettings7 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [preparingToSettlePhaseSettings7 setPhaseEndMilestone:0.5];

  preparingToSettlePhaseSettings8 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [preparingToSettlePhaseSettings8 setPhaseEndMilestoneTargetProperty:@"center"];

  preparingToSettlePhaseSettings9 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [preparingToSettlePhaseSettings9 setPhaseEndMilestoneTarget:0];

  preparingToSettlePhaseSettings10 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [preparingToSettlePhaseSettings10 setSensorShadowProgress:0.0];

  settlingPhaseSettings = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  scale7 = [settlingPhaseSettings scale];
  [scale7 setWidth:1.0];

  settlingPhaseSettings2 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  scale8 = [settlingPhaseSettings2 scale];
  [scale8 setHeight:1.0];

  settlingPhaseSettings3 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  contentScale7 = [settlingPhaseSettings3 contentScale];
  [contentScale7 setWidth:1.0];

  settlingPhaseSettings4 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  contentScale8 = [settlingPhaseSettings4 contentScale];
  [contentScale8 setHeight:1.0];

  settlingPhaseSettings5 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  containerCenterOffset5 = [settlingPhaseSettings5 containerCenterOffset];
  [containerCenterOffset5 setX:0.0];

  settlingPhaseSettings6 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  [settlingPhaseSettings6 setPhaseEndMilestone:2.0];

  settlingPhaseSettings7 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  [settlingPhaseSettings7 setPhaseEndMilestoneTargetProperty:@"center"];

  settlingPhaseSettings8 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  [settlingPhaseSettings8 setPhaseEndMilestoneTarget:0];

  settlingPhaseSettings9 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  [settlingPhaseSettings9 setSensorShadowProgress:0.0];
}

- (void)setDefaultCustomValues
{
  [(SBSAIndicatorMitosisSettings *)self setDefaultValues];
  [(SBSAIndicatorMitosisSettings *)self setPrefix:@"Custom"];
  [(SBSAIndicatorMitosisSettings *)self setMicroIndicatorAppearanceTransitionBeginPhase:2];
  [(SBSAIndicatorMitosisSettings *)self setMicroIndicatorTranslationTransitionBeginPhase:1];
  [(SBSAIndicatorMitosisSettings *)self setInterSensorIndicatorAppearanceTransitionBeginPhase:2];
  kickingPhaseSettings = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  scale = [kickingPhaseSettings scale];
  [scale setWidth:1.025];

  kickingPhaseSettings2 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  scale2 = [kickingPhaseSettings2 scale];
  [scale2 setHeight:1.05];

  kickingPhaseSettings3 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  contentScale = [kickingPhaseSettings3 contentScale];
  [contentScale setWidth:1.025];

  kickingPhaseSettings4 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  contentScale2 = [kickingPhaseSettings4 contentScale];
  [contentScale2 setHeight:1.05];

  kickingPhaseSettings5 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [kickingPhaseSettings5 setPhaseEndMilestone:0.6];

  kickingPhaseSettings6 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [kickingPhaseSettings6 setPhaseEndMilestoneTargetProperty:@"bounds"];

  kickingPhaseSettings7 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [kickingPhaseSettings7 setPhaseEndMilestoneTarget:0];

  kickingPhaseSettings8 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [kickingPhaseSettings8 setSensorShadowProgress:0.5];

  kickedPhaseSettings = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  scale3 = [kickedPhaseSettings scale];
  [scale3 setWidth:1.04];

  kickedPhaseSettings2 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  scale4 = [kickedPhaseSettings2 scale];
  [scale4 setHeight:1.075];

  kickedPhaseSettings3 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  contentScale3 = [kickedPhaseSettings3 contentScale];
  [contentScale3 setWidth:1.04];

  kickedPhaseSettings4 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  contentScale4 = [kickedPhaseSettings4 contentScale];
  [contentScale4 setHeight:1.075];

  kickedPhaseSettings5 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  containerCenterOffset = [kickedPhaseSettings5 containerCenterOffset];
  [containerCenterOffset setX:3.0];

  kickedPhaseSettings6 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  containerCenterOffset2 = [kickedPhaseSettings6 containerCenterOffset];
  [containerCenterOffset2 setY:1.0];

  kickedPhaseSettings7 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [kickedPhaseSettings7 setPhaseEndMilestone:0.4];

  kickedPhaseSettings8 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [kickedPhaseSettings8 setPhaseEndMilestoneTargetProperty:@"center"];

  kickedPhaseSettings9 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [kickedPhaseSettings9 setPhaseEndMilestoneTarget:0];

  preparingToSettlePhaseSettings = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  scale5 = [preparingToSettlePhaseSettings scale];
  [scale5 setWidth:1.0];

  preparingToSettlePhaseSettings2 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  scale6 = [preparingToSettlePhaseSettings2 scale];
  [scale6 setHeight:1.0];

  preparingToSettlePhaseSettings3 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  contentScale5 = [preparingToSettlePhaseSettings3 contentScale];
  [contentScale5 setWidth:1.0];

  preparingToSettlePhaseSettings4 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  contentScale6 = [preparingToSettlePhaseSettings4 contentScale];
  [contentScale6 setHeight:1.0];

  preparingToSettlePhaseSettings5 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  containerCenterOffset3 = [preparingToSettlePhaseSettings5 containerCenterOffset];
  [containerCenterOffset3 setX:0.0];

  preparingToSettlePhaseSettings6 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  containerCenterOffset4 = [preparingToSettlePhaseSettings6 containerCenterOffset];
  [containerCenterOffset4 setY:0.333333333];

  preparingToSettlePhaseSettings7 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [preparingToSettlePhaseSettings7 setSensorShadowProgress:0.4];

  preparingToSettlePhaseSettings8 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [preparingToSettlePhaseSettings8 setPhaseEndMilestone:0.4];

  preparingToSettlePhaseSettings9 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [preparingToSettlePhaseSettings9 setPhaseEndMilestoneTargetProperty:@"center"];

  preparingToSettlePhaseSettings10 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [preparingToSettlePhaseSettings10 setPhaseEndMilestoneTarget:0];

  settlingPhaseSettings = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  scale7 = [settlingPhaseSettings scale];
  [scale7 setWidth:1.0];

  settlingPhaseSettings2 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  scale8 = [settlingPhaseSettings2 scale];
  [scale8 setHeight:1.0];

  settlingPhaseSettings3 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  contentScale7 = [settlingPhaseSettings3 contentScale];
  [contentScale7 setWidth:1.0];

  settlingPhaseSettings4 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  contentScale8 = [settlingPhaseSettings4 contentScale];
  [contentScale8 setHeight:1.0];

  settlingPhaseSettings5 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  containerCenterOffset5 = [settlingPhaseSettings5 containerCenterOffset];
  [containerCenterOffset5 setX:0.0];

  settlingPhaseSettings6 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  containerCenterOffset6 = [settlingPhaseSettings6 containerCenterOffset];
  [containerCenterOffset6 setY:0.0];

  settlingPhaseSettings7 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  [settlingPhaseSettings7 setPhaseEndMilestone:2.0];

  settlingPhaseSettings8 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  [settlingPhaseSettings8 setPhaseEndMilestoneTargetProperty:@"center"];

  settlingPhaseSettings9 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  [settlingPhaseSettings9 setPhaseEndMilestoneTarget:0];

  settlingPhaseSettings10 = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  [settlingPhaseSettings10 setSensorShadowProgress:0.0];
}

- (void)setDefaultReversedCompactValues
{
  [(SBSAIndicatorMitosisSettings *)self setDefaultValues];
  [(SBSAIndicatorMitosisSettings *)self setPrefix:@"ReversedCompact"];
  [(SBSAIndicatorMitosisSettings *)self setMicroIndicatorTranslationTransitionBeginPhase:2];
  kickingPhaseSettings = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [kickingPhaseSettings setPhaseEndMilestone:0.6];

  kickingPhaseSettings2 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [kickingPhaseSettings2 setPhaseEndMilestoneTargetProperty:@"indicatorViewAlpha"];

  kickingPhaseSettings3 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [kickingPhaseSettings3 setPhaseEndMilestoneTarget:3];

  kickingPhaseSettings4 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  indicatorElementTransitionSettings = [kickingPhaseSettings4 indicatorElementTransitionSettings];
  indicatorElementViewAlphaBehaviorSettings = [indicatorElementTransitionSettings indicatorElementViewAlphaBehaviorSettings];
  [indicatorElementViewAlphaBehaviorSettings setDefaultCriticallyDampedValues];

  kickingPhaseSettings5 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  indicatorElementTransitionSettings2 = [kickingPhaseSettings5 indicatorElementTransitionSettings];
  indicatorElementViewBlurProgressBehaviorSettings = [indicatorElementTransitionSettings2 indicatorElementViewBlurProgressBehaviorSettings];
  [indicatorElementViewBlurProgressBehaviorSettings setDefaultCriticallyDampedValues];

  kickedPhaseSettings = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  scale = [kickedPhaseSettings scale];
  [scale setWidth:1.08];

  kickedPhaseSettings2 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  scale2 = [kickedPhaseSettings2 scale];
  [scale2 setHeight:1.07];

  kickedPhaseSettings3 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  contentScale = [kickedPhaseSettings3 contentScale];
  [contentScale setWidth:1.05];

  kickedPhaseSettings4 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  contentScale2 = [kickedPhaseSettings4 contentScale];
  [contentScale2 setHeight:1.03];

  kickedPhaseSettings5 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  containerCenterOffset = [kickedPhaseSettings5 containerCenterOffset];
  [containerCenterOffset setX:3.0];

  kickedPhaseSettings6 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [kickedPhaseSettings6 setPhaseEndMilestone:0.7];

  kickedPhaseSettings7 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [kickedPhaseSettings7 setPhaseEndMilestoneTargetProperty:@"bounds"];

  kickedPhaseSettings8 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [kickedPhaseSettings8 setSensorShadowProgress:1.0];

  kickedPhaseSettings9 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  indicatorElementTransitionSettings3 = [kickedPhaseSettings9 indicatorElementTransitionSettings];
  indicatorElementViewAlphaBehaviorSettings2 = [indicatorElementTransitionSettings3 indicatorElementViewAlphaBehaviorSettings];
  [indicatorElementViewAlphaBehaviorSettings2 setDefaultCriticallyDampedValues];

  kickedPhaseSettings10 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  indicatorElementTransitionSettings4 = [kickedPhaseSettings10 indicatorElementTransitionSettings];
  indicatorElementViewBlurProgressBehaviorSettings2 = [indicatorElementTransitionSettings4 indicatorElementViewBlurProgressBehaviorSettings];
  [indicatorElementViewBlurProgressBehaviorSettings2 setDefaultCriticallyDampedValues];

  preparingToSettlePhaseSettings = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  scale3 = [preparingToSettlePhaseSettings scale];
  [scale3 setWidth:1.0];

  preparingToSettlePhaseSettings2 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  scale4 = [preparingToSettlePhaseSettings2 scale];
  [scale4 setHeight:1.0];

  preparingToSettlePhaseSettings3 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  contentScale3 = [preparingToSettlePhaseSettings3 contentScale];
  [contentScale3 setWidth:1.0];

  preparingToSettlePhaseSettings4 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  contentScale4 = [preparingToSettlePhaseSettings4 contentScale];
  [contentScale4 setHeight:1.0];

  preparingToSettlePhaseSettings5 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  containerCenterOffset2 = [preparingToSettlePhaseSettings5 containerCenterOffset];
  [containerCenterOffset2 setX:0.333333333];

  preparingToSettlePhaseSettings6 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [preparingToSettlePhaseSettings6 setPhaseEndMilestone:0.4];

  preparingToSettlePhaseSettings7 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [preparingToSettlePhaseSettings7 setPhaseEndMilestoneTargetProperty:@"center"];

  settlingPhaseSettings = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  [settlingPhaseSettings setPhaseEndMilestoneTargetProperty:@"bounds"];

  preparingToSettlePhaseSettings8 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  indicatorElementTransitionSettings5 = [preparingToSettlePhaseSettings8 indicatorElementTransitionSettings];
  indicatorElementViewAlphaBehaviorSettings3 = [indicatorElementTransitionSettings5 indicatorElementViewAlphaBehaviorSettings];
  [indicatorElementViewAlphaBehaviorSettings3 setDefaultCriticallyDampedValues];

  preparingToSettlePhaseSettings9 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  indicatorElementTransitionSettings6 = [preparingToSettlePhaseSettings9 indicatorElementTransitionSettings];
  indicatorElementViewBlurProgressBehaviorSettings3 = [indicatorElementTransitionSettings6 indicatorElementViewBlurProgressBehaviorSettings];
  [indicatorElementViewBlurProgressBehaviorSettings3 setDefaultCriticallyDampedValues];
}

- (void)setDefaultReversedBabyJindoValues
{
  [(SBSAIndicatorMitosisSettings *)self setDefaultValues];
  [(SBSAIndicatorMitosisSettings *)self setPrefix:@"ReversedBabyJindo"];
  [(SBSAIndicatorMitosisSettings *)self setMicroIndicatorTranslationTransitionBeginPhase:1];
  kickingPhaseSettings = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [kickingPhaseSettings setPhaseEndMilestone:0.6];

  kickingPhaseSettings2 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [kickingPhaseSettings2 setPhaseEndMilestoneTargetProperty:@"indicatorViewAlpha"];

  kickingPhaseSettings3 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [kickingPhaseSettings3 setPhaseEndMilestoneTarget:3];

  kickingPhaseSettings4 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  indicatorElementTransitionSettings = [kickingPhaseSettings4 indicatorElementTransitionSettings];
  indicatorElementViewAlphaBehaviorSettings = [indicatorElementTransitionSettings indicatorElementViewAlphaBehaviorSettings];
  [indicatorElementViewAlphaBehaviorSettings setDefaultCriticallyDampedValues];

  kickingPhaseSettings5 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  indicatorElementTransitionSettings2 = [kickingPhaseSettings5 indicatorElementTransitionSettings];
  indicatorElementViewBlurProgressBehaviorSettings = [indicatorElementTransitionSettings2 indicatorElementViewBlurProgressBehaviorSettings];
  [indicatorElementViewBlurProgressBehaviorSettings setDefaultCriticallyDampedValues];

  kickedPhaseSettings = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  scale = [kickedPhaseSettings scale];
  [scale setWidth:1.16];

  kickedPhaseSettings2 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  scale2 = [kickedPhaseSettings2 scale];
  [scale2 setHeight:1.05];

  kickedPhaseSettings3 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  contentScale = [kickedPhaseSettings3 contentScale];
  [contentScale setWidth:1.16];

  kickedPhaseSettings4 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  contentScale2 = [kickedPhaseSettings4 contentScale];
  [contentScale2 setHeight:1.05];

  kickedPhaseSettings5 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  containerCenterOffset = [kickedPhaseSettings5 containerCenterOffset];
  [containerCenterOffset setX:2.33333333];

  kickedPhaseSettings6 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [kickedPhaseSettings6 setPhaseEndMilestone:0.8];

  kickedPhaseSettings7 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [kickedPhaseSettings7 setPhaseEndMilestoneTargetProperty:@"center"];

  kickedPhaseSettings8 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [kickedPhaseSettings8 setSensorShadowProgress:0.7];

  kickedPhaseSettings9 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  indicatorElementTransitionSettings3 = [kickedPhaseSettings9 indicatorElementTransitionSettings];
  indicatorElementViewAlphaBehaviorSettings2 = [indicatorElementTransitionSettings3 indicatorElementViewAlphaBehaviorSettings];
  [indicatorElementViewAlphaBehaviorSettings2 setDefaultCriticallyDampedValues];

  kickedPhaseSettings10 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  indicatorElementTransitionSettings4 = [kickedPhaseSettings10 indicatorElementTransitionSettings];
  indicatorElementViewBlurProgressBehaviorSettings2 = [indicatorElementTransitionSettings4 indicatorElementViewBlurProgressBehaviorSettings];
  [indicatorElementViewBlurProgressBehaviorSettings2 setDefaultCriticallyDampedValues];

  preparingToSettlePhaseSettings = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  scale3 = [preparingToSettlePhaseSettings scale];
  [scale3 setWidth:1.02];

  preparingToSettlePhaseSettings2 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  scale4 = [preparingToSettlePhaseSettings2 scale];
  [scale4 setHeight:1.01];

  preparingToSettlePhaseSettings3 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  contentScale3 = [preparingToSettlePhaseSettings3 contentScale];
  [contentScale3 setWidth:1.02];

  preparingToSettlePhaseSettings4 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  contentScale4 = [preparingToSettlePhaseSettings4 contentScale];
  [contentScale4 setHeight:1.01];

  preparingToSettlePhaseSettings5 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  containerCenterOffset2 = [preparingToSettlePhaseSettings5 containerCenterOffset];
  [containerCenterOffset2 setX:0.333333333];

  preparingToSettlePhaseSettings6 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [preparingToSettlePhaseSettings6 setPhaseEndMilestone:0.6];

  preparingToSettlePhaseSettings7 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [preparingToSettlePhaseSettings7 setPhaseEndMilestoneTargetProperty:@"center"];

  preparingToSettlePhaseSettings8 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  indicatorElementTransitionSettings5 = [preparingToSettlePhaseSettings8 indicatorElementTransitionSettings];
  indicatorElementViewAlphaBehaviorSettings3 = [indicatorElementTransitionSettings5 indicatorElementViewAlphaBehaviorSettings];
  [indicatorElementViewAlphaBehaviorSettings3 setDefaultCriticallyDampedValues];

  preparingToSettlePhaseSettings9 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  indicatorElementTransitionSettings6 = [preparingToSettlePhaseSettings9 indicatorElementTransitionSettings];
  indicatorElementViewBlurProgressBehaviorSettings3 = [indicatorElementTransitionSettings6 indicatorElementViewBlurProgressBehaviorSettings];
  [indicatorElementViewBlurProgressBehaviorSettings3 setDefaultCriticallyDampedValues];

  settlingPhaseSettings = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  [settlingPhaseSettings setPhaseEndMilestoneTargetProperty:@"center"];
}

- (void)setDefaultReversedCustomValues
{
  [(SBSAIndicatorMitosisSettings *)self setDefaultValues];
  [(SBSAIndicatorMitosisSettings *)self setPrefix:@"ReversedCustom"];
  [(SBSAIndicatorMitosisSettings *)self setMicroIndicatorTranslationTransitionBeginPhase:2];
  kickingPhaseSettings = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [kickingPhaseSettings setPhaseEndMilestone:0.6];

  kickingPhaseSettings2 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [kickingPhaseSettings2 setPhaseEndMilestoneTargetProperty:@"indicatorViewAlpha"];

  kickingPhaseSettings3 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [kickingPhaseSettings3 setPhaseEndMilestoneTarget:3];

  kickingPhaseSettings4 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  [kickingPhaseSettings4 setSensorShadowProgress:0.5];

  kickingPhaseSettings5 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  indicatorElementTransitionSettings = [kickingPhaseSettings5 indicatorElementTransitionSettings];
  indicatorElementViewAlphaBehaviorSettings = [indicatorElementTransitionSettings indicatorElementViewAlphaBehaviorSettings];
  [indicatorElementViewAlphaBehaviorSettings setDefaultCriticallyDampedValues];

  kickingPhaseSettings6 = [(SBSAIndicatorMitosisSettings *)self kickingPhaseSettings];
  indicatorElementTransitionSettings2 = [kickingPhaseSettings6 indicatorElementTransitionSettings];
  indicatorElementViewBlurProgressBehaviorSettings = [indicatorElementTransitionSettings2 indicatorElementViewBlurProgressBehaviorSettings];
  [indicatorElementViewBlurProgressBehaviorSettings setDefaultCriticallyDampedValues];

  kickedPhaseSettings = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  scale = [kickedPhaseSettings scale];
  [scale setWidth:1.04];

  kickedPhaseSettings2 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  scale2 = [kickedPhaseSettings2 scale];
  [scale2 setHeight:1.075];

  kickedPhaseSettings3 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  contentScale = [kickedPhaseSettings3 contentScale];
  [contentScale setWidth:1.04];

  kickedPhaseSettings4 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  contentScale2 = [kickedPhaseSettings4 contentScale];
  [contentScale2 setHeight:1.075];

  kickedPhaseSettings5 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  containerCenterOffset = [kickedPhaseSettings5 containerCenterOffset];
  [containerCenterOffset setX:3.0];

  kickedPhaseSettings6 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  containerCenterOffset2 = [kickedPhaseSettings6 containerCenterOffset];
  [containerCenterOffset2 setY:1.0];

  kickedPhaseSettings7 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [kickedPhaseSettings7 setPhaseEndMilestone:0.4];

  kickedPhaseSettings8 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [kickedPhaseSettings8 setPhaseEndMilestoneTargetProperty:@"center"];

  kickedPhaseSettings9 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  [kickedPhaseSettings9 setSensorShadowProgress:1.0];

  kickedPhaseSettings10 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  indicatorElementTransitionSettings3 = [kickedPhaseSettings10 indicatorElementTransitionSettings];
  indicatorElementViewAlphaBehaviorSettings2 = [indicatorElementTransitionSettings3 indicatorElementViewAlphaBehaviorSettings];
  [indicatorElementViewAlphaBehaviorSettings2 setDefaultCriticallyDampedValues];

  kickedPhaseSettings11 = [(SBSAIndicatorMitosisSettings *)self kickedPhaseSettings];
  indicatorElementTransitionSettings4 = [kickedPhaseSettings11 indicatorElementTransitionSettings];
  indicatorElementViewBlurProgressBehaviorSettings2 = [indicatorElementTransitionSettings4 indicatorElementViewBlurProgressBehaviorSettings];
  [indicatorElementViewBlurProgressBehaviorSettings2 setDefaultCriticallyDampedValues];

  preparingToSettlePhaseSettings = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  scale3 = [preparingToSettlePhaseSettings scale];
  [scale3 setWidth:1.0];

  preparingToSettlePhaseSettings2 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  scale4 = [preparingToSettlePhaseSettings2 scale];
  [scale4 setHeight:1.0];

  preparingToSettlePhaseSettings3 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  contentScale3 = [preparingToSettlePhaseSettings3 contentScale];
  [contentScale3 setWidth:1.0];

  preparingToSettlePhaseSettings4 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  contentScale4 = [preparingToSettlePhaseSettings4 contentScale];
  [contentScale4 setHeight:1.0];

  preparingToSettlePhaseSettings5 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  containerCenterOffset3 = [preparingToSettlePhaseSettings5 containerCenterOffset];
  [containerCenterOffset3 setX:0.0];

  preparingToSettlePhaseSettings6 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  containerCenterOffset4 = [preparingToSettlePhaseSettings6 containerCenterOffset];
  [containerCenterOffset4 setY:0.333333333];

  preparingToSettlePhaseSettings7 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [preparingToSettlePhaseSettings7 setSensorShadowProgress:0.4];

  preparingToSettlePhaseSettings8 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [preparingToSettlePhaseSettings8 setPhaseEndMilestone:0.4];

  preparingToSettlePhaseSettings9 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  [preparingToSettlePhaseSettings9 setPhaseEndMilestoneTargetProperty:@"center"];

  preparingToSettlePhaseSettings10 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  indicatorElementTransitionSettings5 = [preparingToSettlePhaseSettings10 indicatorElementTransitionSettings];
  indicatorElementViewAlphaBehaviorSettings3 = [indicatorElementTransitionSettings5 indicatorElementViewAlphaBehaviorSettings];
  [indicatorElementViewAlphaBehaviorSettings3 setDefaultCriticallyDampedValues];

  preparingToSettlePhaseSettings11 = [(SBSAIndicatorMitosisSettings *)self preparingToSettlePhaseSettings];
  indicatorElementTransitionSettings6 = [preparingToSettlePhaseSettings11 indicatorElementTransitionSettings];
  indicatorElementViewBlurProgressBehaviorSettings3 = [indicatorElementTransitionSettings6 indicatorElementViewBlurProgressBehaviorSettings];
  [indicatorElementViewBlurProgressBehaviorSettings3 setDefaultCriticallyDampedValues];

  settlingPhaseSettings = [(SBSAIndicatorMitosisSettings *)self settlingPhaseSettings];
  [settlingPhaseSettings setPhaseEndMilestoneTargetProperty:@"bounds"];
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