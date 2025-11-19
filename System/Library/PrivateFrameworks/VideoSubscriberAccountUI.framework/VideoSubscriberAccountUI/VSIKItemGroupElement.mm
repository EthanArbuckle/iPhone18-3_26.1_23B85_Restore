@interface VSIKItemGroupElement
+ (id)supportedFeaturesForElementName:(id)a3;
- (VSIKItemGroupElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
@end

@implementation VSIKItemGroupElement

+ (id)supportedFeaturesForElementName:(id)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  if ([a3 isEqual:@"itemGroup"])
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

- (VSIKItemGroupElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v13.receiver = self;
  v13.super_class = VSIKItemGroupElement;
  v5 = [(VSIKItemGroupElement *)&v13 initWithDOMElement:a3 parent:a4 elementFactory:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [(VSIKItemGroupElement *)v5 features];
    v8 = [v7 firstObject];

    if (!v8)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [[self features] firstObject] parameter must not be nil."];
    }

    v9 = [(VSIKItemGroupElement *)v6 features];
    v10 = [v9 firstObject];

    itemGroup = v6->_itemGroup;
    v6->_itemGroup = v10;
  }

  return v6;
}

@end