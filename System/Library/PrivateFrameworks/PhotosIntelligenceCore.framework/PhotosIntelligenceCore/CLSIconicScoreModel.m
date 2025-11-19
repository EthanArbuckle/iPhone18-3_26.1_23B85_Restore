@interface CLSIconicScoreModel
+ (unint64_t)baseSceneAnalysisVersionWithSceneAnalysisVersion:(unint64_t)a3;
- (CLSIconicScoreModel)initWithSceneAnalysisVersion:(unint64_t)a3;
- (unint64_t)bucketForIconicScore:(double)a3;
- (void)setupVersion100;
- (void)setupVersion96;
@end

@implementation CLSIconicScoreModel

- (unint64_t)bucketForIconicScore:(double)a3
{
  if (self->_minimumMeaningfulIconicScore > a3)
  {
    return 0;
  }

  if (self->_mediumIconicScore > a3)
  {
    return 1;
  }

  if (self->_highIconicScore <= a3)
  {
    return 3;
  }

  return 2;
}

- (void)setupVersion100
{
  self->_version = 100;
  *&self->_lowestPossibleIconicScore = xmmword_25E63DA40;
  *&self->_mediumIconicScore = xmmword_25E63DA50;
  self->_similarIconicScoreThreshold = 0.1;
}

- (void)setupVersion96
{
  self->_version = 96;
  *&self->_lowestPossibleIconicScore = xmmword_25E63DA60;
  *&self->_mediumIconicScore = xmmword_25E63DA70;
  self->_similarIconicScoreThreshold = 0.5;
}

- (CLSIconicScoreModel)initWithSceneAnalysisVersion:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = CLSIconicScoreModel;
  v4 = [(CLSIconicScoreModel *)&v9 init];
  v5 = v4;
  if (v4)
  {
    if (a3 < 0x64)
    {
      if (a3 < 0x60)
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
        [(CLSIconicScoreModel *)v4 setupVersion96];
      }
    }

    else
    {
      [(CLSIconicScoreModel *)v4 setupVersion100];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (unint64_t)baseSceneAnalysisVersionWithSceneAnalysisVersion:(unint64_t)a3
{
  v3 = 96;
  if (a3 < 0x60)
  {
    v3 = 0;
  }

  if (a3 >= 0x64)
  {
    return 100;
  }

  else
  {
    return v3;
  }
}

@end