@interface UIViewController(TextEntry)
+ (SMUTextEntryController)textEntryController;
@end

@implementation UIViewController(TextEntry)

+ (SMUTextEntryController)textEntryController
{
  v0 = objc_alloc_init(SMUTextEntryController);

  return v0;
}

@end