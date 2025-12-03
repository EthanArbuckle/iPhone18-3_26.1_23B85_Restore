@interface PLKLegibilityEnvironmentBuilder
+ (id)legibilityEnvironmentForAverageColor:(id)color contrast:(double)contrast;
+ (id)legibilityEnvironmentForAverageColor:(id)color contrast:(double)contrast saturation:(double)saturation;
+ (id)legibilityEnvironmentForAverageColor:(id)color contrast:(double)contrast saturation:(double)saturation variants:(id)variants;
+ (id)legibilityEnvironmentForAverageColor:(id)color contrast:(double)contrast variants:(id)variants;
+ (id)legibilityEnvironmentForImage:(id)image;
+ (id)legibilityEnvironmentForImage:(id)image variants:(id)variants;
- (BOOL)updateWithAverageColor:(id)color contrast:(double)contrast saturation:(double)saturation variants:(id)variants;
- (BOOL)updateWithContext:(id)context;
- (BOOL)updateWithContext:(id)context variants:(id)variants;
- (BOOL)updateWithLegibilitySettings:(id)settings contrast:(double)contrast saturation:(double)saturation variants:(id)variants;
- (BOOL)updateWithLegibilitySettings:(id)settings variants:(id)variants;
- (NSSet)variants;
- (PLKLegibilityEnvironmentBuilder)init;
- (PLKLegibilityEnvironmentBuilder)initWithEnvironment:(id)environment;
- (id)buildWithError:(id *)error;
@end

@implementation PLKLegibilityEnvironmentBuilder

- (NSSet)variants
{
  v2 = MEMORY[0x277CBEB98];
  allKeys = [(NSMutableDictionary *)self->_variantToContextDictionary allKeys];
  v4 = [v2 setWithArray:allKeys];

  return v4;
}

- (PLKLegibilityEnvironmentBuilder)init
{
  v6.receiver = self;
  v6.super_class = PLKLegibilityEnvironmentBuilder;
  v2 = [(PLKLegibilityEnvironmentBuilder *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    variantToContextDictionary = v2->_variantToContextDictionary;
    v2->_variantToContextDictionary = v3;
  }

  return v2;
}

- (PLKLegibilityEnvironmentBuilder)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v5 = [(PLKLegibilityEnvironmentBuilder *)self init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB38]);
    contextForVariant = [environmentCopy contextForVariant];
    v8 = [v6 initWithDictionary:contextForVariant copyItems:1];
    variantToContextDictionary = v5->_variantToContextDictionary;
    v5->_variantToContextDictionary = v8;
  }

  return v5;
}

+ (id)legibilityEnvironmentForImage:(id)image
{
  v4 = MEMORY[0x277CBEB98];
  imageCopy = image;
  v6 = [v4 setWithObject:@"PLKLegibilityEnvironmentVariantDefault"];
  v7 = [self legibilityEnvironmentForImage:imageCopy variants:v6];

  return v7;
}

