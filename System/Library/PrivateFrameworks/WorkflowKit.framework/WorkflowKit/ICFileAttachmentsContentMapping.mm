@interface ICFileAttachmentsContentMapping
- (BOOL)supportsMultipleItems;
- (void)getStringRepresentation:(id)representation withInput:(id)input parameters:(id)parameters;
@end

@implementation ICFileAttachmentsContentMapping

- (void)getStringRepresentation:(id)representation withInput:(id)input parameters:(id)parameters
{
  representationCopy = representation;
  parametersCopy = parameters;
  sourceKey = [(WFInterchangeContentMapping *)self sourceKey];
  v10 = [parametersCopy objectForKey:sourceKey];

  if ([v10 numberOfItems])
  {
    definition = [(WFInterchangeContentMapping *)self definition];
    v12 = [definition objectForKey:@"AttachmentNameKey"];

    definition2 = [(WFInterchangeContentMapping *)self definition];
    v14 = [definition2 objectForKey:@"AttachmentDataKey"];

    uRLQueryAllowedCharacterSet = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
    v16 = [uRLQueryAllowedCharacterSet mutableCopy];

    [v16 removeCharactersInString:@"?=&"];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __80__ICFileAttachmentsContentMapping_getStringRepresentation_withInput_parameters___block_invoke;
    v20[3] = &unk_1E837E818;
    v21 = v12;
    v22 = v16;
    v23 = v14;
    v24 = representationCopy;
    v17 = v14;
    v18 = v16;
    v19 = v12;
    [v10 getFileRepresentations:v20 forType:0];
  }

  else
  {
    (*(representationCopy + 2))(representationCopy, &stru_1F4A1C408, 0);
  }
}

void __80__ICFileAttachmentsContentMapping_getStringRepresentation_withInput_parameters___block_invoke(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v20 = v6;
    v7 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v21 = v5;
    obj = v5;
    v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        v11 = 0;
        do
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v23 + 1) + 8 * v11);
          v13 = a1[4];
          if (v13)
          {
            v14 = [*(*(&v23 + 1) + 8 * v11) filename];
            v15 = [v14 stringByAddingPercentEncodingWithAllowedCharacters:a1[5]];
            [v7 appendFormat:@"&%@=%@", v13, v15];
          }

          v16 = a1[6];
          v17 = [v12 data];
          v18 = [v17 base64EncodedStringWithOptions:0];
          [v7 appendFormat:@"&%@=%@", v16, v18];

          ++v11;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    (*(a1[7] + 16))();
    v6 = v20;
    v5 = v21;
  }

  else
  {
    (*(a1[7] + 16))();
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)supportsMultipleItems
{
  definition = [(WFInterchangeContentMapping *)self definition];
  v3 = [definition objectForKey:@"SupportsMultipleItems"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

@end