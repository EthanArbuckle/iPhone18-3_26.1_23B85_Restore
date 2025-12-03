@interface PRSPosterSnapshot
- (BOOL)writePNGToURL:(id)l error:(id *)error;
- (PRSPosterSnapshot)initWithBSXPCCoder:(id)coder;
- (PRSPosterSnapshot)initWithCodableImage:(id)image imageOrientation:(int64_t)orientation switcherConfigurationPath:(id)path homeScreenConfigurationPath:(id)configurationPath variant:(int64_t)variant configurationType:(int64_t)type;
- (PRSPosterSnapshot)initWithIOSurface:(id)surface imageOrientation:(int64_t)orientation switcherConfigurationPath:(id)path homeScreenConfigurationPath:(id)configurationPath variant:(int64_t)variant configurationType:(int64_t)type;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation PRSPosterSnapshot

- (PRSPosterSnapshot)initWithCodableImage:(id)image imageOrientation:(int64_t)orientation switcherConfigurationPath:(id)path homeScreenConfigurationPath:(id)configurationPath variant:(int64_t)variant configurationType:(int64_t)type
{
  imageCopy = image;
  pathCopy = path;
  configurationPathCopy = configurationPath;
  v18 = pathCopy;
  if (v18)
  {
    NSClassFromString(&cfstr_Pfserverposter.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRSPosterSnapshot initWithCodableImage:a2 imageOrientation:? switcherConfigurationPath:? homeScreenConfigurationPath:? variant:? configurationType:?];
    }
  }

  v19 = configurationPathCopy;
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
    objc_storeStrong(&v20->_codableImage, image);
    objc_storeStrong(&v21->_switcherConfigurationPath, path);
    objc_storeStrong(&v21->_homeScreenConfigurationPath, configurationPath);
    v21->_variant = variant;
    v21->_configurationType = type;
    v21->_imageOrientation = orientation;
  }

  return v21;
}

- (PRSPosterSnapshot)initWithIOSurface:(id)surface imageOrientation:(int64_t)orientation switcherConfigurationPath:(id)path homeScreenConfigurationPath:(id)configurationPath variant:(int64_t)variant configurationType:(int64_t)type
{
  surfaceCopy = surface;
  pathCopy = path;
  configurationPathCopy = configurationPath;
  v18 = surfaceCopy;
  if (v18)
  {
    NSClassFromString(&cfstr_Iosurface.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRSPosterSnapshot initWithIOSurface:a2 imageOrientation:? switcherConfigurationPath:? homeScreenConfigurationPath:? variant:? configurationType:?];
    }
  }

  orientationCopy = orientation;
  typeCopy = type;

  v20 = pathCopy;
  if (v20)
  {
    NSClassFromString(&cfstr_Pfserverposter.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRSPosterSnapshot initWithIOSurface:a2 imageOrientation:? switcherConfigurationPath:? homeScreenConfigurationPath:? variant:? configurationType:?];
    }
  }

  v21 = configurationPathCopy;
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
    objc_storeStrong(&v25->_switcherConfigurationPath, path);
    objc_storeStrong(&v25->_homeScreenConfigurationPath, configurationPath);
    v25->_variant = variant;
    v25->_configurationType = typeCopy;
    v25->_imageOrientation = orientationCopy;
  }

  return v25;
}

- (BOOL)writePNGToURL:(id)l error:(id *)error
{
  lCopy = l;
  image = [(PRSPosterSnapshot *)self image];
  v8 = lCopy;
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

  v10 = v9(image, v8, error);

  return v10;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  codableImage = self->_codableImage;
  coderCopy = coder;
  [coderCopy encodeObject:codableImage forKey:@"image"];
  [coderCopy encodeObject:self->_switcherConfigurationPath forKey:@"_switcherConfigurationPath"];
  [coderCopy encodeObject:self->_homeScreenConfigurationPath forKey:@"_homeScreenConfigurationPath"];
  [coderCopy encodeUInt64:self->_variant forKey:@"_variant"];
  [coderCopy encodeUInt64:self->_configurationType forKey:@"_configurationType"];
  [coderCopy encodeInt64:self->_imageOrientation forKey:@"_imageOrientation"];
}

- (PRSPosterSnapshot)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"image"])
  {
    v5 = objc_opt_self();
    v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"image"];
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_opt_self();
  v8 = [coderCopy decodeObjectOfClass:v7 forKey:@"_switcherConfigurationPath"];

  v9 = objc_opt_self();
  v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"_homeScreenConfigurationPath"];

  v11 = -[PRSPosterSnapshot initWithCodableImage:imageOrientation:switcherConfigurationPath:homeScreenConfigurationPath:variant:configurationType:](self, "initWithCodableImage:imageOrientation:switcherConfigurationPath:homeScreenConfigurationPath:variant:configurationType:", v6, [coderCopy decodeInt64ForKey:@"_imageOrientation"], v8, v10, objc_msgSend(coderCopy, "decodeUInt64ForKey:", @"_variant"), objc_msgSend(coderCopy, "decodeUInt64ForKey:", @"_configurationType"));
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