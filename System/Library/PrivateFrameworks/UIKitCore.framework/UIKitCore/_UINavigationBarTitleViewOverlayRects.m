@interface _UINavigationBarTitleViewOverlayRects
- (CGRect)backButtonRect;
- (CGRect)centerItemsRect;
- (CGRect)centerLine2Rect;
- (CGRect)centerRect;
- (CGRect)floatingTabBarRect;
- (CGRect)leadingItemsRect;
- (CGRect)leadingRect;
- (CGRect)leadingStaticItemRect;
- (CGRect)titleRect;
- (CGRect)trailingItemsRect;
- (CGRect)trailingStaticItemRect;
- (_UINavigationBarTitleViewOverlayRects)init;
- (id)asArray;
- (id)description;
- (void)reset;
@end

@implementation _UINavigationBarTitleViewOverlayRects

- (id)asArray
{
  v3 = objc_opt_new();
  if (!CGRectIsNull(self->_leadingStaticItemRect))
  {
    v4 = [MEMORY[0x1E696B098] valueWithCGRect:{self->_leadingStaticItemRect.origin.x, self->_leadingStaticItemRect.origin.y, self->_leadingStaticItemRect.size.width, self->_leadingStaticItemRect.size.height}];
    [v3 addObject:v4];
  }

  if (!CGRectIsNull(self->_backButtonRect))
  {
    v5 = [MEMORY[0x1E696B098] valueWithCGRect:{self->_backButtonRect.origin.x, self->_backButtonRect.origin.y, self->_backButtonRect.size.width, self->_backButtonRect.size.height}];
    [v3 addObject:v5];
  }

  if (!CGRectIsNull(self->_leadingItemsRect))
  {
    v6 = [MEMORY[0x1E696B098] valueWithCGRect:{self->_leadingItemsRect.origin.x, self->_leadingItemsRect.origin.y, self->_leadingItemsRect.size.width, self->_leadingItemsRect.size.height}];
    [v3 addObject:v6];
  }

  if (!CGRectIsNull(self->_titleRect))
  {
    v7 = [MEMORY[0x1E696B098] valueWithCGRect:{self->_titleRect.origin.x, self->_titleRect.origin.y, self->_titleRect.size.width, self->_titleRect.size.height}];
    [v3 addObject:v7];
  }

  if (!CGRectIsNull(self->_centerItemsRect))
  {
    v8 = [MEMORY[0x1E696B098] valueWithCGRect:{self->_centerItemsRect.origin.x, self->_centerItemsRect.origin.y, self->_centerItemsRect.size.width, self->_centerItemsRect.size.height}];
    [v3 addObject:v8];
  }

  if (!CGRectIsNull(self->_floatingTabBarRect))
  {
    v9 = [MEMORY[0x1E696B098] valueWithCGRect:{self->_floatingTabBarRect.origin.x, self->_floatingTabBarRect.origin.y, self->_floatingTabBarRect.size.width, self->_floatingTabBarRect.size.height}];
    [v3 addObject:v9];
  }

  if (!CGRectIsNull(self->_trailingItemsRect))
  {
    v10 = [MEMORY[0x1E696B098] valueWithCGRect:{self->_trailingItemsRect.origin.x, self->_trailingItemsRect.origin.y, self->_trailingItemsRect.size.width, self->_trailingItemsRect.size.height}];
    [v3 addObject:v10];
  }

  if (!CGRectIsNull(self->_trailingStaticItemRect))
  {
    v11 = [MEMORY[0x1E696B098] valueWithCGRect:{self->_trailingStaticItemRect.origin.x, self->_trailingStaticItemRect.origin.y, self->_trailingStaticItemRect.size.width, self->_trailingStaticItemRect.size.height}];
    [v3 addObject:v11];
  }

  return v3;
}

