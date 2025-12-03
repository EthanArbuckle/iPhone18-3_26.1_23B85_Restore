@interface INRegistrationResponse
- (INRegistrationResponse)initWithHTTPResponse:(id)response data:(id)data;
- (unint64_t)timeToLive;
@end

@implementation INRegistrationResponse

- (INRegistrationResponse)initWithHTTPResponse:(id)response data:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = INRegistrationResponse;
  v7 = [(INRegistrationResponse *)&v9 initWithHTTPResponse:response data:dataCopy];
  if (v7 && (!response || !dataCopy || ![dataCopy length]))
  {
    v7->_isResponseEmpty = 1;
  }

  return v7;
}

- (unint64_t)timeToLive
{
  responseDictionary = [(INRegistrationResponse *)self responseDictionary];
  v3 = [responseDictionary objectForKey:@"registration-ttl-in-sec"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

@end