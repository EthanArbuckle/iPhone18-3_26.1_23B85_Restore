@interface UINotificationFeedbackGeneratorConfiguration
@end

@implementation UINotificationFeedbackGeneratorConfiguration

void __69___UINotificationFeedbackGeneratorConfiguration_defaultConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 includePrivateEvents];
  if (qword_1ED49A078 != -1)
  {
    dispatch_once(&qword_1ED49A078, &__block_literal_global_87_0);
  }

  v4 = 24;
  if (v3)
  {
    v4 = 32;
  }

  v5 = _UICreateNotificationFeedbacksForTypes(*&_MergedGlobals_3_8[v4]);
  [v2 setFeedbacks:v5];
}

void __78___UINotificationFeedbackGeneratorConfiguration_privateConfigurationForTypes___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = _UICreateNotificationFeedbacksForTypes(v2);
  [v3 setFeedbacks:v4];
}

@end