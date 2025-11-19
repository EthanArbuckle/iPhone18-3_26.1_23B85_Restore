@interface SKUIReportAConcernReasonViewElement
- (SKUIReportAConcernReasonViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
@end

@implementation SKUIReportAConcernReasonViewElement

- (SKUIReportAConcernReasonViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIReportAConcernReasonViewElement initWithDOMElement:parent:elementFactory:];
  }

  v20.receiver = self;
  v20.super_class = SKUIReportAConcernReasonViewElement;
  v11 = [(SKUIViewElement *)&v20 initWithDOMElement:v8 parent:v9 elementFactory:v10];
  if (v11)
  {
    v12 = [v8 getAttribute:@"data-content-id"];
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "integerValue")}];
    reasonID = v11->_reasonID;
    v11->_reasonID = v13;

    v15 = [v8 getAttribute:@"data-uppercase-name"];
    if ([v15 length])
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    objc_storeStrong(&v11->_uppercaseName, v16);
    v17 = [v8 textContent];
    name = v11->_name;
    v11->_name = v17;
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