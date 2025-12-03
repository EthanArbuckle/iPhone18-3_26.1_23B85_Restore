@interface SXPhoneNumberActionFactory
- (id)actionForAddition:(id)addition;
- (id)actionForURL:(id)l;
@end

@implementation SXPhoneNumberActionFactory

- (id)actionForAddition:(id)addition
{
  additionCopy = addition;
  if (additionCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    phoneNumber = [additionCopy phoneNumber];

    if (phoneNumber)
    {
      v5 = [SXPhoneNumberAction alloc];
      phoneNumber2 = [additionCopy phoneNumber];
      phoneNumber = [(SXPhoneNumberAction *)v5 initWithPhoneNumber:phoneNumber2];
    }
  }

  else
  {
    phoneNumber = 0;
  }

  return phoneNumber;
}

- (id)actionForURL:(id)l
{
  if (l)
  {
    v3 = [MEMORY[0x1E696AF20] componentsWithURL:l resolvingAgainstBaseURL:0];
    v4 = [v3 queryValueForName:@"phoneNumber"];
    if (v4)
    {
      v5 = [[SXPhoneNumberAction alloc] initWithPhoneNumber:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end