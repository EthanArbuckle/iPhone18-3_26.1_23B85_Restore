@interface _UIPropertyBasedAppearance
+ (id)_appearanceMatchingProperties:(id)properties forClass:(Class)class withContainerList:(id)list;
+ (id)_appearanceObjectKeyForProperties:(id)properties;
- (BOOL)_isValidAppearanceForCustomizableObject:(id)object;
- (void)dealloc;
@end

@implementation _UIPropertyBasedAppearance

+ (id)_appearanceObjectKeyForProperties:(id)properties
{
  v16 = *MEMORY[0x1E69E9840];
  if (!properties)
  {
    return @"_UIAppearanceKey";
  }

  array = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [properties countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(properties);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [array addObject:v9];
        [array addObject:{objc_msgSend(properties, "objectForKey:", v9)}];
      }

      v6 = [properties countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return [array componentsJoinedByString:@":"];
}

+ (id)_appearanceMatchingProperties:(id)properties forClass:(Class)class withContainerList:(id)list
{
  v8 = [_UIAppearanceCustomizableClassInfo _customizableClassInfoForViewClass:class withGuideClass:0];
  v9 = [self _appearanceNodeForClassInfo:v8 containerList:list];
  v10 = [self _appearanceObjectKeyForProperties:properties];
  v11 = [v9 objectForKey:v10];
  if (!v11)
  {
    v11 = [self _newAppearanceWithClassInfo:v8 containerList:list];
    v11[5] = properties;
    [v9 setObject:v11 forKey:v10];
    [v9 setObject:MEMORY[0x1E695E118] forKey:@"_UIAppearanceHasExtendedAppearancesKey"];
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _UIPropertyBasedAppearance;
  [(_UIAppearance *)&v3 dealloc];
}

- (BOOL)_isValidAppearanceForCustomizableObject:(id)object
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _propertiesToMatch = [(_UIPropertyBasedAppearance *)self _propertiesToMatch];
  v6 = [(NSDictionary *)_propertiesToMatch countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(_propertiesToMatch);
      }

      v10 = [objc_msgSend(object valueForKey:{*(*(&v12 + 1) + 8 * v9)), "isEqual:", -[NSDictionary objectForKey:](-[_UIPropertyBasedAppearance _propertiesToMatch](self, "_propertiesToMatch"), "objectForKey:", *(*(&v12 + 1) + 8 * v9))}];
      if (!v10)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSDictionary *)_propertiesToMatch countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    LOBYTE(v10) = 1;
  }

  return v10;
}

@end