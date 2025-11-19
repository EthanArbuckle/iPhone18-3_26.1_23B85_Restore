@interface _UIDismissInteractionUpdate
- (BOOL)isEqual:(id)a3;
- (CGAffineTransform)transform;
- (CGAffineTransform)translation;
- (CGPoint)originalTrackingViewPosition;
- (_UIDismissInteractionUpdate)initWithBSXPCCoder:(id)a3;
- (_UIDismissInteractionUpdate)initWithCoder:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setTransform:(CGAffineTransform *)a3;
- (void)setTranslation:(CGAffineTransform *)a3;
@end

@implementation _UIDismissInteractionUpdate

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  [(_UIDismissInteractionUpdate *)self originalTrackingViewPosition];
  [v4 encodeCGPoint:@"originalTrackingViewPosition" forKey:?];
  v5 = MEMORY[0x1E696B098];
  [(_UIDismissInteractionUpdate *)self translation];
  v6 = [v5 bs_valueWithCGAffineTransform:v9];
  [v4 encodeObject:v6 forKey:@"translation"];

  v7 = MEMORY[0x1E696B098];
  [(_UIDismissInteractionUpdate *)self transform];
  v8 = [v7 bs_valueWithCGAffineTransform:v9];
  [v4 encodeObject:v8 forKey:@"transform"];

  [(_UIDismissInteractionUpdate *)self scale];
  [v4 encodeDouble:@"scale" forKey:?];
  [(_UIDismissInteractionUpdate *)self progressToMinScale];
  [v4 encodeDouble:@"progressToMinScale" forKey:?];
  [(_UIDismissInteractionUpdate *)self dampingRatio];
  [v4 encodeDouble:@"dampingRatio" forKey:?];
  [(_UIDismissInteractionUpdate *)self response];
  [v4 encodeDouble:@"response" forKey:?];
  [v4 encodeBool:-[_UIDismissInteractionUpdate isTracking](self forKey:{"isTracking"), @"isTracking"}];
  [v4 encodeBool:-[_UIDismissInteractionUpdate wantsHeightClamping](self forKey:{"wantsHeightClamping"), @"wantsHeightClamping"}];
}

- (_UIDismissInteractionUpdate)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = _UIDismissInteractionUpdate;
  v5 = [(_UIDismissInteractionUpdate *)&v20 init];
  if (v5)
  {
    [v4 decodeCGPointForKey:@"originalTrackingViewPosition"];
    [(_UIDismissInteractionUpdate *)v5 setOriginalTrackingViewPosition:?];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"translation"];
    v7 = v6;
    if (v6)
    {
      [v6 bs_CGAffineTransformValue];
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
    }

    v14 = v17;
    v15 = v18;
    v16 = v19;
    [(_UIDismissInteractionUpdate *)v5 setTranslation:&v14];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transform"];
    v9 = v8;
    if (v8)
    {
      [v8 bs_CGAffineTransformValue];
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
      v11 = 0u;
    }

    v14 = v11;
    v15 = v12;
    v16 = v13;
    [(_UIDismissInteractionUpdate *)v5 setTransform:&v14, v11, v12, v13];

    [v4 decodeDoubleForKey:@"scale"];
    [(_UIDismissInteractionUpdate *)v5 setScale:?];
    [v4 decodeDoubleForKey:@"progressToMinScale"];
    [(_UIDismissInteractionUpdate *)v5 setProgressToMinScale:?];
    [v4 decodeDoubleForKey:@"dampingRatio"];
    [(_UIDismissInteractionUpdate *)v5 setDampingRatio:?];
    [v4 decodeDoubleForKey:@"response"];
    [(_UIDismissInteractionUpdate *)v5 setResponse:?];
    -[_UIDismissInteractionUpdate setIsTracking:](v5, "setIsTracking:", [v4 decodeBoolForKey:@"isTracking"]);
    -[_UIDismissInteractionUpdate setWantsHeightClamping:](v5, "setWantsHeightClamping:", [v4 decodeBoolForKey:@"wantsHeightClamping"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(_UIDismissInteractionUpdate *)self originalTrackingViewPosition];
  [v4 encodeCGPoint:@"originalTrackingViewPosition" forKey:?];
  [(_UIDismissInteractionUpdate *)self translation];
  [v4 encodeCGAffineTransform:v5 forKey:@"translation"];
  [(_UIDismissInteractionUpdate *)self transform];
  [v4 encodeCGAffineTransform:v5 forKey:@"transform"];
  [(_UIDismissInteractionUpdate *)self scale];
  [v4 encodeDouble:@"scale" forKey:?];
  [(_UIDismissInteractionUpdate *)self progressToMinScale];
  [v4 encodeDouble:@"progressToMinScale" forKey:?];
  [(_UIDismissInteractionUpdate *)self dampingRatio];
  [v4 encodeDouble:@"dampingRatio" forKey:?];
  [(_UIDismissInteractionUpdate *)self response];
  [v4 encodeDouble:@"response" forKey:?];
  [v4 encodeBool:-[_UIDismissInteractionUpdate isTracking](self forKey:{"isTracking"), @"isTracking"}];
  [v4 encodeBool:-[_UIDismissInteractionUpdate wantsHeightClamping](self forKey:{"wantsHeightClamping"), @"wantsHeightClamping"}];
}

