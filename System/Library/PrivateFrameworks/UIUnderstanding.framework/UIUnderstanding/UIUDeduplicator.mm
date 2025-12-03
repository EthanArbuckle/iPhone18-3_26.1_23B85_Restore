@interface UIUDeduplicator
- (id)addElementsForScreen:(id)screen candidates:(id)candidates screenGroupID:(id)d;
- (id)identifyElements:(id)elements elements:(id)a4;
- (id)identifyImage:(id)image image:(CGImage *)a4;
- (id)init:(int64_t)init;
- (void)setDebugMode;
@end

@implementation UIUDeduplicator

- (id)init:(int64_t)init
{
  v13.receiver = self;
  v13.super_class = UIUDeduplicator;
  v4 = [(UIUDeduplicator *)&v13 init];
  if (init != 2)
  {
    init = init == 1;
  }

  v12 = 0;
  v5 = [[UIDeduplicatorCompat alloc] initWithPlatform:init error:&v12];
  v6 = v12;
  underlyingObject = v4->_underlyingObject;
  v4->_underlyingObject = v5;

  if (v4->_underlyingObject)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (v8)
  {
    v9 = v4;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [UIUDeduplicator init:v6];
    }

    v9 = 0;
  }

  return v9;
}

- (id)identifyImage:(id)image image:(CGImage *)a4
{
  imageCopy = image;
  underlyingObject = [(UIUDeduplicator *)self underlyingObject];
  v12 = 0;
  v8 = [underlyingObject identifyScreenshotWithId:imageCopy image:a4 error:&v12];
  v9 = v12;

  if (v8 || !v9)
  {
    v10 = [[UIUScreenShot alloc] initWithContents:v8];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [UIUDeduplicator identifyImage:imageCopy image:v9];
    }

    v10 = 0;
  }

  return v10;
}

- (id)identifyElements:(id)elements elements:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  elementsCopy = elements;
  v7 = a4;
  array = [MEMORY[0x277CBEB18] array];
  underlyingObject = [elementsCopy underlyingObject];
  underlyingObject2 = [(UIUDeduplicator *)self underlyingObject];
  v28 = 0;
  v11 = [underlyingObject2 identifyElementsWithScreenshot:underlyingObject rectArray:v7 error:&v28];
  v12 = v28;

  if (v11 || !v12)
  {
    v23 = underlyingObject;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v16 = v11;
    v17 = [v16 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v25;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [[UIUDedupeElement alloc] initWithContents:*(*(&v24 + 1) + 8 * i)];
          [array addObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v18);
    }

    v15 = array;
    underlyingObject = v23;
  }

  else
  {
    underlyingObject3 = [elementsCopy underlyingObject];
    imageID = [underlyingObject3 imageID];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [UIUDeduplicator identifyElements:imageID elements:v12];
    }

    v15 = MEMORY[0x277CBEBF8];
  }

  return v15;
}

- (id)addElementsForScreen:(id)screen candidates:(id)candidates screenGroupID:(id)d
{
  v32 = *MEMORY[0x277D85DE8];
  screenCopy = screen;
  candidatesCopy = candidates;
  dCopy = d;
  underlyingObject = [screenCopy underlyingObject];
  array = [MEMORY[0x277CBEB18] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = candidatesCopy;
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v13);
        }

        underlyingObject2 = [*(*(&v27 + 1) + 8 * i) underlyingObject];
        [array addObject:underlyingObject2];
      }

      v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v15);
  }

  underlyingObject3 = [(UIUDeduplicator *)self underlyingObject];
  v26 = 0;
  v20 = [underlyingObject3 addElementsForScreenWithTargetScreenshot:underlyingObject candidateElements:array screenGroupID:dCopy error:&v26];
  v21 = v26;

  if (v20 || !v21)
  {
    v24 = [[UIUAddedElements alloc] initWithContents:v20];
  }

  else
  {
    underlyingObject4 = [screenCopy underlyingObject];
    imageID = [underlyingObject4 imageID];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [UIUDeduplicator addElementsForScreen:imageID candidates:v21 screenGroupID:?];
    }

    v24 = 0;
  }

  return v24;
}

- (void)setDebugMode
{
  underlyingObject = [(UIUDeduplicator *)self underlyingObject];
  [underlyingObject setDebugTo:1];
}

- (void)init:(void *)a1 .cold.1(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  v2 = 138412290;
  v3 = v1;
  _os_log_error_impl(&dword_270253000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to create deduplicator with error %@", &v2, 0xCu);
}

- (void)identifyImage:(uint64_t)a1 image:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_270253000, MEMORY[0x277D86220], v3, "Failed to load image %@ with error %@", v4, v5, v6, v7, v8);
}

- (void)identifyElements:(uint64_t)a1 elements:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_270253000, MEMORY[0x277D86220], v3, "Failed to identify elements on image %@ with error: %@", v4, v5, v6, v7, v8);
}

- (void)addElementsForScreen:(uint64_t)a1 candidates:(void *)a2 screenGroupID:.cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_270253000, MEMORY[0x277D86220], v3, "Failed to add elements for screenshot %@ with error: %@", v4, v5, v6, v7, v8);
}

@end