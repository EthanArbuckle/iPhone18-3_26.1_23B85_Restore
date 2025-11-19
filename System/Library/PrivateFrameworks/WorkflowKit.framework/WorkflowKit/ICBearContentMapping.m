@interface ICBearContentMapping
- (id)contentItemClasses;
- (void)getFileURLQueryString:(id)a3 withInput:(id)a4 parameters:(id)a5;
- (void)getStringRepresentation:(id)a3 withInput:(id)a4 parameters:(id)a5;
- (void)getTextRepresentation:(id)a3 withInput:(id)a4 parameters:(id)a5;
- (void)getTextURLQueryString:(id)a3 withInput:(id)a4 parameters:(id)a5;
@end

@implementation ICBearContentMapping

- (void)getFileURLQueryString:(id)a3 withInput:(id)a4 parameters:(id)a5
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__ICBearContentMapping_getFileURLQueryString_withInput_parameters___block_invoke;
  v8[3] = &unk_1E837E3C0;
  v9 = v6;
  v7 = v6;
  [a4 getFileRepresentation:v8 forType:0];
}

void __67__ICBearContentMapping_getFileURLQueryString_withInput_parameters___block_invoke(uint64_t a1, void *a2)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 data];
    v6 = [v5 base64EncodedStringWithOptions:0];

    v7 = MEMORY[0x1E695DFF8];
    v12[0] = @"file";
    v12[1] = @"filename";
    v13[0] = v6;
    v8 = [v4 filename];
    v13[1] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v10 = [v7 dc_queryStringWithQueryDictionary:v9];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)getTextRepresentation:(id)a3 withInput:(id)a4 parameters:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 items];
  v12 = [v11 objectsMatchingClass:objc_opt_class()];
  v13 = [v12 firstObject];

  if (v13)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __67__ICBearContentMapping_getTextRepresentation_withInput_parameters___block_invoke;
    v15[3] = &unk_1E837E3C0;
    v16 = v8;
    v14 = [MEMORY[0x1E69E0AF8] typeWithUTType:*MEMORY[0x1E6982E18]];
    [v13 getFileRepresentation:v15 forType:v14];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = ICBearContentMapping;
    [(WFInterchangeContentMapping *)&v17 getStringRepresentation:v8 withInput:v9 parameters:v10];
  }
}

void __67__ICBearContentMapping_getTextRepresentation_withInput_parameters___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = MEMORY[0x1E696AEC0];
  v7 = [v14 data];
  v8 = [v6 wf_stringWithData:v7];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E6996E60]);
    v10 = [v14 originalURL];
    v11 = [v9 initWithBaseURL:v10];

    v12 = *(a1 + 32);
    v13 = [v11 handleHTML:v8];
    (*(v12 + 16))(v12, v13, 0);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)getTextURLQueryString:(id)a3 withInput:(id)a4 parameters:(id)a5
{
  v8 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__ICBearContentMapping_getTextURLQueryString_withInput_parameters___block_invoke;
  v10[3] = &unk_1E837FBD8;
  v11 = v8;
  v9 = v8;
  [(ICBearContentMapping *)self getTextRepresentation:v10 withInput:a4 parameters:a5];
}

void __67__ICBearContentMapping_getTextURLQueryString_withInput_parameters___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = MEMORY[0x1E695DFF8];
    v10 = @"text";
    v11[0] = a2;
    v5 = MEMORY[0x1E695DF20];
    v6 = a2;
    v7 = [v5 dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8 = [v4 dc_queryStringWithQueryDictionary:v7];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), 0, a3);
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)getStringRepresentation:(id)a3 withInput:(id)a4 parameters:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 objectForKey:@"BearAttachmentType"];
  v12 = v11;
  if (v11)
  {
    if ([v11 isEqualToString:@"File"])
    {
      [(ICBearContentMapping *)self getFileURLQueryString:v8 withInput:v9 parameters:v10];
    }

    else
    {
      [(ICBearContentMapping *)self getTextURLQueryString:v8 withInput:v9 parameters:v10];
    }
  }

  else
  {
    v23 = 0;
    v13 = [v9 collectionByFilteringItemsWithBlock:&__block_literal_global_49898 excludedItems:&v23];
    v14 = v23;
    if (![v14 numberOfItems])
    {
      v15 = [v13 collectionByFilteringToItemClass:objc_opt_class() excludedItems:0];
      if ([v15 numberOfItems])
      {
        v16 = [v15 items];
        v17 = [v16 firstObject];

        [v14 addItem:v17];
        [v13 removeItem:v17];
      }
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __69__ICBearContentMapping_getStringRepresentation_withInput_parameters___block_invoke_2;
    v19[3] = &unk_1E837B4B8;
    v22 = v8;
    v19[4] = self;
    v20 = v13;
    v21 = v10;
    v18 = v13;
    [(ICBearContentMapping *)self getTextURLQueryString:v19 withInput:v14 parameters:v21];
  }
}

void __69__ICBearContentMapping_getStringRepresentation_withInput_parameters___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v5, 0}];
    v7 = *(a1 + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __69__ICBearContentMapping_getStringRepresentation_withInput_parameters___block_invoke_3;
    v12[3] = &unk_1E837B490;
    v8 = *(a1 + 56);
    v13 = v6;
    v14 = v8;
    v10 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = v6;
    [v7 getFileURLQueryString:v12 withInput:v10 parameters:v9];
  }
}

void __69__ICBearContentMapping_getStringRepresentation_withInput_parameters___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (v8)
    {
      [*(a1 + 32) addObject:v8];
    }

    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) componentsJoinedByString:@"&"];
    (*(v6 + 16))(v6, v7, 0);
  }
}

uint64_t __69__ICBearContentMapping_getStringRepresentation_withInput_parameters___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v3 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (id)contentItemClasses
{
  v2 = MEMORY[0x1E695DFB8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  return [v2 orderedSetWithObjects:{v3, v4, objc_opt_class(), 0}];
}

@end