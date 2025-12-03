@interface STBackgroundActivityVisualDescriptorColorRepresentation
- (BOOL)isEqual:(id)equal;
- (STBackgroundActivityVisualDescriptorColorRepresentation)initWithBSColor:(id)color;
- (STBackgroundActivityVisualDescriptorColorRepresentation)initWithCoder:(id)coder;
- (STBackgroundActivityVisualDescriptorColorRepresentation)initWithPatternColorKitImageName:(id)name;
- (STBackgroundActivityVisualDescriptorColorRepresentation)initWithPlistRepresentation:(id)representation;
- (STBackgroundActivityVisualDescriptorColorRepresentation)initWithSystemColorName:(id)name;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STBackgroundActivityVisualDescriptorColorRepresentation

- (STBackgroundActivityVisualDescriptorColorRepresentation)initWithPlistRepresentation:(id)representation
{
  v29 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v5 = [representationCopy bs_safeStringForKey:@"SystemColorName"];
  v6 = [representationCopy bs_safeArrayForKey:@"RGBAColor"];
  v7 = [representationCopy bs_safeStringForKey:@"_PatternColorKitImageName"];

  if (!v5)
  {
    if (!v6)
    {
      if (!v7)
      {
        selfCopy2 = 0;
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
        selfCopy2 = self;
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
    selfCopy2 = 0;
    goto LABEL_17;
  }

  v8 = [(STBackgroundActivityVisualDescriptorColorRepresentation *)self initWithSystemColorName:v5];
LABEL_3:
  self = v8;
  selfCopy2 = self;
LABEL_18:

  v25 = *MEMORY[0x1E69E9840];
  return selfCopy2;
}

- (STBackgroundActivityVisualDescriptorColorRepresentation)initWithSystemColorName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = STBackgroundActivityVisualDescriptorColorRepresentation;
  v5 = [(STBackgroundActivityVisualDescriptorColorRepresentation *)&v9 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    systemColorName = v5->_systemColorName;
    v5->_systemColorName = v6;
  }

  return v5;
}

- (STBackgroundActivityVisualDescriptorColorRepresentation)initWithBSColor:(id)color
{
  colorCopy = color;
  v9.receiver = self;
  v9.super_class = STBackgroundActivityVisualDescriptorColorRepresentation;
  v6 = [(STBackgroundActivityVisualDescriptorColorRepresentation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_BSColor, color);
  }

  return v7;
}

- (STBackgroundActivityVisualDescriptorColorRepresentation)initWithPatternColorKitImageName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = STBackgroundActivityVisualDescriptorColorRepresentation;
  v5 = [(STBackgroundActivityVisualDescriptorColorRepresentation *)&v9 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    patternColorKitImageName = v5->_patternColorKitImageName;
    v5->_patternColorKitImageName = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  systemColorName = [(STBackgroundActivityVisualDescriptorColorRepresentation *)self systemColorName];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __67__STBackgroundActivityVisualDescriptorColorRepresentation_isEqual___block_invoke;
  v20[3] = &unk_1E85DDD28;
  v7 = equalCopy;
  v21 = v7;
  v8 = [v5 appendString:systemColorName counterpart:v20];

  bSColor = [(STBackgroundActivityVisualDescriptorColorRepresentation *)self BSColor];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __67__STBackgroundActivityVisualDescriptorColorRepresentation_isEqual___block_invoke_2;
  v18[3] = &unk_1E85DDCD8;
  v10 = v7;
  v19 = v10;
  v11 = [v5 appendObject:bSColor counterpart:v18];

  patternColorKitImageName = [(STBackgroundActivityVisualDescriptorColorRepresentation *)self patternColorKitImageName];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__STBackgroundActivityVisualDescriptorColorRepresentation_isEqual___block_invoke_3;
  v16[3] = &unk_1E85DDD28;
  v17 = v10;
  v13 = v10;
  v14 = [v5 appendString:patternColorKitImageName counterpart:v16];

  LOBYTE(patternColorKitImageName) = [v5 isEqual];
  return patternColorKitImageName;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  systemColorName = [(STBackgroundActivityVisualDescriptorColorRepresentation *)self systemColorName];
  v5 = [builder appendString:systemColorName];

  bSColor = [(STBackgroundActivityVisualDescriptorColorRepresentation *)self BSColor];
  v7 = [builder appendObject:bSColor];

  patternColorKitImageName = [(STBackgroundActivityVisualDescriptorColorRepresentation *)self patternColorKitImageName];
  v9 = [builder appendString:patternColorKitImageName];

  v10 = [builder hash];
  return v10;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STBackgroundActivityVisualDescriptorColorRepresentation *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STBackgroundActivityVisualDescriptorColorRepresentation *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STBackgroundActivityVisualDescriptorColorRepresentation *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  systemColorName = [(STBackgroundActivityVisualDescriptorColorRepresentation *)self systemColorName];
  [coderCopy encodeObject:systemColorName forKey:@"systemColorName"];

  bSColor = [(STBackgroundActivityVisualDescriptorColorRepresentation *)self BSColor];
  [coderCopy encodeObject:bSColor forKey:@"BSColor"];

  patternColorKitImageName = [(STBackgroundActivityVisualDescriptorColorRepresentation *)self patternColorKitImageName];
  [coderCopy encodeObject:patternColorKitImageName forKey:@"patternColorKitImageName"];
}

- (STBackgroundActivityVisualDescriptorColorRepresentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemColorName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BSColor"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"patternColorKitImageName"];

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
      selfCopy = 0;
      goto LABEL_8;
    }

    v8 = [(STBackgroundActivityVisualDescriptorColorRepresentation *)self initWithPatternColorKitImageName:v7];
  }

  self = v8;
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

@end