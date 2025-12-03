@interface SFPhotosRankingInfo
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFPhotosRankingInfo)initWithCoder:(id)coder;
- (SFPhotosRankingInfo)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFPhotosRankingInfo

- (SFPhotosRankingInfo)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v12.receiver = self;
  v12.super_class = SFPhotosRankingInfo;
  v5 = [(SFPhotosRankingInfo *)&v12 init];
  if (v5)
  {
    if ([protobufCopy totalNumberOfAssetsIndexed])
    {
      -[SFPhotosRankingInfo setTotalNumberOfAssetsIndexed:](v5, "setTotalNumberOfAssetsIndexed:", [protobufCopy totalNumberOfAssetsIndexed]);
    }

    if ([protobufCopy totalNumberOfAssetsInLibrary])
    {
      -[SFPhotosRankingInfo setTotalNumberOfAssetsInLibrary:](v5, "setTotalNumberOfAssetsInLibrary:", [protobufCopy totalNumberOfAssetsInLibrary]);
    }

    if ([protobufCopy totalNumberOfEmbeddingMatchedAssets])
    {
      -[SFPhotosRankingInfo setTotalNumberOfEmbeddingMatchedAssets:](v5, "setTotalNumberOfEmbeddingMatchedAssets:", [protobufCopy totalNumberOfEmbeddingMatchedAssets]);
    }

    if ([protobufCopy totalNumberOfMetadataMatchedAssets])
    {
      -[SFPhotosRankingInfo setTotalNumberOfMetadataMatchedAssets:](v5, "setTotalNumberOfMetadataMatchedAssets:", [protobufCopy totalNumberOfMetadataMatchedAssets]);
    }

    if ([protobufCopy assetEstimationOffAmount])
    {
      -[SFPhotosRankingInfo setAssetEstimationOffAmount:](v5, "setAssetEstimationOffAmount:", [protobufCopy assetEstimationOffAmount]);
    }

    if ([protobufCopy indexedAssetsPercentage])
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "indexedAssetsPercentage")}];
      [(SFPhotosRankingInfo *)v5 setIndexedAssetsPercentage:v6];
    }

    if ([protobufCopy analyzedAssetsPercentage])
    {
      v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "analyzedAssetsPercentage")}];
      [(SFPhotosRankingInfo *)v5 setAnalyzedAssetsPercentage:v7];
    }

    if ([protobufCopy analyzedAndIndexedAssetsPercentage])
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "analyzedAndIndexedAssetsPercentage")}];
      [(SFPhotosRankingInfo *)v5 setAnalyzedAndIndexedAssetsPercentage:v8];
    }

    if ([protobufCopy embeddedAssetsPercentage])
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "embeddedAssetsPercentage")}];
      [(SFPhotosRankingInfo *)v5 setEmbeddedAssetsPercentage:v9];
    }

    if ([protobufCopy assetsRetrieved])
    {
      -[SFPhotosRankingInfo setAssetsRetrieved:](v5, "setAssetsRetrieved:", [protobufCopy assetsRetrieved]);
    }

    if ([protobufCopy collectionsRetrieved])
    {
      -[SFPhotosRankingInfo setCollectionsRetrieved:](v5, "setCollectionsRetrieved:", [protobufCopy collectionsRetrieved]);
    }

    v10 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  totalNumberOfAssetsIndexed = [(SFPhotosRankingInfo *)self totalNumberOfAssetsIndexed];
  v4 = [(SFPhotosRankingInfo *)self totalNumberOfAssetsInLibrary]^ totalNumberOfAssetsIndexed;
  totalNumberOfEmbeddingMatchedAssets = [(SFPhotosRankingInfo *)self totalNumberOfEmbeddingMatchedAssets];
  v6 = v4 ^ totalNumberOfEmbeddingMatchedAssets ^ [(SFPhotosRankingInfo *)self totalNumberOfMetadataMatchedAssets];
  v7 = v6 ^ [(SFPhotosRankingInfo *)self assetEstimationOffAmount];
  indexedAssetsPercentage = [(SFPhotosRankingInfo *)self indexedAssetsPercentage];
  v9 = [indexedAssetsPercentage hash];
  analyzedAssetsPercentage = [(SFPhotosRankingInfo *)self analyzedAssetsPercentage];
  v11 = v9 ^ [analyzedAssetsPercentage hash];
  analyzedAndIndexedAssetsPercentage = [(SFPhotosRankingInfo *)self analyzedAndIndexedAssetsPercentage];
  v13 = v11 ^ [analyzedAndIndexedAssetsPercentage hash];
  embeddedAssetsPercentage = [(SFPhotosRankingInfo *)self embeddedAssetsPercentage];
  v15 = v13 ^ [embeddedAssetsPercentage hash] ^ v7;
  assetsRetrieved = [(SFPhotosRankingInfo *)self assetsRetrieved];
  v17 = assetsRetrieved ^ [(SFPhotosRankingInfo *)self collectionsRetrieved];

  return v15 ^ v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    if ([(SFPhotosRankingInfo *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v5 = equalCopy;
      totalNumberOfAssetsIndexed = [(SFPhotosRankingInfo *)self totalNumberOfAssetsIndexed];
      if (totalNumberOfAssetsIndexed != [(SFPhotosRankingInfo *)v5 totalNumberOfAssetsIndexed]|| (v7 = [(SFPhotosRankingInfo *)self totalNumberOfAssetsInLibrary], v7 != [(SFPhotosRankingInfo *)v5 totalNumberOfAssetsInLibrary]) || (v8 = [(SFPhotosRankingInfo *)self totalNumberOfEmbeddingMatchedAssets], v8 != [(SFPhotosRankingInfo *)v5 totalNumberOfEmbeddingMatchedAssets]) || (v9 = [(SFPhotosRankingInfo *)self totalNumberOfMetadataMatchedAssets], v9 != [(SFPhotosRankingInfo *)v5 totalNumberOfMetadataMatchedAssets]) || (v10 = [(SFPhotosRankingInfo *)self assetEstimationOffAmount], v10 != [(SFPhotosRankingInfo *)v5 assetEstimationOffAmount]))
      {
        v15 = 0;
LABEL_15:

        goto LABEL_16;
      }

      indexedAssetsPercentage = [(SFPhotosRankingInfo *)self indexedAssetsPercentage];
      indexedAssetsPercentage2 = [(SFPhotosRankingInfo *)v5 indexedAssetsPercentage];
      if ((indexedAssetsPercentage != 0) == (indexedAssetsPercentage2 == 0))
      {
        v15 = 0;
LABEL_45:

        goto LABEL_15;
      }

      indexedAssetsPercentage3 = [(SFPhotosRankingInfo *)self indexedAssetsPercentage];
      if (indexedAssetsPercentage3)
      {
        indexedAssetsPercentage4 = [(SFPhotosRankingInfo *)self indexedAssetsPercentage];
        indexedAssetsPercentage5 = [(SFPhotosRankingInfo *)v5 indexedAssetsPercentage];
        if (![indexedAssetsPercentage4 isEqual:?])
        {
          v15 = 0;
          goto LABEL_43;
        }

        v44 = indexedAssetsPercentage4;
      }

      analyzedAssetsPercentage = [(SFPhotosRankingInfo *)self analyzedAssetsPercentage];
      analyzedAssetsPercentage2 = [(SFPhotosRankingInfo *)v5 analyzedAssetsPercentage];
      if ((analyzedAssetsPercentage != 0) != (analyzedAssetsPercentage2 == 0))
      {
        analyzedAssetsPercentage3 = [(SFPhotosRankingInfo *)self analyzedAssetsPercentage];
        if (analyzedAssetsPercentage3)
        {
          v19 = analyzedAssetsPercentage3;
          analyzedAssetsPercentage4 = [(SFPhotosRankingInfo *)self analyzedAssetsPercentage];
          [(SFPhotosRankingInfo *)v5 analyzedAssetsPercentage];
          v43 = v41 = analyzedAssetsPercentage4;
          if (![analyzedAssetsPercentage4 isEqual:?])
          {
            v15 = 0;
            v25 = v43;
            goto LABEL_40;
          }

          v42 = v19;
        }

        else
        {
          v42 = 0;
        }

        analyzedAndIndexedAssetsPercentage = [(SFPhotosRankingInfo *)self analyzedAndIndexedAssetsPercentage];
        analyzedAndIndexedAssetsPercentage2 = [(SFPhotosRankingInfo *)v5 analyzedAndIndexedAssetsPercentage];
        if ((analyzedAndIndexedAssetsPercentage != 0) != (analyzedAndIndexedAssetsPercentage2 == 0))
        {
          v39 = analyzedAndIndexedAssetsPercentage;
          v40 = analyzedAndIndexedAssetsPercentage2;
          analyzedAndIndexedAssetsPercentage3 = [(SFPhotosRankingInfo *)self analyzedAndIndexedAssetsPercentage];
          if (analyzedAndIndexedAssetsPercentage3)
          {
            analyzedAndIndexedAssetsPercentage4 = [(SFPhotosRankingInfo *)self analyzedAndIndexedAssetsPercentage];
            analyzedAndIndexedAssetsPercentage5 = [(SFPhotosRankingInfo *)v5 analyzedAndIndexedAssetsPercentage];
            v38 = analyzedAndIndexedAssetsPercentage4;
            if (![analyzedAndIndexedAssetsPercentage4 isEqual:?])
            {
              v15 = 0;
              v19 = v42;
              v25 = v43;
              goto LABEL_38;
            }
          }

          embeddedAssetsPercentage = [(SFPhotosRankingInfo *)self embeddedAssetsPercentage];
          embeddedAssetsPercentage2 = [(SFPhotosRankingInfo *)v5 embeddedAssetsPercentage];
          if ((embeddedAssetsPercentage != 0) == (embeddedAssetsPercentage2 == 0))
          {

            v15 = 0;
            v19 = v42;
            v25 = v43;
            if (!analyzedAndIndexedAssetsPercentage3)
            {
              goto LABEL_39;
            }

            goto LABEL_38;
          }

          v35 = embeddedAssetsPercentage2;
          v36 = embeddedAssetsPercentage;
          [(SFPhotosRankingInfo *)self embeddedAssetsPercentage];
          v28 = v25 = v43;
          if (v28)
          {
            v33 = analyzedAndIndexedAssetsPercentage3;
            embeddedAssetsPercentage3 = [(SFPhotosRankingInfo *)self embeddedAssetsPercentage];
            embeddedAssetsPercentage4 = [(SFPhotosRankingInfo *)v5 embeddedAssetsPercentage];
            v32 = embeddedAssetsPercentage3;
            if (![embeddedAssetsPercentage3 isEqual:?])
            {
              v15 = 0;
              analyzedAndIndexedAssetsPercentage3 = v33;
              goto LABEL_52;
            }

            analyzedAndIndexedAssetsPercentage3 = v33;
          }

          assetsRetrieved = [(SFPhotosRankingInfo *)self assetsRetrieved];
          if (assetsRetrieved == [(SFPhotosRankingInfo *)v5 assetsRetrieved])
          {
            collectionsRetrieved = [(SFPhotosRankingInfo *)self collectionsRetrieved];
            v15 = collectionsRetrieved == [(SFPhotosRankingInfo *)v5 collectionsRetrieved];
            if (!v28)
            {
              goto LABEL_53;
            }
          }

          else
          {
            v15 = 0;
            if (!v28)
            {
LABEL_53:

              v19 = v42;
              if (!analyzedAndIndexedAssetsPercentage3)
              {
LABEL_39:

                if (!v19)
                {
LABEL_41:

LABEL_42:
                  indexedAssetsPercentage4 = v44;
                  if (!indexedAssetsPercentage3)
                  {
LABEL_44:

                    goto LABEL_45;
                  }

LABEL_43:

                  goto LABEL_44;
                }

LABEL_40:

                goto LABEL_41;
              }

LABEL_38:

              goto LABEL_39;
            }
          }

LABEL_52:

          goto LABEL_53;
        }

        if (v42)
        {
        }
      }

      v15 = 0;
      goto LABEL_42;
    }

    v15 = 0;
  }

LABEL_16:

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setTotalNumberOfAssetsIndexed:{-[SFPhotosRankingInfo totalNumberOfAssetsIndexed](self, "totalNumberOfAssetsIndexed")}];
  [v4 setTotalNumberOfAssetsInLibrary:{-[SFPhotosRankingInfo totalNumberOfAssetsInLibrary](self, "totalNumberOfAssetsInLibrary")}];
  [v4 setTotalNumberOfEmbeddingMatchedAssets:{-[SFPhotosRankingInfo totalNumberOfEmbeddingMatchedAssets](self, "totalNumberOfEmbeddingMatchedAssets")}];
  [v4 setTotalNumberOfMetadataMatchedAssets:{-[SFPhotosRankingInfo totalNumberOfMetadataMatchedAssets](self, "totalNumberOfMetadataMatchedAssets")}];
  [v4 setAssetEstimationOffAmount:{-[SFPhotosRankingInfo assetEstimationOffAmount](self, "assetEstimationOffAmount")}];
  indexedAssetsPercentage = [(SFPhotosRankingInfo *)self indexedAssetsPercentage];
  v6 = [indexedAssetsPercentage copy];
  [v4 setIndexedAssetsPercentage:v6];

  analyzedAssetsPercentage = [(SFPhotosRankingInfo *)self analyzedAssetsPercentage];
  v8 = [analyzedAssetsPercentage copy];
  [v4 setAnalyzedAssetsPercentage:v8];

  analyzedAndIndexedAssetsPercentage = [(SFPhotosRankingInfo *)self analyzedAndIndexedAssetsPercentage];
  v10 = [analyzedAndIndexedAssetsPercentage copy];
  [v4 setAnalyzedAndIndexedAssetsPercentage:v10];

  embeddedAssetsPercentage = [(SFPhotosRankingInfo *)self embeddedAssetsPercentage];
  v12 = [embeddedAssetsPercentage copy];
  [v4 setEmbeddedAssetsPercentage:v12];

  [v4 setAssetsRetrieved:{-[SFPhotosRankingInfo assetsRetrieved](self, "assetsRetrieved")}];
  [v4 setCollectionsRetrieved:{-[SFPhotosRankingInfo collectionsRetrieved](self, "collectionsRetrieved")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPhotosRankingInfo alloc] initWithFacade:self];
  jsonData = [(_SFPBPhotosRankingInfo *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPhotosRankingInfo alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBPhotosRankingInfo *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBPhotosRankingInfo alloc] initWithFacade:self];
  data = [(_SFPBPhotosRankingInfo *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFPhotosRankingInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBPhotosRankingInfo alloc] initWithData:v5];
  v7 = [(SFPhotosRankingInfo *)self initWithProtobuf:v6];

  return v7;
}

@end