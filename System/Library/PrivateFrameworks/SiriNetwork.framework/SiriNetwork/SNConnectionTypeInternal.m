@interface SNConnectionTypeInternal
- (id)connectionTypeStringRawValue;
@end

@implementation SNConnectionTypeInternal

- (id)connectionTypeStringRawValue
{
  countAndFlagsBits = ConnectionTypeWrapper.connectionTypeStringRawValue()()._countAndFlagsBits;
  v3 = MEMORY[0x223DE2070](countAndFlagsBits);

  return v3;
}

@end