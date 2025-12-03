@interface SXDataTableElementStyle
- (id)valueForLookupKey:(id)key;
@end

@implementation SXDataTableElementStyle

- (id)valueForLookupKey:(id)key
{
  keyCopy = key;
  if (![keyCopy isEqualToString:@"conditional"])
  {
    goto LABEL_4;
  }

  jsonDictionary = [(SXJSONObject *)self jsonDictionary];
  v6 = [jsonDictionary objectForKey:keyCopy];

  if (v6)
  {

LABEL_4:
    v9.receiver = self;
    v9.super_class = SXDataTableElementStyle;
    v7 = [(SXJSONObject *)&v9 valueForLookupKey:keyCopy];
    goto LABEL_5;
  }

  v7 = MEMORY[0x1E695E0F0];
LABEL_5:

  return v7;
}

@end