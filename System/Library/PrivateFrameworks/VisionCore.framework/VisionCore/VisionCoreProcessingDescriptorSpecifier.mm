@interface VisionCoreProcessingDescriptorSpecifier
- (BOOL)isEqual:(id)equal;
- (VisionCoreProcessingDescriptorSpecifier)initWithCoder:(id)coder;
- (VisionCoreProcessingDescriptorSpecifier)initWithIdentifier:(id)identifier version:(id)version;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VisionCoreProcessingDescriptorSpecifier

- (VisionCoreProcessingDescriptorSpecifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    if (v6)
    {
      self = [(VisionCoreProcessingDescriptorSpecifier *)self initWithIdentifier:v5 version:v6];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_version forKey:@"version"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(VisionCoreProcessingDescriptorSpecifier *)self identifier];
      identifier2 = [(VisionCoreProcessingDescriptorSpecifier *)v5 identifier];
      v8 = [identifier isEqualToString:identifier2];

      if (v8)
      {
        version = [(VisionCoreProcessingDescriptorSpecifier *)self version];
        version2 = [(VisionCoreProcessingDescriptorSpecifier *)v5 version];
        v11 = [version isEqual:version2];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  identifier = [(VisionCoreProcessingDescriptorSpecifier *)self identifier];
  v4 = [identifier hash];
  version = [(VisionCoreProcessingDescriptorSpecifier *)self version];
  v6 = [version hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifier = [(VisionCoreProcessingDescriptorSpecifier *)self identifier];
  version = [(VisionCoreProcessingDescriptorSpecifier *)self version];
  v6 = [v3 initWithFormat:@"%@ %@", identifier, version];

  return v6;
}

- (VisionCoreProcessingDescriptorSpecifier)initWithIdentifier:(id)identifier version:(id)version
{
  identifierCopy = identifier;
  versionCopy = version;
  v12.receiver = self;
  v12.super_class = VisionCoreProcessingDescriptorSpecifier;
  v8 = [(VisionCoreProcessingDescriptorSpecifier *)&v12 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeStrong(&v8->_version, version);
  }

  return v8;
}

@end