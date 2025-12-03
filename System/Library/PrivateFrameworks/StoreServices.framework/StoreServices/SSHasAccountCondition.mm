@interface SSHasAccountCondition
- (BOOL)evaluateWithContext:(id)context;
@end

@implementation SSHasAccountCondition

- (BOOL)evaluateWithContext:(id)context
{
  bOOLValue = [self->super._value BOOLValue];
  v5 = [objc_msgSend(+[SSAccountStore defaultStore](SSAccountStore "defaultStore")];
  operator = self->super._operator;
  if (operator == 1)
  {
    return bOOLValue ^ (v5 != 0);
  }

  if (operator)
  {
    return 0;
  }

  return bOOLValue ^ (v5 != 0) ^ 1;
}

@end