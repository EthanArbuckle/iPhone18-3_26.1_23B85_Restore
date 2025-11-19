@interface _SFPBPhotosRankingInfo
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBPhotosRankingInfo)initWithDictionary:(id)a3;
- (_SFPBPhotosRankingInfo)initWithFacade:(id)a3;
- (_SFPBPhotosRankingInfo)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBPhotosRankingInfo

- (_SFPBPhotosRankingInfo)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBPhotosRankingInfo *)self init];
  if (v5)
  {
    if ([v4 hasTotalNumberOfAssetsIndexed])
    {
      -[_SFPBPhotosRankingInfo setTotalNumberOfAssetsIndexed:](v5, "setTotalNumberOfAssetsIndexed:", [v4 totalNumberOfAssetsIndexed]);
    }

    if ([v4 hasTotalNumberOfAssetsInLibrary])
    {
      -[_SFPBPhotosRankingInfo setTotalNumberOfAssetsInLibrary:](v5, "setTotalNumberOfAssetsInLibrary:", [v4 totalNumberOfAssetsInLibrary]);
    }

    if ([v4 hasTotalNumberOfEmbeddingMatchedAssets])
    {
      -[_SFPBPhotosRankingInfo setTotalNumberOfEmbeddingMatchedAssets:](v5, "setTotalNumberOfEmbeddingMatchedAssets:", [v4 totalNumberOfEmbeddingMatchedAssets]);
    }

    if ([v4 hasTotalNumberOfMetadataMatchedAssets])
    {
      -[_SFPBPhotosRankingInfo setTotalNumberOfMetadataMatchedAssets:](v5, "setTotalNumberOfMetadataMatchedAssets:", [v4 totalNumberOfMetadataMatchedAssets]);
    }

    if ([v4 hasAssetEstimationOffAmount])
    {
      -[_SFPBPhotosRankingInfo setAssetEstimationOffAmount:](v5, "setAssetEstimationOffAmount:", [v4 assetEstimationOffAmount]);
    }

    v6 = [v4 indexedAssetsPercentage];

    if (v6)
    {
      v7 = [v4 indexedAssetsPercentage];
      -[_SFPBPhotosRankingInfo setIndexedAssetsPercentage:](v5, "setIndexedAssetsPercentage:", [v7 intValue]);
    }

    v8 = [v4 analyzedAssetsPercentage];

    if (v8)
    {
      v9 = [v4 analyzedAssetsPercentage];
      -[_SFPBPhotosRankingInfo setAnalyzedAssetsPercentage:](v5, "setAnalyzedAssetsPercentage:", [v9 intValue]);
    }

    v10 = [v4 analyzedAndIndexedAssetsPercentage];

    if (v10)
    {
      v11 = [v4 analyzedAndIndexedAssetsPercentage];
      -[_SFPBPhotosRankingInfo setAnalyzedAndIndexedAssetsPercentage:](v5, "setAnalyzedAndIndexedAssetsPercentage:", [v11 intValue]);
    }

    v12 = [v4 embeddedAssetsPercentage];

    if (v12)
    {
      v13 = [v4 embeddedAssetsPercentage];
      -[_SFPBPhotosRankingInfo setEmbeddedAssetsPercentage:](v5, "setEmbeddedAssetsPercentage:", [v13 intValue]);
    }

    if ([v4 hasAssetsRetrieved])
    {
      -[_SFPBPhotosRankingInfo setAssetsRetrieved:](v5, "setAssetsRetrieved:", [v4 assetsRetrieved]);
    }

    if ([v4 hasCollectionsRetrieved])
    {
      -[_SFPBPhotosRankingInfo setCollectionsRetrieved:](v5, "setCollectionsRetrieved:", [v4 collectionsRetrieved]);
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBPhotosRankingInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = _SFPBPhotosRankingInfo;
  v5 = [(_SFPBPhotosRankingInfo *)&v24 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"totalNumberOfAssetsIndexed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosRankingInfo setTotalNumberOfAssetsIndexed:](v5, "setTotalNumberOfAssetsIndexed:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"totalNumberOfAssetsInLibrary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosRankingInfo setTotalNumberOfAssetsInLibrary:](v5, "setTotalNumberOfAssetsInLibrary:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"totalNumberOfEmbeddingMatchedAssets"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosRankingInfo setTotalNumberOfEmbeddingMatchedAssets:](v5, "setTotalNumberOfEmbeddingMatchedAssets:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"totalNumberOfMetadataMatchedAssets"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosRankingInfo setTotalNumberOfMetadataMatchedAssets:](v5, "setTotalNumberOfMetadataMatchedAssets:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"assetEstimationOffAmount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosRankingInfo setAssetEstimationOffAmount:](v5, "setAssetEstimationOffAmount:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:{@"indexedAssetsPercentage", v10}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosRankingInfo setIndexedAssetsPercentage:](v5, "setIndexedAssetsPercentage:", [v11 intValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"analyzedAssetsPercentage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosRankingInfo setAnalyzedAssetsPercentage:](v5, "setAnalyzedAssetsPercentage:", [v12 intValue]);
    }

    v23 = v6;
    v13 = [v4 objectForKeyedSubscript:@"analyzedAndIndexedAssetsPercentage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosRankingInfo setAnalyzedAndIndexedAssetsPercentage:](v5, "setAnalyzedAndIndexedAssetsPercentage:", [v13 intValue]);
    }

    v21 = v9;
    v22 = v7;
    v14 = [v4 objectForKeyedSubscript:@"embeddedAssetsPercentage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosRankingInfo setEmbeddedAssetsPercentage:](v5, "setEmbeddedAssetsPercentage:", [v14 intValue]);
    }

    v15 = v8;
    v16 = [v4 objectForKeyedSubscript:@"assetsRetrieved"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosRankingInfo setAssetsRetrieved:](v5, "setAssetsRetrieved:", [v16 intValue]);
    }

    v17 = [v4 objectForKeyedSubscript:@"collectionsRetrieved"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosRankingInfo setCollectionsRetrieved:](v5, "setCollectionsRetrieved:", [v17 intValue]);
    }

    v18 = v5;
  }

  return v5;
}

