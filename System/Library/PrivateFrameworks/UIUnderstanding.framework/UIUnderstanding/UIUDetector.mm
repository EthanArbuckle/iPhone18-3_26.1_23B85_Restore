@interface UIUDetector
+ (int64_t)convertPlatform:(int64_t)platform;
- (id)getDetectionsInScreen:(CGImage *)screen addOCR:(BOOL)r addIcons:(BOOL)icons addClickability:(BOOL)clickability addFocusElements:(BOOL)elements nmsThreshold:(float)threshold useAccurateOCR:(BOOL)cR error:(id *)self0;
- (id)initForPlatform:(int64_t)platform elementConfidence:(id)confidence clickabilityConfidence:(id)clickabilityConfidence elementConfig:(id)config clickabilityConfig:(id)clickabilityConfig;
@end

@implementation UIUDetector

+ (int64_t)convertPlatform:(int64_t)platform
{
  if (platform == 2)
  {
    return 2;
  }

  else
  {
    return platform == 1;
  }
}

- (id)initForPlatform:(int64_t)platform elementConfidence:(id)confidence clickabilityConfidence:(id)clickabilityConfidence elementConfig:(id)config clickabilityConfig:(id)clickabilityConfig
{
  v26 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = UIUDetector;
  clickabilityConfigCopy = clickabilityConfig;
  configCopy = config;
  clickabilityConfidenceCopy = clickabilityConfidence;
  confidenceCopy = confidence;
  v15 = [(UIUDetector *)&v23 init];
  v22 = 0;
  v16 = [[UIUDetectorCompat alloc] initWithPlatform:[UIUDetector convertPlatform:?]elementConfig:confidenceCopy clickabilityConfig:clickabilityConfidenceCopy error:configCopy, clickabilityConfigCopy, &v22];

  v17 = v22;
  v18 = v17;
  if (v16 || !v17)
  {
    objc_storeStrong(&v15->_underlyingObject, v16);
    v20 = v15;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      localizedDescription = [v18 localizedDescription];
      *buf = 138412290;
      v25 = localizedDescription;
      _os_log_impl(&dword_270253000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to initialize detector with error %@", buf, 0xCu);
    }

    v20 = 0;
  }

  return v20;
}

- (id)getDetectionsInScreen:(CGImage *)screen addOCR:(BOOL)r addIcons:(BOOL)icons addClickability:(BOOL)clickability addFocusElements:(BOOL)elements nmsThreshold:(float)threshold useAccurateOCR:(BOOL)cR error:(id *)self0
{
  cRCopy = cR;
  elementsCopy = elements;
  clickabilityCopy = clickability;
  iconsCopy = icons;
  rCopy = r;
  v35 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  underlyingObject = [(UIUDetector *)self underlyingObject];
  *&v20 = threshold;
  v21 = [underlyingObject getUIObjectsInScreen:screen addOCR:rCopy addIconRecognition:iconsCopy addClickability:clickabilityCopy addFocusElements:elementsCopy nmsThreshold:cRCopy useAccurateOCR:v20 error:error];

  if (*error)
  {
    v22 = 0;
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v23 = v21;
    v24 = [v23 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v31;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v31 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = [[UIObject alloc] initWithCompat:*(*(&v30 + 1) + 8 * i)];
          [array addObject:v28];
        }

        v25 = [v23 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v25);
    }

    v22 = array;
  }

  return v22;
}

@end