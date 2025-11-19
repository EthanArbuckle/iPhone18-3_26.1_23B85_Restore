@interface INHelperFunctions
+ (id)fetchOfferReasonWithRegistrationReason:(unint64_t)a3;
+ (id)urlStringFromFormat:(id)a3 dsid:(id)a4 udid:(id)a5;
@end

@implementation INHelperFunctions

+ (id)fetchOfferReasonWithRegistrationReason:(unint64_t)a3
{
  if (a3 > 7)
  {
    v3 = &ICQFetchOffersReasonUnknown;
  }

  else
  {
    v3 = *(&off_100055688 + a3);
  }

  return *v3;
}

+ (id)urlStringFromFormat:(id)a3 dsid:(id)a4 udid:(id)a5
{
  v7 = kAAProtocolPersonIDToken;
  v8 = a5;
  v9 = [a3 stringByReplacingOccurrencesOfString:v7 withString:a4];
  v10 = [v9 stringByReplacingOccurrencesOfString:kAAProtocolUDIDToken withString:v8];

  v11 = +[NSCharacterSet URLQueryAllowedCharacterSet];
  v12 = [v10 stringByAddingPercentEncodingWithAllowedCharacters:v11];

  return v12;
}

@end