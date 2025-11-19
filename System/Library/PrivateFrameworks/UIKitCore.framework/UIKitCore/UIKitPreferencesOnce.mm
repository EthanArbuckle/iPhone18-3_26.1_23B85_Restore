@interface UIKitPreferencesOnce
@end

@implementation UIKitPreferencesOnce

void ___UIKitPreferencesOnce_block_invoke()
{
  v2 = _UIKitUserDefaults();
  v0 = [v2 dictionaryRepresentation];
  v1 = qword_1ED4A25F8;
  qword_1ED4A25F8 = v0;
}

@end