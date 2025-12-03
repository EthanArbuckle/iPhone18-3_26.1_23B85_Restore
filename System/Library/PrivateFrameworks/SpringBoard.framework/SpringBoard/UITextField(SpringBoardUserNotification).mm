@interface UITextField(SpringBoardUserNotification)
- (uint64_t)sb_maxInputLength;
- (void)sb_setMaxInputLength:()SpringBoardUserNotification;
@end

@implementation UITextField(SpringBoardUserNotification)

- (void)sb_setMaxInputLength:()SpringBoardUserNotification
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  objc_setAssociatedObject(self, "_sb_maxInputLength", v2, 0x301);
}

- (uint64_t)sb_maxInputLength
{
  v1 = objc_getAssociatedObject(self, "_sb_maxInputLength");
  v2 = v1;
  if (v1)
  {
    unsignedIntegerValue = [v1 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = -1;
  }

  return unsignedIntegerValue;
}

@end