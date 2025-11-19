@interface SBMainDisplayConfigurationTransformer
+ (id)transformedMainDisplayConfigurationForConfiguration:(id)a3;
- (id)transformDisplayConfiguration:(id)a3;
@end

@implementation SBMainDisplayConfigurationTransformer

+ (id)transformedMainDisplayConfigurationForConfiguration:(id)a3
{
  v5 = a3;
  v6 = objc_alloc_init(SBMainDisplayConfigurationTransformer);
  v7 = [(SBMainDisplayConfigurationTransformer *)v6 transformDisplayConfiguration:v5];

  if ([v7 count] != 1)
  {
    [(SBMainDisplayConfigurationTransformer *)a2 transformedMainDisplayConfigurationForConfiguration:a1];
  }

  v8 = [v7 anyObject];

  return v8;
}

- (id)transformDisplayConfiguration:(id)a3
{
  v3 = a3;
  if (-[NSObject isMainRootDisplay](v3, "isMainRootDisplay") && [MEMORY[0x277D0ACD8] isEmulatedDevice] && objc_msgSend(MEMORY[0x277D0ACD8], "hasEmulatedDeviceBounds"))
  {
    [MEMORY[0x277D0ACD8] emulatedDeviceBounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [v3 scale];
    v13 = v12 * v9;
    v14 = v12 * v11;
    v15 = [v3 currentMode];
    v16 = [v15 _copyWithOverrideSize:{v9, v11}];

    v17 = [objc_alloc(MEMORY[0x277D0ACE8]) initWithConfiguration:v3];
    v18 = [v3 availableModes];
    [v17 setCurrentMode:v16 preferredMode:v16 otherModes:v18];

    [v3 _nativeBounds];
    [v17 setPixelSize:v13 nativeBounds:v14 bounds:{v19, v20, v21, v22, v5, v7, *&v9, *&v11}];
    v39 = 0;
    v23 = [v17 buildConfigurationWithError:&v39];
    v24 = v39;
    if (v23)
    {
      v25 = v3;
      v3 = v23;
    }

    else
    {
      v25 = SBLogDisplayTransforming();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [(SBMainDisplayConfigurationTransformer *)v24 transformDisplayConfiguration:v3, v25];
      }
    }
  }

  [v3 bounds];
  v27 = v26;
  v29 = v28;
  BSCGFloatEpsilon();
  v31 = v30;
  v32 = [v3 CADisplay];
  v33 = v32;
  if (v27 <= v31 || v27 >= 1.79769313e308 || v29 <= v31 || v29 >= 1.79769313e308)
  {
    [(SBMainDisplayConfigurationTransformer *)v32 transformDisplayConfiguration:v3];
  }

  v37 = [MEMORY[0x277CBEB98] setWithObject:v3];

  return v37;
}

+ (void)transformedMainDisplayConfigurationForConfiguration:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBMainDisplayConfigurationTransformer.m" lineNumber:22 description:@"Can only have a single transformed display for the main display."];
}

- (void)transformDisplayConfiguration:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "Unable to create redacted display configuration: %@ from configuration:%@", &v3, 0x16u);
}

- (void)transformDisplayConfiguration:(void *)a1 .cold.2(void *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBMainDisplayConfigurationTransformer transformDisplayConfiguration:]"];
  [a1 bounds];
  v6 = NSStringFromCGRect(v12);
  v7 = [a1 currentMode];
  v8 = [a1 currentMode];
  v9 = [v8 preferredScale];
  v10 = [a1 preferredMode];
  v11 = [a1 availableModes];
  [v4 handleFailureInFunction:v5 file:@"SBMainDisplayConfigurationTransformer.m" lineNumber:62 description:{@"We expect a valid bounds for configuration: %@; CADisplay bounds: %@; currentMode: %@; preferredScale: %lu; preferredMode: %@; availableModes: %lu", a2, v6, v7, v9, v10, objc_msgSend(v11, "count")}];
}

@end