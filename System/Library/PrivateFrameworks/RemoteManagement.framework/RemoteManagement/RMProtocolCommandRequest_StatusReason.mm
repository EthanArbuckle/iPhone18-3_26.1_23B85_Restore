@interface RMProtocolCommandRequest_StatusReason
+ (id)failedWithUnknownPayloadKeys:(id)a3;
+ (id)reasonWithError:(id)a3;
@end

@implementation RMProtocolCommandRequest_StatusReason

+ (id)reasonWithError:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:RMErrorUserInfoKeyDescriptionKey];

  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:NSDebugDescriptionErrorKey];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = [v4 localizedDescription];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [v4 localizedFailureReason];
    }

    v10 = v13;
  }

  if ([v6 length])
  {
    v14 = [a1 buildWithCode:v6 description:v10 details:0];
  }

  else
  {
    v15 = [NSString stringWithFormat:@"An unknown error occurred: %@", v10];
    v21[0] = @"Domain";
    v16 = [v4 domain];
    v21[1] = @"Code";
    v22[0] = v16;
    v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 code]);
    v22[1] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
    v19 = [RMModelAnyPayload buildFromDictionary:v18];
    v14 = [a1 buildWithCode:@"Error.Unknown" description:v15 details:v19];
  }

  return v14;
}

+ (id)failedWithUnknownPayloadKeys:(id)a3
{
  v9 = @"UnknownPayloadKeys";
  v10 = a3;
  v4 = a3;
  v5 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v6 = [RMModelAnyPayload buildFromDictionary:v5];

  v7 = [a1 buildWithCode:@"Error.UnknownPayloadKeys" description:@"Unknown Payload Keys" details:v6];

  return v7;
}

@end