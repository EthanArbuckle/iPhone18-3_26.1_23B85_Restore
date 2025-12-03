@interface SXDataTableComponent
+ (id)valueClassBlockForPropertyWithName:(id)name;
- (BOOL)showDescriptorLabelsWithValue:(id)value withType:(int)type;
- (unint64_t)dataOrientationWithValue:(id)value withType:(int)type;
@end

@implementation SXDataTableComponent

+ (id)valueClassBlockForPropertyWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"sortBy"])
  {
    v5 = &__block_literal_global_98;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SXDataTableComponent;
    v5 = objc_msgSendSuper2(&v7, sel_valueClassBlockForPropertyWithName_, nameCopy);
  }

  return v5;
}

- (unint64_t)dataOrientationWithValue:(id)value withType:(int)type
{
  if (type == 3)
  {
    return [value isEqualToString:{@"vertical", v4, v5}];
  }

  else
  {
    return 0;
  }
}

- (BOOL)showDescriptorLabelsWithValue:(id)value withType:(int)type
{
  if (type == 2)
  {
    return [value BOOLValue];
  }

  else
  {
    return 1;
  }
}

@end