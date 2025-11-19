@interface CLSCityNatureModel
+ (unint64_t)baseSceneAnalysisVersionWithSceneAnalysisVersion:(unint64_t)a3;
+ (void)enumerateModelsAscending:(BOOL)a3 usingBlock:(id)a4;
- (CLSCityNatureModel)initWithSceneAnalysisVersion:(unint64_t)a3;
- (id)modelInfo;
- (id)nodeForSignalIdentifier:(unint64_t)a3;
- (void)setupVersion82;
- (void)setupVersion85;
@end

@implementation CLSCityNatureModel

- (id)modelInfo
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __31__CLSCityNatureModel_modelInfo__block_invoke;
  aBlock[3] = &unk_279A280B8;
  v4 = v3;
  v9 = v4;
  v5 = _Block_copy(aBlock);
  v5[2](v5, self->_natureNode, 0);
  v5[2](v5, self->_cityNode, 0);
  v5[2](v5, self->_cityNatureishNode, 0);
  v6 = v4;

  return v4;
}

void __31__CLSCityNatureModel_modelInfo__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 signalInfoWithIsHierarchical:?];
  [v2 addObject:v3];
}

- (id)nodeForSignalIdentifier:(unint64_t)a3
{
  switch(a3)
  {
    case 0x7FFFF7FF:
      cityNatureishNode = self->_cityNatureishNode;
      goto LABEL_7;
    case 0x7FFFF7FE:
      cityNatureishNode = self->_cityNode;
      goto LABEL_7;
    case 0x7FFFF7FD:
      cityNatureishNode = self->_natureNode;
LABEL_7:
      v5 = cityNatureishNode;
      goto LABEL_8;
  }

  if ([(CLSCityNatureModel *)self isResponsibleForSignalIdentifier:a3])
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"City Nature - Unknown (%X)", a3];
    v5 = [[CLSSignalNode alloc] initWithIdentifier:a3 name:v7 operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  }

  else
  {
    v5 = 0;
  }

LABEL_8:

  return v5;
}

- (void)setupVersion85
{
  self->_version = 85;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:2147481597 name:@"City Nature - Nature" operatingPoint:0.704 highPrecisionOperatingPoint:0.969 highRecallOperatingPoint:0.307];
  natureNode = self->_natureNode;
  self->_natureNode = v3;

  v5 = [[CLSSignalNode alloc] initWithIdentifier:2147481598 name:@"City Nature - City" operatingPoint:0.347 highPrecisionOperatingPoint:0.684 highRecallOperatingPoint:0.081];
  cityNode = self->_cityNode;
  self->_cityNode = v5;

  v7 = [[CLSSignalNode alloc] initWithIdentifier:2147481599 name:@"City Nature - City Natureish" operatingPoint:0.0192 highPrecisionOperatingPoint:0.141 highRecallOperatingPoint:0.005];
  cityNatureishNode = self->_cityNatureishNode;
  self->_cityNatureishNode = v7;

  self->_cityscapeWallpaperSuggestionCityThreshold = 0.9;
}

- (void)setupVersion82
{
  self->_version = 82;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:2147481597 name:@"City Nature - Nature" operatingPoint:0.248 highPrecisionOperatingPoint:0.676 highRecallOperatingPoint:0.06];
  natureNode = self->_natureNode;
  self->_natureNode = v3;

  v5 = [[CLSSignalNode alloc] initWithIdentifier:2147481598 name:@"City Nature - City" operatingPoint:0.225 highPrecisionOperatingPoint:0.459 highRecallOperatingPoint:0.052];
  cityNode = self->_cityNode;
  self->_cityNode = v5;

  v7 = [[CLSSignalNode alloc] initWithIdentifier:2147481599 name:@"City Nature - City Natureish" operatingPoint:0.341 highPrecisionOperatingPoint:0.551 highRecallOperatingPoint:0.088];
  cityNatureishNode = self->_cityNatureishNode;
  self->_cityNatureishNode = v7;

  MEMORY[0x2821F96F8]();
}

- (CLSCityNatureModel)initWithSceneAnalysisVersion:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = CLSCityNatureModel;
  v4 = [(CLSCityNatureModel *)&v9 init];
  v5 = v4;
  if (v4)
  {
    if (a3 < 0x55)
    {
      if (a3 < 0x52)
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
        [(CLSCityNatureModel *)v4 setupVersion82];
      }
    }

    else
    {
      [(CLSCityNatureModel *)v4 setupVersion85];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (void)enumerateModelsAscending:(BOOL)a3 usingBlock:(id)a4
{
  v4 = a3;
  v5 = a4;
  v9 = [[CLSCityNatureModel alloc] initWithSceneAnalysisVersion:82];
  v6 = [[CLSCityNatureModel alloc] initWithSceneAnalysisVersion:85];
  if (v4)
  {
    v7 = v9;
  }

  else
  {
    v7 = v6;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = v9;
  }

  (v5)[2](v5, v7);
  (v5)[2](v5, v8);
}

+ (unint64_t)baseSceneAnalysisVersionWithSceneAnalysisVersion:(unint64_t)a3
{
  v3 = 82;
  if (a3 < 0x52)
  {
    v3 = 0;
  }

  if (a3 >= 0x55)
  {
    return 85;
  }

  else
  {
    return v3;
  }
}

@end