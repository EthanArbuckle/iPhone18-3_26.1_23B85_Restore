@interface CLSWallpaperScoreModel
+ (unint64_t)baseSceneAnalysisVersionWithSceneAnalysisVersion:(unint64_t)a3;
- (CLSWallpaperScoreModel)initWithSceneAnalysisVersion:(unint64_t)a3;
- (void)setupVersion77;
- (void)setupVersion88;
@end

@implementation CLSWallpaperScoreModel

- (void)setupVersion88
{
  self->_version = 88;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Wallpaper - Cityscape" operatingPoint:0.68 highPrecisionOperatingPoint:0.7 highRecallOperatingPoint:0.6];
  cityscapeNode = self->_cityscapeNode;
  self->_cityscapeNode = v3;

  v5 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Wallpaper - Landscape" operatingPoint:0.58 highPrecisionOperatingPoint:0.6 highRecallOperatingPoint:0.4];
  landscapeNode = self->_landscapeNode;
  self->_landscapeNode = v5;

  v7 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Wallpaper - Cat" operatingPoint:0.52 highPrecisionOperatingPoint:0.56 highRecallOperatingPoint:0.41];
  catNode = self->_catNode;
  self->_catNode = v7;

  v9 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Wallpaper - Dog" operatingPoint:0.61 highPrecisionOperatingPoint:0.71 highRecallOperatingPoint:0.31];
  dogNode = self->_dogNode;
  self->_dogNode = v9;

  v11 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Wallpaper - Pet" operatingPoint:0.52 highPrecisionOperatingPoint:0.56 highRecallOperatingPoint:0.31];
  petNode = self->_petNode;
  self->_petNode = v11;

  v13 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Wallpaper - People" operatingPoint:0.27 highPrecisionOperatingPoint:0.4 highRecallOperatingPoint:0.2];
  peopleNode = self->_peopleNode;
  self->_peopleNode = v13;

  v15 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Wallpaper - MinimumWallpaperScore" operatingPoint:0.24 highPrecisionOperatingPoint:0.24 highRecallOperatingPoint:0.24];
  minimumWallpaperScoreNode = self->_minimumWallpaperScoreNode;
  self->_minimumWallpaperScoreNode = v15;

  MEMORY[0x2821F96F8]();
}

- (void)setupVersion77
{
  self->_version = 77;
  v3 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Wallpaper - Cityscape" operatingPoint:0.43 highPrecisionOperatingPoint:0.43 highRecallOperatingPoint:0.43];
  cityscapeNode = self->_cityscapeNode;
  self->_cityscapeNode = v3;

  v5 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Wallpaper - Landscape" operatingPoint:0.53 highPrecisionOperatingPoint:0.53 highRecallOperatingPoint:0.53];
  landscapeNode = self->_landscapeNode;
  self->_landscapeNode = v5;

  v7 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Wallpaper - Cat" operatingPoint:0.5 highPrecisionOperatingPoint:0.5 highRecallOperatingPoint:0.5];
  catNode = self->_catNode;
  self->_catNode = v7;

  v9 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Wallpaper - Dog" operatingPoint:0.6 highPrecisionOperatingPoint:0.6 highRecallOperatingPoint:0.6];
  dogNode = self->_dogNode;
  self->_dogNode = v9;

  [(CLSSignalNode *)self->_catNode operatingPoint];
  v12 = v11;
  [(CLSSignalNode *)self->_dogNode operatingPoint];
  if (v12 < v13)
  {
    v12 = v13;
  }

  v14 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Wallpaper - Pet" operatingPoint:v12 highPrecisionOperatingPoint:v12 highRecallOperatingPoint:v12];
  petNode = self->_petNode;
  self->_petNode = v14;

  v16 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Wallpaper - People" operatingPoint:0.43 highPrecisionOperatingPoint:0.43 highRecallOperatingPoint:0.43];
  peopleNode = self->_peopleNode;
  self->_peopleNode = v16;

  v18 = [[CLSSignalNode alloc] initWithIdentifier:0 name:@"Wallpaper - MinimumWallpaperScore" operatingPoint:0.24 highPrecisionOperatingPoint:0.24 highRecallOperatingPoint:0.24];
  minimumWallpaperScoreNode = self->_minimumWallpaperScoreNode;
  self->_minimumWallpaperScoreNode = v18;

  MEMORY[0x2821F96F8]();
}

- (CLSWallpaperScoreModel)initWithSceneAnalysisVersion:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = CLSWallpaperScoreModel;
  v4 = [(CLSWallpaperScoreModel *)&v9 init];
  v5 = v4;
  if (v4)
  {
    if (a3 < 0x58)
    {
      if (a3 < 0x4D)
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
        [(CLSWallpaperScoreModel *)v4 setupVersion77];
      }
    }

    else
    {
      [(CLSWallpaperScoreModel *)v4 setupVersion88];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (unint64_t)baseSceneAnalysisVersionWithSceneAnalysisVersion:(unint64_t)a3
{
  v3 = 77;
  if (a3 < 0x4D)
  {
    v3 = 0;
  }

  if (a3 >= 0x58)
  {
    return 88;
  }

  else
  {
    return v3;
  }
}

@end