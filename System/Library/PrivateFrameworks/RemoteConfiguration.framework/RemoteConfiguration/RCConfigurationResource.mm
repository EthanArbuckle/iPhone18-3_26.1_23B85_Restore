@interface RCConfigurationResource
- (BOOL)isEqual:(id)equal;
- (BOOL)isExpiredWithMaxTTL:(double)l allowedToReachEndpoint:(BOOL)endpoint;
- (NSData)configurationData;
- (RCConfigurationResource)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RCConfigurationResource

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  requestKey = [(RCConfigurationResource *)self requestKey];
  configurationID = [(RCConfigurationResource *)self configurationID];
  lastModifiedString = [(RCConfigurationResource *)self lastModifiedString];
  lastModifiedFallbackString = [(RCConfigurationResource *)self lastModifiedFallbackString];
  lastFetchedDate = [(RCConfigurationResource *)self lastFetchedDate];
  fallbackMaxAge = [(RCConfigurationResource *)self fallbackMaxAge];
  endpointMaxAge = [(RCConfigurationResource *)self endpointMaxAge];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RCConfigurationResource environment](self, "environment")}];
  etag = [(RCConfigurationResource *)self etag];
  userSegmentationConfiguration = [(RCConfigurationResource *)self userSegmentationConfiguration];
  v12 = [v15 stringWithFormat:@"<%@: %p requestKey:%@ configurationID:%@ lastModified:%@ lastModifiedFallback:%@ lastFetched:%@ fallbackMaxAge:%@ endpointMaxAge:%@ environment:%@ etag:%@ userSegmentationConfig:%@>", v14, self, requestKey, configurationID, lastModifiedString, lastModifiedFallbackString, lastFetchedDate, fallbackMaxAge, endpointMaxAge, v9, etag, userSegmentationConfiguration];;

  return v12;
}

- (NSData)configurationData
{
  gzippedConfigurationData = [(RCConfigurationResource *)self gzippedConfigurationData];
  rc_gzipInflate = [gzippedConfigurationData rc_gzipInflate];

  return rc_gzipInflate;
}

