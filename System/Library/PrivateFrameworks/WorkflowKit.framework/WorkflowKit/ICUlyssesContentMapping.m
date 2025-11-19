@interface ICUlyssesContentMapping
- (id)contentItemClasses;
- (void)getImageURLQueryString:(id)a3 withInput:(id)a4 parameters:(id)a5;
- (void)getStringRepresentation:(id)a3 withInput:(id)a4 parameters:(id)a5;
- (void)getTextRepresentation:(id)a3 withInput:(id)a4 parameters:(id)a5;
- (void)getTextURLQueryString:(id)a3 withInput:(id)a4 parameters:(id)a5;
@end

@implementation ICUlyssesContentMapping

- (void)getImageURLQueryString:(id)a3 withInput:(id)a4 parameters:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__ICUlyssesContentMapping_getImageURLQueryString_withInput_parameters___block_invoke;
  v10[3] = &unk_1E837DBF8;
  v11 = v6;
  v9 = v6;
  [v7 generateCollectionByCoercingToItemClass:v8 completionHandler:v10];
}

void __71__ICUlyssesContentMapping_getImageURLQueryString_withInput_parameters___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if ([v6 numberOfItems])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __71__ICUlyssesContentMapping_getImageURLQueryString_withInput_parameters___block_invoke_2;
    v8[3] = &unk_1E837E3C0;
    v9 = *(a1 + 32);
    [v6 getFileRepresentation:v8 forType:0];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __71__ICUlyssesContentMapping_getImageURLQueryString_withInput_parameters___block_invoke_2(uint64_t a1, void *a2)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 data];
    v6 = [v5 base64EncodedStringWithOptions:0];

    v7 = MEMORY[0x1E695DFF8];
    v12[0] = @"image";
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
  v11 = [v10 objectForKey:@"UlyssesTextFormat"];
  v12 = [v11 isEqualToString:@"Markdown"];
  v13 = [v11 isEqualToString:@"HTML"];
  v14 = [v9 items];
  v15 = [v14 objectsMatchingClass:objc_opt_class()];
  v16 = [v15 firstObject];

  if (v16 && ((v12 | v13) & 1) != 0)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __70__ICUlyssesContentMapping_getTextRepresentation_withInput_parameters___block_invoke;
    v18[3] = &unk_1E837BB60;
    v19 = v8;
    v20 = v12;
    v17 = [MEMORY[0x1E69E0AF8] typeWithUTType:{*MEMORY[0x1E6982E18], v18[0], 3221225472, __70__ICUlyssesContentMapping_getTextRepresentation_withInput_parameters___block_invoke, &unk_1E837BB60}];
    [v16 getFileRepresentation:v18 forType:v17];
  }

  else
  {
    v21.receiver = self;
    v21.super_class = ICUlyssesContentMapping;
    [(WFInterchangeContentMapping *)&v21 getStringRepresentation:v8 withInput:v9 parameters:v10];
  }
}

void __70__ICUlyssesContentMapping_getTextRepresentation_withInput_parameters___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = MEMORY[0x1E696AEC0];
  v7 = [v15 data];
  v8 = [v6 wf_stringWithData:v7];

  if (v8)
  {
    if (*(a1 + 40) == 1)
    {
      v9 = objc_alloc(MEMORY[0x1E6996E60]);
      v10 = [v15 originalURL];
      v11 = [v9 initWithBaseURL:v10];

      v12 = *(a1 + 32);
      v13 = [v11 handleHTML:v8];
      (*(v12 + 16))(v12, v13, 0);

      goto LABEL_7;
    }

    v14 = *(*(a1 + 32) + 16);
  }

  else
  {
    v14 = *(*(a1 + 32) + 16);
  }

  v14();
LABEL_7:
}

- (void)getTextURLQueryString:(id)a3 withInput:(id)a4 parameters:(id)a5
{
  v8 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__ICUlyssesContentMapping_getTextURLQueryString_withInput_parameters___block_invoke;
  v10[3] = &unk_1E837FBD8;
  v11 = v8;
  v9 = v8;
  [(ICUlyssesContentMapping *)self getTextRepresentation:v10 withInput:a4 parameters:a5];
}

void __70__ICUlyssesContentMapping_getTextURLQueryString_withInput_parameters___block_invoke(uint64_t a1, void *a2, uint64_t a3)
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
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 objectForKey:@"UlyssesAttachmentType"];
  if ([v10 isEqualToString:@"Keywords"])
  {
    v11[2](v11, &stru_1F4A1C408, 0);
  }

  else if ([v10 isEqualToString:@"Image"])
  {
    [(ICUlyssesContentMapping *)self getImageURLQueryString:v11 withInput:v8 parameters:v9];
  }

  else
  {
    [(ICUlyssesContentMapping *)self getTextURLQueryString:v11 withInput:v8 parameters:v9];
  }
}

- (id)contentItemClasses
{
  v2 = MEMORY[0x1E695DFB8];
  v3 = objc_opt_class();
  return [v2 orderedSetWithObjects:{v3, objc_opt_class(), 0}];
}

@end