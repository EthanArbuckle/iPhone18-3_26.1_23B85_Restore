@interface VisionCoreProcessingDescriptor
+ (id)URLForResourceNamed:(id)a3 error:(id *)a4;
+ (id)_identifierToSubclassMapping;
+ (id)_subclassResponsibleForIdentifier:(uint64_t)a1;
+ (id)availableIdentifiers;
+ (id)availableVersionsForIdentifier:(id)a3 error:(id *)a4;
+ (id)descriptorForIdentifier:(id)a3 version:(id)a4 error:(id *)a5;
+ (id)descriptorForSpecifier:(id)a3 error:(id *)a4;
+ (id)descriptorsForIdentifier:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)identifier;
- (VisionCoreProcessingDescriptor)initWithCoder:(id)a3;
- (VisionCoreProcessingDescriptor)initWithSpecifier:(id)a3;
- (VisionCoreResourceVersion)version;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VisionCoreProcessingDescriptor

- (VisionCoreProcessingDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"specifier"];

  if (v5)
  {
    self = [(VisionCoreProcessingDescriptor *)self initWithSpecifier:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = VisionCoreProcessingDescriptor;
  v4 = a3;
  [(VisionCoreDescriptor *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_specifier forKey:{@"specifier", v5.receiver, v5.super_class}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VisionCoreProcessingDescriptor *)self specifier];
      v7 = [(VisionCoreProcessingDescriptor *)v5 specifier];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = VisionCoreProcessingDescriptor;
  v4 = [(VisionCoreDescriptor *)&v8 description];
  v5 = [(VisionCoreProcessingDescriptor *)self specifier];
  v6 = [v3 initWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (VisionCoreProcessingDescriptor)initWithSpecifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VisionCoreProcessingDescriptor;
  v6 = [(VisionCoreProcessingDescriptor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_specifier, a3);
  }

  return v7;
}

- (VisionCoreResourceVersion)version
{
  v2 = [(VisionCoreProcessingDescriptor *)self specifier];
  v3 = [v2 version];

  return v3;
}

- (NSString)identifier
{
  v2 = [(VisionCoreProcessingDescriptor *)self specifier];
  v3 = [v2 identifier];

  return v3;
}

+ (id)URLForResourceNamed:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 resourcesBundle];
  v8 = v7;
  if (a4 && !v7)
  {
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v10 = NSStringFromClass(a1);
    v11 = [v9 initWithFormat:@"%@ did not provide a valid resources bundle", v10];

    *a4 = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:v11];
  }

  v12 = [v8 URLForResource:v6 withExtension:0];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else if (a4)
  {
    v15 = objc_alloc(MEMORY[0x1E696AEC0]);
    v16 = [v8 bundlePath];
    v17 = [v15 initWithFormat:@"Could not locate resource %@ in %@", v6, v16];

    *a4 = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:v17];
  }

  return v13;
}

+ (id)descriptorsForIdentifier:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 availableVersionsForIdentifier:v6 error:a4];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [a1 descriptorForIdentifier:v6 version:*(*(&v18 + 1) + 8 * i) error:{a4, v18}];
          if (!v14)
          {

            v16 = 0;
            goto LABEL_12;
          }

          v15 = v14;
          [v8 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v16 = v8;
LABEL_12:
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)descriptorForSpecifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 identifier];
  v8 = [v6 version];

  v9 = [a1 descriptorForIdentifier:v7 version:v8 error:a4];

  return v9;
}

+ (id)descriptorForIdentifier:(id)a3 version:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(VisionCoreProcessingDescriptor *)a1 _subclassResponsibleForIdentifier:v8];
  if (v10)
  {
    v11 = [v10 descriptorForIdentifier:v8 version:v9 error:a5];
  }

  else if (a5)
  {
    [MEMORY[0x1E696ABC0] VisionCoreErrorForUnknownProcessingDescriptorIdentifier:v8];
    *a5 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_subclassResponsibleForIdentifier:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = +[VisionCoreProcessingDescriptor _identifierToSubclassMapping];
  v4 = [v3 objectForKey:v2];

  return v4;
}

+ (id)_identifierToSubclassMapping
{
  objc_opt_self();
  if (_identifierToSubclassMapping_ourOnceToken != -1)
  {
    dispatch_once(&_identifierToSubclassMapping_ourOnceToken, &__block_literal_global_3449);
  }

  v0 = _identifierToSubclassMapping_ourIdentifierToClassMapping;

  return v0;
}

void __62__VisionCoreProcessingDescriptor__identifierToSubclassMapping__block_invoke()
{
  v24 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = [VisionCoreRuntimeUtilities leafSubclassesOfClass:objc_opt_class() excludingRootClass:1 overridingClassSelector:sel_availableIdentifiers];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v19;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v19 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v18 + 1) + 8 * i);
        v7 = [v6 availableIdentifiers];
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v8 = [v7 countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v15;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v15 != v10)
              {
                objc_enumerationMutation(v7);
              }

              [v0 setObject:v6 forKeyedSubscript:*(*(&v14 + 1) + 8 * j)];
            }

            v9 = [v7 countByEnumeratingWithState:&v14 objects:v22 count:16];
          }

          while (v9);
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v3);
  }

  v12 = [v0 copy];
  v13 = _identifierToSubclassMapping_ourIdentifierToClassMapping;
  _identifierToSubclassMapping_ourIdentifierToClassMapping = v12;
}

+ (id)availableVersionsForIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(VisionCoreProcessingDescriptor *)a1 _subclassResponsibleForIdentifier:v6];
  if (v7)
  {
    v8 = [v7 availableVersionsForIdentifier:v6 error:a4];
  }

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] VisionCoreErrorForUnknownProcessingDescriptorIdentifier:v6];
    *a4 = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)availableIdentifiers
{
  v2 = +[VisionCoreProcessingDescriptor _identifierToSubclassMapping];
  v3 = [v2 allKeys];

  return v3;
}

@end