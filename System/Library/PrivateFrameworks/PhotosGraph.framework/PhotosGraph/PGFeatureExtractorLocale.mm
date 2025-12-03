@interface PGFeatureExtractorLocale
- (PGFeatureExtractorLocale)init;
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorLocale

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  v5 = [MEMORY[0x277D22C68] zerosOfCount:{-[PGFeatureExtractorLocale featureLength](self, "featureLength", entity, error)}];
  featureNames = [(PGFeatureExtractorLocale *)self featureNames];
  currentLocale = [(PGFeatureExtractorLocale *)self currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  v9 = [featureNames indexOfObject:localeIdentifier];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  LODWORD(v10) = 1.0;
  [v5 setFloat:v11 atIndex:v10];

  return v5;
}

- (id)featureNames
{
  v5[21] = *MEMORY[0x277D85DE8];
  v5[0] = @"Other";
  v5[1] = @"en_US";
  v5[2] = @"zh_CN";
  v5[3] = @"ja_JP";
  v5[4] = @"pt_BR";
  v5[5] = @"en_GB";
  v5[6] = @"es_MX";
  v5[7] = @"de_DE";
  v5[8] = @"en_CA";
  v5[9] = @"it_IT";
  v5[10] = @"ru_RU";
  v5[11] = @"tr_TR";
  v5[12] = @"fr_FR";
  v5[13] = @"en_AU";
  v5[14] = @"ko_KR";
  v5[15] = @"es_ES";
  v5[16] = @"es_US";
  v5[17] = @"en_IN";
  v5[18] = @"vi_VN";
  v5[19] = @"nl_NL";
  v5[20] = @"th_TH";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:21];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (PGFeatureExtractorLocale)init
{
  v6.receiver = self;
  v6.super_class = PGFeatureExtractorLocale;
  v2 = [(PGFeatureExtractorLocale *)&v6 init];
  if (v2)
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    currentLocale = v2->_currentLocale;
    v2->_currentLocale = currentLocale;
  }

  return v2;
}

@end