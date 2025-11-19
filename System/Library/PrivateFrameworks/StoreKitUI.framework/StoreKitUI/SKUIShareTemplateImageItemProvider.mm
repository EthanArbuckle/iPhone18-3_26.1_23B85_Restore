@interface SKUIShareTemplateImageItemProvider
- (SKUIShareTemplateImageItemProvider)initWithTemplateElement:(id)a3;
- (id)item;
@end

@implementation SKUIShareTemplateImageItemProvider

- (SKUIShareTemplateImageItemProvider)initWithTemplateElement:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIShareTemplateImageItemProvider initWithTemplateElement:];
  }

  v6 = objc_alloc_init(MEMORY[0x277D755B8]);
  v10.receiver = self;
  v10.super_class = SKUIShareTemplateImageItemProvider;
  v7 = [(UIActivityItemProvider *)&v10 initWithPlaceholderItem:v6];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_templateElement, a3);
  }

  return v8;
}

- (id)item
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__20;
  v16 = __Block_byref_object_dispose__20;
  v17 = 0;
  v3 = [(UIActivityItemProvider *)self activityType];
  if ([MEMORY[0x277D546D0] activityTypeShouldProvideImage:v3])
  {
    v4 = [(SKUIShareTemplateViewElement *)self->_templateElement activityForUIActivityType:v3];
    v5 = [v4 image];
    v6 = [v5 URL];
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURL:v6];
      [v7 setITunesStoreRequest:0];
      v8 = [[SKUIStyledImageDataConsumer alloc] initWithViewElement:v5];
      [(SKUIStyledImageDataConsumer *)v8 setImageSize:100.0, 100.0];
      [v7 setDataConsumer:v8];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __42__SKUIShareTemplateImageItemProvider_item__block_invoke;
      v11[3] = &unk_2781FAA40;
      v11[4] = &v12;
      [v7 setOutputBlock:v11];
      [v7 main];
    }
  }

  v9 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v9;
}

- (void)initWithTemplateElement:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIShareTemplateImageItemProvider initWithTemplateElement:]";
}

@end