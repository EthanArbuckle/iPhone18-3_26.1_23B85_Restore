@interface SWConfiguration
+ (id)configurationWithContainerConfiguration:(id)configuration;
- (BOOL)isEqualToConfiguration:(id)configuration;
- (SWConfiguration)initWithStoreFront:(id)front locale:(id)locale contentEnvironment:(id)environment contentSizeCategory:(id)category layoutGuide:(id)guide dataSources:(id)sources location:(id)location sourceURL:(id)self0 activePictureInPictureURL:(id)self1 feedConfiguration:(id)self2 supportsLiveActivities:(BOOL)self3 keyboardConfiguration:(id)self4 networkStatus:(int64_t)self5 isTransitioning:(BOOL)self6;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation SWConfiguration

+ (id)configurationWithContainerConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [SWConfiguration alloc];
  storeFront = [configurationCopy storeFront];
  locale = [configurationCopy locale];
  contentEnvironment = [configurationCopy contentEnvironment];
  contentSizeCategory = [configurationCopy contentSizeCategory];
  layoutGuide = [configurationCopy layoutGuide];
  dataSources = [configurationCopy dataSources];
  location = [configurationCopy location];
  sourceURL = [configurationCopy sourceURL];
  activePictureInPictureURL = [configurationCopy activePictureInPictureURL];
  feedConfiguration = [configurationCopy feedConfiguration];
  supportsLiveActivities = [configurationCopy supportsLiveActivities];

  LOBYTE(v15) = 0;
  LOBYTE(v14) = supportsLiveActivities;
  v16 = [(SWConfiguration *)v4 initWithStoreFront:storeFront locale:locale contentEnvironment:contentEnvironment contentSizeCategory:contentSizeCategory layoutGuide:layoutGuide dataSources:dataSources location:location sourceURL:sourceURL activePictureInPictureURL:activePictureInPictureURL feedConfiguration:feedConfiguration supportsLiveActivities:v14 keyboardConfiguration:0 networkStatus:0 isTransitioning:v15];

  return v16;
}

