@interface NCSummarizationChinSuggestionManager
- (BOOL)shouldShowChinSuggestionAfterStackSummaryShownForBundleId:(id)a3;
- (NCSummarizationChinSuggestionManager)init;
- (void)recordEvent:(unint64_t)a3 bundleId:(id)a4;
@end

@implementation NCSummarizationChinSuggestionManager

- (BOOL)shouldShowChinSuggestionAfterStackSummaryShownForBundleId:(id)a3
{
  v4 = sub_270A88FC0();
  v6 = v5;
  v7 = self + OBJC_IVAR___NCSummarizationChinSuggestionManager_recordManager;
  v8 = self;
  os_unfair_lock_lock(v7);
  sub_270A57860(v7 + 1, v8, v4, v6, &v10);

  os_unfair_lock_unlock(v7);

  return v10;
}

- (void)recordEvent:(unint64_t)a3 bundleId:(id)a4
{
  v6 = sub_270A88FC0();
  v8 = v7;
  v9 = self + OBJC_IVAR___NCSummarizationChinSuggestionManager_recordManager;
  v10 = self;
  os_unfair_lock_lock(v9);
  sub_270A5933C(v9 + 1, v10, v6, v8, a3);

  os_unfair_lock_unlock(v9);
}

- (NCSummarizationChinSuggestionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end