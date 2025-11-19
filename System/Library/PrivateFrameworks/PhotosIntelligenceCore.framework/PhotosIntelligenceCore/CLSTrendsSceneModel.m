@interface CLSTrendsSceneModel
+ (unint64_t)baseSceneAnalysisVersionWithSceneAnalysisVersion:(unint64_t)a3;
- (CLSTrendsSceneModel)initWithSceneAnalysisVersion:(unint64_t)a3;
- (id)modelInfo;
- (id)nodeForSignalIdentifier:(unint64_t)a3;
- (void)setupVersion33;
- (void)setupVersion80;
- (void)setupVersion84;
@end

@implementation CLSTrendsSceneModel

- (id)modelInfo
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __32__CLSTrendsSceneModel_modelInfo__block_invoke;
  aBlock[3] = &unk_279A280B8;
  v4 = v3;
  v9 = v4;
  v5 = _Block_copy(aBlock);
  v5[2](v5, self->_aircraftNode, 0);
  v5[2](v5, self->_airplaneNode, 0);
  v5[2](v5, self->_birdNode, 0);
  v5[2](v5, self->_flowerNode, 0);
  v5[2](v5, self->_forestNode, 0);
  v5[2](v5, self->_rainbowNode, 0);
  v5[2](v5, self->_skateboardingNode, 0);
  v5[2](v5, self->_skyscraperNode, 0);
  v5[2](v5, self->_snowNode, 0);
  v5[2](v5, self->_sunsetSunriseNode, 0);
  v6 = v4;

  return v4;
}

void __32__CLSTrendsSceneModel_modelInfo__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 signalInfoWithIsHierarchical:?];
  [v2 addObject:v3];
}

- (id)nodeForSignalIdentifier:(unint64_t)a3
{
  v4 = 0;
  if (a3 > 568)
  {
    if (a3 <= 1214)
    {
      if (a3 == 569)
      {
        v5 = 40;
      }

      else
      {
        if (a3 != 1072)
        {
          goto LABEL_25;
        }

        v5 = 56;
      }
    }

    else
    {
      switch(a3)
      {
        case 0x4BFuLL:
          v5 = 64;
          break;
        case 0x4D6uLL:
          v5 = 80;
          break;
        case 0x6E5uLL:
          v5 = 88;
          break;
        default:
          goto LABEL_25;
      }
    }
  }

  else if (a3 <= 105)
  {
    if (a3 == 16)
    {
      v5 = 48;
    }

    else
    {
      if (a3 != 36)
      {
        goto LABEL_25;
      }

      v5 = 72;
    }
  }

  else
  {
    switch(a3)
    {
      case 0x6AuLL:
        v5 = 16;
        break;
      case 0x6BuLL:
        v5 = 24;
        break;
      case 0xD5uLL:
        v5 = 32;
        break;
      default:
        goto LABEL_25;
    }
  }

  v4 = *(&self->super.isa + v5);
LABEL_25:

  return v4;
}

