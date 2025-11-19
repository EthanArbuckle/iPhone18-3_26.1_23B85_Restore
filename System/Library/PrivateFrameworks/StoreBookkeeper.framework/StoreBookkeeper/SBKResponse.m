@interface SBKResponse
+ (id)responseWithCode:(unint64_t)a3 headerFields:(id)a4 responseDictionary:(id)a5 MIMEType:(id)a6 error:(id)a7;
+ (id)responseWithResponse:(id)a3;
+ (id)responseWithURLResponse:(id)a3 responseDictionary:(id)a4;
- (SBKResponse)initWithCode:(unint64_t)a3 headerFields:(id)a4 responseDictionary:(id)a5 MIMEType:(id)a6 error:(id)a7;
- (SBKResponse)initWithURLResponse:(id)a3 responseDictionary:(id)a4;
- (id)description;
@end

@implementation SBKResponse

- (id)description
{
  v10.receiver = self;
  v10.super_class = SBKResponse;
  v3 = [(SBKResponse *)&v10 description];
  responseDictionary = self->_responseDictionary;
  responseCode = self->_responseCode;
  v6 = objc_opt_class();
  MIMEType = self->_MIMEType;
  v8 = [v3 stringByAppendingFormat:@" [%ld]: responseDictionary = %@, (%@)\n%@", responseCode, v6, MIMEType, self->_responseHeaderFields];

  return v8;
}

- (SBKResponse)initWithCode:(unint64_t)a3 headerFields:(id)a4 responseDictionary:(id)a5 MIMEType:(id)a6 error:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v30.receiver = self;
  v30.super_class = SBKResponse;
  v16 = [(SBKResponse *)&v30 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_error, a7);
    v18 = [v14 copy];
    MIMEType = v17->_MIMEType;
    v17->_MIMEType = v18;

    v17->_responseCode = a3;
    v20 = [v12 copy];
    responseHeaderFields = v17->_responseHeaderFields;
    v17->_responseHeaderFields = v20;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v13 copy];
      responseDictionary = v17->_responseDictionary;
      v17->_responseDictionary = v22;

      v24 = [(NSDictionary *)v17->_responseDictionary objectForKey:@"status"];
      v25 = [SBKResponseStatus responseStatusForStatusCodeNumber:v24];
      responseStatus = v17->_responseStatus;
      v17->_responseStatus = v25;

      if ([(SBKResponseStatus *)v17->_responseStatus isPuntedError])
      {
        v17->_retrySeconds = 30.0;
      }
    }

    else
    {
      v27 = [SBKResponseStatus responseStatusForStatusCodeNumber:&unk_287CA2750];
      v28 = v17->_responseStatus;
      v17->_responseStatus = v27;
    }
  }

  return v17;
}

- (SBKResponse)initWithURLResponse:(id)a3 responseDictionary:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 allHeaderFields];
  v9 = [v7 statusCode];
  v10 = [v7 MIMEType];

  v11 = [[SBKResponse alloc] initWithCode:v9 headerFields:v8 responseDictionary:v6 MIMEType:v10 error:0];
  return v11;
}

+ (id)responseWithResponse:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(objc_opt_class());
  v5 = [v3 responseCode];
  v6 = [v3 responseHeaderFields];
  v7 = [v3 responseDictionary];
  v8 = [v3 MIMEType];
  v9 = [v3 error];

  v10 = [v4 initWithCode:v5 headerFields:v6 responseDictionary:v7 MIMEType:v8 error:v9];

  return v10;
}

+ (id)responseWithCode:(unint64_t)a3 headerFields:(id)a4 responseDictionary:(id)a5 MIMEType:(id)a6 error:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = [objc_alloc(objc_opt_class()) initWithCode:a3 headerFields:v14 responseDictionary:v13 MIMEType:v12 error:v11];

  return v15;
}

+ (id)responseWithURLResponse:(id)a3 responseDictionary:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithURLResponse:v7 responseDictionary:v6];

  return v8;
}

@end