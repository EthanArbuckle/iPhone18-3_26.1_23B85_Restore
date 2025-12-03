@interface _UIPageCurl
- (BOOL)_isManualPageCurlInProgressAndUncommitted;
- (BOOL)_isPreviousCurlCompatibleWithCurlOfType:(int64_t)type inDirection:(int64_t)direction;
- (BOOL)_populateFromValue:(double *)value toValue:(double *)toValue fromState:(id)state forAnimationWithKeyPath:(id)path;
- (CGPoint)_referenceLocationForInitialLocation:(CGPoint)location direction:(int64_t)direction;
- (CGRect)_pageViewFrame:(BOOL)frame;
- (NSNumber)_wrappedManualPageCurlDirection;
- (_UIPageCurl)initWithSpineLocation:(int64_t)location andContentRect:(CGRect)rect inContentView:(id)view;
- (double)_baseAngleOffsetForState:(id)state;
- (double)_distanceToTravelWithCurrentSpineLocation;
- (double)_durationForManualCurlEndAnimationWithSuggestedVelocity:(double)velocity shouldComplete:(BOOL)complete;
- (double)_inputTimeForProgress:(double)progress distanceToTravel:(double)travel radius:(double *)radius minRadius:(double)minRadius angle:(double)angle dAngle:(double)dAngle touchLocation:(CGPoint)location state:(id)self0;
- (id)_newAnimationForState:(id)state withKeyPath:(id)path duration:(double)duration fromValue:(id)value;
- (id)_newCurlFilter;
- (int64_t)_validatedPageCurlTypeForPageCurlType:(int64_t)type inDirection:(int64_t)direction;
- (void)_beginCurlWithState:(id)state previousState:(id)previousState;
- (void)_cancelAllActiveTransitionsAndAbandonCallbacks:(BOOL)callbacks;
- (void)_cancelTransitionWithState:(id)state invalidatingPageCurl:(BOOL)curl;
- (void)_endManualCurlAtLocation:(CGPoint)location withSuggestedVelocity:(double)velocity shouldComplete:(BOOL)complete;
- (void)_enqueueCurlOfType:(int64_t)type fromLocation:(CGPoint)location inDirection:(int64_t)direction withView:(id)view revealingView:(id)revealingView completion:(id)completion finally:(id)finally;
- (void)_ensureCurlFilterOnLayer:(id)layer;
- (void)_pageCurlAnimationDidStop:(id)stop withState:(id)state;
- (void)_setContentRect:(CGRect)rect;
- (void)_updateCurlFromState:(id)state withTime:(double)time radius:(double)radius angle:(double)angle addingAnimations:(id)animations;
- (void)_updateManualCurlToLocation:(CGPoint)location;
- (void)_updatedInputsFromState:(id)state forLocation:(CGPoint)location time:(double *)time radius:(double *)radius angle:(double *)angle;
- (void)dealloc;
@end

@implementation _UIPageCurl

- (_UIPageCurl)initWithSpineLocation:(int64_t)location andContentRect:(CGRect)rect inContentView:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  v33.receiver = self;
  v33.super_class = _UIPageCurl;
  v14 = [(_UIPageCurl *)&v33 init];
  if (v14)
  {
    if (location > 0x20 || ((1 << location) & 0x10001011ELL) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v14 file:@"_UIPageCurl.m" lineNumber:500 description:{@"'%ld' is not a permissible spine location", location}];
    }

    v14->_spineLocation = location;
    v14->_contentRect.origin.x = x;
    v14->_contentRect.origin.y = y;
    v14->_contentRect.size.width = width;
    v14->_contentRect.size.height = height;
    objc_storeStrong(&v14->_contentView, view);
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingStateQueue = v14->_pendingStateQueue;
    v14->_pendingStateQueue = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    activeStateQueue = v14->_activeStateQueue;
    v14->_activeStateQueue = v18;

    v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    completedStates = v14->_completedStates;
    v14->_completedStates = v20;

    spineLocation = v14->_spineLocation;
    v24 = v14->_contentRect.origin.x;
    v23 = v14->_contentRect.origin.y;
    v26 = v14->_contentRect.size.width;
    v25 = v14->_contentRect.size.height;
    v27 = 3.14159265;
    if (spineLocation > 7)
    {
      if (spineLocation == 8)
      {
        v28 = CGRectGetHeight(v14->_contentRect) * 0.5;
        goto LABEL_17;
      }

      if (spineLocation != 16)
      {
        if (spineLocation != 32)
        {
          goto LABEL_19;
        }

LABEL_13:
        v28 = CGRectGetHeight(v14->_contentRect);
LABEL_17:
        v35.origin.x = v24;
        v35.origin.y = v23;
        v35.size.width = v26;
        v35.size.height = v25;
        v29 = CGRectGetWidth(v35);
        goto LABEL_18;
      }
    }

    else if (spineLocation != 1)
    {
      if (spineLocation != 2)
      {
        if (spineLocation == 4)
        {
          v28 = CGRectGetWidth(v14->_contentRect) * 0.5;
LABEL_15:
          v34.origin.x = v24;
          v34.origin.y = v23;
          v34.size.width = v26;
          v34.size.height = v25;
          v29 = CGRectGetHeight(v34);
LABEL_18:
          v30 = v28;
          v31 = v29 * 0.5;
          v27 = atan2f(v30, v31);
        }

LABEL_19:
        v14->_manualPageCurlMaxDAngle = v27;
        goto LABEL_2;
      }

      goto LABEL_13;
    }

    v28 = CGRectGetWidth(v14->_contentRect);
    goto LABEL_15;
  }

LABEL_2:

  return v14;
}

- (void)dealloc
{
  [(_UIPageCurl *)self _cancelAllActiveTransitionsAndAbandonCallbacks:1];
  v3.receiver = self;
  v3.super_class = _UIPageCurl;
  [(_UIPageCurl *)&v3 dealloc];
}

- (BOOL)_isManualPageCurlInProgressAndUncommitted
{
  manualPageCurlState = self->_manualPageCurlState;
  if (manualPageCurlState)
  {
    LOBYTE(manualPageCurlState) = [(_UIPageCurlState *)manualPageCurlState curlState]< 5;
  }

  return manualPageCurlState;
}

- (NSNumber)_wrappedManualPageCurlDirection
{
  manualPageCurlState = self->_manualPageCurlState;
  if (manualPageCurlState)
  {
    manualPageCurlState = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(manualPageCurlState, "transitionDirection")}];
    v2 = vars8;
  }

  return manualPageCurlState;
}

- (void)_setContentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v21 = *MEMORY[0x1E69E9840];
  if (!CGRectEqualToRect(self->_contentRect, rect))
  {
    self->_contentRect.origin.x = x;
    self->_contentRect.origin.y = y;
    self->_contentRect.size.width = width;
    self->_contentRect.size.height = height;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_activeStateQueue;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          frontPageView = [v13 frontPageView];
          backPageView = [v13 backPageView];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }
}

