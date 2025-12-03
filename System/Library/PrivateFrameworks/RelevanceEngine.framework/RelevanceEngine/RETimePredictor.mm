@interface RETimePredictor
+ (id)supportedFeatures;
- (id)featureValueForFeature:(id)feature element:(id)element engine:(id)engine trainingContext:(id)context;
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

- (id)featureValueForFeature:(id)feature element:(id)element engine:(id)engine trainingContext:(id)context
{
  featureCopy = feature;
  date = [context attributeForKey:@"RETrainingContextDateKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (date)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  date = [MEMORY[0x277CBEAA8] date];
LABEL_6:
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v10 = +[REFeature isWeekendFeature];
  v11 = [featureCopy isEqual:v10];

  if (v11)
  {
    v12 = [currentCalendar isDateInWeekend:date];
LABEL_10:
    v15 = [REFeatureValue featureValueWithInt64:v12];
LABEL_11:
    v16 = v15;
    goto LABEL_12;
  }

  v13 = +[REFeature dayOfWeekFeature];
  v14 = [featureCopy isEqual:v13];

  if (v14)
  {
    v12 = [currentCalendar component:512 fromDate:date];
    goto LABEL_10;
  }

  v18 = +[REFeature currentTimeFeature];
  v19 = [featureCopy isEqual:v18];

  if (v19)
  {
    v20 = [currentCalendar component:32 fromDate:date];
    v21 = [currentCalendar maximumRangeOfUnit:32];
    v15 = [REFeatureValue featureValueWithDouble:((v20 - v21) / v22)];
    goto LABEL_11;
  }

  v16 = 0;
LABEL_12:

  return v16;
}

@end