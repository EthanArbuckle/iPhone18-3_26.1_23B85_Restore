@interface SXJSONLinearGradient
+ (id)valueClassBlockForPropertyWithName:(id)a3;
@end

@implementation SXJSONLinearGradient

+ (id)valueClassBlockForPropertyWithName:(id)a3
{
  if ([a3 isEqualToString:@"colorStops"])
  {
    return &__block_literal_global_88;
  }

  else
  {
    return 0;
  }
}

@end