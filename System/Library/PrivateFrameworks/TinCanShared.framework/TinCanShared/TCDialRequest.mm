@interface TCDialRequest
- (TCDialRequest)initWithURL:(id)l;
- (id)URL;
@end

@implementation TCDialRequest

- (TCDialRequest)initWithURL:(id)l
{
  lCopy = l;
  v18.receiver = self;
  v18.super_class = TCDialRequest;
  v5 = [(TCDialRequest *)&v18 initWithURL:lCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CCACE0] componentsWithURL:lCopy resolvingAgainstBaseURL:1];
    v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"name=%@", @"sessionState"];
    queryItems = [v6 queryItems];
    v9 = [queryItems filteredArrayUsingPredicate:v7];
    firstObject = [v9 firstObject];

    if (firstObject)
    {
      value = [firstObject value];
      [(TCDialRequest *)v5 setState:TCSessionStateFromString(value)];
    }

    else
    {
      [(TCDialRequest *)v5 setState:0];
    }

    v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"name=%@", @"remoteUplinkMuted"];
    queryItems2 = [v6 queryItems];
    v14 = [queryItems2 filteredArrayUsingPredicate:v12];
    firstObject2 = [v14 firstObject];

    value2 = [firstObject2 value];
    -[TCDialRequest setRemoteUplinkMuted:](v5, "setRemoteUplinkMuted:", [value2 isEqualToString:@"YES"]);
  }

  return v5;
}

- (id)URL
{
  v16.receiver = self;
  v16.super_class = TCDialRequest;
  v3 = [(TCDialRequest *)&v16 URL];
  if ([(TCDialRequest *)self state])
  {
    v4 = [MEMORY[0x277CCACE0] componentsWithURL:v3 resolvingAgainstBaseURL:1];
    queryItems = [v4 queryItems];
    if (queryItems)
    {
      queryItems2 = [v4 queryItems];
      array = [queryItems2 mutableCopy];
    }

    else
    {
      array = [MEMORY[0x277CBEB18] array];
    }

    v8 = MEMORY[0x277CCAD18];
    v9 = NSStringFromTCSessionState([(TCDialRequest *)self state]);
    v10 = [v8 queryItemWithName:@"sessionState" value:v9];

    [array addObject:v10];
    v11 = MEMORY[0x277CCAD18];
    if ([(TCDialRequest *)self isRemoteUplinkMuted])
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v13 = [v11 queryItemWithName:@"remoteUplinkMuted" value:v12];
    [array addObject:v13];
    [v4 setQueryItems:array];
    v14 = [v4 URL];

    v3 = v14;
  }

  return v3;
}

@end