- (CGRect)_pageViewFrame:(BOOL)frame
{
  x = self->_contentRect.origin.x;
  y = self->_contentRect.origin.y;
  width = self->_contentRect.size.width;
  height = self->_contentRect.size.height;
  spineLocation = self->_spineLocation;
  if (spineLocation == 8)
  {
    height = CGRectGetHeight(self->_contentRect) * 0.5;
    if (!frame)
    {
      y = CGRectGetMidY(self->_contentRect);
    }
  }

  else if (spineLocation == 4)
  {
    width = CGRectGetWidth(self->_contentRect) * 0.5;
    if (!frame)
    {
      x = CGRectGetMidX(self->_contentRect);
    }
  }

  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (id)_newCurlFilter
{
  v2 = objc_alloc(MEMORY[0x1E6979378]);
  v3 = [v2 initWithType:*MEMORY[0x1E6979CD8]];
  [v3 setName:@"curl"];
  [v3 setCachesInputImage:1];
  v4 = +[UIColor whiteColor];
  [v3 setValue:objc_msgSend(v4 forKeyPath:{"CGColor"), @"inputFrontColor"}];

  v5 = [UIColor colorWithWhite:0.956862745 alpha:0.8];
  [v3 setValue:objc_msgSend(v5 forKeyPath:{"CGColor"), @"inputBackColor0"}];

  v6 = [UIColor colorWithWhite:0.7 alpha:1.0];
  [v3 setValue:objc_msgSend(v6 forKeyPath:{"CGColor"), @"inputBackColor1"}];

  v7 = [UIColor colorWithWhite:0.15 alpha:1.0];
  [v3 setValue:objc_msgSend(v7 forKeyPath:{"CGColor"), @"inputShadowColor"}];

  return v3;
}

- (id)_newAnimationForState:(id)state withKeyPath:(id)path duration:(double)duration fromValue:(id)value
{
  stateCopy = state;
  pathCopy = path;
  valueCopy = value;
  v12 = objc_alloc_init(MEMORY[0x1E6979318]);
  [v12 setKeyPath:pathCopy];
  [v12 setDuration:UIAnimationDragCoefficient() * duration];
  [v12 setFillMode:*MEMORY[0x1E69797D8]];
  if (valueCopy)
  {
    [v12 setFromValue:valueCopy];
  }

  if (![pathCopy isEqualToString:@"filters.curl.inputTime"])
  {
    if ([pathCopy isEqualToString:@"filters.curl.inputRadius"])
    {
      v14 = MEMORY[0x1E69793D0];
      v15 = &kUIPageCurlSmoothControlPoints;
    }

    else
    {
      if (![pathCopy isEqualToString:@"filters.curl.inputAngle"])
      {
        goto LABEL_13;
      }

      v16 = MEMORY[0x1E69793D0];
      if ([stateCopy curlType] >= 3)
      {
        v15 = &kUIPageCurlEaseInControlPoints;
      }

      else
      {
        v15 = &kUIPageCurlEaseOutControlPoints;
      }

      v14 = v16;
    }

    v17 = [v14 uiFunctionWithControlPoints:v15];
    [v12 setTimingFunction:v17];

    goto LABEL_13;
  }

  v13 = [MEMORY[0x1E69793D0] uiFunctionWithControlPoints:&kUIPageCurlSmoothControlPoints];
  [v12 setTimingFunction:v13];

  [v12 setDelegate:stateCopy];
LABEL_13:

  return v12;
}

- (double)_baseAngleOffsetForState:(id)state
{
  stateCopy = state;
  v6 = stateCopy;
  spineLocation = self->_spineLocation;
  v8 = 3.14159265;
  if (spineLocation == 1)
  {
    goto LABEL_19;
  }

  if (spineLocation == 4)
  {
    if (![stateCopy transitionDirection])
    {
      goto LABEL_19;
    }

    spineLocation = self->_spineLocation;
  }

  if (spineLocation == 3)
  {
    goto LABEL_19;
  }

  if (spineLocation == 16)
  {
    goto LABEL_18;
  }

  if (spineLocation != 4)
  {
    goto LABEL_10;
  }

  if ([v6 transitionDirection] == 1)
  {
LABEL_18:
    v8 = 0.0;
    goto LABEL_19;
  }

  spineLocation = self->_spineLocation;
LABEL_10:
  v8 = 4.71238898;
  if (spineLocation != 2)
  {
    if (spineLocation == 8)
    {
      if (![v6 transitionDirection])
      {
        goto LABEL_19;
      }

      spineLocation = self->_spineLocation;
    }

    v8 = 1.57079633;
    if (spineLocation != 32 && (spineLocation != 8 || [v6 transitionDirection] != 1))
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPageCurl.m" lineNumber:602 description:@"Not implemented yet!"];

      goto LABEL_18;
    }
  }

LABEL_19:

  return v8;
}

- (BOOL)_populateFromValue:(double *)value toValue:(double *)toValue fromState:(id)state forAnimationWithKeyPath:(id)path
{
  stateCopy = state;
  pathCopy = path;
  if ([pathCopy isEqualToString:@"filters.curl.inputTime"])
  {
    if ([stateCopy curlType] <= 2)
    {
      if (value)
      {
        *value = 0.0;
      }

      if (toValue)
      {
        *toValue = 1.0;
      }
    }

    else
    {
      if (value)
      {
        *value = 1.0;
      }

      if (toValue)
      {
        *toValue = 0.0;
      }
    }

    goto LABEL_67;
  }

  if ([pathCopy isEqualToString:@"filters.curl.inputRadius"])
  {
    spineLocation = self->_spineLocation;
    if (spineLocation <= 0x20 && ((1 << spineLocation) & 0x100000104) != 0)
    {
      Height = CGRectGetHeight(self->_contentRect);
    }

    else
    {
      Height = CGRectGetWidth(self->_contentRect);
    }

    v17 = Height;
    v18 = self->_spineLocation;
    if (v18 == 8 || v18 == 4)
    {
      if (value)
      {
        if ([stateCopy curlType] == 1)
        {
          v19 = 150.0;
        }

        else
        {
          curlType = [stateCopy curlType];
          v19 = v17 * 0.0203252033;
          if (curlType == 4)
          {
            v19 = 150.0;
          }
        }

        *value = v19;
      }

      if (!toValue)
      {
        goto LABEL_67;
      }

      curlType2 = [stateCopy curlType];
      v23 = 1.0;
      if (curlType2 != 1)
      {
        curlType3 = [stateCopy curlType];
        v23 = v17 * 0.00101626016;
        if (curlType3 == 4)
        {
          v23 = 1.0;
        }
      }
    }

    else
    {
      if (value)
      {
        if ([stateCopy curlType] == 1)
        {
          v20 = 0.152439024;
        }

        else
        {
          v20 = dbl_18A679380[[stateCopy curlType] == 4];
        }

        *value = v17 * v20;
      }

      if (!toValue)
      {
        goto LABEL_67;
      }

      v23 = v17 * 0.304878049;
    }

    goto LABEL_66;
  }

  if (![pathCopy isEqualToString:@"filters.curl.inputAngle"])
  {
    goto LABEL_70;
  }

  v15 = self->_spineLocation;
  v16 = 3.14159265;
  if (v15 != 1)
  {
    if (v15 == 4)
    {
      if (![stateCopy transitionDirection])
      {
        goto LABEL_54;
      }

      v15 = self->_spineLocation;
    }

    if (v15 != 3)
    {
      if (v15 == 16)
      {
LABEL_24:
        v16 = 0.0;
        goto LABEL_54;
      }

      if (v15 == 4)
      {
        if ([stateCopy transitionDirection] == 1)
        {
          goto LABEL_24;
        }

        v15 = self->_spineLocation;
      }

      v16 = 4.71238898;
      if (v15 == 2)
      {
        goto LABEL_54;
      }

      if (v15 == 8)
      {
        if (![stateCopy transitionDirection])
        {
          goto LABEL_54;
        }

        v15 = self->_spineLocation;
      }

      v16 = 1.57079633;
      if (v15 == 32 || v15 == 8 && [stateCopy transitionDirection] == 1)
      {
        goto LABEL_54;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPageCurl.m" lineNumber:640 description:@"Not implemented yet!"];

LABEL_70:
      v29 = 0;
      goto LABEL_68;
    }
  }

LABEL_54:
  if (value)
  {
    v25 = 0.785398163;
    if (self->_spineLocation != 3)
    {
      v25 = 0.0;
    }

    v26 = v16 + v25;
    if ([stateCopy curlType] == 1 || objc_msgSend(stateCopy, "curlType") == 4)
    {
      v27 = dbl_18A679370[v16 > 1.57079633];
    }

    else
    {
      v27 = -0.174532925;
    }

    *value = v26 + v27;
  }

  if (!toValue)
  {
    goto LABEL_67;
  }

  v28 = 0.785398163;
  if (self->_spineLocation != 3)
  {
    v28 = 0.0;
  }

  v23 = v16 + v28;
LABEL_66:
  *toValue = v23;
LABEL_67:
  v29 = 1;
LABEL_68:

  return v29;
}

- (void)_ensureCurlFilterOnLayer:(id)layer
{
  layerCopy = layer;
  if (([layerCopy uiHasFilterWithName:@"curl"] & 1) == 0)
  {
    _newCurlFilter = [(_UIPageCurl *)self _newCurlFilter];
    v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{_newCurlFilter, 0}];
    [layerCopy setFilters:v5];
  }
}

