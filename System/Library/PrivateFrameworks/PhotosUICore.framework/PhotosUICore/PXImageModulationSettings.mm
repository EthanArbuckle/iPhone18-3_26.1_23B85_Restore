@interface PXImageModulationSettings
+ (id)settingsControllerModule;
+ (id)sharedInstance;
- (void)setDefaultValues;
@end

@implementation PXImageModulationSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXImageModulationSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXImageModulationSettings *)self setEnabled:PXSupportsImageModulation()];
  [(PXImageModulationSettings *)self setFilterType:1];
  [(PXImageModulationSettings *)self setHDRConsideration:0];
  [(PXImageModulationSettings *)self setGainBoostEnabled:1];
  [(PXImageModulationSettings *)self setShowGainMapBorder:0];
  [(PXImageModulationSettings *)self setAnimateGainMapAppearance:1];
  [(PXImageModulationSettings *)self setGainMapAnimationDuration:0.25];
  [(PXImageModulationSettings *)self setGainMapAnimationTimingFunction:*MEMORY[0x1E6979EA0]];
  [(PXImageModulationSettings *)self setGainMapAnimationActivationThreshold:0.0];
  [(PXImageModulationSettings *)self setHDRModulationIntensity:1.0];
  [(PXImageModulationSettings *)self setSDRModulationIntensity:0.0];
  [(PXImageModulationSettings *)self setVideoComplementModulationIntensity:0.5];
  [(PXImageModulationSettings *)self setEDRHeadroomRequestScheme:1];
  [(PXImageModulationSettings *)self setUseThresholdForVideos:1];
  [(PXImageModulationSettings *)self setEDRHeadroomUsageScheme:0];
  [(PXImageModulationSettings *)self setManualEDRHeadroomRequestStops:3.0];
  [(PXImageModulationSettings *)self setEDRHeadroomRequestHDRThreshold:0.1];
  [(PXImageModulationSettings *)self setEDRHeadroomRequestSustainDuration:15.0];
  [(PXImageModulationSettings *)self setLowEDRRequestedHeadroomStops:0.0];
  [(PXImageModulationSettings *)self setHighEDRRequestedHeadroomStops:4.0];
  [(PXImageModulationSettings *)self setForceCurrentScreenSupportsHDR:0];
  [(PXImageModulationSettings *)self setDeviceMaximumEDRHeadroomStops:4.0];
  [(PXImageModulationSettings *)self setUsePreferredDynamicRangeAPI:0];
  [(PXImageModulationSettings *)self setEnableHeadroomMonitoring:1];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_12409 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_12409, &__block_literal_global_12410);
  }

  v3 = sharedInstance_sharedInstance_12411;

  return v3;
}

void __43__PXImageModulationSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 imageModulationSettings];
  v1 = sharedInstance_sharedInstance_12411;
  sharedInstance_sharedInstance_12411 = v0;
}

