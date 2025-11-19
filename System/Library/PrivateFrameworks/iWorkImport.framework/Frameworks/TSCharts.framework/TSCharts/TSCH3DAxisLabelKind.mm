@interface TSCH3DAxisLabelKind
+ (id)concreteClasses;
@end

@implementation TSCH3DAxisLabelKind

+ (id)concreteClasses
{
  v8[3] = *MEMORY[0x277D85DE8];
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v8[2] = objc_opt_class();
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2, v3, v4, v5, v8, 3);

  return v6;
}

@end