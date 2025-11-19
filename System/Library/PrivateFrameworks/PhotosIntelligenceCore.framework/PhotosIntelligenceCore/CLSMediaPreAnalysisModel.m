@interface CLSMediaPreAnalysisModel
+ (unint64_t)baseSceneAnalysisVersionWithSceneAnalysisVersion:(unint64_t)a3;
- (BOOL)isWronglyRotatedForDirection:(signed __int16)a3 confidence:(double)a4;
- (CLSMediaPreAnalysisModel)initWithSceneAnalysisVersion:(unint64_t)a3;
- (void)setupVersion31;
- (void)setupVersion45;
- (void)setupVersion57;
@end

@implementation CLSMediaPreAnalysisModel

- (BOOL)isWronglyRotatedForDirection:(signed __int16)a3 confidence:(double)a4
{
  if ((a3 - 2) > 2)
  {
    return 0;
  }

  else
  {
    return [*(&self->_probableRotationDirection90DegreesConfidenceNode + ((a3 - 2) & 0x1FFF)) passesWithConfidence:a4];
  }
}

- (void)setupVersion57
{
  [(CLSMediaPreAnalysisModel *)self setupVersion45];
  self->_version = 57;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Probable Rotation Direction Confidence" operatingPoint:0.05 highPrecisionOperatingPoint:0.05 highRecallOperatingPoint:0.05];
  probableRotationDirection0DegreesConfidenceNode = self->_probableRotationDirection0DegreesConfidenceNode;
  self->_probableRotationDirection0DegreesConfidenceNode = v3;

  v5 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Probable Rotation Direction Confidence" operatingPoint:0.1 highPrecisionOperatingPoint:0.1 highRecallOperatingPoint:0.1];
  probableRotationDirection90DegreesConfidenceNode = self->_probableRotationDirection90DegreesConfidenceNode;
  self->_probableRotationDirection90DegreesConfidenceNode = v5;

  v7 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Probable Rotation Direction Confidence" operatingPoint:0.1 highPrecisionOperatingPoint:0.1 highRecallOperatingPoint:0.1];
  probableRotationDirection180DegreesConfidenceNode = self->_probableRotationDirection180DegreesConfidenceNode;
  self->_probableRotationDirection180DegreesConfidenceNode = v7;

  v9 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Probable Rotation Direction Confidence" operatingPoint:0.1 highPrecisionOperatingPoint:0.1 highRecallOperatingPoint:0.1];
  probableRotationDirection270DegreesConfidenceNode = self->_probableRotationDirection270DegreesConfidenceNode;
  self->_probableRotationDirection270DegreesConfidenceNode = v9;

  MEMORY[0x2821F96F8]();
}

- (void)setupVersion45
{
  self->_version = 45;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Sharpness" operatingPoint:0.25 highPrecisionOperatingPoint:0.7 highRecallOperatingPoint:0.25];
  sharpnessNode = self->_sharpnessNode;
  self->_sharpnessNode = v3;

  v5 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Exposure" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  exposureNode = self->_exposureNode;
  self->_exposureNode = v5;

  MEMORY[0x2821F96F8]();
}

- (void)setupVersion31
{
  self->_version = 31;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Sharpness" operatingPoint:0.01 highPrecisionOperatingPoint:0.3 highRecallOperatingPoint:0.01];
  sharpnessNode = self->_sharpnessNode;
  self->_sharpnessNode = v3;

  v5 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Exposure" operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  exposureNode = self->_exposureNode;
  self->_exposureNode = v5;

  MEMORY[0x2821F96F8]();
}

- (CLSMediaPreAnalysisModel)initWithSceneAnalysisVersion:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = CLSMediaPreAnalysisModel;
  v4 = [(CLSMediaPreAnalysisModel *)&v9 init];
  v5 = v4;
  if (v4)
  {
    if (a3 < 0x39)
    {
      if (a3 < 0x2D)
      {
        if (a3 < 0x1F)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v6 = objc_opt_class();
            *buf = 67109378;
            v11 = a3;
            v12 = 2112;
            v13 = v6;
            _os_log_impl(&dword_25E5F0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unsupported version %d in %@", buf, 0x12u);
          }

          v5 = 0;
        }

        else
        {
          [(CLSMediaPreAnalysisModel *)v4 setupVersion31];
        }
      }

      else
      {
        [(CLSMediaPreAnalysisModel *)v4 setupVersion45];
      }
    }

    else
    {
      [(CLSMediaPreAnalysisModel *)v4 setupVersion57];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (unint64_t)baseSceneAnalysisVersionWithSceneAnalysisVersion:(unint64_t)a3
{
  v3 = 45;
  v4 = 31;
  if (a3 < 0x1F)
  {
    v4 = 0;
  }

  if (a3 <= 0x2C)
  {
    v3 = v4;
  }

  if (a3 <= 0x38)
  {
    return v3;
  }

  else
  {
    return 57;
  }
}

@end