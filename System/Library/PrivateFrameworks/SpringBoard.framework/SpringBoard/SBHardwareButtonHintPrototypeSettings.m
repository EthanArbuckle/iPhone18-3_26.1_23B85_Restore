@interface SBHardwareButtonHintPrototypeSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBHardwareButtonHintPrototypeSettings

- (void)setDefaultValues
{
  self->_lockDropletHeight = 140.0;
  self->_lockDropletWidth = 50.0;
  self->_lockInitialProtrusionFromEdge = 0.0;
  self->_lockFlattenedProtrusionFromEdge = 5.0;
  self->_lockPresentedProtrusionFromEdge = 5.0;
  self->_lockInitialCornerRadius = 21.0;
  self->_lockFlattenedCornerRadius = 21.0;
  self->_lockPresentedCornerRadius = 21.0;
  self->_lockInitialDropletRadius = 8.0;
  self->_lockFlattenedDropletRadius = 8.0;
  self->_lockPresentedDropletRadius = 8.0;
  self->_volumeDropletHeight = 100.0;
  self->_volumeDropletWidth = 50.0;
  self->_volumeInitialProtrusionFromEdge = 0.0;
  self->_volumeFlattenedProtrusionFromEdge = 5.0;
  self->_volumePresentedProtrusionFromEdge = 5.0;
  self->_volumeInitialCornerRadius = 21.0;
  self->_volumeFlattenedCornerRadius = 21.0;
  self->_volumePresentedCornerRadius = 21.0;
  self->_volumeInitialDropletRadius = 8.0;
  self->_volumeFlattenedDropletRadius = 8.0;
  self->_volumePresentedDropletRadius = 8.0;
  self->_staccatoDropletHeight = 80.0;
  self->_staccatoDropletWidth = 50.0;
  self->_staccatoInitialProtrusionFromEdge = 0.0;
  self->_staccatoFlattenedProtrusionFromEdge = 5.0;
  self->_staccatoPresentedProtrusionFromEdge = 5.0;
  self->_staccatoInitialCornerRadius = 21.0;
  self->_staccatoFlattenedCornerRadius = 21.0;
  self->_staccatoPresentedCornerRadius = 21.0;
  self->_staccatoInitialDropletRadius = 6.0;
  self->_staccatoFlattenedDropletRadius = 6.0;
  self->_staccatoPresentedDropletRadius = 6.0;
  self->_cameraCaptureDropletHeight = 137.0;
  self->_cameraCaptureDropletWidth = 50.0;
  self->_cameraCaptureInitialProtrusionFromEdge = 0.0;
  self->_cameraCaptureFlattenedProtrusionFromEdge = 5.0;
  self->_cameraCapturePresentedProtrusionFromEdge = 5.0;
  self->_cameraCaptureInitialCornerRadius = 21.0;
  self->_cameraCaptureFlattenedCornerRadius = 21.0;
  self->_cameraCapturePresentedCornerRadius = 21.0;
  self->_cameraCaptureInitialDropletRadius = 8.0;
  self->_cameraCaptureFlattenedDropletRadius = 8.0;
  self->_cameraCapturePresentedDropletRadius = 8.0;
  self->_allButtonKeylineWidth = 1.5;
  [(SBFFluidBehaviorSettings *)self->_centerXBehaviorSettings _setDefaultButtonHintGeometryFastValues];
  [(SBFFluidBehaviorSettings *)self->_centerXBehaviorSettings setName:@"centerX"];
  [(SBFFluidBehaviorSettings *)self->_centerYBehaviorSettings _setDefaultButtonHintGeometryFastValues];
  [(SBFFluidBehaviorSettings *)self->_centerYBehaviorSettings setName:@"centerY"];
  [(SBFFluidBehaviorSettings *)self->_containerWidthBehaviorSettings _setDefaultButtonHintGeometryFastValues];
  [(SBFFluidBehaviorSettings *)self->_containerWidthBehaviorSettings setName:@"containerWidth"];
  [(SBFFluidBehaviorSettings *)self->_containerHeightBehaviorSettings _setDefaultButtonHintGeometryFastValues];
  [(SBFFluidBehaviorSettings *)self->_containerHeightBehaviorSettings setName:@"containerHeight"];
  [(SBFFluidBehaviorSettings *)self->_intelligentEdgeLightKeylineStyleBehaviorSettings setDefaultValues];
  [(SBFFluidBehaviorSettings *)self->_intelligentEdgeLightKeylineStyleBehaviorSettings setDampingRatio:1.0];
  [(SBFFluidBehaviorSettings *)self->_intelligentEdgeLightKeylineStyleBehaviorSettings setResponse:0.2];
  [(SBFFluidBehaviorSettings *)self->_intelligentEdgeLightKeylineStyleBehaviorSettings setBehaviorType:1];
  intelligentEdgeLightKeylineStyleBehaviorSettings = self->_intelligentEdgeLightKeylineStyleBehaviorSettings;
  v6 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [(SBFFluidBehaviorSettings *)intelligentEdgeLightKeylineStyleBehaviorSettings setFrameRateRange:1114149 highFrameRateReason:*&v6.minimum, *&v6.maximum, *&v6.preferred];
  v4 = self->_intelligentEdgeLightKeylineStyleBehaviorSettings;

  [(SBFFluidBehaviorSettings *)v4 setName:@"intelligentEdgeLightHardKeylineStyle"];
}

