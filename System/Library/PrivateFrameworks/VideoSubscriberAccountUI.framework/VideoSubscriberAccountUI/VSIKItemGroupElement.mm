@interface VSIKItemGroupElement
+ (id)supportedFeaturesForElementName:(id)name;
- (VSIKItemGroupElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
@end

@implementation VSIKItemGroupElement

+ (id)supportedFeaturesForElementName:(id)name
{
  v6[1] = *MEMORY[0x277D85DE8];
  if ([name isEqual:@"itemGroup"])
  {
    v6[0] = 0x2880B94F0;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (VSIKItemGroupElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  v13.receiver = self;
  v13.super_class = VSIKItemGroupElement;
  v5 = [(VSIKItemGroupElement *)&v13 initWithDOMElement:element parent:parent elementFactory:factory];
  v6 = v5;
  if (v5)
  {
    features = [(VSIKItemGroupElement *)v5 features];
    firstObject = [features firstObject];

    if (!firstObject)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [[self features] firstObject] parameter must not be nil."];
    }

    features2 = [(VSIKItemGroupElement *)v6 features];
    firstObject2 = [features2 firstObject];

    itemGroup = v6->_itemGroup;
    v6->_itemGroup = firstObject2;
  }

  return v6;
}

@end