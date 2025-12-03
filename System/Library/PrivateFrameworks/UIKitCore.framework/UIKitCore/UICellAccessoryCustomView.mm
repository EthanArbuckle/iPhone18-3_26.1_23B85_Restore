@interface UICellAccessoryCustomView
- (BOOL)isEqual:(id)equal;
- (UICellAccessoryCustomView)initWithCoder:(NSCoder *)coder;
- (UICellAccessoryCustomView)initWithCustomView:(UIView *)customView placement:(UICellAccessoryPlacement)placement;
- (UICellAccessoryPosition)position;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UICellAccessoryCustomView

- (UICellAccessoryPosition)position
{
  v3 = _Block_copy(self->_position);
  if (!v3)
  {
    if (self->_placement)
    {
      v3 = &__block_literal_global_336_0;
    }

    else
    {
      v3 = &__block_literal_global_395;
    }
  }

  v4 = _Block_copy(v3);

  return v4;
}

- (UICellAccessoryCustomView)initWithCustomView:(UIView *)customView placement:(UICellAccessoryPlacement)placement
{
  v8 = customView;
  if (!v8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UICellAccessory.m" lineNumber:860 description:{@"Invalid parameter not satisfying: %@", @"customView != nil"}];
  }

  if (![(UIView *)v8 translatesAutoresizingMaskIntoConstraints])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UICellAccessory.m" lineNumber:861 description:{@"Custom view accessories must have translatesAutoresizingMaskIntoConstraints enabled, even if auto layout constraints are used inside them. Custom view: %@", v8}];
  }

  v15.receiver = self;
  v15.super_class = UICellAccessoryCustomView;
  v9 = [(UICellAccessory *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_customView, customView);
    v10->_placement = placement;
    objc_opt_class();
    v11 = 0.0;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (_UICellAccessoryCustomViewDefaultUsesStandardLayoutWidthForCustomButton(v8))
          {
            v11 = -1.79769313e308;
          }

          else
          {
            v11 = 0.0;
          }
        }

        else
        {
          v11 = -1.79769313e308;
        }
      }
    }

    [(UICellAccessory *)v10 setReservedLayoutWidth:v11];
  }

  return v10;
}

- (UICellAccessoryCustomView)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  if ([(NSCoder *)v4 requiresSecureCoding]|| ([(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"customView"], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    v8 = 0;
    v6 = 0;
  }

  else
  {
    v6 = v5;
    v10.receiver = self;
    v10.super_class = UICellAccessoryCustomView;
    v7 = [(UICellAccessory *)&v10 initWithCoder:v4];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_customView, v6);
      v8->_placement = [(NSCoder *)v4 decodeIntegerForKey:@"placement"];
      v8->_maintainsFixedSize = [(NSCoder *)v4 decodeBoolForKey:@"maintainsFixedSize"];
    }
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = UICellAccessoryCustomView;
  [(UICellAccessory *)&v5 encodeWithCoder:coderCopy];
  if (([coderCopy requiresSecureCoding] & 1) == 0)
  {
    [coderCopy encodeObject:self->_customView forKey:@"customView"];
  }

  [coderCopy encodeInteger:self->_placement forKey:@"placement"];
  [coderCopy encodeBool:self->_maintainsFixedSize forKey:@"maintainsFixedSize"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = UICellAccessoryCustomView;
  v4 = [(UICellAccessory *)&v9 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 8, self->_customView);
    v5[9] = self->_placement;
    *(v5 + 56) = self->_maintainsFixedSize;
    v6 = [self->_position copy];
    v7 = v5[10];
    v5[10] = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = UICellAccessoryCustomView;
  if ([(UICellAccessory *)&v8 isEqual:equalCopy])
  {
    v5 = equalCopy;
    v6 = self->_customView == v5[8] && self->_placement == v5[9] && self->_maintainsFixedSize == *(v5 + 56) && self->_position == v5[10];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = UICellAccessoryCustomView;
  v3 = [(UICellAccessory *)&v5 hash];
  return [(UIView *)self->_customView hash]^ v3 ^ self->_placement ^ self->_maintainsFixedSize;
}

@end