@interface PGLocationSummarizedFeature
+ (unsigned)summarizedFeatureSubtypeForLocationNode:(id)node;
- (PGLocationSummarizedFeature)initWithSubtype:(unsigned __int16)subtype intervalsPresent:(id)present numberOfAssets:(unint64_t)assets isMandatoryForKeyAsset:(BOOL)asset locationNode:(id)node personNode:(id)personNode locationName:(id)name;
@end

@implementation PGLocationSummarizedFeature

- (PGLocationSummarizedFeature)initWithSubtype:(unsigned __int16)subtype intervalsPresent:(id)present numberOfAssets:(unint64_t)assets isMandatoryForKeyAsset:(BOOL)asset locationNode:(id)node personNode:(id)personNode locationName:(id)name
{
  presentCopy = present;
  nodeCopy = node;
  personNodeCopy = personNode;
  nameCopy = name;
  v24.receiver = self;
  v24.super_class = PGLocationSummarizedFeature;
  v18 = [(PGLocationSummarizedFeature *)&v24 init];
  v19 = v18;
  if (v18)
  {
    v18->_type = 1;
    v18->_subtype = subtype;
    v20 = PGSummarizedFeatureConsolidatedDateIntervals(presentCopy);
    intervalsPresent = v19->_intervalsPresent;
    v19->_intervalsPresent = v20;

    v19->_numberOfAssets = assets;
    v19->_isMandatoryForKeyAsset = asset;
    objc_storeStrong(&v19->_locationNode, node);
    objc_storeStrong(&v19->_personNode, personNode);
    objc_storeStrong(&v19->_locationName, name);
  }

  return v19;
}

+ (unsigned)summarizedFeatureSubtypeForLocationNode:(id)node
{
  nodeCopy = node;
  label = [nodeCopy label];
  v5 = [label isEqualToString:@"Address"];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    label2 = [nodeCopy label];
    v8 = [label2 isEqualToString:@"Area"];

    if (v8)
    {
      v6 = 2;
    }

    else
    {
      label3 = [nodeCopy label];
      v10 = [label3 isEqualToString:@"District"];

      if (v10)
      {
        v6 = 3;
      }

      else
      {
        label4 = [nodeCopy label];
        v12 = [label4 isEqualToString:@"City"];

        if (v12)
        {
          v6 = 4;
        }

        else
        {
          label5 = [nodeCopy label];
          v14 = [label5 isEqualToString:@"County"];

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