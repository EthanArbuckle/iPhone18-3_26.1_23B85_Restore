@interface SXDataRecord
- (id)description;
- (id)valueForKey:(id)a3;
@end

@implementation SXDataRecord

- (id)valueForKey:(id)a3
{
  v4 = a3;
  v5 = [(SXJSONObject *)self jsonDictionary];
  v6 = [v5 valueForKey:v4];

  return v6;
}

- (id)description
{
  v2 = [(SXJSONObject *)self jsonDictionary];
  v3 = [v2 description];

  return v3;
}

@end