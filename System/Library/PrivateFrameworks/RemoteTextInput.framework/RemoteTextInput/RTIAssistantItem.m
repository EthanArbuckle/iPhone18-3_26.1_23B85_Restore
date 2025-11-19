@interface RTIAssistantItem
- (BOOL)isEqual:(id)a3;
- (RTIAssistantItem)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTIAssistantItem

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  if (([v8 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The coder must allow keyed coding."];
  }

  if (self->_showsBarButtonItemsInline)
  {
    [v8 encodeBool:1 forKey:@"sBtnInline"];
  }

  if (self->_showsInputDashboardViewController)
  {
    [v8 encodeBool:1 forKey:@"sIDVC"];
  }

  if (self->_centerViewPreferredWidth != 0.0)
  {
    [v8 encodeFloat:@"cVPW" forKey:?];
  }

  detachedTintColor = self->_detachedTintColor;
  if (detachedTintColor)
  {
    [v8 encodeObject:detachedTintColor forKey:@"dTintCol"];
  }

  detachedBackgroundColor = self->_detachedBackgroundColor;
  if (detachedBackgroundColor)
  {
    [v8 encodeObject:detachedBackgroundColor forKey:@"dBgCol"];
  }

  leadingBarButtonGroups = self->_leadingBarButtonGroups;
  if (leadingBarButtonGroups)
  {
    [v8 encodeObject:leadingBarButtonGroups forKey:@"lGroups"];
  }

  trailingBarButtonGroups = self->_trailingBarButtonGroups;
  if (trailingBarButtonGroups)
  {
    [v8 encodeObject:trailingBarButtonGroups forKey:@"tGroups"];
  }

  if (self->_visibleWhenMinimized)
  {
    [v8 encodeBool:1 forKey:@"rvizwm"];
  }
}

- (RTIAssistantItem)initWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The decoder must allow keyed coding."];
  }

  v24.receiver = self;
  v24.super_class = RTIAssistantItem;
  v5 = [(RTIAssistantItem *)&v24 init];
  if (v5)
  {
    v5->_showsBarButtonItemsInline = [v4 decodeBoolForKey:@"sBtnInline"];
    v5->_showsInputDashboardViewController = [v4 decodeBoolForKey:@"sIDVC"];
    [v4 decodeFloatForKey:@"cVPW"];
    v5->_centerViewPreferredWidth = v6;
    v5->_visibleWhenMinimized = [v4 decodeBoolForKey:@"rvizwm"];
    Class = objc_getClass("UIColor");
    if (Class)
    {
      v8 = Class;
      v9 = [v4 decodeObjectOfClass:Class forKey:@"dTintCol"];
      detachedTintColor = v5->_detachedTintColor;
      v5->_detachedTintColor = v9;

      v11 = [v4 decodeObjectOfClass:v8 forKey:@"dBgCol"];
      detachedBackgroundColor = v5->_detachedBackgroundColor;
      v5->_detachedBackgroundColor = v11;
    }

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"lGroups"];
    leadingBarButtonGroups = v5->_leadingBarButtonGroups;
    v5->_leadingBarButtonGroups = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"tGroups"];
    trailingBarButtonGroups = v5->_trailingBarButtonGroups;
    v5->_trailingBarButtonGroups = v21;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
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

  v6 = [(RTIAssistantItem *)self detachedTintColor];

  if (v6)
  {
    v7 = [(RTIAssistantItem *)self detachedTintColor];
    [v3 appendFormat:@"; detachedTintColor = %@", v7];
  }

  v8 = [(RTIAssistantItem *)self detachedBackgroundColor];

  if (v8)
  {
    v9 = [(RTIAssistantItem *)self detachedBackgroundColor];
    [v3 appendFormat:@"; detachedBackgroundColor = %@", v9];
  }

  v10 = [(RTIAssistantItem *)self leadingBarButtonGroups];

  if (v10)
  {
    v11 = [(RTIAssistantItem *)self leadingBarButtonGroups];
    [v3 appendFormat:@"; leadingBarButtonGroups = %@", v11];
  }

  v12 = [(RTIAssistantItem *)self trailingBarButtonGroups];

  if (v12)
  {
    v13 = [(RTIAssistantItem *)self trailingBarButtonGroups];
    [v3 appendFormat:@"; trailingBarButtonGroups = %@", v13];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(RTIAssistantItem *)self visibleWhenMinimized];
      if (v6 != [(RTIAssistantItem *)v5 visibleWhenMinimized])
      {
        goto LABEL_19;
      }

      v7 = [(RTIAssistantItem *)self showsBarButtonItemsInline];
      if (v7 != [(RTIAssistantItem *)v5 showsBarButtonItemsInline])
      {
        goto LABEL_19;
      }

      v8 = [(RTIAssistantItem *)self showsInputDashboardViewController];
      if (v8 != [(RTIAssistantItem *)v5 showsInputDashboardViewController])
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

      v12 = [(RTIAssistantItem *)self detachedTintColor];
      v13 = [(RTIAssistantItem *)v5 detachedTintColor];
      v14 = v13;
      if (v12 == v13)
      {
      }

      else
      {
        v15 = [(RTIAssistantItem *)self detachedTintColor];
        v16 = [(RTIAssistantItem *)v5 detachedTintColor];
        v17 = [v15 isEqual:v16];

        if (!v17)
        {
          goto LABEL_19;
        }
      }

      v19 = [(RTIAssistantItem *)self detachedBackgroundColor];
      v20 = [(RTIAssistantItem *)v5 detachedBackgroundColor];
      v21 = v20;
      if (v19 == v20)
      {
      }

      else
      {
        v22 = [(RTIAssistantItem *)self detachedBackgroundColor];
        v23 = [(RTIAssistantItem *)v5 detachedBackgroundColor];
        v24 = [v22 isEqual:v23];

        if (!v24)
        {
          goto LABEL_19;
        }
      }

      v25 = [(RTIAssistantItem *)self leadingBarButtonGroups];
      v26 = [(RTIAssistantItem *)v5 leadingBarButtonGroups];
      v27 = v26;
      if (v25 == v26)
      {
      }

      else
      {
        v28 = [(RTIAssistantItem *)self leadingBarButtonGroups];
        v29 = [(RTIAssistantItem *)v5 leadingBarButtonGroups];
        v30 = [v28 isEqual:v29];

        if (!v30)
        {
LABEL_19:
          v18 = 0;
LABEL_20:

          goto LABEL_21;
        }
      }

      v32 = [(RTIAssistantItem *)self trailingBarButtonGroups];
      v33 = [(RTIAssistantItem *)v5 trailingBarButtonGroups];
      if (v32 == v33)
      {
        v18 = 1;
      }

      else
      {
        v34 = [(RTIAssistantItem *)self trailingBarButtonGroups];
        v35 = [(RTIAssistantItem *)v5 trailingBarButtonGroups];
        v18 = [v34 isEqual:v35];
      }

      goto LABEL_20;
    }

    v18 = 0;
  }

LABEL_21:

  return v18;
}

@end