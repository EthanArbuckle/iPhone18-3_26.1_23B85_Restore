@interface _SFPBPhotosAggregatedInfo
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBPhotosAggregatedInfo)initWithDictionary:(id)dictionary;
- (_SFPBPhotosAggregatedInfo)initWithFacade:(id)facade;
- (_SFPBPhotosAggregatedInfo)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBPhotosAggregatedInfo

- (_SFPBPhotosAggregatedInfo)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBPhotosAggregatedInfo *)self init];
  if (v5)
  {
    if ([facadeCopy hasTotalNumberOfAssets])
    {
      -[_SFPBPhotosAggregatedInfo setTotalNumberOfAssets:](v5, "setTotalNumberOfAssets:", [facadeCopy totalNumberOfAssets]);
    }

    if ([facadeCopy hasTotalNumberOfEmbeddingMatchedAssets])
    {
      -[_SFPBPhotosAggregatedInfo setTotalNumberOfEmbeddingMatchedAssets:](v5, "setTotalNumberOfEmbeddingMatchedAssets:", [facadeCopy totalNumberOfEmbeddingMatchedAssets]);
    }

    if ([facadeCopy hasTotalNumberOfMetadataMatchedAssets])
    {
      -[_SFPBPhotosAggregatedInfo setTotalNumberOfMetadataMatchedAssets:](v5, "setTotalNumberOfMetadataMatchedAssets:", [facadeCopy totalNumberOfMetadataMatchedAssets]);
    }

    v6 = v5;
  }

  return v5;
}

- (_SFPBPhotosAggregatedInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = _SFPBPhotosAggregatedInfo;
  v5 = [(_SFPBPhotosAggregatedInfo *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"totalNumberOfAssets"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosAggregatedInfo setTotalNumberOfAssets:](v5, "setTotalNumberOfAssets:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"totalNumberOfEmbeddingMatchedAssets"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosAggregatedInfo setTotalNumberOfEmbeddingMatchedAssets:](v5, "setTotalNumberOfEmbeddingMatchedAssets:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"totalNumberOfMetadataMatchedAssets"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosAggregatedInfo setTotalNumberOfMetadataMatchedAssets:](v5, "setTotalNumberOfMetadataMatchedAssets:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBPhotosAggregatedInfo)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBPhotosAggregatedInfo *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBPhotosAggregatedInfo *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_totalNumberOfAssets)
  {
    totalNumberOfAssets = [(_SFPBPhotosAggregatedInfo *)self totalNumberOfAssets];
    if (totalNumberOfAssets >= 0xF)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", totalNumberOfAssets];
    }

    else
    {
      v5 = off_1E7ACE0B8[totalNumberOfAssets];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"totalNumberOfAssets"];
  }

  if (self->_totalNumberOfEmbeddingMatchedAssets)
  {
    totalNumberOfEmbeddingMatchedAssets = [(_SFPBPhotosAggregatedInfo *)self totalNumberOfEmbeddingMatchedAssets];
    if (totalNumberOfEmbeddingMatchedAssets >= 0xF)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", totalNumberOfEmbeddingMatchedAssets];
    }

    else
    {
      v7 = off_1E7ACE0B8[totalNumberOfEmbeddingMatchedAssets];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"totalNumberOfEmbeddingMatchedAssets"];
  }

  if (self->_totalNumberOfMetadataMatchedAssets)
  {
    totalNumberOfMetadataMatchedAssets = [(_SFPBPhotosAggregatedInfo *)self totalNumberOfMetadataMatchedAssets];
    if (totalNumberOfMetadataMatchedAssets >= 0xF)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", totalNumberOfMetadataMatchedAssets];
    }

    else
    {
      v9 = off_1E7ACE0B8[totalNumberOfMetadataMatchedAssets];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"totalNumberOfMetadataMatchedAssets"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (totalNumberOfAssets = self->_totalNumberOfAssets, totalNumberOfAssets == objc_msgSend(equalCopy, "totalNumberOfAssets")) && (totalNumberOfEmbeddingMatchedAssets = self->_totalNumberOfEmbeddingMatchedAssets, totalNumberOfEmbeddingMatchedAssets == objc_msgSend(equalCopy, "totalNumberOfEmbeddingMatchedAssets")))
  {
    totalNumberOfMetadataMatchedAssets = self->_totalNumberOfMetadataMatchedAssets;
    v8 = totalNumberOfMetadataMatchedAssets == [equalCopy totalNumberOfMetadataMatchedAssets];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_SFPBPhotosAggregatedInfo *)self totalNumberOfAssets])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBPhotosAggregatedInfo *)self totalNumberOfEmbeddingMatchedAssets])
  {
    PBDataWriterWriteInt32Field();
  }

  totalNumberOfMetadataMatchedAssets = [(_SFPBPhotosAggregatedInfo *)self totalNumberOfMetadataMatchedAssets];
  v5 = toCopy;
  if (totalNumberOfMetadataMatchedAssets)
  {
    PBDataWriterWriteInt32Field();
    v5 = toCopy;
  }
}

@end