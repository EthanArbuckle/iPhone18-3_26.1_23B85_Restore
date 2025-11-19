@interface TCDialRequest
- (TCDialRequest)initWithURL:(id)a3;
- (id)URL;
@end

@implementation TCDialRequest

- (TCDialRequest)initWithURL:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = TCDialRequest;
  v5 = [(TCDialRequest *)&v18 initWithURL:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CCACE0] componentsWithURL:v4 resolvingAgainstBaseURL:1];
    v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"name=%@", @"sessionState"];
    v8 = [v6 queryItems];
    v9 = [v8 filteredArrayUsingPredicate:v7];
    v10 = [v9 firstObject];

    if (v10)
    {
      v11 = [v10 value];
      [(TCDialRequest *)v5 setState:TCSessionStateFromString(v11)];
    }

    else
    {
      [(TCDialRequest *)v5 setState:0];
    }

    v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"name=%@", @"remoteUplinkMuted"];
    v13 = [v6 queryItems];
    v14 = [v13 filteredArrayUsingPredicate:v12];
    v15 = [v14 firstObject];

    v16 = [v15 value];
    -[TCDialRequest setRemoteUplinkMuted:](v5, "setRemoteUplinkMuted:", [v16 isEqualToString:@"YES"]);
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
    v5 = [v4 queryItems];
    if (v5)
    {
      v6 = [v4 queryItems];
      v7 = [v6 mutableCopy];
    }

    else
    {
      v7 = [MEMORY[0x277CBEB18] array];
    }

    v8 = MEMORY[0x277CCAD18];
    v9 = NSStringFromTCSessionState([(TCDialRequest *)self state]);
    v10 = [v8 queryItemWithName:@"sessionState" value:v9];

    [v7 addObject:v10];
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
    [v7 addObject:v13];
    [v4 setQueryItems:v7];
    v14 = [v4 URL];

    v3 = v14;
  }

  return v3;
}

@end