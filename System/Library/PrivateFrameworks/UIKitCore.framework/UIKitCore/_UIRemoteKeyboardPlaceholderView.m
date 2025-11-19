@interface _UIRemoteKeyboardPlaceholderView
+ (id)placeholderForView:(id)a3;
+ (id)placeholderWithWidth:(double)a3 height:(double)a4;
+ (id)placeholderWithWidthSizer:(id)a3 heightWithScene:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)refreshPlaceholder;
- (CGRect)_compatibleBounds;
- (CGSize)fixedSize;
- (CGSize)intrinsicContentSize;
- (CGSize)leftContentViewSize;
- (CGSize)rightContentViewSize;
- (NSString)description;
- (UIView)placeheldView;
- (_UIRemoteKeyboardPlaceholderView)initWithPlaceholderSize:(CGSize)a3;
- (void)_configureDebugOverlayIfNecessary;
- (void)setFixedSize:(CGSize)a3;
@end

@implementation _UIRemoteKeyboardPlaceholderView

- (UIView)placeheldView
{
  mirroredView = self->_mirroredView;
  if (!mirroredView)
  {
    mirroredView = self->_fallbackView;
  }

  return mirroredView;
}

- (CGSize)intrinsicContentSize
{
  if (self->_mirroredView)
  {
    [(UIView *)self->_mirroredView bounds];
    width = v2;
    height = v4;
  }

  else
  {
    width = self->_fixedSize.width;
    height = self->_fixedSize.height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (void)_configureDebugOverlayIfNecessary
{
  if (qword_1ED499738 != -1)
  {
    dispatch_once(&qword_1ED499738, &__block_literal_global_285_2);
  }

  if (qword_1ED499740)
  {
    [(UIView *)self setBackgroundColor:?];
    v3 = [(UIView *)self layer];
    [v3 setAllowsHitTesting:0];
  }
}

- (CGRect)_compatibleBounds
{
  if (self->_mirroredView)
  {
    [(UIView *)self->_mirroredView _compatibleBounds];
  }

  else
  {
    width = self->_fixedSize.width;
    height = self->_fixedSize.height;
    v2 = 0.0;
    v3 = 0.0;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)refreshPlaceholder
{
  v28 = *MEMORY[0x1E69E9840];
  if (self->_mirroredView)
  {
    [(UIView *)self bounds];
    v4 = v3;
    v6 = v5;
    [(UIView *)self->_mirroredView bounds];
    if (v4 != v8 || v6 != v7)
    {
LABEL_14:
      [(UIView *)self invalidateIntrinsicContentSize];
      LOBYTE(sizeBlock) = 1;
      return sizeBlock;
    }
  }

  sizeBlock = self->_sizeBlock;
  if (sizeBlock)
  {
    p_fixedSize = &self->_fixedSize;
    self->_fixedSize.width = sizeBlock[2](sizeBlock, a2);
    v12 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    WeakRetained = objc_loadWeakRetained(&self->_sceneForHeight);
    [v12 intersectionHeightForWindowScene:WeakRetained isLocalMinimumHeightOut:&self->_isLocalMinimumHeight ignoreHorizontalOffset:1];
    self->_fixedSize.height = v14;

    v15 = KeyboardArbiterClientLog_1();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v29.width = p_fixedSize->width;
      v29.height = self->_fixedSize.height;
      v16 = NSStringFromCGSize(v29);
      [(UIView *)self bounds];
      v30.width = v17;
      v30.height = v18;
      v19 = NSStringFromCGSize(v30);
      v24 = 138412546;
      v25 = v16;
      v26 = 2112;
      v27 = v19;
      _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEFAULT, "[_UIRemoteKeyboardPlaceholderView refreshPlaceholder]  refreshPlaceholder: size=%@ [previous size=%@]", &v24, 0x16u);
    }

    [(UIView *)self bounds];
    if (v21 == p_fixedSize->width && v20 == self->_fixedSize.height)
    {
      LOBYTE(sizeBlock) = 0;
      return sizeBlock;
    }

    goto LABEL_14;
  }

  return sizeBlock;
}

- (CGSize)fixedSize
{
  if (self->_mirroredView)
  {
    [(UIView *)self->_mirroredView bounds];
    width = v2;
    height = v4;
  }

  else
  {
    width = self->_fixedSize.width;
    height = self->_fixedSize.height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (_UIRemoteKeyboardPlaceholderView)initWithPlaceholderSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  v10.receiver = self;
  v10.super_class = _UIRemoteKeyboardPlaceholderView;
  v7 = [(UIView *)&v10 initWithFrame:v5, v6, width, height];
  v8 = v7;
  if (v7)
  {
    v7->_fixedSize.width = width;
    v7->_fixedSize.height = height;
    [(UIView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_UIRemoteKeyboardPlaceholderView *)v8 _configureDebugOverlayIfNecessary];
  }

  return v8;
}

+ (id)placeholderForView:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [_UIRemoteKeyboardPlaceholderView alloc];
    [v4 frame];
    v8 = [(_UIRemoteKeyboardPlaceholderView *)v5 initWithPlaceholderSize:v6, v7];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong((v8 + 408), a3);
      v10 = v9;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)placeholderWithWidth:(double)a3 height:(double)a4
{
  v4 = [[_UIRemoteKeyboardPlaceholderView alloc] initWithPlaceholderSize:a3, a4];

  return v4;
}

+ (id)placeholderWithWidthSizer:(id)a3 heightWithScene:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [[_UIRemoteKeyboardPlaceholderView alloc] initWithPlaceholderSize:v5[2](v5), 0.0];
    if (v7)
    {
      v8 = [v5 copy];
      sizeBlock = v7->_sizeBlock;
      v7->_sizeBlock = v8;

      objc_storeWeak(&v7->_sceneForHeight, v6);
      v10 = v7;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(_UIRemoteKeyboardPlaceholderView *)self placeheldView];
  if (v8 && (v9 = v8, -[_UIRemoteKeyboardPlaceholderView placeheldView](self, "placeheldView"), v10 = objc_claimAutoreleasedReturnValue(), [v10 window], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v9, v11))
  {
    v12 = [(_UIRemoteKeyboardPlaceholderView *)self placeheldView];
    v13 = [(_UIRemoteKeyboardPlaceholderView *)self placeheldView];
    [(UIView *)self convertPoint:v13 toCoordinateSpace:x, y];
    v14 = [v12 pointInside:v7 withEvent:?];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = _UIRemoteKeyboardPlaceholderView;
    v14 = [(UIView *)&v16 pointInside:v7 withEvent:x, y];
  }

  return v14;
}

