@interface _TVTemplateFactory
- (_TVTemplateFactory)init;
- (void)_registerStyleSheet:(id)a3 forTemplate:(id)a4 parentStyleSheets:(id)a5;
- (void)_registerTemplateControllers;
- (void)registerProductTemplateURL:(id)a3 forTemplateName:(id)a4 includeParentStyleSheets:(BOOL)a5;
@end

@implementation _TVTemplateFactory

- (_TVTemplateFactory)init
{
  v5.receiver = self;
  v5.super_class = _TVTemplateFactory;
  v2 = [(_TVTemplateFactory *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_TVTemplateFactory *)v2 _registerTemplateControllers];
    [(_TVTemplateFactory *)v3 _registerCustomAnimators];
  }

  return v3;
}

- (void)_registerTemplateControllers
{
  v2 = +[TVInterfaceFactory sharedInterfaceFactory];
  [v2 _registerViewControllerCreator:&__block_literal_global_10 withType:66];

  v3 = +[TVInterfaceFactory sharedInterfaceFactory];
  [v3 _registerViewControllerCreator:&__block_literal_global_14 withType:74];

  v4 = +[TVInterfaceFactory sharedInterfaceFactory];
  [v4 _registerViewControllerCreator:&__block_literal_global_17_0 withType:71];

  v5 = +[TVInterfaceFactory sharedInterfaceFactory];
  [v5 _registerViewControllerCreator:&__block_literal_global_20 withType:63];

  v6 = +[TVInterfaceFactory sharedInterfaceFactory];
  [v6 _registerViewControllerCreator:&__block_literal_global_23_0 withType:69];

  v7 = +[TVInterfaceFactory sharedInterfaceFactory];
  [v7 _registerViewControllerCreator:&__block_literal_global_26 withType:65];

  v8 = +[TVInterfaceFactory sharedInterfaceFactory];
  [v8 _registerViewControllerCreator:&__block_literal_global_29_0 withType:67];

  v9 = +[TVInterfaceFactory sharedInterfaceFactory];
  [v9 _registerViewControllerCreator:&__block_literal_global_32_0 withType:61];

  v10 = +[TVInterfaceFactory sharedInterfaceFactory];
  [v10 _registerViewControllerCreator:&__block_literal_global_35_0 withType:62];

  v11 = +[TVInterfaceFactory sharedInterfaceFactory];
  [v11 _registerViewControllerCreator:&__block_literal_global_37_1 withType:73];
}

- (void)registerProductTemplateURL:(id)a3 forTemplateName:(id)a4 includeParentStyleSheets:(BOOL)a5
{
  v5 = a5;
  v25[1] = *MEMORY[0x277D85DE8];
  v19 = a3;
  v7 = a4;
  v25[0] = @"BaseStyleSheet";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v9 = [MEMORY[0x277CBEB18] arrayWithArray:v8];
  v10 = v9;
  if (v5)
  {
    [v9 addObject:@"ProductStyleSheet"];
  }

  v11 = +[TVMLUtilities TVMLKitBundle];
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [v11 URLForResource:*(*(&v20 + 1) + 8 * v17) withExtension:@"xml"];
        if (v18)
        {
          [v12 addObject:v18];
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  [MEMORY[0x277D1B0F0] registerStyleSheetURL:v19 parentStyleSheets:v12 forTemplateName:v7];
}

- (void)_registerStyleSheet:(id)a3 forTemplate:(id)a4 parentStyleSheets:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[TVMLUtilities TVMLKitBundle];
  v11 = +[TVInterfaceFactory sharedInterfaceFactory];
  v22 = v8;
  v12 = [v11 _styleSheetURLForTemplate:v8];

  v23 = v7;
  v13 = [v10 URLForResource:v7 withExtension:@"xml"];
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = v9;
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      v19 = 0;
      do
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [v10 URLForResource:*(*(&v24 + 1) + 8 * v19) withExtension:@"xml"];
        if (v20)
        {
          [v14 addObject:v20];
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v17);
  }

  if (v12)
  {
    [v14 addObject:v13];
    v21 = v12;

    v13 = v21;
  }

  [MEMORY[0x277D1B0F0] registerStyleSheetURL:v13 parentStyleSheets:v14 forTemplateName:v22];
}

@end