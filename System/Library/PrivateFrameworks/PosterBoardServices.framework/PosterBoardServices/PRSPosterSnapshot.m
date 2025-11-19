@interface PRSPosterSnapshot
- (BOOL)writePNGToURL:(id)a3 error:(id *)a4;
- (PRSPosterSnapshot)initWithBSXPCCoder:(id)a3;
- (PRSPosterSnapshot)initWithCodableImage:(id)a3 imageOrientation:(int64_t)a4 switcherConfigurationPath:(id)a5 homeScreenConfigurationPath:(id)a6 variant:(int64_t)a7 configurationType:(int64_t)a8;
- (PRSPosterSnapshot)initWithIOSurface:(id)a3 imageOrientation:(int64_t)a4 switcherConfigurationPath:(id)a5 homeScreenConfigurationPath:(id)a6 variant:(int64_t)a7 configurationType:(int64_t)a8;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation PRSPosterSnapshot

- (PRSPosterSnapshot)initWithCodableImage:(id)a3 imageOrientation:(int64_t)a4 switcherConfigurationPath:(id)a5 homeScreenConfigurationPath:(id)a6 variant:(int64_t)a7 configurationType:(int64_t)a8
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = v16;
  if (v18)
  {
    NSClassFromString(&cfstr_Pfserverposter.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRSPosterSnapshot initWithCodableImage:a2 imageOrientation:? switcherConfigurationPath:? homeScreenConfigurationPath:? variant:? configurationType:?];
    }
  }

  v19 = v17;
  if (v19)
  {
    NSClassFromString(&cfstr_Pfserverposter.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRSPosterSnapshot initWithCodableImage:a2 imageOrientation:? switcherConfigurationPath:? homeScreenConfigurationPath:? variant:? configurationType:?];
    }
  }

  v24.receiver = self;
  v24.super_class = PRSPosterSnapshot;
  v20 = [(PRSPosterSnapshot *)&v24 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_codableImage, a3);
    objc_storeStrong(&v21->_switcherConfigurationPath, a5);
    objc_storeStrong(&v21->_homeScreenConfigurationPath, a6);
    v21->_variant = a7;
    v21->_configurationType = a8;
    v21->_imageOrientation = a4;
  }

  return v21;
}

- (PRSPosterSnapshot)initWithIOSurface:(id)a3 imageOrientation:(int64_t)a4 switcherConfigurationPath:(id)a5 homeScreenConfigurationPath:(id)a6 variant:(int64_t)a7 configurationType:(int64_t)a8
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = v15;
  if (v18)
  {
    NSClassFromString(&cfstr_Iosurface.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRSPosterSnapshot initWithIOSurface:a2 imageOrientation:? switcherConfigurationPath:? homeScreenConfigurationPath:? variant:? configurationType:?];
    }
  }

  v27 = a4;
  v19 = a8;

  v20 = v16;
  if (v20)
  {
    NSClassFromString(&cfstr_Pfserverposter.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRSPosterSnapshot initWithIOSurface:a2 imageOrientation:? switcherConfigurationPath:? homeScreenConfigurationPath:? variant:? configurationType:?];
    }
  }

  v21 = v17;
  if (v21)
  {
    NSClassFromString(&cfstr_Pfserverposter.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRSPosterSnapshot initWithIOSurface:a2 imageOrientation:? switcherConfigurationPath:? homeScreenConfigurationPath:? variant:? configurationType:?];
    }
  }

  v22 = [[PRSCodableImage alloc] initWithIOSurface:v18 scale:0 error:1.0];
  if (!v22)
  {
    [PRSPosterSnapshot initWithIOSurface:a2 imageOrientation:? switcherConfigurationPath:? homeScreenConfigurationPath:? variant:? configurationType:?];
  }

  v23 = v22;
  v28.receiver = self;
  v28.super_class = PRSPosterSnapshot;
  v24 = [(PRSPosterSnapshot *)&v28 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_codableImage, v23);
    objc_storeStrong(&v25->_switcherConfigurationPath, a5);
    objc_storeStrong(&v25->_homeScreenConfigurationPath, a6);
    v25->_variant = a7;
    v25->_configurationType = v19;
    v25->_imageOrientation = v27;
  }

  return v25;
}

