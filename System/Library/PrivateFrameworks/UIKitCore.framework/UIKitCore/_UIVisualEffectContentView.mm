@interface _UIVisualEffectContentView
- (_UIVisualEffectContentView)initWithFrame:(CGRect)a3;
- (id)description;
- (void)_didInvalidateIntrinsicContentSize;
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)a3;
- (void)_notifyContentViewMonitors;
- (void)applyIdentityFilterEffects;
- (void)applyRequestedFilterEffects;
- (void)didAddSubview:(id)a3;
- (void)setDisableGroupFiltering:(BOOL)a3;
- (void)setFilters:(id)a3;
- (void)willRemoveSubview:(id)a3;
@end

@implementation _UIVisualEffectContentView

- (void)applyRequestedFilterEffects
{
  v14 = *MEMORY[0x1E69E9840];
  self->_currentlyDisplayingRequestedEffects = 1;
  if (self->_disableGroupFiltering)
  {
    v3 = [(UIView *)self subviews];
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
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
            objc_enumerationMutation(v3);
          }

          _UIVisualEffectSubviewApplyFilters(*(*(&v8 + 1) + 8 * v7++), self->super._filters, self->_currentlyDisplayingRequestedEffects);
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
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
  v2 = [(UIView *)self superview];
  [v2 _didUpdateContentView];
}

- (_UIVisualEffectContentView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _UIVisualEffectContentView;
  v3 = [(_UIVisualEffectSubview *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setDisableGroupFiltering:(BOOL)a3
{
  v3 = a3;
  v33 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->super._filters count])
  {
    if (v3 && !self->_disableGroupFiltering)
    {
      v5 = [(UIView *)self subviews];
      if ([v5 count])
      {
        v22 = v3;
        v6 = _UIVisualEffectSubviewConvertToCAFilterArray(self->super._filters);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v21 = v5;
        v7 = v5;
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
              v13 = [v12 layer];
              [v13 setFilters:v6];

              _UIVisualEffectSubviewApplyFilters(v12, self->super._filters, self->_currentlyDisplayingRequestedEffects);
            }

            v9 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
          }

          while (v9);
        }

        LOBYTE(v3) = v22;
        v5 = v21;
      }

      v14 = _UIVisualEffectSubviewSetFilters(self, self->super._filters, MEMORY[0x1E695E0F0]);
LABEL_24:

      goto LABEL_25;
    }

    if (self->_disableGroupFiltering && !v3)
    {
      v5 = [(UIView *)self subviews];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v15 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
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
              objc_enumerationMutation(v5);
            }

            v19 = [*(*(&v23 + 1) + 8 * j) layer];
            [v19 setFilters:0];
          }

          v16 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
        }

        while (v16);
      }

      v20 = _UIVisualEffectSubviewSetFilters(self, MEMORY[0x1E695E0F0], self->super._filters);
      _UIVisualEffectSubviewApplyFilters(self, self->super._filters, self->_currentlyDisplayingRequestedEffects);
      goto LABEL_24;
    }
  }

LABEL_25:
  self->_disableGroupFiltering = v3;
}

- (void)setFilters:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_disableGroupFiltering)
  {
    v4 = [a3 copy];
    filters = self->super._filters;
    self->super._filters = v4;

    v6 = [(UIView *)self subviews];
    if ([v6 count])
    {
      v7 = _UIVisualEffectSubviewConvertToCAFilterArray(self->super._filters);
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = v6;
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

            v13 = [*(*(&v14 + 1) + 8 * v12) layer];
            [v13 setFilters:v7];

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
    [(_UIVisualEffectSubview *)&v18 setFilters:a3];
  }
}

- (void)applyIdentityFilterEffects
{
  v14 = *MEMORY[0x1E69E9840];
  self->_currentlyDisplayingRequestedEffects = 0;
  if (self->_disableGroupFiltering)
  {
    v3 = [(UIView *)self subviews];
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
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
            objc_enumerationMutation(v3);
          }

          _UIVisualEffectSubviewApplyFilters(*(*(&v8 + 1) + 8 * v7++), self->super._filters, self->_currentlyDisplayingRequestedEffects);
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
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

- (void)didAddSubview:(id)a3
{
  v6 = a3;
  [(_UIVisualEffectContentView *)self _notifyContentViewMonitors];
  if (self->_disableGroupFiltering && [(NSArray *)self->super._filters count])
  {
    v4 = _UIVisualEffectSubviewConvertToCAFilterArray(self->super._filters);
    v5 = [v6 layer];
    [v5 setFilters:v4];

    _UIVisualEffectSubviewApplyFilters(v6, self->super._filters, self->_currentlyDisplayingRequestedEffects);
  }
}

- (void)willRemoveSubview:(id)a3
{
  v5 = a3;
  [(_UIVisualEffectContentView *)self _notifyContentViewMonitors];
  if (self->_disableGroupFiltering)
  {
    v4 = [v5 layer];
    [v4 setFilters:0];
  }
}

- (void)_didInvalidateIntrinsicContentSize
{
  v3.receiver = self;
  v3.super_class = _UIVisualEffectContentView;
  [(UIView *)&v3 _didInvalidateIntrinsicContentSize];
  [(_UIVisualEffectContentView *)self _notifyContentViewMonitors];
}

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UIVisualEffectContentView;
  [(UIView *)&v4 _intrinsicContentSizeInvalidatedForChildView:a3];
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