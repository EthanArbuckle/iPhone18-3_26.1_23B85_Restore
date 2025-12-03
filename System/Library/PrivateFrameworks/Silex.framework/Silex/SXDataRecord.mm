@interface SXDataRecord
- (id)description;
- (id)valueForKey:(id)key;
@end

@implementation SXDataRecord

- (id)valueForKey:(id)key
{
  keyCopy = key;
  jsonDictionary = [(SXJSONObject *)self jsonDictionary];
  v6 = [jsonDictionary valueForKey:keyCopy];

  return v6;
}

- (id)description
{
  jsonDictionary = [(SXJSONObject *)self jsonDictionary];
  v3 = [jsonDictionary description];

  return v3;
}

@end