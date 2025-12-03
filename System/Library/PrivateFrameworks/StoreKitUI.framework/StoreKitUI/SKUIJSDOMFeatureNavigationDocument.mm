@interface SKUIJSDOMFeatureNavigationDocument
+ (id)makeFeatureJSObjectForFeature:(id)feature;
+ (id)possibleFeatureNames;
+ (void)possibleFeatureNames;
- (IKAppContext)appContext;
- (SKUIJSDOMFeatureNavigationDocument)initWithDOMNode:(id)node featureName:(id)name;
- (id)documents;
- (void)clear;
- (void)insertDocument:(id)document beforeDocument:(id)beforeDocument options:(id)options;
- (void)popDocument;
- (void)popToDocument:(id)document;
- (void)popToRootDocument;
- (void)pushDocument:(id)document options:(id)options;
- (void)removeDocument:(id)document;
- (void)replaceDocument:(id)document withDocument:(id)withDocument options:(id)options;
- (void)setNavigationDocumentController:(id)controller;
@end

@implementation SKUIJSDOMFeatureNavigationDocument

- (SKUIJSDOMFeatureNavigationDocument)initWithDOMNode:(id)node featureName:(id)name
{
  nodeCopy = node;
  nameCopy = name;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIJSDOMFeatureNavigationDocument initWithDOMNode:featureName:];
  }

  v15.receiver = self;
  v15.super_class = SKUIJSDOMFeatureNavigationDocument;
  v8 = [(SKUIJSDOMFeatureNavigationDocument *)&v15 init];
  if (v8)
  {
    appContext = [nodeCopy appContext];
    objc_storeWeak(&v8->_appContext, appContext);

    v10 = [nameCopy copy];
    featureName = v8->_featureName;
    v8->_featureName = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    stackItems = v8->_stackItems;
    v8->_stackItems = v12;
  }

  return v8;
}

- (void)setNavigationDocumentController:(id)controller
{
  controllerCopy = controller;
  if (self->_navigationDocumentController != controllerCopy)
  {
    objc_storeStrong(&self->_navigationDocumentController, controller);
    if ([(NSMutableArray *)self->_stackItems count])
    {
      [(SKUINavigationDocumentController *)self->_navigationDocumentController setStackItems:self->_stackItems animated:0];
      [(NSMutableArray *)self->_stackItems removeAllObjects];
    }
  }
}

+ (id)makeFeatureJSObjectForFeature:(id)feature
{
  featureCopy = feature;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUIJSDOMFeatureNavigationDocument makeFeatureJSObjectForFeature:];
  }

  v4 = MEMORY[0x277D1B0B8];
  v5 = featureCopy;
  v6 = [v4 alloc];
  appContext = [v5 appContext];
  v8 = [v6 initWithAppContext:appContext navigationController:v5];

  return v8;
}

+ (id)possibleFeatureNames
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[SKUIJSDOMFeatureNavigationDocument possibleFeatureNames];
  }

  v2 = [MEMORY[0x277CBEB98] setWithObjects:{@"leftNavigationDocument", @"rightNavigationDocument", 0}];

  return v2;
}

- (void)clear
{
  navigationDocumentController = self->_navigationDocumentController;
  if (navigationDocumentController)
  {
    [(SKUINavigationDocumentController *)navigationDocumentController clear];
  }

  else
  {
    [(NSMutableArray *)self->_stackItems removeAllObjects];
  }
}

- (id)documents
{
  v17 = *MEMORY[0x277D85DE8];
  navigationDocumentController = self->_navigationDocumentController;
  if (navigationDocumentController)
  {
    documents = [(SKUINavigationDocumentController *)navigationDocumentController documents];
  }

  else
  {
    documents = [MEMORY[0x277CBEB18] array];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_stackItems;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          document = [*(*(&v12 + 1) + 8 * i) document];
          [documents addObject:document];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  return documents;
}

- (void)insertDocument:(id)document beforeDocument:(id)beforeDocument options:(id)options
{
  beforeDocumentCopy = beforeDocument;
  v9 = beforeDocumentCopy;
  navigationDocumentController = self->_navigationDocumentController;
  if (navigationDocumentController)
  {
    optionsCopy = options;
    documentCopy = document;
    [(SKUINavigationDocumentController *)navigationDocumentController insertDocument:documentCopy beforeDocument:v9 options:optionsCopy];
  }

  else
  {
    stackItems = self->_stackItems;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __76__SKUIJSDOMFeatureNavigationDocument_insertDocument_beforeDocument_options___block_invoke;
    v19[3] = &unk_2781FD120;
    v20 = beforeDocumentCopy;
    optionsCopy2 = options;
    documentCopy2 = document;
    v16 = [(NSMutableArray *)stackItems indexOfObjectPassingTest:v19];
    v17 = [[SKUIDocumentStackItem alloc] initWithDocument:documentCopy2 presentationOptions:optionsCopy2];

    v18 = self->_stackItems;
    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)v18 addObject:v17];
    }

    else
    {
      [(NSMutableArray *)v18 insertObject:v17 atIndex:v16];
    }

    documentCopy = v20;
  }
}

