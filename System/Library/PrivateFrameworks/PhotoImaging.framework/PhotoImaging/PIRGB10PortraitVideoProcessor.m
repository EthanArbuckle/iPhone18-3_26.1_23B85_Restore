@interface PIRGB10PortraitVideoProcessor
+ (int)formatForInputAtIndex:(int)a3;
@end

@implementation PIRGB10PortraitVideoProcessor

+ (int)formatForInputAtIndex:(int)a3
{
  if (!a3)
  {
    return *MEMORY[0x1E695F890];
  }

  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___PIRGB10PortraitVideoProcessor;
  return objc_msgSendSuper2(&v4, sel_formatForInputAtIndex_);
}

@end