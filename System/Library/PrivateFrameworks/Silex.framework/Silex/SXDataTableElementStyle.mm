@interface SXDataTableElementStyle
- (id)valueForLookupKey:(id)a3;
@end

@implementation SXDataTableElementStyle

- (id)valueForLookupKey:(id)a3
{
  v4 = a3;
  if (![v4 isEqualToString:@"conditional"])
  {
    goto LABEL_4;
  }

  v5 = [(SXJSONObject *)self jsonDictionary];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {

LABEL_4:
    v9.receiver = self;
    v9.super_class = SXDataTableElementStyle;
    v7 = [(SXJSONObject *)&v9 valueForLookupKey:v4];
    goto LABEL_5;
  }

  v7 = MEMORY[0x1E695E0F0];
LABEL_5:

  return v7;
}

@end