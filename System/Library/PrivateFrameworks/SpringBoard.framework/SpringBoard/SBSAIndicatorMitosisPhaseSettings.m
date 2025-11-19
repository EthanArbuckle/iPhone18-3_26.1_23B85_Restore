@interface SBSAIndicatorMitosisPhaseSettings
+ (id)settingsControllerModule;
- (id)drillDownSummary;
- (void)setDefaultValues;
@end

@implementation SBSAIndicatorMitosisPhaseSettings

- (void)setDefaultValues
{
  v8.receiver = self;
  v8.super_class = SBSAIndicatorMitosisPhaseSettings;
  [(PTSettings *)&v8 setDefaultValues];
  self->_blobRadius = 2.0;
  self->_sensorShadowProgress = 0.0;
  self->_phaseEndMilestone = 2.0;
  self->_phaseEndMilestoneTarget = 0;
  phaseEndMilestoneTargetProperty = self->_phaseEndMilestoneTargetProperty;
  self->_phaseEndMilestoneTargetProperty = &stru_283094718;

  [(PTSizeSettings *)self->_scale setDefaultValues];
  [(PTSizeSettings *)self->_scale setWidth:1.0];
  [(PTSizeSettings *)self->_scale setHeight:1.0];
  [(PTSizeSettings *)self->_contentScale setDefaultValues];
  [(PTSizeSettings *)self->_contentScale setWidth:1.0];
  [(PTSizeSettings *)self->_contentScale setHeight:1.0];
  [(PTPointSettings *)self->_containerCenterOffset setDefaultValues];
  [(PTPointSettings *)self->_containerCenterOffset setX:0.0];
  [(PTPointSettings *)self->_containerCenterOffset setY:0.0];
  [(SBSystemApertureTransitionSettings *)self->_associatedContainerBehaviorSettings setDefaultValues];
  associatedContainerBehaviorSettings = self->_associatedContainerBehaviorSettings;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - Associated Container", self->_phaseName];
  [(SBSystemApertureTransitionSettings *)associatedContainerBehaviorSettings setChildBehaviorSettingsNamePrefix:v5];

  [(SBSystemApertureTransitionSettings *)self->_indicatorElementTransitionSettings setDefaultValues];
  indicatorElementTransitionSettings = self->_indicatorElementTransitionSettings;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - Indicator", self->_phaseName];
  [(SBSystemApertureTransitionSettings *)indicatorElementTransitionSettings setChildBehaviorSettingsNamePrefix:v7];
}

- (id)drillDownSummary
{
  v3 = MEMORY[0x277CCACA8];
  [(PTSizeSettings *)self->_scale width];
  v5 = v4;
  [(PTSizeSettings *)self->_scale height];
  v7 = v6;
  [(PTPointSettings *)self->_containerCenterOffset x];
  v9 = v8;
  [(PTPointSettings *)self->_containerCenterOffset y];
  return [v3 stringWithFormat:@"(%.2f, %.2f) - (%.2f, %.2f)", v5, v7, v9, v10];
}

+ (id)settingsControllerModule
{
  v42[7] = *MEMORY[0x277D85DE8];
  v37 = MEMORY[0x277D43210];
  v35 = [MEMORY[0x277D431E8] rowWithTitle:@"Blob Radius" valueKeyPath:@"blobRadius"];
  v33 = [v35 between:0.0 and:30.0];
  v32 = [v33 precision:3];
  v42[0] = v32;
  v31 = [MEMORY[0x277D43290] rowWithTitle:@"Blob Radius" valueKeyPath:@"blobRadius"];
  v30 = [v31 minValue:0.0 maxValue:30.0];
  v42[1] = v30;
  v2 = [MEMORY[0x277D431E8] rowWithTitle:@"Sensor Shadow Progress" valueKeyPath:@"sensorShadowProgress"];
  v3 = [v2 between:0.0 and:1.0];
  v4 = [v3 precision:2];
  v42[2] = v4;
  v5 = [MEMORY[0x277D43290] rowWithTitle:@"Sensor Shadow Progress" valueKeyPath:@"sensorShadowProgress"];
  v6 = [v5 minValue:0.0 maxValue:1.0];
  v42[3] = v6;
  v7 = [MEMORY[0x277D431D8] rowWithTitle:@"Scale" childSettingsKeyPath:@"scale"];
  v42[4] = v7;
  v8 = [MEMORY[0x277D431D8] rowWithTitle:@"Content Scale" childSettingsKeyPath:@"contentScale"];
  v42[5] = v8;
  v9 = [MEMORY[0x277D431D8] rowWithTitle:@"Offset" childSettingsKeyPath:@"containerCenterOffset"];
  v42[6] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:7];
  v38 = [v37 sectionWithRows:v10];

  v11 = MEMORY[0x277D43210];
  v12 = [MEMORY[0x277D431D8] rowWithTitle:@"Associated Container" childSettingsKeyPath:@"associatedContainerBehaviorSettings"];
  v41[0] = v12;
  v13 = [MEMORY[0x277D431D8] rowWithTitle:@"Indicator Container+Element" childSettingsKeyPath:@"indicatorElementTransitionSettings"];
  v41[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
  v36 = [v11 sectionWithRows:v14 title:@"Behavior Settings"];

  v34 = [&unk_28336DF80 bs_map:&__block_literal_global_72];
  v15 = MEMORY[0x277D43210];
  v16 = [MEMORY[0x277D431E8] rowWithTitle:@"Milestone" valueKeyPath:@"phaseEndMilestone"];
  v17 = [v16 between:0.0 and:2.0];
  v18 = [v17 precision:2];
  v40[0] = v18;
  v19 = [MEMORY[0x277D43290] rowWithTitle:@"Milestone" valueKeyPath:@"phaseEndMilestone"];
  v20 = [v19 minValue:0.0 maxValue:2.0];
  v40[1] = v20;
  v21 = [MEMORY[0x277D431B8] rowWithTitle:@"Target" valueKeyPath:@"phaseEndMilestoneTarget"];
  v22 = [v21 possibleValues:&unk_28336DF80 titles:v34];
  v40[2] = v22;
  v23 = [MEMORY[0x277D43200] rowWithTitle:@"Target Property" valueKeyPath:@"phaseEndMilestoneTargetProperty"];
  v40[3] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:4];
  v25 = [v15 sectionWithRows:v24 title:@"Phase End Milestone"];

  v26 = MEMORY[0x277D43210];
  v39[0] = v38;
  v39[1] = v36;
  v39[2] = v25;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:3];
  v28 = [v26 moduleWithTitle:@"Mitosis Stage" contents:v27];

  return v28;
}

__CFString *__61__SBSAIndicatorMitosisPhaseSettings_settingsControllerModule__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 intValue];
  if (v2 > 3)
  {
    return &stru_283094718;
  }

  else
  {
    return off_2783B03E8[v2];
  }
}

@end