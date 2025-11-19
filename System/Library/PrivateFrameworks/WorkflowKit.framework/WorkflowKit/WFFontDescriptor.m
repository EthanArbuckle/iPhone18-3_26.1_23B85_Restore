@interface WFFontDescriptor
+ (id)descriptorWithSerializedRepresentation:(id)a3;
- (WFFontDescriptor)initWithCoder:(id)a3;
- (WFFontDescriptor)initWithFontAttributes:(id)a3;
- (WFFontDescriptor)initWithPrivateRepresentation:(id)a3;
- (id)displayName;
- (id)face;
- (id)family;
- (id)fontWithSize:(double)a3;
- (id)name;
- (id)serializedRepresentation;
- (id)visibleName;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFFontDescriptor

- (id)fontWithSize:(double)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [(WFFontDescriptor *)self family];

  if (v6)
  {
    v7 = [(WFFontDescriptor *)self family];
    v8 = getUIFontDescriptorFamilyAttribute();
    [v5 setObject:v7 forKeyedSubscript:v8];
  }

  v9 = [(WFFontDescriptor *)self name];

  if (v9)
  {
    v10 = [(WFFontDescriptor *)self name];
    v11 = getUIFontDescriptorNameAttribute();
    [v5 setObject:v10 forKeyedSubscript:v11];
  }

  v12 = [(WFFontDescriptor *)self face];

  if (v12)
  {
    v13 = [(WFFontDescriptor *)self face];
    v14 = getUIFontDescriptorFaceAttribute();
    [v5 setObject:v13 forKeyedSubscript:v14];
  }

  v15 = [(WFFontDescriptor *)self visibleName];

  if (v15)
  {
    v16 = [(WFFontDescriptor *)self visibleName];
    v17 = getUIFontDescriptorVisibleNameAttribute();
    [v5 setObject:v16 forKeyedSubscript:v17];
  }

  v18 = [objc_alloc(getUIFontDescriptorClass()) initWithFontAttributes:v5];
  v19 = [(objc_class *)getUIFontClass() fontWithDescriptor:v18 size:a3];

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFFontDescriptor *)self attributes];
  [v4 encodeObject:v5 forKey:@"attributes"];
}

- (WFFontDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attributes"];

  if (v5)
  {
    self = [(WFFontDescriptor *)self initWithPrivateRepresentation:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)visibleName
{
  v2 = [(WFFontDescriptor *)self attributes];
  v3 = [v2 objectForKeyedSubscript:@"WFFontDescriptorVisibleName"];

  return v3;
}

- (id)face
{
  v2 = [(WFFontDescriptor *)self attributes];
  v3 = [v2 objectForKeyedSubscript:@"WFFontDescriptorFace"];

  return v3;
}

- (id)name
{
  v2 = [(WFFontDescriptor *)self attributes];
  v3 = [v2 objectForKeyedSubscript:@"WFFontDescriptorName"];

  return v3;
}

- (id)family
{
  v2 = [(WFFontDescriptor *)self attributes];
  v3 = [v2 objectForKeyedSubscript:@"WFFontDescriptorFamily"];

  return v3;
}

- (id)displayName
{
  v2 = [(WFFontDescriptor *)self fontWithSize:0.0];
  v3 = CTFontCopyDisplayName(v2);

  return v3;
}

- (id)serializedRepresentation
{
  v2 = [(NSDictionary *)self->_attributes copy];

  return v2;
}

- (WFFontDescriptor)initWithPrivateRepresentation:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = WFFontDescriptor;
  v5 = [(WFFontDescriptor *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"WFFontDescriptorFamily"];
    v7 = [v4 objectForKey:@"WFFontDescriptorName"];
    v8 = [v4 objectForKey:@"WFFontDescriptorFace"];
    v9 = [v4 objectForKey:@"WFFontDescriptorVisibleName"];
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = v10;
    if (v6)
    {
      [v10 setObject:v6 forKeyedSubscript:@"WFFontDescriptorFamily"];
    }

    if (v7)
    {
      [v11 setObject:v7 forKeyedSubscript:@"WFFontDescriptorName"];
    }

    if (v8)
    {
      [v11 setObject:v8 forKeyedSubscript:@"WFFontDescriptorFace"];
    }

    if (v9)
    {
      [v11 setObject:v9 forKeyedSubscript:@"WFFontDescriptorVisibleName"];
    }

    v12 = [v11 copy];
    attributes = v5->_attributes;
    v5->_attributes = v12;

    v14 = v5;
  }

  return v5;
}

- (WFFontDescriptor)initWithFontAttributes:(id)a3
{
  v4 = getUIFontDescriptorFamilyAttribute;
  v5 = a3;
  v6 = v4();
  v7 = [v5 objectForKey:v6];

  v8 = getUIFontDescriptorNameAttribute();
  v9 = [v5 objectForKey:v8];

  v10 = getUIFontDescriptorFaceAttribute();
  v11 = [v5 objectForKey:v10];

  v12 = getUIFontDescriptorVisibleNameAttribute();
  v13 = [v5 objectForKey:v12];

  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = v14;
  if (v7)
  {
    [v14 setObject:v7 forKeyedSubscript:@"WFFontDescriptorFamily"];
  }

  if (v9)
  {
    [v15 setObject:v9 forKeyedSubscript:@"WFFontDescriptorName"];
  }

  if (v11)
  {
    [v15 setObject:v11 forKeyedSubscript:@"WFFontDescriptorFace"];
  }

  if (v13)
  {
    [v15 setObject:v13 forKeyedSubscript:@"WFFontDescriptorVisibleName"];
  }

  v16 = [v15 copy];
  v17 = [(WFFontDescriptor *)self initWithPrivateRepresentation:v16];

  return v17;
}

+ (id)descriptorWithSerializedRepresentation:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [[a1 alloc] initWithPrivateRepresentation:v6];

  return v7;
}

@end