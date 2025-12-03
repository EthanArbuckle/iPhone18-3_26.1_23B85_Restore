@interface SXConditionHints
+ (id)jsonPropertyNameForObjCPropertyName:(id)name;
- (int64_t)ternaryValueForJSONValue:(id)value type:(int)type;
@end

@implementation SXConditionHints

+ (id)jsonPropertyNameForObjCPropertyName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"testing"])
  {
    v5 = @"_anf_testing";
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SXConditionHints;
    v5 = objc_msgSendSuper2(&v7, sel_jsonPropertyNameForObjCPropertyName_, nameCopy);
  }

  return v5;
}

- (int64_t)ternaryValueForJSONValue:(id)value type:(int)type
{
  if (type == 2)
  {
    return [value BOOLValue];
  }

  else
  {
    return -1;
  }
}

@end