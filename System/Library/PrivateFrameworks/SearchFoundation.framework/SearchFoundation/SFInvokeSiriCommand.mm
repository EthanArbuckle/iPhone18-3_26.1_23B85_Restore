@interface SFInvokeSiriCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFInvokeSiriCommand)initWithCoder:(id)a3;
- (SFInvokeSiriCommand)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFInvokeSiriCommand

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = SFInvokeSiriCommand;
  v3 = [(SFCommand *)&v8 hash];
  v4 = [(SFInvokeSiriCommand *)self utteranceText];
  v5 = [v4 hash];
  v6 = v5 ^ [(SFInvokeSiriCommand *)self serviceProvider];

  return v6 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v11 = 1;
  }

  else
  {
    if ([(SFInvokeSiriCommand *)v6 isMemberOfClass:objc_opt_class()])
    {
      v14.receiver = self;
      v14.super_class = SFInvokeSiriCommand;
      if ([(SFCommand *)&v14 isEqual:v6])
      {
        v7 = v6;
        v8 = [(SFInvokeSiriCommand *)self utteranceText];
        v9 = [(SFInvokeSiriCommand *)v7 utteranceText];
        if ((v8 != 0) == (v9 == 0))
        {
          v11 = 0;
LABEL_14:

          goto LABEL_15;
        }

        v10 = [(SFInvokeSiriCommand *)self utteranceText];
        if (!v10 || (-[SFInvokeSiriCommand utteranceText](self, "utteranceText"), v3 = objc_claimAutoreleasedReturnValue(), -[SFInvokeSiriCommand utteranceText](v7, "utteranceText"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
        {
          v12 = [(SFInvokeSiriCommand *)self serviceProvider];
          v11 = v12 == [(SFInvokeSiriCommand *)v7 serviceProvider];
          if (!v10)
          {
LABEL_13:

            goto LABEL_14;
          }
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_13;
      }
    }

    v11 = 0;
  }

LABEL_15:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SFInvokeSiriCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:a3];
  v5 = [(SFInvokeSiriCommand *)self utteranceText];
  v6 = [v5 copy];
  [v4 setUtteranceText:v6];

  [v4 setServiceProvider:{-[SFInvokeSiriCommand serviceProvider](self, "serviceProvider")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBInvokeSiriCommand alloc] initWithFacade:self];
  v3 = [(_SFPBInvokeSiriCommand *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBInvokeSiriCommand alloc] initWithFacade:self];
  v3 = [(_SFPBInvokeSiriCommand *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFInvokeSiriCommand;
  [(SFCommand *)&v3 encodeWithCoder:a3];
}

- (SFInvokeSiriCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFInvokeSiriCommand *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCommand *)v8 utteranceText];
    [(SFInvokeSiriCommand *)v5 setUtteranceText:v9];

    [(SFInvokeSiriCommand *)v5 setServiceProvider:[(SFCommand *)v8 serviceProvider]];
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

- (SFInvokeSiriCommand)initWithProtobuf:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SFInvokeSiriCommand;
  v5 = [(SFInvokeSiriCommand *)&v10 init];
  if (v5)
  {
    v6 = [v4 utteranceText];

    if (v6)
    {
      v7 = [v4 utteranceText];
      [(SFInvokeSiriCommand *)v5 setUtteranceText:v7];
    }

    if ([v4 serviceProvider])
    {
      -[SFInvokeSiriCommand setServiceProvider:](v5, "setServiceProvider:", [v4 serviceProvider]);
    }

    v8 = v5;
  }

  return v5;
}

@end