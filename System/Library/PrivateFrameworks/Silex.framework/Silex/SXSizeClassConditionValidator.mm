@interface SXSizeClassConditionValidator
- (BOOL)validateCondition:(id)condition context:(id)context;
@end

@implementation SXSizeClassConditionValidator

- (BOOL)validateCondition:(id)condition context:(id)context
{
  conditionCopy = condition;
  contextCopy = context;
  v9 = 0;
  if (![conditionCopy horizontalSizeClass] || (v7 = objc_msgSend(conditionCopy, "horizontalSizeClass"), v7 == objc_msgSend(contextCopy, "horizontalSizeClass")))
  {
    if (![conditionCopy verticalSizeClass] || (v8 = objc_msgSend(conditionCopy, "verticalSizeClass"), v8 == objc_msgSend(contextCopy, "verticalSizeClass")))
    {
      v9 = 1;
    }
  }

  return v9;
}

@end