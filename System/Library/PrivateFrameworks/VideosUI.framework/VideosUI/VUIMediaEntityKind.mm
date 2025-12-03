@interface VUIMediaEntityKind
- (VUIMediaEntityKind)init;
- (VUIMediaEntityKind)initWithMediaEntityClassName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)propertyDescriptorForName:(id)name;
- (id)sortingPropertyDescriptorForName:(id)name;
- (void)_updatePropertyDescriptorsByName;
- (void)setPropertyDescriptors:(id)descriptors;
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

- (VUIMediaEntityKind)initWithMediaEntityClassName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = VUIMediaEntityKind;
  v6 = [(VUIMediaEntityKind *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaEntityClassName, name);
    propertyDescriptors = v7->_propertyDescriptors;
    v7->_propertyDescriptors = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (void)setPropertyDescriptors:(id)descriptors
{
  v4 = [descriptors copy];
  propertyDescriptors = self->_propertyDescriptors;
  self->_propertyDescriptors = v4;

  [(VUIMediaEntityKind *)self _updatePropertyDescriptorsByName];
}

- (id)propertyDescriptorForName:(id)name
{
  nameCopy = name;
  propertyDescriptorsByName = [(VUIMediaEntityKind *)self propertyDescriptorsByName];
  v6 = [propertyDescriptorsByName objectForKey:nameCopy];

  return v6;
}

- (id)sortingPropertyDescriptorForName:(id)name
{
  v4 = [(VUIMediaEntityKind *)self propertyDescriptorForName:name];
  v5 = v4;
  if (v4)
  {
    sortAsName = [v4 sortAsName];
    if (sortAsName)
    {
      v7 = [(VUIMediaEntityKind *)self propertyDescriptorForName:sortAsName];

      v5 = v7;
      if (!v7)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unknown sortAs property %@", sortAsName}];
      }
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
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
  mediaEntityClassName = [(VUIMediaEntityKind *)self mediaEntityClassName];
  v7 = [v5 stringWithFormat:@"%@=%@", @"mediaEntityClassName", mediaEntityClassName];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  propertyDescriptors = [(VUIMediaEntityKind *)self propertyDescriptors];
  v10 = [v8 stringWithFormat:@"%@=%@", @"propertyDescriptors", propertyDescriptors];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [v3 componentsJoinedByString:{@", "}];
  v13 = [v11 stringWithFormat:@"<%@>", v12];

  return v13;
}

- (void)_updatePropertyDescriptorsByName
{
  v17 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(VUIMediaEntityKind *)selfCopy propertyDescriptors];
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
        name = [v8 name];
        [v3 setObject:v8 forKey:name];
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = [v3 copy];
  propertyDescriptorsByName = selfCopy->_propertyDescriptorsByName;
  selfCopy->_propertyDescriptorsByName = v10;

  objc_sync_exit(selfCopy);
}

@end