- (_SFPBPhotosRankingInfo)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBPhotosRankingInfo *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBPhotosRankingInfo *)self dictionaryRepresentation];
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
  if (self->_analyzedAndIndexedAssetsPercentage)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBPhotosRankingInfo analyzedAndIndexedAssetsPercentage](self, "analyzedAndIndexedAssetsPercentage")}];
    [v3 setObject:v4 forKeyedSubscript:@"analyzedAndIndexedAssetsPercentage"];
  }

  if (self->_analyzedAssetsPercentage)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBPhotosRankingInfo analyzedAssetsPercentage](self, "analyzedAssetsPercentage")}];
    [v3 setObject:v5 forKeyedSubscript:@"analyzedAssetsPercentage"];
  }

  if (self->_assetEstimationOffAmount)
  {
    v6 = [(_SFPBPhotosRankingInfo *)self assetEstimationOffAmount];
    if (v6 >= 0xF)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = off_1E7ACE0B8[v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"assetEstimationOffAmount"];
  }

  if (self->_assetsRetrieved)
  {
    v8 = [(_SFPBPhotosRankingInfo *)self assetsRetrieved];
    if (v8 >= 0xF)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
    }

    else
    {
      v9 = off_1E7ACE0B8[v8];
    }

    [v3 setObject:v9 forKeyedSubscript:@"assetsRetrieved"];
  }

  if (self->_collectionsRetrieved)
  {
    v10 = [(_SFPBPhotosRankingInfo *)self collectionsRetrieved];
    if (v10 >= 0xF)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v10];
    }

    else
    {
      v11 = off_1E7ACE0B8[v10];
    }

    [v3 setObject:v11 forKeyedSubscript:@"collectionsRetrieved"];
  }

  if (self->_embeddedAssetsPercentage)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBPhotosRankingInfo embeddedAssetsPercentage](self, "embeddedAssetsPercentage")}];
    [v3 setObject:v12 forKeyedSubscript:@"embeddedAssetsPercentage"];
  }

  if (self->_indexedAssetsPercentage)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBPhotosRankingInfo indexedAssetsPercentage](self, "indexedAssetsPercentage")}];
    [v3 setObject:v13 forKeyedSubscript:@"indexedAssetsPercentage"];
  }

  if (self->_totalNumberOfAssetsInLibrary)
  {
    v14 = [(_SFPBPhotosRankingInfo *)self totalNumberOfAssetsInLibrary];
    if (v14 >= 0xB)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v14];
    }

    else
    {
      v15 = off_1E7ACE060[v14];
    }

    [v3 setObject:v15 forKeyedSubscript:@"totalNumberOfAssetsInLibrary"];
  }

  if (self->_totalNumberOfAssetsIndexed)
  {
    v16 = [(_SFPBPhotosRankingInfo *)self totalNumberOfAssetsIndexed];
    if (v16 >= 0xB)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v16];
    }

    else
    {
      v17 = off_1E7ACE060[v16];
    }

    [v3 setObject:v17 forKeyedSubscript:@"totalNumberOfAssetsIndexed"];
  }

  if (self->_totalNumberOfEmbeddingMatchedAssets)
  {
    v18 = [(_SFPBPhotosRankingInfo *)self totalNumberOfEmbeddingMatchedAssets];
    if (v18 >= 0xF)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v18];
    }

    else
    {
      v19 = off_1E7ACE0B8[v18];
    }

    [v3 setObject:v19 forKeyedSubscript:@"totalNumberOfEmbeddingMatchedAssets"];
  }

  if (self->_totalNumberOfMetadataMatchedAssets)
  {
    v20 = [(_SFPBPhotosRankingInfo *)self totalNumberOfMetadataMatchedAssets];
    if (v20 >= 0xF)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v20];
    }

    else
    {
      v21 = off_1E7ACE0B8[v20];
    }

    [v3 setObject:v21 forKeyedSubscript:@"totalNumberOfMetadataMatchedAssets"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  totalNumberOfAssetsIndexed = self->_totalNumberOfAssetsIndexed;
  if (totalNumberOfAssetsIndexed != [v4 totalNumberOfAssetsIndexed])
  {
    goto LABEL_13;
  }

  totalNumberOfAssetsInLibrary = self->_totalNumberOfAssetsInLibrary;
  if (totalNumberOfAssetsInLibrary != [v4 totalNumberOfAssetsInLibrary])
  {
    goto LABEL_13;
  }

  totalNumberOfEmbeddingMatchedAssets = self->_totalNumberOfEmbeddingMatchedAssets;
  if (totalNumberOfEmbeddingMatchedAssets != [v4 totalNumberOfEmbeddingMatchedAssets])
  {
    goto LABEL_13;
  }

  totalNumberOfMetadataMatchedAssets = self->_totalNumberOfMetadataMatchedAssets;
  if (totalNumberOfMetadataMatchedAssets == [v4 totalNumberOfMetadataMatchedAssets] && (assetEstimationOffAmount = self->_assetEstimationOffAmount, assetEstimationOffAmount == objc_msgSend(v4, "assetEstimationOffAmount")) && (indexedAssetsPercentage = self->_indexedAssetsPercentage, indexedAssetsPercentage == objc_msgSend(v4, "indexedAssetsPercentage")) && (analyzedAssetsPercentage = self->_analyzedAssetsPercentage, analyzedAssetsPercentage == objc_msgSend(v4, "analyzedAssetsPercentage")) && (analyzedAndIndexedAssetsPercentage = self->_analyzedAndIndexedAssetsPercentage, analyzedAndIndexedAssetsPercentage == objc_msgSend(v4, "analyzedAndIndexedAssetsPercentage")) && (embeddedAssetsPercentage = self->_embeddedAssetsPercentage, embeddedAssetsPercentage == objc_msgSend(v4, "embeddedAssetsPercentage")) && (assetsRetrieved = self->_assetsRetrieved, assetsRetrieved == objc_msgSend(v4, "assetsRetrieved")))
  {
    collectionsRetrieved = self->_collectionsRetrieved;
    v16 = collectionsRetrieved == [v4 collectionsRetrieved];
  }

  else
  {
LABEL_13:
    v16 = 0;
  }

  return v16;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  if ([(_SFPBPhotosRankingInfo *)self totalNumberOfAssetsIndexed])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBPhotosRankingInfo *)self totalNumberOfAssetsInLibrary])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBPhotosRankingInfo *)self totalNumberOfEmbeddingMatchedAssets])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBPhotosRankingInfo *)self totalNumberOfMetadataMatchedAssets])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBPhotosRankingInfo *)self assetEstimationOffAmount])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBPhotosRankingInfo *)self indexedAssetsPercentage])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBPhotosRankingInfo *)self analyzedAssetsPercentage])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBPhotosRankingInfo *)self analyzedAndIndexedAssetsPercentage])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBPhotosRankingInfo *)self embeddedAssetsPercentage])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBPhotosRankingInfo *)self assetsRetrieved])
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(_SFPBPhotosRankingInfo *)self collectionsRetrieved];
  v5 = v6;
  if (v4)
  {
    PBDataWriterWriteInt32Field();
    v5 = v6;
  }
}

@end