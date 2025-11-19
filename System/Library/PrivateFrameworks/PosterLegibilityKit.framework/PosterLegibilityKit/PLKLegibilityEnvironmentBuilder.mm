@interface PLKLegibilityEnvironmentBuilder
+ (id)legibilityEnvironmentForAverageColor:(id)a3 contrast:(double)a4;
+ (id)legibilityEnvironmentForAverageColor:(id)a3 contrast:(double)a4 saturation:(double)a5;
+ (id)legibilityEnvironmentForAverageColor:(id)a3 contrast:(double)a4 saturation:(double)a5 variants:(id)a6;
+ (id)legibilityEnvironmentForAverageColor:(id)a3 contrast:(double)a4 variants:(id)a5;
+ (id)legibilityEnvironmentForImage:(id)a3;
+ (id)legibilityEnvironmentForImage:(id)a3 variants:(id)a4;
- (BOOL)updateWithAverageColor:(id)a3 contrast:(double)a4 saturation:(double)a5 variants:(id)a6;
- (BOOL)updateWithContext:(id)a3;
- (BOOL)updateWithContext:(id)a3 variants:(id)a4;
- (BOOL)updateWithLegibilitySettings:(id)a3 contrast:(double)a4 saturation:(double)a5 variants:(id)a6;
- (BOOL)updateWithLegibilitySettings:(id)a3 variants:(id)a4;
- (NSSet)variants;
- (PLKLegibilityEnvironmentBuilder)init;
- (PLKLegibilityEnvironmentBuilder)initWithEnvironment:(id)a3;
- (id)buildWithError:(id *)a3;
@end

@implementation PLKLegibilityEnvironmentBuilder

- (NSSet)variants
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(NSMutableDictionary *)self->_variantToContextDictionary allKeys];
  v4 = [v2 setWithArray:v3];

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

- (PLKLegibilityEnvironmentBuilder)initWithEnvironment:(id)a3
{
  v4 = a3;
  v5 = [(PLKLegibilityEnvironmentBuilder *)self init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB38]);
    v7 = [v4 contextForVariant];
    v8 = [v6 initWithDictionary:v7 copyItems:1];
    variantToContextDictionary = v5->_variantToContextDictionary;
    v5->_variantToContextDictionary = v8;
  }

  return v5;
}

+ (id)legibilityEnvironmentForImage:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = [v4 setWithObject:@"PLKLegibilityEnvironmentVariantDefault"];
  v7 = [a1 legibilityEnvironmentForImage:v5 variants:v6];

  return v7;
}

+ (id)legibilityEnvironmentForImage:(id)a3 variants:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (([v7 containsObject:@"PLKLegibilityEnvironmentVariantDefault"] & 1) == 0)
  {
    [PLKLegibilityEnvironmentBuilder legibilityEnvironmentForImage:a2 variants:?];
  }

  v21 = v6;
  v8 = [PLKColorBoxes colorBoxesForImage:v6];
  v9 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v7;
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

+ (id)legibilityEnvironmentForAverageColor:(id)a3 contrast:(double)a4
{
  v6 = MEMORY[0x277CBEB98];
  v7 = a3;
  v8 = [v6 setWithObject:@"PLKLegibilityEnvironmentVariantDefault"];
  v9 = [a1 legibilityEnvironmentForAverageColor:v7 contrast:v8 variants:a4];

  return v9;
}

+ (id)legibilityEnvironmentForAverageColor:(id)a3 contrast:(double)a4 variants:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!v8)
  {
    [PLKLegibilityEnvironmentBuilder legibilityEnvironmentForAverageColor:a2 contrast:? variants:?];
  }

  v10 = v9;
  if (([v9 containsObject:@"PLKLegibilityEnvironmentVariantDefault"] & 1) == 0)
  {
    [PLKLegibilityEnvironmentBuilder legibilityEnvironmentForAverageColor:a2 contrast:? variants:?];
  }

  v11 = objc_opt_new();
  [v11 updateWithAverageColor:v8 contrast:v10 variants:a4];
  v12 = [v11 buildWithError:0];

  return v12;
}

+ (id)legibilityEnvironmentForAverageColor:(id)a3 contrast:(double)a4 saturation:(double)a5
{
  v8 = MEMORY[0x277CBEB98];
  v9 = a3;
  v10 = [v8 setWithObject:@"PLKLegibilityEnvironmentVariantDefault"];
  v11 = [a1 legibilityEnvironmentForAverageColor:v9 contrast:v10 saturation:a4 variants:a5];

  return v11;
}

+ (id)legibilityEnvironmentForAverageColor:(id)a3 contrast:(double)a4 saturation:(double)a5 variants:(id)a6
{
  v10 = a3;
  v11 = a6;
  if (!v10)
  {
    [PLKLegibilityEnvironmentBuilder legibilityEnvironmentForAverageColor:a2 contrast:? saturation:? variants:?];
  }

  v12 = v11;
  if (([v11 containsObject:@"PLKLegibilityEnvironmentVariantDefault"] & 1) == 0)
  {
    [PLKLegibilityEnvironmentBuilder legibilityEnvironmentForAverageColor:a2 contrast:? saturation:? variants:?];
  }

  v13 = objc_opt_new();
  [v13 updateWithAverageColor:v10 contrast:v12 saturation:a4 variants:a5];
  v14 = [v13 buildWithError:0];

  return v14;
}

