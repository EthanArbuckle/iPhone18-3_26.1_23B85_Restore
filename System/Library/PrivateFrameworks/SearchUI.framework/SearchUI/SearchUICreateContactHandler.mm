@interface SearchUICreateContactHandler
- (id)contactFromCommand;
- (id)createViewControllerForCommand:(id)a3 environment:(id)a4;
- (unint64_t)destination;
@end

@implementation SearchUICreateContactHandler

- (id)createViewControllerForCommand:(id)a3 environment:(id)a4
{
  v5 = [a3 addToExistingContact];
  v6 = off_1E85B0308;
  if (!v5)
  {
    v6 = off_1E85B0320;
  }

  v7 = objc_alloc(*v6);
  v8 = [(SearchUICreateContactHandler *)self contactFromCommand];
  v9 = [v7 initWithContact:v8];

  v10 = MEMORY[0x1E695D138];
  v11 = [MEMORY[0x1E695D138] defaultStyle];
  [v10 setCurrentStyle:v11];

  return v9;
}

- (unint64_t)destination
{
  if ([MEMORY[0x1E69D9240] isMacOS])
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

- (id)contactFromCommand
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = [(SearchUICommandHandler *)self command];
  v3 = [v2 person];
  if (!v3)
  {
    v16 = SearchUITapLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(SearchUICreateContactHandler *)v16 contactFromCommand];
    }

    v4 = 0;
    goto LABEL_23;
  }

  v4 = objc_opt_new();
  v5 = [v3 phoneNumbers];

  v25 = v4;
  if (v5)
  {
    v24 = v2;
    v6 = objc_opt_new();
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v7 = [v3 phoneNumbers];
    v8 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v31;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = MEMORY[0x1E695CEE0];
          v13 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:{*(*(&v30 + 1) + 8 * i), v24}];
          v14 = [v12 labeledValueWithLabel:0 value:v13];

          [v6 addObject:v14];
        }

        v9 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v9);
    }

    [v4 setPhoneNumbers:v6];
    v2 = v24;
  }

  v15 = [v3 emailAddresses];

  if (v15)
  {
    v16 = objc_opt_new();
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v17 = [v3 emailAddresses];
    v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v27;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:@"email" value:*(*(&v26 + 1) + 8 * j)];
          [v16 addObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v19);
    }

    v4 = v25;
    [v25 setEmailAddresses:v16];
LABEL_23:
  }

  return v4;
}

@end