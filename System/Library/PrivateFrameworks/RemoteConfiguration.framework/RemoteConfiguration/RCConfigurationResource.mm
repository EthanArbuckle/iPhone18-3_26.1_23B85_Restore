@interface RCConfigurationResource
- (BOOL)isEqual:(id)a3;
- (BOOL)isExpiredWithMaxTTL:(double)a3 allowedToReachEndpoint:(BOOL)a4;
- (NSData)configurationData;
- (RCConfigurationResource)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RCConfigurationResource

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  v16 = [(RCConfigurationResource *)self requestKey];
  v3 = [(RCConfigurationResource *)self configurationID];
  v4 = [(RCConfigurationResource *)self lastModifiedString];
  v5 = [(RCConfigurationResource *)self lastModifiedFallbackString];
  v6 = [(RCConfigurationResource *)self lastFetchedDate];
  v7 = [(RCConfigurationResource *)self fallbackMaxAge];
  v8 = [(RCConfigurationResource *)self endpointMaxAge];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RCConfigurationResource environment](self, "environment")}];
  v10 = [(RCConfigurationResource *)self etag];
  v11 = [(RCConfigurationResource *)self userSegmentationConfiguration];
  v12 = [v15 stringWithFormat:@"<%@: %p requestKey:%@ configurationID:%@ lastModified:%@ lastModifiedFallback:%@ lastFetched:%@ fallbackMaxAge:%@ endpointMaxAge:%@ environment:%@ etag:%@ userSegmentationConfig:%@>", v14, self, v16, v3, v4, v5, v6, v7, v8, v9, v10, v11];;

  return v12;
}

- (NSData)configurationData
{
  v2 = [(RCConfigurationResource *)self gzippedConfigurationData];
  v3 = [v2 rc_gzipInflate];

  return v3;
}

