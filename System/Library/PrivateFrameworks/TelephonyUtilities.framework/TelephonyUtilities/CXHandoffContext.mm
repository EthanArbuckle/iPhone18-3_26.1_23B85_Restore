@interface CXHandoffContext
+ (id)providerIdentifierForHandoffActivityUserInfo:(id)info;
- (NSDictionary)handoffActivityUserInfo;
- (id)initWithHandoffActivityUserInfo:(id)info;
@end

@implementation CXHandoffContext

- (id)initWithHandoffActivityUserInfo:(id)info
{
  v4 = TUCallUserActivityProviderIdentifierKey;
  infoCopy = info;
  v6 = [infoCopy objectForKeyedSubscript:v4];

  if (v6)
  {
    self = [(CXHandoffContext *)self initWithDictionaryRepresentation:infoCopy];
    v7 = infoCopy;
  }

  else
  {
    v7 = [infoCopy objectForKeyedSubscript:@"TUCallUserActivityCTInfoKey"];

    v8 = [v7 objectForKeyedSubscript:@"kCTCallDirection"];
    v9 = [v7 objectForKeyedSubscript:@"kCTCallPhoneNumber"];
    v10 = v9;
    if (v8 && v9 && (+[NSUUID UUID](NSUUID, "UUID"), v11 = objc_claimAutoreleasedReturnValue(), [v11 UUIDString], v12 = objc_claimAutoreleasedReturnValue(), self = -[CXHandoffContext initWithHandoffIdentifier:](self, "initWithHandoffIdentifier:", v12), v12, v11, self))
    {
      -[CXHandoffContext setOutgoing:](self, "setOutgoing:", [v8 isEqualToString:@"kCTCallDirectionOutgoing"]);
      v13 = [[CXHandle alloc] initWithType:2 value:v10];
      [(CXHandoffContext *)self setRemoteHandle:v13];

      [(CXHandoffContext *)self setContext:v7];
    }

    else
    {

      self = 0;
    }
  }

  return self;
}

- (NSDictionary)handoffActivityUserInfo
{
  dictionaryRepresentation = [(CXHandoffContext *)self dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  context = [(CXHandoffContext *)self context];
  v6 = [context mutableCopy];

  if ([(CXHandoffContext *)self isOutgoing])
  {
    v7 = @"kCTCallDirectionOutgoing";
  }

  else
  {
    v7 = @"kCTCallDirectionIncoming";
  }

  [v6 setObject:v7 forKeyedSubscript:@"kCTCallDirection"];
  remoteHandle = [(CXHandoffContext *)self remoteHandle];
  value = [remoteHandle value];
  [v6 setObject:value forKeyedSubscript:@"kCTCallPhoneNumber"];

  v10 = [v6 copy];
  [v4 setObject:v10 forKeyedSubscript:@"TUCallUserActivityCTInfoKey"];

  [v4 setObject:&off_10063EC00 forKeyedSubscript:@"TUCallUserActivityServiceKey"];
  v11 = [v4 copy];

  return v11;
}

+ (id)providerIdentifierForHandoffActivityUserInfo:(id)info
{
  v3 = [info objectForKeyedSubscript:TUCallUserActivityProviderIdentifierKey];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"com.apple.coretelephony";
  }

  v6 = v5;

  return v5;
}

@end