- (_UINavigationBarTitleViewOverlayRects)init
{
  v5.receiver = self;
  v5.super_class = _UINavigationBarTitleViewOverlayRects;
  result = [(_UINavigationBarTitleViewOverlayRects *)&v5 init];
  if (result)
  {
    v3 = *MEMORY[0x1E695F050];
    v4 = *(MEMORY[0x1E695F050] + 16);
    result->_leadingStaticItemRect.origin = *MEMORY[0x1E695F050];
    result->_leadingStaticItemRect.size = v4;
    result->_backButtonRect.origin = v3;
    result->_backButtonRect.size = v4;
    result->_leadingItemsRect.origin = v3;
    result->_leadingItemsRect.size = v4;
    result->_titleRect.origin = v3;
    result->_titleRect.size = v4;
    result->_centerItemsRect.origin = v3;
    result->_centerItemsRect.size = v4;
    result->_trailingItemsRect.origin = v3;
    result->_trailingItemsRect.size = v4;
    result->_trailingStaticItemRect.origin = v3;
    result->_trailingStaticItemRect.size = v4;
    result->_floatingTabBarRect.origin = v3;
    result->_floatingTabBarRect.size = v4;
  }

  return result;
}

- (void)reset
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 16);
  self->_leadingStaticItemRect.origin = *MEMORY[0x1E695F050];
  self->_leadingStaticItemRect.size = v3;
  self->_backButtonRect.origin = v2;
  self->_backButtonRect.size = v3;
  self->_leadingItemsRect.origin = v2;
  self->_leadingItemsRect.size = v3;
  self->_titleRect.origin = v2;
  self->_titleRect.size = v3;
  self->_titleLocation = 0;
  self->_centerItemsRect.origin = v2;
  self->_centerItemsRect.size = v3;
  self->_trailingItemsRect.origin = v2;
  self->_trailingItemsRect.size = v3;
  self->_trailingStaticItemRect.origin = v2;
  self->_trailingStaticItemRect.size = v3;
  self->_floatingTabBarRect.origin = v2;
  self->_floatingTabBarRect.size = v3;
}

- (id)description
{
  v17.receiver = self;
  v17.super_class = _UINavigationBarTitleViewOverlayRects;
  v3 = [(_UINavigationBarTitleViewOverlayRects *)&v17 description];
  v4 = [v3 mutableCopy];

  if (!CGRectIsNull(self->_leadingStaticItemRect))
  {
    v5 = NSStringFromCGRect(self->_leadingStaticItemRect);
    [v4 appendFormat:@" %s=%@", "leadingStaticItemRect", v5];
  }

  if (!CGRectIsNull(self->_backButtonRect))
  {
    v6 = NSStringFromCGRect(self->_backButtonRect);
    [v4 appendFormat:@" %s=%@", "backButtonRect", v6];
  }

  if (!CGRectIsNull(self->_leadingItemsRect))
  {
    v7 = NSStringFromCGRect(self->_leadingItemsRect);
    [v4 appendFormat:@" %s=%@", "leadingItemsRect", v7];
  }

  if (!CGRectIsNull(self->_titleRect))
  {
    v8 = NSStringFromCGRect(self->_titleRect);
    [v4 appendFormat:@" %s=%@", "titleRect", v8];
  }

  if (!CGRectIsNull(self->_titleRect))
  {
    v9 = NSStringFromCGRect(self->_titleRect);
    [v4 appendFormat:@" titleRect=%@", v9];

    titleLocation = self->_titleLocation;
    if (titleLocation > 1)
    {
      if (titleLocation == 2)
      {
        v11 = @" location=leading";
        goto LABEL_20;
      }

      if (titleLocation == 3)
      {
        v11 = @" location=2ndLine";
        goto LABEL_20;
      }
    }

    else
    {
      if (!titleLocation)
      {
        v11 = @" location=unknown";
        goto LABEL_20;
      }

      if (titleLocation == 1)
      {
        v11 = @" location=centered";
LABEL_20:
        [v4 appendString:v11];
        goto LABEL_21;
      }
    }

    [v4 appendFormat:@" location=%li", self->_titleLocation];
  }

LABEL_21:
  if (!CGRectIsNull(self->_centerItemsRect))
  {
    v12 = NSStringFromCGRect(self->_centerItemsRect);
    [v4 appendFormat:@" %s=%@", "centerItemsRect", v12];
  }

  if (!CGRectIsNull(self->_floatingTabBarRect))
  {
    v13 = NSStringFromCGRect(self->_floatingTabBarRect);
    [v4 appendFormat:@" %s=%@", "floatingTabBarRect", v13];
  }

  if (!CGRectIsNull(self->_trailingItemsRect))
  {
    v14 = NSStringFromCGRect(self->_trailingItemsRect);
    [v4 appendFormat:@" %s=%@", "trailingItemsRect", v14];
  }

  if (!CGRectIsNull(self->_trailingStaticItemRect))
  {
    v15 = NSStringFromCGRect(self->_trailingStaticItemRect);
    [v4 appendFormat:@" %s=%@", "trailingStaticItemRect", v15];
  }

  return v4;
}

