@interface SFDomainEngagementScore
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFDomainEngagementScore)initWithCoder:(id)a3;
- (SFDomainEngagementScore)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFDomainEngagementScore

- (SFDomainEngagementScore)initWithProtobuf:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SFDomainEngagementScore;
  v5 = [(SFDomainEngagementScore *)&v15 init];
  if (v5)
  {
    if ([v4 domain])
    {
      -[SFDomainEngagementScore setDomain:](v5, "setDomain:", [v4 domain]);
    }

    if ([v4 scoreConfidence])
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "scoreConfidence")}];
      [(SFDomainEngagementScore *)v5 setScoreConfidence:v6];
    }

    [v4 score];
    if (v7 != 0.0)
    {
      v8 = MEMORY[0x1E696AD98];
      [v4 score];
      v9 = [v8 numberWithFloat:?];
      [(SFDomainEngagementScore *)v5 setScore:v9];
    }

    [v4 iFunScore];
    if (v10 != 0.0)
    {
      v11 = MEMORY[0x1E696AD98];
      [v4 iFunScore];
      v12 = [v11 numberWithFloat:?];
      [(SFDomainEngagementScore *)v5 setIFunScore:v12];
    }

    v13 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(SFDomainEngagementScore *)self domain];
  v4 = [(SFDomainEngagementScore *)self scoreConfidence];
  v5 = [v4 hash] ^ v3;
  v6 = [(SFDomainEngagementScore *)self score];
  v7 = [v6 hash];
  v8 = [(SFDomainEngagementScore *)self iFunScore];
  v9 = v7 ^ [v8 hash];

  return v5 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v12 = 1;
  }

  else
  {
    if ([(SFDomainEngagementScore *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(SFDomainEngagementScore *)self domain];
      if (v7 != [(SFDomainEngagementScore *)v6 domain])
      {
        v12 = 0;
LABEL_33:

        goto LABEL_34;
      }

      v8 = [(SFDomainEngagementScore *)self scoreConfidence];
      v9 = [(SFDomainEngagementScore *)v6 scoreConfidence];
      if ((v8 != 0) == (v9 == 0))
      {
        v12 = 0;
LABEL_32:

        goto LABEL_33;
      }

      v10 = [(SFDomainEngagementScore *)self scoreConfidence];
      if (v10)
      {
        v3 = [(SFDomainEngagementScore *)self scoreConfidence];
        v11 = [(SFDomainEngagementScore *)v6 scoreConfidence];
        if (![v3 isEqual:v11])
        {
          v12 = 0;
          goto LABEL_30;
        }

        v32 = v11;
      }

      v13 = [(SFDomainEngagementScore *)self score];
      v14 = [(SFDomainEngagementScore *)v6 score];
      v15 = v14;
      if ((v13 != 0) == (v14 == 0))
      {

        v12 = 0;
        goto LABEL_29;
      }

      v16 = [(SFDomainEngagementScore *)self score];
      if (v16)
      {
        v26 = v13;
        v17 = [(SFDomainEngagementScore *)self score];
        v28 = [(SFDomainEngagementScore *)v6 score];
        v29 = v17;
        if (![v17 isEqual:?])
        {
          v12 = 0;
          v13 = v26;
          goto LABEL_27;
        }

        v30 = v16;
        v31 = v3;
        v13 = v26;
      }

      else
      {
        v30 = 0;
        v31 = v3;
      }

      v18 = [(SFDomainEngagementScore *)self iFunScore];
      v19 = [(SFDomainEngagementScore *)v6 iFunScore];
      if ((v18 != 0) == (v19 == 0))
      {

        v12 = 0;
        v16 = v30;
        v3 = v31;
        if (!v30)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v25 = v18;
        v27 = v19;
        v20 = [(SFDomainEngagementScore *)self iFunScore];
        v16 = v30;
        if (v20)
        {
          v24 = v20;
          v23 = [(SFDomainEngagementScore *)self iFunScore];
          v21 = [(SFDomainEngagementScore *)v6 iFunScore];
          v12 = [v23 isEqual:?];
        }

        else
        {

          v12 = 1;
        }

        v3 = v31;
        if (!v30)
        {
          goto LABEL_28;
        }
      }

LABEL_27:

LABEL_28:
LABEL_29:
      v11 = v32;
      if (!v10)
      {
LABEL_31:

        goto LABEL_32;
      }

LABEL_30:

      goto LABEL_31;
    }

    v12 = 0;
  }

LABEL_34:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setDomain:{-[SFDomainEngagementScore domain](self, "domain")}];
  v5 = [(SFDomainEngagementScore *)self scoreConfidence];
  v6 = [v5 copy];
  [v4 setScoreConfidence:v6];

  v7 = [(SFDomainEngagementScore *)self score];
  v8 = [v7 copy];
  [v4 setScore:v8];

  v9 = [(SFDomainEngagementScore *)self iFunScore];
  v10 = [v9 copy];
  [v4 setIFunScore:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBDomainEngagementScore alloc] initWithFacade:self];
  v3 = [(_SFPBDomainEngagementScore *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBDomainEngagementScore alloc] initWithFacade:self];
  v3 = [(_SFPBDomainEngagementScore *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBDomainEngagementScore alloc] initWithFacade:self];
  v5 = [(_SFPBDomainEngagementScore *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFDomainEngagementScore)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBDomainEngagementScore alloc] initWithData:v5];
  v7 = [(SFDomainEngagementScore *)self initWithProtobuf:v6];

  return v7;
}

@end