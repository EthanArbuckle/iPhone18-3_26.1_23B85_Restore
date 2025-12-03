@interface VUIMediaEntityPropertyDescriptor
+ (id)_classNameFromPropertyType:(unint64_t)type;
- (NSSet)sourcePropertyNames;
- (NSString)propertyValueClassName;
- (VUIMediaEntityPropertyDescriptor)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)defaultValue;
- (id)description;
- (void)_updateSourceSupportsFiltering;
- (void)setSourceFilterBlock:(id)block;
- (void)setSourceFilterValueBlock:(id)block;
- (void)setSourceSupportsFiltering:(BOOL)filtering;
@end

@implementation VUIMediaEntityPropertyDescriptor

- (VUIMediaEntityPropertyDescriptor)init
{
  v6.receiver = self;
  v6.super_class = VUIMediaEntityPropertyDescriptor;
  v2 = [(VUIMediaEntityPropertyDescriptor *)&v6 init];
  v3 = v2;
  if (v2)
  {
    name = v2->_name;
    v2->_name = &stru_1F5DB25C0;

    v3->_propertyType = 4;
    v3->_allowsDefaultValue = 0;
  }

  return v3;
}

- (NSString)propertyValueClassName
{
  propertyValueClassName = self->_propertyValueClassName;
  if (!propertyValueClassName)
  {
    v4 = [objc_opt_class() _classNameFromPropertyType:{-[VUIMediaEntityPropertyDescriptor propertyType](self, "propertyType")}];
    v5 = self->_propertyValueClassName;
    self->_propertyValueClassName = v4;

    propertyValueClassName = self->_propertyValueClassName;
  }

  return propertyValueClassName;
}

- (id)defaultValue
{
  if (!self->_defaultValue && [(VUIMediaEntityPropertyDescriptor *)self allowsDefaultValue])
  {
    propertyType = [(VUIMediaEntityPropertyDescriptor *)self propertyType];
    if (propertyType <= 3)
    {
      if (propertyType)
      {
        if (propertyType == 1)
        {
          data = [MEMORY[0x1E695DEF0] data];
          defaultValue = self->_defaultValue;
          self->_defaultValue = data;
          goto LABEL_19;
        }

        if (propertyType != 3)
        {
          goto LABEL_20;
        }

        defaultValue = self->_defaultValue;
        v7 = &unk_1F5E5D8F0;
      }

      else
      {
        defaultValue = self->_defaultValue;
        v7 = MEMORY[0x1E695E110];
      }
    }

    else if (propertyType > 6)
    {
      if (propertyType == 7)
      {
        defaultValue = self->_defaultValue;
        v7 = MEMORY[0x1E695E0F0];
      }

      else
      {
        if (propertyType != 8)
        {
          goto LABEL_20;
        }

        defaultValue = self->_defaultValue;
        v7 = MEMORY[0x1E695E0F8];
      }
    }

    else
    {
      if (propertyType != 4)
      {
        if (propertyType != 6)
        {
          goto LABEL_20;
        }

        defaultValue = [(VUIMediaEntityPropertyDescriptor *)self propertyValueClassName];
        v5 = objc_alloc_init(NSClassFromString(defaultValue));
        v6 = self->_defaultValue;
        self->_defaultValue = v5;

        goto LABEL_19;
      }

      defaultValue = self->_defaultValue;
      v7 = &stru_1F5DB25C0;
    }

    self->_defaultValue = v7;
LABEL_19:
  }

LABEL_20:
  v8 = self->_defaultValue;

  return v8;
}

- (NSSet)sourcePropertyNames
{
  sourcePropertyNames = self->_sourcePropertyNames;
  if (!sourcePropertyNames)
  {
    v4 = MEMORY[0x1E695DFD8];
    name = [(VUIMediaEntityPropertyDescriptor *)self name];
    v6 = [v4 setWithObjects:{name, 0}];
    v7 = self->_sourcePropertyNames;
    self->_sourcePropertyNames = v6;

    sourcePropertyNames = self->_sourcePropertyNames;
  }

  return sourcePropertyNames;
}

- (void)setSourceSupportsFiltering:(BOOL)filtering
{
  self->_sourceSupportsFiltering = filtering;
  if (!filtering)
  {
    sourceFilterValueBlock = self->_sourceFilterValueBlock;
    self->_sourceFilterValueBlock = 0;

    sourceFilterBlock = self->_sourceFilterBlock;
    self->_sourceFilterBlock = 0;
  }
}

- (void)setSourceFilterValueBlock:(id)block
{
  v4 = [block copy];
  sourceFilterValueBlock = self->_sourceFilterValueBlock;
  self->_sourceFilterValueBlock = v4;

  [(VUIMediaEntityPropertyDescriptor *)self _updateSourceSupportsFiltering];
}

