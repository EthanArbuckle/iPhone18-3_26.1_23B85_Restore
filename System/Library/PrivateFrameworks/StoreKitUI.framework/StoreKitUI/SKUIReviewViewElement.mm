@interface SKUIReviewViewElement
- (SKUIDialogTemplateViewElement)dialogTemplate;
- (SKUIResponseViewElement)response;
- (void)dialogTemplate;
- (void)response;
@end

@implementation SKUIReviewViewElement

- (SKUIResponseViewElement)response
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIReviewViewElement response];
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__26;
  v10 = __Block_byref_object_dispose__26;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__SKUIReviewViewElement_response__block_invoke;
  v5[3] = &unk_2781F8568;
  v5[4] = &v6;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __33__SKUIReviewViewElement_response__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 elementType] == 102)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (SKUIDialogTemplateViewElement)dialogTemplate
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIReviewViewElement dialogTemplate];
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__26;
  v10 = __Block_byref_object_dispose__26;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__SKUIReviewViewElement_dialogTemplate__block_invoke;
  v5[3] = &unk_2781F8568;
  v5[4] = &v6;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __39__SKUIReviewViewElement_dialogTemplate__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 elementType] == 31)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (void)response
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIReviewViewElement response]";
}

- (void)dialogTemplate
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIReviewViewElement dialogTemplate]";
}

@end