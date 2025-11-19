@interface ICPhoneNumberContentMapping
- (void)getStringRepresentation:(id)a3 withInput:(id)a4 parameters:(id)a5;
@end

@implementation ICPhoneNumberContentMapping

- (void)getStringRepresentation:(id)a3 withInput:(id)a4 parameters:(id)a5
{
  v8 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__ICPhoneNumberContentMapping_getStringRepresentation_withInput_parameters___block_invoke;
  v10[3] = &unk_1E8378930;
  v10[4] = self;
  v11 = v8;
  v9 = v8;
  [(WFInterchangeContentMapping *)self getContentCollection:v10 withInput:a4 parameters:a5];
}

void __76__ICPhoneNumberContentMapping_getStringRepresentation_withInput_parameters___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  if ([v6 numberOfItems])
  {
    v8 = [v6 collectionByFilteringToItemClass:objc_opt_class() excludedItems:0];
    if ([v8 numberOfItems])
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __76__ICPhoneNumberContentMapping_getStringRepresentation_withInput_parameters___block_invoke_2;
      v18[3] = &unk_1E837A538;
      v9 = *(a1 + 40);
      v18[4] = *(a1 + 32);
      v19 = v9;
      [v8 getObjectRepresentations:v18 forClass:objc_opt_class()];
    }

    else
    {
      [v6 getStringRepresentation:*(a1 + 40)];
    }
  }

  else
  {
    v10 = [*(a1 + 32) destinationType];
    v11 = [v10 isEqualToString:@"URLQueryValue"];

    if (!v7 && (v11 & 1) == 0)
    {
      v12 = MEMORY[0x1E696ABC0];
      v13 = *MEMORY[0x1E696A250];
      v20[0] = *MEMORY[0x1E696A588];
      v14 = WFLocalizedString(@"Error");
      v21[0] = v14;
      v20[1] = *MEMORY[0x1E696A578];
      v15 = WFLocalizedString(@"No phone numbers were passed into this action.");
      v21[1] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
      v7 = [v12 errorWithDomain:v13 code:260 userInfo:v16];
    }

    (*(*(a1 + 40) + 16))();
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __76__ICPhoneNumberContentMapping_getStringRepresentation_withInput_parameters___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v10 = getCNLabelPhoneNumberiPhoneSymbolLoc_ptr;
  v32 = getCNLabelPhoneNumberiPhoneSymbolLoc_ptr;
  if (!getCNLabelPhoneNumberiPhoneSymbolLoc_ptr)
  {
    v11 = ContactsLibrary();
    v30[3] = dlsym(v11, "CNLabelPhoneNumberiPhone");
    getCNLabelPhoneNumberiPhoneSymbolLoc_ptr = v30[3];
    v10 = v30[3];
  }

  _Block_object_dispose(&v29, 8);
  if (!v10)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCNLabelPhoneNumberiPhone(void)"];
    [v26 handleFailureInFunction:v27 file:@"ICPhoneNumberContentMapping.m" lineNumber:15 description:{@"%s", dlerror()}];
LABEL_19:

    __break(1u);
    return;
  }

  v12 = [v7 objectMatchingKey:@"label" value:*v10];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v13 = getCNLabelPhoneNumberMobileSymbolLoc_ptr;
  v32 = getCNLabelPhoneNumberMobileSymbolLoc_ptr;
  if (!getCNLabelPhoneNumberMobileSymbolLoc_ptr)
  {
    v14 = ContactsLibrary();
    v30[3] = dlsym(v14, "CNLabelPhoneNumberMobile");
    getCNLabelPhoneNumberMobileSymbolLoc_ptr = v30[3];
    v13 = v30[3];
  }

  _Block_object_dispose(&v29, 8);
  if (!v13)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCNLabelPhoneNumberMobile(void)"];
    [v26 handleFailureInFunction:v27 file:@"ICPhoneNumberContentMapping.m" lineNumber:16 description:{@"%s", dlerror()}];
    goto LABEL_19;
  }

  v15 = [v7 objectMatchingKey:@"label" value:*v13];
  v16 = v15;
  if (v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = v15;
  }

  v28 = v7;
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = [v7 firstObject];
  }

  v19 = v18;
  v20 = [*(a1 + 32) definition];
  v21 = [v20 objectForKey:@"UseNormalizedNumber"];
  if ([v21 BOOLValue])
  {
    [v19 normalizedPhoneNumber];
  }

  else
  {
    [v19 string];
  }
  v22 = ;

  v23 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v24 = [v22 componentsSeparatedByCharactersInSet:v23];
  v25 = [v24 componentsJoinedByString:&stru_1F4A1C408];

  (*(*(a1 + 40) + 16))();
}

@end