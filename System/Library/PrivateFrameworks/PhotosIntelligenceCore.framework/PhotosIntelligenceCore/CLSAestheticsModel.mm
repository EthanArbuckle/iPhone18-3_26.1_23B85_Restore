@interface CLSAestheticsModel
+ (unint64_t)baseSceneAnalysisVersionWithSceneAnalysisVersion:(unint64_t)version;
- (CLSAestheticsModel)initWithSceneAnalysisVersion:(unint64_t)version;
- (void)setupVersion31;
- (void)setupVersion32;
- (void)setupVersion86;
@end

@implementation CLSAestheticsModel

- (void)setupVersion86
{
  [(CLSAestheticsModel *)self setupVersion32];
  self->_version = 86;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Low Light" operatingPoint:0.8 highPrecisionOperatingPoint:0.8 highRecallOperatingPoint:0.8];
  lowLightNode = self->_lowLightNode;
  self->_lowLightNode = v3;

  MEMORY[0x2821F96F8]();
}

- (void)setupVersion32
{
  [(CLSAestheticsModel *)self setupVersion31];
  self->_version = 32;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Overall Aesthetics" operatingPoint:0.1 highPrecisionOperatingPoint:0.22 highRecallOperatingPoint:0.1];
  overallAestheticScoreNode = self->_overallAestheticScoreNode;
  self->_overallAestheticScoreNode = v3;

  self->_aestheticScoreThresholdToBeAwesome = 0.7;
}

- (void)setupVersion31
{
  self->_version = 31;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Overall Aesthetics" operatingPoint:0.1 highPrecisionOperatingPoint:0.18 highRecallOperatingPoint:0.1];
  overallAestheticScoreNode = self->_overallAestheticScoreNode;
  self->_overallAestheticScoreNode = v3;

  v5 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Well Framed Subject" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  wellFramedSubjectScoreNode = self->_wellFramedSubjectScoreNode;
  self->_wellFramedSubjectScoreNode = v5;

  v7 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Well Chosen Subject" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  wellChosenSubjectScoreNode = self->_wellChosenSubjectScoreNode;
  self->_wellChosenSubjectScoreNode = v7;

  v9 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Tastefully Blurred" operatingPoint:-0.92 highPrecisionOperatingPoint:-0.29 highRecallOperatingPoint:-0.92];
  tastefullyBlurredScoreNode = self->_tastefullyBlurredScoreNode;
  self->_tastefullyBlurredScoreNode = v9;

  v11 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Sharply Focused Subject" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  sharplyFocusedSubjectScoreNode = self->_sharplyFocusedSubjectScoreNode;
  self->_sharplyFocusedSubjectScoreNode = v11;

  v13 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Well Timed Shot" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  wellTimedShotScoreNode = self->_wellTimedShotScoreNode;
  self->_wellTimedShotScoreNode = v13;

  v15 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Pleasant Lighting" operatingPoint:-0.76 highPrecisionOperatingPoint:-0.65 highRecallOperatingPoint:-0.76];
  pleasantLightingScoreNode = self->_pleasantLightingScoreNode;
  self->_pleasantLightingScoreNode = v15;

  v17 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Pleasant Reflections" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  pleasantReflectionsScoreNode = self->_pleasantReflectionsScoreNode;
  self->_pleasantReflectionsScoreNode = v17;

  v19 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Harmonious Color" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  harmoniousColorScoreNode = self->_harmoniousColorScoreNode;
  self->_harmoniousColorScoreNode = v19;

  v21 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Lively Color" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  livelyColorScoreNode = self->_livelyColorScoreNode;
  self->_livelyColorScoreNode = v21;

  v23 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Pleasant Symmetry" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  pleasantSymmetryScoreNode = self->_pleasantSymmetryScoreNode;
  self->_pleasantSymmetryScoreNode = v23;

  v25 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Pleasant Pattern" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  pleasantPatternScoreNode = self->_pleasantPatternScoreNode;
  self->_pleasantPatternScoreNode = v25;

  v27 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Immersiveness" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  immersivenessScoreNode = self->_immersivenessScoreNode;
  self->_immersivenessScoreNode = v27;

  v29 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Pleasant Perspective" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  pleasantPerspectiveScoreNode = self->_pleasantPerspectiveScoreNode;
  self->_pleasantPerspectiveScoreNode = v29;

  v31 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Pleasant Postprocessing" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  pleasantPostProcessingScoreNode = self->_pleasantPostProcessingScoreNode;
  self->_pleasantPostProcessingScoreNode = v31;

  v33 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Noise" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  noiseScoreNode = self->_noiseScoreNode;
  self->_noiseScoreNode = v33;

  v35 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Failure" operatingPoint:-0.45 highPrecisionOperatingPoint:-0.035 highRecallOperatingPoint:-0.45];
  failureScoreNode = self->_failureScoreNode;
  self->_failureScoreNode = v35;

  v37 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Pleasant Composition" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  pleasantCompositionScoreNode = self->_pleasantCompositionScoreNode;
  self->_pleasantCompositionScoreNode = v37;

  v39 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Interesting Subject" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  interestingSubjectScoreNode = self->_interestingSubjectScoreNode;
  self->_interestingSubjectScoreNode = v39;

  v41 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Intrusive Object Presence" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  intrusiveObjectPresenceScoreNode = self->_intrusiveObjectPresenceScoreNode;
  self->_intrusiveObjectPresenceScoreNode = v41;

  v43 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Pleasant Camera Tilt" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  pleasantCameraTiltScoreNode = self->_pleasantCameraTiltScoreNode;
  self->_pleasantCameraTiltScoreNode = v43;

  v45 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Low Light" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  lowLightNode = self->_lowLightNode;
  self->_lowLightNode = v45;

  *&self->_aestheticScoreThresholdToBeAwesome = xmmword_25E63DAD0;
}

- (CLSAestheticsModel)initWithSceneAnalysisVersion:(unint64_t)version
{
  v14 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = CLSAestheticsModel;
  v4 = [(CLSAestheticsModel *)&v9 init];
  v5 = v4;
  if (v4)
  {
    if (version < 0x56)
    {
      if (version < 0x20)
      {
        if (version == 31)
        {
          [(CLSAestheticsModel *)v4 setupVersion31];
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v6 = objc_opt_class();
            *buf = 67109378;
            versionCopy = version;
            v12 = 2112;
            v13 = v6;
            _os_log_impl(&dword_25E5F0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unsupported version %d in %@", buf, 0x12u);
          }

          v5 = 0;
        }
      }

      else
      {
        [(CLSAestheticsModel *)v4 setupVersion32];
      }
    }

    else
    {
      [(CLSAestheticsModel *)v4 setupVersion86];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (unint64_t)baseSceneAnalysisVersionWithSceneAnalysisVersion:(unint64_t)version
{
  v3 = 32;
  if (version == 31)
  {
    v4 = 31;
  }

  else
  {
    v4 = 0;
  }

  if (version <= 0x1F)
  {
    v3 = v4;
  }

  if (version <= 0x55)
  {
    return v3;
  }

  else
  {
    return 86;
  }
}

@end