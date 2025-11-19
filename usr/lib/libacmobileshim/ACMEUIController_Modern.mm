@interface ACMEUIController_Modern
- (Class)standardSignInClass;
@end

@implementation ACMEUIController_Modern

- (Class)standardSignInClass
{
  [MEMORY[0x29EDC7A58] currentDevice];
  if (objc_opt_respondsToSelector())
  {
    [objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")];
  }

  return objc_opt_class();
}

@end