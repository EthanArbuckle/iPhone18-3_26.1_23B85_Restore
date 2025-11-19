@interface SXDataTableComponent
+ (id)valueClassBlockForPropertyWithName:(id)a3;
- (BOOL)showDescriptorLabelsWithValue:(id)a3 withType:(int)a4;
- (unint64_t)dataOrientationWithValue:(id)a3 withType:(int)a4;
@end

@implementation SXDataTableComponent

+ (id)valueClassBlockForPropertyWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"sortBy"])
  {
    v5 = &__block_literal_global_98;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SXDataTableComponent;
    v5 = objc_msgSendSuper2(&v7, sel_valueClassBlockForPropertyWithName_, v4);
  }

  return v5;
}

- (unint64_t)dataOrientationWithValue:(id)a3 withType:(int)a4
{
  if (a4 == 3)
  {
    return [a3 isEqualToString:{@"vertical", v4, v5}];
  }

  else
  {
    return 0;
  }
}

- (BOOL)showDescriptorLabelsWithValue:(id)a3 withType:(int)a4
{
  if (a4 == 2)
  {
    return [a3 BOOLValue];
  }

  else
  {
    return 1;
  }
}

@end