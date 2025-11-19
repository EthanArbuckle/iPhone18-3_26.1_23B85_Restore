@interface ICSkypeCallContentMapping
- (void)getStringRepresentation:(id)a3 withInput:(id)a4 parameters:(id)a5;
- (void)getStringRepresentationWithoutContact:(id)a3 withInput:(id)a4 parameters:(id)a5;
@end

@implementation ICSkypeCallContentMapping

- (void)getStringRepresentationWithoutContact:(id)a3 withInput:(id)a4 parameters:(id)a5
{
  v19[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v19[0] = objc_opt_class();
  v19[1] = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __88__ICSkypeCallContentMapping_getStringRepresentationWithoutContact_withInput_parameters___block_invoke;
  v15[3] = &unk_1E837FF18;
  v17 = self;
  v18 = v8;
  v16 = v9;
  v12 = v9;
  v13 = v8;
  [v10 generateCollectionByCoercingToItemClasses:v11 completionHandler:v15];

  v14 = *MEMORY[0x1E69E9840];
}

id __88__ICSkypeCallContentMapping_getStringRepresentationWithoutContact_withInput_parameters___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v5.receiver = *(a1 + 40);
  v5.super_class = ICSkypeCallContentMapping;
  return objc_msgSendSuper2(&v5, sel_getStringRepresentation_withInput_parameters_, v2, a2, v3);
}

- (void)getStringRepresentation:(id)a3 withInput:(id)a4 parameters:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__ICSkypeCallContentMapping_getStringRepresentation_withInput_parameters___block_invoke;
  v14[3] = &unk_1E837D3E0;
  v14[4] = self;
  v15 = v9;
  v16 = v10;
  v17 = v8;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  [(WFInterchangeContentMapping *)self getContentCollection:v14 withInput:v12 parameters:v11];
}

void __74__ICSkypeCallContentMapping_getStringRepresentation_withInput_parameters___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v62[2] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v42 = a3;
  v44 = a4;
  v41 = v7;
  if ([v7 numberOfItems])
  {
    v39 = a1;
    v43 = [v7 collectionByFilteringToItemClass:objc_opt_class() excludedItems:0];
    if ([v43 numberOfItems])
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      obj = [v43 items];
      v38 = [obj countByEnumeratingWithState:&v50 objects:v60 count:16];
      if (v38)
      {
        v8 = *v51;
        v36 = *v51;
        do
        {
          v9 = 0;
          do
          {
            if (*v51 != v8)
            {
              v10 = v9;
              objc_enumerationMutation(obj);
              v9 = v10;
            }

            v37 = v9;
            v11 = *(*(&v50 + 1) + 8 * v9);
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v12 = [v11 contact];
            v45 = [v12 instantMessageAddresses];

            v13 = [v45 countByEnumeratingWithState:&v46 objects:v59 count:16];
            if (v13)
            {
              v14 = *v47;
              do
              {
                for (i = 0; i != v13; ++i)
                {
                  if (*v47 != v14)
                  {
                    objc_enumerationMutation(v45);
                  }

                  v16 = *(*(&v46 + 1) + 8 * i);
                  v17 = [v16 value];
                  v18 = [v17 service];
                  v55 = 0;
                  v56 = &v55;
                  v57 = 0x2020000000;
                  v19 = getCNInstantMessageServiceSkypeSymbolLoc_ptr;
                  v58 = getCNInstantMessageServiceSkypeSymbolLoc_ptr;
                  if (!getCNInstantMessageServiceSkypeSymbolLoc_ptr)
                  {
                    v54[0] = MEMORY[0x1E69E9820];
                    v54[1] = 3221225472;
                    v54[2] = __getCNInstantMessageServiceSkypeSymbolLoc_block_invoke;
                    v54[3] = &unk_1E837FAC0;
                    v54[4] = &v55;
                    __getCNInstantMessageServiceSkypeSymbolLoc_block_invoke(v54);
                    v19 = v56[3];
                  }

                  _Block_object_dispose(&v55, 8);
                  if (!v19)
                  {
                    v34 = [MEMORY[0x1E696AAA8] currentHandler];
                    v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCNInstantMessageServiceSkype(void)"];
                    [v34 handleFailureInFunction:v35 file:@"ICSkypeCallContentMapping.m" lineNumber:14 description:{@"%s", dlerror()}];

                    __break(1u);
                  }

                  v20 = *v19;
                  if ([v18 isEqualToString:v20])
                  {
                    v21 = [v16 value];
                    v22 = [v21 username];
                    v23 = [v22 length] == 0;

                    if (!v23)
                    {
                      v30 = *(v39 + 56);
                      v31 = [v16 value];
                      v32 = [v31 username];
                      (*(v30 + 16))(v30, v32, 0);

                      goto LABEL_30;
                    }
                  }

                  else
                  {
                  }
                }

                v13 = [v45 countByEnumeratingWithState:&v46 objects:v59 count:16];
              }

              while (v13);
            }

            v9 = v37 + 1;
            v8 = v36;
          }

          while (v37 + 1 != v38);
          v38 = [obj countByEnumeratingWithState:&v50 objects:v60 count:16];
          v8 = v36;
        }

        while (v38);
      }
    }

    [*(v39 + 32) getStringRepresentationWithoutContact:*(v39 + 56) withInput:*(v39 + 40) parameters:*(v39 + 48)];
LABEL_30:
  }

  else
  {
    v24 = [*(a1 + 32) destinationType];
    v25 = [v24 isEqualToString:@"URLQueryValue"];

    if (!v44 && (v25 & 1) == 0)
    {
      v26 = MEMORY[0x1E696ABC0];
      v61[0] = *MEMORY[0x1E696A588];
      v27 = WFLocalizedString(@"Error");
      v62[0] = v27;
      v61[1] = *MEMORY[0x1E696A578];
      v28 = WFLocalizedString(@"No phone numbers or Skype usernames were passed into this action.");
      v62[1] = v28;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:2];
      v44 = [v26 errorWithDomain:*MEMORY[0x1E696A250] code:260 userInfo:v29];
    }

    (*(*(a1 + 56) + 16))();
  }

  v33 = *MEMORY[0x1E69E9840];
}

@end