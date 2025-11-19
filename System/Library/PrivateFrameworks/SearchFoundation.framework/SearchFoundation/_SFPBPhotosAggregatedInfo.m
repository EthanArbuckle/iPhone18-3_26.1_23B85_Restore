@interface _SFPBPhotosAggregatedInfo
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBPhotosAggregatedInfo)initWithDictionary:(id)a3;
- (_SFPBPhotosAggregatedInfo)initWithFacade:(id)a3;
- (_SFPBPhotosAggregatedInfo)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBPhotosAggregatedInfo

- (_SFPBPhotosAggregatedInfo)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBPhotosAggregatedInfo *)self init];
  if (v5)
  {
    if ([v4 hasTotalNumberOfAssets])
    {
      -[_SFPBPhotosAggregatedInfo setTotalNumberOfAssets:](v5, "setTotalNumberOfAssets:", [v4 totalNumberOfAssets]);
    }

    if ([v4 hasTotalNumberOfEmbeddingMatchedAssets])
    {
      -[_SFPBPhotosAggregatedInfo setTotalNumberOfEmbeddingMatchedAssets:](v5, "setTotalNumberOfEmbeddingMatchedAssets:", [v4 totalNumberOfEmbeddingMatchedAssets]);
    }

    if ([v4 hasTotalNumberOfMetadataMatchedAssets])
    {
      -[_SFPBPhotosAggregatedInfo setTotalNumberOfMetadataMatchedAssets:](v5, "setTotalNumberOfMetadataMatchedAssets:", [v4 totalNumberOfMetadataMatchedAssets]);
    }

    v6 = v5;
  }

  return v5;
}

- (_SFPBPhotosAggregatedInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _SFPBPhotosAggregatedInfo;
  v5 = [(_SFPBPhotosAggregatedInfo *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"totalNumberOfAssets"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosAggregatedInfo setTotalNumberOfAssets:](v5, "setTotalNumberOfAssets:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"totalNumberOfEmbeddingMatchedAssets"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosAggregatedInfo setTotalNumberOfEmbeddingMatchedAssets:](v5, "setTotalNumberOfEmbeddingMatchedAssets:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"totalNumberOfMetadataMatchedAssets"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosAggregatedInfo setTotalNumberOfMetadataMatchedAssets:](v5, "setTotalNumberOfMetadataMatchedAssets:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBPhotosAggregatedInfo)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBPhotosAggregatedInfo *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBPhotosAggregatedInfo *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_totalNumberOfAssets)
  {
    v4 = [(_SFPBPhotosAggregatedInfo *)self totalNumberOfAssets];
    if (v4 >= 0xF)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E7ACE0B8[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"totalNumberOfAssets"];
  }

  if (self->_totalNumberOfEmbeddingMatchedAssets)
  {
    v6 = [(_SFPBPhotosAggregatedInfo *)self totalNumberOfEmbeddingMatchedAssets];
    if (v6 >= 0xF)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = off_1E7ACE0B8[v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"totalNumberOfEmbeddingMatchedAssets"];
  }

  if (self->_totalNumberOfMetadataMatchedAssets)
  {
    v8 = [(_SFPBPhotosAggregatedInfo *)self totalNumberOfMetadataMatchedAssets];
    if (v8 >= 0xF)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
    }

    else
    {
      v9 = off_1E7ACE0B8[v8];
    }

    [v3 setObject:v9 forKeyedSubscript:@"totalNumberOfMetadataMatchedAssets"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (totalNumberOfAssets = self->_totalNumberOfAssets, totalNumberOfAssets == objc_msgSend(v4, "totalNumberOfAssets")) && (totalNumberOfEmbeddingMatchedAssets = self->_totalNumberOfEmbeddingMatchedAssets, totalNumberOfEmbeddingMatchedAssets == objc_msgSend(v4, "totalNumberOfEmbeddingMatchedAssets")))
  {
    totalNumberOfMetadataMatchedAssets = self->_totalNumberOfMetadataMatchedAssets;
    v8 = totalNumberOfMetadataMatchedAssets == [v4 totalNumberOfMetadataMatchedAssets];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  if ([(_SFPBPhotosAggregatedInfo *)self totalNumberOfAssets])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBPhotosAggregatedInfo *)self totalNumberOfEmbeddingMatchedAssets])
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(_SFPBPhotosAggregatedInfo *)self totalNumberOfMetadataMatchedAssets];
  v5 = v6;
  if (v4)
  {
    PBDataWriterWriteInt32Field();
    v5 = v6;
  }
}

@end