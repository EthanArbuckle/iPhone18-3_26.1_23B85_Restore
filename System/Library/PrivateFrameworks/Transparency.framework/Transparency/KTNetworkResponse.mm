@interface KTNetworkResponse
- (KTNetworkResponse)initWithCoder:(id)coder;
- (id)description;
- (id)serverHint;
- (id)traceUUID;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KTNetworkResponse

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  serverHint = [(KTNetworkResponse *)self serverHint];
  v4 = [v2 stringWithFormat:@"<KTNetworkResponse: SH: %@>", serverHint];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  request = [(KTNetworkResponse *)self request];
  [coderCopy encodeObject:request forKey:@"request"];

  response = [(KTNetworkResponse *)self response];
  [coderCopy encodeObject:response forKey:@"response"];

  responseStatus = [(KTNetworkResponse *)self responseStatus];
  [coderCopy encodeObject:responseStatus forKey:@"responseStatus"];

  metadata = [(KTNetworkResponse *)self metadata];
  [coderCopy encodeObject:metadata forKey:@"metadata"];
}

- (KTNetworkResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = KTNetworkResponse;
  v5 = [(KTNetworkResponse *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"request"];
    [(KTNetworkResponse *)v5 setRequest:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"response"];
    [(KTNetworkResponse *)v5 setResponse:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"responseStatus"];
    [(KTNetworkResponse *)v5 setResponseStatus:v8];

    v9 = objc_opt_class();
    v10 = [coderCopy decodeDictionaryWithKeysOfClass:v9 objectsOfClass:objc_opt_class() forKey:@"metadata"];
    [(KTNetworkResponse *)v5 setMetadata:v10];

    v11 = v5;
  }

  return v5;
}

- (id)serverHint
{
  metadata = [(KTNetworkResponse *)self metadata];
  v3 = [metadata objectForKeyedSubscript:@"serverHint"];

  return v3;
}

- (id)traceUUID
{
  metadata = [(KTNetworkResponse *)self metadata];
  v3 = [metadata objectForKeyedSubscript:@"traceUUID"];

  return v3;
}

@end