- (void)setFixedSize:(CGSize)a3
{
  self->_fixedSize = a3;
  if (!self->_mirroredView)
  {
    [(UIView *)self invalidateIntrinsicContentSize];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  if (self->_mirroredView)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mirrored=%@", self->_mirroredView];
  }

  else
  {
    v5 = NSStringFromCGSize(self->_fixedSize);
    v4 = [v3 stringWithFormat:@"size=%@", v5];
  }

  v6 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = _UIRemoteKeyboardPlaceholderView;
  v7 = [(UIView *)&v10 description];
  v8 = [v6 stringWithFormat:@"<%@ %@>", v7, v4];;

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = v6;
    if (self->_mirroredView)
    {
      v8 = [v6[51] isEqual:?];
LABEL_14:

      goto LABEL_15;
    }

    fallbackView = self->_fallbackView;
    if (fallbackView)
    {
      v3 = [v6 fallbackView];
      if (![(UIView *)fallbackView isEqual:v3])
      {
        v8 = 0;
        goto LABEL_13;
      }

      associatedView = self->_associatedView;
      if (!associatedView)
      {
        v8 = 1;
LABEL_13:

        goto LABEL_14;
      }
    }

    else
    {
      associatedView = self->_associatedView;
      if (!associatedView)
      {
        if (self->_fixedSize.width == *(v6 + 52) && self->_fixedSize.height == *(v6 + 53))
        {
          [(UIView *)self frame];
          v15 = v14;
          v17 = v16;
          [v7 frame];
          v8 = v17 == v19 && v15 == v18;
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_14;
      }
    }

    v11 = [v7 associatedView];
    v8 = [(UIView *)associatedView isEqual:v11];

    if (!fallbackView)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v8 = 0;
LABEL_15:

  return v8;
}

- (CGSize)leftContentViewSize
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)rightContentViewSize
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

@end