- (double)_inputTimeForProgress:(double)progress distanceToTravel:(double)travel radius:(double *)radius minRadius:(double)minRadius angle:(double)angle dAngle:(double)dAngle touchLocation:(CGPoint)location state:(id)self0
{
  stateCopy = state;
  v110 = *radius;
  curlType = [stateCopy curlType];
  spineLocation = self->_spineLocation;
  transitionDirection = [stateCopy transitionDirection];
  v16 = -2.0;
  if (curlType < 3)
  {
    v16 = 0.0;
  }

  if (spineLocation)
  {
    if (!transitionDirection)
    {
LABEL_8:
      v16 = 0.0;
      if (curlType < 3)
      {
        v16 = -2.0;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v17 = (spineLocation >> 4) & 1;
    if (spineLocation == 4)
    {
      LOBYTE(v17) = 1;
    }

    if (!transitionDirection && (v17 & 1) != 0)
    {
      goto LABEL_8;
    }
  }

  if (spineLocation <= 0x20 && ((1 << spineLocation) & 0x100000104) != 0)
  {
    v16 = -3.0;
    if (curlType < 3 != (transitionDirection == 0))
    {
      v16 = -1.0;
    }
  }

LABEL_18:
  v19 = v16;
  x = self->_contentRect.origin.x;
  y = self->_contentRect.origin.y;
  width = self->_contentRect.size.width;
  height = self->_contentRect.size.height;
  if (v16)
  {
    CGAffineTransformMakeTranslation(&t1, x - (x + width * 0.5), y - (y + height * 0.5));
    CGAffineTransformMakeRotation(&t2, -1.57079633);
    CGAffineTransformConcat(&v113, &t1, &t2);
    a = v113.a;
    b = v113.b;
    c = v113.c;
    d = v113.d;
    tx = v113.tx;
    ty = v113.ty;
    v114.origin.x = x;
    v114.origin.y = y;
    v114.size.width = width;
    v114.size.height = height;
    v115 = CGRectApplyAffineTransform(v114, &v113);
    x = v115.origin.x;
    y = v115.origin.y;
    width = v115.size.width;
    height = v115.size.height;
    CGAffineTransformMakeTranslation(&t1, v115.origin.x + v115.size.width * 0.5 - v115.origin.x, v115.origin.y + v115.size.height * 0.5 - v115.origin.y);
    t2.a = a;
    t2.b = b;
    t2.c = c;
    t2.d = d;
    t2.tx = tx;
    t2.ty = ty;
    CGAffineTransformConcat(&v113, &t2, &t1);
    v25 = *&v113.a;
    v24 = *&v113.c;
    v27 = v113.tx;
    v26 = v113.ty;
  }

  else
  {
    v25 = *MEMORY[0x1E695EFD0];
    v24 = *(MEMORY[0x1E695EFD0] + 16);
    v27 = *(MEMORY[0x1E695EFD0] + 32);
    v26 = *(MEMORY[0x1E695EFD0] + 40);
  }

  if (v19 > -2)
  {
    v33 = *(&v25 + 1);
    v34 = *(&v24 + 1);
  }

  else
  {
    v116.origin.x = x;
    v116.origin.y = y;
    v116.size.width = width;
    v116.size.height = height;
    v98 = v24;
    v101 = v25;
    v32 = CGRectGetWidth(v116);
    CGAffineTransformMakeTranslation(&v113, -v32, 0.0);
    *&t2.a = v101;
    *&t2.c = v98;
    t2.tx = v27;
    t2.ty = v26;
    CGAffineTransformConcat(&t1, &t2, &v113);
    CGAffineTransformMakeScale(&t2, -1.0, 1.0);
    CGAffineTransformConcat(&v113, &t1, &t2);
    *&v25 = v113.a;
    v33 = v113.b;
    *&v24 = v113.c;
    v34 = v113.d;
    v27 = v113.tx;
    v26 = v113.ty;
  }

  if (dAngle == 0.0)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = v19 * 1.57079633 + angle;
    if (v35 < 0.0)
    {
      v35 = -v35;
    }
  }

  v108 = v35;
  v95 = location.y * *&v24 + location.x * *&v25;
  contentRect = self->_contentRect;
  v36 = v26 + location.y * v34 + location.x * v33;
  *&v113.a = v25;
  v113.b = v33;
  *&v113.c = v24;
  v113.d = v34;
  v102 = v27;
  v113.tx = v27;
  v113.ty = v26;
  v118 = CGRectApplyAffineTransform(contentRect, &v113);
  v37 = v118.origin.x;
  v38 = v118.origin.y;
  v39 = v118.size.width;
  v40 = v118.size.height;
  [stateCopy referenceLocation];
  v105 = v39;
  v96 = v37;
  v99 = v38;
  if (v36 < v26 + v33 * v41 + v34 * v42)
  {
    v119.origin.x = v37;
    v119.origin.y = v38;
    v119.size.width = v39;
    v119.size.height = v40;
    MinY = CGRectGetMinY(v119);
    v120.origin.x = v37;
    v120.origin.y = v38;
    v120.size.width = v39;
    v120.size.height = v40;
    v36 = MinY + CGRectGetMaxY(v120) - v36;
  }

  v103 = v102 + v95;
  if (dAngle == 0.0)
  {
    v53 = travel * 0.5;
    v52 = progress * travel - travel * 0.5;
    v55 = -v52;
    if (v52 >= 0.0)
    {
      v55 = progress * travel - travel * 0.5;
    }

    v56 = (v53 - v55 + v110 * -3.14159265) * 0.5;
    if (v52 >= 0.0)
    {
      v57 = travel * 0.5;
    }

    else
    {
      v57 = progress * travel;
    }

    v51 = v57 - v56;
    v54 = progress * travel + progress * travel;
  }

  else
  {
    v44 = v108;
    v45 = __sincosf_stret(v44);
    cosval = v45.__cosval;
    v47 = v108 * 0.5;
    v48 = sinf(v47);
    v49 = v110 * 6.28318531 * (v45.__cosval + 1.0 + (((1.0 / v45.__sinval) * (1.0 / v45.__sinval)) + ((1.0 / v45.__sinval) * (1.0 / v45.__sinval))) * powf(v48, 6.0)) + v36 * 8.0 * (cosval * cosval) * v45.__sinval - v110 * 8.0 * (v45.__sinval * v45.__sinval);
    v50 = v108 * 4.0;
    v51 = (v103 / v45.__sinval * sinf(v50) + v49) * ((1.0 / cosval) * (1.0 / cosval)) * 0.125;
    v52 = 0.0;
    v53 = 0.0;
    v54 = 0.0;
  }

  if (v108 >= 0.0)
  {
    v58 = v108;
  }

  else
  {
    v58 = -v108;
  }

  v59 = self->_spineLocation;
  v60 = v105;
  v61 = v96;
  v62 = v99;
  if (v59 == 8 || v59 == 4)
  {
    v63 = v40;
    v64 = CGRectGetWidth(*&v61) * 0.5;
  }

  else
  {
    v65 = v40;
    v64 = CGRectGetWidth(*&v61);
  }

  rect = v58;
  v66 = v58;
  v67 = __sincosf_stret(v66);
  v68 = v51 * v67.__cosval + v51 * v67.__sinval * tanf(v66);
  v69 = v64 * 4.0;
  if (self->_spineLocation != 3)
  {
    v69 = v64;
  }

  if (v68 > v69)
  {
    v51 = v64 * v67.__cosval;
    if (dAngle == 0.0)
    {
      v85 = v52 + v53 + v51 + v51 - v54;
      if (v52 >= 0.0)
      {
        v85 = v51 + v51 - v53 - v52;
      }

      minRadiusCopy = v85 / 3.14159265;
    }

    else
    {
      v70 = v108 * 4.0;
      v71 = v103 * sinf(v70);
      v72 = v108;
      v73 = __sincosf_stret(v72);
      v74 = 1.0 / v73.__sinval * v71;
      v75 = 1.0 / v73.__cosval;
      v76 = v75;
      v77 = (v76 * v76);
      v78 = v51 * 8.0 - v74 * v77 - v36 * 8.0 * v73.__sinval;
      v79 = tanf(v72);
      v80 = v75 * 3.14159265 + v77 * 3.14159265 - (v79 * v79) * 4.0;
      v81 = v108 * 0.5;
      v82 = sinf(v81);
      v83 = powf(v82, 6.0) * 6.28318531 * ((1.0 / v73.__sinval) * (1.0 / v73.__sinval)) * ((1.0 / v73.__cosval) * (1.0 / v73.__cosval)) + v80;
      minRadiusCopy = v78 / (v83 + v83);
    }

    if (minRadiusCopy < minRadius)
    {
      minRadiusCopy = minRadius;
    }

    v110 = minRadiusCopy;
    *radius = minRadiusCopy;
  }

  pageDiagonalLength = self->_pageDiagonalLength;
  v87 = rect - self->_pageDiagonalAngle;
  v88 = pageDiagonalLength * cosf(v87);
  v89 = -v88;
  if (v88 >= 0.0)
  {
    v89 = v88;
  }

  v90 = v51 / (v110 + v89);

  return v90;
}

- (double)_distanceToTravelWithCurrentSpineLocation
{
  spineLocation = self->_spineLocation;
  if (spineLocation <= 3)
  {
    if (spineLocation != 1)
    {
      if (spineLocation == 2)
      {
LABEL_14:
        Height = CGRectGetHeight(self->_contentRect);
        return Height + Height;
      }

      if (spineLocation != 3)
      {
LABEL_16:
        Width = CGRectGetWidth(self->_contentRect);
        v11 = CGRectGetHeight(self->_contentRect);
        Height = hypotf(Width, v11);
        return Height + Height;
      }
    }

LABEL_15:
    Height = CGRectGetWidth(self->_contentRect);
    return Height + Height;
  }

  if (spineLocation > 15)
  {
    if (spineLocation != 16)
    {
      if (spineLocation == 32)
      {
        goto LABEL_14;
      }

      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (spineLocation != 4)
  {
    if (spineLocation == 8)
    {
      x = self->_contentRect.origin.x;
      y = self->_contentRect.origin.y;
      v6 = self->_contentRect.size.width;
      v7 = self->_contentRect.size.height;

      return CGRectGetHeight(*&x);
    }

    goto LABEL_16;
  }

  v12 = self->_contentRect.origin.x;
  v13 = self->_contentRect.origin.y;
  v14 = self->_contentRect.size.width;
  v15 = self->_contentRect.size.height;

  return CGRectGetWidth(*&v12);
}

- (void)_updatedInputsFromState:(id)state forLocation:(CGPoint)location time:(double *)time radius:(double *)radius angle:(double *)angle
{
  y = location.y;
  x = location.x;
  stateCopy = state;
  v14 = self->_contentRect.origin.x;
  v15 = self->_contentRect.origin.y;
  width = self->_contentRect.size.width;
  height = self->_contentRect.size.height;
  v111.origin.x = v14;
  v111.origin.y = v15;
  v111.size.width = width;
  v111.size.height = height;
  MaxX = CGRectGetMaxX(v111);
  v112.origin.x = v14;
  v112.origin.y = v15;
  v112.size.width = width;
  v112.size.height = height;
  MinX = CGRectGetMinX(v112);
  if (MinX < x)
  {
    MinX = x;
  }

  if (MaxX <= MinX)
  {
    v20 = MaxX;
  }

  else
  {
    v20 = MinX;
  }

  v113.origin.x = v14;
  v113.origin.y = v15;
  v113.size.width = width;
  v113.size.height = height;
  MaxY = CGRectGetMaxY(v113);
  v114.origin.x = v14;
  v114.origin.y = v15;
  v114.size.width = width;
  v114.size.height = height;
  MinY = CGRectGetMinY(v114);
  if (MinY < y)
  {
    MinY = y;
  }

  if (MaxY <= MinY)
  {
    v23 = MaxY;
  }

  else
  {
    v23 = MinY;
  }

  [stateCopy referenceLocation];
  v25 = v24;
  v27 = v26;
  spineLocation = self->_spineLocation;
  transitionDirection = [stateCopy transitionDirection];
  v30 = transitionDirection;
  v32 = self->_contentRect.origin.x;
  v31 = self->_contentRect.origin.y;
  v34 = self->_contentRect.size.width;
  v33 = self->_contentRect.size.height;
  if (spineLocation)
  {
    v40 = CGRectGetMinX(self->_contentRect);
    v115.origin.x = v32;
    v115.origin.y = v31;
    v115.size.width = v34;
    v115.size.height = v33;
    v25 = v40 - CGRectGetWidth(v115);
  }

  else
  {
    if (spineLocation == 4)
    {
      v35 = self->_contentRect.origin.x;
      v36 = self->_contentRect.origin.y;
      v37 = self->_contentRect.size.width;
      v38 = self->_contentRect.size.height;
      if (transitionDirection)
      {
        v39 = CGRectGetMaxX(*&v35);
      }

      else
      {
        v39 = CGRectGetMinX(*&v35);
      }

      v25 = v39;
      goto LABEL_30;
    }

    if ((spineLocation & 0x10) != 0)
    {
      v47 = CGRectGetMaxX(self->_contentRect);
      v118.origin.x = v32;
      v118.origin.y = v31;
      v118.size.width = v34;
      v118.size.height = v33;
      v25 = v47 + CGRectGetWidth(v118);
    }
  }

  if (spineLocation == 3 || (spineLocation & 2) == 0)
  {
    if (spineLocation == 8)
    {
      v42 = v32;
      v43 = v31;
      v44 = v34;
      v45 = v33;
      if (v30)
      {
        v46 = CGRectGetMaxY(*&v42);
      }

      else
      {
        v46 = CGRectGetMinY(*&v42);
      }

      v27 = v46;
    }

    else if ((spineLocation & 0x20) != 0)
    {
      v119.origin.x = v32;
      v119.origin.y = v31;
      v119.size.width = v34;
      v119.size.height = v33;
      v48 = CGRectGetMaxY(v119);
      v120.origin.x = v32;
      v120.origin.y = v31;
      v120.size.width = v34;
      v120.size.height = v33;
      v27 = v48 + CGRectGetHeight(v120);
    }
  }

  else
  {
    v116.origin.x = v32;
    v116.origin.y = v31;
    v116.size.width = v34;
    v116.size.height = v33;
    v41 = CGRectGetMinY(v116);
    v117.origin.x = v32;
    v117.origin.y = v31;
    v117.size.width = v34;
    v117.size.height = v33;
    v27 = v41 - CGRectGetHeight(v117);
  }

LABEL_30:
  [(_UIPageCurl *)self _distanceToTravelWithCurrentSpineLocation];
  v50 = v49;
  v51 = self->_spineLocation;
  v106 = v25;
  v107 = v27;
  if (v51 > 0x20)
  {
    goto LABEL_107;
  }

  if (((1 << v51) & 0x1001A) == 0)
  {
    if (((1 << v51) & 0x100000104) != 0)
    {
      v52 = v23 - v27;
      goto LABEL_35;
    }

LABEL_107:
    v53 = sqrt((v25 - v20) * (v25 - v20) + (v27 - v23) * (v27 - v23));
    goto LABEL_38;
  }

  v52 = v20 - v25;
LABEL_35:
  if (v52 < 0.0)
  {
    v52 = -v52;
  }

  v53 = v52 / v50;
LABEL_38:
  v54 = 0.0;
  v55 = 1.0;
  v56 = fmin(fmax(v53, 0.0), 1.0);
  if ([stateCopy curlType] != 1)
  {
    if ([stateCopy curlType] == 4)
    {
      v54 = 0.0;
    }

    else
    {
      v54 = 0.1;
    }
  }

  v57 = 1.0 - v56;
  if ([stateCopy curlType] == 1 || objc_msgSend(stateCopy, "curlType") == 4)
  {
    v58 = self->_spineLocation;
    goto LABEL_45;
  }

  v58 = self->_spineLocation;
  if (v58 != 4)
  {
    if (v58 == 8)
    {
      v55 = 1.0;
    }

    else
    {
      v55 = 0.9;
    }

LABEL_45:
    if (v58 != 4 && (v58 & 0x11) == 0)
    {
      v102 = v55;
      if (v58 == 2 || v58 == 8 && ![stateCopy transitionDirection])
      {
        v71 = CGRectGetMaxY(self->_contentRect) - v50 * v54;
        if (v23 <= v71)
        {
          v72 = v23;
        }

        else
        {
          v72 = v71;
        }

        [stateCopy referenceLocation];
        v74 = v73 - v20;
        [stateCopy referenceLocation];
        v76 = atan2(v74, v72 - v75) + 1.57079633;
        if (v76 >= 0.0)
        {
          v65 = v76;
        }

        else
        {
          v65 = v76 + 6.28318531;
        }
      }

      else
      {
        v59 = v50 * v54 + CGRectGetMinY(self->_contentRect);
        if (v23 >= v59)
        {
          v60 = v23;
        }

        else
        {
          v60 = v59;
        }

        [stateCopy referenceLocation];
        v62 = v20 - v61;
        [stateCopy referenceLocation];
        v64 = atan2(v62, v63 - v60) + 4.71238898;
        if (v64 + -6.28318531 <= 0.0)
        {
          v65 = v64;
        }

        else
        {
          v65 = v64 + -6.28318531;
        }
      }

      goto LABEL_77;
    }

    if (v58 == 1)
    {
      goto LABEL_63;
    }

    if (v58 != 4)
    {
      goto LABEL_62;
    }
  }

  if (![stateCopy transitionDirection])
  {
LABEL_63:
    v104 = v55;
    v66 = CGRectGetMaxX(self->_contentRect) - v50 * v54;
    if (v20 <= v66)
    {
      v67 = v20;
    }

    else
    {
      v67 = v66;
    }

    [stateCopy referenceLocation];
    v69 = v68 - v23;
    [stateCopy referenceLocation];
    v65 = atan2(v69, v70 - v67) + 3.14159265;
    goto LABEL_77;
  }

  v58 = self->_spineLocation;
LABEL_62:
  if (v58 == 3)
  {
    goto LABEL_63;
  }

  v105 = v55;
  v77 = v50 * v54 + CGRectGetMinX(self->_contentRect);
  if (v20 >= v77)
  {
    v78 = v20;
  }

  else
  {
    v78 = v77;
  }

  [stateCopy referenceLocation];
  v80 = v23 - v79;
  [stateCopy referenceLocation];
  v65 = atan2(v80, v78 - v81);
LABEL_77:
  [(_UIPageCurl *)self _baseAngleOffsetForState:stateCopy];
  v83 = v82;
  manualPageCurlMaxDAngle = self->_manualPageCurlMaxDAngle;
  v85 = -manualPageCurlMaxDAngle;
  if (v65 - v83 > -manualPageCurlMaxDAngle)
  {
    v85 = v65 - v83;
  }

  if (manualPageCurlMaxDAngle <= v85)
  {
    v86 = self->_manualPageCurlMaxDAngle;
  }

  else
  {
    v86 = v85;
  }

  v109 = 0.0;
  v110 = 0.0;
  [(_UIPageCurl *)self _fromValue:&v110 toValue:&v109 fromState:stateCopy forAnimationWithKeyPath:@"filters.curl.inputRadius"];
  [stateCopy curlType];
  v87 = self->_spineLocation;
  v88 = v50 * 0.152439024;
  v89 = v87 == 4 || v87 == 8;
  v90 = v89;
  v91 = 0.25;
  if (v89)
  {
    v91 = 0.5;
  }

  if (v57 >= v91)
  {
    v93 = 0.304878049;
    if (v90)
    {
      v93 = 0.00101626016;
    }

    v92 = v88 + (v57 - v91) / (1.0 - v91) * (v50 * v93 - v88);
  }

  else
  {
    v92 = v110 + v57 / v91 * (v88 - v110);
  }

  if ([stateCopy curlType] == 1 || objc_msgSend(stateCopy, "curlType") == 4)
  {
    if (v109 <= v110)
    {
      v94 = v109;
    }

    else
    {
      v94 = v110;
    }

    v95 = self->_spineLocation;
  }

  else
  {
    v96 = self->_spineLocation;
    if (v96 <= 0x20 && ((1 << v96) & 0x100000104) != 0)
    {
      v97 = CGRectGetHeight(self->_contentRect);
    }

    else
    {
      v97 = CGRectGetWidth(self->_contentRect);
    }

    v95 = self->_spineLocation;
    if (v95 == 8 || v95 == 4)
    {
      v97 = v97 * 0.5;
    }

    v94 = v97 * 0.0879120879;
  }

  v98 = v83 + v86;
  if (v95 == 8 || v95 == 4)
  {
    v99 = sqrt((v106 - v20) * (v106 - v20) + (v107 - v23) * (v107 - v23)) / v50;
    if (v99 <= 0.25)
    {
      v94 = ((0.25 - v99) * -4.0 + 1.0) * v94;
    }
  }

  v100 = v110;
  if (v110 > v109)
  {
    v100 = v109;
  }

  if (v100 > v94)
  {
    v100 = v94;
  }

  if (v100 < v92)
  {
    v100 = v92;
  }

  if (v50 * 0.2 <= v100)
  {
    v100 = v50 * 0.2;
  }

  v108 = v100;
  [_UIPageCurl _inputTimeForProgress:"_inputTimeForProgress:distanceToTravel:radius:minRadius:angle:dAngle:touchLocation:state:" distanceToTravel:&v108 radius:stateCopy minRadius:v57 angle:v50 dAngle:? touchLocation:? state:?];
  if (time)
  {
    if (v54 >= v101)
    {
      v101 = v54;
    }

    if (v103 <= v101)
    {
      v101 = v103;
    }

    *time = v101;
  }

  if (radius)
  {
    *radius = v108;
  }

  if (angle)
  {
    *angle = v98;
  }
}

- (void)_updateCurlFromState:(id)state withTime:(double)time radius:(double)radius angle:(double)angle addingAnimations:(id)animations
{
  v56 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  animationsCopy = animations;
  v14 = objc_alloc(MEMORY[0x1E695DEC8]);
  frontPageView = [stateCopy frontPageView];
  layer = [frontPageView layer];
  backPageView = [stateCopy backPageView];
  layer2 = [backPageView layer];
  v19 = [v14 initWithObjects:{layer, layer2, 0}];

  v38 = animationsCopy;
  v20 = [animationsCopy count];
  _animationKeyPaths = [(_UIPageCurl *)self _animationKeyPaths];
  [MEMORY[0x1E6979518] activate];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v19;
  v42 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v42)
  {
    v21 = animationsCopy;
    if (!v20)
    {
      v21 = _animationKeyPaths;
    }

    v40 = v21;
    v41 = *v51;
    do
    {
      v22 = 0;
      do
      {
        if (*v51 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v43 = v22;
        v23 = *(*(&v50 + 1) + 8 * v22);
        v24 = v40;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v44 = v24;
        v25 = [v24 countByEnumeratingWithState:&v46 objects:v54 count:16];
        if (v25)
        {
          v26 = v25;
          v45 = *v47;
          do
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v47 != v45)
              {
                objc_enumerationMutation(v44);
              }

              v28 = *(*(&v46 + 1) + 8 * i);
              if (v20)
              {
                keyPath = [*(*(&v46 + 1) + 8 * i) keyPath];
              }

              else
              {
                keyPath = v28;
              }

              v30 = keyPath;
              v31 = _UIPageCurlFilterPropertyNameForAnimationKeyPath(keyPath);
              v32 = [v30 isEqualToString:@"filters.curl.inputTime"];
              angleCopy = time;
              if ((v32 & 1) == 0)
              {
                if ([v30 isEqualToString:{@"filters.curl.inputRadius", time}])
                {
                  angleCopy = radius;
                }

                else
                {
                  angleCopy = angle;
                }
              }

              *&angleCopy = angleCopy;
              v34 = [MEMORY[0x1E696AD98] numberWithFloat:angleCopy];
              if (v20)
              {
                v35 = v28;
                if ([stateCopy curlState] == 1 || objc_msgSend(stateCopy, "curlState") == 5)
                {
                  [v35 setToValue:v34];
                }

                [v23 addAnimation:v35 forKey:v31];
                if ([stateCopy curlState] == 1 || objc_msgSend(stateCopy, "curlState") == 3 || objc_msgSend(stateCopy, "curlState") == 5)
                {
                  delegate = [v35 delegate];

                  if (delegate == stateCopy)
                  {
                    [stateCopy incrementCompletionCount];
                  }
                }
              }

              [v23 setValue:v34 forKeyPath:v30];
            }

            v26 = [v44 countByEnumeratingWithState:&v46 objects:v54 count:16];
          }

          while (v26);
        }

        v22 = v43 + 1;
      }

      while (v43 + 1 != v42);
      v42 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v42);
  }
}

