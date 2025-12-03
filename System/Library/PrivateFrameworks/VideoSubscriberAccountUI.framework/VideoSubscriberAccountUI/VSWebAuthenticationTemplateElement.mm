@interface VSWebAuthenticationTemplateElement
+ (id)supportedFeatures;
- (VSWebAuthenticationTemplateElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
@end

@implementation VSWebAuthenticationTemplateElement

+ (id)supportedFeatures
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"WebMessagePort";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (VSWebAuthenticationTemplateElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  v11.receiver = self;
  v11.super_class = VSWebAuthenticationTemplateElement;
  v5 = [(VSWebAuthenticationTemplateElement *)&v11 initWithDOMElement:element parent:parent elementFactory:factory];
  v6 = v5;
  if (v5)
  {
    features = [(VSWebAuthenticationTemplateElement *)v5 features];
    v8 = [features objectAtIndex:0];
    messagePort = v6->_messagePort;
    v6->_messagePort = v8;
  }

  return v6;
}

@end