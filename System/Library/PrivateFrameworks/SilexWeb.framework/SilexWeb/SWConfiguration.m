@interface SWConfiguration
+ (id)configurationWithContainerConfiguration:(id)a3;
- (BOOL)isEqualToConfiguration:(id)a3;
- (SWConfiguration)initWithStoreFront:(id)a3 locale:(id)a4 contentEnvironment:(id)a5 contentSizeCategory:(id)a6 layoutGuide:(id)a7 dataSources:(id)a8 location:(id)a9 sourceURL:(id)a10 activePictureInPictureURL:(id)a11 feedConfiguration:(id)a12 supportsLiveActivities:(BOOL)a13 keyboardConfiguration:(id)a14 networkStatus:(int64_t)a15 isTransitioning:(BOOL)a16;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation SWConfiguration

+ (id)configurationWithContainerConfiguration:(id)a3
{
  v3 = a3;
  v4 = [SWConfiguration alloc];
  v5 = [v3 storeFront];
  v6 = [v3 locale];
  v19 = [v3 contentEnvironment];
  v18 = [v3 contentSizeCategory];
  v17 = [v3 layoutGuide];
  v7 = [v3 dataSources];
  v8 = [v3 location];
  v9 = [v3 sourceURL];
  v10 = [v3 activePictureInPictureURL];
  v11 = [v3 feedConfiguration];
  v12 = [v3 supportsLiveActivities];

  LOBYTE(v15) = 0;
  LOBYTE(v14) = v12;
  v16 = [(SWConfiguration *)v4 initWithStoreFront:v5 locale:v6 contentEnvironment:v19 contentSizeCategory:v18 layoutGuide:v17 dataSources:v7 location:v8 sourceURL:v9 activePictureInPictureURL:v10 feedConfiguration:v11 supportsLiveActivities:v14 keyboardConfiguration:0 networkStatus:0 isTransitioning:v15];

  return v16;
}

- (SWConfiguration)initWithStoreFront:(id)a3 locale:(id)a4 contentEnvironment:(id)a5 contentSizeCategory:(id)a6 layoutGuide:(id)a7 dataSources:(id)a8 location:(id)a9 sourceURL:(id)a10 activePictureInPictureURL:(id)a11 feedConfiguration:(id)a12 supportsLiveActivities:(BOOL)a13 keyboardConfiguration:(id)a14 networkStatus:(int64_t)a15 isTransitioning:(BOOL)a16
{
  v52 = a3;
  v51 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a9;
  v26 = a10;
  v27 = a11;
  v28 = a12;
  v29 = a14;
  v53.receiver = self;
  v53.super_class = SWConfiguration;
  v30 = [(SWConfiguration *)&v53 init];
  if (v30)
  {
    v47 = v29;
    [MEMORY[0x1E696AFB0] UUID];
    v48 = v28;
    v32 = v31 = v25;
    [v32 UUIDString];
    v33 = v50 = v21;
    [(SWConfiguration *)v30 setIdentifier:v33];

    [(SWConfiguration *)v30 setStoreFront:v52];
    [(SWConfiguration *)v30 setLocale:v51];
    [(SWConfiguration *)v30 setContentEnvironment:v50];
    v46 = v22;
    [(SWConfiguration *)v30 setContentSizeCategory:v22];
    [(SWConfiguration *)v30 setLayoutGuide:v23];
    [(SWConfiguration *)v30 setDataSources:v24];
    v45 = v31;
    [(SWConfiguration *)v30 setLocation:v31];
    [(SWConfiguration *)v30 setSourceURL:v26];
    [(SWConfiguration *)v30 setActivePictureInPictureURL:v27];
    [(SWConfiguration *)v30 setFeedConfiguration:v48];
    [(SWConfiguration *)v30 setSupportsLiveActivities:a13];
    v34 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"j" options:0 locale:v51];
    if ([v34 containsString:@"H"])
    {
      v35 = 1;
    }

    else
    {
      v35 = [v34 containsString:@"k"];
    }

    [(SWConfiguration *)v30 setIs24HourTime:v35];
    [(SWConfiguration *)v30 setKeyboardConfiguration:v29];
    [(SWConfiguration *)v30 setNetworkStatus:a15];
    [(SWConfiguration *)v30 setIsTransitioning:a16];
    v36 = MEMORY[0x1E696AEC0];
    v37 = [MEMORY[0x1E69DC938] currentDevice];
    v38 = [v37 systemName];
    v39 = [MEMORY[0x1E69DC938] currentDevice];
    v40 = [v39 systemVersion];
    v41 = [v36 stringWithFormat:@"%@ %@", v38, v40];
    [(SWConfiguration *)v30 setSystemVersion:v41];

    v29 = v47;
    v42 = [MEMORY[0x1E696AAE8] mainBundle];
    v43 = [v42 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
    [(SWConfiguration *)v30 setAppVersion:v43];

    v28 = v48;
    v21 = v50;
    v25 = v45;
    v22 = v46;
  }

  return v30;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SWConfiguration alloc];
  v22 = [(SWConfiguration *)self storeFront];
  v5 = [(SWConfiguration *)self locale];
  v21 = [(SWConfiguration *)self contentEnvironment];
  v20 = [(SWConfiguration *)self contentSizeCategory];
  v19 = [(SWConfiguration *)self layoutGuide];
  v18 = [(SWConfiguration *)self dataSources];
  v16 = [(SWConfiguration *)self location];
  v6 = [(SWConfiguration *)self sourceURL];
  v7 = [(SWConfiguration *)self activePictureInPictureURL];
  v8 = [(SWConfiguration *)self feedConfiguration];
  v9 = [(SWConfiguration *)self supportsLiveActivities];
  v10 = [(SWConfiguration *)self keyboardConfiguration];
  v11 = [(SWConfiguration *)self networkStatus];
  LOBYTE(v15) = [(SWConfiguration *)self isTransitioning];
  LOBYTE(v14) = v9;
  v17 = [(SWConfiguration *)v4 initWithStoreFront:v22 locale:v5 contentEnvironment:v21 contentSizeCategory:v20 layoutGuide:v19 dataSources:v18 location:v16 sourceURL:v6 activePictureInPictureURL:v7 feedConfiguration:v8 supportsLiveActivities:v14 keyboardConfiguration:v10 networkStatus:v11 isTransitioning:v15];

  v12 = [(SWConfiguration *)self identifier];
  [(SWConfiguration *)v17 setIdentifier:v12];

  return v17;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [SWMutableConfiguration alloc];
  v5 = [(SWConfiguration *)self storeFront];
  v21 = [(SWConfiguration *)self locale];
  v20 = [(SWConfiguration *)self contentEnvironment];
  v19 = [(SWConfiguration *)self contentSizeCategory];
  v18 = [(SWConfiguration *)self layoutGuide];
  v17 = [(SWConfiguration *)self dataSources];
  v15 = [(SWConfiguration *)self location];
  v6 = [(SWConfiguration *)self sourceURL];
  v7 = [(SWConfiguration *)self activePictureInPictureURL];
  v8 = [(SWConfiguration *)self feedConfiguration];
  v9 = [(SWConfiguration *)self supportsLiveActivities];
  v10 = [(SWConfiguration *)self keyboardConfiguration];
  v11 = [(SWConfiguration *)self networkStatus];
  LOBYTE(v14) = [(SWConfiguration *)self isTransitioning];
  LOBYTE(v13) = v9;
  v16 = [(SWConfiguration *)v4 initWithStoreFront:v5 locale:v21 contentEnvironment:v20 contentSizeCategory:v19 layoutGuide:v18 dataSources:v17 location:v15 sourceURL:v6 activePictureInPictureURL:v7 feedConfiguration:v8 supportsLiveActivities:v13 keyboardConfiguration:v10 networkStatus:v11 isTransitioning:v14];

  return v16;
}

