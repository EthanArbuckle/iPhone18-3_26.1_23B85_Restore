@interface _UIVisualEffectViewBackdropCaptureGroup
- (BOOL)allowInPlaceFiltering;
- (_UIVisualEffectViewBackdropCaptureGroup)initWithBackdrop:(id)a3;
- (_UIVisualEffectViewBackdropCaptureGroup)initWithName:(id)a3 scale:(double)a4;
- (id)description;
- (int64_t)indexOfBackdropView:(id)a3;
- (void)addBackdrop:(id)a3 update:(BOOL)a4;
- (void)applyScaleHint:(double)a3;
- (void)removeBackdrop:(id)a3 update:(BOOL)a4;
- (void)setGroupName:(id)a3;
- (void)setMinimumScale:(double)a3;
- (void)setScale:(double)a3;
- (void)updateAllBackdropViews;
@end

@implementation _UIVisualEffectViewBackdropCaptureGroup

- (BOOL)allowInPlaceFiltering
{
  if (self->_disableInPlaceFiltering)
  {
    return 0;
  }

  if (self->_scale < 1.0)
  {
    return 0;
  }

  if (!self->_groupName)
  {
    return 1;
  }

  [(NSPointerArray *)self->_backdrops compact];
  return [(NSPointerArray *)self->_backdrops count]< 2;
}

- (void)updateAllBackdropViews
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_backdrops;
  v4 = [(NSPointerArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

        updateBackdropView(*(*(&v8 + 1) + 8 * v7++), self);
      }

      while (v5 != v7);
      v5 = [(NSPointerArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (_UIVisualEffectViewBackdropCaptureGroup)initWithName:(id)a3 scale:(double)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = _UIVisualEffectViewBackdropCaptureGroup;
  v7 = [(_UIVisualEffectViewBackdropCaptureGroup *)&v13 init];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    backdrops = v7->_backdrops;
    v7->_backdrops = v8;

    v10 = [v6 copy];
    groupName = v7->_groupName;
    v7->_groupName = v10;

    objc_storeStrong(&v7->_groupNamespace, *MEMORY[0x1E69795D0]);
    v7->_scale = a4;
  }

  return v7;
}

- (_UIVisualEffectViewBackdropCaptureGroup)initWithBackdrop:(id)a3
{
  v4 = a3;
  v5 = [v4 backdropLayer];
  v6 = [v5 groupName];
  [v5 scale];
  v7 = [(_UIVisualEffectViewBackdropCaptureGroup *)self initWithName:v6 scale:?];

  if (v7)
  {
    [(NSPointerArray *)v7->_backdrops addPointer:v4];
  }

  return v7;
}

- (int64_t)indexOfBackdropView:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_backdrops;
  v6 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
LABEL_3:
    v10 = 0;
    v11 = v8;
    v8 += v7;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v5);
      }

      if (*(*(&v13 + 1) + 8 * v10) == v4)
      {
        break;
      }

      ++v11;
      if (v7 == ++v10)
      {
        v7 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v11;
}

- (void)addBackdrop:(id)a3 update:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(_UIVisualEffectViewBackdropCaptureGroup *)self indexOfBackdropView:?]== 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSPointerArray *)self->_backdrops addPointer:v6];
    if (v4)
    {
      updateBackdropView(v6, self);
    }
  }
}

- (void)removeBackdrop:(id)a3 update:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v6 = [(_UIVisualEffectViewBackdropCaptureGroup *)self indexOfBackdropView:?];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSPointerArray *)self->_backdrops removePointerAtIndex:v6];
    if (v4)
    {
      updateBackdropView(v7, 0);
    }
  }
}

- (void)setGroupName:(id)a3
{
  v4 = a3;
  v5 = self->_groupName;
  v6 = v4;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v5 isEqualToString:v6];

  if (!v7)
  {
LABEL_8:
    v8 = [(NSString *)v10 copy];
    groupName = self->_groupName;
    self->_groupName = v8;

    [(_UIVisualEffectViewBackdropCaptureGroup *)self updateAllBackdropViews];
  }

LABEL_9:
}

- (void)setScale:(double)a3
{
  if (self->_scale != a3)
  {
    self->_scale = a3;
    [(_UIVisualEffectViewBackdropCaptureGroup *)self updateAllBackdropViews];
  }
}

- (void)setMinimumScale:(double)a3
{
  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  v3 = fmin(a3, 1.0);
  if (self->_minimumScale != v3)
  {
    self->_minimumScale = v3;
    [(_UIVisualEffectViewBackdropCaptureGroup *)self updateAllBackdropViews];
  }
}

- (void)applyScaleHint:(double)a3
{
  if (a3 > 0.0)
  {
    [(_UIVisualEffectViewBackdropCaptureGroup *)self setScale:?];
  }
}

- (id)description
{
  v19 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = _UIVisualEffectViewBackdropCaptureGroup;
  v3 = [(_UIVisualEffectViewBackdropCaptureGroup *)&v17 description];
  v4 = [v3 mutableCopy];

  if (self->_groupName)
  {
    objc_msgSend(v4, "appendFormat:", @" grouped(name='%@'"), self->_groupName;
    if ([(NSString *)self->_groupNamespace isEqualToString:*MEMORY[0x1E69795D0]])
    {
      [v4 appendString:@""]);
    }

    else
    {
      [v4 appendFormat:@" in namespace='%@'"], self->_groupNamespace);
    }
  }

  if (self->_scale < 1.0)
  {
    [v4 appendFormat:@" scale=%f", *&self->_scale];
  }

  if (self->_minimumScale > 0.0)
  {
    [v4 appendFormat:@" minimumScale=%f", *&self->_minimumScale];
  }

  if (self->_disableInPlaceFiltering)
  {
    [v4 appendString:@" disableInPlaceFiltering"];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_backdrops;
  v6 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ((v8 & 1) == 0)
        {
          [v4 appendString:@" backdrops={"];
        }

        [v4 appendFormat:@" %p", v11];
        v8 = 1;
      }

      v7 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v7);

    [v4 appendString:@" }"];
  }

  else
  {
  }

  return v4;
}

@end