- (CGPoint)_referenceLocationForInitialLocation:(CGPoint)location direction:(int64_t)direction
{
  y = location.y;
  x = location.x;
  spineLocation = self->_spineLocation;
  if (spineLocation > 2)
  {
    if ((spineLocation - 3) >= 2 && spineLocation != 16)
    {
      goto LABEL_29;
    }

    if (direction)
    {
      v10 = 0;
    }

    else
    {
      v10 = spineLocation == 4;
    }

    v11 = v10;
    if (spineLocation != 3 && v11 == 0)
    {
      v14 = direction == 1 && spineLocation == 4;
      if (spineLocation != 16 && !v14)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v16 = currentHandler;
        v17 = a2;
        selfCopy2 = self;
        v19 = 1022;
        goto LABEL_45;
      }

      MinX = CGRectGetMinX(self->_contentRect);
LABEL_35:
      x = MinX;
      goto LABEL_46;
    }

LABEL_33:
    MinX = CGRectGetMaxX(self->_contentRect);
    goto LABEL_35;
  }

  if (spineLocation == 1)
  {
    goto LABEL_33;
  }

  if (spineLocation != 2)
  {
LABEL_29:
    if (!direction && spineLocation == 8)
    {
      goto LABEL_31;
    }

    v23 = direction == 1 && spineLocation == 8;
    if (spineLocation == 32 || v23)
    {
      MinY = CGRectGetMinY(self->_contentRect);
      goto LABEL_32;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = currentHandler;
    v17 = a2;
    selfCopy2 = self;
    v19 = 1030;
LABEL_45:
    [currentHandler handleFailureInMethod:v17 object:selfCopy2 file:@"_UIPageCurl.m" lineNumber:v19 description:@"Not implemented yet!"];

    goto LABEL_46;
  }

LABEL_31:
  MinY = CGRectGetMaxY(self->_contentRect);
LABEL_32:
  y = MinY;
LABEL_46:
  v24 = x;
  v25 = y;
  result.y = v25;
  result.x = v24;
  return result;
}

