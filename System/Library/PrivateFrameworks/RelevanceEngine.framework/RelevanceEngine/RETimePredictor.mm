@interface RETimePredictor
+ (id)supportedFeatures;
- (id)featureValueForFeature:(id)a3 element:(id)a4 engine:(id)a5 trainingContext:(id)a6;
@end

@implementation RETimePredictor

+ (id)supportedFeatures
{
  v10[3] = *MEMORY[0x277D85DE8];
  v2 = [REFeatureSet alloc];
  v3 = +[REFeature isWeekendFeature];
  v4 = +[REFeature dayOfWeekFeature];
  v10[1] = v4;
  v5 = +[REFeature currentTimeFeature];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
  v7 = [(REFeatureSet *)v2 initWithFeatures:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)featureValueForFeature:(id)a3 element:(id)a4 engine:(id)a5 trainingContext:(id)a6
{
  v7 = a3;
  v8 = [a6 attributeForKey:@"RETrainingContextDateKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v8)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v8 = [MEMORY[0x277CBEAA8] date];
LABEL_6:
  v9 = [MEMORY[0x277CBEA80] currentCalendar];
  v10 = +[REFeature isWeekendFeature];
  v11 = [v7 isEqual:v10];

  if (v11)
  {
    v12 = [v9 isDateInWeekend:v8];
LABEL_10:
    v15 = [REFeatureValue featureValueWithInt64:v12];
LABEL_11:
    v16 = v15;
    goto LABEL_12;
  }

  v13 = +[REFeature dayOfWeekFeature];
  v14 = [v7 isEqual:v13];

  if (v14)
  {
    v12 = [v9 component:512 fromDate:v8];
    goto LABEL_10;
  }

  v18 = +[REFeature currentTimeFeature];
  v19 = [v7 isEqual:v18];

  if (v19)
  {
    v20 = [v9 component:32 fromDate:v8];
    v21 = [v9 maximumRangeOfUnit:32];
    v15 = [REFeatureValue featureValueWithDouble:((v20 - v21) / v22)];
    goto LABEL_11;
  }

  v16 = 0;
LABEL_12:

  return v16;
}

@end