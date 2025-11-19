@interface _HKSPNumberBoxedProperty
- (id)allowedInnerClassesForSecureCoding;
@end

@implementation _HKSPNumberBoxedProperty

- (id)allowedInnerClassesForSecureCoding
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end