- (int64_t)_validatedPageCurlTypeForPageCurlType:(int64_t)type inDirection:(int64_t)direction
{
  if (direction)
  {
    if (direction != 1 || (self->_spineLocation - 1) >= 3)
    {
      return type;
    }

    goto LABEL_10;
  }

  spineLocation = self->_spineLocation;
  if (spineLocation == 32 || spineLocation == 16)
  {
LABEL_10:
    if (type == 4 || type == 1)
    {
      return 4;
    }

    else
    {
      return 3;
    }
  }

  return type;
}

- (BOOL)_isPreviousCurlCompatibleWithCurlOfType:(int64_t)type inDirection:(int64_t)direction
{
  lastObject = [(NSMutableArray *)self->_activeStateQueue lastObject];
  v8 = lastObject;
  if (self->_manualPageCurlState)
  {
    v9 = 0;
  }

  else if (lastObject)
  {
    v9 = [lastObject isCompatibleWithCurlOfType:-[_UIPageCurl _validatedPageCurlTypeForPageCurlType:inDirection:](self inDirection:{"_validatedPageCurlTypeForPageCurlType:inDirection:", type, direction), direction}];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)_enqueueCurlOfType:(int64_t)type fromLocation:(CGPoint)location inDirection:(int64_t)direction withView:(id)view revealingView:(id)revealingView completion:(id)completion finally:(id)finally
{
  y = location.y;
  x = location.x;
  viewCopy = view;
  revealingViewCopy = revealingView;
  completionCopy = completion;
  finallyCopy = finally;
  if (viewCopy)
  {
    v22 = [(_UIPageCurl *)self _validatedPageCurlTypeForPageCurlType:type inDirection:direction];
    v23 = v22;
    if (v22 == 4 || v22 == 1)
    {
      finallyCopy = [[_UIPageCurlState alloc] initWithPageCurl:self andCurlType:v22 fromLocation:direction withReferenceLocation:viewCopy inDirection:revealingViewCopy withView:completionCopy revealingView:x completion:y finally:x, y, finallyCopy];
      if (!finallyCopy)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if ([(NSMutableArray *)self->_pendingStateQueue count])
      {
        goto LABEL_15;
      }

      if (self->_manualPageCurlState)
      {
        goto LABEL_15;
      }

      [(_UIPageCurl *)self _referenceLocationForInitialLocation:direction direction:x, y];
      finallyCopy = [[_UIPageCurlState alloc] initWithPageCurl:self andCurlType:v23 fromLocation:direction withReferenceLocation:viewCopy inDirection:revealingViewCopy withView:completionCopy revealingView:x completion:y finally:v35, v36, finallyCopy];
      manualPageCurlState = self->_manualPageCurlState;
      self->_manualPageCurlState = finallyCopy;

      if (!finallyCopy)
      {
        goto LABEL_15;
      }
    }

    if ([(NSMutableArray *)self->_activeStateQueue count]|| [(NSMutableArray *)self->_pendingStateQueue count])
    {
      if (!-[NSMutableArray count](self->_pendingStateQueue, "count") && -[NSMutableArray count](self->_activeStateQueue, "count") && (-[NSMutableArray lastObject](self->_activeStateQueue, "lastObject"), v25 = objc_claimAutoreleasedReturnValue(), v26 = [v25 isCompatibleWithCurlOfType:-[_UIPageCurlState curlType](finallyCopy inDirection:{"curlType"), -[_UITransitionState effectiveTransitionDirection](finallyCopy, "effectiveTransitionDirection")}], v25, v26))
      {
        lastObject = [(NSMutableArray *)self->_activeStateQueue lastObject];
        [(NSMutableArray *)self->_activeStateQueue _ui_enqueue:finallyCopy];
        delayBetweenSuccessiveAnimations = self->_delayBetweenSuccessiveAnimations;
        beginDate = [lastObject beginDate];
        [beginDate timeIntervalSinceNow];
        v31 = delayBetweenSuccessiveAnimations + v30;

        v32 = dispatch_time(0, (fmax(v31, 0.0) * 1000000000.0));
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __101___UIPageCurl__enqueueCurlOfType_fromLocation_inDirection_withView_revealingView_completion_finally___block_invoke;
        block[3] = &unk_1E70F6228;
        block[4] = self;
        v40 = finallyCopy;
        v41 = lastObject;
        v33 = lastObject;
        v34 = finallyCopy;
        dispatch_after(v32, MEMORY[0x1E69E96A0], block);
      }

      else
      {
        if ([(_UIPageCurlState *)finallyCopy curlType]!= 1 && [(_UIPageCurlState *)finallyCopy curlType]!= 4)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPageCurl.m" lineNumber:1082 description:@"Attempting to enqueue a manual curl as a pending state"];
        }

        [(NSMutableArray *)self->_pendingStateQueue _ui_enqueue:finallyCopy];
      }
    }

    else
    {
      [(NSMutableArray *)self->_activeStateQueue _ui_enqueue:finallyCopy];
      [(_UIPageCurl *)self _beginCurlWithState:finallyCopy previousState:0];
    }
  }

LABEL_15:
}

