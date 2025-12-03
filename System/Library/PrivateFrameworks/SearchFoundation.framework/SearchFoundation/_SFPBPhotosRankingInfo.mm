@interface _SFPBPhotosRankingInfo
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBPhotosRankingInfo)initWithDictionary:(id)dictionary;
- (_SFPBPhotosRankingInfo)initWithFacade:(id)facade;
- (_SFPBPhotosRankingInfo)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBPhotosRankingInfo

- (_SFPBPhotosRankingInfo)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBPhotosRankingInfo *)self init];
  if (v5)
  {
    if ([facadeCopy hasTotalNumberOfAssetsIndexed])
    {
      -[_SFPBPhotosRankingInfo setTotalNumberOfAssetsIndexed:](v5, "setTotalNumberOfAssetsIndexed:", [facadeCopy totalNumberOfAssetsIndexed]);
    }

    if ([facadeCopy hasTotalNumberOfAssetsInLibrary])
    {
      -[_SFPBPhotosRankingInfo setTotalNumberOfAssetsInLibrary:](v5, "setTotalNumberOfAssetsInLibrary:", [facadeCopy totalNumberOfAssetsInLibrary]);
    }

    if ([facadeCopy hasTotalNumberOfEmbeddingMatchedAssets])
    {
      -[_SFPBPhotosRankingInfo setTotalNumberOfEmbeddingMatchedAssets:](v5, "setTotalNumberOfEmbeddingMatchedAssets:", [facadeCopy totalNumberOfEmbeddingMatchedAssets]);
    }

    if ([facadeCopy hasTotalNumberOfMetadataMatchedAssets])
    {
      -[_SFPBPhotosRankingInfo setTotalNumberOfMetadataMatchedAssets:](v5, "setTotalNumberOfMetadataMatchedAssets:", [facadeCopy totalNumberOfMetadataMatchedAssets]);
    }

    if ([facadeCopy hasAssetEstimationOffAmount])
    {
      -[_SFPBPhotosRankingInfo setAssetEstimationOffAmount:](v5, "setAssetEstimationOffAmount:", [facadeCopy assetEstimationOffAmount]);
    }

    indexedAssetsPercentage = [facadeCopy indexedAssetsPercentage];

    if (indexedAssetsPercentage)
    {
      indexedAssetsPercentage2 = [facadeCopy indexedAssetsPercentage];
      -[_SFPBPhotosRankingInfo setIndexedAssetsPercentage:](v5, "setIndexedAssetsPercentage:", [indexedAssetsPercentage2 intValue]);
    }

    analyzedAssetsPercentage = [facadeCopy analyzedAssetsPercentage];

    if (analyzedAssetsPercentage)
    {
      analyzedAssetsPercentage2 = [facadeCopy analyzedAssetsPercentage];
      -[_SFPBPhotosRankingInfo setAnalyzedAssetsPercentage:](v5, "setAnalyzedAssetsPercentage:", [analyzedAssetsPercentage2 intValue]);
    }

    analyzedAndIndexedAssetsPercentage = [facadeCopy analyzedAndIndexedAssetsPercentage];

    if (analyzedAndIndexedAssetsPercentage)
    {
      analyzedAndIndexedAssetsPercentage2 = [facadeCopy analyzedAndIndexedAssetsPercentage];
      -[_SFPBPhotosRankingInfo setAnalyzedAndIndexedAssetsPercentage:](v5, "setAnalyzedAndIndexedAssetsPercentage:", [analyzedAndIndexedAssetsPercentage2 intValue]);
    }

    embeddedAssetsPercentage = [facadeCopy embeddedAssetsPercentage];

    if (embeddedAssetsPercentage)
    {
      embeddedAssetsPercentage2 = [facadeCopy embeddedAssetsPercentage];
      -[_SFPBPhotosRankingInfo setEmbeddedAssetsPercentage:](v5, "setEmbeddedAssetsPercentage:", [embeddedAssetsPercentage2 intValue]);
    }

    if ([facadeCopy hasAssetsRetrieved])
    {
      -[_SFPBPhotosRankingInfo setAssetsRetrieved:](v5, "setAssetsRetrieved:", [facadeCopy assetsRetrieved]);
    }

    if ([facadeCopy hasCollectionsRetrieved])
    {
      -[_SFPBPhotosRankingInfo setCollectionsRetrieved:](v5, "setCollectionsRetrieved:", [facadeCopy collectionsRetrieved]);
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBPhotosRankingInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = _SFPBPhotosRankingInfo;
  v5 = [(_SFPBPhotosRankingInfo *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"totalNumberOfAssetsIndexed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosRankingInfo setTotalNumberOfAssetsIndexed:](v5, "setTotalNumberOfAssetsIndexed:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"totalNumberOfAssetsInLibrary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosRankingInfo setTotalNumberOfAssetsInLibrary:](v5, "setTotalNumberOfAssetsInLibrary:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"totalNumberOfEmbeddingMatchedAssets"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosRankingInfo setTotalNumberOfEmbeddingMatchedAssets:](v5, "setTotalNumberOfEmbeddingMatchedAssets:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"totalNumberOfMetadataMatchedAssets"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosRankingInfo setTotalNumberOfMetadataMatchedAssets:](v5, "setTotalNumberOfMetadataMatchedAssets:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"assetEstimationOffAmount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosRankingInfo setAssetEstimationOffAmount:](v5, "setAssetEstimationOffAmount:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:{@"indexedAssetsPercentage", v10}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosRankingInfo setIndexedAssetsPercentage:](v5, "setIndexedAssetsPercentage:", [v11 intValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"analyzedAssetsPercentage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosRankingInfo setAnalyzedAssetsPercentage:](v5, "setAnalyzedAssetsPercentage:", [v12 intValue]);
    }

    v23 = v6;
    v13 = [dictionaryCopy objectForKeyedSubscript:@"analyzedAndIndexedAssetsPercentage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosRankingInfo setAnalyzedAndIndexedAssetsPercentage:](v5, "setAnalyzedAndIndexedAssetsPercentage:", [v13 intValue]);
    }

    v21 = v9;
    v22 = v7;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"embeddedAssetsPercentage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosRankingInfo setEmbeddedAssetsPercentage:](v5, "setEmbeddedAssetsPercentage:", [v14 intValue]);
    }

    v15 = v8;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"assetsRetrieved"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosRankingInfo setAssetsRetrieved:](v5, "setAssetsRetrieved:", [v16 intValue]);
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"collectionsRetrieved"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPhotosRankingInfo setCollectionsRetrieved:](v5, "setCollectionsRetrieved:", [v17 intValue]);
    }

    v18 = v5;
  }

  return v5;
}