BOOL __76__SKUIJSDOMFeatureNavigationDocument_insertDocument_beforeDocument_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 document];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)pushDocument:(id)document options:(id)options
{
  navigationDocumentController = self->_navigationDocumentController;
  if (navigationDocumentController)
  {
    optionsCopy = options;
    documentCopy = document;
    [SKUINavigationDocumentController pushDocument:"pushDocument:options:" options:?];
  }

  else
  {
    optionsCopy2 = options;
    documentCopy2 = document;
    documentCopy = [[SKUIDocumentStackItem alloc] initWithDocument:documentCopy2 presentationOptions:optionsCopy2];

    [(NSMutableArray *)self->_stackItems addObject:documentCopy];
  }
}

- (void)popDocument
{
  navigationDocumentController = self->_navigationDocumentController;
  if (navigationDocumentController)
  {
    [(SKUINavigationDocumentController *)navigationDocumentController popDocument];
  }

  else
  {
    [(NSMutableArray *)self->_stackItems removeLastObject];
  }
}

- (void)popToDocument:(id)document
{
  documentCopy = document;
  navigationDocumentController = self->_navigationDocumentController;
  if (navigationDocumentController)
  {
    [(SKUINavigationDocumentController *)navigationDocumentController popToDocument:documentCopy];
  }

  else
  {
    stackItems = self->_stackItems;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__SKUIJSDOMFeatureNavigationDocument_popToDocument___block_invoke;
    v8[3] = &unk_2781FD120;
    v9 = documentCopy;
    v7 = [(NSMutableArray *)stackItems indexOfObjectPassingTest:v8];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_stackItems removeObjectsInRange:v7, [(NSMutableArray *)self->_stackItems count]- v7];
    }
  }
}

BOOL __52__SKUIJSDOMFeatureNavigationDocument_popToDocument___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 document];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)popToRootDocument
{
  navigationDocumentController = self->_navigationDocumentController;
  if (navigationDocumentController)
  {

    [(SKUINavigationDocumentController *)navigationDocumentController popToRootDocument];
  }

  else
  {
    v4 = [(NSMutableArray *)self->_stackItems count];
    if (v4 >= 2)
    {
      v5 = v4 - 1;
      stackItems = self->_stackItems;

      [(NSMutableArray *)stackItems removeObjectsInRange:1, v5];
    }
  }
}

- (void)replaceDocument:(id)document withDocument:(id)withDocument options:(id)options
{
  documentCopy = document;
  v9 = documentCopy;
  navigationDocumentController = self->_navigationDocumentController;
  if (navigationDocumentController)
  {
    optionsCopy = options;
    withDocumentCopy = withDocument;
    [(SKUINavigationDocumentController *)navigationDocumentController replaceDocument:v9 withDocument:withDocumentCopy options:optionsCopy];
  }

  else
  {
    stackItems = self->_stackItems;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __75__SKUIJSDOMFeatureNavigationDocument_replaceDocument_withDocument_options___block_invoke;
    v19[3] = &unk_2781FD120;
    v20 = documentCopy;
    optionsCopy2 = options;
    withDocumentCopy2 = withDocument;
    v16 = [(NSMutableArray *)stackItems indexOfObjectPassingTest:v19];
    v17 = [[SKUIDocumentStackItem alloc] initWithDocument:withDocumentCopy2 presentationOptions:optionsCopy2];

    v18 = self->_stackItems;
    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)v18 addObject:v17];
    }

    else
    {
      [(NSMutableArray *)v18 replaceObjectAtIndex:v16 withObject:v17];
    }

    withDocumentCopy = v20;
  }
}

BOOL __75__SKUIJSDOMFeatureNavigationDocument_replaceDocument_withDocument_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 document];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)removeDocument:(id)document
{
  documentCopy = document;
  navigationDocumentController = self->_navigationDocumentController;
  if (navigationDocumentController)
  {
    [(SKUINavigationDocumentController *)navigationDocumentController removeDocument:documentCopy];
  }

  else
  {
    stackItems = self->_stackItems;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53__SKUIJSDOMFeatureNavigationDocument_removeDocument___block_invoke;
    v8[3] = &unk_2781FD120;
    v9 = documentCopy;
    v7 = [(NSMutableArray *)stackItems indexOfObjectPassingTest:v8];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_stackItems removeObjectAtIndex:v7];
    }
  }
}

BOOL __53__SKUIJSDOMFeatureNavigationDocument_removeDocument___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 document];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (IKAppContext)appContext
{
  WeakRetained = objc_loadWeakRetained(&self->_appContext);

  return WeakRetained;
}

- (void)initWithDOMNode:featureName:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIJSDOMFeatureNavigationDocument initWithDOMNode:featureName:]";
}

+ (void)makeFeatureJSObjectForFeature:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIJSDOMFeatureNavigationDocument makeFeatureJSObjectForFeature:]";
}

+ (void)possibleFeatureNames
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIJSDOMFeatureNavigationDocument possibleFeatureNames]";
}

@end