- (SWConfiguration)initWithStoreFront:(id)front locale:(id)locale contentEnvironment:(id)environment contentSizeCategory:(id)category layoutGuide:(id)guide dataSources:(id)sources location:(id)location sourceURL:(id)self0 activePictureInPictureURL:(id)self1 feedConfiguration:(id)self2 supportsLiveActivities:(BOOL)self3 keyboardConfiguration:(id)self4 networkStatus:(int64_t)self5 isTransitioning:(BOOL)self6
{
  frontCopy = front;
  localeCopy = locale;
  environmentCopy = environment;
  categoryCopy = category;
  guideCopy = guide;
  sourcesCopy = sources;
  locationCopy = location;
  lCopy = l;
  rLCopy = rL;
  configurationCopy = configuration;
  keyboardConfigurationCopy = keyboardConfiguration;
  v53.receiver = self;
  v53.super_class = SWConfiguration;
  v30 = [(SWConfiguration *)&v53 init];
  if (v30)
  {
    v47 = keyboardConfigurationCopy;
    [MEMORY[0x1E696AFB0] UUID];
    v48 = configurationCopy;
    v32 = v31 = locationCopy;
    [v32 UUIDString];
    v33 = v50 = environmentCopy;
    [(SWConfiguration *)v30 setIdentifier:v33];

    [(SWConfiguration *)v30 setStoreFront:frontCopy];
    [(SWConfiguration *)v30 setLocale:localeCopy];
    [(SWConfiguration *)v30 setContentEnvironment:v50];
    v46 = categoryCopy;
    [(SWConfiguration *)v30 setContentSizeCategory:categoryCopy];
    [(SWConfiguration *)v30 setLayoutGuide:guideCopy];
    [(SWConfiguration *)v30 setDataSources:sourcesCopy];
    v45 = v31;
    [(SWConfiguration *)v30 setLocation:v31];
    [(SWConfiguration *)v30 setSourceURL:lCopy];
    [(SWConfiguration *)v30 setActivePictureInPictureURL:rLCopy];
    [(SWConfiguration *)v30 setFeedConfiguration:v48];
    [(SWConfiguration *)v30 setSupportsLiveActivities:activities];
    v34 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"j" options:0 locale:localeCopy];
    if ([v34 containsString:@"H"])
    {
      v35 = 1;
    }

    else
    {
      v35 = [v34 containsString:@"k"];
    }

    [(SWConfiguration *)v30 setIs24HourTime:v35];
    [(SWConfiguration *)v30 setKeyboardConfiguration:keyboardConfigurationCopy];
    [(SWConfiguration *)v30 setNetworkStatus:status];
    [(SWConfiguration *)v30 setIsTransitioning:transitioning];
    v36 = MEMORY[0x1E696AEC0];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    systemName = [currentDevice systemName];
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    systemVersion = [currentDevice2 systemVersion];
    v41 = [v36 stringWithFormat:@"%@ %@", systemName, systemVersion];
    [(SWConfiguration *)v30 setSystemVersion:v41];

    keyboardConfigurationCopy = v47;
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    v43 = [mainBundle objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
    [(SWConfiguration *)v30 setAppVersion:v43];

    configurationCopy = v48;
    environmentCopy = v50;
    locationCopy = v45;
    categoryCopy = v46;
  }

  return v30;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SWConfiguration alloc];
  storeFront = [(SWConfiguration *)self storeFront];
  locale = [(SWConfiguration *)self locale];
  contentEnvironment = [(SWConfiguration *)self contentEnvironment];
  contentSizeCategory = [(SWConfiguration *)self contentSizeCategory];
  layoutGuide = [(SWConfiguration *)self layoutGuide];
  dataSources = [(SWConfiguration *)self dataSources];
  location = [(SWConfiguration *)self location];
  sourceURL = [(SWConfiguration *)self sourceURL];
  activePictureInPictureURL = [(SWConfiguration *)self activePictureInPictureURL];
  feedConfiguration = [(SWConfiguration *)self feedConfiguration];
  supportsLiveActivities = [(SWConfiguration *)self supportsLiveActivities];
  keyboardConfiguration = [(SWConfiguration *)self keyboardConfiguration];
  networkStatus = [(SWConfiguration *)self networkStatus];
  LOBYTE(v15) = [(SWConfiguration *)self isTransitioning];
  LOBYTE(v14) = supportsLiveActivities;
  v17 = [(SWConfiguration *)v4 initWithStoreFront:storeFront locale:locale contentEnvironment:contentEnvironment contentSizeCategory:contentSizeCategory layoutGuide:layoutGuide dataSources:dataSources location:location sourceURL:sourceURL activePictureInPictureURL:activePictureInPictureURL feedConfiguration:feedConfiguration supportsLiveActivities:v14 keyboardConfiguration:keyboardConfiguration networkStatus:networkStatus isTransitioning:v15];

  identifier = [(SWConfiguration *)self identifier];
  [(SWConfiguration *)v17 setIdentifier:identifier];

  return v17;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [SWMutableConfiguration alloc];
  storeFront = [(SWConfiguration *)self storeFront];
  locale = [(SWConfiguration *)self locale];
  contentEnvironment = [(SWConfiguration *)self contentEnvironment];
  contentSizeCategory = [(SWConfiguration *)self contentSizeCategory];
  layoutGuide = [(SWConfiguration *)self layoutGuide];
  dataSources = [(SWConfiguration *)self dataSources];
  location = [(SWConfiguration *)self location];
  sourceURL = [(SWConfiguration *)self sourceURL];
  activePictureInPictureURL = [(SWConfiguration *)self activePictureInPictureURL];
  feedConfiguration = [(SWConfiguration *)self feedConfiguration];
  supportsLiveActivities = [(SWConfiguration *)self supportsLiveActivities];
  keyboardConfiguration = [(SWConfiguration *)self keyboardConfiguration];
  networkStatus = [(SWConfiguration *)self networkStatus];
  LOBYTE(v14) = [(SWConfiguration *)self isTransitioning];
  LOBYTE(v13) = supportsLiveActivities;
  v16 = [(SWConfiguration *)v4 initWithStoreFront:storeFront locale:locale contentEnvironment:contentEnvironment contentSizeCategory:contentSizeCategory layoutGuide:layoutGuide dataSources:dataSources location:location sourceURL:sourceURL activePictureInPictureURL:activePictureInPictureURL feedConfiguration:feedConfiguration supportsLiveActivities:v13 keyboardConfiguration:keyboardConfiguration networkStatus:networkStatus isTransitioning:v14];

  return v16;
}

