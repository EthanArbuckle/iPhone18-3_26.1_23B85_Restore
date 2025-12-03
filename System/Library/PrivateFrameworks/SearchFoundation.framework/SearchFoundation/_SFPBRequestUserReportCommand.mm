@interface _SFPBRequestUserReportCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRequestUserReportCommand)initWithDictionary:(id)dictionary;
- (_SFPBRequestUserReportCommand)initWithFacade:(id)facade;
- (_SFPBRequestUserReportCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRequestUserReportCommand

- (_SFPBRequestUserReportCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRequestUserReportCommand *)self init];
  if (v5)
  {
    userReportRequest = [facadeCopy userReportRequest];

    if (userReportRequest)
    {
      v7 = [_SFPBUserReportRequest alloc];
      userReportRequest2 = [facadeCopy userReportRequest];
      v9 = [(_SFPBUserReportRequest *)v7 initWithFacade:userReportRequest2];
      [(_SFPBRequestUserReportCommand *)v5 setUserReportRequest:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBRequestUserReportCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBRequestUserReportCommand;
  v5 = [(_SFPBRequestUserReportCommand *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"userReportRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBUserReportRequest alloc] initWithDictionary:v6];
      [(_SFPBRequestUserReportCommand *)v5 setUserReportRequest:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBRequestUserReportCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRequestUserReportCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRequestUserReportCommand *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_userReportRequest)
  {
    userReportRequest = [(_SFPBRequestUserReportCommand *)self userReportRequest];
    dictionaryRepresentation = [userReportRequest dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"userReportRequest"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"userReportRequest"];
    }
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    userReportRequest = [(_SFPBRequestUserReportCommand *)self userReportRequest];
    userReportRequest2 = [equalCopy userReportRequest];
    v7 = userReportRequest2;
    if ((userReportRequest != 0) != (userReportRequest2 == 0))
    {
      userReportRequest3 = [(_SFPBRequestUserReportCommand *)self userReportRequest];
      if (!userReportRequest3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = userReportRequest3;
      userReportRequest4 = [(_SFPBRequestUserReportCommand *)self userReportRequest];
      userReportRequest5 = [equalCopy userReportRequest];
      v12 = [userReportRequest4 isEqual:userReportRequest5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  userReportRequest = [(_SFPBRequestUserReportCommand *)self userReportRequest];
  if (userReportRequest)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end