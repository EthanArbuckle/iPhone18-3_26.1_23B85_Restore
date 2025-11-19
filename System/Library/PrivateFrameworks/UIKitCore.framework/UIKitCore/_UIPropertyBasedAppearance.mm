@interface _UIPropertyBasedAppearance
+ (id)_appearanceMatchingProperties:(id)a3 forClass:(Class)a4 withContainerList:(id)a5;
+ (id)_appearanceObjectKeyForProperties:(id)a3;
- (BOOL)_isValidAppearanceForCustomizableObject:(id)a3;
- (void)dealloc;
@end

@implementation _UIPropertyBasedAppearance

+ (id)_appearanceObjectKeyForProperties:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return @"_UIAppearanceKey";
  }

  v4 = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [v4 addObject:v9];
        [v4 addObject:{objc_msgSend(a3, "objectForKey:", v9)}];
      }

      v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return [v4 componentsJoinedByString:@":"];
}

+ (id)_appearanceMatchingProperties:(id)a3 forClass:(Class)a4 withContainerList:(id)a5
{
  v8 = [_UIAppearanceCustomizableClassInfo _customizableClassInfoForViewClass:a4 withGuideClass:0];
  v9 = [a1 _appearanceNodeForClassInfo:v8 containerList:a5];
  v10 = [a1 _appearanceObjectKeyForProperties:a3];
  v11 = [v9 objectForKey:v10];
  if (!v11)
  {
    v11 = [a1 _newAppearanceWithClassInfo:v8 containerList:a5];
    v11[5] = a3;
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

- (BOOL)_isValidAppearanceForCustomizableObject:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(_UIPropertyBasedAppearance *)self _propertiesToMatch];
  v6 = [(NSDictionary *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
        objc_enumerationMutation(v5);
      }

      v10 = [objc_msgSend(a3 valueForKey:{*(*(&v12 + 1) + 8 * v9)), "isEqual:", -[NSDictionary objectForKey:](-[_UIPropertyBasedAppearance _propertiesToMatch](self, "_propertiesToMatch"), "objectForKey:", *(*(&v12 + 1) + 8 * v9))}];
      if (!v10)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSDictionary *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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