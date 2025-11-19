@interface TVStyleSheetRegistry
+ (id)_urlForStyleSheetName:(id)a3;
- (TVStyleSheetRegistry)init;
- (void)_commitTemplateTreeNode:(id)a3 withParentStyleSheetURLs:(id)a4;
- (void)_createDefaultRootNodes;
- (void)commitStyleSheets;
- (void)registerStyleSheetURLs:(id)a3 forTemplateName:(id)a4 basedOnTemplateName:(id)a5;
@end

@implementation TVStyleSheetRegistry

- (TVStyleSheetRegistry)init
{
  v14.receiver = self;
  v14.super_class = TVStyleSheetRegistry;
  v2 = [(TVStyleSheetRegistry *)&v14 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D75418] currentDevice];
    v4 = [v3 userInterfaceIdiom];

    v5 = [MEMORY[0x277CCAC38] processInfo];
    v6 = [v5 processName];
    v7 = [v6 isEqualToString:@"AppleTV"];

    if (v4 == 2 || v7 == 0)
    {
      [(TVStyleSheetRegistry *)v2 _createDefaultRootNodes];
    }

    else
    {
      v9 = [_TVTemplateTreeNode alloc];
      v10 = [(_TVTemplateTreeNode *)v9 initWithTemplateName:@"<baseTemplate>" styleSheetURLs:MEMORY[0x277CBEBF8] abstract:1];
      v11 = [MEMORY[0x277CBEB18] array];
      rootNodes = v2->_rootNodes;
      v2->_rootNodes = v11;

      [(NSMutableArray *)v2->_rootNodes addObject:v10];
    }

    [(TVStyleSheetRegistry *)v2 commitStyleSheets];
  }

  return v2;
}

- (void)commitStyleSheets
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(TVStyleSheetRegistry *)self rootNodes];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(TVStyleSheetRegistry *)self _commitTemplateTreeNode:*(*(&v8 + 1) + 8 * v7++) withParentStyleSheetURLs:0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)registerStyleSheetURLs:(id)a3 forTemplateName:(id)a4 basedOnTemplateName:(id)a5
{
  v13 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[_TVTemplateTreeNode alloc] initWithTemplateName:v8 styleSheetURLs:v9];

  if (v13)
  {
    v11 = [(NSMutableDictionary *)self->_nodesByTemplateName objectForKeyedSubscript:v13];
    [v11 addDerivedTemplateNode:v10];
    v12 = [v11 finalURLs];
    [(TVStyleSheetRegistry *)self _commitTemplateTreeNode:v10 withParentStyleSheetURLs:v12];
  }

  else
  {
    [(NSMutableArray *)self->_rootNodes addObject:v10];
    [(TVStyleSheetRegistry *)self _commitTemplateTreeNode:v10 withParentStyleSheetURLs:0];
  }
}

+ (id)_urlForStyleSheetName:(id)a3
{
  v3 = a3;
  v4 = +[TVMLUtilities TVMLKitBundle];
  v5 = [v4 URLForResource:v3 withExtension:@"xml"];

  return v5;
}

