@interface RPTActivationInteraction
- (CGPoint)actionPoint;
- (id)initForAction:(unint64_t)a3 window:(id)a4;
- (id)reversedInteraction;
- (void)invokeWithComposer:(id)a3 duration:(double)a4;
@end

@implementation RPTActivationInteraction

- (id)initForAction:(unint64_t)a3 window:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = RPTActivationInteraction;
  v8 = [(RPTActivationInteraction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_action = a3;
    objc_storeStrong(&v8->_window, a4);
  }

  return v9;
}

- (void)invokeWithComposer:(id)a3 duration:(double)a4
{
  v5 = a3;
  [(RPTActivationInteraction *)self actionPoint];
  [v5 pointerOrFingerTap:?];
}

- (id)reversedInteraction
{
  v2 = [[RPTActivationInteraction alloc] initForAction:[(RPTActivationInteraction *)self action]== 0 window:self->_window];

  return v2;
}

- (CGPoint)actionPoint
{
  v3 = [(RPTActivationInteraction *)self action];
  v4 = [(RPTActivationInteraction *)self window];
  v5 = v4;
  if (v3)
  {
    [v4 _rpt_safeVisibleFrameOfScreen];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [(RPTActivationInteraction *)self window];
    [v14 frame];
    v28 = CGRectInset(v27, -10.0, -10.0);
    x = v28.origin.x;
    y = v28.origin.y;
    width = v28.size.width;
    height = v28.size.height;

    v29.origin.x = v7;
    v29.origin.y = v9;
    v29.size.width = v11;
    v29.size.height = v13;
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    v30 = CGRectIntersection(v29, v33);
    MaxX = v30.origin.x;
    MinY = v30.origin.y;
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v26.x = MaxX;
    v26.y = MinY;
    if (CGRectContainsPoint(v30, v26))
    {
      v31.origin.x = x;
      v31.origin.y = y;
      v31.size.width = width;
      v31.size.height = height;
      MaxX = CGRectGetMaxX(v31);
      v32.origin.x = x;
      v32.origin.y = y;
      v32.size.width = width;
      v32.size.height = height;
      MinY = CGRectGetMinY(v32);
    }
  }

  else
  {
    [v4 rpt_accessibilityActivationPointAttribute];
    MaxX = v21;
    MinY = v22;
  }

  v23 = MaxX;
  v24 = MinY;
  result.y = v24;
  result.x = v23;
  return result;
}

@end