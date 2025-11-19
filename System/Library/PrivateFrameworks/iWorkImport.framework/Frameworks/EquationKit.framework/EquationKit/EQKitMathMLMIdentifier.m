@interface EQKitMathMLMIdentifier
- (id)layoutSchemata;
- (int)scriptVariant;
@end

@implementation EQKitMathMLMIdentifier

- (int)scriptVariant
{
  if ((*&self->super.mFlags & 3) != 0)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (id)layoutSchemata
{
  *a2 = &unk_2884CB990;
  *(a2 + 8) = 8;
  result = a1;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

@end