@interface UIUDetector
+ (int64_t)convertPlatform:(int64_t)a3;
- (id)getDetectionsInScreen:(CGImage *)a3 addOCR:(BOOL)a4 addIcons:(BOOL)a5 addClickability:(BOOL)a6 addFocusElements:(BOOL)a7 nmsThreshold:(float)a8 useAccurateOCR:(BOOL)a9 error:(id *)a10;
- (id)initForPlatform:(int64_t)a3 elementConfidence:(id)a4 clickabilityConfidence:(id)a5 elementConfig:(id)a6 clickabilityConfig:(id)a7;
@end

@implementation UIUDetector

+ (int64_t)convertPlatform:(int64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

- (id)initForPlatform:(int64_t)a3 elementConfidence:(id)a4 clickabilityConfidence:(id)a5 elementConfig:(id)a6 clickabilityConfig:(id)a7
{
  v26 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = UIUDetector;
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = [(UIUDetector *)&v23 init];
  v22 = 0;
  v16 = [[UIUDetectorCompat alloc] initWithPlatform:[UIUDetector convertPlatform:?]elementConfig:v14 clickabilityConfig:v13 error:v12, v11, &v22];

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
      v19 = [v18 localizedDescription];
      *buf = 138412290;
      v25 = v19;
      _os_log_impl(&dword_270253000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to initialize detector with error %@", buf, 0xCu);
    }

    v20 = 0;
  }

  return v20;
}

- (id)getDetectionsInScreen:(CGImage *)a3 addOCR:(BOOL)a4 addIcons:(BOOL)a5 addClickability:(BOOL)a6 addFocusElements:(BOOL)a7 nmsThreshold:(float)a8 useAccurateOCR:(BOOL)a9 error:(id *)a10
{
  v10 = a9;
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v35 = *MEMORY[0x277D85DE8];
  v18 = [MEMORY[0x277CBEB18] array];
  v19 = [(UIUDetector *)self underlyingObject];
  *&v20 = a8;
  v21 = [v19 getUIObjectsInScreen:a3 addOCR:v15 addIconRecognition:v14 addClickability:v13 addFocusElements:v12 nmsThreshold:v10 useAccurateOCR:v20 error:a10];

  if (*a10)
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
          [v18 addObject:v28];
        }

        v25 = [v23 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v25);
    }

    v22 = v18;
  }

  return v22;
}

@end