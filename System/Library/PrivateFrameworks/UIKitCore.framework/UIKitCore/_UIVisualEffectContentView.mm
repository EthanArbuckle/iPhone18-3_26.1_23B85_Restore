@interface _UIVisualEffectContentView
- (_UIVisualEffectContentView)initWithFrame:(CGRect)frame;
- (id)description;
- (void)_didInvalidateIntrinsicContentSize;
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view;
- (void)_notifyContentViewMonitors;
- (void)applyIdentityFilterEffects;
- (void)applyRequestedFilterEffects;
- (void)didAddSubview:(id)subview;
- (void)setDisableGroupFiltering:(BOOL)filtering;
- (void)setFilters:(id)filters;
- (void)willRemoveSubview:(id)subview;
@end

@implementation _UIVisualEffectContentView

- (void)applyRequestedFilterEffects
{
  v14 = *MEMORY[0x1E69E9840];
  self->_currentlyDisplayingRequestedEffects = 1;
  if (self->_disableGroupFiltering)
  {
    subviews = [(UIView *)self subviews];
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [subviews countByEnumeratingWithState:&v8 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(subviews);
          }

          _UIVisualEffectSubviewApplyFilters(*(*(&v8 + 1) + 8 * v7++), self->super._filters, self->_currentlyDisplayingRequestedEffects);
        }

        while (v5 != v7);
        v5 = [subviews countByEnumeratingWithState:&v8 objects:v13 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = _UIVisualEffectContentView;
    [(_UIVisualEffectSubview *)&v12 applyRequestedFilterEffects];
  }
}

- (void)_notifyContentViewMonitors
{
  superview = [(UIView *)self superview];
  [superview _didUpdateContentView];
}

- (_UIVisualEffectContentView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UIVisualEffectContentView;
  v3 = [(_UIVisualEffectSubview *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setUserInteractionEnabled:1];
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      [(UIView *)v4 setClipsToBounds:1];
    }
  }

  return v4;
}

- (void)setDisableGroupFiltering:(BOOL)filtering
{
  filteringCopy = filtering;
  v33 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->super._filters count])
  {
    if (filteringCopy && !self->_disableGroupFiltering)
    {
      subviews = [(UIView *)self subviews];
      if ([subviews count])
      {
        v22 = filteringCopy;
        v6 = _UIVisualEffectSubviewConvertToCAFilterArray(self->super._filters);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v21 = subviews;
        v7 = subviews;
        v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v28;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v28 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v27 + 1) + 8 * i);
              layer = [v12 layer];
              [layer setFilters:v6];

              _UIVisualEffectSubviewApplyFilters(v12, self->super._filters, self->_currentlyDisplayingRequestedEffects);
            }

            v9 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
          }

          while (v9);
        }

        LOBYTE(filteringCopy) = v22;
        subviews = v21;
      }

      v14 = _UIVisualEffectSubviewSetFilters(self, self->super._filters, MEMORY[0x1E695E0F0]);
LABEL_24:

      goto LABEL_25;
    }

    if (self->_disableGroupFiltering && !filteringCopy)
    {
      subviews = [(UIView *)self subviews];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v15 = [subviews countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v24;
        do
        {
          for (j = 0; j != v16; ++j)
          {
            if (*v24 != v17)
            {
              objc_enumerationMutation(subviews);
            }

            layer2 = [*(*(&v23 + 1) + 8 * j) layer];
            [layer2 setFilters:0];
          }

          v16 = [subviews countByEnumeratingWithState:&v23 objects:v31 count:16];
        }

        while (v16);
      }

      v20 = _UIVisualEffectSubviewSetFilters(self, MEMORY[0x1E695E0F0], self->super._filters);
      _UIVisualEffectSubviewApplyFilters(self, self->super._filters, self->_currentlyDisplayingRequestedEffects);
      goto LABEL_24;
    }
  }

LABEL_25:
  self->_disableGroupFiltering = filteringCopy;
}

- (void)setFilters:(id)filters
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_disableGroupFiltering)
  {
    v4 = [filters copy];
    filters = self->super._filters;
    self->super._filters = v4;

    subviews = [(UIView *)self subviews];
    if ([subviews count])
    {
      v7 = _UIVisualEffectSubviewConvertToCAFilterArray(self->super._filters);
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = subviews;
      v9 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v15;
        do
        {
          v12 = 0;
          do
          {
            if (*v15 != v11)
            {
              objc_enumerationMutation(v8);
            }

            layer = [*(*(&v14 + 1) + 8 * v12) layer];
            [layer setFilters:v7];

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
        }

        while (v10);
      }
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = _UIVisualEffectContentView;
    [(_UIVisualEffectSubview *)&v18 setFilters:filters];
  }
}

- (void)applyIdentityFilterEffects
{
  v14 = *MEMORY[0x1E69E9840];
  self->_currentlyDisplayingRequestedEffects = 0;
  if (self->_disableGroupFiltering)
  {
    subviews = [(UIView *)self subviews];
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [subviews countByEnumeratingWithState:&v8 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(subviews);
          }

          _UIVisualEffectSubviewApplyFilters(*(*(&v8 + 1) + 8 * v7++), self->super._filters, self->_currentlyDisplayingRequestedEffects);
        }

        while (v5 != v7);
        v5 = [subviews countByEnumeratingWithState:&v8 objects:v13 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = _UIVisualEffectContentView;
    [(_UIVisualEffectSubview *)&v12 applyIdentityFilterEffects];
  }
}

- (void)didAddSubview:(id)subview
{
  subviewCopy = subview;
  [(_UIVisualEffectContentView *)self _notifyContentViewMonitors];
  if (self->_disableGroupFiltering && [(NSArray *)self->super._filters count])
  {
    v4 = _UIVisualEffectSubviewConvertToCAFilterArray(self->super._filters);
    layer = [subviewCopy layer];
    [layer setFilters:v4];

    _UIVisualEffectSubviewApplyFilters(subviewCopy, self->super._filters, self->_currentlyDisplayingRequestedEffects);
  }
}

- (void)willRemoveSubview:(id)subview
{
  subviewCopy = subview;
  [(_UIVisualEffectContentView *)self _notifyContentViewMonitors];
  if (self->_disableGroupFiltering)
  {
    layer = [subviewCopy layer];
    [layer setFilters:0];
  }
}

- (void)_didInvalidateIntrinsicContentSize
{
  v3.receiver = self;
  v3.super_class = _UIVisualEffectContentView;
  [(UIView *)&v3 _didInvalidateIntrinsicContentSize];
  [(_UIVisualEffectContentView *)self _notifyContentViewMonitors];
}

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view
{
  v4.receiver = self;
  v4.super_class = _UIVisualEffectContentView;
  [(UIView *)&v4 _intrinsicContentSizeInvalidatedForChildView:view];
  [(_UIVisualEffectContentView *)self _notifyContentViewMonitors];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = _UIVisualEffectContentView;
  v3 = [(UIView *)&v7 description];
  v4 = v3;
  if (self->_disableGroupFiltering)
  {
    v5 = [v3 stringByAppendingString:@" disablesGroupFiltering"];

    v4 = v5;
  }

  return v4;
}

@end