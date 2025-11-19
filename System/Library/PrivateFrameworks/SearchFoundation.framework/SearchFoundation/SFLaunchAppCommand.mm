@interface SFLaunchAppCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFLaunchAppCommand)initWithCoder:(id)a3;
- (SFLaunchAppCommand)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFLaunchAppCommand

- (SFLaunchAppCommand)initWithProtobuf:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SFLaunchAppCommand;
  v5 = [(SFLaunchAppCommand *)&v10 init];
  if (v5)
  {
    v6 = [v4 applicationBundleIdentifier];

    if (v6)
    {
      v7 = [v4 applicationBundleIdentifier];
      [(SFLaunchAppCommand *)v5 setApplicationBundleIdentifier:v7];
    }

    if ([v4 isOnenessApplication])
    {
      -[SFLaunchAppCommand setIsOnenessApplication:](v5, "setIsOnenessApplication:", [v4 isOnenessApplication]);
    }

    v8 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = SFLaunchAppCommand;
  v3 = [(SFCommand *)&v8 hash];
  v4 = [(SFLaunchAppCommand *)self applicationBundleIdentifier];
  v5 = [v4 hash];
  v6 = v5 ^ [(SFLaunchAppCommand *)self isOnenessApplication];

  return v6 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if ([(SFLaunchAppCommand *)v6 isMemberOfClass:objc_opt_class()])
    {
      v14.receiver = self;
      v14.super_class = SFLaunchAppCommand;
      if ([(SFCommand *)&v14 isEqual:v6])
      {
        v7 = v6;
        v8 = [(SFLaunchAppCommand *)self applicationBundleIdentifier];
        v9 = [(SFLaunchAppCommand *)v7 applicationBundleIdentifier];
        if ((v8 != 0) == (v9 == 0))
        {
          LOBYTE(v11) = 0;
LABEL_14:

          goto LABEL_15;
        }

        v10 = [(SFLaunchAppCommand *)self applicationBundleIdentifier];
        if (!v10 || (-[SFLaunchAppCommand applicationBundleIdentifier](self, "applicationBundleIdentifier"), v3 = objc_claimAutoreleasedReturnValue(), -[SFLaunchAppCommand applicationBundleIdentifier](v7, "applicationBundleIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          v12 = [(SFLaunchAppCommand *)self isOnenessApplication];
          v11 = v12 ^ [(SFLaunchAppCommand *)v7 isOnenessApplication]^ 1;
          if (!v10)
          {
LABEL_13:

            goto LABEL_14;
          }
        }

        else
        {
          LOBYTE(v11) = 0;
        }

        goto LABEL_13;
      }
    }

    LOBYTE(v11) = 0;
  }

LABEL_15:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SFLaunchAppCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:a3];
  v5 = [(SFLaunchAppCommand *)self applicationBundleIdentifier];
  v6 = [v5 copy];
  [v4 setApplicationBundleIdentifier:v6];

  [v4 setIsOnenessApplication:{-[SFLaunchAppCommand isOnenessApplication](self, "isOnenessApplication")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBLaunchAppCommand alloc] initWithFacade:self];
  v3 = [(_SFPBLaunchAppCommand *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBLaunchAppCommand alloc] initWithFacade:self];
  v3 = [(_SFPBLaunchAppCommand *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFLaunchAppCommand;
  [(SFCommand *)&v3 encodeWithCoder:a3];
}

- (SFLaunchAppCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFLaunchAppCommand *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCommand *)v8 applicationBundleIdentifier];
    [(SFLaunchAppCommand *)v5 setApplicationBundleIdentifier:v9];

    [(SFLaunchAppCommand *)v5 setIsOnenessApplication:[(SFCommand *)v8 isOnenessApplication]];
    v10 = [(SFCommand *)v8 commandDetail];
    [(SFCommand *)v5 setCommandDetail:v10];

    v11 = [(SFCommand *)v8 normalizedTopic];
    [(SFCommand *)v5 setNormalizedTopic:v11];

    v12 = [(SFCommand *)v8 backendData];
    [(SFCommand *)v5 setBackendData:v12];

    v13 = [(SFCommand *)v8 commandReference];
    [(SFCommand *)v5 setCommandReference:v13];
  }

  return v5;
}

@end