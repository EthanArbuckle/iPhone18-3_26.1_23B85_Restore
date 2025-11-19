@interface NSString(NSString_FirstWordExtensions)
- (id)lowercaseFirstWordString;
- (id)uppercaseFirstWordString;
@end

@implementation NSString(NSString_FirstWordExtensions)

- (id)lowercaseFirstWordString
{
  v2 = [MEMORY[0x277CCA900] punctuationCharacterSet];
  v3 = [v2 invertedSet];
  v4 = [a1 rangeOfCharacterFromSet:v3];
  v6 = v5;

  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [a1 substringWithRange:{v4, v6}];
    v8 = [v7 lowercaseString];
    v9 = [a1 stringByReplacingCharactersInRange:v4 withString:{v6, v8}];

    if (![a1 isEqualToString:v9])
    {
      goto LABEL_5;
    }
  }

  v9 = a1;
LABEL_5:

  return v9;
}

- (id)uppercaseFirstWordString
{
  v2 = [MEMORY[0x277CCA900] punctuationCharacterSet];
  v3 = [v2 invertedSet];
  v4 = [a1 rangeOfCharacterFromSet:v3];
  v6 = v5;

  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [a1 substringWithRange:{v4, v6}];
    v8 = [v7 uppercaseString];
    v9 = [a1 stringByReplacingCharactersInRange:v4 withString:{v6, v8}];

    if (![a1 isEqualToString:v9])
    {
      goto LABEL_5;
    }
  }

  v9 = a1;
LABEL_5:

  return v9;
}

@end