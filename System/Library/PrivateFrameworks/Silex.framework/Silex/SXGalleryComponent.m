@interface SXGalleryComponent
+ (id)valueClassBlockForPropertyWithName:(id)a3;
@end

@implementation SXGalleryComponent

+ (id)valueClassBlockForPropertyWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"items"])
  {
    v5 = &__block_literal_global_77;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SXGalleryComponent;
    v5 = objc_msgSendSuper2(&v7, sel_valueClassBlockForPropertyWithName_, v4);
  }

  return v5;
}

@end