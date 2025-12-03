@interface VisionCoreProcessingDescriptor
+ (id)URLForResourceNamed:(id)named error:(id *)error;
+ (id)_identifierToSubclassMapping;
+ (id)_subclassResponsibleForIdentifier:(uint64_t)identifier;
+ (id)availableIdentifiers;
+ (id)availableVersionsForIdentifier:(id)identifier error:(id *)error;
+ (id)descriptorForIdentifier:(id)identifier version:(id)version error:(id *)error;
+ (id)descriptorForSpecifier:(id)specifier error:(id *)error;
+ (id)descriptorsForIdentifier:(id)identifier error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)identifier;
- (VisionCoreProcessingDescriptor)initWithCoder:(id)coder;
- (VisionCoreProcessingDescriptor)initWithSpecifier:(id)specifier;
- (VisionCoreResourceVersion)version;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VisionCoreProcessingDescriptor

- (VisionCoreProcessingDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"specifier"];

  if (v5)
  {
    self = [(VisionCoreProcessingDescriptor *)self initWithSpecifier:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = VisionCoreProcessingDescriptor;
  coderCopy = coder;
  [(VisionCoreDescriptor *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_specifier forKey:{@"specifier", v5.receiver, v5.super_class}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      specifier = [(VisionCoreProcessingDescriptor *)self specifier];
      specifier2 = [(VisionCoreProcessingDescriptor *)v5 specifier];

      v8 = [specifier isEqual:specifier2];
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
  specifier = [(VisionCoreProcessingDescriptor *)self specifier];
  v6 = [v3 initWithFormat:@"%@ %@", v4, specifier];

  return v6;
}

- (VisionCoreProcessingDescriptor)initWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v9.receiver = self;
  v9.super_class = VisionCoreProcessingDescriptor;
  v6 = [(VisionCoreProcessingDescriptor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_specifier, specifier);
  }

  return v7;
}

- (VisionCoreResourceVersion)version
{
  specifier = [(VisionCoreProcessingDescriptor *)self specifier];
  version = [specifier version];

  return version;
}

- (NSString)identifier
{
  specifier = [(VisionCoreProcessingDescriptor *)self specifier];
  identifier = [specifier identifier];

  return identifier;
}

+ (id)URLForResourceNamed:(id)named error:(id *)error
{
  namedCopy = named;
  resourcesBundle = [self resourcesBundle];
  v8 = resourcesBundle;
  if (error && !resourcesBundle)
  {
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v10 = NSStringFromClass(self);
    v11 = [v9 initWithFormat:@"%@ did not provide a valid resources bundle", v10];

    *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:v11];
  }

  v12 = [v8 URLForResource:namedCopy withExtension:0];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else if (error)
  {
    v15 = objc_alloc(MEMORY[0x1E696AEC0]);
    bundlePath = [v8 bundlePath];
    v17 = [v15 initWithFormat:@"Could not locate resource %@ in %@", namedCopy, bundlePath];

    *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:v17];
  }

  return v13;
}

+ (id)descriptorsForIdentifier:(id)identifier error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = [self availableVersionsForIdentifier:identifierCopy error:error];
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

          v14 = [self descriptorForIdentifier:identifierCopy version:*(*(&v18 + 1) + 8 * i) error:{error, v18}];
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

+ (id)descriptorForSpecifier:(id)specifier error:(id *)error
{
  specifierCopy = specifier;
  identifier = [specifierCopy identifier];
  version = [specifierCopy version];

  v9 = [self descriptorForIdentifier:identifier version:version error:error];

  return v9;
}

+ (id)descriptorForIdentifier:(id)identifier version:(id)version error:(id *)error
{
  identifierCopy = identifier;
  versionCopy = version;
  v10 = [(VisionCoreProcessingDescriptor *)self _subclassResponsibleForIdentifier:identifierCopy];
  if (v10)
  {
    v11 = [v10 descriptorForIdentifier:identifierCopy version:versionCopy error:error];
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] VisionCoreErrorForUnknownProcessingDescriptorIdentifier:identifierCopy];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_subclassResponsibleForIdentifier:(uint64_t)identifier
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

+ (id)availableVersionsForIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = [(VisionCoreProcessingDescriptor *)self _subclassResponsibleForIdentifier:identifierCopy];
  if (v7)
  {
    v8 = [v7 availableVersionsForIdentifier:identifierCopy error:error];
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] VisionCoreErrorForUnknownProcessingDescriptorIdentifier:identifierCopy];
    *error = v8 = 0;
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
  allKeys = [v2 allKeys];

  return allKeys;
}

@end