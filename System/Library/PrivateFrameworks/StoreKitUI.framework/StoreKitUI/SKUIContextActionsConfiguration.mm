@interface SKUIContextActionsConfiguration
- (SKUIContextActionsConfiguration)initWithDialogTemplate:(id)template;
- (id)_resourceImageForImageElement:(id)element;
- (id)contextActions;
@end

@implementation SKUIContextActionsConfiguration

- (SKUIContextActionsConfiguration)initWithDialogTemplate:(id)template
{
  templateCopy = template;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIContextActionsConfiguration initWithDialogTemplate:];
  }

  v9.receiver = self;
  v9.super_class = SKUIContextActionsConfiguration;
  v6 = [(SKUIContextActionsConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dialogTemplate, template);
  }

  return v7;
}

- (id)contextActions
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  dialogTemplate = [(SKUIContextActionsConfiguration *)self dialogTemplate];
  buttons = [dialogTemplate buttons];

  v6 = [buttons countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(buttons);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        buttonText = [v10 buttonText];
        v12 = [buttonText attributedStringWithDefaultFont:0 foregroundColor:0 style:0];
        string = [v12 string];

        buttonImage = [v10 buttonImage];
        v15 = [(SKUIContextActionsConfiguration *)self _resourceImageForImageElement:buttonImage];

        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __49__SKUIContextActionsConfiguration_contextActions__block_invoke;
        v19[3] = &unk_2781FEF98;
        v19[4] = v10;
        v16 = [MEMORY[0x277D75618] actionWithTitle:string resource:v15 handler:v19];
        [v3 addObject:v16];
      }

      v7 = [buttons countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = [v3 copy];

  return v17;
}

uint64_t __49__SKUIContextActionsConfiguration_contextActions__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  *a3 = 1;
  return result;
}

- (id)_resourceImageForImageElement:(id)element
{
  elementCopy = element;
  resourceName = [elementCopy resourceName];
  v5 = resourceName;
  if (resourceName)
  {
    v6 = SKUIImageWithResourceName(resourceName);
    style = [elementCopy style];
    imageMaskColor = [style imageMaskColor];

    if (imageMaskColor)
    {
      color = [imageMaskColor color];

      if (color)
      {
        color2 = [imageMaskColor color];
        v11 = [v6 _flatImageWithColor:color2];

        v6 = v11;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)initWithDialogTemplate:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIContextActionsConfiguration initWithDialogTemplate:]";
}

@end