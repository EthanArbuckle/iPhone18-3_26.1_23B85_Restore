@interface RWIProtocolPageSearchResult
- (NSString)frameId;
- (NSString)requestId;
- (NSString)url;
- (RWIProtocolPageSearchResult)initWithUrl:(id)url frameId:(id)id matchesCount:(double)count;
- (double)matchesCount;
- (void)setFrameId:(id)id;
- (void)setMatchesCount:(double)count;
- (void)setRequestId:(id)id;
- (void)setUrl:(id)url;
@end

@implementation RWIProtocolPageSearchResult

- (RWIProtocolPageSearchResult)initWithUrl:(id)url frameId:(id)id matchesCount:(double)count
{
  urlCopy = url;
  idCopy = id;
  v13.receiver = self;
  v13.super_class = RWIProtocolPageSearchResult;
  v10 = [(RWIProtocolJSONObject *)&v13 init];
  if (v10)
  {
    if (!urlCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"url"}];
    }

    if (!idCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"frameId"}];
    }

    [(RWIProtocolPageSearchResult *)v10 setUrl:urlCopy];
    [(RWIProtocolPageSearchResult *)v10 setFrameId:idCopy];
    [(RWIProtocolPageSearchResult *)v10 setMatchesCount:count];
    v11 = v10;
  }

  return v10;
}

- (void)setUrl:(id)url
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageSearchResult;
  [(RWIProtocolJSONObject *)&v3 setString:url forKey:@"url"];
}

- (NSString)url
{
  v4.receiver = self;
  v4.super_class = RWIProtocolPageSearchResult;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"url"];

  return v2;
}

- (void)setFrameId:(id)id
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageSearchResult;
  [(RWIProtocolJSONObject *)&v3 setString:id forKey:@"frameId"];
}

- (NSString)frameId
{
  v4.receiver = self;
  v4.super_class = RWIProtocolPageSearchResult;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"frameId"];

  return v2;
}

- (void)setMatchesCount:(double)count
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageSearchResult;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"matchesCount" forKey:count];
}

- (double)matchesCount
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageSearchResult;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"matchesCount"];
  return result;
}

- (void)setRequestId:(id)id
{
  v3.receiver = self;
  v3.super_class = RWIProtocolPageSearchResult;
  [(RWIProtocolJSONObject *)&v3 setString:id forKey:@"requestId"];
}

- (NSString)requestId
{
  v4.receiver = self;
  v4.super_class = RWIProtocolPageSearchResult;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"requestId"];

  return v2;
}

@end