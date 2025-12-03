@interface NSURL
- (BOOL)isHTTP;
- (id)changeSchemeTo:(int64_t)to;
- (id)changeSchemeToString:(id)string;
- (id)queryItemForKey:(id)key;
- (id)removeQueryItemForKey:(id)key;
- (id)setQueryItem:(id)item forKey:(id)key;
@end

@implementation NSURL

- (id)queryItemForKey:(id)key
{
  keyCopy = key;
  if (!keyCopy)
  {
    [NSException raise:NSInvalidArgumentException format:@"%@ key cannot be nil", objc_opt_class()];
  }

  v5 = [NSURLComponents componentsWithURL:self resolvingAgainstBaseURL:1];
  queryItems = [v5 queryItems];

  keyCopy = [NSPredicate predicateWithFormat:@"name = %@", keyCopy];
  v8 = [queryItems filteredArrayUsingPredicate:keyCopy];
  firstObject = [v8 firstObject];

  value = [firstObject value];

  return value;
}

- (id)removeQueryItemForKey:(id)key
{
  keyCopy = key;
  if (!keyCopy)
  {
    [NSException raise:NSInvalidArgumentException format:@"%@ key cannot be nil", objc_opt_class()];
  }

  v5 = [NSURLComponents componentsWithURL:self resolvingAgainstBaseURL:0];
  queryItems = [v5 queryItems];
  keyCopy = [NSPredicate predicateWithFormat:@"name != %@", keyCopy];
  v8 = [queryItems filteredArrayUsingPredicate:keyCopy];
  if ([v8 count])
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  [v5 setQueryItems:v9];
  v10 = [v5 URL];

  return v10;
}

- (id)setQueryItem:(id)item forKey:(id)key
{
  itemCopy = item;
  keyCopy = key;
  if (keyCopy)
  {
    if (itemCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [NSException raise:NSInvalidArgumentException format:@"%@ key cannot be nil", objc_opt_class()];
    if (itemCopy)
    {
      goto LABEL_3;
    }
  }

  [NSException raise:NSInvalidArgumentException format:@"%@ value cannot be nil", objc_opt_class()];
LABEL_3:
  if ([keyCopy length])
  {
    v8 = [NSURLComponents componentsWithURL:self resolvingAgainstBaseURL:0];
    queryItems = [v8 queryItems];
    if (queryItems)
    {
      queryItems2 = [v8 queryItems];
    }

    else
    {
      queryItems2 = &__NSArray0__struct;
    }

    keyCopy = [NSPredicate predicateWithFormat:@"name != %@", keyCopy];
    v13 = [queryItems2 filteredArrayUsingPredicate:keyCopy];
    v14 = [NSURLQueryItem queryItemWithName:keyCopy value:itemCopy];
    v15 = [v13 arrayByAddingObject:v14];
    [v8 setQueryItems:v15];

    selfCopy = [v8 URL];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)isHTTP
{
  scheme = [(NSURL *)self scheme];
  v3 = [scheme isEqualToString:@"http"];

  return v3;
}

- (id)changeSchemeTo:(int64_t)to
{
  switch(to)
  {
    case 0:
      v3 = &off_10450;
      goto LABEL_7;
    case 1:
      v3 = &off_10458;
      goto LABEL_7;
    case 2:
      v3 = &off_10460;
LABEL_7:
      selfCopy = [(NSURL *)self changeSchemeToString:*v3];
      goto LABEL_9;
  }

  selfCopy = self;
LABEL_9:

  return selfCopy;
}

- (id)changeSchemeToString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    absoluteString = [(NSURL *)self absoluteString];
    scheme = [(NSURL *)self scheme];
    v7 = [absoluteString substringFromIndex:{objc_msgSend(scheme, "length")}];

    v8 = [stringCopy stringByAppendingString:v7];
    selfCopy = [NSURL URLWithString:v8];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end