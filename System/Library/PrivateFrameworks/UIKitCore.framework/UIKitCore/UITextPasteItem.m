@interface UITextPasteItem
- (UITextPasteItem)initWithTextPasteCoordinator:(id)a3;
- (id)attributedStringFromAttributedString:(id)a3 preservingAttributes:(id)a4 addingAttributes:(id)a5;
- (id)attributesWithContentAwareWritingDirectionForString:(id)a3 defaultAttributes:(id)a4;
- (void)setAttachmentResult:(id)a3;
- (void)setDefaultResult;
- (void)setStringResult:(id)a3;
@end

@implementation UITextPasteItem

- (UITextPasteItem)initWithTextPasteCoordinator:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UITextPasteItem;
  v6 = [(UITextPasteItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coordinator, a3);
  }

  return v7;
}

- (void)setStringResult:(id)a3
{
  v8 = a3;
  v4 = [(UITextPasteItem *)self defaultAttributes];
  if (_os_feature_enabled_impl())
  {
    v5 = [(UITextPasteItem *)self attributesWithContentAwareWritingDirectionForString:v8 defaultAttributes:v4];

    v4 = v5;
  }

  coordinator = self->_coordinator;
  v7 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v8 attributes:v4];
  [(UITextPasteCoordinator *)coordinator setResult:v7 forItem:self];
}

- (id)attributesWithContentAwareWritingDirectionForString:(id)a3 defaultAttributes:(id)a4
{
  v4 = a4;
  v5 = [v4 mutableCopy];
  v6 = *off_1E70EC988;
  v7 = [v4 objectForKeyedSubscript:*off_1E70EC988];
  if (v7)
  {
    v8 = [v4 objectForKeyedSubscript:v6];
    v9 = [v8 mutableCopy];
  }

  else
  {
    v9 = objc_opt_new();
  }

  [v9 setBaseWritingDirection:-1];
  [v5 setObject:v9 forKeyedSubscript:v6];
  v10 = [v5 copy];

  return v10;
}

- (void)setAttachmentResult:(id)a3
{
  coordinator = self->_coordinator;
  v5 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:a3];
  [(UITextPasteCoordinator *)coordinator setResult:v5 forItem:self];
}

- (void)setDefaultResult
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __35__UITextPasteItem_setDefaultResult__block_invoke;
  aBlock[3] = &unk_1E7125C38;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = [(UITextPasteItem *)self localObject];
  if (!v4 || ((*(v3 + 2))(v3, self, v4) & 1) == 0)
  {
    v5 = [(UITextPasteItem *)self supportedPasteConfigurationClasses];
    if (v5 && (-[UITextPasteItem itemProvider](self, "itemProvider"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 _highestFidelityClassForLoading:v5], v6, v7))
    {
      v8 = [(UITextPasteItem *)self itemProvider];
      v9 = [(UITextPasteItem *)self documentOptions];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __35__UITextPasteItem_setDefaultResult__block_invoke_2;
      v11[3] = &unk_1E7125C60;
      v11[4] = self;
      v12 = v3;
      v10 = [v8 _loadObjectOfClass:v7 userInfo:v9 completionHandler:v11];
    }

    else
    {
      [(UITextPasteItem *)self setNoResult];
    }
  }
}

uint64_t __35__UITextPasteItem_setDefaultResult__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 absoluteString];
    [v5 setStringResult:v7];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 setStringResult:v6];
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v5 forcesDefaultAttributes])
      {
        v14[0] = *MEMORY[0x1E6965628];
        v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
        v9 = *(a1 + 32);
        v10 = [v5 defaultAttributes];
        v11 = [v9 attributedStringFromAttributedString:v6 preservingAttributes:v8 addingAttributes:v10];

        v6 = v11;
      }

      [v5 setAttributedStringResult:v6];
      goto LABEL_10;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = 0;
      goto LABEL_11;
    }

    v7 = objc_opt_new();
    [v7 setImage:v6];
    [v5 setAttachmentResult:v7];
  }

LABEL_10:
  v12 = 1;
LABEL_11:

  return v12;
}

void __35__UITextPasteItem_setDefaultResult__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (!v6 || ((*(*(a1 + 40) + 16))() & 1) == 0)
  {
    [*(a1 + 32) setNoResult];
  }
}

- (id)attributedStringFromAttributedString:(id)a3 preservingAttributes:(id)a4 addingAttributes:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v20 = a5;
  v9 = objc_alloc(MEMORY[0x1E696AD40]);
  v10 = [v7 string];
  v11 = [v9 initWithString:v10];

  v12 = [v11 length];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v8;
  v13 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __94__UITextPasteItem_attributedStringFromAttributedString_preservingAttributes_addingAttributes___block_invoke;
        v22[3] = &unk_1E7125C88;
        v23 = v11;
        v24 = v17;
        [v7 enumerateAttribute:v17 inRange:0 options:v12 usingBlock:{0, v22}];
      }

      v14 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }

  [v11 addAttributes:v20 range:{0, v12}];
  v18 = [v11 copy];

  return v18;
}

uint64_t __94__UITextPasteItem_attributedStringFromAttributedString_preservingAttributes_addingAttributes___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    return [*(result + 32) addAttribute:*(result + 40) value:a2 range:{a3, a4}];
  }

  return result;
}

@end