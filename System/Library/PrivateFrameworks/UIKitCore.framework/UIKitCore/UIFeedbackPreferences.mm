@interface UIFeedbackPreferences
@end

@implementation UIFeedbackPreferences

void __43___UIFeedbackPreferences_sharedPreferences__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1ED49DC40;
  qword_1ED49DC40 = v1;
}

void __49___UIFeedbackPreferences__startObservingDefaults__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) _defaultKeyForCategoryKey:a2 type:a3];
  [*(*(a1 + 32) + 24) addObserver:*(a1 + 32) forKeyPath:v4 options:0 context:0];
}

@end