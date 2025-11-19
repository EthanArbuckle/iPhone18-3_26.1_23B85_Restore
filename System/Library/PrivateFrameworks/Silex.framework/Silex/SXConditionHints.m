@interface SXConditionHints
+ (id)jsonPropertyNameForObjCPropertyName:(id)a3;
- (int64_t)ternaryValueForJSONValue:(id)a3 type:(int)a4;
@end

@implementation SXConditionHints

+ (id)jsonPropertyNameForObjCPropertyName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"testing"])
  {
    v5 = @"_anf_testing";
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SXConditionHints;
    v5 = objc_msgSendSuper2(&v7, sel_jsonPropertyNameForObjCPropertyName_, v4);
  }

  return v5;
}

- (int64_t)ternaryValueForJSONValue:(id)a3 type:(int)a4
{
  if (a4 == 2)
  {
    return [a3 BOOLValue];
  }

  else
  {
    return -1;
  }
}

@end