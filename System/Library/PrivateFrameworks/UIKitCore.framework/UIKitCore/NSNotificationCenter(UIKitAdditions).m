@interface NSNotificationCenter(UIKitAdditions)
+ (id)uikitCenter;
@end

@implementation NSNotificationCenter(UIKitAdditions)

+ (id)uikitCenter
{
  if (qword_1ED49FFF0 != -1)
  {
    dispatch_once(&qword_1ED49FFF0, &__block_literal_global_2_15);
  }

  v1 = qword_1ED49FFE8;

  return v1;
}

@end