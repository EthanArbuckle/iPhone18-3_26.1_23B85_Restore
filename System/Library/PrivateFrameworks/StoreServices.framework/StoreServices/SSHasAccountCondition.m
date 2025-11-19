@interface SSHasAccountCondition
- (BOOL)evaluateWithContext:(id)a3;
@end

@implementation SSHasAccountCondition

- (BOOL)evaluateWithContext:(id)a3
{
  v4 = [self->super._value BOOLValue];
  v5 = [objc_msgSend(+[SSAccountStore defaultStore](SSAccountStore "defaultStore")];
  operator = self->super._operator;
  if (operator == 1)
  {
    return v4 ^ (v5 != 0);
  }

  if (operator)
  {
    return 0;
  }

  return v4 ^ (v5 != 0) ^ 1;
}

@end