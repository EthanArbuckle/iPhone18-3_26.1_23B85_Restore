@interface VUIMediaEntityKind
- (VUIMediaEntityKind)init;
- (VUIMediaEntityKind)initWithMediaEntityClassName:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)propertyDescriptorForName:(id)a3;
- (id)sortingPropertyDescriptorForName:(id)a3;
- (void)_updatePropertyDescriptorsByName;
- (void)setPropertyDescriptors:(id)a3;
@end

@implementation VUIMediaEntityKind

- (VUIMediaEntityKind)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VUIMediaEntityKind)initWithMediaEntityClassName:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = VUIMediaEntityKind;
  v6 = [(VUIMediaEntityKind *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaEntityClassName, a3);
    propertyDescriptors = v7->_propertyDescriptors;
    v7->_propertyDescriptors = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (void)setPropertyDescriptors:(id)a3
{
  v4 = [a3 copy];
  propertyDescriptors = self->_propertyDescriptors;
  self->_propertyDescriptors = v4;

  [(VUIMediaEntityKind *)self _updatePropertyDescriptorsByName];
}

- (id)propertyDescriptorForName:(id)a3
{
  v4 = a3;
  v5 = [(VUIMediaEntityKind *)self propertyDescriptorsByName];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)sortingPropertyDescriptorForName:(id)a3
{
  v4 = [(VUIMediaEntityKind *)self propertyDescriptorForName:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 sortAsName];
    if (v6)
    {
      v7 = [(VUIMediaEntityKind *)self propertyDescriptorForName:v6];

      v5 = v7;
      if (!v7)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unknown sortAs property %@", v6}];
      }
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[VUIMediaEntityKind alloc] initWithMediaEntityClassName:self->_mediaEntityClassName];
  v5 = [(NSArray *)self->_propertyDescriptors copy];
  propertyDescriptors = v4->_propertyDescriptors;
  v4->_propertyDescriptors = v5;

  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15.receiver = self;
  v15.super_class = VUIMediaEntityKind;
  v4 = [(VUIMediaEntityKind *)&v15 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(VUIMediaEntityKind *)self mediaEntityClassName];
  v7 = [v5 stringWithFormat:@"%@=%@", @"mediaEntityClassName", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [(VUIMediaEntityKind *)self propertyDescriptors];
  v10 = [v8 stringWithFormat:@"%@=%@", @"propertyDescriptors", v9];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [v3 componentsJoinedByString:{@", "}];
  v13 = [v11 stringWithFormat:@"<%@>", v12];

  return v13;
}

- (void)_updatePropertyDescriptorsByName
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(VUIMediaEntityKind *)v2 propertyDescriptors];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v4 = v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 name];
        [v3 setObject:v8 forKey:v9];
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = [v3 copy];
  propertyDescriptorsByName = v2->_propertyDescriptorsByName;
  v2->_propertyDescriptorsByName = v10;

  objc_sync_exit(v2);
}

@end