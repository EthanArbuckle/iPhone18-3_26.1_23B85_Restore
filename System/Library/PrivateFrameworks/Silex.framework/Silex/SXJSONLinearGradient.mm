@interface SXJSONLinearGradient
+ (id)valueClassBlockForPropertyWithName:(id)name;
@end

@implementation SXJSONLinearGradient

+ (id)valueClassBlockForPropertyWithName:(id)name
{
  if ([name isEqualToString:@"colorStops"])
  {
    return &__block_literal_global_88;
  }

  else
  {
    return 0;
  }
}

@end