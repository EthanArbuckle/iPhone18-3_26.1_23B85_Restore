@interface SKUIReportAConcernTemplateViewElement
- (NSArray)reasonElements;
- (SKUIReportAConcernTemplateViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5;
@end

@implementation SKUIReportAConcernTemplateViewElement

- (SKUIReportAConcernTemplateViewElement)initWithDOMElement:(id)a3 parent:(id)a4 elementFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIReportAConcernTemplateViewElement initWithDOMElement:parent:elementFactory:];
  }

  v19.receiver = self;
  v19.super_class = SKUIReportAConcernTemplateViewElement;
  v11 = [(SKUIViewElement *)&v19 initWithDOMElement:v8 parent:v9 elementFactory:v10];
  if (v11)
  {
    v12 = [v8 getAttribute:@"src"];
    v13 = [MEMORY[0x277CBEBC0] URLWithString:v12];
    reportConcernURL = v11->_reportConcernURL;
    v11->_reportConcernURL = v13;

    v15 = [v8 getAttribute:@"data-content-id"];
    v11->_itemIdentifier = [v15 longLongValue];

    v16 = [v8 getAttribute:@"data-explanation"];
    reportConcernExplanation = v11->_reportConcernExplanation;
    v11->_reportConcernExplanation = v16;
  }

  return v11;
}

- (NSArray)reasonElements
{
  v3 = [MEMORY[0x277CBEB18] array];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SKUIReportAConcernTemplateViewElement_reasonElements__block_invoke;
  v7[3] = &unk_2781F9640;
  v8 = v3;
  v4 = v3;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v7];
  v5 = [v4 copy];

  return v5;
}

void __55__SKUIReportAConcernTemplateViewElement_reasonElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIReportAConcernTemplateViewElement initWithDOMElement:parent:elementFactory:]";
}

@end