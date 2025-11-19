@interface _UISearchSuggestionControllerTVOS
- (BOOL)shouldDisplayDefaultSuggestion;
- (id)makeCollectionView;
- (void)updateSearchString:(id)a3;
@end

@implementation _UISearchSuggestionControllerTVOS

- (id)makeCollectionView
{
  if (os_variant_has_internal_diagnostics())
  {
    v4 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "-makeCollectionView not implemented on this platform", buf, 2u);
    }
  }

  else
  {
    v2 = *(__UILogGetCategoryCachedImpl("Assert", &makeCollectionView___s_category) + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "-makeCollectionView not implemented on this platform", v5, 2u);
    }
  }

  return 0;
}

- (void)updateSearchString:(id)a3
{
  if (os_variant_has_internal_diagnostics())
  {
    v4 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "-updateSearchString: not implemented on this platform", buf, 2u);
    }
  }

  else
  {
    v3 = *(__UILogGetCategoryCachedImpl("Assert", &updateSearchString____s_category) + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "-updateSearchString: not implemented on this platform", v5, 2u);
    }
  }
}

- (BOOL)shouldDisplayDefaultSuggestion
{
  if (os_variant_has_internal_diagnostics())
  {
    v4 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "shouldDisplayDefaultSuggestion not supported on this platform", buf, 2u);
    }
  }

  else
  {
    v2 = *(__UILogGetCategoryCachedImpl("Assert", &shouldDisplayDefaultSuggestion___s_category) + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "shouldDisplayDefaultSuggestion not supported on this platform", v5, 2u);
    }
  }

  return 0;
}

@end