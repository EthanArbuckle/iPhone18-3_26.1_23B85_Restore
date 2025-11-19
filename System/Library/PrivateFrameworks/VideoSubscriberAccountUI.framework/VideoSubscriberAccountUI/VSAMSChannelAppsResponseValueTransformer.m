@interface VSAMSChannelAppsResponseValueTransformer
- (VSAMSChannelAppsResponseValueTransformer)init;
@end

@implementation VSAMSChannelAppsResponseValueTransformer

- (VSAMSChannelAppsResponseValueTransformer)init
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = VSAMSChannelAppsResponseValueTransformer;
  v2 = [(VSCompoundValueTransformer *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(VSAMSChannelAppsResponseDictionaryValueTransformer);
    v4 = objc_alloc_init(MEMORY[0x277CE2258]);
    [v4 setObjectValueTransformer:v3];
    v5 = [MEMORY[0x277CCAE68] valueTransformerForName:*MEMORY[0x277CE2488]];
    v6 = objc_alloc_init(MEMORY[0x277CE2258]);
    [v6 setObjectValueTransformer:v5];
    v11[0] = v6;
    v11[1] = v4;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    [(VSCompoundValueTransformer *)v2 setValueTransformers:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

@end