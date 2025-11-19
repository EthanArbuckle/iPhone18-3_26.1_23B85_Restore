@interface CLSSDModel
+ (unint64_t)baseSceneAnalysisVersionWithSceneAnalysisVersion:(unint64_t)a3;
- (CLSSDModel)initWithSceneAnalysisVersion:(unint64_t)a3;
- (id)modelInfo;
- (id)nodeForSignalIdentifier:(unint64_t)a3;
- (void)processSignals:(id)a3 intoProcessedSignals:(id)a4;
- (void)setupVersion33;
- (void)setupVersion51_4;
- (void)setupVersion85;
@end

@implementation CLSSDModel

- (id)modelInfo
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __23__CLSSDModel_modelInfo__block_invoke;
  aBlock[3] = &unk_279A280B8;
  v4 = v3;
  v9 = v4;
  v5 = _Block_copy(aBlock);
  v5[2](v5, self->_foodDrinkNode, 0);
  v5[2](v5, self->_landscapeCityscapeNode, 0);
  v6 = v4;

  return v4;
}

void __23__CLSSDModel_modelInfo__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 signalInfoWithIsHierarchical:?];
  [v2 addObject:v3];
}

- (void)processSignals:(id)a3 intoProcessedSignals:(id)a4
{
  v12 = a4;
  v6 = [a3 objectForKeyedSubscript:&unk_287051CE0];
  [v6 doubleValue];
  v8 = v7;

  version = self->_version;
  if (version <= 0x54)
  {
    v11 = v12;
    if (version < 0x21)
    {
      goto LABEL_6;
    }

    v10 = 0.99;
  }

  else
  {
    v10 = 0.962;
    v11 = v12;
  }

  [v11 setIsShowcasingFood:v8 >= v10];
  v11 = v12;
LABEL_6:
}

- (id)nodeForSignalIdentifier:(unint64_t)a3
{
  if (a3 == 2147482623)
  {
    landscapeCityscapeNode = self->_landscapeCityscapeNode;
    goto LABEL_5;
  }

  if (a3 == 2147482622)
  {
    landscapeCityscapeNode = self->_foodDrinkNode;
LABEL_5:
    v5 = landscapeCityscapeNode;
    goto LABEL_6;
  }

  if ([(CLSSDModel *)self isResponsibleForSignalIdentifier:a3])
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"SD - Unknown (%X)", a3];
    v5 = [[CLSSignalNode alloc] initWithIdentifier:a3 name:v7 operatingPoint:0.0 highPrecisionOperatingPoint:0.0 highRecallOperatingPoint:0.0];
  }

  else
  {
    v5 = 0;
  }

LABEL_6:

  return v5;
}

- (void)setupVersion85
{
  self->_version = 85;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:2147482622 name:@"SD - Food Drink" operatingPoint:0.818 highPrecisionOperatingPoint:0.939 highRecallOperatingPoint:0.58];
  foodDrinkNode = self->_foodDrinkNode;
  self->_foodDrinkNode = v3;

  v5 = [[CLSSignalNode alloc] initWithIdentifier:2147482623 name:@"SD - Landscape Cityscape" operatingPoint:0.706 highPrecisionOperatingPoint:0.897 highRecallOperatingPoint:0.457];
  landscapeCityscapeNode = self->_landscapeCityscapeNode;
  self->_landscapeCityscapeNode = v5;

  v7 = [[CLSSignalNode alloc] initWithIdentifier:2147482622 name:@"Food Drink Foodie" operatingPoint:0.962 highPrecisionOperatingPoint:0.962 highRecallOperatingPoint:0.962];
  foodDrinkFoodieNode = self->_foodDrinkFoodieNode;
  self->_foodDrinkFoodieNode = v7;

  MEMORY[0x2821F96F8]();
}

- (void)setupVersion51_4
{
  self->_version = 51;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:2147482622 name:@"SD - Food Drink" operatingPoint:0.99 highPrecisionOperatingPoint:0.997 highRecallOperatingPoint:0.97];
  foodDrinkNode = self->_foodDrinkNode;
  self->_foodDrinkNode = v3;

  v5 = [[CLSSignalNode alloc] initWithIdentifier:2147482623 name:@"SD - Landscape Cityscape" operatingPoint:0.995 highPrecisionOperatingPoint:0.999 highRecallOperatingPoint:0.98];
  landscapeCityscapeNode = self->_landscapeCityscapeNode;
  self->_landscapeCityscapeNode = v5;

  v7 = [[CLSSignalNode alloc] initWithIdentifier:2147482622 name:@"Food Drink Foodie" operatingPoint:0.99 highPrecisionOperatingPoint:0.99 highRecallOperatingPoint:0.99];
  foodDrinkFoodieNode = self->_foodDrinkFoodieNode;
  self->_foodDrinkFoodieNode = v7;

  MEMORY[0x2821F96F8]();
}

- (void)setupVersion33
{
  self->_version = 33;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:2147482622 name:@"SD - Food Drink" operatingPoint:0.99 highPrecisionOperatingPoint:0.997 highRecallOperatingPoint:0.96];
  foodDrinkNode = self->_foodDrinkNode;
  self->_foodDrinkNode = v3;

  v5 = [[CLSSignalNode alloc] initWithIdentifier:2147482623 name:@"SD - Landscape Cityscape" operatingPoint:0.995 highPrecisionOperatingPoint:0.999 highRecallOperatingPoint:0.98];
  landscapeCityscapeNode = self->_landscapeCityscapeNode;
  self->_landscapeCityscapeNode = v5;

  v7 = [[CLSSignalNode alloc] initWithIdentifier:2147482622 name:@"Food Drink Foodie" operatingPoint:0.99 highPrecisionOperatingPoint:0.99 highRecallOperatingPoint:0.99];
  foodDrinkFoodieNode = self->_foodDrinkFoodieNode;
  self->_foodDrinkFoodieNode = v7;

  MEMORY[0x2821F96F8]();
}

- (CLSSDModel)initWithSceneAnalysisVersion:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = CLSSDModel;
  v4 = [(CLSSDModel *)&v9 init];
  v5 = v4;
  if (v4)
  {
    if (a3 < 0x55)
    {
      if (a3 < 0x33)
      {
        if (a3 < 0x21)
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
          [(CLSSDModel *)v4 setupVersion33];
        }
      }

      else
      {
        [(CLSSDModel *)v4 setupVersion51];
      }
    }

    else
    {
      [(CLSSDModel *)v4 setupVersion85];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (unint64_t)baseSceneAnalysisVersionWithSceneAnalysisVersion:(unint64_t)a3
{
  v3 = 51;
  v4 = 33;
  if (a3 < 0x21)
  {
    v4 = 0;
  }

  if (a3 <= 0x32)
  {
    v3 = v4;
  }

  if (a3 <= 0x54)
  {
    return v3;
  }

  else
  {
    return 85;
  }
}

@end