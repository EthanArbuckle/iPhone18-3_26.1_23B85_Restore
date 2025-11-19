@interface APOdmlFeatureValueTransformer
+ (id)allowedTopLevelClasses;
@end

@implementation APOdmlFeatureValueTransformer

+ (id)allowedTopLevelClasses
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = objc_opt_class();
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2, v6, 1);
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end