- (BOOL)isExpiredWithMaxTTL:(double)l allowedToReachEndpoint:(BOOL)endpoint
{
  if (endpoint)
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
    l = fmax(l, v8);
  }

  lastFetchedDate = [(RCConfigurationResource *)self lastFetchedDate];
  [lastFetchedDate rc_timeIntervalUntilNow];
  v11 = v10;

  v12 = v11 < 0.0 || v11 >= l;
  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    gzippedConfigurationData = [(RCConfigurationResource *)self gzippedConfigurationData];
    gzippedConfigurationData2 = [v5 gzippedConfigurationData];
    if ([gzippedConfigurationData isEqual:gzippedConfigurationData2])
    {
      requestKey = [(RCConfigurationResource *)self requestKey];
      requestKey2 = [v5 requestKey];
      if ([requestKey isEqualToString:requestKey2])
      {
        userSegmentationConfiguration = [(RCConfigurationResource *)self userSegmentationConfiguration];
        userSegmentationConfiguration2 = [v5 userSegmentationConfiguration];
        if ([userSegmentationConfiguration isEqual:userSegmentationConfiguration2])
        {
          v60 = userSegmentationConfiguration2;
          v62 = userSegmentationConfiguration;
          v12 = MEMORY[0x277D82BB8];
          treatmentIDs = [(RCConfigurationResource *)self treatmentIDs];
          [v5 treatmentIDs];
          v59 = v61 = treatmentIDs;
          if ([v12 rc_object:treatmentIDs isEqualToObject:?])
          {
            v14 = MEMORY[0x277D82BB8];
            segmentSetIDs = [(RCConfigurationResource *)self segmentSetIDs];
            segmentSetIDs2 = [v5 segmentSetIDs];
            v17 = v14;
            v18 = segmentSetIDs;
            v58 = segmentSetIDs2;
            if ([v17 rc_object:segmentSetIDs isEqualToObject:?])
            {
              userID = [(RCConfigurationResource *)self userID];
              [v5 userID];
              v56 = v57 = userID;
              if ([userID isEqualToString:?])
              {
                storefrontID = [(RCConfigurationResource *)self storefrontID];
                storefrontID2 = [v5 storefrontID];
                v55 = storefrontID;
                if ([storefrontID isEqualToString:?])
                {
                  v53 = v18;
                  v21 = MEMORY[0x277D82BB8];
                  preferredLanguages = [(RCConfigurationResource *)self preferredLanguages];
                  preferredLanguages2 = [v5 preferredLanguages];
                  v52 = preferredLanguages;
                  if ([v21 rc_object:preferredLanguages isEqualToObject:?])
                  {
                    configurationID = [(RCConfigurationResource *)self configurationID];
                    configurationID2 = [v5 configurationID];
                    v50 = configurationID;
                    if ([configurationID isEqualToString:?])
                    {
                      contentHash = [(RCConfigurationResource *)self contentHash];
                      contentHash2 = [v5 contentHash];
                      v48 = contentHash;
                      if ([contentHash isEqualToString:?])
                      {
                        lastModifiedString = [(RCConfigurationResource *)self lastModifiedString];
                        lastModifiedString2 = [v5 lastModifiedString];
                        v46 = lastModifiedString;
                        if ([lastModifiedString isEqualToString:?])
                        {
                          etag = [(RCConfigurationResource *)self etag];
                          etag2 = [v5 etag];
                          v44 = etag;
                          if ([etag isEqualToString:?])
                          {
                            lastModifiedFallbackString = [(RCConfigurationResource *)self lastModifiedFallbackString];
                            lastModifiedFallbackString2 = [v5 lastModifiedFallbackString];
                            v42 = lastModifiedFallbackString;
                            if ([lastModifiedFallbackString isEqualToString:?])
                            {
                              lastFetchedDate = [(RCConfigurationResource *)self lastFetchedDate];
                              lastFetchedDate2 = [v5 lastFetchedDate];
                              if ([lastFetchedDate isEqual:lastFetchedDate2])
                              {
                                fallbackMaxAge = [(RCConfigurationResource *)self fallbackMaxAge];
                                [v5 fallbackMaxAge];
                                v40 = v39 = fallbackMaxAge;
                                if ([fallbackMaxAge isEqual:?])
                                {
                                  endpointMaxAge = [(RCConfigurationResource *)self endpointMaxAge];
                                  endpointMaxAge2 = [v5 endpointMaxAge];
                                  v38 = endpointMaxAge;
                                  v33 = endpointMaxAge;
                                  v34 = endpointMaxAge2;
                                  if ([v33 isEqual:?])
                                  {
                                    environment = [(RCConfigurationResource *)self environment];
                                    v36 = environment == [v5 environment];
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

                            userSegmentationConfiguration = v62;
                            userSegmentationConfiguration2 = v60;
                            v18 = v53;
                          }

                          else
                          {
                            v36 = 0;
                            userSegmentationConfiguration = v62;
                            userSegmentationConfiguration2 = v60;
                            v18 = v53;
                          }
                        }

                        else
                        {
                          v36 = 0;
                          userSegmentationConfiguration = v62;
                          userSegmentationConfiguration2 = v60;
                          v18 = v53;
                        }
                      }

                      else
                      {
                        v36 = 0;
                        userSegmentationConfiguration = v62;
                        userSegmentationConfiguration2 = v60;
                        v18 = v53;
                      }
                    }

                    else
                    {
                      v36 = 0;
                      userSegmentationConfiguration = v62;
                      userSegmentationConfiguration2 = v60;
                      v18 = v53;
                    }
                  }

                  else
                  {
                    v36 = 0;
                    userSegmentationConfiguration = v62;
                    userSegmentationConfiguration2 = v60;
                    v18 = v53;
                  }
                }

                else
                {
                  v36 = 0;
                  userSegmentationConfiguration2 = v60;
                }
              }

              else
              {
                v36 = 0;
                userSegmentationConfiguration2 = v60;
              }
            }

            else
            {
              v36 = 0;
              userSegmentationConfiguration2 = v60;
            }
          }

          else
          {
            v36 = 0;
            userSegmentationConfiguration2 = v60;
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
  gzippedConfigurationData = [(RCConfigurationResource *)self gzippedConfigurationData];
  v3 = [gzippedConfigurationData hash];
  requestKey = [(RCConfigurationResource *)self requestKey];
  v4 = [requestKey hash] ^ v3;
  userSegmentationConfiguration = [(RCConfigurationResource *)self userSegmentationConfiguration];
  v5 = [userSegmentationConfiguration hash];
  treatmentIDs = [(RCConfigurationResource *)self treatmentIDs];
  v6 = v4 ^ v5 ^ [treatmentIDs hash];
  segmentSetIDs = [(RCConfigurationResource *)self segmentSetIDs];
  v7 = [segmentSetIDs hash];
  userID = [(RCConfigurationResource *)self userID];
  v8 = v7 ^ [userID hash];
  storefrontID = [(RCConfigurationResource *)self storefrontID];
  v9 = v6 ^ v8 ^ [storefrontID hash];
  preferredLanguages = [(RCConfigurationResource *)self preferredLanguages];
  v10 = [preferredLanguages hash];
  configurationID = [(RCConfigurationResource *)self configurationID];
  v11 = v10 ^ [configurationID hash];
  contentHash = [(RCConfigurationResource *)self contentHash];
  v13 = v11 ^ [contentHash hash];
  lastModifiedString = [(RCConfigurationResource *)self lastModifiedString];
  v15 = v9 ^ v13 ^ [lastModifiedString hash];
  etag = [(RCConfigurationResource *)self etag];
  v17 = [etag hash];
  lastModifiedFallbackString = [(RCConfigurationResource *)self lastModifiedFallbackString];
  v19 = v17 ^ [lastModifiedFallbackString hash];
  lastFetchedDate = [(RCConfigurationResource *)self lastFetchedDate];
  v21 = v19 ^ [lastFetchedDate hash];
  fallbackMaxAge = [(RCConfigurationResource *)self fallbackMaxAge];
  v23 = v21 ^ [fallbackMaxAge hash];
  endpointMaxAge = [(RCConfigurationResource *)self endpointMaxAge];
  v25 = v15 ^ v23 ^ [endpointMaxAge hash];
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RCConfigurationResource environment](self, "environment")}];
  v27 = [v26 hash];

  return v25 ^ v27;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(RCConfigurationResource);
  requestKey = [(RCConfigurationResource *)self requestKey];
  [(RCConfigurationResource *)v4 setRequestKey:requestKey];

  gzippedConfigurationData = [(RCConfigurationResource *)self gzippedConfigurationData];
  [(RCConfigurationResource *)v4 setGzippedConfigurationData:gzippedConfigurationData];

  userSegmentationConfiguration = [(RCConfigurationResource *)self userSegmentationConfiguration];
  [(RCConfigurationResource *)v4 setUserSegmentationConfiguration:userSegmentationConfiguration];

  treatmentIDs = [(RCConfigurationResource *)self treatmentIDs];
  [(RCConfigurationResource *)v4 setTreatmentIDs:treatmentIDs];

  segmentSetIDs = [(RCConfigurationResource *)self segmentSetIDs];
  [(RCConfigurationResource *)v4 setSegmentSetIDs:segmentSetIDs];

  userID = [(RCConfigurationResource *)self userID];
  [(RCConfigurationResource *)v4 setUserID:userID];

  storefrontID = [(RCConfigurationResource *)self storefrontID];
  [(RCConfigurationResource *)v4 setStorefrontID:storefrontID];

  preferredLanguages = [(RCConfigurationResource *)self preferredLanguages];
  [(RCConfigurationResource *)v4 setPreferredLanguages:preferredLanguages];

  configurationID = [(RCConfigurationResource *)self configurationID];
  [(RCConfigurationResource *)v4 setConfigurationID:configurationID];

  contentHash = [(RCConfigurationResource *)self contentHash];
  [(RCConfigurationResource *)v4 setContentHash:contentHash];

  lastModifiedString = [(RCConfigurationResource *)self lastModifiedString];
  [(RCConfigurationResource *)v4 setLastModifiedString:lastModifiedString];

  etag = [(RCConfigurationResource *)self etag];
  [(RCConfigurationResource *)v4 setEtag:etag];

  lastModifiedFallbackString = [(RCConfigurationResource *)self lastModifiedFallbackString];
  [(RCConfigurationResource *)v4 setLastModifiedFallbackString:lastModifiedFallbackString];

  lastFetchedDate = [(RCConfigurationResource *)self lastFetchedDate];
  [(RCConfigurationResource *)v4 setLastFetchedDate:lastFetchedDate];

  fallbackMaxAge = [(RCConfigurationResource *)self fallbackMaxAge];
  [(RCConfigurationResource *)v4 setFallbackMaxAge:fallbackMaxAge];

  endpointMaxAge = [(RCConfigurationResource *)self endpointMaxAge];
  [(RCConfigurationResource *)v4 setEndpointMaxAge:endpointMaxAge];

  [(RCConfigurationResource *)v4 setEnvironment:[(RCConfigurationResource *)self environment]];
  return v4;
}

- (RCConfigurationResource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v43.receiver = self;
  v43.super_class = RCConfigurationResource;
  v5 = [(RCConfigurationResource *)&v43 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestKey"];
    requestKey = v5->_requestKey;
    v5->_requestKey = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gzippedConfigurationData"];
    gzippedConfigurationData = v5->_gzippedConfigurationData;
    v5->_gzippedConfigurationData = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userSegmentationConfiguration"];
    userSegmentationConfiguration = v5->_userSegmentationConfiguration;
    v5->_userSegmentationConfiguration = v13;

    v15 = [coderCopy decodeObjectOfClasses:v8 forKey:@"treatmentIDs"];
    treatmentIDs = v5->_treatmentIDs;
    v5->_treatmentIDs = v15;

    v17 = [coderCopy decodeObjectOfClasses:v8 forKey:@"segmentSetIDs"];
    segmentSetIDs = v5->_segmentSetIDs;
    v5->_segmentSetIDs = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userID"];
    userID = v5->_userID;
    v5->_userID = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storefrontID"];
    storefrontID = v5->_storefrontID;
    v5->_storefrontID = v21;

    v23 = [coderCopy decodeObjectOfClasses:v8 forKey:@"preferredLanguages"];
    preferredLanguages = v5->_preferredLanguages;
    v5->_preferredLanguages = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configurationID"];
    configurationID = v5->_configurationID;
    v5->_configurationID = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentHash"];
    contentHash = v5->_contentHash;
    v5->_contentHash = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastModifiedString"];
    lastModifiedString = v5->_lastModifiedString;
    v5->_lastModifiedString = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"etag"];
    etag = v5->_etag;
    v5->_etag = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastModifiedFallbackString"];
    lastModifiedFallbackString = v5->_lastModifiedFallbackString;
    v5->_lastModifiedFallbackString = v33;

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastFetchedDate"];
    lastFetchedDate = v5->_lastFetchedDate;
    v5->_lastFetchedDate = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fallbackMaxAge"];
    fallbackMaxAge = v5->_fallbackMaxAge;
    v5->_fallbackMaxAge = v37;

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endpointMaxAge"];
    endpointMaxAge = v5->_endpointMaxAge;
    v5->_endpointMaxAge = v39;

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"environment"];
    v5->_environment = [v41 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  requestKey = [(RCConfigurationResource *)self requestKey];
  [coderCopy encodeObject:requestKey forKey:@"requestKey"];

  gzippedConfigurationData = [(RCConfigurationResource *)self gzippedConfigurationData];
  [coderCopy encodeObject:gzippedConfigurationData forKey:@"gzippedConfigurationData"];

  userSegmentationConfiguration = [(RCConfigurationResource *)self userSegmentationConfiguration];
  [coderCopy encodeObject:userSegmentationConfiguration forKey:@"userSegmentationConfiguration"];

  treatmentIDs = [(RCConfigurationResource *)self treatmentIDs];
  [coderCopy encodeObject:treatmentIDs forKey:@"treatmentIDs"];

  segmentSetIDs = [(RCConfigurationResource *)self segmentSetIDs];
  [coderCopy encodeObject:segmentSetIDs forKey:@"segmentSetIDs"];

  userID = [(RCConfigurationResource *)self userID];
  [coderCopy encodeObject:userID forKey:@"userID"];

  storefrontID = [(RCConfigurationResource *)self storefrontID];
  [coderCopy encodeObject:storefrontID forKey:@"storefrontID"];

  preferredLanguages = [(RCConfigurationResource *)self preferredLanguages];
  [coderCopy encodeObject:preferredLanguages forKey:@"preferredLanguages"];

  configurationID = [(RCConfigurationResource *)self configurationID];
  [coderCopy encodeObject:configurationID forKey:@"configurationID"];

  contentHash = [(RCConfigurationResource *)self contentHash];
  [coderCopy encodeObject:contentHash forKey:@"contentHash"];

  lastModifiedString = [(RCConfigurationResource *)self lastModifiedString];
  [coderCopy encodeObject:lastModifiedString forKey:@"lastModifiedString"];

  etag = [(RCConfigurationResource *)self etag];
  [coderCopy encodeObject:etag forKey:@"etag"];

  lastModifiedFallbackString = [(RCConfigurationResource *)self lastModifiedFallbackString];
  [coderCopy encodeObject:lastModifiedFallbackString forKey:@"lastModifiedFallbackString"];

  lastFetchedDate = [(RCConfigurationResource *)self lastFetchedDate];
  [coderCopy encodeObject:lastFetchedDate forKey:@"lastFetchedDate"];

  fallbackMaxAge = [(RCConfigurationResource *)self fallbackMaxAge];
  [coderCopy encodeObject:fallbackMaxAge forKey:@"fallbackMaxAge"];

  endpointMaxAge = [(RCConfigurationResource *)self endpointMaxAge];
  [coderCopy encodeObject:endpointMaxAge forKey:@"endpointMaxAge"];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RCConfigurationResource environment](self, "environment")}];
  [coderCopy encodeObject:v21 forKey:@"environment"];
}

@end