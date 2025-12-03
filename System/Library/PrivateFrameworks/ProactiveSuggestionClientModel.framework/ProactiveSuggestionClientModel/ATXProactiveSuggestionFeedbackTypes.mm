@interface ATXProactiveSuggestionFeedbackTypes
+ (id)stringForUIFeedbackEngagementType:(int64_t)type;
@end

@implementation ATXProactiveSuggestionFeedbackTypes

+ (id)stringForUIFeedbackEngagementType:(int64_t)type
{
  v3 = @"abandoned";
  if (type == 1)
  {
    v3 = @"dismissed";
  }

  if (type == 2)
  {
    return @"engaged";
  }

  else
  {
    return v3;
  }
}

@end