+ (id)legibilityEnvironmentForImage:(id)image variants:(id)variants
{
  v27 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  variantsCopy = variants;
  if (([variantsCopy containsObject:@"PLKLegibilityEnvironmentVariantDefault"] & 1) == 0)
  {
    [PLKLegibilityEnvironmentBuilder legibilityEnvironmentForImage:a2 variants:?];
  }

  v21 = imageCopy;
  v8 = [PLKColorBoxes colorBoxesForImage:imageCopy];
  v9 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = variantsCopy;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = [[PLKLegibilityEnvironmentVariantContext alloc] initWithVariant:v15 colorBoxes:v8];
        v17 = [MEMORY[0x277CBEB98] setWithObject:v15];
        [v9 updateWithContext:v16 variants:v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v18 = [v9 buildWithError:0];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)legibilityEnvironmentForAverageColor:(id)color contrast:(double)contrast
{
  v6 = MEMORY[0x277CBEB98];
  colorCopy = color;
  v8 = [v6 setWithObject:@"PLKLegibilityEnvironmentVariantDefault"];
  v9 = [self legibilityEnvironmentForAverageColor:colorCopy contrast:v8 variants:contrast];

  return v9;
}

+ (id)legibilityEnvironmentForAverageColor:(id)color contrast:(double)contrast variants:(id)variants
{
  colorCopy = color;
  variantsCopy = variants;
  if (!colorCopy)
  {
    [PLKLegibilityEnvironmentBuilder legibilityEnvironmentForAverageColor:a2 contrast:? variants:?];
  }

  v10 = variantsCopy;
  if (([variantsCopy containsObject:@"PLKLegibilityEnvironmentVariantDefault"] & 1) == 0)
  {
    [PLKLegibilityEnvironmentBuilder legibilityEnvironmentForAverageColor:a2 contrast:? variants:?];
  }

  v11 = objc_opt_new();
  [v11 updateWithAverageColor:colorCopy contrast:v10 variants:contrast];
  v12 = [v11 buildWithError:0];

  return v12;
}

+ (id)legibilityEnvironmentForAverageColor:(id)color contrast:(double)contrast saturation:(double)saturation
{
  v8 = MEMORY[0x277CBEB98];
  colorCopy = color;
  v10 = [v8 setWithObject:@"PLKLegibilityEnvironmentVariantDefault"];
  v11 = [self legibilityEnvironmentForAverageColor:colorCopy contrast:v10 saturation:contrast variants:saturation];

  return v11;
}

+ (id)legibilityEnvironmentForAverageColor:(id)color contrast:(double)contrast saturation:(double)saturation variants:(id)variants
{
  colorCopy = color;
  variantsCopy = variants;
  if (!colorCopy)
  {
    [PLKLegibilityEnvironmentBuilder legibilityEnvironmentForAverageColor:a2 contrast:? saturation:? variants:?];
  }

  v12 = variantsCopy;
  if (([variantsCopy containsObject:@"PLKLegibilityEnvironmentVariantDefault"] & 1) == 0)
  {
    [PLKLegibilityEnvironmentBuilder legibilityEnvironmentForAverageColor:a2 contrast:? saturation:? variants:?];
  }

  v13 = objc_opt_new();
  [v13 updateWithAverageColor:colorCopy contrast:v12 saturation:contrast variants:saturation];
  v14 = [v13 buildWithError:0];

  return v14;
}

- (BOOL)updateWithContext:(id)context
{
  v4 = MEMORY[0x277CBEB98];
  contextCopy = context;
  variant = [contextCopy variant];
  v7 = [v4 setWithObject:variant];
  LOBYTE(self) = [(PLKLegibilityEnvironmentBuilder *)self updateWithContext:contextCopy variants:v7];

  return self;
}

- (BOOL)updateWithContext:(id)context variants:(id)variants
{
  v32 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = variants;
  v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v28;
    do
    {
      v11 = 0;
      v25 = v8;
      do
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v27 + 1) + 8 * v11);
        v13 = [(NSMutableDictionary *)self->_variantToContextDictionary objectForKey:v12, v25];
        if (([v13 isEqual:contextCopy] & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(NSMutableDictionary *)self->_variantToContextDictionary setObject:contextCopy forKey:v12];
            v9 = 1;
          }

          else
          {
            [contextCopy averageColor];
            v15 = v14 = v10;
            [contextCopy contrast];
            v17 = v16;
            [contextCopy saturation];
            v19 = v18;
            v20 = [MEMORY[0x277CBEB98] setWithObject:v12];
            selfCopy = self;
            v22 = [(PLKLegibilityEnvironmentBuilder *)self updateWithAverageColor:v15 contrast:v20 saturation:v17 variants:v19];

            v10 = v14;
            v8 = v25;
            v9 |= v22;
            self = selfCopy;
          }
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

- (BOOL)updateWithAverageColor:(id)color contrast:(double)contrast saturation:(double)saturation variants:(id)variants
{
  v37 = *MEMORY[0x277D85DE8];
  colorCopy = color;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = variants;
  v29 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v29)
  {
    v28 = *v33;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v33 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)self->_variantToContextDictionary objectForKey:v12];
        averageColor = [(PLKLegibilityEnvironmentVariantContext *)v13 averageColor];
        if (![averageColor _isSimilarToColor:colorCopy withinPercentage:0.1] || (-[PLKLegibilityEnvironmentVariantContext contrast](v13, "contrast"), !BSFloatEqualToFloat()))
        {

LABEL_11:
          v16 = objc_alloc_init(MEMORY[0x277D760B0]);
          [v16 clearContentColorAccumulator];
          [v16 accumulateChangesToContentColor:colorCopy contrast:contrast];
          settings = [v16 settings];
          v30 = v13;
          v18 = [PLKLegibilityEnvironmentVariantContext alloc];
          v19 = PLKLegibilityStyleForUILegibilityStyle([settings style]);
          [settings primaryColor];
          v31 = i;
          v21 = v20 = v12;
          secondaryColor = [settings secondaryColor];
          shadowColor = [settings shadowColor];
          v13 = [(PLKLegibilityEnvironmentVariantContext *)v18 initWithVariant:v20 style:v19 averageColor:colorCopy contrast:v21 saturation:secondaryColor primaryColor:shadowColor secondaryColor:contrast backgroundColor:saturation];

          v24 = v20;
          i = v31;
          [(NSMutableDictionary *)self->_variantToContextDictionary bs_setSafeObject:v13 forKey:v24];

          goto LABEL_12;
        }

        [(PLKLegibilityEnvironmentVariantContext *)v13 saturation];
        v15 = BSFloatEqualToFloat();

        if ((v15 & 1) == 0)
        {
          goto LABEL_11;
        }