+ (id)settingsControllerModule
{
  v74[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D43210];
  v3 = MEMORY[0x277D431B0];
  v4 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v5 = [v3 rowWithTitle:@"Restore Defaults" action:v4];
  v74[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:1];
  v68 = [v2 sectionWithRows:v6];

  v66 = MEMORY[0x277D43210];
  v63 = [MEMORY[0x277D431E8] rowWithTitle:@"Droplet Height" valueKeyPath:@"lockDropletHeight"];
  v73[0] = v63;
  v59 = [MEMORY[0x277D431E8] rowWithTitle:@"Droplet Width" valueKeyPath:@"lockDropletWidth"];
  v73[1] = v59;
  v56 = [MEMORY[0x277D431E8] rowWithTitle:@"Initial Protrusion From Edge" valueKeyPath:@"lockInitialProtrusionFromEdge"];
  v73[2] = v56;
  v7 = [MEMORY[0x277D431E8] rowWithTitle:@"Flattened Protrusion From Edge" valueKeyPath:@"lockFlattenedProtrusionFromEdge"];
  v73[3] = v7;
  v8 = [MEMORY[0x277D431E8] rowWithTitle:@"Presented Protrusion From Edge" valueKeyPath:@"lockPresentedProtrusionFromEdge"];
  v73[4] = v8;
  v9 = [MEMORY[0x277D431E8] rowWithTitle:@"Initial Corner Radius" valueKeyPath:@"lockInitialCornerRadius"];
  v73[5] = v9;
  v10 = [MEMORY[0x277D431E8] rowWithTitle:@"Flattened Corner Radius" valueKeyPath:@"lockFlattenedCornerRadius"];
  v73[6] = v10;
  v11 = [MEMORY[0x277D431E8] rowWithTitle:@"Presented Corner Radius" valueKeyPath:@"lockPresentedCornerRadius"];
  v73[7] = v11;
  v12 = [MEMORY[0x277D431E8] rowWithTitle:@"Initial Droplet Radius" valueKeyPath:@"lockInitialDropletRadius"];
  v73[8] = v12;
  v13 = [MEMORY[0x277D431E8] rowWithTitle:@"Flattened Droplet Radius" valueKeyPath:@"lockFlattenedDropletRadius"];
  v73[9] = v13;
  v14 = [MEMORY[0x277D431E8] rowWithTitle:@"Presented Droplet Radius" valueKeyPath:@"lockPresentedDropletRadius"];
  v73[10] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:11];
  v67 = [v66 sectionWithRows:v15 title:@"Lock Button"];

  v64 = MEMORY[0x277D43210];
  v60 = [MEMORY[0x277D431E8] rowWithTitle:@"Droplet Height" valueKeyPath:@"volumeDropletHeight"];
  v72[0] = v60;
  v57 = [MEMORY[0x277D431E8] rowWithTitle:@"Droplet Width" valueKeyPath:@"volumeDropletWidth"];
  v72[1] = v57;
  v54 = [MEMORY[0x277D431E8] rowWithTitle:@"Initial Protrusion From Edge" valueKeyPath:@"volumeInitialProtrusionFromEdge"];
  v72[2] = v54;
  v16 = [MEMORY[0x277D431E8] rowWithTitle:@"Flattened Protrusion From Edge" valueKeyPath:@"volumeFlattenedProtrusionFromEdge"];
  v72[3] = v16;
  v17 = [MEMORY[0x277D431E8] rowWithTitle:@"Presented Protrusion From Edge" valueKeyPath:@"volumePresentedProtrusionFromEdge"];
  v72[4] = v17;
  v18 = [MEMORY[0x277D431E8] rowWithTitle:@"Initial Corner Radius" valueKeyPath:@"volumeInitialCornerRadius"];
  v72[5] = v18;
  v19 = [MEMORY[0x277D431E8] rowWithTitle:@"Flattened Corner Radius" valueKeyPath:@"volumeFlattenedCornerRadius"];
  v72[6] = v19;
  v20 = [MEMORY[0x277D431E8] rowWithTitle:@"Presented Corner Radius" valueKeyPath:@"volumePresentedCornerRadius"];
  v72[7] = v20;
  v21 = [MEMORY[0x277D431E8] rowWithTitle:@"Initial Droplet Radius" valueKeyPath:@"volumeInitialDropletRadius"];
  v72[8] = v21;
  v22 = [MEMORY[0x277D431E8] rowWithTitle:@"Flattened Droplet Radius" valueKeyPath:@"volumeFlattenedDropletRadius"];
  v72[9] = v22;
  v23 = [MEMORY[0x277D431E8] rowWithTitle:@"Presented Droplet Radius" valueKeyPath:@"volumePresentedDropletRadius"];
  v72[10] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:11];
  v65 = [v64 sectionWithRows:v24 title:@"Volume Button"];

  v61 = MEMORY[0x277D43210];
  v58 = [MEMORY[0x277D431E8] rowWithTitle:@"Droplet Height" valueKeyPath:@"staccatoDropletHeight"];
  v71[0] = v58;
  v55 = [MEMORY[0x277D431E8] rowWithTitle:@"Droplet Width" valueKeyPath:@"staccatoDropletWidth"];
  v71[1] = v55;
  v53 = [MEMORY[0x277D431E8] rowWithTitle:@"Initial Protrusion From Edge" valueKeyPath:@"staccatoInitialProtrusionFromEdge"];
  v71[2] = v53;
  v25 = [MEMORY[0x277D431E8] rowWithTitle:@"Flattened Protrusion From Edge" valueKeyPath:@"staccatoFlattenedProtrusionFromEdge"];
  v71[3] = v25;
  v26 = [MEMORY[0x277D431E8] rowWithTitle:@"Presented Protrusion From Edge" valueKeyPath:@"staccatoPresentedProtrusionFromEdge"];
  v71[4] = v26;
  v27 = [MEMORY[0x277D431E8] rowWithTitle:@"Initial Corner Radius" valueKeyPath:@"staccatoInitialCornerRadius"];
  v71[5] = v27;
  v28 = [MEMORY[0x277D431E8] rowWithTitle:@"Flattened Corner Radius" valueKeyPath:@"staccatoFlattenedCornerRadius"];
  v71[6] = v28;
  v29 = [MEMORY[0x277D431E8] rowWithTitle:@"Presented Corner Radius" valueKeyPath:@"staccatoPresentedCornerRadius"];
  v71[7] = v29;
  v30 = [MEMORY[0x277D431E8] rowWithTitle:@"Initial Droplet Radius" valueKeyPath:@"staccatoInitialDropletRadius"];
  v71[8] = v30;
  v31 = [MEMORY[0x277D431E8] rowWithTitle:@"Flattened Droplet Radius" valueKeyPath:@"staccatoFlattenedDropletRadius"];
  v71[9] = v31;
  v32 = [MEMORY[0x277D431E8] rowWithTitle:@"Presented Droplet Radius" valueKeyPath:@"staccatoPresentedDropletRadius"];
  v71[10] = v32;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:11];
  v62 = [v61 sectionWithRows:v33 title:@"Staccato Button"];

  v34 = MEMORY[0x277D43210];
  v35 = [MEMORY[0x277D431E8] rowWithTitle:@"Keyline Width" valueKeyPath:@"allButtonKeylineWidth"];
  v70[0] = v35;
  v36 = [MEMORY[0x277D431D8] rowWithTitle:@"Center X Behavior Settings" childSettingsKeyPath:@"centerXBehaviorSettings"];
  v70[1] = v36;
  v37 = [MEMORY[0x277D431D8] rowWithTitle:@"Center Y Behavior Settings" childSettingsKeyPath:@"centerYBehaviorSettings"];
  v70[2] = v37;
  v38 = [MEMORY[0x277D431D8] rowWithTitle:@"Container Width Behavior Settings" childSettingsKeyPath:@"containerWidthBehaviorSettings"];
  v70[3] = v38;
  v39 = [MEMORY[0x277D431D8] rowWithTitle:@"Container Height Behavior Settings" childSettingsKeyPath:@"containerHeightBehaviorSettings"];
  v70[4] = v39;
  v40 = [MEMORY[0x277D431D8] rowWithTitle:@"Intelligent Edge Light Keyline Style Behavior Settings" childSettingsKeyPath:@"intelligentEdgeLightKeylineStyleBehaviorSettings"];
  v70[5] = v40;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:6];
  v42 = [v34 sectionWithRows:v41 title:@"Settings for All Buttons"];

  v43 = [MEMORY[0x277CBEB18] array];
  v44 = 20;
  do
  {
    v45 = MEMORY[0x277D431B0];
    v46 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
    v47 = [v45 rowWithTitle:@"Restore Defaults" action:v46];
    [v43 addObject:v47];

    --v44;
  }

  while (v44);
  v48 = [MEMORY[0x277D43210] sectionWithRows:v43 title:@"Workaround Keyboard Bug"];
  v49 = MEMORY[0x277D43210];
  v69[0] = v68;
  v69[1] = v67;
  v69[2] = v65;
  v69[3] = v62;
  v69[4] = v42;
  v69[5] = v48;
  v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:6];
  v51 = [v49 moduleWithTitle:@"Hardware Button Hint" contents:v50];

  return v51;
}

@end