- (BOOL)isExpiredWithMaxTTL:(double)a3 allowedToReachEndpoint:(BOOL)a4
{
  if (a4)
  {
    [(RCConfigurationResource *)self endpointMaxAge];
  }

  else
  {
    [(RCConfigurationResource *)self fallbackMaxAge];
  }
  v6 = ;
  [v6 doubleValue];
  if (v7 != 0.0)
  {
    [v6 doubleValue];
    a3 = fmax(a3, v8);
  }

  v9 = [(RCConfigurationResource *)self lastFetchedDate];
  [v9 rc_timeIntervalUntilNow];
  v11 = v10;

  v12 = v11 < 0.0 || v11 >= a3;
  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(RCConfigurationResource *)self gzippedConfigurationData];
    v7 = [v5 gzippedConfigurationData];
    if ([v6 isEqual:v7])
    {
      v8 = [(RCConfigurationResource *)self requestKey];
      v9 = [v5 requestKey];
      if ([v8 isEqualToString:v9])
      {
        v10 = [(RCConfigurationResource *)self userSegmentationConfiguration];
        v11 = [v5 userSegmentationConfiguration];
        if ([v10 isEqual:v11])
        {
          v60 = v11;
          v62 = v10;
          v12 = MEMORY[0x277D82BB8];
          v13 = [(RCConfigurationResource *)self treatmentIDs];
          [v5 treatmentIDs];
          v59 = v61 = v13;
          if ([v12 rc_object:v13 isEqualToObject:?])
          {
            v14 = MEMORY[0x277D82BB8];
            v15 = [(RCConfigurationResource *)self segmentSetIDs];
            v16 = [v5 segmentSetIDs];
            v17 = v14;
            v18 = v15;
            v58 = v16;
            if ([v17 rc_object:v15 isEqualToObject:?])
            {
              v19 = [(RCConfigurationResource *)self userID];
              [v5 userID];
              v56 = v57 = v19;
              if ([v19 isEqualToString:?])
              {
                v20 = [(RCConfigurationResource *)self storefrontID];
                v54 = [v5 storefrontID];
                v55 = v20;
                if ([v20 isEqualToString:?])
                {
                  v53 = v18;
                  v21 = MEMORY[0x277D82BB8];
                  v22 = [(RCConfigurationResource *)self preferredLanguages];
                  v51 = [v5 preferredLanguages];
                  v52 = v22;
                  if ([v21 rc_object:v22 isEqualToObject:?])
                  {
                    v23 = [(RCConfigurationResource *)self configurationID];
                    v49 = [v5 configurationID];
                    v50 = v23;
                    if ([v23 isEqualToString:?])
                    {
                      v24 = [(RCConfigurationResource *)self contentHash];
                      v47 = [v5 contentHash];
                      v48 = v24;
                      if ([v24 isEqualToString:?])
                      {
                        v25 = [(RCConfigurationResource *)self lastModifiedString];
                        v45 = [v5 lastModifiedString];
                        v46 = v25;
                        if ([v25 isEqualToString:?])
                        {
                          v26 = [(RCConfigurationResource *)self etag];
                          v43 = [v5 etag];
                          v44 = v26;
                          if ([v26 isEqualToString:?])
                          {
                            v27 = [(RCConfigurationResource *)self lastModifiedFallbackString];
                            v41 = [v5 lastModifiedFallbackString];
                            v42 = v27;
                            if ([v27 isEqualToString:?])
                            {
                              v28 = [(RCConfigurationResource *)self lastFetchedDate];
                              v29 = [v5 lastFetchedDate];
                              if ([v28 isEqual:v29])
                              {
                                v30 = [(RCConfigurationResource *)self fallbackMaxAge];
                                [v5 fallbackMaxAge];
                                v40 = v39 = v30;
                                if ([v30 isEqual:?])
                                {
                                  v31 = [(RCConfigurationResource *)self endpointMaxAge];
                                  v32 = [v5 endpointMaxAge];
                                  v38 = v31;
                                  v33 = v31;
                                  v34 = v32;
                                  if ([v33 isEqual:?])
                                  {
                                    v35 = [(RCConfigurationResource *)self environment];
                                    v36 = v35 == [v5 environment];
                                  }

                                  else
                                  {
                                    v36 = 0;
                                  }
                                }

                                else
                                {
                                  v36 = 0;
                                }
                              }

                              else
                              {
                                v36 = 0;
                              }
                            }

                            else
                            {
                              v36 = 0;
                            }

                            v10 = v62;
                            v11 = v60;
                            v18 = v53;
                          }

                          else
                          {
                            v36 = 0;
                            v10 = v62;
                            v11 = v60;
                            v18 = v53;
                          }
                        }

                        else
                        {
                          v36 = 0;
                          v10 = v62;
                          v11 = v60;
                          v18 = v53;
                        }
                      }

                      else
                      {
                        v36 = 0;
                        v10 = v62;
                        v11 = v60;
                        v18 = v53;
                      }
                    }

                    else
                    {
                      v36 = 0;
                      v10 = v62;
                      v11 = v60;
                      v18 = v53;
                    }
                  }

                  else
                  {
                    v36 = 0;
                    v10 = v62;
                    v11 = v60;
                    v18 = v53;
                  }
                }

                else
                {
                  v36 = 0;
                  v11 = v60;
                }
              }

              else
              {
                v36 = 0;
                v11 = v60;
              }
            }

            else
            {
              v36 = 0;
              v11 = v60;
            }
          }

          else
          {
            v36 = 0;
            v11 = v60;
          }
        }

        else
        {
          v36 = 0;
        }
      }

      else
      {
        v36 = 0;
      }
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

- (unint64_t)hash
{
  v37 = [(RCConfigurationResource *)self gzippedConfigurationData];
  v3 = [v37 hash];
  v36 = [(RCConfigurationResource *)self requestKey];
  v4 = [v36 hash] ^ v3;
  v35 = [(RCConfigurationResource *)self userSegmentationConfiguration];
  v5 = [v35 hash];
  v34 = [(RCConfigurationResource *)self treatmentIDs];
  v6 = v4 ^ v5 ^ [v34 hash];
  v33 = [(RCConfigurationResource *)self segmentSetIDs];
  v7 = [v33 hash];
  v32 = [(RCConfigurationResource *)self userID];
  v8 = v7 ^ [v32 hash];
  v31 = [(RCConfigurationResource *)self storefrontID];
  v9 = v6 ^ v8 ^ [v31 hash];
  v30 = [(RCConfigurationResource *)self preferredLanguages];
  v10 = [v30 hash];
  v29 = [(RCConfigurationResource *)self configurationID];
  v11 = v10 ^ [v29 hash];
  v12 = [(RCConfigurationResource *)self contentHash];
  v13 = v11 ^ [v12 hash];
  v14 = [(RCConfigurationResource *)self lastModifiedString];
  v15 = v9 ^ v13 ^ [v14 hash];
  v16 = [(RCConfigurationResource *)self etag];
  v17 = [v16 hash];
  v18 = [(RCConfigurationResource *)self lastModifiedFallbackString];
  v19 = v17 ^ [v18 hash];
  v20 = [(RCConfigurationResource *)self lastFetchedDate];
  v21 = v19 ^ [v20 hash];
  v22 = [(RCConfigurationResource *)self fallbackMaxAge];
  v23 = v21 ^ [v22 hash];
  v24 = [(RCConfigurationResource *)self endpointMaxAge];
  v25 = v15 ^ v23 ^ [v24 hash];
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RCConfigurationResource environment](self, "environment")}];
  v27 = [v26 hash];

  return v25 ^ v27;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(RCConfigurationResource);
  v5 = [(RCConfigurationResource *)self requestKey];
  [(RCConfigurationResource *)v4 setRequestKey:v5];

  v6 = [(RCConfigurationResource *)self gzippedConfigurationData];
  [(RCConfigurationResource *)v4 setGzippedConfigurationData:v6];

  v7 = [(RCConfigurationResource *)self userSegmentationConfiguration];
  [(RCConfigurationResource *)v4 setUserSegmentationConfiguration:v7];

  v8 = [(RCConfigurationResource *)self treatmentIDs];
  [(RCConfigurationResource *)v4 setTreatmentIDs:v8];

  v9 = [(RCConfigurationResource *)self segmentSetIDs];
  [(RCConfigurationResource *)v4 setSegmentSetIDs:v9];

  v10 = [(RCConfigurationResource *)self userID];
  [(RCConfigurationResource *)v4 setUserID:v10];

  v11 = [(RCConfigurationResource *)self storefrontID];
  [(RCConfigurationResource *)v4 setStorefrontID:v11];

  v12 = [(RCConfigurationResource *)self preferredLanguages];
  [(RCConfigurationResource *)v4 setPreferredLanguages:v12];

  v13 = [(RCConfigurationResource *)self configurationID];
  [(RCConfigurationResource *)v4 setConfigurationID:v13];

  v14 = [(RCConfigurationResource *)self contentHash];
  [(RCConfigurationResource *)v4 setContentHash:v14];

  v15 = [(RCConfigurationResource *)self lastModifiedString];
  [(RCConfigurationResource *)v4 setLastModifiedString:v15];

  v16 = [(RCConfigurationResource *)self etag];
  [(RCConfigurationResource *)v4 setEtag:v16];

  v17 = [(RCConfigurationResource *)self lastModifiedFallbackString];
  [(RCConfigurationResource *)v4 setLastModifiedFallbackString:v17];

  v18 = [(RCConfigurationResource *)self lastFetchedDate];
  [(RCConfigurationResource *)v4 setLastFetchedDate:v18];

  v19 = [(RCConfigurationResource *)self fallbackMaxAge];
  [(RCConfigurationResource *)v4 setFallbackMaxAge:v19];

  v20 = [(RCConfigurationResource *)self endpointMaxAge];
  [(RCConfigurationResource *)v4 setEndpointMaxAge:v20];

  [(RCConfigurationResource *)v4 setEnvironment:[(RCConfigurationResource *)self environment]];
  return v4;
}