- (CGRect)leadingRect
{
  v12 = CGRectUnion(self->_backButtonRect, self->_leadingItemsRect);
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  v7 = self->_leadingStaticItemRect.origin.x;
  v8 = self->_leadingStaticItemRect.origin.y;
  v9 = self->_leadingStaticItemRect.size.width;
  v10 = self->_leadingStaticItemRect.size.height;

  return CGRectUnion(*&v7, *&x);
}

- (CGRect)centerRect
{
  titleLocation = self->_titleLocation;
  switch(titleLocation)
  {
    case 1:
      result = self->_titleRect;
      break;
    case 3:
      result = self->_floatingTabBarRect;
      break;
    case 2:
      result = CGRectUnion(self->_floatingTabBarRect, self->_centerItemsRect);
      break;
    default:
      result = **&MEMORY[0x1E695F050];
      break;
  }

  return result;
}

- (CGRect)centerLine2Rect
{
  p_height = (MEMORY[0x1E695F050] + 24);
  p_y = (MEMORY[0x1E695F050] + 8);
  p_titleRect = &self->_titleRect;
  if (self->_titleLocation == 3)
  {
    p_y = &self->_titleRect.origin.y;
    p_size = &self->_titleRect.size;
  }

  else
  {
    p_titleRect = MEMORY[0x1E695F050];
    p_size = (MEMORY[0x1E695F050] + 16);
  }

  if (self->_titleLocation == 3)
  {
    p_height = &self->_titleRect.size.height;
  }

  v6 = *p_height;
  width = p_size->width;
  x = p_titleRect->origin.x;
  v9 = *p_y;
  result.size.height = v6;
  result.size.width = width;
  result.origin.y = v9;
  result.origin.x = x;
  return result;
}

- (CGRect)leadingStaticItemRect
{
  x = self->_leadingStaticItemRect.origin.x;
  y = self->_leadingStaticItemRect.origin.y;
  width = self->_leadingStaticItemRect.size.width;
  height = self->_leadingStaticItemRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)backButtonRect
{
  x = self->_backButtonRect.origin.x;
  y = self->_backButtonRect.origin.y;
  width = self->_backButtonRect.size.width;
  height = self->_backButtonRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)leadingItemsRect
{
  x = self->_leadingItemsRect.origin.x;
  y = self->_leadingItemsRect.origin.y;
  width = self->_leadingItemsRect.size.width;
  height = self->_leadingItemsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)titleRect
{
  x = self->_titleRect.origin.x;
  y = self->_titleRect.origin.y;
  width = self->_titleRect.size.width;
  height = self->_titleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)centerItemsRect
{
  x = self->_centerItemsRect.origin.x;
  y = self->_centerItemsRect.origin.y;
  width = self->_centerItemsRect.size.width;
  height = self->_centerItemsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)floatingTabBarRect
{
  x = self->_floatingTabBarRect.origin.x;
  y = self->_floatingTabBarRect.origin.y;
  width = self->_floatingTabBarRect.size.width;
  height = self->_floatingTabBarRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)trailingItemsRect
{
  x = self->_trailingItemsRect.origin.x;
  y = self->_trailingItemsRect.origin.y;
  width = self->_trailingItemsRect.size.width;
  height = self->_trailingItemsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)trailingStaticItemRect
{
  x = self->_trailingStaticItemRect.origin.x;
  y = self->_trailingStaticItemRect.origin.y;
  width = self->_trailingStaticItemRect.size.width;
  height = self->_trailingStaticItemRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end