- (_UIDismissInteractionUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _UIDismissInteractionUpdate;
  v5 = [(_UIDismissInteractionUpdate *)&v16 init];
  if (v5)
  {
    [v4 decodeCGPointForKey:@"originalTrackingViewPosition"];
    [(_UIDismissInteractionUpdate *)v5 setOriginalTrackingViewPosition:?];
    if (v4)
    {
      [v4 decodeCGAffineTransformForKey:@"translation"];
      v10 = v13;
      v11 = v14;
      v12 = v15;
      [(_UIDismissInteractionUpdate *)v5 setTranslation:&v10];
      [v4 decodeCGAffineTransformForKey:@"transform"];
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
      v13 = 0u;
      v11 = 0u;
      v12 = 0u;
      v10 = 0u;
      [(_UIDismissInteractionUpdate *)v5 setTranslation:&v10];
      v7 = 0u;
      v8 = 0u;
      v9 = 0u;
    }

    v10 = v7;
    v11 = v8;
    v12 = v9;
    [(_UIDismissInteractionUpdate *)v5 setTransform:&v10, v7, v8, v9];
    [v4 decodeDoubleForKey:@"scale"];
    [(_UIDismissInteractionUpdate *)v5 setScale:?];
    [v4 decodeDoubleForKey:@"progressToMinScale"];
    [(_UIDismissInteractionUpdate *)v5 setProgressToMinScale:?];
    [v4 decodeDoubleForKey:@"dampingRatio"];
    [(_UIDismissInteractionUpdate *)v5 setDampingRatio:?];
    [v4 decodeDoubleForKey:@"response"];
    [(_UIDismissInteractionUpdate *)v5 setResponse:?];
    -[_UIDismissInteractionUpdate setIsTracking:](v5, "setIsTracking:", [v4 decodeBoolForKey:@"isTracking"]);
    -[_UIDismissInteractionUpdate setWantsHeightClamping:](v5, "setWantsHeightClamping:", [v4 decodeBoolForKey:@"wantsHeightClamping"]);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  [(_UIDismissInteractionUpdate *)self originalTrackingViewPosition];
  v7 = v6;
  v9 = v8;
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __39___UIDismissInteractionUpdate_isEqual___block_invoke;
  v56[3] = &unk_1E710E768;
  v10 = v4;
  v57 = v10;
  v11 = [v5 appendCGPoint:v56 counterpart:{v7, v9}];
  [(_UIDismissInteractionUpdate *)self translation];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __39___UIDismissInteractionUpdate_isEqual___block_invoke_2;
  v53[3] = &unk_1E710E790;
  v12 = v10;
  v54 = v12;
  v13 = [v5 appendCGAffineTransform:v55 counterpart:v53];
  [(_UIDismissInteractionUpdate *)self transform];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __39___UIDismissInteractionUpdate_isEqual___block_invoke_3;
  v51[3] = &unk_1E710E790;
  v14 = v12;
  v52 = v14;
  v15 = [v5 appendCGAffineTransform:v55 counterpart:v51];
  [(_UIDismissInteractionUpdate *)self scale];
  v17 = v16;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __39___UIDismissInteractionUpdate_isEqual___block_invoke_4;
  v49[3] = &unk_1E70F66A0;
  v18 = v14;
  v50 = v18;
  v19 = [v5 appendDouble:v49 counterpart:v17];
  [(_UIDismissInteractionUpdate *)self progressToMinScale];
  v21 = v20;
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __39___UIDismissInteractionUpdate_isEqual___block_invoke_5;
  v47[3] = &unk_1E70F66A0;
  v22 = v18;
  v48 = v22;
  v23 = [v5 appendDouble:v47 counterpart:v21];
  [(_UIDismissInteractionUpdate *)self dampingRatio];
  v25 = v24;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __39___UIDismissInteractionUpdate_isEqual___block_invoke_6;
  v45[3] = &unk_1E70F66A0;
  v26 = v22;
  v46 = v26;
  v27 = [v5 appendDouble:v45 counterpart:v25];
  [(_UIDismissInteractionUpdate *)self response];
  v29 = v28;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __39___UIDismissInteractionUpdate_isEqual___block_invoke_7;
  v43[3] = &unk_1E70F66A0;
  v30 = v26;
  v44 = v30;
  v31 = [v5 appendDouble:v43 counterpart:v29];
  v32 = [(_UIDismissInteractionUpdate *)self isTracking];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __39___UIDismissInteractionUpdate_isEqual___block_invoke_8;
  v41[3] = &unk_1E70F3CB0;
  v33 = v30;
  v42 = v33;
  v34 = [v5 appendBool:v32 counterpart:v41];
  v35 = [(_UIDismissInteractionUpdate *)self wantsHeightClamping];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __39___UIDismissInteractionUpdate_isEqual___block_invoke_9;
  v39[3] = &unk_1E70F3CB0;
  v40 = v33;
  v36 = v33;
  v37 = [v5 appendBool:v35 counterpart:v39];
  LOBYTE(v33) = [v5 isEqual];

  return v33;
}

- (CGPoint)originalTrackingViewPosition
{
  x = self->_originalTrackingViewPosition.x;
  y = self->_originalTrackingViewPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGAffineTransform)translation
{
  v3 = *&self[1].tx;
  *&retstr->a = *&self[1].c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[2].a;
  return self;
}

- (void)setTranslation:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_translation.c = *&a3->c;
  *&self->_translation.tx = v4;
  *&self->_translation.a = v3;
}

- (CGAffineTransform)transform
{
  v3 = *&self[2].tx;
  *&retstr->a = *&self[2].c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[3].a;
  return self;
}

- (void)setTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_transform.c = *&a3->c;
  *&self->_transform.tx = v4;
  *&self->_transform.a = v3;
}

@end