- (RCConfigurationResource)initWithCoder:(id)a3
{
  v4 = a3;
  v43.receiver = self;
  v43.super_class = RCConfigurationResource;
  v5 = [(RCConfigurationResource *)&v43 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestKey"];
    requestKey = v5->_requestKey;
    v5->_requestKey = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gzippedConfigurationData"];
    gzippedConfigurationData = v5->_gzippedConfigurationData;
    v5->_gzippedConfigurationData = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userSegmentationConfiguration"];
    userSegmentationConfiguration = v5->_userSegmentationConfiguration;
    v5->_userSegmentationConfiguration = v13;

    v15 = [v4 decodeObjectOfClasses:v8 forKey:@"treatmentIDs"];
    treatmentIDs = v5->_treatmentIDs;
    v5->_treatmentIDs = v15;

    v17 = [v4 decodeObjectOfClasses:v8 forKey:@"segmentSetIDs"];
    segmentSetIDs = v5->_segmentSetIDs;
    v5->_segmentSetIDs = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userID"];
    userID = v5->_userID;
    v5->_userID = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storefrontID"];
    storefrontID = v5->_storefrontID;
    v5->_storefrontID = v21;

    v23 = [v4 decodeObjectOfClasses:v8 forKey:@"preferredLanguages"];
    preferredLanguages = v5->_preferredLanguages;
    v5->_preferredLanguages = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configurationID"];
    configurationID = v5->_configurationID;
    v5->_configurationID = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentHash"];
    contentHash = v5->_contentHash;
    v5->_contentHash = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastModifiedString"];
    lastModifiedString = v5->_lastModifiedString;
    v5->_lastModifiedString = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"etag"];
    etag = v5->_etag;
    v5->_etag = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastModifiedFallbackString"];
    lastModifiedFallbackString = v5->_lastModifiedFallbackString;
    v5->_lastModifiedFallbackString = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastFetchedDate"];
    lastFetchedDate = v5->_lastFetchedDate;
    v5->_lastFetchedDate = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fallbackMaxAge"];
    fallbackMaxAge = v5->_fallbackMaxAge;
    v5->_fallbackMaxAge = v37;

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endpointMaxAge"];
    endpointMaxAge = v5->_endpointMaxAge;
    v5->_endpointMaxAge = v39;

    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"environment"];
    v5->_environment = [v41 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RCConfigurationResource *)self requestKey];
  [v4 encodeObject:v5 forKey:@"requestKey"];

  v6 = [(RCConfigurationResource *)self gzippedConfigurationData];
  [v4 encodeObject:v6 forKey:@"gzippedConfigurationData"];

  v7 = [(RCConfigurationResource *)self userSegmentationConfiguration];
  [v4 encodeObject:v7 forKey:@"userSegmentationConfiguration"];

  v8 = [(RCConfigurationResource *)self treatmentIDs];
  [v4 encodeObject:v8 forKey:@"treatmentIDs"];

  v9 = [(RCConfigurationResource *)self segmentSetIDs];
  [v4 encodeObject:v9 forKey:@"segmentSetIDs"];

  v10 = [(RCConfigurationResource *)self userID];
  [v4 encodeObject:v10 forKey:@"userID"];

  v11 = [(RCConfigurationResource *)self storefrontID];
  [v4 encodeObject:v11 forKey:@"storefrontID"];

  v12 = [(RCConfigurationResource *)self preferredLanguages];
  [v4 encodeObject:v12 forKey:@"preferredLanguages"];

  v13 = [(RCConfigurationResource *)self configurationID];
  [v4 encodeObject:v13 forKey:@"configurationID"];

  v14 = [(RCConfigurationResource *)self contentHash];
  [v4 encodeObject:v14 forKey:@"contentHash"];

  v15 = [(RCConfigurationResource *)self lastModifiedString];
  [v4 encodeObject:v15 forKey:@"lastModifiedString"];

  v16 = [(RCConfigurationResource *)self etag];
  [v4 encodeObject:v16 forKey:@"etag"];

  v17 = [(RCConfigurationResource *)self lastModifiedFallbackString];
  [v4 encodeObject:v17 forKey:@"lastModifiedFallbackString"];

  v18 = [(RCConfigurationResource *)self lastFetchedDate];
  [v4 encodeObject:v18 forKey:@"lastFetchedDate"];

  v19 = [(RCConfigurationResource *)self fallbackMaxAge];
  [v4 encodeObject:v19 forKey:@"fallbackMaxAge"];

  v20 = [(RCConfigurationResource *)self endpointMaxAge];
  [v4 encodeObject:v20 forKey:@"endpointMaxAge"];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RCConfigurationResource environment](self, "environment")}];
  [v4 encodeObject:v21 forKey:@"environment"];
}

@end