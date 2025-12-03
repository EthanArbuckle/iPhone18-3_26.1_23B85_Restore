@interface UISlidingBarStateRequest
- (BOOL)isEqual:(id)equal;
- (UISlidingBarStateRequest)init;
- (id)_closestEqualOrLargerState:(id)state returningDistance:(double *)distance;
- (id)_closestState:(id)state returningDistance:(double *)distance;
- (id)_matchingState:(id)state;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation UISlidingBarStateRequest

- (UISlidingBarStateRequest)init
{
  v3.receiver = self;
  v3.super_class = UISlidingBarStateRequest;
  result = [(UISlidingBarStateRequest *)&v3 init];
  if (result)
  {
    result->_userInitiated = 1;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [(UISlidingBarStateRequest *)self leadingWidth];
  [v4 setLeadingWidth:?];
  [(UISlidingBarStateRequest *)self leadingOffscreenWidth];
  [v4 setLeadingOffscreenWidth:?];
  [(UISlidingBarStateRequest *)self trailingWidth];
  [v4 setTrailingWidth:?];
  [(UISlidingBarStateRequest *)self trailingOffscreenWidth];
  [v4 setTrailingOffscreenWidth:?];
  [(UISlidingBarStateRequest *)self supplementaryWidth];
  [v4 setSupplementaryWidth:?];
  [(UISlidingBarStateRequest *)self supplementaryOffscreenWidth];
  [v4 setSupplementaryOffscreenWidth:?];
  [(UISlidingBarStateRequest *)self rubberBandInset];
  [v4 setRubberBandInset:?];
  [(UISlidingBarStateRequest *)self mainWidth];
  [v4 setMainWidth:?];
  [v4 setUserInitiated:{-[UISlidingBarStateRequest userInitiated](self, "userInitiated")}];
  return v4;
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = UISlidingBarStateRequest;
  v3 = [(UISlidingBarStateRequest *)&v11 description];
  v4 = [v3 mutableCopy];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __39__UISlidingBarStateRequest_description__block_invoke;
  aBlock[3] = &unk_1E7103B20;
  v5 = v4;
  v10 = v5;
  v6 = _Block_copy(aBlock);
  v6[2](v6, @"leading", self->_leadingWidth);
  v6[2](v6, @"leadingOffscreen", self->_leadingOffscreenWidth);
  v6[2](v6, @"trailing", self->_trailingWidth);
  v6[2](v6, @"trailingOffscreen", self->_trailingOffscreenWidth);
  v6[2](v6, @"supplementary", self->_supplementaryWidth);
  v6[2](v6, @"supplementaryOffscreen", self->_supplementaryOffscreenWidth);
  if (self->_rubberBandInset != 0.0)
  {
    [v5 appendFormat:@" %@=%g", @"rubberBandInset", *&self->_rubberBandInset];
  }

  v6[2](v6, @"main", self->_mainWidth);
  if (self->_userInitiated)
  {
    [v5 appendString:@" userInitiated"];
  }

  v7 = v5;

  return v5;
}

uint64_t __39__UISlidingBarStateRequest_description__block_invoke(uint64_t result, uint64_t a2, double a3)
{
  if (a3 > 0.0)
  {
    return [*(result + 32) appendFormat:@" %@Width=%g", a2, *&a3, v3, v4];
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    [(UISlidingBarStateRequest *)self leadingWidth];
    v7 = v6;
    [v5 leadingWidth];
    if (v7 == v8 && (-[UISlidingBarStateRequest leadingOffscreenWidth](self, "leadingOffscreenWidth"), v10 = v9, [v5 leadingOffscreenWidth], v10 == v11) && (-[UISlidingBarStateRequest trailingWidth](self, "trailingWidth"), v13 = v12, objc_msgSend(v5, "trailingWidth"), v13 == v14) && (-[UISlidingBarStateRequest trailingOffscreenWidth](self, "trailingOffscreenWidth"), v16 = v15, objc_msgSend(v5, "trailingOffscreenWidth"), v16 == v17) && (-[UISlidingBarStateRequest supplementaryWidth](self, "supplementaryWidth"), v19 = v18, objc_msgSend(v5, "supplementaryWidth"), v19 == v20) && (-[UISlidingBarStateRequest supplementaryOffscreenWidth](self, "supplementaryOffscreenWidth"), v22 = v21, objc_msgSend(v5, "supplementaryOffscreenWidth"), v22 == v23) && (-[UISlidingBarStateRequest rubberBandInset](self, "rubberBandInset"), v25 = v24, objc_msgSend(v5, "rubberBandInset"), v25 == v26))
    {
      [(UISlidingBarStateRequest *)self mainWidth];
      v28 = v27;
      [v5 mainWidth];
      v30 = v28 == v29;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (unint64_t)hash
{
  [(UISlidingBarStateRequest *)self leadingWidth];
  v4 = v3;
  [(UISlidingBarStateRequest *)self trailingWidth];
  v6 = v5 ^ v4;
  [(UISlidingBarStateRequest *)self supplementaryWidth];
  return v6 ^ v7;
}

- (id)_matchingState:(id)state
{
  v8 = 0.0;
  v3 = [(UISlidingBarStateRequest *)self _closestState:state returningDistance:&v8];
  v4 = v3;
  if (v8 == 0.0)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v6;
}

- (id)_closestState:(id)state returningDistance:(double *)distance
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  stateCopy = state;
  v7 = [stateCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v19;
    v11 = 1.79769313e308;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(stateCopy);
      }

      v13 = *(*(&v18 + 1) + 8 * v12);
      [v13 _absoluteDistanceFromRequest:{self, v18}];
      if (v14 < v11)
      {
        v15 = v14;
        v16 = v13;

        v11 = v15;
        v9 = v16;
        if (v15 == 0.0)
        {
          break;
        }
      }

      if (v8 == ++v12)
      {
        v8 = [stateCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
        v15 = v11;
        v16 = v9;
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v16 = 0;
    v15 = 1.79769313e308;
  }

  if (distance)
  {
    *distance = v15;
  }

  return v16;
}

- (id)_closestEqualOrLargerState:(id)state returningDistance:(double *)distance
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  stateCopy = state;
  v7 = [stateCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v22;
    v11 = 1.79769313e308;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(stateCopy);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        [v13 _distanceFromRequest:{self, v21}];
        v15 = *&v14;
        if (v14 == 0.0)
        {
          v16 = v13;

          [v16 _absoluteDistanceFromRequest:self];
          v11 = *&v15;
          v9 = v16;
          if (v17 == 0.0)
          {
            goto LABEL_19;
          }
        }

        else if (v14 >= 0.0 && v14 < v11)
        {
          v19 = v13;

          v11 = *&v15;
          v9 = v19;
        }
      }

      v8 = [stateCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
      v15 = *&v11;
      v16 = v9;
    }

    while (v8);
  }

  else
  {
    v16 = 0;
    v15 = 0x7FEFFFFFFFFFFFFFLL;
  }

LABEL_19:

  if (distance)
  {
    *distance = v15;
  }

  return v16;
}

@end