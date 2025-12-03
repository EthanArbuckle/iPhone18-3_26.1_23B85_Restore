@interface TVStyleSheetRegistry
+ (id)_urlForStyleSheetName:(id)name;
- (TVStyleSheetRegistry)init;
- (void)_commitTemplateTreeNode:(id)node withParentStyleSheetURLs:(id)ls;
- (void)_createDefaultRootNodes;
- (void)commitStyleSheets;
- (void)registerStyleSheetURLs:(id)ls forTemplateName:(id)name basedOnTemplateName:(id)templateName;
@end

@implementation TVStyleSheetRegistry

- (TVStyleSheetRegistry)init
{
  v14.receiver = self;
  v14.super_class = TVStyleSheetRegistry;
  v2 = [(TVStyleSheetRegistry *)&v14 init];
  if (v2)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
    v7 = [processName isEqualToString:@"AppleTV"];

    if (userInterfaceIdiom == 2 || v7 == 0)
    {
      [(TVStyleSheetRegistry *)v2 _createDefaultRootNodes];
    }

    else
    {
      v9 = [_TVTemplateTreeNode alloc];
      v10 = [(_TVTemplateTreeNode *)v9 initWithTemplateName:@"<baseTemplate>" styleSheetURLs:MEMORY[0x277CBEBF8] abstract:1];
      array = [MEMORY[0x277CBEB18] array];
      rootNodes = v2->_rootNodes;
      v2->_rootNodes = array;

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
  rootNodes = [(TVStyleSheetRegistry *)self rootNodes];
  v4 = [rootNodes countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(rootNodes);
        }

        [(TVStyleSheetRegistry *)self _commitTemplateTreeNode:*(*(&v8 + 1) + 8 * v7++) withParentStyleSheetURLs:0];
      }

      while (v5 != v7);
      v5 = [rootNodes countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)registerStyleSheetURLs:(id)ls forTemplateName:(id)name basedOnTemplateName:(id)templateName
{
  templateNameCopy = templateName;
  nameCopy = name;
  lsCopy = ls;
  v10 = [[_TVTemplateTreeNode alloc] initWithTemplateName:nameCopy styleSheetURLs:lsCopy];

  if (templateNameCopy)
  {
    v11 = [(NSMutableDictionary *)self->_nodesByTemplateName objectForKeyedSubscript:templateNameCopy];
    [v11 addDerivedTemplateNode:v10];
    finalURLs = [v11 finalURLs];
    [(TVStyleSheetRegistry *)self _commitTemplateTreeNode:v10 withParentStyleSheetURLs:finalURLs];
  }

  else
  {
    [(NSMutableArray *)self->_rootNodes addObject:v10];
    [(TVStyleSheetRegistry *)self _commitTemplateTreeNode:v10 withParentStyleSheetURLs:0];
  }
}

+ (id)_urlForStyleSheetName:(id)name
{
  nameCopy = name;
  v4 = +[TVMLUtilities TVMLKitBundle];
  v5 = [v4 URLForResource:nameCopy withExtension:@"xml"];

  return v5;
}

- (void)_createDefaultRootNodes
{
  v59[1] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  rootNodes = self->_rootNodes;
  self->_rootNodes = array;

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

- (void)_commitTemplateTreeNode:(id)node withParentStyleSheetURLs:(id)ls
{
  v37 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  lsCopy = ls;
  nodesByTemplateName = self->_nodesByTemplateName;
  if (!nodesByTemplateName)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v10 = self->_nodesByTemplateName;
    self->_nodesByTemplateName = dictionary;

    nodesByTemplateName = self->_nodesByTemplateName;
  }

  templateName = [nodeCopy templateName];
  [(NSMutableDictionary *)nodesByTemplateName setObject:nodeCopy forKeyedSubscript:templateName];

  v12 = +[TVInterfaceFactory sharedInterfaceFactory];
  templateName2 = [nodeCopy templateName];
  v14 = [v12 _styleSheetURLForTemplate:templateName2];

  if (lsCopy)
  {
    v15 = [lsCopy mutableCopy];
  }

  else
  {
    v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  }

  v16 = v15;
  v31 = lsCopy;
  styleSheetURLs = [nodeCopy styleSheetURLs];
  [v16 addObjectsFromArray:styleSheetURLs];

  if (v14)
  {
    [v16 addObject:v14];
  }

  v18 = [v16 copy];
  [nodeCopy setFinalURLs:v18];

  if (([nodeCopy isAbstract] & 1) == 0)
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
    templateName3 = [nodeCopy templateName];
    [v22 registerStyleSheetURL:v21 parentStyleSheets:v16 forTemplateName:templateName3];
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  derivedTemplateNodes = [nodeCopy derivedTemplateNodes];
  v25 = [derivedTemplateNodes countByEnumeratingWithState:&v32 objects:v36 count:16];
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
          objc_enumerationMutation(derivedTemplateNodes);
        }

        v29 = *(*(&v32 + 1) + 8 * v28);
        finalURLs = [nodeCopy finalURLs];
        [(TVStyleSheetRegistry *)self _commitTemplateTreeNode:v29 withParentStyleSheetURLs:finalURLs];

        ++v28;
      }

      while (v26 != v28);
      v26 = [derivedTemplateNodes countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v26);
  }
}

@end