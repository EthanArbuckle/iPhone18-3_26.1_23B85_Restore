@interface SearchUIShowContactCardHandler
+ (id)fallbackCommandForRowModel:(id)a3 environment:(id)a4;
- (id)createViewControllerForCommand:(id)a3 environment:(id)a4;
@end

@implementation SearchUIShowContactCardHandler

+ (id)fallbackCommandForRowModel:(id)a3 environment:(id)a4
{
  v4 = a3;
  v5 = [v4 contactIdentifiers];
  if (v5)
  {
    v6 = [v4 cardSection];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v5 = 0;
    }

    else
    {
      v5 = objc_opt_new();
      v8 = [v4 contactIdentifiers];
      v9 = [v8 firstObject];
      [v5 setContactIdentifier:v9];
    }
  }

  return v5;
}

- (id)createViewControllerForCommand:(id)a3 environment:(id)a4
{
  v4 = a3;
  v5 = [v4 contactIdentifier];
  v6 = +[SearchUIContactCache sharedCache];
  v7 = [v6 contactForContactViewController:v5];
  if (v7)
  {
    if ([v4 isSuggestedContact])
    {
      [SearchUIContactViewController viewControllerForUnknownContact:v7];
    }

    else
    {
      [SearchUIContactViewController viewControllerForContact:v7];
    }
    v9 = ;
    v10 = MEMORY[0x1E695D138];
    v11 = [MEMORY[0x1E695D138] spotlightStyle];
    [v10 setCurrentStyle:v11];

    [v9 setActions:{objc_msgSend(v9, "actions") | 0x400}];
    [v9 setAllowsDisplayModePickerActions:0];
    [v9 setAllowsEditPhoto:0];
    v12 = [v6 contactStore];
    [v9 setContactStore:v12];

    [v9 setTitle:&stru_1F55BC4E8];
    [v9 setAllowsEditing:0];
  }

  else
  {
    v8 = SearchUITapLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SearchUIShowContactCardHandler createViewControllerForCommand:v5 environment:v8];
    }

    v9 = 0;
  }

  return v9;
}

- (void)createViewControllerForCommand:(uint64_t)a1 environment:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DA169000, a2, OS_LOG_TYPE_ERROR, "couldnt find contact for identifier %@", &v2, 0xCu);
}

@end