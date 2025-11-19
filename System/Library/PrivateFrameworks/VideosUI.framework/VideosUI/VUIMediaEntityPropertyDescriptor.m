@interface VUIMediaEntityPropertyDescriptor
+ (id)_classNameFromPropertyType:(unint64_t)a3;
- (NSSet)sourcePropertyNames;
- (NSString)propertyValueClassName;
- (VUIMediaEntityPropertyDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)defaultValue;
- (id)description;
- (void)_updateSourceSupportsFiltering;
- (void)setSourceFilterBlock:(id)a3;
- (void)setSourceFilterValueBlock:(id)a3;
- (void)setSourceSupportsFiltering:(BOOL)a3;
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
    v3 = [(VUIMediaEntityPropertyDescriptor *)self propertyType];
    if (v3 <= 3)
    {
      if (v3)
      {
        if (v3 == 1)
        {
          v10 = [MEMORY[0x1E695DEF0] data];
          defaultValue = self->_defaultValue;
          self->_defaultValue = v10;
          goto LABEL_19;
        }

        if (v3 != 3)
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

    else if (v3 > 6)
    {
      if (v3 == 7)
      {
        defaultValue = self->_defaultValue;
        v7 = MEMORY[0x1E695E0F0];
      }

      else
      {
        if (v3 != 8)
        {
          goto LABEL_20;
        }

        defaultValue = self->_defaultValue;
        v7 = MEMORY[0x1E695E0F8];
      }
    }

    else
    {
      if (v3 != 4)
      {
        if (v3 != 6)
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
    v5 = [(VUIMediaEntityPropertyDescriptor *)self name];
    v6 = [v4 setWithObjects:{v5, 0}];
    v7 = self->_sourcePropertyNames;
    self->_sourcePropertyNames = v6;

    sourcePropertyNames = self->_sourcePropertyNames;
  }

  return sourcePropertyNames;
}

- (void)setSourceSupportsFiltering:(BOOL)a3
{
  self->_sourceSupportsFiltering = a3;
  if (!a3)
  {
    sourceFilterValueBlock = self->_sourceFilterValueBlock;
    self->_sourceFilterValueBlock = 0;

    sourceFilterBlock = self->_sourceFilterBlock;
    self->_sourceFilterBlock = 0;
  }
}

- (void)setSourceFilterValueBlock:(id)a3
{
  v4 = [a3 copy];
  sourceFilterValueBlock = self->_sourceFilterValueBlock;
  self->_sourceFilterValueBlock = v4;

  [(VUIMediaEntityPropertyDescriptor *)self _updateSourceSupportsFiltering];
}

- (void)setSourceFilterBlock:(id)a3
{
  v4 = [a3 copy];
  sourceFilterBlock = self->_sourceFilterBlock;
  self->_sourceFilterBlock = v4;

  [(VUIMediaEntityPropertyDescriptor *)self _updateSourceSupportsFiltering];
}

- (id)copyWithZone:(_NSZone *)a3
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
  v6 = [(VUIMediaEntityPropertyDescriptor *)self name];
  v7 = [v5 stringWithFormat:@"%@=%@", @"name", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [(VUIMediaEntityPropertyDescriptor *)self sortAsName];
  v10 = [v8 stringWithFormat:@"%@=%@", @"sortAsName", v9];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VUIMediaEntityPropertyDescriptor propertyType](self, "propertyType")}];
  v13 = [v11 stringWithFormat:@"%@=%@", @"propertyType", v12];
  [v3 addObject:v13];

  v14 = MEMORY[0x1E696AEC0];
  v15 = [(VUIMediaEntityPropertyDescriptor *)self propertyValueClassName];
  v16 = [v14 stringWithFormat:@"%@=%@", @"propertyValueClassName", v15];
  [v3 addObject:v16];

  v17 = MEMORY[0x1E696AEC0];
  [(VUIMediaEntityPropertyDescriptor *)self allowsDefaultValue];
  v18 = VUIBoolLogString();
  v19 = [v17 stringWithFormat:@"%@=%@", @"allowsDefaultValue", v18];
  [v3 addObject:v19];

  v20 = MEMORY[0x1E696AEC0];
  v21 = [(VUIMediaEntityPropertyDescriptor *)self defaultValue];
  v22 = [v20 stringWithFormat:@"%@=%@", @"defaultValue", v21];
  [v3 addObject:v22];

  v23 = MEMORY[0x1E696AEC0];
  v24 = [(VUIMediaEntityPropertyDescriptor *)self sourcePropertyNames];
  v25 = [v23 stringWithFormat:@"%@=%@", @"sourcePropertyNames", v24];
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
  v33 = [(VUIMediaEntityPropertyDescriptor *)self sourceFilterValueBlock];
  v34 = [v32 stringWithFormat:@"%@=%@", @"sourceFilterValueBlock", v33];
  [v3 addObject:v34];

  v35 = MEMORY[0x1E696AEC0];
  v36 = [(VUIMediaEntityPropertyDescriptor *)self sourceFilterBlock];
  v37 = [v35 stringWithFormat:@"%@=%@", @"sourceFilterBlock", v36];
  [v3 addObject:v37];

  v38 = MEMORY[0x1E696AEC0];
  v39 = [v3 componentsJoinedByString:{@", "}];
  v40 = [v38 stringWithFormat:@"<%@>", v39];

  return v40;
}

+ (id)_classNameFromPropertyType:(unint64_t)a3
{
  v3 = 0;
  if (a3 <= 3)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    v3 = objc_opt_class();
    goto LABEL_12;
  }

  if (a3 <= 5)
  {
    goto LABEL_11;
  }

  if (a3 == 6)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Property value class names cannot be derived for object based attributes"];
    v3 = 0;
    goto LABEL_12;
  }

  if (a3 == 7 || a3 == 8)
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
    v3 = [(VUIMediaEntityPropertyDescriptor *)self sourceFilterValueBlock];
    if (v3)
    {
    }

    else
    {
      v4 = [(VUIMediaEntityPropertyDescriptor *)self sourceFilterBlock];

      if (!v4)
      {
        return;
      }
    }

    [(VUIMediaEntityPropertyDescriptor *)self setSourceSupportsFiltering:1];
  }
}

@end