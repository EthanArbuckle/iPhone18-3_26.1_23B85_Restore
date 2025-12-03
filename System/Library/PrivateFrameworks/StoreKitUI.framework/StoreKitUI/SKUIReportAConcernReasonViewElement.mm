@interface SKUIReportAConcernReasonViewElement
- (SKUIReportAConcernReasonViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
@end

@implementation SKUIReportAConcernReasonViewElement

- (SKUIReportAConcernReasonViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIReportAConcernReasonViewElement initWithDOMElement:parent:elementFactory:];
  }

  v20.receiver = self;
  v20.super_class = SKUIReportAConcernReasonViewElement;
  v11 = [(SKUIViewElement *)&v20 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v11)
  {
    v12 = [elementCopy getAttribute:@"data-content-id"];
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "integerValue")}];
    reasonID = v11->_reasonID;
    v11->_reasonID = v13;

    v15 = [elementCopy getAttribute:@"data-uppercase-name"];
    if ([v15 length])
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    objc_storeStrong(&v11->_uppercaseName, v16);
    textContent = [elementCopy textContent];
    name = v11->_name;
    v11->_name = textContent;
  }

  return v11;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIReportAConcernReasonViewElement initWithDOMElement:parent:elementFactory:]";
}

@end