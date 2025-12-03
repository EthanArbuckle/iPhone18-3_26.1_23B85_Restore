@interface SFRequestUserReportCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFRequestUserReportCommand)initWithCoder:(id)coder;
- (SFRequestUserReportCommand)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFRequestUserReportCommand

- (SFRequestUserReportCommand)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFRequestUserReportCommand;
  v5 = [(SFRequestUserReportCommand *)&v12 init];
  if (v5)
  {
    userReportRequest = [protobufCopy userReportRequest];

    if (userReportRequest)
    {
      v7 = [SFUserReportRequest alloc];
      userReportRequest2 = [protobufCopy userReportRequest];
      v9 = [(SFUserReportRequest *)v7 initWithProtobuf:userReportRequest2];
      [(SFRequestUserReportCommand *)v5 setUserReportRequest:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFRequestUserReportCommand;
  v3 = [(SFCommand *)&v7 hash];
  userReportRequest = [(SFRequestUserReportCommand *)self userReportRequest];
  v5 = [userReportRequest hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if ([(SFRequestUserReportCommand *)equalCopy isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFRequestUserReportCommand, [(SFCommand *)&v13 isEqual:equalCopy]))
  {
    v5 = equalCopy;
    userReportRequest = [(SFRequestUserReportCommand *)self userReportRequest];
    userReportRequest2 = [(SFRequestUserReportCommand *)v5 userReportRequest];
    if ((userReportRequest != 0) == (userReportRequest2 == 0))
    {
      v11 = 0;
    }

    else
    {
      userReportRequest3 = [(SFRequestUserReportCommand *)self userReportRequest];
      if (userReportRequest3)
      {
        userReportRequest4 = [(SFRequestUserReportCommand *)self userReportRequest];
        userReportRequest5 = [(SFRequestUserReportCommand *)v5 userReportRequest];
        v11 = [userReportRequest4 isEqual:userReportRequest5];
      }

      else
      {
        v11 = 1;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SFRequestUserReportCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:zone];
  userReportRequest = [(SFRequestUserReportCommand *)self userReportRequest];
  v6 = [userReportRequest copy];
  [v4 setUserReportRequest:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRequestUserReportCommand alloc] initWithFacade:self];
  jsonData = [(_SFPBRequestUserReportCommand *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRequestUserReportCommand alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRequestUserReportCommand *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SFRequestUserReportCommand;
  [(SFCommand *)&v3 encodeWithCoder:coder];
}

- (SFRequestUserReportCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SFRequestUserReportCommand *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    userReportRequest = [(SFCommand *)v8 userReportRequest];
    [(SFRequestUserReportCommand *)v5 setUserReportRequest:userReportRequest];

    commandDetail = [(SFCommand *)v8 commandDetail];
    [(SFCommand *)v5 setCommandDetail:commandDetail];

    normalizedTopic = [(SFCommand *)v8 normalizedTopic];
    [(SFCommand *)v5 setNormalizedTopic:normalizedTopic];

    backendData = [(SFCommand *)v8 backendData];
    [(SFCommand *)v5 setBackendData:backendData];

    commandReference = [(SFCommand *)v8 commandReference];
    [(SFCommand *)v5 setCommandReference:commandReference];
  }

  return v5;
}

@end