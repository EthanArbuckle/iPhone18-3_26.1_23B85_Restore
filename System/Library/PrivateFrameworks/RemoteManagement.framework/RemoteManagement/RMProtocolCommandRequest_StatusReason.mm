@interface RMProtocolCommandRequest_StatusReason
+ (id)failedWithUnknownPayloadKeys:(id)keys;
+ (id)reasonWithError:(id)error;
@end

@implementation RMProtocolCommandRequest_StatusReason

+ (id)reasonWithError:(id)error
{
  errorCopy = error;
  userInfo = [errorCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:RMErrorUserInfoKeyDescriptionKey];

  userInfo2 = [errorCopy userInfo];
  v8 = [userInfo2 objectForKeyedSubscript:NSDebugDescriptionErrorKey];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    localizedDescription = [errorCopy localizedDescription];
    v12 = localizedDescription;
    if (localizedDescription)
    {
      localizedFailureReason = localizedDescription;
    }

    else
    {
      localizedFailureReason = [errorCopy localizedFailureReason];
    }

    v10 = localizedFailureReason;
  }

  if ([v6 length])
  {
    v14 = [self buildWithCode:v6 description:v10 details:0];
  }

  else
  {
    v15 = [NSString stringWithFormat:@"An unknown error occurred: %@", v10];
    v21[0] = @"Domain";
    domain = [errorCopy domain];
    v21[1] = @"Code";
    v22[0] = domain;
    v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
    v22[1] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
    v19 = [RMModelAnyPayload buildFromDictionary:v18];
    v14 = [self buildWithCode:@"Error.Unknown" description:v15 details:v19];
  }

  return v14;
}

+ (id)failedWithUnknownPayloadKeys:(id)keys
{
  v9 = @"UnknownPayloadKeys";
  keysCopy = keys;
  keysCopy2 = keys;
  v5 = [NSDictionary dictionaryWithObjects:&keysCopy forKeys:&v9 count:1];
  v6 = [RMModelAnyPayload buildFromDictionary:v5];

  v7 = [self buildWithCode:@"Error.UnknownPayloadKeys" description:@"Unknown Payload Keys" details:v6];

  return v7;
}

@end