- (void)_cancelTransitionWithState:(id)state invalidatingPageCurl:(BOOL)curl
{
  curlCopy = curl;
  v38 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v7 = stateCopy;
  if (stateCopy)
  {
    if (curlCopy)
    {
      [stateCopy invalidatePageCurl];
    }

    if ([v7 curlType] == 1)
    {
      v8 = 1;
    }

    else if ([v7 curlType] == 4)
    {
      v8 = 1;
    }

    else
    {
      v8 = 5;
    }

    [v7 setCurlState:v8 willComplete:0];
    v9 = objc_alloc(MEMORY[0x1E695DEC8]);
    frontPageView = [v7 frontPageView];
    layer = [frontPageView layer];
    v26 = v7;
    backPageView = [v7 backPageView];
    layer2 = [backPageView layer];
    v14 = [v9 initWithObjects:{layer, layer2, 0}];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v14;
    v15 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v33;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v32 + 1) + 8 * i);
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          _animationKeyPaths = [(_UIPageCurl *)self _animationKeyPaths];
          v21 = [_animationKeyPaths countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v29;
            do
            {
              for (j = 0; j != v22; ++j)
              {
                if (*v29 != v23)
                {
                  objc_enumerationMutation(_animationKeyPaths);
                }

                v25 = _UIPageCurlFilterPropertyNameForAnimationKeyPath(*(*(&v28 + 1) + 8 * j));
                [v19 removeAnimationForKey:v25];
              }

              v22 = [_animationKeyPaths countByEnumeratingWithState:&v28 objects:v36 count:16];
            }

            while (v22);
          }
        }

        v16 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v16);
    }

    v7 = v26;
  }
}

