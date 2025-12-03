@interface _UIFocusItemRegion
- (BOOL)_canBeOccludedByRegionsAbove;
- (BOOL)isEqual:(id)equal;
- (UIFocusItem)item;
- (_UIFocusItemRegion)initWithFrame:(CGRect)frame coordinateSpace:(id)space item:(id)item focusSystem:(id)system;
- (id)_debugAssociatedObject;
- (id)_defaultFocusItem;
- (id)_descriptionBuilder;
- (id)_focusRegionWithAdjustedFrame:(CGRect)frame coordinateSpace:(id)space;
- (int64_t)_preferredDistanceComparisonType;
- (unint64_t)_focusableBoundaries;
@end

@implementation _UIFocusItemRegion

- (BOOL)_canBeOccludedByRegionsAbove
{
  if ((*&self->_flags & 2) == 0)
  {
    return 0;
  }

  item = [(_UIFocusItemRegion *)self item];
  v2 = item != 0;

  return v2;
}

- (id)_defaultFocusItem
{
  if ((*&self->_flags & 2) != 0)
  {
    item = [(_UIFocusItemRegion *)self item];
  }

  else
  {
    item = 0;
  }

  return item;
}

- (int64_t)_preferredDistanceComparisonType
{
  if (!dyld_program_sdk_at_least())
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = _UIFocusItemRegion;
  return [(_UIFocusRegion *)&v4 _preferredDistanceComparisonType];
}

- (unint64_t)_focusableBoundaries
{
  if ((*&self->_flags & 2) == 0)
  {
    return 0;
  }

  item = [(_UIFocusItemRegion *)self item];

  if (!item)
  {
    return 0;
  }

  if (dyld_program_sdk_at_least())
  {
    return 32;
  }

  return 16;
}

- (UIFocusItem)item
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  return WeakRetained;
}

- (_UIFocusItemRegion)initWithFrame:(CGRect)frame coordinateSpace:(id)space item:(id)item focusSystem:(id)system
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v43 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  systemCopy = system;
  v39.receiver = self;
  v39.super_class = _UIFocusItemRegion;
  height = [(_UIFocusRegion *)&v39 initWithFrame:space coordinateSpace:x, y, width, height];
  v16 = height;
  if (!height)
  {
    goto LABEL_26;
  }

  v17 = height;
  v18 = itemCopy;
  v19 = systemCopy;
  objc_storeWeak(&v17->_item, v18);
  v40 = 0;
  if (v18)
  {
    IsEligibleForFocusOcclusion = _UIFocusEnvironmentIsEligibleForFocusOcclusion(v18, &v40);
    v21 = v40;
  }

  else
  {
    v21 = 0;
    IsEligibleForFocusOcclusion = 0;
  }

  v22 = &OBJC_IVAR___UITextHighlightView__contentClippingEffectView;
  *&v17->_flags = *&v17->_flags & 0xFE | IsEligibleForFocusOcclusion;
  if (!v19 && (v21 & 1) != 0)
  {
    v19 = [UIFocusSystem focusSystemForEnvironment:v18];
    if (os_variant_has_internal_diagnostics())
    {
      v23 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        if (v19)
        {
          v35 = MEMORY[0x1E696AEC0];
          v36 = v19;
          v37 = objc_opt_class();
          v38 = NSStringFromClass(v37);
          v34 = [v35 stringWithFormat:@"<%@: %p>", v38, v36];
        }

        else
        {
          v34 = @"(nil)";
        }

        *buf = 138412290;
        v42 = v34;
        _os_log_fault_impl(&dword_188A29000, v23, OS_LOG_TYPE_FAULT, "_UIFocusItemRegion got called with a nil focus system. Inferring focus system found %@", buf, 0xCu);

        v22 = &OBJC_IVAR___UITextHighlightView__contentClippingEffectView;
      }
    }

    else
    {
      v23 = *(__UILogGetCategoryCachedImpl("Assert", &_CommonInit___s_category) + 8);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        if (v19)
        {
          v24 = MEMORY[0x1E696AEC0];
          v25 = v19;
          v26 = objc_opt_class();
          v27 = NSStringFromClass(v26);
          v28 = [v24 stringWithFormat:@"<%@: %p>", v27, v25];

          v22 = &OBJC_IVAR___UITextHighlightView__contentClippingEffectView;
        }

        else
        {
          v28 = @"(nil)";
        }

        *buf = 138412290;
        v42 = v28;
        _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "_UIFocusItemRegion got called with a nil focus system. Inferring focus system found %@", buf, 0xCu);
      }
    }

    if ((v40 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_12:
    if (_UIFocusItemCanBecomeFocused(v18, v19))
    {
      v29 = 2;
    }

    else
    {
      v29 = 0;
    }

    goto LABEL_19;
  }

  if (v21)
  {
    goto LABEL_12;
  }

LABEL_18:
  v29 = 0;
LABEL_19:
  *(&v17->super.super.isa + v22[760]) = *(&v17->super.super.isa + v22[760]) & 0xFD | v29;
  v30 = v22[760];
  v31 = *(&v17->super.super.isa + v30);
  if ((v31 & 2) != 0)
  {
    v32 = 0;
  }

  else
  {
    if (_UIFocusItemIsTransparentFocusItem(v18))
    {
      v32 = 4;
    }

    else
    {
      v32 = 0;
    }

    v30 = v22[760];
    v31 = *(&v17->super.super.isa + v30);
  }

  *(&v17->super.super.isa + v30) = v31 & 0xFB | v32;

LABEL_26:
  return v16;
}

