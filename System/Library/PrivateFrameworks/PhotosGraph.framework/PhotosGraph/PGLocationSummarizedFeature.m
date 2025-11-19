@interface PGLocationSummarizedFeature
+ (unsigned)summarizedFeatureSubtypeForLocationNode:(id)a3;
- (PGLocationSummarizedFeature)initWithSubtype:(unsigned __int16)a3 intervalsPresent:(id)a4 numberOfAssets:(unint64_t)a5 isMandatoryForKeyAsset:(BOOL)a6 locationNode:(id)a7 personNode:(id)a8 locationName:(id)a9;
@end

@implementation PGLocationSummarizedFeature

- (PGLocationSummarizedFeature)initWithSubtype:(unsigned __int16)a3 intervalsPresent:(id)a4 numberOfAssets:(unint64_t)a5 isMandatoryForKeyAsset:(BOOL)a6 locationNode:(id)a7 personNode:(id)a8 locationName:(id)a9
{
  v14 = a4;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v24.receiver = self;
  v24.super_class = PGLocationSummarizedFeature;
  v18 = [(PGLocationSummarizedFeature *)&v24 init];
  v19 = v18;
  if (v18)
  {
    v18->_type = 1;
    v18->_subtype = a3;
    v20 = PGSummarizedFeatureConsolidatedDateIntervals(v14);
    intervalsPresent = v19->_intervalsPresent;
    v19->_intervalsPresent = v20;

    v19->_numberOfAssets = a5;
    v19->_isMandatoryForKeyAsset = a6;
    objc_storeStrong(&v19->_locationNode, a7);
    objc_storeStrong(&v19->_personNode, a8);
    objc_storeStrong(&v19->_locationName, a9);
  }

  return v19;
}

+ (unsigned)summarizedFeatureSubtypeForLocationNode:(id)a3
{
  v3 = a3;
  v4 = [v3 label];
  v5 = [v4 isEqualToString:@"Address"];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [v3 label];
    v8 = [v7 isEqualToString:@"Area"];

    if (v8)
    {
      v6 = 2;
    }

    else
    {
      v9 = [v3 label];
      v10 = [v9 isEqualToString:@"District"];

      if (v10)
      {
        v6 = 3;
      }

      else
      {
        v11 = [v3 label];
        v12 = [v11 isEqualToString:@"City"];

        if (v12)
        {
          v6 = 4;
        }

        else
        {
          v13 = [v3 label];
          v14 = [v13 isEqualToString:@"County"];

          if (v14)
          {
            v6 = 5;
          }

          else
          {
            v6 = 0;
          }
        }
      }
    }
  }

  return v6;
}

@end