- (BOOL)isEqualToConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(SWConfiguration *)self storeFront];
  v6 = [v4 storeFront];
  if (v5 == v6 || [v5 isEqualToString:v6])
  {
    v7 = [(SWConfiguration *)self locale];
    v8 = [v4 locale];
    if (v7 == v8 || [v7 isEqual:v8])
    {
      v9 = [(SWConfiguration *)self contentEnvironment];
      v10 = [v4 contentEnvironment];
      if (v9 == v10 || [v9 isEqualToString:v10])
      {
        v11 = [(SWConfiguration *)self contentSizeCategory];
        v12 = [v4 contentSizeCategory];
        if (v11 == v12 || [v11 isEqualToString:v12])
        {
          v53 = v12;
          v54 = v11;
          v13 = [(SWConfiguration *)self layoutGuide];
          v14 = [v4 layoutGuide];
          if (v13 == v14 || [v13 isEqual:v14])
          {
            v51 = v9;
            v52 = v14;
            v15 = [(SWConfiguration *)self dataSources];
            v16 = [v4 dataSources];
            if (v15 == v16 || [v15 isEqualToDictionary:v16])
            {
              v49 = v10;
              v50 = v16;
              v17 = [(SWConfiguration *)self location];
              v18 = [v4 location];
              if (v17 == v18 || [v17 isEqual:v18])
              {
                v47 = v7;
                v48 = v18;
                v19 = [(SWConfiguration *)self sourceURL];
                v20 = [v4 sourceURL];
                v46 = v19;
                if (v19 == v20 || [v19 isEqual:v20])
                {
                  v45 = v20;
                  v21 = [(SWConfiguration *)self systemVersion];
                  v43 = [v4 systemVersion];
                  v44 = v21;
                  if ([v21 isEqualToString:v43])
                  {
                    v22 = [(SWConfiguration *)self appVersion];
                    v41 = [v4 appVersion];
                    v42 = v22;
                    if ([v22 isEqualToString:v41])
                    {
                      v23 = [(SWConfiguration *)self activePictureInPictureURL];
                      v24 = [v4 activePictureInPictureURL];
                      v40 = v23;
                      if (v23 == v24 || [v23 isEqual:v24])
                      {
                        v39 = v24;
                        v25 = [(SWConfiguration *)self feedConfiguration];
                        v26 = [v4 feedConfiguration];
                        if (v25 == v26 || [v25 isEqual:v26])
                        {
                          v38 = v26;
                          v27 = [(SWConfiguration *)self supportsLiveActivities];
                          if (v27 == [v4 supportsLiveActivities])
                          {
                            v29 = [(SWConfiguration *)self keyboardConfiguration];
                            v30 = [v4 keyboardConfiguration];
                            v37 = v29;
                            v31 = v29;
                            v32 = v30;
                            if ([v31 isEqual:v30] && (v35 = -[SWConfiguration networkStatus](self, "networkStatus"), v35 == objc_msgSend(v4, "networkStatus")) && (v36 = -[SWConfiguration is24HourTime](self, "is24HourTime"), v36 == objc_msgSend(v4, "is24HourTime")))
                            {
                              v34 = [(SWConfiguration *)self isTransitioning];
                              v28 = v34 ^ [v4 isTransitioning] ^ 1;
                            }

                            else
                            {
                              LOBYTE(v28) = 0;
                            }
                          }

                          else
                          {
                            LOBYTE(v28) = 0;
                          }

                          v26 = v38;
                        }

                        else
                        {
                          LOBYTE(v28) = 0;
                        }

                        v24 = v39;
                      }

                      else
                      {
                        LOBYTE(v28) = 0;
                      }
                    }

                    else
                    {
                      LOBYTE(v28) = 0;
                    }
                  }

                  else
                  {
                    LOBYTE(v28) = 0;
                  }

                  v20 = v45;
                }

                else
                {
                  LOBYTE(v28) = 0;
                }

                v7 = v47;
                v18 = v48;
              }

              else
              {
                LOBYTE(v28) = 0;
              }

              v10 = v49;
              v16 = v50;
            }

            else
            {
              LOBYTE(v28) = 0;
            }

            v14 = v52;
            v9 = v51;
          }

          else
          {
            LOBYTE(v28) = 0;
          }

          v12 = v53;
          v11 = v54;
        }

        else
        {
          LOBYTE(v28) = 0;
        }
      }

      else
      {
        LOBYTE(v28) = 0;
      }
    }

    else
    {
      LOBYTE(v28) = 0;
    }
  }

  else
  {
    LOBYTE(v28) = 0;
  }

  return v28;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  v4 = [(SWConfiguration *)self storeFront];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1F5242A90;
  }

  [v3 appendFormat:@"; storeFront: %@", v6];

  v7 = [(SWConfiguration *)self locale];
  [v3 appendFormat:@"; locale: %@", v7];

  v8 = [(SWConfiguration *)self contentEnvironment];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_1F5242A90;
  }

  [v3 appendFormat:@"; contentEnvironment: %@", v10];

  v11 = [(SWConfiguration *)self contentSizeCategory];
  [v3 appendFormat:@"; contentSizeCategory: %@", v11];

  v12 = [(SWConfiguration *)self layoutGuide];
  v13 = [v12 description];
  [v3 appendFormat:@"; layoutGuide: %@", v13];

  v14 = [(SWConfiguration *)self dataSources];
  [v3 appendFormat:@"; dataSources: %@", v14];

  v15 = [(SWConfiguration *)self location];
  [v3 appendFormat:@"; location: %@", v15];

  v16 = [(SWConfiguration *)self sourceURL];
  [v3 appendFormat:@"; sourceURL: %@", v16];

  v17 = [(SWConfiguration *)self systemVersion];
  [v3 appendFormat:@"; systemVersion: %@", v17];

  v18 = [(SWConfiguration *)self appVersion];
  [v3 appendFormat:@"; appVersion: %@", v18];

  v19 = [(SWConfiguration *)self activePictureInPictureURL];
  [v3 appendFormat:@"; activePictureInPictureURL: %@", v19];

  v20 = [(SWConfiguration *)self feedConfiguration];
  [v3 appendFormat:@"; feedConfiguration: %@", v20];

  [v3 appendFormat:@"; supportsLiveActivities: %d", -[SWConfiguration supportsLiveActivities](self, "supportsLiveActivities")];
  v21 = [(SWConfiguration *)self keyboardConfiguration];
  [v3 appendFormat:@"; keyboardConfiguration: %@", v21];

  [v3 appendFormat:@"; networkStatus: %d", -[SWConfiguration networkStatus](self, "networkStatus")];
  [v3 appendFormat:@"; is24HourTime: %d", -[SWConfiguration is24HourTime](self, "is24HourTime")];
  [v3 appendFormat:@"; isTransitioning: %d", -[SWConfiguration isTransitioning](self, "isTransitioning")];
  [v3 appendString:@">"];

  return v3;
}

@end