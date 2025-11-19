@interface STBackgroundActivityVisualDescriptorColorRepresentation
- (BOOL)isEqual:(id)a3;
- (STBackgroundActivityVisualDescriptorColorRepresentation)initWithBSColor:(id)a3;
- (STBackgroundActivityVisualDescriptorColorRepresentation)initWithCoder:(id)a3;
- (STBackgroundActivityVisualDescriptorColorRepresentation)initWithPatternColorKitImageName:(id)a3;
- (STBackgroundActivityVisualDescriptorColorRepresentation)initWithPlistRepresentation:(id)a3;
- (STBackgroundActivityVisualDescriptorColorRepresentation)initWithSystemColorName:(id)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STBackgroundActivityVisualDescriptorColorRepresentation

- (STBackgroundActivityVisualDescriptorColorRepresentation)initWithPlistRepresentation:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 bs_safeStringForKey:@"SystemColorName"];
  v6 = [v4 bs_safeArrayForKey:@"RGBAColor"];
  v7 = [v4 bs_safeStringForKey:@"_PatternColorKitImageName"];

  if (!v5)
  {
    if (!v6)
    {
      if (!v7)
      {
        v9 = 0;
        goto LABEL_18;
      }

      v8 = [(STBackgroundActivityVisualDescriptorColorRepresentation *)self initWithPatternColorKitImageName:v7];
      goto LABEL_3;
    }

    v10 = [v6 bs_objectsOfClass:objc_opt_class()];
    if ([v10 count] == 3 || objc_msgSend(v10, "count") == 4)
    {
      v11 = [v10 objectAtIndexedSubscript:0];
      [v11 doubleValue];
      v13 = v12;

      v14 = [v10 objectAtIndexedSubscript:1];
      [v14 doubleValue];
      v16 = v15;

      v17 = [v10 objectAtIndexedSubscript:2];
      [v17 doubleValue];
      v19 = v18;

      v20 = 1.0;
      if ([v10 count] == 4)
      {
        v21 = [v10 objectAtIndexedSubscript:3];
        [v21 doubleValue];
        v20 = v22;
      }

      v23 = [MEMORY[0x1E698E650] colorWithRed:v13 green:v16 blue:v19 alpha:v20];

      if (v23)
      {
        self = [(STBackgroundActivityVisualDescriptorColorRepresentation *)self initWithBSColor:v23];
        v9 = self;
LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
    }

    v24 = STSystemStatusLogBundleLoading();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v27 = 138543362;
      v28 = v10;
      _os_log_error_impl(&dword_1DA9C2000, v24, OS_LOG_TYPE_ERROR, "Expected an RGB or RGBA color as an array of numbers, but got: '%{public}@'", &v27, 0xCu);
    }

    v23 = 0;
    v9 = 0;
    goto LABEL_17;
  }

  v8 = [(STBackgroundActivityVisualDescriptorColorRepresentation *)self initWithSystemColorName:v5];
LABEL_3:
  self = v8;
  v9 = self;
LABEL_18:

  v25 = *MEMORY[0x1E69E9840];
  return v9;
}

- (STBackgroundActivityVisualDescriptorColorRepresentation)initWithSystemColorName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STBackgroundActivityVisualDescriptorColorRepresentation;
  v5 = [(STBackgroundActivityVisualDescriptorColorRepresentation *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    systemColorName = v5->_systemColorName;
    v5->_systemColorName = v6;
  }

  return v5;
}

- (STBackgroundActivityVisualDescriptorColorRepresentation)initWithBSColor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = STBackgroundActivityVisualDescriptorColorRepresentation;
  v6 = [(STBackgroundActivityVisualDescriptorColorRepresentation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_BSColor, a3);
  }

  return v7;
}

- (STBackgroundActivityVisualDescriptorColorRepresentation)initWithPatternColorKitImageName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STBackgroundActivityVisualDescriptorColorRepresentation;
  v5 = [(STBackgroundActivityVisualDescriptorColorRepresentation *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    patternColorKitImageName = v5->_patternColorKitImageName;
    v5->_patternColorKitImageName = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(STBackgroundActivityVisualDescriptorColorRepresentation *)self systemColorName];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __67__STBackgroundActivityVisualDescriptorColorRepresentation_isEqual___block_invoke;
  v20[3] = &unk_1E85DDD28;
  v7 = v4;
  v21 = v7;
  v8 = [v5 appendString:v6 counterpart:v20];

  v9 = [(STBackgroundActivityVisualDescriptorColorRepresentation *)self BSColor];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __67__STBackgroundActivityVisualDescriptorColorRepresentation_isEqual___block_invoke_2;
  v18[3] = &unk_1E85DDCD8;
  v10 = v7;
  v19 = v10;
  v11 = [v5 appendObject:v9 counterpart:v18];

  v12 = [(STBackgroundActivityVisualDescriptorColorRepresentation *)self patternColorKitImageName];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__STBackgroundActivityVisualDescriptorColorRepresentation_isEqual___block_invoke_3;
  v16[3] = &unk_1E85DDD28;
  v17 = v10;
  v13 = v10;
  v14 = [v5 appendString:v12 counterpart:v16];

  LOBYTE(v12) = [v5 isEqual];
  return v12;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(STBackgroundActivityVisualDescriptorColorRepresentation *)self systemColorName];
  v5 = [v3 appendString:v4];

  v6 = [(STBackgroundActivityVisualDescriptorColorRepresentation *)self BSColor];
  v7 = [v3 appendObject:v6];

  v8 = [(STBackgroundActivityVisualDescriptorColorRepresentation *)self patternColorKitImageName];
  v9 = [v3 appendString:v8];

  v10 = [v3 hash];
  return v10;
}

- (id)succinctDescription
{
  v2 = [(STBackgroundActivityVisualDescriptorColorRepresentation *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STBackgroundActivityVisualDescriptorColorRepresentation *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STBackgroundActivityVisualDescriptorColorRepresentation *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
  v4 = [v3 build];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(STBackgroundActivityVisualDescriptorColorRepresentation *)self systemColorName];
  [v4 encodeObject:v5 forKey:@"systemColorName"];

  v6 = [(STBackgroundActivityVisualDescriptorColorRepresentation *)self BSColor];
  [v4 encodeObject:v6 forKey:@"BSColor"];

  v7 = [(STBackgroundActivityVisualDescriptorColorRepresentation *)self patternColorKitImageName];
  [v4 encodeObject:v7 forKey:@"patternColorKitImageName"];
}

- (STBackgroundActivityVisualDescriptorColorRepresentation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemColorName"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BSColor"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"patternColorKitImageName"];

  if (v5)
  {
    v8 = [(STBackgroundActivityVisualDescriptorColorRepresentation *)self initWithSystemColorName:v5];
  }

  else if (v6)
  {
    v8 = [(STBackgroundActivityVisualDescriptorColorRepresentation *)self initWithBSColor:v6];
  }

  else
  {
    if (!v7)
    {
      v9 = 0;
      goto LABEL_8;
    }

    v8 = [(STBackgroundActivityVisualDescriptorColorRepresentation *)self initWithPatternColorKitImageName:v7];
  }

  self = v8;
  v9 = self;
LABEL_8:

  return v9;
}

@end