@interface RKLinguisticDataProvider
- (RKLinguisticDataProvider)init;
@end

@implementation RKLinguisticDataProvider

- (RKLinguisticDataProvider)init
{
  v6.receiver = self;
  v6.super_class = RKLinguisticDataProvider;
  v2 = [(RKLinguisticDataProvider *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    polarityMapsByLanguageID = v2->_polarityMapsByLanguageID;
    v2->_polarityMapsByLanguageID = v3;
  }

  return v2;
}

@end