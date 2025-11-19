@interface REMetadataPredictor
+ (id)supportedFeatures;
- (id)_init;
- (id)featureValueForFeature:(id)a3 element:(id)a4 engine:(id)a5 trainingContext:(id)a6;
@end

@implementation REMetadataPredictor

- (id)_init
{
  v8.receiver = self;
  v8.super_class = REMetadataPredictor;
  v2 = [(REPredictor *)&v8 _init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    v4 = v2[8];
    v2[8] = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    v6 = v2[9];
    v2[9] = v5;
  }

  return v2;
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

- (id)featureValueForFeature:(id)a3 element:(id)a4 engine:(id)a5 trainingContext:(id)a6
{
  v8 = a3;
  v9 = a4;
  v10 = +[REFeature dataSourceFeature];
  v11 = [v8 isEqual:v10];

  if (v11)
  {
    v12 = [v9 bundleIdentifier];
    if (v12)
    {
      v13 = [REFeatureValue featureValueWithString:v12];
LABEL_14:

      goto LABEL_15;
    }

LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  v14 = +[REFeature sectionFeature];
  v15 = [v8 isEqual:v14];

  if (v15)
  {
    v12 = [v9 section];
    if (!v12)
    {
      goto LABEL_13;
    }

    v16 = 72;
LABEL_10:
    v19 = [*(&self->super.super.super.super.isa + v16) objectForKeyedSubscript:v12];
    if (!v19)
    {
      v19 = [REFeatureValue featureValueWithString:v12];
      [*(&self->super.super.super.super.isa + v16) setObject:v19 forKeyedSubscript:v12];
    }

    v13 = v19;

    goto LABEL_14;
  }

  v17 = +[REFeature interactionFeature];
  v18 = [v8 isEqual:v17];

  if (v18)
  {
    v12 = [v9 interaction];
    if (!v12)
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