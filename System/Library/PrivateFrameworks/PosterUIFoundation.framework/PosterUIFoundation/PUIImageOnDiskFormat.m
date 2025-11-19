@interface PUIImageOnDiskFormat
+ (PUIImageOnDiskFormat)png;
+ (id)atxWithBlockSize:(unsigned int)a3 twiddling:(BOOL)a4;
- (PUIImageOnDiskFormat)initWithTypeIdentifier:(id)a3 filenameExtension:(id)a4 destinationOptions:(id)a5 addImageOptions:(id)a6;
- (PUIImageOnDiskFormat)initWithTypeRecord:(id)a3 destinationOptions:(id)a4 addImageOptions:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)formatByAppendingDestinationOptions:(id)a3 addImageOptions:(id)a4;
- (id)resolveAddImageOptionsForImage:(CGImage *)a3;
- (id)resolveDestinationOptionsForImage:(CGImage *)a3;
@end

@implementation PUIImageOnDiskFormat

+ (id)atxWithBlockSize:(unsigned int)a3 twiddling:(BOOL)a4
{
  v4 = a4;
  v12[4] = *MEMORY[0x1E69E9840];
  v12[0] = *MEMORY[0x1E696D3E8];
  v5 = *MEMORY[0x1E696D3E0];
  v11[0] = *MEMORY[0x1E696D8A0];
  v11[1] = v5;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&a3];
  v12[1] = v6;
  v11[2] = *MEMORY[0x1E696D400];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  v11[3] = *MEMORY[0x1E696D408];
  v12[2] = v7;
  v12[3] = MEMORY[0x1E695E110];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];

  v9 = [[PUIImageOnDiskFormat alloc] initWithTypeIdentifier:@"com.apple.atx" filenameExtension:@"atx" destinationOptions:0 addImageOptions:v8];

  return v9;
}

+ (PUIImageOnDiskFormat)png
{
  v15[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E696DE88];
  v15[0] = &unk_1F1C92958;
  v3 = *MEMORY[0x1E696DEB0];
  v14[0] = v2;
  v14[1] = v3;
  v12 = *MEMORY[0x1E696DEA0];
  v13 = &unk_1F1C92970;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v15[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v6 = [PUIImageOnDiskFormat alloc];
  v7 = *MEMORY[0x1E6982F28];
  v8 = [*MEMORY[0x1E6982F28] identifier];
  v9 = [v7 preferredFilenameExtension];
  v10 = [(PUIImageOnDiskFormat *)v6 initWithTypeIdentifier:v8 filenameExtension:v9 destinationOptions:0 addImageOptions:v5];

  return v10;
}

- (PUIImageOnDiskFormat)initWithTypeIdentifier:(id)a3 filenameExtension:(id)a4 destinationOptions:(id)a5 addImageOptions:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    [PUIImageOnDiskFormat initWithTypeIdentifier:a2 filenameExtension:? destinationOptions:? addImageOptions:?];
  }

  if (!v12)
  {
    [PUIImageOnDiskFormat initWithTypeIdentifier:a2 filenameExtension:? destinationOptions:? addImageOptions:?];
  }

  v15 = v14;
  v16 = [(PUIImageOnDiskFormat *)self init];
  if (v16)
  {
    v17 = [v12 copy];
    filenameExtension = v16->_filenameExtension;
    v16->_filenameExtension = v17;

    v19 = [v11 copy];
    typeIdentifier = v16->_typeIdentifier;
    v16->_typeIdentifier = v19;

    v21 = [v13 copy];
    destinationOptions = v16->_destinationOptions;
    v16->_destinationOptions = v21;

    v23 = [v15 copy];
    addImageOptions = v16->_addImageOptions;
    v16->_addImageOptions = v23;
  }

  return v16;
}

- (PUIImageOnDiskFormat)initWithTypeRecord:(id)a3 destinationOptions:(id)a4 addImageOptions:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 identifier];
  v12 = [v10 preferredFilenameExtension];

  v13 = [(PUIImageOnDiskFormat *)self initWithTypeIdentifier:v11 filenameExtension:v12 destinationOptions:v9 addImageOptions:v8];
  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PUIImageOnDiskFormat alloc];
  filenameExtension = self->_filenameExtension;
  typeIdentifier = self->_typeIdentifier;
  destinationOptions = self->_destinationOptions;
  addImageOptions = self->_addImageOptions;

  return [(PUIImageOnDiskFormat *)v4 initWithTypeIdentifier:typeIdentifier filenameExtension:filenameExtension destinationOptions:destinationOptions addImageOptions:addImageOptions];
}

- (id)resolveDestinationOptionsForImage:(CGImage *)a3
{
  if (!a3)
  {
    [PUIImageOnDiskFormat resolveDestinationOptionsForImage:a2];
  }

  v4 = [(PUIImageOnDiskFormat *)self destinationOptions];

  if (v4)
  {
    v5 = [(PUIImageOnDiskFormat *)self destinationOptions];
    v6 = [v5 mutableCopy];

    PUIResolveMaxPixelOption(v6);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)resolveAddImageOptionsForImage:(CGImage *)a3
{
  if (!a3)
  {
    [PUIImageOnDiskFormat resolveAddImageOptionsForImage:a2];
  }

  v4 = [(PUIImageOnDiskFormat *)self addImageOptions];

  if (v4)
  {
    v5 = [(PUIImageOnDiskFormat *)self addImageOptions];
    v6 = [v5 mutableCopy];

    PUIResolveMaxPixelOption(v6);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)formatByAppendingDestinationOptions:(id)a3 addImageOptions:(id)a4
{
  v6 = MEMORY[0x1E695E0F8];
  if (self->_destinationOptions)
  {
    destinationOptions = self->_destinationOptions;
  }

  else
  {
    destinationOptions = MEMORY[0x1E695E0F8];
  }

  v8 = a4;
  v9 = [(NSDictionary *)destinationOptions bs_dictionaryByAddingEntriesFromDictionary:a3];
  if (self->_addImageOptions)
  {
    addImageOptions = self->_addImageOptions;
  }

  else
  {
    addImageOptions = v6;
  }

  v11 = [(NSDictionary *)addImageOptions bs_dictionaryByAddingEntriesFromDictionary:v8];

  v12 = [objc_alloc(objc_opt_class()) initWithTypeIdentifier:self->_typeIdentifier filenameExtension:self->_filenameExtension destinationOptions:v9 addImageOptions:v11];

  return v12;
}

- (void)initWithTypeIdentifier:(char *)a1 filenameExtension:destinationOptions:addImageOptions:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"filenameExtension != ((void*)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithTypeIdentifier:(char *)a1 filenameExtension:destinationOptions:addImageOptions:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"typeIdentifier != ((void*)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)resolveDestinationOptionsForImage:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"image != ((void*)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)resolveAddImageOptionsForImage:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"image != ((void*)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end