- (BOOL)writePNGToURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PRSPosterSnapshot *)self image];
  v8 = v6;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v9 = getPUIWritePNGFromCGImageRefSymbolLoc_ptr;
  v16 = getPUIWritePNGFromCGImageRefSymbolLoc_ptr;
  if (!getPUIWritePNGFromCGImageRefSymbolLoc_ptr)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __getPUIWritePNGFromCGImageRefSymbolLoc_block_invoke;
    v12[3] = &unk_1E818CC28;
    v12[4] = &v13;
    __getPUIWritePNGFromCGImageRefSymbolLoc_block_invoke(v12);
    v9 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v9)
  {
    [PRSPosterSnapshot writePNGToURL:error:];
  }

  v10 = v9(v7, v8, a4);

  return v10;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  codableImage = self->_codableImage;
  v5 = a3;
  [v5 encodeObject:codableImage forKey:@"image"];
  [v5 encodeObject:self->_switcherConfigurationPath forKey:@"_switcherConfigurationPath"];
  [v5 encodeObject:self->_homeScreenConfigurationPath forKey:@"_homeScreenConfigurationPath"];
  [v5 encodeUInt64:self->_variant forKey:@"_variant"];
  [v5 encodeUInt64:self->_configurationType forKey:@"_configurationType"];
  [v5 encodeInt64:self->_imageOrientation forKey:@"_imageOrientation"];
}

- (PRSPosterSnapshot)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  if ([v4 containsValueForKey:@"image"])
  {
    v5 = objc_opt_self();
    v6 = [v4 decodeObjectOfClass:v5 forKey:@"image"];
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_opt_self();
  v8 = [v4 decodeObjectOfClass:v7 forKey:@"_switcherConfigurationPath"];

  v9 = objc_opt_self();
  v10 = [v4 decodeObjectOfClass:v9 forKey:@"_homeScreenConfigurationPath"];

  v11 = -[PRSPosterSnapshot initWithCodableImage:imageOrientation:switcherConfigurationPath:homeScreenConfigurationPath:variant:configurationType:](self, "initWithCodableImage:imageOrientation:switcherConfigurationPath:homeScreenConfigurationPath:variant:configurationType:", v6, [v4 decodeInt64ForKey:@"_imageOrientation"], v8, v10, objc_msgSend(v4, "decodeUInt64ForKey:", @"_variant"), objc_msgSend(v4, "decodeUInt64ForKey:", @"_configurationType"));
  return v11;
}

- (void)initWithCodableImage:(char *)a1 imageOrientation:switcherConfigurationPath:homeScreenConfigurationPath:variant:configurationType:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PFServerPosterPathClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithCodableImage:(char *)a1 imageOrientation:switcherConfigurationPath:homeScreenConfigurationPath:variant:configurationType:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PFServerPosterPathClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithIOSurface:(char *)a1 imageOrientation:switcherConfigurationPath:homeScreenConfigurationPath:variant:configurationType:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:IOSurfaceClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithIOSurface:(char *)a1 imageOrientation:switcherConfigurationPath:homeScreenConfigurationPath:variant:configurationType:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PFServerPosterPathClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithIOSurface:(char *)a1 imageOrientation:switcherConfigurationPath:homeScreenConfigurationPath:variant:configurationType:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PFServerPosterPathClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithIOSurface:(char *)a1 imageOrientation:switcherConfigurationPath:homeScreenConfigurationPath:variant:configurationType:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"codableImage", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)writePNGToURL:error:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL soft_PUIWritePNGFromCGImageRef(CGImageRef, NSURL *__strong, NSError *__autoreleasing *)"}];
  [v0 handleFailureInFunction:v1 file:@"PRSPosterSnapshot.m" lineNumber:21 description:{@"%s", dlerror()}];

  __break(1u);
}

@end