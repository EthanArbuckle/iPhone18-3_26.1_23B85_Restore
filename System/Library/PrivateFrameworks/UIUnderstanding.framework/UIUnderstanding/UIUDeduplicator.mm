@interface UIUDeduplicator
- (id)addElementsForScreen:(id)a3 candidates:(id)a4 screenGroupID:(id)a5;
- (id)identifyElements:(id)a3 elements:(id)a4;
- (id)identifyImage:(id)a3 image:(CGImage *)a4;
- (id)init:(int64_t)a3;
- (void)setDebugMode;
@end

@implementation UIUDeduplicator

- (id)init:(int64_t)a3
{
  v13.receiver = self;
  v13.super_class = UIUDeduplicator;
  v4 = [(UIUDeduplicator *)&v13 init];
  if (a3 != 2)
  {
    a3 = a3 == 1;
  }

  v12 = 0;
  v5 = [[UIDeduplicatorCompat alloc] initWithPlatform:a3 error:&v12];
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

- (id)identifyImage:(id)a3 image:(CGImage *)a4
{
  v6 = a3;
  v7 = [(UIUDeduplicator *)self underlyingObject];
  v12 = 0;
  v8 = [v7 identifyScreenshotWithId:v6 image:a4 error:&v12];
  v9 = v12;

  if (v8 || !v9)
  {
    v10 = [[UIUScreenShot alloc] initWithContents:v8];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [UIUDeduplicator identifyImage:v6 image:v9];
    }

    v10 = 0;
  }

  return v10;
}

- (id)identifyElements:(id)a3 elements:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [v6 underlyingObject];
  v10 = [(UIUDeduplicator *)self underlyingObject];
  v28 = 0;
  v11 = [v10 identifyElementsWithScreenshot:v9 rectArray:v7 error:&v28];
  v12 = v28;

  if (v11 || !v12)
  {
    v23 = v9;
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
          [v8 addObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v18);
    }

    v15 = v8;
    v9 = v23;
  }

  else
  {
    v13 = [v6 underlyingObject];
    v14 = [v13 imageID];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [UIUDeduplicator identifyElements:v14 elements:v12];
    }

    v15 = MEMORY[0x277CBEBF8];
  }

  return v15;
}

- (id)addElementsForScreen:(id)a3 candidates:(id)a4 screenGroupID:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 underlyingObject];
  v12 = [MEMORY[0x277CBEB18] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = v9;
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

        v18 = [*(*(&v27 + 1) + 8 * i) underlyingObject];
        [v12 addObject:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v15);
  }

  v19 = [(UIUDeduplicator *)self underlyingObject];
  v26 = 0;
  v20 = [v19 addElementsForScreenWithTargetScreenshot:v11 candidateElements:v12 screenGroupID:v10 error:&v26];
  v21 = v26;

  if (v20 || !v21)
  {
    v24 = [[UIUAddedElements alloc] initWithContents:v20];
  }

  else
  {
    v22 = [v8 underlyingObject];
    v23 = [v22 imageID];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [UIUDeduplicator addElementsForScreen:v23 candidates:v21 screenGroupID:?];
    }

    v24 = 0;
  }

  return v24;
}

- (void)setDebugMode
{
  v2 = [(UIUDeduplicator *)self underlyingObject];
  [v2 setDebugTo:1];
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