- (void)setSourceFilterBlock:(id)block
{
  v4 = [block copy];
  sourceFilterBlock = self->_sourceFilterBlock;
  self->_sourceFilterBlock = v4;

  [(VUIMediaEntityPropertyDescriptor *)self _updateSourceSupportsFiltering];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(VUIMediaEntityPropertyDescriptor);
  v5 = [(NSString *)self->_name copy];
  name = v4->_name;
  v4->_name = v5;

  v7 = [(NSString *)self->_sortAsName copy];
  sortAsName = v4->_sortAsName;
  v4->_sortAsName = v7;

  v4->_propertyType = self->_propertyType;
  v9 = [(NSString *)self->_propertyValueClassName copy];
  propertyValueClassName = v4->_propertyValueClassName;
  v4->_propertyValueClassName = v9;

  v4->_allowsDefaultValue = self->_allowsDefaultValue;
  objc_storeStrong(&v4->_defaultValue, self->_defaultValue);
  v11 = [(NSSet *)self->_sourcePropertyNames copy];
  sourcePropertyNames = v4->_sourcePropertyNames;
  v4->_sourcePropertyNames = v11;

  v4->_retrievesSourcePropertiesAtFetch = self->_retrievesSourcePropertiesAtFetch;
  v4->_sourceSupportsFiltering = self->_sourceSupportsFiltering;
  v13 = [self->_sourceFilterValueBlock copy];
  sourceFilterValueBlock = v4->_sourceFilterValueBlock;
  v4->_sourceFilterValueBlock = v13;

  v15 = [self->_sourceFilterBlock copy];
  sourceFilterBlock = v4->_sourceFilterBlock;
  v4->_sourceFilterBlock = v15;

  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v42.receiver = self;
  v42.super_class = VUIMediaEntityPropertyDescriptor;
  v4 = [(VUIMediaEntityPropertyDescriptor *)&v42 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  name = [(VUIMediaEntityPropertyDescriptor *)self name];
  v7 = [v5 stringWithFormat:@"%@=%@", @"name", name];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  sortAsName = [(VUIMediaEntityPropertyDescriptor *)self sortAsName];
  v10 = [v8 stringWithFormat:@"%@=%@", @"sortAsName", sortAsName];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VUIMediaEntityPropertyDescriptor propertyType](self, "propertyType")}];
  v13 = [v11 stringWithFormat:@"%@=%@", @"propertyType", v12];
  [v3 addObject:v13];

  v14 = MEMORY[0x1E696AEC0];
  propertyValueClassName = [(VUIMediaEntityPropertyDescriptor *)self propertyValueClassName];
  v16 = [v14 stringWithFormat:@"%@=%@", @"propertyValueClassName", propertyValueClassName];
  [v3 addObject:v16];

  v17 = MEMORY[0x1E696AEC0];
  [(VUIMediaEntityPropertyDescriptor *)self allowsDefaultValue];
  v18 = VUIBoolLogString();
  v19 = [v17 stringWithFormat:@"%@=%@", @"allowsDefaultValue", v18];
  [v3 addObject:v19];

  v20 = MEMORY[0x1E696AEC0];
  defaultValue = [(VUIMediaEntityPropertyDescriptor *)self defaultValue];
  v22 = [v20 stringWithFormat:@"%@=%@", @"defaultValue", defaultValue];
  [v3 addObject:v22];

  v23 = MEMORY[0x1E696AEC0];
  sourcePropertyNames = [(VUIMediaEntityPropertyDescriptor *)self sourcePropertyNames];
  v25 = [v23 stringWithFormat:@"%@=%@", @"sourcePropertyNames", sourcePropertyNames];
  [v3 addObject:v25];

  v26 = MEMORY[0x1E696AEC0];
  [(VUIMediaEntityPropertyDescriptor *)self retrievesSourcePropertiesAtFetch];
  v27 = VUIBoolLogString();
  v28 = [v26 stringWithFormat:@"%@=%@", @"retrievesSourcePropertiesAtFetch", v27];
  [v3 addObject:v28];

  v29 = MEMORY[0x1E696AEC0];
  [(VUIMediaEntityPropertyDescriptor *)self sourceSupportsFiltering];
  v30 = VUIBoolLogString();
  v31 = [v29 stringWithFormat:@"%@=%@", @"sourceSupportsFiltering", v30];
  [v3 addObject:v31];

  v32 = MEMORY[0x1E696AEC0];
  sourceFilterValueBlock = [(VUIMediaEntityPropertyDescriptor *)self sourceFilterValueBlock];
  v34 = [v32 stringWithFormat:@"%@=%@", @"sourceFilterValueBlock", sourceFilterValueBlock];
  [v3 addObject:v34];

  v35 = MEMORY[0x1E696AEC0];
  sourceFilterBlock = [(VUIMediaEntityPropertyDescriptor *)self sourceFilterBlock];
  v37 = [v35 stringWithFormat:@"%@=%@", @"sourceFilterBlock", sourceFilterBlock];
  [v3 addObject:v37];

  v38 = MEMORY[0x1E696AEC0];
  v39 = [v3 componentsJoinedByString:{@", "}];
  v40 = [v38 stringWithFormat:@"<%@>", v39];

  return v40;
}

+ (id)_classNameFromPropertyType:(unint64_t)type
{
  v3 = 0;
  if (type <= 3)
  {
    if ((type & 0x8000000000000000) != 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    v3 = objc_opt_class();
    goto LABEL_12;
  }

  if (type <= 5)
  {
    goto LABEL_11;
  }

  if (type == 6)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Property value class names cannot be derived for object based attributes"];
    v3 = 0;
    goto LABEL_12;
  }

  if (type == 7 || type == 8)
  {
    goto LABEL_11;
  }

LABEL_12:

  return NSStringFromClass(v3);
}

- (void)_updateSourceSupportsFiltering
{
  if (![(VUIMediaEntityPropertyDescriptor *)self sourceSupportsFiltering])
  {
    sourceFilterValueBlock = [(VUIMediaEntityPropertyDescriptor *)self sourceFilterValueBlock];
    if (sourceFilterValueBlock)
    {
    }

    else
    {
      sourceFilterBlock = [(VUIMediaEntityPropertyDescriptor *)self sourceFilterBlock];

      if (!sourceFilterBlock)
      {
        return;
      }
    }

    [(VUIMediaEntityPropertyDescriptor *)self setSourceSupportsFiltering:1];
  }
}

@end