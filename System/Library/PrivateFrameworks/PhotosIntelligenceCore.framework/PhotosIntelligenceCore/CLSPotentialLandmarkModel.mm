@interface CLSPotentialLandmarkModel
+ (unint64_t)baseSceneAnalysisVersionWithSceneAnalysisVersion:(unint64_t)version;
- (CLSPotentialLandmarkModel)initWithSceneAnalysisVersion:(unint64_t)version;
- (id)modelInfo;
- (id)nodeForSignalIdentifier:(unint64_t)identifier;
- (void)setupVersion32;
- (void)setupVersion33;
@end

@implementation CLSPotentialLandmarkModel

- (id)modelInfo
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __38__CLSPotentialLandmarkModel_modelInfo__block_invoke;
  aBlock[3] = &unk_279A280B8;
  v4 = v3;
  v9 = v4;
  v5 = _Block_copy(aBlock);
  v5[2](v5, self->_landmarkNode, 0);
  v6 = v4;

  return v4;
}

void __38__CLSPotentialLandmarkModel_modelInfo__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 signalInfoWithIsHierarchical:?];
  [v2 addObject:v3];
}

- (id)nodeForSignalIdentifier:(unint64_t)identifier
{
  if (identifier == 2147483135)
  {
    v4 = self->_landmarkNode;
  }

  else if ([(CLSPotentialLandmarkModel *)self isResponsibleForSignalIdentifier:identifier])
  {
    identifier = [MEMORY[0x277CCACA8] stringWithFormat:@"PL - Unknown (%X)", identifier];
    v4 = [[CLSSignalNode alloc] initWithIdentifier:identifier name:identifier operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setupVersion33
{
  self->_version = 33;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:2147483135 name:@"PL - Landmark" operatingPoint:0.61 highPrecisionOperatingPoint:0.91 highRecallOperatingPoint:0.4];
  landmarkNode = self->_landmarkNode;
  self->_landmarkNode = v3;

  MEMORY[0x2821F96F8]();
}

- (void)setupVersion32
{
  self->_version = 32;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:2147483135 name:@"PL - Landmark" operatingPoint:0.98 highPrecisionOperatingPoint:0.98 highRecallOperatingPoint:0.98];
  landmarkNode = self->_landmarkNode;
  self->_landmarkNode = v3;

  MEMORY[0x2821F96F8]();
}

- (CLSPotentialLandmarkModel)initWithSceneAnalysisVersion:(unint64_t)version
{
  v14 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = CLSPotentialLandmarkModel;
  v4 = [(CLSPotentialLandmarkModel *)&v9 init];
  v5 = v4;
  if (v4)
  {
    if (version < 0x21)
    {
      if (version == 32)
      {
        [(CLSPotentialLandmarkModel *)v4 setupVersion32];
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
      [(CLSPotentialLandmarkModel *)v4 setupVersion33];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (unint64_t)baseSceneAnalysisVersionWithSceneAnalysisVersion:(unint64_t)version
{
  if (version >= 0x21)
  {
    return 33;
  }

  else
  {
    return 32 * (version == 32);
  }
}

@end