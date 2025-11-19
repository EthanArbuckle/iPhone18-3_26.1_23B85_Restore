@interface SXSizeClassConditionValidator
- (BOOL)validateCondition:(id)a3 context:(id)a4;
@end

@implementation SXSizeClassConditionValidator

- (BOOL)validateCondition:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9 = 0;
  if (![v5 horizontalSizeClass] || (v7 = objc_msgSend(v5, "horizontalSizeClass"), v7 == objc_msgSend(v6, "horizontalSizeClass")))
  {
    if (![v5 verticalSizeClass] || (v8 = objc_msgSend(v5, "verticalSizeClass"), v8 == objc_msgSend(v6, "verticalSizeClass")))
    {
      v9 = 1;
    }
  }

  return v9;
}

@end