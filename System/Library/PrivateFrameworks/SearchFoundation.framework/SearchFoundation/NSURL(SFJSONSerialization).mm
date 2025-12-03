@interface NSURL(SFJSONSerialization)
- (id)dictionaryRepresentation;
- (id)jsonData;
@end

@implementation NSURL(SFJSONSerialization)

- (id)dictionaryRepresentation
{
  v1 = [[_SFPBURL alloc] initWithNSURL:self];
  dictionaryRepresentation = [(_SFPBURL *)v1 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (id)jsonData
{
  dictionaryRepresentation = [self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v2 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end