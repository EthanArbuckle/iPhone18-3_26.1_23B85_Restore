@interface SBPlaceholderIcon
+ (id)clusteredIconPlaceholderForIcons:(id)icons;
+ (id)grabbedIconPlaceholderForIcon:(id)icon;
+ (id)grabbedIconPlaceholderForIcons:(id)icons;
+ (id)placeholderForIcon:(id)icon;
+ (id)placeholderForReason:(id)reason;
+ (id)placeholderNodeIdentifierForIcon:(id)icon;
+ (id)placeholderNodeIdentifierForIconNodeIdentifier:(id)identifier;
- (BOOL)referencesIconWithIdentifier:(id)identifier;
- (NSArray)referencedIcons;
- (SBIcon)referencedIcon;
- (SBPlaceholderIcon)init;
- (id)_initWithNodeIdentifier:(id)identifier icon:(id)icon;
- (id)_initWithNodeIdentifier:(id)identifier icons:(id)icons;
- (void)_setPropertiesFromIcon:(id)icon;
- (void)updateReferencedIcons:(id)icons;
@end

@implementation SBPlaceholderIcon

- (id)_initWithNodeIdentifier:(id)identifier icon:(id)icon
{
  identifierCopy = identifier;
  iconCopy = icon;
  v13.receiver = self;
  v13.super_class = SBPlaceholderIcon;
  v9 = [(SBIcon *)&v13 init];
  p_isa = &v9->super.super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_nodeIdentifier, identifier);
    objc_storeStrong(p_isa + 13, icon);
    if (iconCopy)
    {
      gridSizeClass = [iconCopy gridSizeClass];
      [p_isa setGridSizeClass:gridSizeClass];
    }
  }

  return p_isa;
}

- (id)_initWithNodeIdentifier:(id)identifier icons:(id)icons
{
  identifierCopy = identifier;
  iconsCopy = icons;
  v16.receiver = self;
  v16.super_class = SBPlaceholderIcon;
  v9 = [(SBIcon *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_nodeIdentifier, identifier);
    v11 = [iconsCopy copy];
    icons = v10->_icons;
    v10->_icons = v11;

    firstObject = [iconsCopy firstObject];
    gridSizeClass = [firstObject gridSizeClass];

    if (!gridSizeClass)
    {
      gridSizeClass = @"SBHIconGridSizeClassDefault";
    }

    [(SBIcon *)v10 setGridSizeClass:gridSizeClass];
  }

  return v10;
}

- (SBPlaceholderIcon)init
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v5 = [(SBPlaceholderIcon *)self _initWithNodeIdentifier:uUIDString icon:0];

  return v5;
}

+ (id)placeholderNodeIdentifierForIcon:(id)icon
{
  nodeIdentifier = [icon nodeIdentifier];
  v5 = [self placeholderNodeIdentifierForIconNodeIdentifier:nodeIdentifier];

  return v5;
}

+ (id)placeholderNodeIdentifierForIconNodeIdentifier:(id)identifier
{
  v3 = SBIconIndexDebugStringForNodeIdentifier(identifier);
  v4 = [@"Placeholder: " stringByAppendingString:v3];

  return v4;
}

+ (id)placeholderForIcon:(id)icon
{
  iconCopy = icon;
  v5 = [self placeholderNodeIdentifierForIcon:iconCopy];
  v6 = [[self alloc] _initWithNodeIdentifier:v5 icon:iconCopy];

  return v6;
}

+ (id)grabbedIconPlaceholderForIcon:(id)icon
{
  iconCopy = icon;
  v4 = [SBGrabbedPlaceholderIcon alloc];
  v5 = MEMORY[0x1E696AEC0];
  nodeIdentifier = [iconCopy nodeIdentifier];
  v7 = SBIconIndexDebugStringForNodeIdentifier(nodeIdentifier);
  v8 = [v5 stringWithFormat:@"Placeholder: Grabbed %@", v7];
  v9 = [(SBPlaceholderIcon *)v4 _initWithNodeIdentifier:v8 icon:iconCopy];

  return v9;
}

+ (id)grabbedIconPlaceholderForIcons:(id)icons
{
  v23 = *MEMORY[0x1E69E9840];
  iconsCopy = icons;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = iconsCopy;
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

        nodeIdentifier = [*(*(&v18 + 1) + 8 * i) nodeIdentifier];
        v11 = SBIconIndexDebugStringForNodeIdentifier(nodeIdentifier);

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

+ (id)clusteredIconPlaceholderForIcons:(id)icons
{
  v23 = *MEMORY[0x1E69E9840];
  iconsCopy = icons;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = iconsCopy;
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

        nodeIdentifier = [*(*(&v18 + 1) + 8 * i) nodeIdentifier];
        v11 = SBIconIndexDebugStringForNodeIdentifier(nodeIdentifier);

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

+ (id)placeholderForReason:(id)reason
{
  reasonCopy = reason;
  v4 = [[SBCustomPlaceholderIcon alloc] initWithReason:reasonCopy];

  return v4;
}

- (SBIcon)referencedIcon
{
  icon = self->_icon;
  if (icon)
  {
    firstObject = icon;
  }

  else
  {
    firstObject = [(NSArray *)self->_icons firstObject];
  }

  return firstObject;
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

- (BOOL)referencesIconWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  nodeIdentifier = [(SBIcon *)self->_icon nodeIdentifier];
  v6 = [identifierCopy isEqual:nodeIdentifier];

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
      v10 = identifierCopy;
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

- (void)updateReferencedIcons:(id)icons
{
  v4 = [icons copy];
  icons = self->_icons;
  self->_icons = v4;

  MEMORY[0x1EEE66BB8](v4, icons);
}

- (void)_setPropertiesFromIcon:(id)icon
{
  iconCopy = icon;
  v10.receiver = self;
  v10.super_class = SBPlaceholderIcon;
  [(SBIcon *)&v10 _setPropertiesFromIcon:iconCopy];
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_storeStrong(&self->_nodeIdentifier, iconCopy[12]);
    v7 = iconCopy;
    objc_storeStrong(&self->_icon, v7[13]);
    v8 = [v7[14] copy];
    icons = self->_icons;
    self->_icons = v8;
  }
}

@end