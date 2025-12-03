@interface NSString(NSString_FirstWordExtensions)
- (id)lowercaseFirstWordString;
- (id)uppercaseFirstWordString;
@end

@implementation NSString(NSString_FirstWordExtensions)

- (id)lowercaseFirstWordString
{
  punctuationCharacterSet = [MEMORY[0x277CCA900] punctuationCharacterSet];
  invertedSet = [punctuationCharacterSet invertedSet];
  v4 = [self rangeOfCharacterFromSet:invertedSet];
  v6 = v5;

  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [self substringWithRange:{v4, v6}];
    lowercaseString = [v7 lowercaseString];
    selfCopy = [self stringByReplacingCharactersInRange:v4 withString:{v6, lowercaseString}];

    if (![self isEqualToString:selfCopy])
    {
      goto LABEL_5;
    }
  }

  selfCopy = self;
LABEL_5:

  return selfCopy;
}

- (id)uppercaseFirstWordString
{
  punctuationCharacterSet = [MEMORY[0x277CCA900] punctuationCharacterSet];
  invertedSet = [punctuationCharacterSet invertedSet];
  v4 = [self rangeOfCharacterFromSet:invertedSet];
  v6 = v5;

  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [self substringWithRange:{v4, v6}];
    uppercaseString = [v7 uppercaseString];
    selfCopy = [self stringByReplacingCharactersInRange:v4 withString:{v6, uppercaseString}];

    if (![self isEqualToString:selfCopy])
    {
      goto LABEL_5;
    }
  }

  selfCopy = self;
LABEL_5:

  return selfCopy;
}

@end