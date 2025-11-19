@interface ATXProactiveSuggestionFeedbackTypes
+ (id)stringForUIFeedbackEngagementType:(int64_t)a3;
@end

@implementation ATXProactiveSuggestionFeedbackTypes

+ (id)stringForUIFeedbackEngagementType:(int64_t)a3
{
  v3 = @"abandoned";
  if (a3 == 1)
  {
    v3 = @"dismissed";
  }

  if (a3 == 2)
  {
    return @"engaged";
  }

  else
  {
    return v3;
  }
}

@end