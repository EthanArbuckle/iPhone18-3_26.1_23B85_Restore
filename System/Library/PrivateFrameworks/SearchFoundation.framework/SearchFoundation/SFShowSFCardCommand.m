@interface SFShowSFCardCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFShowSFCardCommand)initWithCoder:(id)a3;
- (SFShowSFCardCommand)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)embeddedCards;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFShowSFCardCommand

- (SFShowSFCardCommand)initWithProtobuf:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SFShowSFCardCommand;
  v5 = [(SFShowSFCardCommand *)&v12 init];
  if (v5)
  {
    v6 = [v4 card];

    if (v6)
    {
      v7 = [SFCard alloc];
      v8 = [v4 card];
      v9 = [(SFCard *)v7 initWithProtobuf:v8];
      [(SFShowSFCardCommand *)v5 setCard:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SFShowSFCardCommand;
  v3 = [(SFCommand *)&v7 hash];
  v4 = [(SFShowSFCardCommand *)self card];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else if ([(SFShowSFCardCommand *)v4 isMemberOfClass:objc_opt_class()]&& (v13.receiver = self, v13.super_class = SFShowSFCardCommand, [(SFCommand *)&v13 isEqual:v4]))
  {
    v5 = v4;
    v6 = [(SFShowSFCardCommand *)self card];
    v7 = [(SFShowSFCardCommand *)v5 card];
    if ((v6 != 0) == (v7 == 0))
    {
      v11 = 0;
    }

    else
    {
      v8 = [(SFShowSFCardCommand *)self card];
      if (v8)
      {
        v9 = [(SFShowSFCardCommand *)self card];
        v10 = [(SFShowSFCardCommand *)v5 card];
        v11 = [v9 isEqual:v10];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SFShowSFCardCommand;
  v4 = [(SFCommand *)&v8 copyWithZone:a3];
  v5 = [(SFShowSFCardCommand *)self card];
  v6 = [v5 copy];
  [v4 setCard:v6];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBShowSFCardCommand alloc] initWithFacade:self];
  v3 = [(_SFPBShowSFCardCommand *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBShowSFCardCommand alloc] initWithFacade:self];
  v3 = [(_SFPBShowSFCardCommand *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SFShowSFCardCommand;
  [(SFCommand *)&v3 encodeWithCoder:a3];
}

- (SFShowSFCardCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SFShowSFCardCommand *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v7 = [[_SFPBCommand alloc] initWithData:v6];
  v8 = [[SFCommand alloc] initWithProtobuf:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SFCommand *)v8 card];
    [(SFShowSFCardCommand *)v5 setCard:v9];

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

- (id)embeddedCards
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(SFShowSFCardCommand *)self card];

  if (v4)
  {
    v5 = [(SFShowSFCardCommand *)self card];
    [v3 addObject:v5];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(SFShowSFCardCommand *)self card];
    v7 = [v6 cardSections];

    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v15 + 1) + 8 * i) embeddedCards];
          [v3 addObjectsFromArray:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

@end