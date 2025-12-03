@interface SBKResponse
+ (id)responseWithCode:(unint64_t)code headerFields:(id)fields responseDictionary:(id)dictionary MIMEType:(id)type error:(id)error;
+ (id)responseWithResponse:(id)response;
+ (id)responseWithURLResponse:(id)response responseDictionary:(id)dictionary;
- (SBKResponse)initWithCode:(unint64_t)code headerFields:(id)fields responseDictionary:(id)dictionary MIMEType:(id)type error:(id)error;
- (SBKResponse)initWithURLResponse:(id)response responseDictionary:(id)dictionary;
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

- (SBKResponse)initWithCode:(unint64_t)code headerFields:(id)fields responseDictionary:(id)dictionary MIMEType:(id)type error:(id)error
{
  fieldsCopy = fields;
  dictionaryCopy = dictionary;
  typeCopy = type;
  errorCopy = error;
  v30.receiver = self;
  v30.super_class = SBKResponse;
  v16 = [(SBKResponse *)&v30 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_error, error);
    v18 = [typeCopy copy];
    MIMEType = v17->_MIMEType;
    v17->_MIMEType = v18;

    v17->_responseCode = code;
    v20 = [fieldsCopy copy];
    responseHeaderFields = v17->_responseHeaderFields;
    v17->_responseHeaderFields = v20;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [dictionaryCopy copy];
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

- (SBKResponse)initWithURLResponse:(id)response responseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  responseCopy = response;
  allHeaderFields = [responseCopy allHeaderFields];
  statusCode = [responseCopy statusCode];
  mIMEType = [responseCopy MIMEType];

  v11 = [[SBKResponse alloc] initWithCode:statusCode headerFields:allHeaderFields responseDictionary:dictionaryCopy MIMEType:mIMEType error:0];
  return v11;
}

+ (id)responseWithResponse:(id)response
{
  responseCopy = response;
  v4 = objc_alloc(objc_opt_class());
  responseCode = [responseCopy responseCode];
  responseHeaderFields = [responseCopy responseHeaderFields];
  responseDictionary = [responseCopy responseDictionary];
  mIMEType = [responseCopy MIMEType];
  error = [responseCopy error];

  v10 = [v4 initWithCode:responseCode headerFields:responseHeaderFields responseDictionary:responseDictionary MIMEType:mIMEType error:error];

  return v10;
}

+ (id)responseWithCode:(unint64_t)code headerFields:(id)fields responseDictionary:(id)dictionary MIMEType:(id)type error:(id)error
{
  errorCopy = error;
  typeCopy = type;
  dictionaryCopy = dictionary;
  fieldsCopy = fields;
  v15 = [objc_alloc(objc_opt_class()) initWithCode:code headerFields:fieldsCopy responseDictionary:dictionaryCopy MIMEType:typeCopy error:errorCopy];

  return v15;
}

+ (id)responseWithURLResponse:(id)response responseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  responseCopy = response;
  v8 = [[self alloc] initWithURLResponse:responseCopy responseDictionary:dictionaryCopy];

  return v8;
}

@end