+ (id)settingsControllerModule
{
  v73[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enable" valueKeyPath:@"enabled"];
  v73[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:1];
  v67 = [v2 sectionWithRows:v4];

  v65 = MEMORY[0x1E69C6638];
  v63 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Filter" valueKeyPath:@"filterType"];
  v61 = [v63 possibleValues:&unk_1F1910F60 titles:&unk_1F1910F78];
  v72[0] = v61;
  v59 = [MEMORY[0x1E69C65F8] rowWithTitle:@"HDR Consideration" valueKeyPath:@"HDRConsideration"];
  v57 = [v59 possibleValues:&unk_1F1910F90 titles:&unk_1F1910FA8];
  v72[1] = v57;
  v5 = [MEMORY[0x1E69C66A0] rowWithTitle:@"HDR Modulation Intensity" valueKeyPath:@"HDRModulationIntensity"];
  v6 = [v5 minValue:0.0 maxValue:1.0];
  v7 = [v6 px_increment:0.0500000007];
  v72[2] = v7;
  v8 = [MEMORY[0x1E69C66A0] rowWithTitle:@"SDR Modulation Intensity" valueKeyPath:@"SDRModulationIntensity"];
  v9 = [v8 minValue:0.0 maxValue:1.0];
  v10 = [v9 px_increment:0.0500000007];
  v72[3] = v10;
  v11 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Video Complement Modulation Intensity" valueKeyPath:@"videoComplementModulationIntensity"];
  v12 = [v11 minValue:0.0 maxValue:1.0];
  v13 = [v12 px_increment:0.0500000007];
  v72[4] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:5];
  v66 = [v65 sectionWithRows:v14 title:@"Filtering" conditionFormat:@"enabled != 0"];

  v15 = MEMORY[0x1E69C6638];
  v16 = MEMORY[0x1E69C66A8];
  v17 = NSStringFromSelector(sel_gainBoostEnabled);
  v18 = [v16 rowWithTitle:@"Use Gain Boost" valueKeyPath:v17];
  v71 = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1];
  v64 = [v15 sectionWithRows:v19 title:@"Gain Map Settings"];

  v50 = MEMORY[0x1E69C6638];
  v62 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Headroom Request" valueKeyPath:@"EDRHeadroomRequestScheme"];
  v60 = [v62 possibleValues:&unk_1F1910FC0 titles:&unk_1F1910FD8];
  v70[0] = v60;
  v58 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Use Threshold For Videos" valueKeyPath:@"useThresholdForVideos"];
  v56 = [MEMORY[0x1E696AE18] predicateWithFormat:@"EDRHeadroomRequestScheme == %@", &unk_1F190CC40];
  v55 = [v58 condition:v56];
  v70[1] = v55;
  v54 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Headroom (Stops)" valueKeyPath:@"manualEDRHeadroomRequestStops"];
  v53 = [v54 minValue:0.0 maxValue:3.0];
  v52 = [MEMORY[0x1E696AE18] predicateWithFormat:@"EDRHeadroomRequestScheme == %@", &unk_1F190CC28];
  v49 = [v53 condition:v52];
  v70[2] = v49;
  v48 = [MEMORY[0x1E69C66A0] rowWithTitle:@"HDR Threshold" valueKeyPath:@"EDRHeadroomRequestHDRThreshold"];
  v47 = [v48 minValue:-1.0 maxValue:1.0];
  v46 = [v47 px_increment:0.1];
  v45 = [MEMORY[0x1E696AE18] predicateWithFormat:@"EDRHeadroomRequestScheme == %@", &unk_1F190CC40];
  v44 = [v46 condition:v45];
  v70[3] = v44;
  v43 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Sustain Duration" valueKeyPath:@"EDRHeadroomRequestSustainDuration"];
  v42 = [v43 minValue:0.0 maxValue:30.0];
  v41 = [v42 px_increment:0.5];
  v70[4] = v41;
  v20 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Low Value (Stops)" valueKeyPath:@"lowEDRRequestedHeadroomStops"];
  v21 = [v20 minValue:0.0 maxValue:2.0];
  v22 = [v21 px_increment:0.1];
  v70[5] = v22;
  v23 = [MEMORY[0x1E69C66A0] rowWithTitle:@"High Value (Stops)" valueKeyPath:@"highEDRRequestedHeadroomStops"];
  v24 = [v23 minValue:0.0 maxValue:4.0];
  v25 = [v24 px_increment:0.1];
  v70[6] = v25;
  v26 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Device Max (Stops)" valueKeyPath:@"deviceMaximumEDRHeadroomStops"];
  v27 = [v26 minValue:0.0 maxValue:3.0];
  v28 = [v27 px_increment:0.1];
  v70[7] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:8];
  v51 = [v50 sectionWithRows:v29 title:@"Headroom Request" conditionFormat:@"enabled != 0"];

  v30 = MEMORY[0x1E69C6638];
  v31 = MEMORY[0x1E69C66A8];
  v32 = NSStringFromSelector(sel_enableHeadroomMonitoring);
  v33 = [v31 rowWithTitle:@"Enable Monitoring" valueKeyPath:v32];
  v69 = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v69 count:1];
  v35 = [v30 sectionWithRows:v34 title:@"Headroom Monitoring"];

  v36 = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v37 = MEMORY[0x1E69C6638];
  v68[0] = v67;
  v68[1] = v66;
  v68[2] = v64;
  v68[3] = v51;
  v68[4] = v35;
  v68[5] = v36;
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:6];
  v39 = [v37 moduleWithTitle:@"Image Modulation" contents:v38];

  return v39;
}

@end