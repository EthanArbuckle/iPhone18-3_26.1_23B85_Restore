@interface SXPhoneNumberActionSerializer
- (id)URLForAction:(id)action type:(int64_t)type;
@end

@implementation SXPhoneNumberActionSerializer

- (id)URLForAction:(id)action type:(int64_t)type
{
  actionCopy = action;
  if (actionCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    phoneNumber = [actionCopy phoneNumber];

    v7 = 0;
    if (type != 1 && phoneNumber)
    {
      v8 = objc_alloc_init(MEMORY[0x1E696AF20]);
      [v8 setScheme:@"tel"];
      phoneNumber2 = [actionCopy phoneNumber];
      [v8 setHost:phoneNumber2];

      v7 = [v8 URL];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end