- (void)_cancelAllActiveTransitionsAndAbandonCallbacks:(BOOL)callbacks
{
  callbacksCopy = callbacks;
  v16 = *MEMORY[0x1E69E9840];
  [(_UIPageCurl *)self _abortManualCurlAtLocation:*MEMORY[0x1E695EFF8] withSuggestedVelocity:*(MEMORY[0x1E695EFF8] + 8), 0.0];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_activeStateQueue;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        [(_UIPageCurl *)self _cancelTransitionWithState:v10 invalidatingPageCurl:callbacksCopy, v11];
        if (callbacksCopy)
        {
          [v10 finally];
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_pendingStateQueue removeAllObjects];
}

- (void)_beginCurlWithState:(id)state previousState:(id)previousState
{
  v48 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  previousStateCopy = previousState;
  if (stateCopy)
  {
    frontPageView = [stateCopy frontPageView];
    backPageView = [stateCopy backPageView];
    if ([previousStateCopy isActive])
    {
      frontPageView2 = [previousStateCopy frontPageView];
      curlType = [stateCopy curlType];
      contentView = self->_contentView;
      if (curlType > 2)
      {
        [(UIView *)contentView insertSubview:frontPageView aboveSubview:frontPageView2];
      }

      else
      {
        [(UIView *)contentView insertSubview:frontPageView belowSubview:frontPageView2];
      }

      [stateCopy addFrontPageContent];
      if (backPageView)
      {
        backPageView2 = [previousStateCopy backPageView];
        curlType2 = [stateCopy curlType];
        v15 = self->_contentView;
        if (curlType2 > 2)
        {
          [(UIView *)v15 insertSubview:backPageView belowSubview:backPageView2];
        }

        else
        {
          [(UIView *)v15 insertSubview:backPageView aboveSubview:backPageView2];
        }

        [stateCopy addBackPageContent];
      }
    }

    else
    {
      [(UIView *)self->_contentView addSubview:frontPageView];
      [stateCopy addFrontPageContent];
      if (backPageView)
      {
        [(UIView *)self->_contentView insertSubview:backPageView aboveSubview:frontPageView];
        [stateCopy addBackPageContent];
      }
    }

    if ([stateCopy curlState] == 2)
    {
      [stateCopy setCurlState:3 willComplete:0];
    }

    v38 = previousStateCopy;
    if ([stateCopy curlState] == 3)
    {
      v16 = 0.25;
    }

    else
    {
      v16 = 0.4;
    }

    if ([stateCopy curlType] != 1 && objc_msgSend(stateCopy, "curlType") != 4)
    {
      [frontPageView frame];
      v19 = v17;
      v20 = v18;
      spineLocation = self->_spineLocation;
      if (spineLocation == 4 || (spineLocation & 0x11) != 0)
      {
        v22 = v18;
        v23 = v17;
      }

      else
      {
        v22 = v17;
        v23 = v18;
      }

      self->_pageDiagonalAngle = atan2(v22, v23);
      self->_pageDiagonalLength = hypot(v19, v20);
    }

    v37 = frontPageView;
    _animationKeyPaths = [(_UIPageCurl *)self _animationKeyPaths];
    v25 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(_animationKeyPaths, "count")}];
    v45 = 0.0;
    v46 = 0.0;
    v44 = 0.0;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v26 = _animationKeyPaths;
    v27 = [v26 countByEnumeratingWithState:&v40 objects:v47 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v41;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v41 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v40 + 1) + 8 * i);
          v39 = 0.0;
          if ([stateCopy curlType] == 1 || objc_msgSend(stateCopy, "curlType") == 4)
          {
            if ([v31 isEqualToString:@"filters.curl.inputTime"])
            {
              v32 = &v46;
            }

            else if ([v31 isEqualToString:@"filters.curl.inputRadius"])
            {
              v32 = &v45;
            }

            else
            {
              v32 = &v44;
            }
          }

          else
          {
            [stateCopy initialLocation];
            [(_UIPageCurl *)self _updatedInputsFromState:stateCopy forLocation:&v46 time:&v45 radius:&v44 angle:?];
            v32 = 0;
          }

          [(_UIPageCurl *)self _fromValue:&v39 toValue:v32 fromState:stateCopy forAnimationWithKeyPath:v31];
          HIDWORD(v33) = HIDWORD(v39);
          *&v33 = v39;
          v34 = [MEMORY[0x1E696AD98] numberWithFloat:v33];
          v35 = [(_UIPageCurl *)self _newAnimationForState:stateCopy withKeyPath:v31 duration:v34 fromValue:v16];

          [v25 addObject:v35];
        }

        v28 = [v26 countByEnumeratingWithState:&v40 objects:v47 count:16];
      }

      while (v28);
    }

    [stateCopy markBeginDate];
    [(_UIPageCurl *)self _updateCurlFromState:stateCopy withTime:v25 radius:v46 angle:v45 addingAnimations:v44];
    if (([stateCopy curlType] == 1 || objc_msgSend(stateCopy, "curlType") == 4) && (objc_msgSend(stateCopy, "hasPendingAnimations") & 1) == 0)
    {
      [(_UIPageCurl *)self _forceCleanupState:stateCopy finished:1 completed:1];
    }

    previousStateCopy = v38;
  }
}