LABEL_12:
      }

      v29 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v29);
  }

  v25 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)updateWithLegibilitySettings:(id)settings variants:(id)variants
{
  v28 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = variants;
  v22 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v22)
  {
    v20 = *v24;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        v8 = [PLKLegibilityEnvironmentVariantContext alloc];
        v9 = PLKLegibilityStyleForUILegibilityStyle([settingsCopy style]);
        contentColor = [settingsCopy contentColor];
        clearColor = contentColor;
        if (!contentColor)
        {
          clearColor = [MEMORY[0x277D75348] clearColor];
          v19 = clearColor;
        }

        primaryColor = [settingsCopy primaryColor];
        secondaryColor = [settingsCopy secondaryColor];
        shadowColor = [settingsCopy shadowColor];
        v15 = [(PLKLegibilityEnvironmentVariantContext *)v8 initWithVariant:v7 style:v9 averageColor:clearColor contrast:primaryColor saturation:secondaryColor primaryColor:shadowColor secondaryColor:-1.0 backgroundColor:-1.0];

        if (!contentColor)
        {
        }

        [(NSMutableDictionary *)self->_variantToContextDictionary bs_setSafeObject:v15 forKey:v7];
      }

      v22 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v22);
  }

  v16 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)updateWithLegibilitySettings:(id)settings contrast:(double)contrast saturation:(double)saturation variants:(id)variants
{
  v32 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = variants;
  v26 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v26)
  {
    v24 = *v28;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v28 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = [PLKLegibilityEnvironmentVariantContext alloc];
        v13 = PLKLegibilityStyleForUILegibilityStyle([settingsCopy style]);
        contentColor = [settingsCopy contentColor];
        clearColor = contentColor;
        if (!contentColor)
        {
          clearColor = [MEMORY[0x277D75348] clearColor];
          v23 = clearColor;
        }

        primaryColor = [settingsCopy primaryColor];
        secondaryColor = [settingsCopy secondaryColor];
        shadowColor = [settingsCopy shadowColor];
        v19 = [(PLKLegibilityEnvironmentVariantContext *)v12 initWithVariant:v11 style:v13 averageColor:clearColor contrast:primaryColor saturation:secondaryColor primaryColor:shadowColor secondaryColor:contrast backgroundColor:saturation];

        if (!contentColor)
        {
        }

        [(NSMutableDictionary *)self->_variantToContextDictionary bs_setSafeObject:v19 forKey:v11];
      }

      v26 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v26);
  }

  v20 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)buildWithError:(id *)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = [(NSMutableDictionary *)self->_variantToContextDictionary objectForKeyedSubscript:@"PLKLegibilityEnvironmentVariantDefault"];

  if (v5)
  {
    v6 = [PLKLegibilityEnvironment alloc];
    variantToContextDictionary = self->_variantToContextDictionary;
    userInfo = [(PLKLegibilityEnvironmentBuilder *)self userInfo];
    v9 = userInfo;
    if (userInfo)
    {
      v10 = userInfo;
    }

    else
    {
      v10 = MEMORY[0x277CBEC10];
    }

    error = [(PLKLegibilityEnvironment *)v6 initWithDictionary:variantToContextDictionary userInfo:v10];
  }

  else if (error)
  {
    v11 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA470];
    v16[0] = @"No default variant supplied.";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *error = [v11 errorWithDomain:@"com.apple.PosterLegibilityKit" code:-1 userInfo:v12];

    error = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return error;
}

+ (void)legibilityEnvironmentForImage:(char *)a1 variants:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21E5D5000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[variants containsObject:PLKLegibilityEnvironmentVariantDefault]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)legibilityEnvironmentForAverageColor:(char *)a1 contrast:variants:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21E5D5000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[variants containsObject:PLKLegibilityEnvironmentVariantDefault]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)legibilityEnvironmentForAverageColor:(char *)a1 contrast:variants:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21E5D5000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"averageColor", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)legibilityEnvironmentForAverageColor:(char *)a1 contrast:saturation:variants:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21E5D5000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[variants containsObject:PLKLegibilityEnvironmentVariantDefault]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)legibilityEnvironmentForAverageColor:(char *)a1 contrast:saturation:variants:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21E5D5000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"averageColor", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end