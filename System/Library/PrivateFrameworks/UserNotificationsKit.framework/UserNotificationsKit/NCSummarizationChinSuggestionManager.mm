@interface NCSummarizationChinSuggestionManager
- (BOOL)shouldShowChinSuggestionAfterStackSummaryShownForBundleId:(id)id;
- (NCSummarizationChinSuggestionManager)init;
- (void)recordEvent:(unint64_t)event bundleId:(id)id;
@end

@implementation NCSummarizationChinSuggestionManager

- (BOOL)shouldShowChinSuggestionAfterStackSummaryShownForBundleId:(id)id
{
  v4 = sub_270A88FC0();
  v6 = v5;
  v7 = self + OBJC_IVAR___NCSummarizationChinSuggestionManager_recordManager;
  selfCopy = self;
  os_unfair_lock_lock(v7);
  sub_270A57860(v7 + 1, selfCopy, v4, v6, &v10);

  os_unfair_lock_unlock(v7);

  return v10;
}

- (void)recordEvent:(unint64_t)event bundleId:(id)id
{
  v6 = sub_270A88FC0();
  v8 = v7;
  v9 = self + OBJC_IVAR___NCSummarizationChinSuggestionManager_recordManager;
  selfCopy = self;
  os_unfair_lock_lock(v9);
  sub_270A5933C(v9 + 1, selfCopy, v6, v8, event);

  os_unfair_lock_unlock(v9);
}

- (NCSummarizationChinSuggestionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end