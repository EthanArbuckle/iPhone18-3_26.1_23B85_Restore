@interface CAPresentationModifier
- (BOOL)supportsNewValue:(_BOOL8)value;
@end

@implementation CAPresentationModifier

- (BOOL)supportsNewValue:(_BOOL8)value
{
  valueCopy = value;
  if (value)
  {
    v3 = a2;
    value = [valueCopy value];
    cA_numericValueCount = [value CA_numericValueCount];
    cA_numericValueCount2 = [v3 CA_numericValueCount];

    valueCopy = cA_numericValueCount == cA_numericValueCount2;
  }

  return valueCopy;
}

@end