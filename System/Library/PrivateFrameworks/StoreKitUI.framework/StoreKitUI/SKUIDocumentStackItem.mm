@interface SKUIDocumentStackItem
- (BOOL)isAnimated;
- (NSString)overlayType;
- (NSString)presentationType;
- (NSString)sheetType;
- (NSString)sourceElementIdentifier;
- (SKUIDocumentStackItem)initWithDocument:(id)document presentationOptions:(id)options;
- (void)_setDocument:(id)document;
@end

@implementation SKUIDocumentStackItem

- (SKUIDocumentStackItem)initWithDocument:(id)document presentationOptions:(id)options
{
  documentCopy = document;
  optionsCopy = options;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIDocumentStackItem initWithDocument:presentationOptions:];
  }

  v12.receiver = self;
  v12.super_class = SKUIDocumentStackItem;
  v9 = [(SKUIDocumentStackItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_document, document);
    objc_storeStrong(&v10->_presentationOptions, options);
    v10->_usesNavigationControllerForModalPresentation = 1;
  }

  return v10;
}

- (void)_setDocument:(id)document
{
  documentCopy = document;
  document = self->_document;
  p_document = &self->_document;
  if (document != documentCopy)
  {
    v8 = documentCopy;
    objc_storeStrong(p_document, document);
    documentCopy = v8;
  }
}

- (BOOL)isAnimated
{
  v2 = [(NSDictionary *)self->_presentationOptions objectForKey:@"animated"];
  if (v2)
  {
    if (objc_opt_respondsToSelector())
    {
      bOOLValue = [v2 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (NSString)presentationType
{
  v2 = [(NSDictionary *)self->_presentationOptions objectForKey:@"type"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = @"sheet";
  }

  v4 = v3;

  return &v3->isa;
}

- (NSString)sheetType
{
  v2 = [(NSDictionary *)self->_presentationOptions objectForKey:@"sheetType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = @"formSheet";
  }

  v4 = v3;

  return &v3->isa;
}

- (NSString)overlayType
{
  v2 = [(NSDictionary *)self->_presentationOptions objectForKey:@"overlayType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = @"default";
  }

  v4 = v3;

  return &v3->isa;
}

- (NSString)sourceElementIdentifier
{
  v2 = [(NSDictionary *)self->_presentationOptions objectForKey:@"sourceElement"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)initWithDocument:presentationOptions:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIDocumentStackItem initWithDocument:presentationOptions:]";
}

@end