- (void)setupVersion84
{
  self->_version = 84;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:106 name:@"Trend - Aircraft" operatingPoint:0.35 highPrecisionOperatingPoint:0.35 highRecallOperatingPoint:0.35];
  aircraftNode = self->_aircraftNode;
  self->_aircraftNode = v3;

  v5 = [[CLSSignalNode alloc] initWithIdentifier:107 name:@"Trend - Airplane" operatingPoint:0.58 highPrecisionOperatingPoint:0.58 highRecallOperatingPoint:0.58];
  airplaneNode = self->_airplaneNode;
  self->_airplaneNode = v5;

  v7 = [[CLSSignalNode alloc] initWithIdentifier:213 name:@"Trend - Bird" operatingPoint:0.35 highPrecisionOperatingPoint:0.35 highRecallOperatingPoint:0.35];
  birdNode = self->_birdNode;
  self->_birdNode = v7;

  v9 = [[CLSSignalNode alloc] initWithIdentifier:569 name:@"Trend - Flower" operatingPoint:0.25 highPrecisionOperatingPoint:0.25 highRecallOperatingPoint:0.25];
  flowerNode = self->_flowerNode;
  self->_flowerNode = v9;

  v11 = [[CLSSignalNode alloc] initWithIdentifier:16 name:@"Trend - Forest" operatingPoint:0.57 highPrecisionOperatingPoint:0.57 highRecallOperatingPoint:0.57];
  forestNode = self->_forestNode;
  self->_forestNode = v11;

  v13 = [[CLSSignalNode alloc] initWithIdentifier:1072 name:@"Trend - Rainbow" operatingPoint:0.51 highPrecisionOperatingPoint:0.51 highRecallOperatingPoint:0.51];
  rainbowNode = self->_rainbowNode;
  self->_rainbowNode = v13;

  v15 = [[CLSSignalNode alloc] initWithIdentifier:1215 name:@"Trend - Skateboarding" operatingPoint:0.69 highPrecisionOperatingPoint:0.69 highRecallOperatingPoint:0.69];
  skateboardingNode = self->_skateboardingNode;
  self->_skateboardingNode = v15;

  v17 = [[CLSSignalNode alloc] initWithIdentifier:36 name:@"Trend - Skyscraper" operatingPoint:0.41 highPrecisionOperatingPoint:0.41 highRecallOperatingPoint:0.41];
  skyscraperNode = self->_skyscraperNode;
  self->_skyscraperNode = v17;

  v19 = [[CLSSignalNode alloc] initWithIdentifier:1238 name:@"Trend - Snow" operatingPoint:0.62 highPrecisionOperatingPoint:0.62 highRecallOperatingPoint:0.62];
  snowNode = self->_snowNode;
  self->_snowNode = v19;

  v21 = [[CLSSignalNode alloc] initWithIdentifier:1765 name:@"Trend - SunsetSunrise" operatingPoint:0.57 highPrecisionOperatingPoint:0.57 highRecallOperatingPoint:0.57];
  sunsetSunriseNode = self->_sunsetSunriseNode;
  self->_sunsetSunriseNode = v21;

  MEMORY[0x2821F96F8]();
}

- (void)setupVersion80
{
  self->_version = 80;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:106 name:@"Trend - Aircraft" operatingPoint:0.44 highPrecisionOperatingPoint:0.44 highRecallOperatingPoint:0.44];
  aircraftNode = self->_aircraftNode;
  self->_aircraftNode = v3;

  v5 = [[CLSSignalNode alloc] initWithIdentifier:107 name:@"Trend - Airplane" operatingPoint:0.55 highPrecisionOperatingPoint:0.55 highRecallOperatingPoint:0.55];
  airplaneNode = self->_airplaneNode;
  self->_airplaneNode = v5;

  v7 = [[CLSSignalNode alloc] initWithIdentifier:213 name:@"Trend - Bird" operatingPoint:0.43 highPrecisionOperatingPoint:0.43 highRecallOperatingPoint:0.43];
  birdNode = self->_birdNode;
  self->_birdNode = v7;

  v9 = [[CLSSignalNode alloc] initWithIdentifier:569 name:@"Trend - Flower" operatingPoint:0.23 highPrecisionOperatingPoint:0.23 highRecallOperatingPoint:0.23];
  flowerNode = self->_flowerNode;
  self->_flowerNode = v9;

  v11 = [[CLSSignalNode alloc] initWithIdentifier:16 name:@"Trend - Forest" operatingPoint:0.68 highPrecisionOperatingPoint:0.68 highRecallOperatingPoint:0.68];
  forestNode = self->_forestNode;
  self->_forestNode = v11;

  v13 = [[CLSSignalNode alloc] initWithIdentifier:1072 name:@"Trend - Rainbow" operatingPoint:0.64 highPrecisionOperatingPoint:0.64 highRecallOperatingPoint:0.64];
  rainbowNode = self->_rainbowNode;
  self->_rainbowNode = v13;

  v15 = [[CLSSignalNode alloc] initWithIdentifier:1215 name:@"Trend - Skateboarding" operatingPoint:0.72 highPrecisionOperatingPoint:0.72 highRecallOperatingPoint:0.72];
  skateboardingNode = self->_skateboardingNode;
  self->_skateboardingNode = v15;

  v17 = [[CLSSignalNode alloc] initWithIdentifier:36 name:@"Trend - Skyscraper" operatingPoint:0.43 highPrecisionOperatingPoint:0.43 highRecallOperatingPoint:0.43];
  skyscraperNode = self->_skyscraperNode;
  self->_skyscraperNode = v17;

  v19 = [[CLSSignalNode alloc] initWithIdentifier:1238 name:@"Trend - Snow" operatingPoint:0.85 highPrecisionOperatingPoint:0.85 highRecallOperatingPoint:0.85];
  snowNode = self->_snowNode;
  self->_snowNode = v19;

  v21 = [[CLSSignalNode alloc] initWithIdentifier:1765 name:@"Trend - SunsetSunrise" operatingPoint:0.62 highPrecisionOperatingPoint:0.62 highRecallOperatingPoint:0.62];
  sunsetSunriseNode = self->_sunsetSunriseNode;
  self->_sunsetSunriseNode = v21;

  MEMORY[0x2821F96F8]();
}