- (void)_updateManualCurlToLocation:(CGPoint)location
{
  manualPageCurlState = self->_manualPageCurlState;
  if (manualPageCurlState)
  {
    y = location.y;
    x = location.x;
    if ([(_UIPageCurlState *)manualPageCurlState curlState]<= 4)
    {
      v8 = 0.0;
      v9 = 0.0;
      v7 = 0.0;
      [(_UIPageCurl *)self _updatedInputsFromState:self->_manualPageCurlState forLocation:&v9 time:&v8 radius:&v7 angle:x, y];
      [(_UIPageCurl *)self _updateCurlFromState:self->_manualPageCurlState withTime:0 radius:v9 angle:v8 addingAnimations:v7];
    }
  }
}

- (double)_durationForManualCurlEndAnimationWithSuggestedVelocity:(double)velocity shouldComplete:(BOOL)complete
{
  if (velocity == 0.0)
  {
    return 0.25;
  }

  v27 = v12;
  v28 = v5;
  v29 = v4;
  completeCopy = complete;
  if (velocity < 0.0)
  {
    velocity = -velocity;
  }

  v18 = fmin(fmax(velocity, 2048.0), 4096.0);
  v19 = [(_UIPageCurlState *)self->_manualPageCurlState frontPageView:v15];
  layer = [v19 layer];
  presentationLayer = [layer presentationLayer];
  v22 = [presentationLayer valueForKeyPath:@"filters.curl.inputTime"];
  [v22 floatValue];
  v24 = v23;

  if (completeCopy)
  {
    v24 = 1.0 - v24;
  }

  if ([(_UIPageCurlState *)self->_manualPageCurlState curlType]> 2)
  {
    v24 = 1.0 - v24;
  }

  [(_UIPageCurl *)self _distanceToTravelWithCurrentSpineLocation];
  return v25 * v24 / v18;
}

- (void)_endManualCurlAtLocation:(CGPoint)location withSuggestedVelocity:(double)velocity shouldComplete:(BOOL)complete
{
  completeCopy = complete;
  v42 = *MEMORY[0x1E69E9840];
  manualPageCurlState = self->_manualPageCurlState;
  if (manualPageCurlState && [(_UIPageCurlState *)manualPageCurlState curlState:location.x]<= 4)
  {
    [(_UIPageCurlState *)self->_manualPageCurlState setCurlState:5 willComplete:completeCopy];
    v39 = 0.0;
    v40 = 0.0;
    v38 = 0.0;
    _animationKeyPaths = [(_UIPageCurl *)self _animationKeyPaths];
    v32 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(_animationKeyPaths, "count")}];
    [(_UIPageCurl *)self _durationForManualCurlEndAnimationWithSuggestedVelocity:completeCopy shouldComplete:velocity];
    v10 = v9;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = _animationKeyPaths;
    v11 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v35;
      v30 = *MEMORY[0x1E6979EA0];
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v34 + 1) + 8 * i);
          v16 = [v15 isEqualToString:{@"filters.curl.inputTime", v30}];
          if (completeCopy)
          {
            if (v16)
            {
              v17 = 0;
              v18 = &v40;
            }

            else
            {
              v19 = [v15 isEqualToString:@"filters.curl.inputRadius"];
              v17 = 0;
              if (v19)
              {
                v18 = &v39;
              }

              else
              {
                v18 = &v38;
              }
            }
          }

          else if (v16)
          {
            v18 = 0;
            v17 = &v40;
          }

          else
          {
            v20 = [v15 isEqualToString:@"filters.curl.inputRadius"];
            v18 = 0;
            if (v20)
            {
              v17 = &v39;
            }

            else
            {
              v17 = &v38;
            }
          }

          [(_UIPageCurl *)self _fromValue:v17 toValue:v18 fromState:self->_manualPageCurlState forAnimationWithKeyPath:v15];
          v21 = self->_manualPageCurlState;
          frontPageView = [(_UIPageCurlState *)v21 frontPageView];
          layer = [frontPageView layer];
          presentationLayer = [layer presentationLayer];
          v25 = [presentationLayer valueForKeyPath:v15];
          v26 = [(_UIPageCurl *)self _newAnimationForState:v21 withKeyPath:v15 duration:v25 fromValue:v10];

          if ([v15 isEqualToString:@"filters.curl.inputAngle"])
          {
            v27 = [MEMORY[0x1E69793D0] functionWithName:v30];
            [v26 setTimingFunction:v27];
          }

          [v32 addObject:v26];
        }

        v12 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
      }

      while (v12);
    }

    v28 = self->_manualPageCurlState;
    self->_manualPageCurlState = 0;
    v29 = v28;

    [(_UITransitionState *)v29 markBeginDate];
    [(_UIPageCurl *)self _updateCurlFromState:v29 withTime:v32 radius:v40 angle:v39 addingAnimations:v38];
  }
}

- (void)_pageCurlAnimationDidStop:(id)stop withState:(id)state
{
  stopCopy = stop;
  stateCopy = state;
  if (!stateCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPageCurl.m" lineNumber:1252 description:{@"Invalid parameter not satisfying: %@", @"state"}];
  }

  if (![(NSMutableArray *)self->_activeStateQueue count])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIPageCurl.m" lineNumber:1253 description:{@"Received CA callback for state, but active state queue is empty"}];
  }

  if (([stateCopy hasPendingAnimations] & 1) == 0 && (objc_msgSend(stateCopy, "curlType") == 1 || objc_msgSend(stateCopy, "curlType") == 4 || objc_msgSend(stateCopy, "curlState") == 5))
  {
    [(NSMutableSet *)self->_completedStates addObject:stateCopy];
    completedStates = self->_completedStates;
    _ui_peek = [(NSMutableArray *)self->_activeStateQueue _ui_peek];
    LODWORD(completedStates) = [(NSMutableSet *)completedStates containsObject:_ui_peek];

    if (completedStates)
    {
      do
      {
        _ui_dequeue = [(NSMutableArray *)self->_activeStateQueue _ui_dequeue];
        [(_UIPageCurl *)self _cleanupState:_ui_dequeue];
        [(NSMutableSet *)self->_completedStates removeObject:_ui_dequeue];

        v12 = self->_completedStates;
        _ui_peek2 = [(NSMutableArray *)self->_activeStateQueue _ui_peek];
        LOBYTE(v12) = [(NSMutableSet *)v12 containsObject:_ui_peek2];
      }

      while ((v12 & 1) != 0);
    }

    if (![(NSMutableArray *)self->_activeStateQueue count]&& [(NSMutableArray *)self->_pendingStateQueue count])
    {
      v21[0] = 0;
      v21[1] = v21;
      v21[2] = 0x3032000000;
      v21[3] = __Block_byref_object_copy__52;
      v21[4] = __Block_byref_object_dispose__52;
      v22 = 0;
      v14 = [(NSMutableArray *)self->_pendingStateQueue copy];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __51___UIPageCurl__pageCurlAnimationDidStop_withState___block_invoke;
      v18[3] = &unk_1E71030E0;
      v20 = v21;
      v18[4] = self;
      v15 = v14;
      v19 = v15;
      [v15 enumerateObjectsUsingBlock:v18];

      _Block_object_dispose(v21, 8);
    }
  }
}

@end