@interface SSItemAvailableCondition
- (BOOL)evaluateWithContext:(id)a3;
@end

@implementation SSItemAvailableCondition

- (BOOL)evaluateWithContext:(id)a3
{
  v4 = [a3 itemLookupBlock];
  if (v4)
  {
    v5 = v4;
    v6 = SSGetItemIdentifierFromValue(self->super._value);
    LOBYTE(v4) = (*(v5 + 16))(v5, v6);
  }

  return v4 ^ (self->super._operator == 1);
}

@end