- (void)setupVersion33
{
  self->_version = 33;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:106 name:@"Trend - Aircraft" operatingPoint:0.64 highPrecisionOperatingPoint:0.64 highRecallOperatingPoint:0.64];
  aircraftNode = self->_aircraftNode;
  self->_aircraftNode = v3;

  v5 = [[CLSSignalNode alloc] initWithIdentifier:107 name:@"Trend - Airplane" operatingPoint:0.71 highPrecisionOperatingPoint:0.71 highRecallOperatingPoint:0.71];
  airplaneNode = self->_airplaneNode;
  self->_airplaneNode = v5;

  v7 = [[CLSSignalNode alloc] initWithIdentifier:213 name:@"Trend - Bird" operatingPoint:0.86 highPrecisionOperatingPoint:0.86 highRecallOperatingPoint:0.86];
  birdNode = self->_birdNode;
  self->_birdNode = v7;

  v9 = [[CLSSignalNode alloc] initWithIdentifier:569 name:@"Trend - Flower" operatingPoint:0.37 highPrecisionOperatingPoint:0.37 highRecallOperatingPoint:0.37];
  flowerNode = self->_flowerNode;
  self->_flowerNode = v9;

  v11 = [[CLSSignalNode alloc] initWithIdentifier:16 name:@"Trend - Forest" operatingPoint:0.49 highPrecisionOperatingPoint:0.49 highRecallOperatingPoint:0.49];
  forestNode = self->_forestNode;
  self->_forestNode = v11;

  v13 = [[CLSSignalNode alloc] initWithIdentifier:1072 name:@"Trend - Rainbow" operatingPoint:0.85 highPrecisionOperatingPoint:0.85 highRecallOperatingPoint:0.85];
  rainbowNode = self->_rainbowNode;
  self->_rainbowNode = v13;

  v15 = [[CLSSignalNode alloc] initWithIdentifier:1215 name:@"Trend - Skateboarding" operatingPoint:0.87 highPrecisionOperatingPoint:0.87 highRecallOperatingPoint:0.87];
  skateboardingNode = self->_skateboardingNode;
  self->_skateboardingNode = v15;

  v17 = [[CLSSignalNode alloc] initWithIdentifier:36 name:@"Trend - Skyscraper" operatingPoint:0.54 highPrecisionOperatingPoint:0.54 highRecallOperatingPoint:0.54];
  skyscraperNode = self->_skyscraperNode;
  self->_skyscraperNode = v17;

  v19 = [[CLSSignalNode alloc] initWithIdentifier:1238 name:@"Trend - Snow" operatingPoint:0.85 highPrecisionOperatingPoint:0.85 highRecallOperatingPoint:0.85];
  snowNode = self->_snowNode;
  self->_snowNode = v19;

  v21 = [[CLSSignalNode alloc] initWithIdentifier:1765 name:@"Trend - SunsetSunrise" operatingPoint:0.63 highPrecisionOperatingPoint:0.63 highRecallOperatingPoint:0.63];
  sunsetSunriseNode = self->_sunsetSunriseNode;
  self->_sunsetSunriseNode = v21;

  MEMORY[0x2821F96F8]();
}

- (CLSTrendsSceneModel)initWithSceneAnalysisVersion:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = CLSTrendsSceneModel;
  v4 = [(CLSTrendsSceneModel *)&v9 init];
  v5 = v4;
  if (v4)
  {
    if (a3 < 0x54)
    {
      if (a3 < 0x50)
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
          [(CLSTrendsSceneModel *)v4 setupVersion33];
        }
      }

      else
      {
        [(CLSTrendsSceneModel *)v4 setupVersion80];
      }
    }

    else
    {
      [(CLSTrendsSceneModel *)v4 setupVersion84];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (unint64_t)baseSceneAnalysisVersionWithSceneAnalysisVersion:(unint64_t)a3
{
  if (a3 >= 0x21)
  {
    return 33;
  }

  else
  {
    return 0;
  }
}

@end