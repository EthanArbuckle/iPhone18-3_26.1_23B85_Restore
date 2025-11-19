@interface VSWebAuthenticationTemplateElement
+ (id)supportedFeatures;
- (VSWebAuthenticationTemplateElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
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

- (VSWebAuthenticationTemplateElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v11.receiver = self;
  v11.super_class = VSWebAuthenticationTemplateElement;
  v5 = [(VSWebAuthenticationTemplateElement *)&v11 initWithDOMElement:a3 parent:a4 elementFactory:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [(VSWebAuthenticationTemplateElement *)v5 features];
    v8 = [v7 objectAtIndex:0];
    messagePort = v6->_messagePort;
    v6->_messagePort = v8;
  }

  return v6;
}

@end