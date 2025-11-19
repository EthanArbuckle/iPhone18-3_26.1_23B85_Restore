@interface UISearchSuggestionsListViewController
@end

@implementation UISearchSuggestionsListViewController

void __67___UISearchSuggestionsListViewController_initWithSearchController___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained searchController];

  if (v11)
  {
    v12 = [v9 unsignedIntegerValue];
    v13 = [v11 _dci_searchSuggestions];
    v14 = [v13 count];

    if (v12 < v14)
    {
      v15 = [v11 _dci_searchSuggestions];
      v16 = [v15 objectAtIndexedSubscript:{objc_msgSend(v9, "unsignedIntegerValue")}];
      [v7 setRepresentedSuggestion:v16];

      goto LABEL_4;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v18 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_9;
      }

      v19 = [v11 _dci_searchSuggestions];
      v20 = 138412802;
      v21 = v8;
      v22 = 2048;
      v23 = v12;
      v24 = 2112;
      v25 = v19;
      _os_log_fault_impl(&dword_188A29000, v18, OS_LOG_TYPE_FAULT, "Suggestion list not in sync with cell at indexPath: %@. itemIndex=%lu, suggestion list: %@", &v20, 0x20u);
    }

    else
    {
      v17 = *(__UILogGetCategoryCachedImpl("Assert", &SectionIdentifier_block_invoke___s_category) + 8);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }

      v18 = v17;
      v19 = [v11 _dci_searchSuggestions];
      v20 = 138412802;
      v21 = v8;
      v22 = 2048;
      v23 = v12;
      v24 = 2112;
      v25 = v19;
      _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "Suggestion list not in sync with cell at indexPath: %@. itemIndex=%lu, suggestion list: %@", &v20, 0x20u);
    }

LABEL_9:
  }

LABEL_4:
}

@end