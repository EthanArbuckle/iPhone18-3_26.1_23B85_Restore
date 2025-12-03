@interface MRTouchSet
- (BOOL)isActive;
- (CGPoint)centroid;
- (MRTouchSet)init;
- (MRTouchSet)initWithPosition:(CGPoint)position andCountOfTouches:(unint64_t)touches;
- (MRTouchSet)initWithTouch:(id)touch;
- (MRTouchSet)initWithTouches:(id)touches;
- (MRTouchSet)initWithUITouches:(id)touches inView:(id)view withLocationFactor:(CGSize)factor;
- (double)rotation;
- (double)scale;
- (id)description;
- (id)updateWithPosition:(CGPoint)position andCountOfTouches:(unint64_t)touches;
- (id)updateWithUITouches:(id)touches inView:(id)view;
- (unint64_t)countOfActiveTouches;
- (void)cancelAllTouches;
- (void)dealloc;
@end

@implementation MRTouchSet

- (MRTouchSet)init
{
  v8.receiver = self;
  v8.super_class = MRTouchSet;
  result = [(MRTouchSet *)&v8 init];
  if (result)
  {
    __asm { FMOV            V0.2D, #1.0 }

    result->_locationFactor = _Q0;
  }

  return result;
}

- (MRTouchSet)initWithTouch:(id)touch
{
  v4 = [(MRTouchSet *)self init];
  if (v4)
  {
    v4->_touches = [[NSMutableSet alloc] initWithObjects:{touch, 0}];
  }

  return v4;
}

- (MRTouchSet)initWithTouches:(id)touches
{
  v4 = [(MRTouchSet *)self init];
  if (v4)
  {
    v4->_touches = [[NSMutableSet alloc] initWithSet:touches];
  }

  return v4;
}

- (void)dealloc
{
  self->_touches = 0;

  self->_touchesForUITouches = 0;
  v3.receiver = self;
  v3.super_class = MRTouchSet;
  [(MRTouchSet *)&v3 dealloc];
}

- (void)cancelAllTouches
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  touches = self->_touches;
  v3 = [(NSMutableSet *)touches countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(touches);
        }

        [*(*(&v7 + 1) + 8 * i) setPhase:4];
      }

      v4 = [(NSMutableSet *)touches countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (MRTouchSet)initWithUITouches:(id)touches inView:(id)view withLocationFactor:(CGSize)factor
{
  height = factor.height;
  width = factor.width;
  v9 = [(MRTouchSet *)self init];
  if (v9)
  {
    v9->_touches = objc_alloc_init(NSMutableSet);
    v9->_touchesForUITouches = objc_alloc_init(NSMutableDictionary);
    v9->_locationFactor.width = width;
    v9->_locationFactor.height = height;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [touches countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        v13 = 0;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(touches);
          }

          v14 = *(*(&v19 + 1) + 8 * v13);
          v15 = [[MRTouch alloc] initWithUITouch:v14 inView:view];
          [(MRTouch *)v15 location];
          [(MRTouch *)v15 setLocation:v16 * v9->_locationFactor.width, v17 * v9->_locationFactor.height];
          [(NSMutableSet *)v9->_touches addObject:v15];
          [(NSMutableDictionary *)v9->_touchesForUITouches setObject:v15 forKey:[MURetainingKey retainingKeyWithObject:v14]];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [touches countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }
  }

  return v9;
}

- (id)updateWithUITouches:(id)touches inView:(id)view
{
  v7 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [touches count]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  touchesCopy = touches;
  v9 = [touches countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      v12 = 0;
      do
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(touchesCopy);
        }

        v13 = *(*(&v30 + 1) + 8 * v12);
        v14 = [MURetainingKey retainingKeyWithObject:v13];
        v15 = [(NSMutableDictionary *)self->_touchesForUITouches objectForKey:v14];
        if (v15)
        {
          v16 = v15;
          [v13 locationInView:view];
          v18 = v17;
          v20 = v19;
          [view contentScaleFactor];
          v22 = v18 * (v21 * self->_locationFactor.width);
          [view bounds];
          v24 = v23 - v20;
          [view contentScaleFactor];
          [(MRTouch *)v16 setLocation:v22, self->_locationFactor.height * (v25 * v24)];
          [v13 timestamp];
          [(MRTouch *)v16 setTimestamp:?];
          -[MRTouch setTapCount:](v16, "setTapCount:", [v13 tapCount]);
          -[MRTouch setPhase:](v16, "setPhase:", [v13 phase]);
LABEL_8:
          [(NSMutableSet *)v7 addObject:v16];
          goto LABEL_10;
        }

        if (![v13 phase])
        {
          v16 = [[MRTouch alloc] initWithUITouch:v13 inView:view];
          [(MRTouch *)v16 location];
          [(MRTouch *)v16 setLocation:v26 * self->_locationFactor.width, v27 * self->_locationFactor.height];
          [(NSMutableSet *)self->_touches addObject:v16];
          [(NSMutableDictionary *)self->_touchesForUITouches setObject:v16 forKey:v14];

          if (v16)
          {
            goto LABEL_8;
          }
        }

LABEL_10:
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v28 = [touchesCopy countByEnumeratingWithState:&v30 objects:v34 count:16];
      v10 = v28;
    }

    while (v28);
  }

  return v7;
}

