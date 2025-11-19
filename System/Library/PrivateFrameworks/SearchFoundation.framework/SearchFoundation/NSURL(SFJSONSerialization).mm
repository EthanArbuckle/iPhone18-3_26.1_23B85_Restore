@interface NSURL(SFJSONSerialization)
- (id)dictionaryRepresentation;
- (id)jsonData;
@end

@implementation NSURL(SFJSONSerialization)

- (id)dictionaryRepresentation
{
  v1 = [[_SFPBURL alloc] initWithNSURL:a1];
  v2 = [(_SFPBURL *)v1 dictionaryRepresentation];

  return v2;
}

- (id)jsonData
{
  v1 = [a1 dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v1])
  {
    v2 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v1 options:0 error:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end