- (BOOL)updateWithContext:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = [v5 variant];
  v7 = [v4 setWithObject:v6];
  LOBYTE(self) = [(PLKLegibilityEnvironmentBuilder *)self updateWithContext:v5 variants:v7];

  return self;
}

- (BOOL)updateWithContext:(id)a3 variants:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = a4;
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
        if (([v13 isEqual:v6] & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(NSMutableDictionary *)self->_variantToContextDictionary setObject:v6 forKey:v12];
            v9 = 1;
          }

          else
          {
            [v6 averageColor];
            v15 = v14 = v10;
            [v6 contrast];
            v17 = v16;
            [v6 saturation];
            v19 = v18;
            v20 = [MEMORY[0x277CBEB98] setWithObject:v12];
            v21 = self;
            v22 = [(PLKLegibilityEnvironmentBuilder *)self updateWithAverageColor:v15 contrast:v20 saturation:v17 variants:v19];

            v10 = v14;
            v8 = v25;
            v9 |= v22;
            self = v21;
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

- (BOOL)updateWithAverageColor:(id)a3 contrast:(double)a4 saturation:(double)a5 variants:(id)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = a6;
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
        v14 = [(PLKLegibilityEnvironmentVariantContext *)v13 averageColor];
        if (![v14 _isSimilarToColor:v10 withinPercentage:0.1] || (-[PLKLegibilityEnvironmentVariantContext contrast](v13, "contrast"), !BSFloatEqualToFloat()))
        {

LABEL_11:
          v16 = objc_alloc_init(MEMORY[0x277D760B0]);
          [v16 clearContentColorAccumulator];
          [v16 accumulateChangesToContentColor:v10 contrast:a4];
          v17 = [v16 settings];
          v30 = v13;
          v18 = [PLKLegibilityEnvironmentVariantContext alloc];
          v19 = PLKLegibilityStyleForUILegibilityStyle([v17 style]);
          [v17 primaryColor];
          v31 = i;
          v21 = v20 = v12;
          v22 = [v17 secondaryColor];
          v23 = [v17 shadowColor];
          v13 = [(PLKLegibilityEnvironmentVariantContext *)v18 initWithVariant:v20 style:v19 averageColor:v10 contrast:v21 saturation:v22 primaryColor:v23 secondaryColor:a4 backgroundColor:a5];

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

- (BOOL)updateWithLegibilitySettings:(id)a3 variants:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = a4;
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
        v9 = PLKLegibilityStyleForUILegibilityStyle([v5 style]);
        v10 = [v5 contentColor];
        v11 = v10;
        if (!v10)
        {
          v11 = [MEMORY[0x277D75348] clearColor];
          v19 = v11;
        }

        v12 = [v5 primaryColor];
        v13 = [v5 secondaryColor];
        v14 = [v5 shadowColor];
        v15 = [(PLKLegibilityEnvironmentVariantContext *)v8 initWithVariant:v7 style:v9 averageColor:v11 contrast:v12 saturation:v13 primaryColor:v14 secondaryColor:-1.0 backgroundColor:-1.0];

        if (!v10)
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

- (BOOL)updateWithLegibilitySettings:(id)a3 contrast:(double)a4 saturation:(double)a5 variants:(id)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = a6;
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
        v13 = PLKLegibilityStyleForUILegibilityStyle([v9 style]);
        v14 = [v9 contentColor];
        v15 = v14;
        if (!v14)
        {
          v15 = [MEMORY[0x277D75348] clearColor];
          v23 = v15;
        }

        v16 = [v9 primaryColor];
        v17 = [v9 secondaryColor];
        v18 = [v9 shadowColor];
        v19 = [(PLKLegibilityEnvironmentVariantContext *)v12 initWithVariant:v11 style:v13 averageColor:v15 contrast:v16 saturation:v17 primaryColor:v18 secondaryColor:a4 backgroundColor:a5];

        if (!v14)
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

- (id)buildWithError:(id *)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = [(NSMutableDictionary *)self->_variantToContextDictionary objectForKeyedSubscript:@"PLKLegibilityEnvironmentVariantDefault"];

  if (v5)
  {
    v6 = [PLKLegibilityEnvironment alloc];
    variantToContextDictionary = self->_variantToContextDictionary;
    v8 = [(PLKLegibilityEnvironmentBuilder *)self userInfo];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = MEMORY[0x277CBEC10];
    }

    a3 = [(PLKLegibilityEnvironment *)v6 initWithDictionary:variantToContextDictionary userInfo:v10];
  }

  else if (a3)
  {
    v11 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA470];
    v16[0] = @"No default variant supplied.";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *a3 = [v11 errorWithDomain:@"com.apple.PosterLegibilityKit" code:-1 userInfo:v12];

    a3 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return a3;
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