@interface SXMapComponent
+ (id)valueClassBlockForPropertyWithName:(id)a3;
- (unint64_t)defaultMapTypeWithValue:(id)a3 withType:(int)a4;
@end

@implementation SXMapComponent

+ (id)valueClassBlockForPropertyWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"items"])
  {
    v5 = &__block_literal_global_95;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SXMapComponent;
    v5 = objc_msgSendSuper2(&v7, sel_valueClassBlockForPropertyWithName_, v4);
  }

  return v5;
}

- (unint64_t)defaultMapTypeWithValue:(id)a3 withType:(int)a4
{
  v4 = a3;
  if ([v4 isEqualToString:@"standard"])
  {
    v5 = 0;
  }

  else if ([v4 isEqualToString:@"satellite"])
  {
    v5 = 1;
  }

  else if ([v4 isEqualToString:@"hybrid"])
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