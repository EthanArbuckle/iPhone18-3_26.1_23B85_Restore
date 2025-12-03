@interface WFFontDescriptor
+ (id)descriptorWithSerializedRepresentation:(id)representation;
- (WFFontDescriptor)initWithCoder:(id)coder;
- (WFFontDescriptor)initWithFontAttributes:(id)attributes;
- (WFFontDescriptor)initWithPrivateRepresentation:(id)representation;
- (id)displayName;
- (id)face;
- (id)family;
- (id)fontWithSize:(double)size;
- (id)name;
- (id)serializedRepresentation;
- (id)visibleName;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFFontDescriptor

- (id)fontWithSize:(double)size
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  family = [(WFFontDescriptor *)self family];

  if (family)
  {
    family2 = [(WFFontDescriptor *)self family];
    v8 = getUIFontDescriptorFamilyAttribute();
    [v5 setObject:family2 forKeyedSubscript:v8];
  }

  name = [(WFFontDescriptor *)self name];

  if (name)
  {
    name2 = [(WFFontDescriptor *)self name];
    v11 = getUIFontDescriptorNameAttribute();
    [v5 setObject:name2 forKeyedSubscript:v11];
  }

  face = [(WFFontDescriptor *)self face];

  if (face)
  {
    face2 = [(WFFontDescriptor *)self face];
    v14 = getUIFontDescriptorFaceAttribute();
    [v5 setObject:face2 forKeyedSubscript:v14];
  }

  visibleName = [(WFFontDescriptor *)self visibleName];

  if (visibleName)
  {
    visibleName2 = [(WFFontDescriptor *)self visibleName];
    v17 = getUIFontDescriptorVisibleNameAttribute();
    [v5 setObject:visibleName2 forKeyedSubscript:v17];
  }

  v18 = [objc_alloc(getUIFontDescriptorClass()) initWithFontAttributes:v5];
  v19 = [(objc_class *)getUIFontClass() fontWithDescriptor:v18 size:size];

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  attributes = [(WFFontDescriptor *)self attributes];
  [coderCopy encodeObject:attributes forKey:@"attributes"];
}

- (WFFontDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attributes"];

  if (v5)
  {
    self = [(WFFontDescriptor *)self initWithPrivateRepresentation:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)visibleName
{
  attributes = [(WFFontDescriptor *)self attributes];
  v3 = [attributes objectForKeyedSubscript:@"WFFontDescriptorVisibleName"];

  return v3;
}

- (id)face
{
  attributes = [(WFFontDescriptor *)self attributes];
  v3 = [attributes objectForKeyedSubscript:@"WFFontDescriptorFace"];

  return v3;
}

- (id)name
{
  attributes = [(WFFontDescriptor *)self attributes];
  v3 = [attributes objectForKeyedSubscript:@"WFFontDescriptorName"];

  return v3;
}

- (id)family
{
  attributes = [(WFFontDescriptor *)self attributes];
  v3 = [attributes objectForKeyedSubscript:@"WFFontDescriptorFamily"];

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

- (WFFontDescriptor)initWithPrivateRepresentation:(id)representation
{
  representationCopy = representation;
  v16.receiver = self;
  v16.super_class = WFFontDescriptor;
  v5 = [(WFFontDescriptor *)&v16 init];
  if (v5)
  {
    v6 = [representationCopy objectForKey:@"WFFontDescriptorFamily"];
    v7 = [representationCopy objectForKey:@"WFFontDescriptorName"];
    v8 = [representationCopy objectForKey:@"WFFontDescriptorFace"];
    v9 = [representationCopy objectForKey:@"WFFontDescriptorVisibleName"];
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

- (WFFontDescriptor)initWithFontAttributes:(id)attributes
{
  v4 = getUIFontDescriptorFamilyAttribute;
  attributesCopy = attributes;
  v6 = v4();
  v7 = [attributesCopy objectForKey:v6];

  v8 = getUIFontDescriptorNameAttribute();
  v9 = [attributesCopy objectForKey:v8];

  v10 = getUIFontDescriptorFaceAttribute();
  v11 = [attributesCopy objectForKey:v10];

  v12 = getUIFontDescriptorVisibleNameAttribute();
  v13 = [attributesCopy objectForKey:v12];

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

+ (id)descriptorWithSerializedRepresentation:(id)representation
{
  representationCopy = representation;
  if (representationCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = representationCopy;
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
  v7 = [[self alloc] initWithPrivateRepresentation:v6];

  return v7;
}

@end