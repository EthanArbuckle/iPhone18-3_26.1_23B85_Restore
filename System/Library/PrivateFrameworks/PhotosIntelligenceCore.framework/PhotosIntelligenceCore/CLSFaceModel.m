@interface CLSFaceModel
+ (unint64_t)baseFaceAnalysisVersionWithFaceAnalysisVersion:(unint64_t)a3;
- (CLSFaceModel)initWithFaceAnalysisVersion:(unint64_t)a3;
- (void)setupVersion1;
- (void)setupVersion12;
@end

@implementation CLSFaceModel

- (void)setupVersion12
{
  self->_version = 12;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Quality" operatingPoint:0.35 highPrecisionOperatingPoint:0.5 highRecallOperatingPoint:0.35];
  qualityNode = self->_qualityNode;
  self->_qualityNode = v3;

  v5 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Distance" operatingPoint:0.02 highPrecisionOperatingPoint:0.02 highRecallOperatingPoint:0.02];
  distanceNode = self->_distanceNode;
  self->_distanceNode = v5;

  MEMORY[0x2821F96F8]();
}

- (void)setupVersion1
{
  self->_version = 1;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Quality" operatingPoint:0.2 highPrecisionOperatingPoint:0.4 highRecallOperatingPoint:0.2];
  qualityNode = self->_qualityNode;
  self->_qualityNode = v3;

  v5 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Distance" operatingPoint:0.05 highPrecisionOperatingPoint:0.05 highRecallOperatingPoint:0.05];
  distanceNode = self->_distanceNode;
  self->_distanceNode = v5;

  MEMORY[0x2821F96F8]();
}

- (CLSFaceModel)initWithFaceAnalysisVersion:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = CLSFaceModel;
  v4 = [(CLSFaceModel *)&v9 init];
  v5 = v4;
  if (v4)
  {
    if (a3 < 0xC)
    {
      if (a3)
      {
        [(CLSFaceModel *)v4 setupVersion1];
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v6 = objc_opt_class();
          *buf = 67109378;
          v11 = 0;
          v12 = 2112;
          v13 = v6;
          _os_log_impl(&dword_25E5F0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unsupported version %d in %@", buf, 0x12u);
        }

        v5 = 0;
      }
    }

    else
    {
      [(CLSFaceModel *)v4 setupVersion12];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (unint64_t)baseFaceAnalysisVersionWithFaceAnalysisVersion:(unint64_t)a3
{
  if (a3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return a3 != 0;
  }
}

@end