- (id)_focusRegionWithAdjustedFrame:(CGRect)frame coordinateSpace:(id)space
{
  v8.receiver = self;
  v8.super_class = _UIFocusItemRegion;
  v5 = [(_UIFocusRegion *)&v8 _focusRegionWithAdjustedFrame:space coordinateSpace:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  WeakRetained = objc_loadWeakRetained(&self->_item);
  objc_storeWeak((v5 + 56), WeakRetained);

  *(v5 + 48) = self->_flags;

  return v5;
}

- (id)_descriptionBuilder
{
  v13.receiver = self;
  v13.super_class = _UIFocusItemRegion;
  _descriptionBuilder = [(_UIFocusRegion *)&v13 _descriptionBuilder];
  item = [(_UIFocusItemRegion *)self item];
  if (item)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 stringWithFormat:@"<%@: %p>", v7, item];
  }

  else
  {
    v8 = @"(nil)";
  }

  v9 = [_descriptionBuilder appendObject:v8 withName:@"item"];

  v10 = [_descriptionBuilder appendBool:(*&self->_flags >> 1) & 1 withName:@"focusable"];
  v11 = [_descriptionBuilder appendBool:(*&self->_flags >> 2) & 1 withName:@"transparent"];

  return _descriptionBuilder;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v15.receiver = self;
  v15.super_class = _UIFocusItemRegion;
  if ([(_UIFocusRegion *)&v15 isEqual:equalCopy])
  {
    v5 = equalCopy;
    WeakRetained = objc_loadWeakRetained(&self->_item);
    v7 = objc_loadWeakRetained(v5 + 7);
    v8 = WeakRetained;
    v9 = v7;
    v10 = v9;
    if (v8 != v9)
    {
      if (v8)
      {
        v11 = v9 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
      }

      else
      {
        v13 = [v8 isEqual:v9];

        if (v13)
        {
          goto LABEL_12;
        }
      }

      v12 = 0;
LABEL_16:

      goto LABEL_17;
    }

LABEL_12:
    v12 = ((*(v5 + 48) ^ *&self->_flags) & 3) == 0 && ((*(v5 + 48) ^ *&self->_flags) & 4) == 0;
    goto LABEL_16;
  }

  v12 = 0;
LABEL_17:

  return v12;
}

- (id)_debugAssociatedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  return WeakRetained;
}

@end