@interface INHelperFunctions
+ (id)fetchOfferReasonWithRegistrationReason:(unint64_t)reason;
+ (id)urlStringFromFormat:(id)format dsid:(id)dsid udid:(id)udid;
@end

@implementation INHelperFunctions

+ (id)fetchOfferReasonWithRegistrationReason:(unint64_t)reason
{
  if (reason > 7)
  {
    v3 = &ICQFetchOffersReasonUnknown;
  }

  else
  {
    v3 = *(&off_100055688 + reason);
  }

  return *v3;
}

+ (id)urlStringFromFormat:(id)format dsid:(id)dsid udid:(id)udid
{
  v7 = kAAProtocolPersonIDToken;
  udidCopy = udid;
  v9 = [format stringByReplacingOccurrencesOfString:v7 withString:dsid];
  v10 = [v9 stringByReplacingOccurrencesOfString:kAAProtocolUDIDToken withString:udidCopy];

  v11 = +[NSCharacterSet URLQueryAllowedCharacterSet];
  v12 = [v10 stringByAddingPercentEncodingWithAllowedCharacters:v11];

  return v12;
}

@end