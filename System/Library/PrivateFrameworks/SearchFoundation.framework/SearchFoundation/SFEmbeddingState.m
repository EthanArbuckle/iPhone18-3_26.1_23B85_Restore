@interface SFEmbeddingState
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFEmbeddingState)initWithCoder:(id)a3;
- (SFEmbeddingState)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFEmbeddingState

- (SFEmbeddingState)initWithProtobuf:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SFEmbeddingState;
  v5 = [(SFEmbeddingState *)&v12 init];
  if (v5)
  {
    if ([v4 queryStatus])
    {
      -[SFEmbeddingState setQueryStatus:](v5, "setQueryStatus:", [v4 queryStatus]);
    }

    if ([v4 hasQueryEmbedding])
    {
      -[SFEmbeddingState setHasQueryEmbedding:](v5, "setHasQueryEmbedding:", [v4 hasQueryEmbedding]);
    }

    if ([v4 hasEmbeddingResults])
    {
      -[SFEmbeddingState setHasEmbeddingResults:](v5, "setHasEmbeddingResults:", [v4 hasEmbeddingResults]);
    }

    if ([v4 hasResults])
    {
      -[SFEmbeddingState setHasResults:](v5, "setHasResults:", [v4 hasResults]);
    }

    v6 = [v4 spotlightEmbeddingState];

    if (v6)
    {
      v7 = [SFSpotlightEmbeddingState alloc];
      v8 = [v4 spotlightEmbeddingState];
      v9 = [(SFSpotlightEmbeddingState *)v7 initWithProtobuf:v8];
      [(SFEmbeddingState *)v5 setSpotlightEmbeddingState:v9];
    }

    if ([v4 hasSuppressedResults])
    {
      -[SFEmbeddingState setHasSuppressedResults:](v5, "setHasSuppressedResults:", [v4 hasSuppressedResults]);
    }

    if ([v4 hasKeywordResults])
    {
      -[SFEmbeddingState setHasKeywordResults:](v5, "setHasKeywordResults:", [v4 hasKeywordResults]);
    }

    if ([v4 hasHybridResults])
    {
      -[SFEmbeddingState setHasHybridResults:](v5, "setHasHybridResults:", [v4 hasHybridResults]);
    }

    if ([v4 hasMetadataResults])
    {
      -[SFEmbeddingState setHasMetadataResults:](v5, "setHasMetadataResults:", [v4 hasMetadataResults]);
    }

    v10 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(SFEmbeddingState *)self queryStatus];
  v4 = [(SFEmbeddingState *)self hasQueryEmbedding]^ v3;
  v5 = [(SFEmbeddingState *)self hasEmbeddingResults];
  v6 = v4 ^ v5 ^ [(SFEmbeddingState *)self hasResults];
  v7 = [(SFEmbeddingState *)self spotlightEmbeddingState];
  v8 = [v7 hash];
  v9 = v8 ^ [(SFEmbeddingState *)self hasSuppressedResults];
  v10 = v6 ^ v9 ^ [(SFEmbeddingState *)self hasKeywordResults];
  v11 = [(SFEmbeddingState *)self hasHybridResults];
  v12 = v11 ^ [(SFEmbeddingState *)self hasMetadataResults];

  return v10 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v12 = 1;
    goto LABEL_11;
  }

  if (![(SFEmbeddingState *)v6 isMemberOfClass:objc_opt_class()])
  {
    v12 = 0;
    goto LABEL_11;
  }

  v7 = v6;
  v8 = [(SFEmbeddingState *)self queryStatus];
  if (v8 == [(SFEmbeddingState *)v7 queryStatus])
  {
    v9 = [(SFEmbeddingState *)self hasQueryEmbedding];
    if (v9 == [(SFEmbeddingState *)v7 hasQueryEmbedding])
    {
      v10 = [(SFEmbeddingState *)self hasEmbeddingResults];
      if (v10 == [(SFEmbeddingState *)v7 hasEmbeddingResults])
      {
        v11 = [(SFEmbeddingState *)self hasResults];
        if (v11 == [(SFEmbeddingState *)v7 hasResults])
        {
          v14 = [(SFEmbeddingState *)self spotlightEmbeddingState];
          v15 = [(SFEmbeddingState *)v7 spotlightEmbeddingState];
          if ((v14 != 0) == (v15 == 0))
          {
            v12 = 0;
LABEL_23:

            goto LABEL_8;
          }

          v16 = [(SFEmbeddingState *)self spotlightEmbeddingState];
          if (!v16 || (-[SFEmbeddingState spotlightEmbeddingState](self, "spotlightEmbeddingState"), v3 = objc_claimAutoreleasedReturnValue(), -[SFEmbeddingState spotlightEmbeddingState](v7, "spotlightEmbeddingState"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
          {
            v18 = [(SFEmbeddingState *)self hasSuppressedResults];
            if (v18 == [(SFEmbeddingState *)v7 hasSuppressedResults]&& (v19 = [(SFEmbeddingState *)self hasKeywordResults], v19 == [(SFEmbeddingState *)v7 hasKeywordResults]) && (v20 = [(SFEmbeddingState *)self hasHybridResults], v20 == [(SFEmbeddingState *)v7 hasHybridResults]))
            {
              v21 = [(SFEmbeddingState *)self hasMetadataResults];
              v17 = v21 ^ [(SFEmbeddingState *)v7 hasMetadataResults]^ 1;
              v12 = v17;
              if (!v16)
              {
                goto LABEL_22;
              }
            }

            else
            {
              LOBYTE(v17) = 0;
              v12 = 0;
              if (!v16)
              {
LABEL_22:

                goto LABEL_23;
              }
            }
          }

          else
          {
            LOBYTE(v17) = 0;
          }

          v12 = v17;
          goto LABEL_22;
        }
      }
    }
  }

  v12 = 0;
LABEL_8:

LABEL_11:
  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setQueryStatus:{-[SFEmbeddingState queryStatus](self, "queryStatus")}];
  [v4 setHasQueryEmbedding:{-[SFEmbeddingState hasQueryEmbedding](self, "hasQueryEmbedding")}];
  [v4 setHasEmbeddingResults:{-[SFEmbeddingState hasEmbeddingResults](self, "hasEmbeddingResults")}];
  [v4 setHasResults:{-[SFEmbeddingState hasResults](self, "hasResults")}];
  v5 = [(SFEmbeddingState *)self spotlightEmbeddingState];
  v6 = [v5 copy];
  [v4 setSpotlightEmbeddingState:v6];

  [v4 setHasSuppressedResults:{-[SFEmbeddingState hasSuppressedResults](self, "hasSuppressedResults")}];
  [v4 setHasKeywordResults:{-[SFEmbeddingState hasKeywordResults](self, "hasKeywordResults")}];
  [v4 setHasHybridResults:{-[SFEmbeddingState hasHybridResults](self, "hasHybridResults")}];
  [v4 setHasMetadataResults:{-[SFEmbeddingState hasMetadataResults](self, "hasMetadataResults")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBEmbeddingState alloc] initWithFacade:self];
  v3 = [(_SFPBEmbeddingState *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBEmbeddingState alloc] initWithFacade:self];
  v3 = [(_SFPBEmbeddingState *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBEmbeddingState alloc] initWithFacade:self];
  v5 = [(_SFPBEmbeddingState *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFEmbeddingState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBEmbeddingState alloc] initWithData:v5];
  v7 = [(SFEmbeddingState *)self initWithProtobuf:v6];

  return v7;
}

@end