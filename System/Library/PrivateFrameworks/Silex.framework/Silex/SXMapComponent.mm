@interface SXMapComponent
+ (id)valueClassBlockForPropertyWithName:(id)name;
- (unint64_t)defaultMapTypeWithValue:(id)value withType:(int)type;
@end

@implementation SXMapComponent

+ (id)valueClassBlockForPropertyWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"items"])
  {
    v5 = &__block_literal_global_95;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SXMapComponent;
    v5 = objc_msgSendSuper2(&v7, sel_valueClassBlockForPropertyWithName_, nameCopy);
  }

  return v5;
}

- (unint64_t)defaultMapTypeWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  if ([valueCopy isEqualToString:@"standard"])
  {
    v5 = 0;
  }

  else if ([valueCopy isEqualToString:@"satellite"])
  {
    v5 = 1;
  }

  else if ([valueCopy isEqualToString:@"hybrid"])
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end