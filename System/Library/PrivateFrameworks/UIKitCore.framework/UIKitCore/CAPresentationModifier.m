@interface CAPresentationModifier
- (BOOL)supportsNewValue:(_BOOL8)a1;
@end

@implementation CAPresentationModifier

- (BOOL)supportsNewValue:(_BOOL8)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [v2 value];
    v5 = [v4 CA_numericValueCount];
    v6 = [v3 CA_numericValueCount];

    v2 = v5 == v6;
  }

  return v2;
}

@end