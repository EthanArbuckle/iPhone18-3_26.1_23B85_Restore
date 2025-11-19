@interface NSURL
- (BOOL)isHTTP;
- (id)changeSchemeTo:(int64_t)a3;
- (id)changeSchemeToString:(id)a3;
- (id)queryItemForKey:(id)a3;
- (id)removeQueryItemForKey:(id)a3;
- (id)setQueryItem:(id)a3 forKey:(id)a4;
@end

@implementation NSURL

- (id)queryItemForKey:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [NSException raise:NSInvalidArgumentException format:@"%@ key cannot be nil", objc_opt_class()];
  }

  v5 = [NSURLComponents componentsWithURL:self resolvingAgainstBaseURL:1];
  v6 = [v5 queryItems];

  v7 = [NSPredicate predicateWithFormat:@"name = %@", v4];
  v8 = [v6 filteredArrayUsingPredicate:v7];
  v9 = [v8 firstObject];

  v10 = [v9 value];

  return v10;
}

- (id)removeQueryItemForKey:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [NSException raise:NSInvalidArgumentException format:@"%@ key cannot be nil", objc_opt_class()];
  }

  v5 = [NSURLComponents componentsWithURL:self resolvingAgainstBaseURL:0];
  v6 = [v5 queryItems];
  v7 = [NSPredicate predicateWithFormat:@"name != %@", v4];
  v8 = [v6 filteredArrayUsingPredicate:v7];
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

- (id)setQueryItem:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [NSException raise:NSInvalidArgumentException format:@"%@ key cannot be nil", objc_opt_class()];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  [NSException raise:NSInvalidArgumentException format:@"%@ value cannot be nil", objc_opt_class()];
LABEL_3:
  if ([v7 length])
  {
    v8 = [NSURLComponents componentsWithURL:self resolvingAgainstBaseURL:0];
    v9 = [v8 queryItems];
    if (v9)
    {
      v10 = [v8 queryItems];
    }

    else
    {
      v10 = &__NSArray0__struct;
    }

    v12 = [NSPredicate predicateWithFormat:@"name != %@", v7];
    v13 = [v10 filteredArrayUsingPredicate:v12];
    v14 = [NSURLQueryItem queryItemWithName:v7 value:v6];
    v15 = [v13 arrayByAddingObject:v14];
    [v8 setQueryItems:v15];

    v11 = [v8 URL];
  }

  else
  {
    v11 = self;
  }

  return v11;
}

- (BOOL)isHTTP
{
  v2 = [(NSURL *)self scheme];
  v3 = [v2 isEqualToString:@"http"];

  return v3;
}

- (id)changeSchemeTo:(int64_t)a3
{
  switch(a3)
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
      v4 = [(NSURL *)self changeSchemeToString:*v3];
      goto LABEL_9;
  }

  v4 = self;
LABEL_9:

  return v4;
}

- (id)changeSchemeToString:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(NSURL *)self absoluteString];
    v6 = [(NSURL *)self scheme];
    v7 = [v5 substringFromIndex:{objc_msgSend(v6, "length")}];

    v8 = [v4 stringByAppendingString:v7];
    v9 = [NSURL URLWithString:v8];
  }

  else
  {
    v9 = self;
  }

  return v9;
}

@end