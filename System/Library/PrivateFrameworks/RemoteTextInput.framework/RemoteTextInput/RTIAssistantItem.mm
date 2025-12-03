@interface RTIAssistantItem
- (BOOL)isEqual:(id)equal;
- (RTIAssistantItem)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTIAssistantItem

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  if (self->_showsBarButtonItemsInline)
  {
    [coderCopy encodeBool:1 forKey:@"sBtnInline"];
  }

  if (self->_showsInputDashboardViewController)
  {
    [coderCopy encodeBool:1 forKey:@"sIDVC"];
  }

  if (self->_centerViewPreferredWidth != 0.0)
  {
    [coderCopy encodeFloat:@"cVPW" forKey:?];
  }

  detachedTintColor = self->_detachedTintColor;
  if (detachedTintColor)
  {
    [coderCopy encodeObject:detachedTintColor forKey:@"dTintCol"];
  }

  detachedBackgroundColor = self->_detachedBackgroundColor;
  if (detachedBackgroundColor)
  {
    [coderCopy encodeObject:detachedBackgroundColor forKey:@"dBgCol"];
  }

  leadingBarButtonGroups = self->_leadingBarButtonGroups;
  if (leadingBarButtonGroups)
  {
    [coderCopy encodeObject:leadingBarButtonGroups forKey:@"lGroups"];
  }

  trailingBarButtonGroups = self->_trailingBarButtonGroups;
  if (trailingBarButtonGroups)
  {
    [coderCopy encodeObject:trailingBarButtonGroups forKey:@"tGroups"];
  }

  if (self->_visibleWhenMinimized)
  {
    [coderCopy encodeBool:1 forKey:@"rvizwm"];
  }
}

