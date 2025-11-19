@interface SXPhoneNumberActionFactory
- (id)actionForAddition:(id)a3;
- (id)actionForURL:(id)a3;
@end

@implementation SXPhoneNumberActionFactory

- (id)actionForAddition:(id)a3
{
  v3 = a3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 phoneNumber];

    if (v4)
    {
      v5 = [SXPhoneNumberAction alloc];
      v6 = [v3 phoneNumber];
      v4 = [(SXPhoneNumberAction *)v5 initWithPhoneNumber:v6];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)actionForURL:(id)a3
{
  if (a3)
  {
    v3 = [MEMORY[0x1E696AF20] componentsWithURL:a3 resolvingAgainstBaseURL:0];
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