@interface SFEmbeddingState
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFEmbeddingState)initWithCoder:(id)coder;
- (SFEmbeddingState)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFEmbeddingState

- (SFEmbeddingState)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFEmbeddingState;
  v5 = [(SFEmbeddingState *)&v12 init];
  if (v5)
  {
    if ([protobufCopy queryStatus])
    {
      -[SFEmbeddingState setQueryStatus:](v5, "setQueryStatus:", [protobufCopy queryStatus]);
    }

    if ([protobufCopy hasQueryEmbedding])
    {
      -[SFEmbeddingState setHasQueryEmbedding:](v5, "setHasQueryEmbedding:", [protobufCopy hasQueryEmbedding]);
    }

    if ([protobufCopy hasEmbeddingResults])
    {
      -[SFEmbeddingState setHasEmbeddingResults:](v5, "setHasEmbeddingResults:", [protobufCopy hasEmbeddingResults]);
    }

    if ([protobufCopy hasResults])
    {
      -[SFEmbeddingState setHasResults:](v5, "setHasResults:", [protobufCopy hasResults]);
    }

    spotlightEmbeddingState = [protobufCopy spotlightEmbeddingState];

    if (spotlightEmbeddingState)
    {
      v7 = [SFSpotlightEmbeddingState alloc];
      spotlightEmbeddingState2 = [protobufCopy spotlightEmbeddingState];
      v9 = [(SFSpotlightEmbeddingState *)v7 initWithProtobuf:spotlightEmbeddingState2];
      [(SFEmbeddingState *)v5 setSpotlightEmbeddingState:v9];
    }

    if ([protobufCopy hasSuppressedResults])
    {
      -[SFEmbeddingState setHasSuppressedResults:](v5, "setHasSuppressedResults:", [protobufCopy hasSuppressedResults]);
    }

    if ([protobufCopy hasKeywordResults])
    {
      -[SFEmbeddingState setHasKeywordResults:](v5, "setHasKeywordResults:", [protobufCopy hasKeywordResults]);
    }

    if ([protobufCopy hasHybridResults])
    {
      -[SFEmbeddingState setHasHybridResults:](v5, "setHasHybridResults:", [protobufCopy hasHybridResults]);
    }

    if ([protobufCopy hasMetadataResults])
    {
      -[SFEmbeddingState setHasMetadataResults:](v5, "setHasMetadataResults:", [protobufCopy hasMetadataResults]);
    }

    v10 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  queryStatus = [(SFEmbeddingState *)self queryStatus];
  v4 = [(SFEmbeddingState *)self hasQueryEmbedding]^ queryStatus;
  hasEmbeddingResults = [(SFEmbeddingState *)self hasEmbeddingResults];
  v6 = v4 ^ hasEmbeddingResults ^ [(SFEmbeddingState *)self hasResults];
  spotlightEmbeddingState = [(SFEmbeddingState *)self spotlightEmbeddingState];
  v8 = [spotlightEmbeddingState hash];
  v9 = v8 ^ [(SFEmbeddingState *)self hasSuppressedResults];
  v10 = v6 ^ v9 ^ [(SFEmbeddingState *)self hasKeywordResults];
  hasHybridResults = [(SFEmbeddingState *)self hasHybridResults];
  v12 = hasHybridResults ^ [(SFEmbeddingState *)self hasMetadataResults];

  return v10 ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
    goto LABEL_11;
  }

  if (![(SFEmbeddingState *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v12 = 0;
    goto LABEL_11;
  }

  v7 = equalCopy;
  queryStatus = [(SFEmbeddingState *)self queryStatus];
  if (queryStatus == [(SFEmbeddingState *)v7 queryStatus])
  {
    hasQueryEmbedding = [(SFEmbeddingState *)self hasQueryEmbedding];
    if (hasQueryEmbedding == [(SFEmbeddingState *)v7 hasQueryEmbedding])
    {
      hasEmbeddingResults = [(SFEmbeddingState *)self hasEmbeddingResults];
      if (hasEmbeddingResults == [(SFEmbeddingState *)v7 hasEmbeddingResults])
      {
        hasResults = [(SFEmbeddingState *)self hasResults];
        if (hasResults == [(SFEmbeddingState *)v7 hasResults])
        {
          spotlightEmbeddingState = [(SFEmbeddingState *)self spotlightEmbeddingState];
          spotlightEmbeddingState2 = [(SFEmbeddingState *)v7 spotlightEmbeddingState];
          if ((spotlightEmbeddingState != 0) == (spotlightEmbeddingState2 == 0))
          {
            v12 = 0;
LABEL_23:

            goto LABEL_8;
          }

          spotlightEmbeddingState3 = [(SFEmbeddingState *)self spotlightEmbeddingState];
          if (!spotlightEmbeddingState3 || (-[SFEmbeddingState spotlightEmbeddingState](self, "spotlightEmbeddingState"), v3 = objc_claimAutoreleasedReturnValue(), -[SFEmbeddingState spotlightEmbeddingState](v7, "spotlightEmbeddingState"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
          {
            hasSuppressedResults = [(SFEmbeddingState *)self hasSuppressedResults];
            if (hasSuppressedResults == [(SFEmbeddingState *)v7 hasSuppressedResults]&& (v19 = [(SFEmbeddingState *)self hasKeywordResults], v19 == [(SFEmbeddingState *)v7 hasKeywordResults]) && (v20 = [(SFEmbeddingState *)self hasHybridResults], v20 == [(SFEmbeddingState *)v7 hasHybridResults]))
            {
              hasMetadataResults = [(SFEmbeddingState *)self hasMetadataResults];
              v17 = hasMetadataResults ^ [(SFEmbeddingState *)v7 hasMetadataResults]^ 1;
              v12 = v17;
              if (!spotlightEmbeddingState3)
              {
                goto LABEL_22;
              }
            }

            else
            {
              LOBYTE(v17) = 0;
              v12 = 0;
              if (!spotlightEmbeddingState3)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setQueryStatus:{-[SFEmbeddingState queryStatus](self, "queryStatus")}];
  [v4 setHasQueryEmbedding:{-[SFEmbeddingState hasQueryEmbedding](self, "hasQueryEmbedding")}];
  [v4 setHasEmbeddingResults:{-[SFEmbeddingState hasEmbeddingResults](self, "hasEmbeddingResults")}];
  [v4 setHasResults:{-[SFEmbeddingState hasResults](self, "hasResults")}];
  spotlightEmbeddingState = [(SFEmbeddingState *)self spotlightEmbeddingState];
  v6 = [spotlightEmbeddingState copy];
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
  jsonData = [(_SFPBEmbeddingState *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBEmbeddingState alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBEmbeddingState *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBEmbeddingState alloc] initWithFacade:self];
  data = [(_SFPBEmbeddingState *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFEmbeddingState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBEmbeddingState alloc] initWithData:v5];
  v7 = [(SFEmbeddingState *)self initWithProtobuf:v6];

  return v7;
}

@end