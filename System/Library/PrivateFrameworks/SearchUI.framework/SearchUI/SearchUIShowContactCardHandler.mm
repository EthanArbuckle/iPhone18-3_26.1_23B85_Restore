@interface SearchUIShowContactCardHandler
+ (id)fallbackCommandForRowModel:(id)model environment:(id)environment;
- (id)createViewControllerForCommand:(id)command environment:(id)environment;
@end

@implementation SearchUIShowContactCardHandler

+ (id)fallbackCommandForRowModel:(id)model environment:(id)environment
{
  modelCopy = model;
  contactIdentifiers = [modelCopy contactIdentifiers];
  if (contactIdentifiers)
  {
    cardSection = [modelCopy cardSection];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      contactIdentifiers = 0;
    }

    else
    {
      contactIdentifiers = objc_opt_new();
      contactIdentifiers2 = [modelCopy contactIdentifiers];
      firstObject = [contactIdentifiers2 firstObject];
      [contactIdentifiers setContactIdentifier:firstObject];
    }
  }

  return contactIdentifiers;
}

- (id)createViewControllerForCommand:(id)command environment:(id)environment
{
  commandCopy = command;
  contactIdentifier = [commandCopy contactIdentifier];
  v6 = +[SearchUIContactCache sharedCache];
  v7 = [v6 contactForContactViewController:contactIdentifier];
  if (v7)
  {
    if ([commandCopy isSuggestedContact])
    {
      [SearchUIContactViewController viewControllerForUnknownContact:v7];
    }

    else
    {
      [SearchUIContactViewController viewControllerForContact:v7];
    }
    v9 = ;
    v10 = MEMORY[0x1E695D138];
    spotlightStyle = [MEMORY[0x1E695D138] spotlightStyle];
    [v10 setCurrentStyle:spotlightStyle];

    [v9 setActions:{objc_msgSend(v9, "actions") | 0x400}];
    [v9 setAllowsDisplayModePickerActions:0];
    [v9 setAllowsEditPhoto:0];
    contactStore = [v6 contactStore];
    [v9 setContactStore:contactStore];

    [v9 setTitle:&stru_1F55BC4E8];
    [v9 setAllowsEditing:0];
  }

  else
  {
    v8 = SearchUITapLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SearchUIShowContactCardHandler createViewControllerForCommand:contactIdentifier environment:v8];
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