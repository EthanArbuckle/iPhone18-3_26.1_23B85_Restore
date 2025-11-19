@interface SFPhotosRankingInfo
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFPhotosRankingInfo)initWithCoder:(id)a3;
- (SFPhotosRankingInfo)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFPhotosRankingInfo

- (SFPhotosRankingInfo)initWithProtobuf:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SFPhotosRankingInfo;
  v5 = [(SFPhotosRankingInfo *)&v12 init];
  if (v5)
  {
    if ([v4 totalNumberOfAssetsIndexed])
    {
      -[SFPhotosRankingInfo setTotalNumberOfAssetsIndexed:](v5, "setTotalNumberOfAssetsIndexed:", [v4 totalNumberOfAssetsIndexed]);
    }

    if ([v4 totalNumberOfAssetsInLibrary])
    {
      -[SFPhotosRankingInfo setTotalNumberOfAssetsInLibrary:](v5, "setTotalNumberOfAssetsInLibrary:", [v4 totalNumberOfAssetsInLibrary]);
    }

    if ([v4 totalNumberOfEmbeddingMatchedAssets])
    {
      -[SFPhotosRankingInfo setTotalNumberOfEmbeddingMatchedAssets:](v5, "setTotalNumberOfEmbeddingMatchedAssets:", [v4 totalNumberOfEmbeddingMatchedAssets]);
    }

    if ([v4 totalNumberOfMetadataMatchedAssets])
    {
      -[SFPhotosRankingInfo setTotalNumberOfMetadataMatchedAssets:](v5, "setTotalNumberOfMetadataMatchedAssets:", [v4 totalNumberOfMetadataMatchedAssets]);
    }

    if ([v4 assetEstimationOffAmount])
    {
      -[SFPhotosRankingInfo setAssetEstimationOffAmount:](v5, "setAssetEstimationOffAmount:", [v4 assetEstimationOffAmount]);
    }

    if ([v4 indexedAssetsPercentage])
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "indexedAssetsPercentage")}];
      [(SFPhotosRankingInfo *)v5 setIndexedAssetsPercentage:v6];
    }

    if ([v4 analyzedAssetsPercentage])
    {
      v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "analyzedAssetsPercentage")}];
      [(SFPhotosRankingInfo *)v5 setAnalyzedAssetsPercentage:v7];
    }

    if ([v4 analyzedAndIndexedAssetsPercentage])
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "analyzedAndIndexedAssetsPercentage")}];
      [(SFPhotosRankingInfo *)v5 setAnalyzedAndIndexedAssetsPercentage:v8];
    }

    if ([v4 embeddedAssetsPercentage])
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "embeddedAssetsPercentage")}];
      [(SFPhotosRankingInfo *)v5 setEmbeddedAssetsPercentage:v9];
    }

    if ([v4 assetsRetrieved])
    {
      -[SFPhotosRankingInfo setAssetsRetrieved:](v5, "setAssetsRetrieved:", [v4 assetsRetrieved]);
    }

    if ([v4 collectionsRetrieved])
    {
      -[SFPhotosRankingInfo setCollectionsRetrieved:](v5, "setCollectionsRetrieved:", [v4 collectionsRetrieved]);
    }

    v10 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(SFPhotosRankingInfo *)self totalNumberOfAssetsIndexed];
  v4 = [(SFPhotosRankingInfo *)self totalNumberOfAssetsInLibrary]^ v3;
  v5 = [(SFPhotosRankingInfo *)self totalNumberOfEmbeddingMatchedAssets];
  v6 = v4 ^ v5 ^ [(SFPhotosRankingInfo *)self totalNumberOfMetadataMatchedAssets];
  v7 = v6 ^ [(SFPhotosRankingInfo *)self assetEstimationOffAmount];
  v8 = [(SFPhotosRankingInfo *)self indexedAssetsPercentage];
  v9 = [v8 hash];
  v10 = [(SFPhotosRankingInfo *)self analyzedAssetsPercentage];
  v11 = v9 ^ [v10 hash];
  v12 = [(SFPhotosRankingInfo *)self analyzedAndIndexedAssetsPercentage];
  v13 = v11 ^ [v12 hash];
  v14 = [(SFPhotosRankingInfo *)self embeddedAssetsPercentage];
  v15 = v13 ^ [v14 hash] ^ v7;
  v16 = [(SFPhotosRankingInfo *)self assetsRetrieved];
  v17 = v16 ^ [(SFPhotosRankingInfo *)self collectionsRetrieved];

  return v15 ^ v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v15 = 1;
  }

  else
  {
    if ([(SFPhotosRankingInfo *)v4 isMemberOfClass:objc_opt_class()])
    {
      v5 = v4;
      v6 = [(SFPhotosRankingInfo *)self totalNumberOfAssetsIndexed];
      if (v6 != [(SFPhotosRankingInfo *)v5 totalNumberOfAssetsIndexed]|| (v7 = [(SFPhotosRankingInfo *)self totalNumberOfAssetsInLibrary], v7 != [(SFPhotosRankingInfo *)v5 totalNumberOfAssetsInLibrary]) || (v8 = [(SFPhotosRankingInfo *)self totalNumberOfEmbeddingMatchedAssets], v8 != [(SFPhotosRankingInfo *)v5 totalNumberOfEmbeddingMatchedAssets]) || (v9 = [(SFPhotosRankingInfo *)self totalNumberOfMetadataMatchedAssets], v9 != [(SFPhotosRankingInfo *)v5 totalNumberOfMetadataMatchedAssets]) || (v10 = [(SFPhotosRankingInfo *)self assetEstimationOffAmount], v10 != [(SFPhotosRankingInfo *)v5 assetEstimationOffAmount]))
      {
        v15 = 0;
LABEL_15:

        goto LABEL_16;
      }

      v11 = [(SFPhotosRankingInfo *)self indexedAssetsPercentage];
      v12 = [(SFPhotosRankingInfo *)v5 indexedAssetsPercentage];
      if ((v11 != 0) == (v12 == 0))
      {
        v15 = 0;
LABEL_45:

        goto LABEL_15;
      }

      v13 = [(SFPhotosRankingInfo *)self indexedAssetsPercentage];
      if (v13)
      {
        v14 = [(SFPhotosRankingInfo *)self indexedAssetsPercentage];
        v45 = [(SFPhotosRankingInfo *)v5 indexedAssetsPercentage];
        if (![v14 isEqual:?])
        {
          v15 = 0;
          goto LABEL_43;
        }

        v44 = v14;
      }

      v46 = [(SFPhotosRankingInfo *)self analyzedAssetsPercentage];
      v17 = [(SFPhotosRankingInfo *)v5 analyzedAssetsPercentage];
      if ((v46 != 0) != (v17 == 0))
      {
        v18 = [(SFPhotosRankingInfo *)self analyzedAssetsPercentage];
        if (v18)
        {
          v19 = v18;
          v20 = [(SFPhotosRankingInfo *)self analyzedAssetsPercentage];
          [(SFPhotosRankingInfo *)v5 analyzedAssetsPercentage];
          v43 = v41 = v20;
          if (![v20 isEqual:?])
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

        v21 = [(SFPhotosRankingInfo *)self analyzedAndIndexedAssetsPercentage];
        v22 = [(SFPhotosRankingInfo *)v5 analyzedAndIndexedAssetsPercentage];
        if ((v21 != 0) != (v22 == 0))
        {
          v39 = v21;
          v40 = v22;
          v23 = [(SFPhotosRankingInfo *)self analyzedAndIndexedAssetsPercentage];
          if (v23)
          {
            v24 = [(SFPhotosRankingInfo *)self analyzedAndIndexedAssetsPercentage];
            v37 = [(SFPhotosRankingInfo *)v5 analyzedAndIndexedAssetsPercentage];
            v38 = v24;
            if (![v24 isEqual:?])
            {
              v15 = 0;
              v19 = v42;
              v25 = v43;
              goto LABEL_38;
            }
          }

          v26 = [(SFPhotosRankingInfo *)self embeddedAssetsPercentage];
          v27 = [(SFPhotosRankingInfo *)v5 embeddedAssetsPercentage];
          if ((v26 != 0) == (v27 == 0))
          {

            v15 = 0;
            v19 = v42;
            v25 = v43;
            if (!v23)
            {
              goto LABEL_39;
            }

            goto LABEL_38;
          }

          v35 = v27;
          v36 = v26;
          [(SFPhotosRankingInfo *)self embeddedAssetsPercentage];
          v28 = v25 = v43;
          if (v28)
          {
            v33 = v23;
            v29 = [(SFPhotosRankingInfo *)self embeddedAssetsPercentage];
            v31 = [(SFPhotosRankingInfo *)v5 embeddedAssetsPercentage];
            v32 = v29;
            if (![v29 isEqual:?])
            {
              v15 = 0;
              v23 = v33;
              goto LABEL_52;
            }

            v23 = v33;
          }

          v34 = [(SFPhotosRankingInfo *)self assetsRetrieved];
          if (v34 == [(SFPhotosRankingInfo *)v5 assetsRetrieved])
          {
            v30 = [(SFPhotosRankingInfo *)self collectionsRetrieved];
            v15 = v30 == [(SFPhotosRankingInfo *)v5 collectionsRetrieved];
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
              if (!v23)
              {
LABEL_39:

                if (!v19)
                {
LABEL_41:

LABEL_42:
                  v14 = v44;
                  if (!v13)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setTotalNumberOfAssetsIndexed:{-[SFPhotosRankingInfo totalNumberOfAssetsIndexed](self, "totalNumberOfAssetsIndexed")}];
  [v4 setTotalNumberOfAssetsInLibrary:{-[SFPhotosRankingInfo totalNumberOfAssetsInLibrary](self, "totalNumberOfAssetsInLibrary")}];
  [v4 setTotalNumberOfEmbeddingMatchedAssets:{-[SFPhotosRankingInfo totalNumberOfEmbeddingMatchedAssets](self, "totalNumberOfEmbeddingMatchedAssets")}];
  [v4 setTotalNumberOfMetadataMatchedAssets:{-[SFPhotosRankingInfo totalNumberOfMetadataMatchedAssets](self, "totalNumberOfMetadataMatchedAssets")}];
  [v4 setAssetEstimationOffAmount:{-[SFPhotosRankingInfo assetEstimationOffAmount](self, "assetEstimationOffAmount")}];
  v5 = [(SFPhotosRankingInfo *)self indexedAssetsPercentage];
  v6 = [v5 copy];
  [v4 setIndexedAssetsPercentage:v6];

  v7 = [(SFPhotosRankingInfo *)self analyzedAssetsPercentage];
  v8 = [v7 copy];
  [v4 setAnalyzedAssetsPercentage:v8];

  v9 = [(SFPhotosRankingInfo *)self analyzedAndIndexedAssetsPercentage];
  v10 = [v9 copy];
  [v4 setAnalyzedAndIndexedAssetsPercentage:v10];

  v11 = [(SFPhotosRankingInfo *)self embeddedAssetsPercentage];
  v12 = [v11 copy];
  [v4 setEmbeddedAssetsPercentage:v12];

  [v4 setAssetsRetrieved:{-[SFPhotosRankingInfo assetsRetrieved](self, "assetsRetrieved")}];
  [v4 setCollectionsRetrieved:{-[SFPhotosRankingInfo collectionsRetrieved](self, "collectionsRetrieved")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPhotosRankingInfo alloc] initWithFacade:self];
  v3 = [(_SFPBPhotosRankingInfo *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPhotosRankingInfo alloc] initWithFacade:self];
  v3 = [(_SFPBPhotosRankingInfo *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBPhotosRankingInfo alloc] initWithFacade:self];
  v5 = [(_SFPBPhotosRankingInfo *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFPhotosRankingInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBPhotosRankingInfo alloc] initWithData:v5];
  v7 = [(SFPhotosRankingInfo *)self initWithProtobuf:v6];

  return v7;
}

@end