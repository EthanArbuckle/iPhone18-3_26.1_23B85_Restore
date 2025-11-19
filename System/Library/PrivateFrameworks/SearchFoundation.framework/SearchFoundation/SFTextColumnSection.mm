@interface SFTextColumnSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFTextColumnSection)initWithCoder:(id)a3;
- (SFTextColumnSection)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFTextColumnSection

- (SFTextColumnSection)initWithProtobuf:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = SFTextColumnSection;
  v5 = [(SFTextColumnSection *)&v20 init];
  if (v5)
  {
    v6 = [v4 textLines];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [v4 textLines];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if (*(*(&v16 + 1) + 8 * i))
          {
            [v7 addObject:?];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }

    [(SFTextColumnSection *)v5 setTextLines:v7];
    if ([v4 textNoWrap])
    {
      -[SFTextColumnSection setTextNoWrap:](v5, "setTextNoWrap:", [v4 textNoWrap]);
    }

    if ([v4 textWeight])
    {
      -[SFTextColumnSection setTextWeight:](v5, "setTextWeight:", [v4 textWeight]);
    }

    v13 = v5;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v3 = [(SFTextColumnSection *)self textLines];
  v4 = [v3 hash];
  v5 = [(SFTextColumnSection *)self textNoWrap];
  v6 = v4 ^ [(SFTextColumnSection *)self textWeight];

  return v6 ^ v5;
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
    if ([(SFTextColumnSection *)v6 isMemberOfClass:objc_opt_class()])
    {
      v7 = v6;
      v8 = [(SFTextColumnSection *)self textLines];
      v9 = [(SFTextColumnSection *)v7 textLines];
      if ((v8 != 0) == (v9 == 0))
      {
        v11 = 0;
LABEL_16:

        goto LABEL_17;
      }

      v10 = [(SFTextColumnSection *)self textLines];
      if (!v10 || (-[SFTextColumnSection textLines](self, "textLines"), v3 = objc_claimAutoreleasedReturnValue(), -[SFTextColumnSection textLines](v7, "textLines"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        v12 = [(SFTextColumnSection *)self textNoWrap];
        if (v12 == [(SFTextColumnSection *)v7 textNoWrap])
        {
          v13 = [(SFTextColumnSection *)self textWeight];
          v11 = v13 == [(SFTextColumnSection *)v7 textWeight];
          if (!v10)
          {
LABEL_15:

            goto LABEL_16;
          }
        }

        else
        {
          v11 = 0;
          if (!v10)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_15;
    }

    v11 = 0;
  }

LABEL_17:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFTextColumnSection *)self textLines];
  v6 = [v5 copy];
  [v4 setTextLines:v6];

  [v4 setTextNoWrap:{-[SFTextColumnSection textNoWrap](self, "textNoWrap")}];
  [v4 setTextWeight:{-[SFTextColumnSection textWeight](self, "textWeight")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBTextColumnSection alloc] initWithFacade:self];
  v3 = [(_SFPBTextColumnSection *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBTextColumnSection alloc] initWithFacade:self];
  v3 = [(_SFPBTextColumnSection *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBTextColumnSection alloc] initWithFacade:self];
  v5 = [(_SFPBTextColumnSection *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFTextColumnSection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBTextColumnSection alloc] initWithData:v5];
  v7 = [(SFTextColumnSection *)self initWithProtobuf:v6];

  return v7;
}

@end