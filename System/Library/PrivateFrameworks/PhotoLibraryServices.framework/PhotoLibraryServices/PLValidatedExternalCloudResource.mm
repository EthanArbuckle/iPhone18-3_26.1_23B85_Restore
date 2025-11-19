@interface PLValidatedExternalCloudResource
- (BOOL)isEqualToValidatedExternalResource:(id)a3;
- (PLValidatedExternalCloudResource)initWithCloudResource:(id)a3;
- (PLValidatedExternalCloudResource)initWithInternalResource:(id)a3;
@end

@implementation PLValidatedExternalCloudResource

- (BOOL)isEqualToValidatedExternalResource:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PLValidatedExternalCloudResource;
  if ([(PLValidatedExternalResource *)&v18 isEqualToValidatedExternalResource:v4])
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v8 = v4;
      v9 = [(PLValidatedExternalCloudResource *)self cloudLocalState];
      if (v9 != [v8 cloudLocalState] || (v10 = -[PLValidatedExternalCloudResource cplType](self, "cplType"), v10 != objc_msgSend(v8, "cplType")) || (v11 = -[PLValidatedExternalCloudResource sourceCplType](self, "sourceCplType"), v11 != objc_msgSend(v8, "sourceCplType")) || (-[PLValidatedExternalCloudResource fingerprint](self, "fingerprint"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "fingerprint"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isEqualToString:", v13), v13, v12, !v14))
      {
        v6 = 0;
LABEL_14:

        goto LABEL_4;
      }

      v15 = [(PLValidatedExternalCloudResource *)self stableHash];
      if (v15 || ([v8 stableHash], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v16 = [(PLValidatedExternalCloudResource *)self stableHash];
        v17 = [v8 stableHash];
        v6 = [v16 isEqualToString:v17];

        if (v15)
        {
LABEL_17:

          goto LABEL_14;
        }
      }

      else
      {
        v6 = 1;
      }

      goto LABEL_17;
    }
  }

  v6 = 0;
LABEL_4:

  return v6;
}

- (PLValidatedExternalCloudResource)initWithInternalResource:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PLValidatedExternalCloudResource;
  v5 = [(PLValidatedExternalResource *)&v13 init];
  if (v5)
  {
    -[PLValidatedExternalCloudResource setCloudLocalState:](v5, "setCloudLocalState:", [v4 cloudLocalState]);
    v6 = [v4 cloudMasterDateCreated];
    [(PLValidatedExternalCloudResource *)v5 setMasterDateCreated:v6];

    v7 = [v4 cloudLastOnDemandDownloadDate];
    [(PLValidatedExternalCloudResource *)v5 setLastOnDemandDownloadDate:v7];

    v8 = [v4 cloudLastPrefetchDate];
    [(PLValidatedExternalCloudResource *)v5 setLastPrefetchDate:v8];

    -[PLValidatedExternalCloudResource setPrefetchCount:](v5, "setPrefetchCount:", [v4 cloudPrefetchCount]);
    v9 = [v4 cloudPrunedAt];
    [(PLValidatedExternalCloudResource *)v5 setPrunedAt:v9];

    -[PLValidatedExternalCloudResource setSourceCplType:](v5, "setSourceCplType:", [v4 cloudSourceType]);
    v10 = [v4 fingerprint];
    [(PLValidatedExternalCloudResource *)v5 setFingerprint:v10];

    v11 = [v4 stableHash];
    [(PLValidatedExternalCloudResource *)v5 setStableHash:v11];
  }

  return v5;
}

- (PLValidatedExternalCloudResource)initWithCloudResource:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PLValidatedExternalCloudResource;
  v5 = [(PLValidatedExternalResource *)&v12 init];
  if (v5)
  {
    -[PLValidatedExternalCloudResource setCloudLocalState:](v5, "setCloudLocalState:", [v4 cloudLocalState]);
    v6 = [v4 dateCreated];
    [(PLValidatedExternalCloudResource *)v5 setMasterDateCreated:v6];

    v7 = [v4 lastOnDemandDownloadDate];
    [(PLValidatedExternalCloudResource *)v5 setLastOnDemandDownloadDate:v7];

    v8 = [v4 lastPrefetchDate];
    [(PLValidatedExternalCloudResource *)v5 setLastPrefetchDate:v8];

    -[PLValidatedExternalCloudResource setPrefetchCount:](v5, "setPrefetchCount:", [v4 prefetchCount]);
    v9 = [v4 prunedAt];
    [(PLValidatedExternalCloudResource *)v5 setPrunedAt:v9];

    -[PLValidatedExternalCloudResource setSourceCplType:](v5, "setSourceCplType:", [v4 sourceType]);
    v10 = [v4 fingerprint];
    [(PLValidatedExternalCloudResource *)v5 setFingerprint:v10];
  }

  return v5;
}

@end