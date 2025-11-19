@interface KTNetworkResponse
- (KTNetworkResponse)initWithCoder:(id)a3;
- (id)description;
- (id)serverHint;
- (id)traceUUID;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KTNetworkResponse

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(KTNetworkResponse *)self serverHint];
  v4 = [v2 stringWithFormat:@"<KTNetworkResponse: SH: %@>", v3];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(KTNetworkResponse *)self request];
  [v4 encodeObject:v5 forKey:@"request"];

  v6 = [(KTNetworkResponse *)self response];
  [v4 encodeObject:v6 forKey:@"response"];

  v7 = [(KTNetworkResponse *)self responseStatus];
  [v4 encodeObject:v7 forKey:@"responseStatus"];

  v8 = [(KTNetworkResponse *)self metadata];
  [v4 encodeObject:v8 forKey:@"metadata"];
}

- (KTNetworkResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = KTNetworkResponse;
  v5 = [(KTNetworkResponse *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"request"];
    [(KTNetworkResponse *)v5 setRequest:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"response"];
    [(KTNetworkResponse *)v5 setResponse:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"responseStatus"];
    [(KTNetworkResponse *)v5 setResponseStatus:v8];

    v9 = objc_opt_class();
    v10 = [v4 decodeDictionaryWithKeysOfClass:v9 objectsOfClass:objc_opt_class() forKey:@"metadata"];
    [(KTNetworkResponse *)v5 setMetadata:v10];

    v11 = v5;
  }

  return v5;
}

- (id)serverHint
{
  v2 = [(KTNetworkResponse *)self metadata];
  v3 = [v2 objectForKeyedSubscript:@"serverHint"];

  return v3;
}

- (id)traceUUID
{
  v2 = [(KTNetworkResponse *)self metadata];
  v3 = [v2 objectForKeyedSubscript:@"traceUUID"];

  return v3;
}

@end