- (BOOL)isEqualToConfiguration:(id)configuration
{
  configurationCopy = configuration;
  storeFront = [(SWConfiguration *)self storeFront];
  storeFront2 = [configurationCopy storeFront];
  if (storeFront == storeFront2 || [storeFront isEqualToString:storeFront2])
  {
    locale = [(SWConfiguration *)self locale];
    locale2 = [configurationCopy locale];
    if (locale == locale2 || [locale isEqual:locale2])
    {
      contentEnvironment = [(SWConfiguration *)self contentEnvironment];
      contentEnvironment2 = [configurationCopy contentEnvironment];
      if (contentEnvironment == contentEnvironment2 || [contentEnvironment isEqualToString:contentEnvironment2])
      {
        contentSizeCategory = [(SWConfiguration *)self contentSizeCategory];
        contentSizeCategory2 = [configurationCopy contentSizeCategory];
        if (contentSizeCategory == contentSizeCategory2 || [contentSizeCategory isEqualToString:contentSizeCategory2])
        {
          v53 = contentSizeCategory2;
          v54 = contentSizeCategory;
          layoutGuide = [(SWConfiguration *)self layoutGuide];
          layoutGuide2 = [configurationCopy layoutGuide];
          if (layoutGuide == layoutGuide2 || [layoutGuide isEqual:layoutGuide2])
          {
            v51 = contentEnvironment;
            v52 = layoutGuide2;
            dataSources = [(SWConfiguration *)self dataSources];
            dataSources2 = [configurationCopy dataSources];
            if (dataSources == dataSources2 || [dataSources isEqualToDictionary:dataSources2])
            {
              v49 = contentEnvironment2;
              v50 = dataSources2;
              location = [(SWConfiguration *)self location];
              location2 = [configurationCopy location];
              if (location == location2 || [location isEqual:location2])
              {
                v47 = locale;
                v48 = location2;
                sourceURL = [(SWConfiguration *)self sourceURL];
                sourceURL2 = [configurationCopy sourceURL];
                v46 = sourceURL;
                if (sourceURL == sourceURL2 || [sourceURL isEqual:sourceURL2])
                {
                  v45 = sourceURL2;
                  systemVersion = [(SWConfiguration *)self systemVersion];
                  systemVersion2 = [configurationCopy systemVersion];
                  v44 = systemVersion;
                  if ([systemVersion isEqualToString:systemVersion2])
                  {
                    appVersion = [(SWConfiguration *)self appVersion];
                    appVersion2 = [configurationCopy appVersion];
                    v42 = appVersion;
                    if ([appVersion isEqualToString:appVersion2])
                    {
                      activePictureInPictureURL = [(SWConfiguration *)self activePictureInPictureURL];
                      activePictureInPictureURL2 = [configurationCopy activePictureInPictureURL];
                      v40 = activePictureInPictureURL;
                      if (activePictureInPictureURL == activePictureInPictureURL2 || [activePictureInPictureURL isEqual:activePictureInPictureURL2])
                      {
                        v39 = activePictureInPictureURL2;
                        feedConfiguration = [(SWConfiguration *)self feedConfiguration];
                        feedConfiguration2 = [configurationCopy feedConfiguration];
                        if (feedConfiguration == feedConfiguration2 || [feedConfiguration isEqual:feedConfiguration2])
                        {
                          v38 = feedConfiguration2;
                          supportsLiveActivities = [(SWConfiguration *)self supportsLiveActivities];
                          if (supportsLiveActivities == [configurationCopy supportsLiveActivities])
                          {
                            keyboardConfiguration = [(SWConfiguration *)self keyboardConfiguration];
                            keyboardConfiguration2 = [configurationCopy keyboardConfiguration];
                            v37 = keyboardConfiguration;
                            v31 = keyboardConfiguration;
                            v32 = keyboardConfiguration2;
                            if ([v31 isEqual:keyboardConfiguration2] && (v35 = -[SWConfiguration networkStatus](self, "networkStatus"), v35 == objc_msgSend(configurationCopy, "networkStatus")) && (v36 = -[SWConfiguration is24HourTime](self, "is24HourTime"), v36 == objc_msgSend(configurationCopy, "is24HourTime")))
                            {
                              isTransitioning = [(SWConfiguration *)self isTransitioning];
                              v28 = isTransitioning ^ [configurationCopy isTransitioning] ^ 1;
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

                          feedConfiguration2 = v38;
                        }

                        else
                        {
                          LOBYTE(v28) = 0;
                        }

                        activePictureInPictureURL2 = v39;
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

                  sourceURL2 = v45;
                }

                else
                {
                  LOBYTE(v28) = 0;
                }

                locale = v47;
                location2 = v48;
              }

              else
              {
                LOBYTE(v28) = 0;
              }

              contentEnvironment2 = v49;
              dataSources2 = v50;
            }

            else
            {
              LOBYTE(v28) = 0;
            }

            layoutGuide2 = v52;
            contentEnvironment = v51;
          }

          else
          {
            LOBYTE(v28) = 0;
          }

          contentSizeCategory2 = v53;
          contentSizeCategory = v54;
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
  storeFront = [(SWConfiguration *)self storeFront];
  v5 = storeFront;
  if (storeFront)
  {
    v6 = storeFront;
  }

  else
  {
    v6 = &stru_1F5242A90;
  }

  [v3 appendFormat:@"; storeFront: %@", v6];

  locale = [(SWConfiguration *)self locale];
  [v3 appendFormat:@"; locale: %@", locale];

  contentEnvironment = [(SWConfiguration *)self contentEnvironment];
  v9 = contentEnvironment;
  if (contentEnvironment)
  {
    v10 = contentEnvironment;
  }

  else
  {
    v10 = &stru_1F5242A90;
  }

  [v3 appendFormat:@"; contentEnvironment: %@", v10];

  contentSizeCategory = [(SWConfiguration *)self contentSizeCategory];
  [v3 appendFormat:@"; contentSizeCategory: %@", contentSizeCategory];

  layoutGuide = [(SWConfiguration *)self layoutGuide];
  v13 = [layoutGuide description];
  [v3 appendFormat:@"; layoutGuide: %@", v13];

  dataSources = [(SWConfiguration *)self dataSources];
  [v3 appendFormat:@"; dataSources: %@", dataSources];

  location = [(SWConfiguration *)self location];
  [v3 appendFormat:@"; location: %@", location];

  sourceURL = [(SWConfiguration *)self sourceURL];
  [v3 appendFormat:@"; sourceURL: %@", sourceURL];

  systemVersion = [(SWConfiguration *)self systemVersion];
  [v3 appendFormat:@"; systemVersion: %@", systemVersion];

  appVersion = [(SWConfiguration *)self appVersion];
  [v3 appendFormat:@"; appVersion: %@", appVersion];

  activePictureInPictureURL = [(SWConfiguration *)self activePictureInPictureURL];
  [v3 appendFormat:@"; activePictureInPictureURL: %@", activePictureInPictureURL];

  feedConfiguration = [(SWConfiguration *)self feedConfiguration];
  [v3 appendFormat:@"; feedConfiguration: %@", feedConfiguration];

  [v3 appendFormat:@"; supportsLiveActivities: %d", -[SWConfiguration supportsLiveActivities](self, "supportsLiveActivities")];
  keyboardConfiguration = [(SWConfiguration *)self keyboardConfiguration];
  [v3 appendFormat:@"; keyboardConfiguration: %@", keyboardConfiguration];

  [v3 appendFormat:@"; networkStatus: %d", -[SWConfiguration networkStatus](self, "networkStatus")];
  [v3 appendFormat:@"; is24HourTime: %d", -[SWConfiguration is24HourTime](self, "is24HourTime")];
  [v3 appendFormat:@"; isTransitioning: %d", -[SWConfiguration isTransitioning](self, "isTransitioning")];
  [v3 appendString:@">"];

  return v3;
}

@end