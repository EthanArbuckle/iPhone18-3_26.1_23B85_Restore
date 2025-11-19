@interface VSStorefrontSection
- (VSStorefrontSection)init;
@end

@implementation VSStorefrontSection

- (VSStorefrontSection)init
{
  v6.receiver = self;
  v6.super_class = VSStorefrontSection;
  v2 = [(VSStorefrontSection *)&v6 init];
  v3 = v2;
  if (v2)
  {
    storefronts = v2->_storefronts;
    v2->_storefronts = MEMORY[0x277CBEBF8];
  }

  return v3;
}

@end