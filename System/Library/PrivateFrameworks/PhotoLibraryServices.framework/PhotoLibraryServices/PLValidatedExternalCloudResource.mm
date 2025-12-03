@interface PLValidatedExternalCloudResource
- (BOOL)isEqualToValidatedExternalResource:(id)resource;
- (PLValidatedExternalCloudResource)initWithCloudResource:(id)resource;
- (PLValidatedExternalCloudResource)initWithInternalResource:(id)resource;
@end

@implementation PLValidatedExternalCloudResource

- (BOOL)isEqualToValidatedExternalResource:(id)resource
{
  resourceCopy = resource;
  v18.receiver = self;
  v18.super_class = PLValidatedExternalCloudResource;
  if ([(PLValidatedExternalResource *)&v18 isEqualToValidatedExternalResource:resourceCopy])
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v8 = resourceCopy;
      cloudLocalState = [(PLValidatedExternalCloudResource *)self cloudLocalState];
      if (cloudLocalState != [v8 cloudLocalState] || (v10 = -[PLValidatedExternalCloudResource cplType](self, "cplType"), v10 != objc_msgSend(v8, "cplType")) || (v11 = -[PLValidatedExternalCloudResource sourceCplType](self, "sourceCplType"), v11 != objc_msgSend(v8, "sourceCplType")) || (-[PLValidatedExternalCloudResource fingerprint](self, "fingerprint"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "fingerprint"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isEqualToString:", v13), v13, v12, !v14))
      {
        v6 = 0;
LABEL_14:

        goto LABEL_4;
      }

      stableHash = [(PLValidatedExternalCloudResource *)self stableHash];
      if (stableHash || ([v8 stableHash], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        stableHash2 = [(PLValidatedExternalCloudResource *)self stableHash];
        stableHash3 = [v8 stableHash];
        v6 = [stableHash2 isEqualToString:stableHash3];

        if (stableHash)
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

- (PLValidatedExternalCloudResource)initWithInternalResource:(id)resource
{
  resourceCopy = resource;
  v13.receiver = self;
  v13.super_class = PLValidatedExternalCloudResource;
  v5 = [(PLValidatedExternalResource *)&v13 init];
  if (v5)
  {
    -[PLValidatedExternalCloudResource setCloudLocalState:](v5, "setCloudLocalState:", [resourceCopy cloudLocalState]);
    cloudMasterDateCreated = [resourceCopy cloudMasterDateCreated];
    [(PLValidatedExternalCloudResource *)v5 setMasterDateCreated:cloudMasterDateCreated];

    cloudLastOnDemandDownloadDate = [resourceCopy cloudLastOnDemandDownloadDate];
    [(PLValidatedExternalCloudResource *)v5 setLastOnDemandDownloadDate:cloudLastOnDemandDownloadDate];

    cloudLastPrefetchDate = [resourceCopy cloudLastPrefetchDate];
    [(PLValidatedExternalCloudResource *)v5 setLastPrefetchDate:cloudLastPrefetchDate];

    -[PLValidatedExternalCloudResource setPrefetchCount:](v5, "setPrefetchCount:", [resourceCopy cloudPrefetchCount]);
    cloudPrunedAt = [resourceCopy cloudPrunedAt];
    [(PLValidatedExternalCloudResource *)v5 setPrunedAt:cloudPrunedAt];

    -[PLValidatedExternalCloudResource setSourceCplType:](v5, "setSourceCplType:", [resourceCopy cloudSourceType]);
    fingerprint = [resourceCopy fingerprint];
    [(PLValidatedExternalCloudResource *)v5 setFingerprint:fingerprint];

    stableHash = [resourceCopy stableHash];
    [(PLValidatedExternalCloudResource *)v5 setStableHash:stableHash];
  }

  return v5;
}

- (PLValidatedExternalCloudResource)initWithCloudResource:(id)resource
{
  resourceCopy = resource;
  v12.receiver = self;
  v12.super_class = PLValidatedExternalCloudResource;
  v5 = [(PLValidatedExternalResource *)&v12 init];
  if (v5)
  {
    -[PLValidatedExternalCloudResource setCloudLocalState:](v5, "setCloudLocalState:", [resourceCopy cloudLocalState]);
    dateCreated = [resourceCopy dateCreated];
    [(PLValidatedExternalCloudResource *)v5 setMasterDateCreated:dateCreated];

    lastOnDemandDownloadDate = [resourceCopy lastOnDemandDownloadDate];
    [(PLValidatedExternalCloudResource *)v5 setLastOnDemandDownloadDate:lastOnDemandDownloadDate];

    lastPrefetchDate = [resourceCopy lastPrefetchDate];
    [(PLValidatedExternalCloudResource *)v5 setLastPrefetchDate:lastPrefetchDate];

    -[PLValidatedExternalCloudResource setPrefetchCount:](v5, "setPrefetchCount:", [resourceCopy prefetchCount]);
    prunedAt = [resourceCopy prunedAt];
    [(PLValidatedExternalCloudResource *)v5 setPrunedAt:prunedAt];

    -[PLValidatedExternalCloudResource setSourceCplType:](v5, "setSourceCplType:", [resourceCopy sourceType]);
    fingerprint = [resourceCopy fingerprint];
    [(PLValidatedExternalCloudResource *)v5 setFingerprint:fingerprint];
  }

  return v5;
}

@end