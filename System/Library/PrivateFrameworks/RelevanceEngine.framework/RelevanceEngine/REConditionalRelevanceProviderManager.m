@interface REConditionalRelevanceProviderManager
+ (id)_dependencyClasses;
+ (id)_features;
@end

@implementation REConditionalRelevanceProviderManager

+ (id)_dependencyClasses
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:7];
  v4 = [v2 setWithArray:{v3, v7, v8, v9, v10, v11, v12}];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)_features
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = +[REFeature conditionalFeature];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end