- (MRTouchSet)initWithPosition:(CGPoint)position andCountOfTouches:(unint64_t)touches
{
  y = position.y;
  x = position.x;
  v7 = [(MRTouchSet *)self init];
  if (v7)
  {
    for (v7->_touches = objc_alloc_init(NSMutableSet); touches; --touches)
    {
      v8 = objc_alloc_init(MRTouch);
      [(MRTouch *)v8 setLocation:x, y];
      [(MRTouch *)v8 setTimestamp:MRGetCurrentTime()];
      [(MRTouch *)v8 setPhase:0];
      [(NSMutableSet *)v7->_touches addObject:v8];
    }
  }

  return v7;
}

- (id)updateWithPosition:(CGPoint)position andCountOfTouches:(unint64_t)touches
{
  y = position.y;
  x = position.x;
  v7 = [NSMutableSet setWithCapacity:touches];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  touches = self->_touches;
  v9 = [(NSMutableSet *)touches countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(touches);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        [v13 setLocation:{x, y}];
        [v13 setTimestamp:MRGetCurrentTime()];
        [v13 setPhase:1];
        [(NSMutableSet *)v7 addObject:v13];
      }

      v10 = [(NSMutableSet *)touches countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

- (unint64_t)countOfActiveTouches
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  touches = self->_touches;
  v3 = [(NSMutableSet *)touches countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v10;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v10 != v6)
      {
        objc_enumerationMutation(touches);
      }

      if ([*(*(&v9 + 1) + 8 * i) phase] < 3)
      {
        ++v5;
      }
    }

    v4 = [(NSMutableSet *)touches countByEnumeratingWithState:&v9 objects:v13 count:16];
  }

  while (v4);
  return v5;
}

- (CGPoint)centroid
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  touches = self->_touches;
  v5 = [(NSMutableSet *)touches countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(touches);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 phase] <= 2)
        {
          [v10 location];
          x = x + v11;
          [v10 location];
          y = y + v12;
          ++v7;
        }
      }

      v6 = [(NSMutableSet *)touches countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
    v13 = v7;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = x / v13;
  v15 = y / v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (double)scale
{
  [(MRTouchSet *)self centroid];
  v4 = v3;
  v6 = v5;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  touches = self->_touches;
  v8 = [(NSMutableSet *)touches countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v8)
  {
    return 1.0;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v19;
  v12 = 0.0;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v19 != v11)
      {
        objc_enumerationMutation(touches);
      }

      v14 = *(*(&v18 + 1) + 8 * i);
      if ([v14 phase] <= 2)
      {
        [v14 location];
        *&v15 = (v16 - v6) * (v16 - v6) + (v15 - v4) * (v15 - v4);
        v12 = v12 + sqrtf(*&v15);
        ++v10;
      }
    }

    v9 = [(NSMutableSet *)touches countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v9);
  result = v12 / v10;
  if (v10 <= 1)
  {
    return 1.0;
  }

  return result;
}

- (double)rotation
{
  [(MRTouchSet *)self centroid];
  v4 = v3;
  v6 = v5;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  touches = self->_touches;
  v8 = [(NSMutableSet *)touches countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v8)
  {
    return 0.0;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v20;
  v12 = 0.0;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v20 != v11)
      {
        objc_enumerationMutation(touches);
      }

      v14 = *(*(&v19 + 1) + 8 * i);
      if ([v14 phase] <= 2)
      {
        [v14 location];
        v16 = v15 - v6;
        *&v15 = v17 - v4;
        v12 = v12 + atan2f(v16, *&v15);
        ++v10;
      }
    }

    v9 = [(NSMutableSet *)touches countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v9);
  result = v12 / v10;
  if (v10 <= 1)
  {
    return 0.0;
  }

  return result;
}

- (BOOL)isActive
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  touches = self->_touches;
  v3 = [(NSMutableSet *)touches countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(touches);
        }

        if ([*(*(&v8 + 1) + 8 * v6) phase] < 3)
        {
          LOBYTE(v3) = 1;
          return v3;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v3 = [(NSMutableSet *)touches countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = v3;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

- (id)description
{
  [(MRTouchSet *)self centroid];
  v4 = v3;
  v6 = v5;
  v12.receiver = self;
  v12.super_class = MRTouchSet;
  v7 = [(MRTouchSet *)&v12 description];
  [(MRTouchSet *)self scale];
  v9 = v8;
  [(MRTouchSet *)self rotation];
  return [v7 stringByAppendingFormat:@" centroid=(%f, %f), scale=%f, rotation=%f, isActive=%d\n\ttouches=%@", v4, v6, v9, v10, -[MRTouchSet isActive](self, "isActive"), self->_touches];
}

@end