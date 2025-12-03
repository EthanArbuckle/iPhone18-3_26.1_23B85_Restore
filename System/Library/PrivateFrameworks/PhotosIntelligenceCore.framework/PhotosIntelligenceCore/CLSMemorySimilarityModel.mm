@interface CLSMemorySimilarityModel
- (CLSMemorySimilarityModel)initWithSceneAnalysisVersion:(unint64_t)version;
- (void)setupVersion33;
- (void)setupVersion80;
- (void)setupVersion84;
@end

@implementation CLSMemorySimilarityModel

- (void)setupVersion84
{
  *&self->_version = xmmword_25E63DA80;
  *&self->_identicalSimilarityDistanceThreshold = vdupq_n_s64(0x3FB581BC02C66AD8uLL);
  *&self->_semanticalSimilarityDistanceThreshold = vdupq_n_s64(0x3FC3205E293205E3uLL);
  self->_semanticalSimilarityWithPersonDistanceThreshold = 0.111111111;
}

- (void)setupVersion80
{
  *&self->_version = xmmword_25E63DA90;
  *&self->_identicalSimilarityDistanceThreshold = vdupq_n_s64(0x3FBBB51018A5B761uLL);
  *&self->_semanticalSimilarityDistanceThreshold = vdupq_n_s64(0x3FCACB8920F04E57uLL);
  self->_semanticalSimilarityWithPersonDistanceThreshold = 0.209336415;
}

- (void)setupVersion33
{
  *&self->_version = xmmword_25E63DAA0;
  *&self->_identicalSimilarityDistanceThreshold = vdupq_n_s64(0x3FE4FDF3B645A1CBuLL);
  *&self->_semanticalSimilarityDistanceThreshold = vdupq_n_s64(0x3FEE5E353F7CED91uLL);
  self->_semanticalSimilarityWithPersonDistanceThreshold = 0.8;
}

- (CLSMemorySimilarityModel)initWithSceneAnalysisVersion:(unint64_t)version
{
  v14 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = CLSMemorySimilarityModel;
  v4 = [(CLSMemorySimilarityModel *)&v9 init];
  v5 = v4;
  if (v4)
  {
    if (version < 0x54)
    {
      if (version < 0x50)
      {
        if (version < 0x21)
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

        else
        {
          [(CLSMemorySimilarityModel *)v4 setupVersion33];
        }
      }

      else
      {
        [(CLSMemorySimilarityModel *)v4 setupVersion80];
      }
    }

    else
    {
      [(CLSMemorySimilarityModel *)v4 setupVersion84];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

@end