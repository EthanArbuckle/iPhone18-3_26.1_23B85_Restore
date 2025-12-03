@interface SXEmbedResource
- (id)expirationDateWithValue:(id)value withType:(int)type;
@end

@implementation SXEmbedResource

- (id)expirationDateWithValue:(id)value withType:(int)type
{
  if (type == 3)
  {
    v4 = MEMORY[0x1E696AB78];
    valueCopy = value;
    v6 = [v4 dateFormatterWithFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSZ"];
    v7 = [v6 dateFromString:valueCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end