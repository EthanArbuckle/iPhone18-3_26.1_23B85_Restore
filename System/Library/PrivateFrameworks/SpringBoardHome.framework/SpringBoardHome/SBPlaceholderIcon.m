@interface SBPlaceholderIcon
+ (id)clusteredIconPlaceholderForIcons:(id)a3;
+ (id)grabbedIconPlaceholderForIcon:(id)a3;
+ (id)grabbedIconPlaceholderForIcons:(id)a3;
+ (id)placeholderForIcon:(id)a3;
+ (id)placeholderForReason:(id)a3;
+ (id)placeholderNodeIdentifierForIcon:(id)a3;
+ (id)placeholderNodeIdentifierForIconNodeIdentifier:(id)a3;
- (BOOL)referencesIconWithIdentifier:(id)a3;
- (NSArray)referencedIcons;
- (SBIcon)referencedIcon;
- (SBPlaceholderIcon)init;
- (id)_initWithNodeIdentifier:(id)a3 icon:(id)a4;
- (id)_initWithNodeIdentifier:(id)a3 icons:(id)a4;
- (void)_setPropertiesFromIcon:(id)a3;
- (void)updateReferencedIcons:(id)a3;
@end

@implementation SBPlaceholderIcon

- (id)_initWithNodeIdentifier:(id)a3 icon:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = SBPlaceholderIcon;
  v9 = [(SBIcon *)&v13 init];
  p_isa = &v9->super.super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_nodeIdentifier, a3);
    objc_storeStrong(p_isa + 13, a4);
    if (v8)
    {
      v11 = [v8 gridSizeClass];
      [p_isa setGridSizeClass:v11];
    }
  }

  return p_isa;
}

- (id)_initWithNodeIdentifier:(id)a3 icons:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = SBPlaceholderIcon;
  v9 = [(SBIcon *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_nodeIdentifier, a3);
    v11 = [v8 copy];
    icons = v10->_icons;
    v10->_icons = v11;

    v13 = [v8 firstObject];
    v14 = [v13 gridSizeClass];

    if (!v14)
    {
      v14 = @"SBHIconGridSizeClassDefault";
    }

    [(SBIcon *)v10 setGridSizeClass:v14];
  }

  return v10;
}

- (SBPlaceholderIcon)init
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];
  v5 = [(SBPlaceholderIcon *)self _initWithNodeIdentifier:v4 icon:0];

  return v5;
}

+ (id)placeholderNodeIdentifierForIcon:(id)a3
{
  v4 = [a3 nodeIdentifier];
  v5 = [a1 placeholderNodeIdentifierForIconNodeIdentifier:v4];

  return v5;
}

+ (id)placeholderNodeIdentifierForIconNodeIdentifier:(id)a3
{
  v3 = SBIconIndexDebugStringForNodeIdentifier(a3);
  v4 = [@"Placeholder: " stringByAppendingString:v3];

  return v4;
}

+ (id)placeholderForIcon:(id)a3
{
  v4 = a3;
  v5 = [a1 placeholderNodeIdentifierForIcon:v4];
  v6 = [[a1 alloc] _initWithNodeIdentifier:v5 icon:v4];

  return v6;
}

+ (id)grabbedIconPlaceholderForIcon:(id)a3
{
  v3 = a3;
  v4 = [SBGrabbedPlaceholderIcon alloc];
  v5 = MEMORY[0x1E696AEC0];
  v6 = [v3 nodeIdentifier];
  v7 = SBIconIndexDebugStringForNodeIdentifier(v6);
  v8 = [v5 stringWithFormat:@"Placeholder: Grabbed %@", v7];
  v9 = [(SBPlaceholderIcon *)v4 _initWithNodeIdentifier:v8 icon:v3];

  return v9;
}

+ (id)grabbedIconPlaceholderForIcons:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v18 + 1) + 8 * i) nodeIdentifier];
        v11 = SBIconIndexDebugStringForNodeIdentifier(v10);

        if (v11)
        {
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v12 = [SBGrabbedPlaceholderIcon alloc];
  v13 = MEMORY[0x1E696AEC0];
  v14 = [v4 componentsJoinedByString:{@", "}];
  v15 = [v13 stringWithFormat:@"Placeholder: Grabbed %@", v14];
  v16 = [(SBPlaceholderIcon *)v12 _initWithNodeIdentifier:v15 icons:v5];

  return v16;
}

+ (id)clusteredIconPlaceholderForIcons:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v18 + 1) + 8 * i) nodeIdentifier];
        v11 = SBIconIndexDebugStringForNodeIdentifier(v10);

        if (v11)
        {
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v12 = [SBClusteredPlaceholderIcon alloc];
  v13 = MEMORY[0x1E696AEC0];
  v14 = [v4 componentsJoinedByString:{@", "}];
  v15 = [v13 stringWithFormat:@"Placeholder: Clustered %@", v14];
  v16 = [(SBPlaceholderIcon *)v12 _initWithNodeIdentifier:v15 icons:v5];

  return v16;
}

+ (id)placeholderForReason:(id)a3
{
  v3 = a3;
  v4 = [[SBCustomPlaceholderIcon alloc] initWithReason:v3];

  return v4;
}

- (SBIcon)referencedIcon
{
  icon = self->_icon;
  if (icon)
  {
    v3 = icon;
  }

  else
  {
    v3 = [(NSArray *)self->_icons firstObject];
  }

  return v3;
}

- (NSArray)referencedIcons
{
  v5[1] = *MEMORY[0x1E69E9840];
  icons = self->_icons;
  if (icons)
  {
    v3 = icons;
  }

  else if (self->_icon)
  {
    v5[0] = self->_icon;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (BOOL)referencesIconWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SBIcon *)self->_icon nodeIdentifier];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    LOBYTE(icons) = 1;
  }

  else
  {
    icons = self->_icons;
    if (icons)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __50__SBPlaceholderIcon_referencesIconWithIdentifier___block_invoke;
      v9[3] = &unk_1E808BFD8;
      v10 = v4;
      LOBYTE(icons) = [(NSArray *)icons indexOfObjectPassingTest:v9]!= 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return icons;
}

uint64_t __50__SBPlaceholderIcon_referencesIconWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 nodeIdentifier];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (void)updateReferencedIcons:(id)a3
{
  v4 = [a3 copy];
  icons = self->_icons;
  self->_icons = v4;

  MEMORY[0x1EEE66BB8](v4, icons);
}

- (void)_setPropertiesFromIcon:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SBPlaceholderIcon;
  [(SBIcon *)&v10 _setPropertiesFromIcon:v4];
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_storeStrong(&self->_nodeIdentifier, v4[12]);
    v7 = v4;
    objc_storeStrong(&self->_icon, v7[13]);
    v8 = [v7[14] copy];
    icons = self->_icons;
    self->_icons = v8;
  }
}

@end