- (RTIAssistantItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  v24.receiver = self;
  v24.super_class = RTIAssistantItem;
  v5 = [(RTIAssistantItem *)&v24 init];
  if (v5)
  {
    v5->_showsBarButtonItemsInline = [coderCopy decodeBoolForKey:@"sBtnInline"];
    v5->_showsInputDashboardViewController = [coderCopy decodeBoolForKey:@"sIDVC"];
    [coderCopy decodeFloatForKey:@"cVPW"];
    v5->_centerViewPreferredWidth = v6;
    v5->_visibleWhenMinimized = [coderCopy decodeBoolForKey:@"rvizwm"];
    Class = objc_getClass("UIColor");
    if (Class)
    {
      v8 = Class;
      v9 = [coderCopy decodeObjectOfClass:Class forKey:@"dTintCol"];
      detachedTintColor = v5->_detachedTintColor;
      v5->_detachedTintColor = v9;

      v11 = [coderCopy decodeObjectOfClass:v8 forKey:@"dBgCol"];
      detachedBackgroundColor = v5->_detachedBackgroundColor;
      v5->_detachedBackgroundColor = v11;
    }

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"lGroups"];
    leadingBarButtonGroups = v5->_leadingBarButtonGroups;
    v5->_leadingBarButtonGroups = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"tGroups"];
    trailingBarButtonGroups = v5->_trailingBarButtonGroups;
    v5->_trailingBarButtonGroups = v21;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[RTIAssistantItem allocWithZone:?]];
  v4->_showsBarButtonItemsInline = self->_showsBarButtonItemsInline;
  v4->_showsInputDashboardViewController = self->_showsInputDashboardViewController;
  v4->_centerViewPreferredWidth = self->_centerViewPreferredWidth;
  objc_storeStrong(&v4->_detachedTintColor, self->_detachedTintColor);
  objc_storeStrong(&v4->_detachedBackgroundColor, self->_detachedBackgroundColor);
  v5 = [(NSArray *)self->_leadingBarButtonGroups copy];
  leadingBarButtonGroups = v4->_leadingBarButtonGroups;
  v4->_leadingBarButtonGroups = v5;

  v7 = [(NSArray *)self->_trailingBarButtonGroups copy];
  trailingBarButtonGroups = v4->_trailingBarButtonGroups;
  v4->_trailingBarButtonGroups = v7;

  v4->_visibleWhenMinimized = self->_visibleWhenMinimized;
  return v4;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  [v3 appendFormat:@"; visibleWhenMinimized = %d", -[RTIAssistantItem visibleWhenMinimized](self, "visibleWhenMinimized")];
  [v3 appendFormat:@"; showsBarButtonItemsInline = %d", -[RTIAssistantItem showsBarButtonItemsInline](self, "showsBarButtonItemsInline")];
  [v3 appendFormat:@"; showsInputDashboardViewController = %d", -[RTIAssistantItem showsInputDashboardViewController](self, "showsInputDashboardViewController")];
  [(RTIAssistantItem *)self centerViewPreferredWidth];
  if (v4 != 0.0)
  {
    [(RTIAssistantItem *)self centerViewPreferredWidth];
    [v3 appendFormat:@"; centerViewPreferredWidth = %f", v5];
  }

  detachedTintColor = [(RTIAssistantItem *)self detachedTintColor];

  if (detachedTintColor)
  {
    detachedTintColor2 = [(RTIAssistantItem *)self detachedTintColor];
    [v3 appendFormat:@"; detachedTintColor = %@", detachedTintColor2];
  }

  detachedBackgroundColor = [(RTIAssistantItem *)self detachedBackgroundColor];

  if (detachedBackgroundColor)
  {
    detachedBackgroundColor2 = [(RTIAssistantItem *)self detachedBackgroundColor];
    [v3 appendFormat:@"; detachedBackgroundColor = %@", detachedBackgroundColor2];
  }

  leadingBarButtonGroups = [(RTIAssistantItem *)self leadingBarButtonGroups];

  if (leadingBarButtonGroups)
  {
    leadingBarButtonGroups2 = [(RTIAssistantItem *)self leadingBarButtonGroups];
    [v3 appendFormat:@"; leadingBarButtonGroups = %@", leadingBarButtonGroups2];
  }

  trailingBarButtonGroups = [(RTIAssistantItem *)self trailingBarButtonGroups];

  if (trailingBarButtonGroups)
  {
    trailingBarButtonGroups2 = [(RTIAssistantItem *)self trailingBarButtonGroups];
    [v3 appendFormat:@"; trailingBarButtonGroups = %@", trailingBarButtonGroups2];
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      visibleWhenMinimized = [(RTIAssistantItem *)self visibleWhenMinimized];
      if (visibleWhenMinimized != [(RTIAssistantItem *)v5 visibleWhenMinimized])
      {
        goto LABEL_19;
      }

      showsBarButtonItemsInline = [(RTIAssistantItem *)self showsBarButtonItemsInline];
      if (showsBarButtonItemsInline != [(RTIAssistantItem *)v5 showsBarButtonItemsInline])
      {
        goto LABEL_19;
      }

      showsInputDashboardViewController = [(RTIAssistantItem *)self showsInputDashboardViewController];
      if (showsInputDashboardViewController != [(RTIAssistantItem *)v5 showsInputDashboardViewController])
      {
        goto LABEL_19;
      }

      [(RTIAssistantItem *)self centerViewPreferredWidth];
      v10 = v9;
      [(RTIAssistantItem *)v5 centerViewPreferredWidth];
      if (v10 != v11)
      {
        goto LABEL_19;
      }

      detachedTintColor = [(RTIAssistantItem *)self detachedTintColor];
      detachedTintColor2 = [(RTIAssistantItem *)v5 detachedTintColor];
      v14 = detachedTintColor2;
      if (detachedTintColor == detachedTintColor2)
      {
      }

      else
      {
        detachedTintColor3 = [(RTIAssistantItem *)self detachedTintColor];
        detachedTintColor4 = [(RTIAssistantItem *)v5 detachedTintColor];
        v17 = [detachedTintColor3 isEqual:detachedTintColor4];

        if (!v17)
        {
          goto LABEL_19;
        }
      }

      detachedBackgroundColor = [(RTIAssistantItem *)self detachedBackgroundColor];
      detachedBackgroundColor2 = [(RTIAssistantItem *)v5 detachedBackgroundColor];
      v21 = detachedBackgroundColor2;
      if (detachedBackgroundColor == detachedBackgroundColor2)
      {
      }

      else
      {
        detachedBackgroundColor3 = [(RTIAssistantItem *)self detachedBackgroundColor];
        detachedBackgroundColor4 = [(RTIAssistantItem *)v5 detachedBackgroundColor];
        v24 = [detachedBackgroundColor3 isEqual:detachedBackgroundColor4];

        if (!v24)
        {
          goto LABEL_19;
        }
      }

      leadingBarButtonGroups = [(RTIAssistantItem *)self leadingBarButtonGroups];
      leadingBarButtonGroups2 = [(RTIAssistantItem *)v5 leadingBarButtonGroups];
      v27 = leadingBarButtonGroups2;
      if (leadingBarButtonGroups == leadingBarButtonGroups2)
      {
      }

      else
      {
        leadingBarButtonGroups3 = [(RTIAssistantItem *)self leadingBarButtonGroups];
        leadingBarButtonGroups4 = [(RTIAssistantItem *)v5 leadingBarButtonGroups];
        v30 = [leadingBarButtonGroups3 isEqual:leadingBarButtonGroups4];

        if (!v30)
        {
LABEL_19:
          v18 = 0;
LABEL_20:

          goto LABEL_21;
        }
      }

      trailingBarButtonGroups = [(RTIAssistantItem *)self trailingBarButtonGroups];
      trailingBarButtonGroups2 = [(RTIAssistantItem *)v5 trailingBarButtonGroups];
      if (trailingBarButtonGroups == trailingBarButtonGroups2)
      {
        v18 = 1;
      }

      else
      {
        trailingBarButtonGroups3 = [(RTIAssistantItem *)self trailingBarButtonGroups];
        trailingBarButtonGroups4 = [(RTIAssistantItem *)v5 trailingBarButtonGroups];
        v18 = [trailingBarButtonGroups3 isEqual:trailingBarButtonGroups4];
      }

      goto LABEL_20;
    }

    v18 = 0;
  }

LABEL_21:

  return v18;
}

@end