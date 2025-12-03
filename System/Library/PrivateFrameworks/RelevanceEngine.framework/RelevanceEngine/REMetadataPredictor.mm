@interface REMetadataPredictor
+ (id)supportedFeatures;
- (id)_init;
- (id)featureValueForFeature:(id)feature element:(id)element engine:(id)engine trainingContext:(id)context;
@end

@implementation REMetadataPredictor

- (id)_init
{
  v8.receiver = self;
  v8.super_class = REMetadataPredictor;
  _init = [(REPredictor *)&v8 _init];
  if (_init)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v4 = _init[8];
    _init[8] = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v6 = _init[9];
    _init[9] = dictionary2;
  }

  return _init;
}

+ (id)supportedFeatures
{
  v10[3] = *MEMORY[0x277D85DE8];
  v2 = [REFeatureSet alloc];
  v3 = +[REFeature dataSourceFeature];
  v4 = +[REFeature sectionFeature];
  v10[1] = v4;
  v5 = +[REFeature interactionFeature];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
  v7 = [(REFeatureSet *)v2 initWithFeatures:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)featureValueForFeature:(id)feature element:(id)element engine:(id)engine trainingContext:(id)context
{
  featureCopy = feature;
  elementCopy = element;
  v10 = +[REFeature dataSourceFeature];
  v11 = [featureCopy isEqual:v10];

  if (v11)
  {
    bundleIdentifier = [elementCopy bundleIdentifier];
    if (bundleIdentifier)
    {
      v13 = [REFeatureValue featureValueWithString:bundleIdentifier];
LABEL_14:

      goto LABEL_15;
    }

LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  v14 = +[REFeature sectionFeature];
  v15 = [featureCopy isEqual:v14];

  if (v15)
  {
    bundleIdentifier = [elementCopy section];
    if (!bundleIdentifier)
    {
      goto LABEL_13;
    }

    v16 = 72;
LABEL_10:
    v19 = [*(&self->super.super.super.super.isa + v16) objectForKeyedSubscript:bundleIdentifier];
    if (!v19)
    {
      v19 = [REFeatureValue featureValueWithString:bundleIdentifier];
      [*(&self->super.super.super.super.isa + v16) setObject:v19 forKeyedSubscript:bundleIdentifier];
    }

    v13 = v19;

    goto LABEL_14;
  }

  v17 = +[REFeature interactionFeature];
  v18 = [featureCopy isEqual:v17];

  if (v18)
  {
    bundleIdentifier = [elementCopy interaction];
    if (!bundleIdentifier)
    {
      goto LABEL_13;
    }

    v16 = 64;
    goto LABEL_10;
  }

  v13 = 0;
LABEL_15:

  return v13;
}

@end