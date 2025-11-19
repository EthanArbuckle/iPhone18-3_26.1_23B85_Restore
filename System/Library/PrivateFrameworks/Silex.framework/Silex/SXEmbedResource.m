@interface SXEmbedResource
- (id)expirationDateWithValue:(id)a3 withType:(int)a4;
@end

@implementation SXEmbedResource

- (id)expirationDateWithValue:(id)a3 withType:(int)a4
{
  if (a4 == 3)
  {
    v4 = MEMORY[0x1E696AB78];
    v5 = a3;
    v6 = [v4 dateFormatterWithFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSZ"];
    v7 = [v6 dateFromString:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end