- (void)_createDefaultRootNodes
{
  v59[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  rootNodes = self->_rootNodes;
  self->_rootNodes = v3;

  v5 = [_TVTemplateTreeNode alloc];
  v6 = [objc_opt_class() _urlForStyleSheetName:@"BaseStyleSheet"];
  v59[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:1];
  v8 = [(_TVTemplateTreeNode *)v5 initWithTemplateName:@"<baseTemplate>" styleSheetURLs:v7 abstract:1];

  [(NSMutableArray *)self->_rootNodes addObject:v8];
  v9 = [_TVTemplateTreeNode alloc];
  v10 = [objc_opt_class() _urlForStyleSheetName:@"ListStyleSheet"];
  v58 = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
  v48 = [(_TVTemplateTreeNode *)v9 initWithTemplateName:@"listTemplate" styleSheetURLs:v11];

  [(_TVTemplateTreeNode *)v8 addDerivedTemplateNode:v48];
  v12 = [_TVTemplateTreeNode alloc];
  v13 = [objc_opt_class() _urlForStyleSheetName:@"StackStyleSheet"];
  v57 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
  v47 = [(_TVTemplateTreeNode *)v12 initWithTemplateName:@"stackTemplate" styleSheetURLs:v14];

  [(_TVTemplateTreeNode *)v8 addDerivedTemplateNode:v47];
  v15 = [_TVTemplateTreeNode alloc];
  v16 = [objc_opt_class() _urlForStyleSheetName:@"MenuBarStyleSheet"];
  v56 = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
  v46 = [(_TVTemplateTreeNode *)v15 initWithTemplateName:@"menuBarTemplate" styleSheetURLs:v17];

  [(_TVTemplateTreeNode *)v8 addDerivedTemplateNode:v46];
  v18 = [_TVTemplateTreeNode alloc];
  v19 = [objc_opt_class() _urlForStyleSheetName:@"SearchStyleSheet"];
  v55 = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
  v45 = [(_TVTemplateTreeNode *)v18 initWithTemplateName:@"searchTemplate" styleSheetURLs:v20];

  [(_TVTemplateTreeNode *)v8 addDerivedTemplateNode:v45];
  v21 = [_TVTemplateTreeNode alloc];
  v22 = [objc_opt_class() _urlForStyleSheetName:@"ProductStyleSheet"];
  v54 = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
  v44 = [(_TVTemplateTreeNode *)v21 initWithTemplateName:@"productTemplate" styleSheetURLs:v23];

  [(_TVTemplateTreeNode *)v8 addDerivedTemplateNode:v44];
  v24 = [_TVTemplateTreeNode alloc];
  v25 = [objc_opt_class() _urlForStyleSheetName:@"DescriptiveAlertStyleSheet"];
  v53 = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
  v43 = [(_TVTemplateTreeNode *)v24 initWithTemplateName:@"descriptiveAlertTemplate" styleSheetURLs:v26];

  [(_TVTemplateTreeNode *)v8 addDerivedTemplateNode:v43];
  v27 = [_TVTemplateTreeNode alloc];
  v28 = [objc_opt_class() _urlForStyleSheetName:@"AlertStyleSheet"];
  v52 = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
  v30 = [(_TVTemplateTreeNode *)v27 initWithTemplateName:@"alertTemplate" styleSheetURLs:v29];

  [(_TVTemplateTreeNode *)v8 addDerivedTemplateNode:v30];
  v31 = [_TVTemplateTreeNode alloc];
  v32 = [objc_opt_class() _urlForStyleSheetName:@"DialogStyleSheet"];
  v51 = v32;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
  v34 = [(_TVTemplateTreeNode *)v31 initWithTemplateName:@"dialogTemplate" styleSheetURLs:v33];

  [(_TVTemplateTreeNode *)v8 addDerivedTemplateNode:v34];
  v35 = [_TVTemplateTreeNode alloc];
  v36 = [objc_opt_class() _urlForStyleSheetName:@"LoadingStyleSheet"];
  v50 = v36;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
  v38 = [(_TVTemplateTreeNode *)v35 initWithTemplateName:@"loadingTemplate" styleSheetURLs:v37];

  [(NSMutableArray *)self->_rootNodes addObject:v38];
  v39 = [_TVTemplateTreeNode alloc];
  v40 = [objc_opt_class() _urlForStyleSheetName:@"ModalPageStyleSheet"];
  v49 = v40;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
  v42 = [(_TVTemplateTreeNode *)v39 initWithTemplateName:@"modalPageTemplate" styleSheetURLs:v41];

  [(_TVTemplateTreeNode *)v8 addDerivedTemplateNode:v42];
}

- (void)_commitTemplateTreeNode:(id)a3 withParentStyleSheetURLs:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  nodesByTemplateName = self->_nodesByTemplateName;
  if (!nodesByTemplateName)
  {
    v9 = [MEMORY[0x277CBEB38] dictionary];
    v10 = self->_nodesByTemplateName;
    self->_nodesByTemplateName = v9;

    nodesByTemplateName = self->_nodesByTemplateName;
  }

  v11 = [v6 templateName];
  [(NSMutableDictionary *)nodesByTemplateName setObject:v6 forKeyedSubscript:v11];

  v12 = +[TVInterfaceFactory sharedInterfaceFactory];
  v13 = [v6 templateName];
  v14 = [v12 _styleSheetURLForTemplate:v13];

  if (v7)
  {
    v15 = [v7 mutableCopy];
  }

  else
  {
    v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  }

  v16 = v15;
  v31 = v7;
  v17 = [v6 styleSheetURLs];
  [v16 addObjectsFromArray:v17];

  if (v14)
  {
    [v16 addObject:v14];
  }

  v18 = [v16 copy];
  [v6 setFinalURLs:v18];

  if (([v6 isAbstract] & 1) == 0)
  {
    v19 = [v16 count];
    v20 = v19 - 1;
    if (v19 < 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = [v16 objectAtIndexedSubscript:v20];
      [v16 removeObjectAtIndex:v20];
    }

    v22 = MEMORY[0x277D1B0F0];
    v23 = [v6 templateName];
    [v22 registerStyleSheetURL:v21 parentStyleSheets:v16 forTemplateName:v23];
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = [v6 derivedTemplateNodes];
  v25 = [v24 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v33;
    do
    {
      v28 = 0;
      do
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v32 + 1) + 8 * v28);
        v30 = [v6 finalURLs];
        [(TVStyleSheetRegistry *)self _commitTemplateTreeNode:v29 withParentStyleSheetURLs:v30];

        ++v28;
      }

      while (v26 != v28);
      v26 = [v24 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v26);
  }
}

@end