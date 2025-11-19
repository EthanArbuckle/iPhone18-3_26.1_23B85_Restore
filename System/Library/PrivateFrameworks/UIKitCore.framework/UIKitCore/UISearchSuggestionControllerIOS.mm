@interface UISearchSuggestionControllerIOS
@end

@implementation UISearchSuggestionControllerIOS

id __52___UISearchSuggestionControllerIOS__suggestionsMenu__block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v16 = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v2;
  v3 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = *v20;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v20 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v19 + 1) + 8 * i);
        v7 = [v6 localizedSuggestion];
        if (!v7)
        {
          v8 = [v6 localizedAttributedSuggestion];

          if (!v8)
          {
            continue;
          }

          v9 = [v6 localizedAttributedSuggestion];
          v7 = [v9 string];
        }

        if (objc_opt_respondsToSelector())
        {
          v10 = [v6 iconImage];
        }

        else
        {
          v10 = 0;
        }

        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __52___UISearchSuggestionControllerIOS__suggestionsMenu__block_invoke_2;
        v17[3] = &unk_1E70F69F8;
        objc_copyWeak(&v18, (a1 + 32));
        v17[4] = v6;
        v11 = [UIAction actionWithTitle:v7 image:v10 identifier:0 handler:v17];
        v12 = [v6 localizedAttributedSuggestion];
        [v11 setAttributedTitle:v12];

        [v16 addObject:v11];
        objc_destroyWeak(&v18);
      }

      v3 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v3);
  }

  return v16;
}

void __52___UISearchSuggestionControllerIOS__suggestionsMenu__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    v3 = [v5 delegate];
    v4 = objc_loadWeakRetained((a1 + 40));
    [v3 searchSuggestionController:v4 didSelectSuggestion:*(a1 + 32) atIndexPath:0];
  }
}

void __64___UISearchSuggestionControllerIOS__dismissMenuWithoutAnimation__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) menuInteraction];
  [v1 dismissMenu];
}

void __73___UISearchSuggestionControllerIOS__suggestionsRecoveryGestureRecognized__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v5 = [v2 suggestionGroups];
    [v3 _setSearchSuggestionGroups:?];
  }

  else
  {
    v5 = [v2 searchTextField];
    v4 = [*(a1 + 40) suggestions];
    [v5 setSearchSuggestions:v4];
  }
}

@end