- (_SFPBPhotosRankingInfo)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBPhotosRankingInfo *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBPhotosRankingInfo *)self dictionaryRepresentation];
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
  if (self->_analyzedAndIndexedAssetsPercentage)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBPhotosRankingInfo analyzedAndIndexedAssetsPercentage](self, "analyzedAndIndexedAssetsPercentage")}];
    [dictionary setObject:v4 forKeyedSubscript:@"analyzedAndIndexedAssetsPercentage"];
  }

  if (self->_analyzedAssetsPercentage)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBPhotosRankingInfo analyzedAssetsPercentage](self, "analyzedAssetsPercentage")}];
    [dictionary setObject:v5 forKeyedSubscript:@"analyzedAssetsPercentage"];
  }

  if (self->_assetEstimationOffAmount)
  {
    assetEstimationOffAmount = [(_SFPBPhotosRankingInfo *)self assetEstimationOffAmount];
    if (assetEstimationOffAmount >= 0xF)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", assetEstimationOffAmount];
    }

    else
    {
      v7 = off_1E7ACE0B8[assetEstimationOffAmount];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"assetEstimationOffAmount"];
  }

  if (self->_assetsRetrieved)
  {
    assetsRetrieved = [(_SFPBPhotosRankingInfo *)self assetsRetrieved];
    if (assetsRetrieved >= 0xF)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", assetsRetrieved];
    }

    else
    {
      v9 = off_1E7ACE0B8[assetsRetrieved];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"assetsRetrieved"];
  }

  if (self->_collectionsRetrieved)
  {
    collectionsRetrieved = [(_SFPBPhotosRankingInfo *)self collectionsRetrieved];
    if (collectionsRetrieved >= 0xF)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", collectionsRetrieved];
    }

    else
    {
      v11 = off_1E7ACE0B8[collectionsRetrieved];
    }

    [dictionary setObject:v11 forKeyedSubscript:@"collectionsRetrieved"];
  }

  if (self->_embeddedAssetsPercentage)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBPhotosRankingInfo embeddedAssetsPercentage](self, "embeddedAssetsPercentage")}];
    [dictionary setObject:v12 forKeyedSubscript:@"embeddedAssetsPercentage"];
  }

  if (self->_indexedAssetsPercentage)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBPhotosRankingInfo indexedAssetsPercentage](self, "indexedAssetsPercentage")}];
    [dictionary setObject:v13 forKeyedSubscript:@"indexedAssetsPercentage"];
  }

  if (self->_totalNumberOfAssetsInLibrary)
  {
    totalNumberOfAssetsInLibrary = [(_SFPBPhotosRankingInfo *)self totalNumberOfAssetsInLibrary];
    if (totalNumberOfAssetsInLibrary >= 0xB)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", totalNumberOfAssetsInLibrary];
    }

    else
    {
      v15 = off_1E7ACE060[totalNumberOfAssetsInLibrary];
    }

    [dictionary setObject:v15 forKeyedSubscript:@"totalNumberOfAssetsInLibrary"];
  }

  if (self->_totalNumberOfAssetsIndexed)
  {
    totalNumberOfAssetsIndexed = [(_SFPBPhotosRankingInfo *)self totalNumberOfAssetsIndexed];
    if (totalNumberOfAssetsIndexed >= 0xB)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", totalNumberOfAssetsIndexed];
    }

    else
    {
      v17 = off_1E7ACE060[totalNumberOfAssetsIndexed];
    }

    [dictionary setObject:v17 forKeyedSubscript:@"totalNumberOfAssetsIndexed"];
  }

  if (self->_totalNumberOfEmbeddingMatchedAssets)
  {
    totalNumberOfEmbeddingMatchedAssets = [(_SFPBPhotosRankingInfo *)self totalNumberOfEmbeddingMatchedAssets];
    if (totalNumberOfEmbeddingMatchedAssets >= 0xF)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", totalNumberOfEmbeddingMatchedAssets];
    }

    else
    {
      v19 = off_1E7ACE0B8[totalNumberOfEmbeddingMatchedAssets];
    }

    [dictionary setObject:v19 forKeyedSubscript:@"totalNumberOfEmbeddingMatchedAssets"];
  }

  if (self->_totalNumberOfMetadataMatchedAssets)
  {
    totalNumberOfMetadataMatchedAssets = [(_SFPBPhotosRankingInfo *)self totalNumberOfMetadataMatchedAssets];
    if (totalNumberOfMetadataMatchedAssets >= 0xF)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", totalNumberOfMetadataMatchedAssets];
    }

    else
    {
      v21 = off_1E7ACE0B8[totalNumberOfMetadataMatchedAssets];
    }

    [dictionary setObject:v21 forKeyedSubscript:@"totalNumberOfMetadataMatchedAssets"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  totalNumberOfAssetsIndexed = self->_totalNumberOfAssetsIndexed;
  if (totalNumberOfAssetsIndexed != [equalCopy totalNumberOfAssetsIndexed])
  {
    goto LABEL_13;
  }

  totalNumberOfAssetsInLibrary = self->_totalNumberOfAssetsInLibrary;
  if (totalNumberOfAssetsInLibrary != [equalCopy totalNumberOfAssetsInLibrary])
  {
    goto LABEL_13;
  }

  totalNumberOfEmbeddingMatchedAssets = self->_totalNumberOfEmbeddingMatchedAssets;
  if (totalNumberOfEmbeddingMatchedAssets != [equalCopy totalNumberOfEmbeddingMatchedAssets])
  {
    goto LABEL_13;
  }

  totalNumberOfMetadataMatchedAssets = self->_totalNumberOfMetadataMatchedAssets;
  if (totalNumberOfMetadataMatchedAssets == [equalCopy totalNumberOfMetadataMatchedAssets] && (assetEstimationOffAmount = self->_assetEstimationOffAmount, assetEstimationOffAmount == objc_msgSend(equalCopy, "assetEstimationOffAmount")) && (indexedAssetsPercentage = self->_indexedAssetsPercentage, indexedAssetsPercentage == objc_msgSend(equalCopy, "indexedAssetsPercentage")) && (analyzedAssetsPercentage = self->_analyzedAssetsPercentage, analyzedAssetsPercentage == objc_msgSend(equalCopy, "analyzedAssetsPercentage")) && (analyzedAndIndexedAssetsPercentage = self->_analyzedAndIndexedAssetsPercentage, analyzedAndIndexedAssetsPercentage == objc_msgSend(equalCopy, "analyzedAndIndexedAssetsPercentage")) && (embeddedAssetsPercentage = self->_embeddedAssetsPercentage, embeddedAssetsPercentage == objc_msgSend(equalCopy, "embeddedAssetsPercentage")) && (assetsRetrieved = self->_assetsRetrieved, assetsRetrieved == objc_msgSend(equalCopy, "assetsRetrieved")))
  {
    collectionsRetrieved = self->_collectionsRetrieved;
    v16 = collectionsRetrieved == [equalCopy collectionsRetrieved];
  }

  else
  {
LABEL_13:
    v16 = 0;
  }

  return v16;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

  collectionsRetrieved = [(_SFPBPhotosRankingInfo *)self collectionsRetrieved];
  v5 = toCopy;
  if (collectionsRetrieved)
  {
    PBDataWriterWriteInt32Field();
    v5 = toCopy;
  }
}

@end