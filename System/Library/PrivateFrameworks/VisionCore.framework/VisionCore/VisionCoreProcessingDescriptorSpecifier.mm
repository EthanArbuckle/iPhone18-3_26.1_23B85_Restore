@interface VisionCoreProcessingDescriptorSpecifier
- (BOOL)isEqual:(id)a3;
- (VisionCoreProcessingDescriptorSpecifier)initWithCoder:(id)a3;
- (VisionCoreProcessingDescriptorSpecifier)initWithIdentifier:(id)a3 version:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VisionCoreProcessingDescriptorSpecifier

- (VisionCoreProcessingDescriptorSpecifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    if (v6)
    {
      self = [(VisionCoreProcessingDescriptorSpecifier *)self initWithIdentifier:v5 version:v6];
      v7 = self;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_version forKey:@"version"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VisionCoreProcessingDescriptorSpecifier *)self identifier];
      v7 = [(VisionCoreProcessingDescriptorSpecifier *)v5 identifier];
      v8 = [v6 isEqualToString:v7];

      if (v8)
      {
        v9 = [(VisionCoreProcessingDescriptorSpecifier *)self version];
        v10 = [(VisionCoreProcessingDescriptorSpecifier *)v5 version];
        v11 = [v9 isEqual:v10];
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
  v3 = [(VisionCoreProcessingDescriptorSpecifier *)self identifier];
  v4 = [v3 hash];
  v5 = [(VisionCoreProcessingDescriptorSpecifier *)self version];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(VisionCoreProcessingDescriptorSpecifier *)self identifier];
  v5 = [(VisionCoreProcessingDescriptorSpecifier *)self version];
  v6 = [v3 initWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (VisionCoreProcessingDescriptorSpecifier)initWithIdentifier:(id)a3 version:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = VisionCoreProcessingDescriptorSpecifier;
  v8 = [(VisionCoreProcessingDescriptorSpecifier *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeStrong(&v8->_version, a4);
  }

  return v8;
}

@end