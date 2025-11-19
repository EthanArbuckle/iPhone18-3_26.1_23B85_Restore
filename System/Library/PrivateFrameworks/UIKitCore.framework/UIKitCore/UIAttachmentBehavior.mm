@interface UIAttachmentBehavior
+ (UIAttachmentBehavior)fixedAttachmentWithItem:(id)item1 attachedToItem:(id)item2 attachmentAnchor:(CGPoint)point;
+ (UIAttachmentBehavior)limitAttachmentWithItem:(id)item1 offsetFromCenter:(UIOffset)offset1 attachedToItem:(id)item2 offsetFromCenter:(UIOffset)offset2;
+ (UIAttachmentBehavior)pinAttachmentWithItem:(id)item1 attachedToItem:(id)item2 attachmentAnchor:(CGPoint)point;
+ (UIAttachmentBehavior)slidingAttachmentWithItem:(id)item attachmentAnchor:(CGPoint)point axisOfTranslation:(CGVector)axis;
+ (UIAttachmentBehavior)slidingAttachmentWithItem:(id)item1 attachedToItem:(id)item2 attachmentAnchor:(CGPoint)point axisOfTranslation:(CGVector)axis;
- (CGFloat)damping;
- (CGFloat)frequency;
- (CGFloat)length;
- (CGPoint)anchorPoint;
- (NSArray)items;
- (UIAttachmentBehavior)init;
- (UIAttachmentBehavior)initWithItem:(id)item offsetFromCenter:(UIOffset)offset attachedToAnchor:(CGPoint)point;
- (UIAttachmentBehavior)initWithItem:(id)item1 offsetFromCenter:(UIOffset)offset1 attachedToItem:(id)item2 offsetFromCenter:(UIOffset)offset2;
- (UIFloatRange)attachmentRange;
- (id)description;
- (void)_associate;
- (void)_changedParameter;
- (void)_dissociate;
- (void)_reevaluateJoint;
- (void)_updateJointWithRange:(id)a3;
- (void)setAnchorPoint:(CGPoint)anchorPoint;
- (void)setAttachmentRange:(UIFloatRange)attachmentRange;
- (void)setDamping:(CGFloat)damping;
- (void)setFrequency:(CGFloat)frequency;
- (void)setFrictionTorque:(CGFloat)frictionTorque;
- (void)setLength:(CGFloat)length;
@end

@implementation UIAttachmentBehavior

+ (UIAttachmentBehavior)slidingAttachmentWithItem:(id)item1 attachedToItem:(id)item2 attachmentAnchor:(CGPoint)point axisOfTranslation:(CGVector)axis
{
  dy = axis.dy;
  dx = axis.dx;
  y = point.y;
  x = point.x;
  v12 = item2;
  v13 = item1;
  v14 = [[a1 alloc] initWithItem:v13 attachedToItem:v12];

  *(v14 + 48) = x;
  *(v14 + 56) = y;
  *(v14 + 136) = dx;
  *(v14 + 144) = dy;
  *(v14 + 152) = 2;
  *(v14 + 192) = UIFloatRangeInfinite;

  return v14;
}

+ (UIAttachmentBehavior)slidingAttachmentWithItem:(id)item attachmentAnchor:(CGPoint)point axisOfTranslation:(CGVector)axis
{
  dy = axis.dy;
  dx = axis.dx;
  y = point.y;
  x = point.x;
  v10 = item;
  v11 = [[a1 alloc] initWithItem:v10 attachedToAnchor:{x, y}];

  *(v11 + 48) = x;
  *(v11 + 56) = y;
  *(v11 + 136) = dx;
  *(v11 + 144) = dy;
  *(v11 + 152) = 2;
  *(v11 + 192) = UIFloatRangeInfinite;

  return v11;
}

- (void)setAttachmentRange:(UIFloatRange)attachmentRange
{
  if (self->_attachmentType - 1 <= 1)
  {
    p_attachmentRange = &self->_attachmentRange;
    if (self->_attachmentRange.minimum != attachmentRange.minimum || self->_attachmentRange.maximum != attachmentRange.maximum)
    {
      p_attachmentRange->minimum = attachmentRange.minimum;
      self->_attachmentRange.maximum = attachmentRange.maximum;
      *&self->_stateFlags |= 8u;
      [(UIAttachmentBehavior *)self _updateJointWithRange:p_attachmentRange->minimum, self->_attachmentRange.maximum];

      [(UIAttachmentBehavior *)self _changedParameter];
    }
  }
}

- (void)_updateJointWithRange:(id)a3
{
  if (self->_joint && self->_attachmentType - 1 <= 1)
  {
    var1 = a3.var1;
    var0 = a3.var0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = self->_joint;
      v7 = v6;
      if (var0 > -3.40282347e38 || var1 < 3.40282347e38)
      {
        v8 = fabs(var0);
        v9 = fabs(var1) <= 2.22044605e-16;
        if (var1 >= 0.0)
        {
          v9 = 1;
        }

        if ((var0 <= 0.0 || v8 <= 2.22044605e-16) && v9)
        {
          [(PKPhysicsJoint *)v6 setShouldEnableLimits:1, v8];
          [(PKPhysicsJoint *)v7 setLowerDistanceLimit:var0];
          [(PKPhysicsJoint *)v7 setUpperDistanceLimit:var1];
LABEL_21:

          goto LABEL_22;
        }

        NSLog(&cfstr_AttachmentRang.isa, v8, *&var0, *&var1, self);
        self->_attachmentRange = UIFloatRangeInfinite;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_22:
        *&self->_stateFlags &= ~8u;
        return;
      }

      v12 = self->_joint;
      v7 = v12;
      if (var0 > -3.40282347e38 || var1 < 3.40282347e38)
      {
        [(PKPhysicsJoint *)v12 setShouldEnableLimits:1];
        [(PKPhysicsJoint *)v7 setLowerAngleLimit:var0];
        [(PKPhysicsJoint *)v7 setUpperAngleLimit:var1];
        goto LABEL_21;
      }
    }

    [(PKPhysicsJoint *)v7 setShouldEnableLimits:0];
    goto LABEL_21;
  }
}

+ (UIAttachmentBehavior)limitAttachmentWithItem:(id)item1 offsetFromCenter:(UIOffset)offset1 attachedToItem:(id)item2 offsetFromCenter:(UIOffset)offset2
{
  vertical = offset2.vertical;
  horizontal = offset2.horizontal;
  v8 = offset1.vertical;
  v9 = offset1.horizontal;
  v12 = item2;
  v13 = item1;
  v14 = [[a1 alloc] initWithItem:v13 offsetFromCenter:v12 attachedToItem:v9 offsetFromCenter:{v8, horizontal, vertical}];
  [v13 center];
  v16 = v15;
  v18 = v17;

  [v12 center];
  v20 = v19;
  v22 = v21;

  *(v14 + 128) = sqrt((v20 - v16) * (v20 - v16) + (v22 - v18) * (v22 - v18));
  *(v14 + 152) = 4;

  return v14;
}

+ (UIAttachmentBehavior)fixedAttachmentWithItem:(id)item1 attachedToItem:(id)item2 attachmentAnchor:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v9 = item2;
  v10 = item1;
  v11 = [[a1 alloc] initWithItem:v10 attachedToItem:v9];

  v11[6] = x;
  v11[7] = y;
  *(v11 + 19) = 3;

  return v11;
}

+ (UIAttachmentBehavior)pinAttachmentWithItem:(id)item1 attachedToItem:(id)item2 attachmentAnchor:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v9 = item2;
  v10 = item1;
  v11 = [[a1 alloc] initWithItem:v10 attachedToItem:v9];

  *(v11 + 48) = x;
  *(v11 + 56) = y;
  *(v11 + 152) = 1;
  *(v11 + 192) = UIFloatRangeInfinite;

  return v11;
}

- (void)setFrictionTorque:(CGFloat)frictionTorque
{
  if (self->_attachmentType == 1 && self->_frictionTorque != frictionTorque)
  {
    self->_frictionTorque = frictionTorque;
    joint = self->_joint;
    if (joint)
    {
      [(PKPhysicsJoint *)joint setFrictionTorque:?];
    }

    else
    {
      *&self->_stateFlags |= 0x10u;
    }

    [(UIAttachmentBehavior *)self _changedParameter];
  }
}

- (UIAttachmentBehavior)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"init is undefined for objects of type %@", objc_opt_class()}];

  return 0;
}

- (UIAttachmentBehavior)initWithItem:(id)item offsetFromCenter:(UIOffset)offset attachedToAnchor:(CGPoint)point
{
  y = point.y;
  x = point.x;
  vertical = offset.vertical;
  horizontal = offset.horizontal;
  v10 = item;
  v14.receiver = self;
  v14.super_class = UIAttachmentBehavior;
  v11 = [(UIDynamicBehavior *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(UIDynamicBehavior *)v11 _addItem:v10];
    v12->_anchorPoint.x = x;
    v12->_anchorPoint.y = y;
    v12->_anchorPointA.x = horizontal;
    v12->_anchorPointA.y = vertical;
    v12->_type = 1;
  }

  return v12;
}

- (UIAttachmentBehavior)initWithItem:(id)item1 offsetFromCenter:(UIOffset)offset1 attachedToItem:(id)item2 offsetFromCenter:(UIOffset)offset2
{
  vertical = offset2.vertical;
  horizontal = offset2.horizontal;
  v9 = offset1.vertical;
  v10 = offset1.horizontal;
  v12 = item1;
  v13 = item2;
  v17.receiver = self;
  v17.super_class = UIAttachmentBehavior;
  v14 = [(UIDynamicBehavior *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(UIDynamicBehavior *)v14 _addItem:v12];
    [(UIDynamicBehavior *)v15 _addItem:v13];
    v15->_anchorPointA.x = v10;
    v15->_anchorPointA.y = v9;
    v15->_anchorPointB.x = horizontal;
    v15->_anchorPointB.y = vertical;
    v15->_type = 0;
  }

  return v15;
}

- (NSArray)items
{
  v2 = MEMORY[0x1E695DEC8];
  v3 = [(UIDynamicBehavior *)self _items];
  v4 = [v2 arrayWithArray:v3];

  return v4;
}

- (CGFloat)length
{
  joint = self->_joint;
  if (!joint)
  {
    return self->_length;
  }

  result = 0.0;
  if ((*&self->_stateFlags & 0x20) == 0)
  {
    if (self->_attachmentType == 4)
    {
      [(PKPhysicsJoint *)joint maxLength];
    }

    else
    {
      [(PKPhysicsJoint *)joint length];
    }
  }

  return result;
}

- (void)setLength:(CGFloat)length
{
  [(UIAttachmentBehavior *)self length];
  if (v5 == length)
  {
    if (!self->_joint)
    {
      *&self->_stateFlags |= 4u;
    }
  }

  else
  {
    if (length == 0.0 || ([(UIAttachmentBehavior *)self length], v6 == 0.0))
    {
      self->_length = length;
      *&self->_stateFlags |= 4u;
      [(UIAttachmentBehavior *)self _reevaluateJoint];
    }

    else
    {
      self->_length = length;
      *&self->_stateFlags |= 4u;
      joint = self->_joint;
      v8 = self->_length;
      if (self->_attachmentType == 4)
      {
        [(PKPhysicsJoint *)joint setMaxLength:v8];
      }

      else
      {
        [(PKPhysicsJoint *)joint setLength:v8];
      }
    }

    [(UIAttachmentBehavior *)self _changedParameter];
  }
}

- (CGFloat)damping
{
  if (!self->_joint || (*&self->_stateFlags & 0x20) != 0)
  {
    return self->_damping;
  }

  [(PKPhysicsJoint *)self->_joint damping];
  return result;
}

- (void)setDamping:(CGFloat)damping
{
  [(UIAttachmentBehavior *)self damping];
  if (v5 != damping)
  {
    self->_damping = damping;
    stateFlags = self->_stateFlags;
    *&self->_stateFlags = stateFlags | 1;
    if ((stateFlags & 0x20) == 0)
    {
      [(PKPhysicsJoint *)self->_joint setDamping:self->_damping];

      [(UIAttachmentBehavior *)self _changedParameter];
    }
  }
}

- (CGFloat)frequency
{
  joint = self->_joint;
  if (!joint)
  {
    return self->_frequency;
  }

  result = 0.0;
  if ((*&self->_stateFlags & 0x20) == 0)
  {
    [(PKPhysicsJoint *)joint frequency];
  }

  return result;
}

- (void)setFrequency:(CGFloat)frequency
{
  v7 = self->_frequency;
  if (v7 != frequency)
  {
    v9 = v3;
    self->_frequency = frequency;
    *&self->_stateFlags |= 2u;
    if (frequency == 0.0 || v7 == 0.0)
    {
      [(UIAttachmentBehavior *)self _reevaluateJoint:v4];
    }

    else
    {
      [(PKPhysicsJoint *)self->_joint setFrequency:self->_frequency];
    }

    [(UIAttachmentBehavior *)self _changedParameter];
  }
}

- (CGPoint)anchorPoint
{
  if (self->_anchorBody)
  {
    [(PKExtendedPhysicsBody *)self->_anchorBody position];
  }

  else
  {
    x = self->_anchorPoint.x;
    y = self->_anchorPoint.y;
  }

  result.y = y;
  result.x = x;
  return result;
}

- (void)setAnchorPoint:(CGPoint)anchorPoint
{
  if (anchorPoint.x != self->_anchorPoint.x || anchorPoint.y != self->_anchorPoint.y)
  {
    self->_anchorPoint = anchorPoint;
    [(PKExtendedPhysicsBody *)self->_anchorBody setPosition:?];

    [(UIAttachmentBehavior *)self _changedParameter];
  }
}

- (void)_changedParameter
{
  type = self->_type;
  v4 = [(UIDynamicBehavior *)self _context];
  v5 = [(UIDynamicBehavior *)self _items];
  v6 = [v5 objectAtIndex:0];
  v7 = [v4 _bodyForItem:v6];

  if (type)
  {
    [v7 setResting:0];
    [(PKExtendedPhysicsBody *)self->_anchorBody setResting:0];
  }

  else
  {
    v8 = [(UIDynamicBehavior *)self _context];
    v9 = [(UIDynamicBehavior *)self _items];
    v10 = [v9 objectAtIndex:1];
    v11 = [v8 _bodyForItem:v10];

    [v7 setResting:0];
    [v11 setResting:0];
  }

  v12 = [(UIDynamicBehavior *)self _context];
  [v12 _tickle];
}

- (void)_reevaluateJoint
{
  v3 = [(UIDynamicBehavior *)self _context];
  v4 = [v3 _world];

  if (!v4)
  {
    return;
  }

  type = self->_type;
  v6 = [(UIDynamicBehavior *)self _items];
  v7 = [v6 objectAtIndex:0];

  if (type)
  {
    v8 = [(UIDynamicBehavior *)self _context];
    v48 = [v8 _bodyForItem:v7];

    v9 = self->_anchorBody;
  }

  else
  {
    v10 = [(UIDynamicBehavior *)self _items];
    v11 = [v10 objectAtIndex:1];

    v12 = [(UIDynamicBehavior *)self _context];
    v48 = [v12 _bodyForItem:v7];

    v13 = [(UIDynamicBehavior *)self _context];
    v9 = [v13 _bodyForItem:v11];
  }

  if (self->_joint)
  {
    v14 = [(UIDynamicBehavior *)self _context];
    v15 = [v14 _world];
    [v15 removeJoint:self->_joint];

    joint = self->_joint;
    self->_joint = 0;
  }

  attachmentType = self->_attachmentType;
  if (attachmentType <= 1)
  {
    if (!attachmentType)
    {
      v36 = [MEMORY[0x1E69C4A30] jointWithBodyA:v48 bodyB:v9 localAnchorA:self->_anchorPointA.x localAnchorB:{self->_anchorPointA.y, self->_anchorPointB.x, self->_anchorPointB.y}];
      v37 = self->_joint;
      self->_joint = v36;

      stateFlags = self->_stateFlags;
      v39 = stateFlags & 0xDF;
      *&self->_stateFlags = stateFlags & 0xDF;
      if (stateFlags)
      {
        [(PKPhysicsJoint *)self->_joint setDamping:self->_damping];
        v39 = self->_stateFlags;
      }

      if ((v39 & 2) != 0)
      {
        [(PKPhysicsJoint *)self->_joint setFrequency:self->_frequency];
        v39 = self->_stateFlags;
      }

      if ((v39 & 4) != 0)
      {
        [(PKPhysicsJoint *)self->_joint setLength:self->_length];
      }

      if (!self->_type)
      {
        [(PKPhysicsJoint *)self->_joint setCollideConnected:1];
      }

      v40 = [(UIDynamicBehavior *)self _context];
      v41 = [v40 _world];
      [v41 addJoint:self->_joint];

      if ((*&self->_stateFlags & 4) != 0)
      {
        [(PKPhysicsJoint *)self->_joint setLength:self->_length];
      }

      [(PKPhysicsJoint *)self->_joint length];
      if (v42 >= 1.0 || self->_frequency != 0.0 || self->_type != 1 || (*&self->_stateFlags & 4) != 0)
      {
        goto LABEL_26;
      }

      v43 = [(UIDynamicBehavior *)self _context];
      v44 = [v43 _world];
      [v44 removeJoint:self->_joint];

      v45 = self->_joint;
      self->_joint = 0;

      [(PKExtendedPhysicsBody *)v9 position];
      v46 = [MEMORY[0x1E69C4A40] jointWithBodyA:v48 bodyB:v9 anchor:?];
      v47 = self->_joint;
      self->_joint = v46;

      *&self->_stateFlags |= 0x20u;
      goto LABEL_24;
    }

    if (attachmentType == 1)
    {
      v27 = [MEMORY[0x1E69C4A40] jointWithBodyA:v48 bodyB:v9 anchor:{self->_anchorPoint.x, self->_anchorPoint.y}];
      *&self->_stateFlags |= 0x20u;
      objc_storeStrong(&self->_joint, v27);
      v28 = self->_stateFlags;
      if ((v28 & 0x10) != 0)
      {
        [v27 setFrictionTorque:self->_frictionTorque];
        v28 = self->_stateFlags;
      }

      if ((v28 & 8) != 0)
      {
        [(UIAttachmentBehavior *)self _updateJointWithRange:self->_attachmentRange.minimum, self->_attachmentRange.maximum];
      }

      v29 = [(UIDynamicBehavior *)self _context];
      v30 = [v29 _world];
      [v30 addJoint:self->_joint];

      goto LABEL_25;
    }
  }

  else
  {
    switch(attachmentType)
    {
      case 2:
        v31 = [MEMORY[0x1E69C4A38] jointWithBodyA:v48 bodyB:v9 anchor:self->_anchorPoint.x axis:{self->_anchorPoint.y, self->_axis.dx, self->_axis.dy}];
        v32 = self->_joint;
        self->_joint = v31;

        v33 = self->_stateFlags;
        *&self->_stateFlags = v33 & 0xDF;
        if ((v33 & 8) != 0)
        {
          [(UIAttachmentBehavior *)self _updateJointWithRange:self->_attachmentRange.minimum, self->_attachmentRange.maximum];
        }

        goto LABEL_24;
      case 3:
        v34 = [MEMORY[0x1E69C4A50] jointWithBodyA:v48 bodyB:v9 anchor:{self->_anchorPoint.x, self->_anchorPoint.y}];
        v35 = self->_joint;
        self->_joint = v34;

        *&self->_stateFlags &= ~0x20u;
LABEL_24:
        v27 = [(UIDynamicBehavior *)self _context];
        v29 = [v27 _world];
        [v29 addJoint:self->_joint];
LABEL_25:

        break;
      case 4:
        [v48 position];
        v19 = v18 - self->_anchorPointA.x;
        v21 = v20 - self->_anchorPointA.y;
        [(PKExtendedPhysicsBody *)v9 position];
        v24 = [MEMORY[0x1E69C4A48] jointWithBodyA:v48 bodyB:v9 anchorA:v19 anchorB:{v21, v22 - self->_anchorPointB.x, v23 - self->_anchorPointB.y}];
        v25 = self->_joint;
        self->_joint = v24;

        v26 = self->_stateFlags;
        *&self->_stateFlags = v26 & 0xDF;
        if ((v26 & 4) != 0)
        {
          [(PKPhysicsJoint *)self->_joint setMaxLength:self->_length];
        }

        goto LABEL_24;
    }
  }

LABEL_26:
}

- (void)_associate
{
  type = self->_type;
  v4 = [(UIDynamicBehavior *)self _items];
  v5 = [v4 objectAtIndex:0];

  if (type)
  {
    v6 = [(UIDynamicBehavior *)self _context];
    v7 = [v6 _registerBodyForItem:v5];

    v8 = [PKExtendedPhysicsBody bodyWithRectangleOfSize:1.0, 1.0];
    [(PKExtendedPhysicsBody *)v8 setPosition:self->_anchorPoint.x, self->_anchorPoint.y];
    [(PKExtendedPhysicsBody *)v8 setDynamic:0];
    anchorBody = self->_anchorBody;
    self->_anchorBody = v8;
    v10 = v8;

    v11 = [(UIDynamicBehavior *)self _context];
    v12 = [v11 _world];
    [v12 addBody:v10];
  }

  else
  {
    v13 = [(UIDynamicBehavior *)self _items];
    v11 = [v13 objectAtIndex:1];

    v14 = [(UIDynamicBehavior *)self _context];
    v15 = [v14 _registerBodyForItem:v5];

    v12 = [(UIDynamicBehavior *)self _context];
    v16 = [v12 _registerBodyForItem:v11];
  }

  [(UIAttachmentBehavior *)self _reevaluateJoint];
}

- (void)_dissociate
{
  v3 = [(UIDynamicBehavior *)self _context];
  v4 = [v3 _world];
  [v4 removeJoint:self->_joint];

  if (self->_type == 1)
  {
    v5 = [(UIDynamicBehavior *)self _context];
    v6 = [v5 _world];
    [v6 removeBody:self->_anchorBody];

    anchorBody = self->_anchorBody;
    self->_anchorBody = 0;
  }

  joint = self->_joint;
  self->_joint = 0;

  type = self->_type;
  v10 = [(UIDynamicBehavior *)self _items];
  v15 = [v10 objectAtIndex:0];

  if (type)
  {
    v11 = [(UIDynamicBehavior *)self _context];
    [v11 _unregisterBodyForItem:v15 action:0];
  }

  else
  {
    v12 = [(UIDynamicBehavior *)self _items];
    v11 = [v12 objectAtIndex:1];

    v13 = [(UIDynamicBehavior *)self _context];
    [v13 _unregisterBodyForItem:v15 action:0];

    v14 = [(UIDynamicBehavior *)self _context];
    [v14 _unregisterBodyForItem:v11 action:0];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v15.receiver = self;
  v15.super_class = UIAttachmentBehavior;
  v4 = [(UIDynamicBehavior *)&v15 description];
  v5 = [v3 stringWithString:v4];

  v6 = [(UIDynamicBehavior *)self _items];
  v7 = [v6 objectAtIndex:0];

  [v5 appendFormat:@" %@ <-", v7];
  stateFlags = self->_stateFlags;
  if ((stateFlags & 1) == 0)
  {
    goto LABEL_12;
  }

  objc_msgSend(v5, "appendString:", @"(");
  if (*&self->_stateFlags)
  {
    [v5 appendFormat:@"D:%f", *&self->_damping];
    v9 = self->_stateFlags;
    if ((v9 & 2) == 0)
    {
      goto LABEL_9;
    }

    [v5 appendString:@" "];
LABEL_8:
    [v5 appendFormat:@"F:%f", *&self->_frequency];
    v9 = self->_stateFlags;
LABEL_9:
    [v5 appendString:@" "];
    if ((v9 & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    [(UIAttachmentBehavior *)self length];
    [v5 appendFormat:@"l:%f", v10];
    goto LABEL_11;
  }

  if ((*&self->_stateFlags & 2) != 0)
  {
    goto LABEL_8;
  }

  if ((*&self->_stateFlags & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  [v5 appendFormat:@"L:%f", *&self->_length];
LABEL_11:
  [v5 appendString:@""]);
  stateFlags = self->_stateFlags;
LABEL_12:
  if ((stateFlags & 0x20) != 0)
  {
    v11 = @" R ";
  }

  else
  {
    v11 = @" D ";
  }

  [v5 appendString:v11];
  if (self->_type)
  {
    [(UIAttachmentBehavior *)self anchorPoint];
    v12 = NSStringFromCGPoint(v17);
  }

  else
  {
    v13 = [(UIDynamicBehavior *)self _items];
    v12 = [v13 objectAtIndex:1];
  }

  [v5 appendFormat:@"-> %@", v12];

  return v5;
}

- (UIFloatRange)attachmentRange
{
  minimum = self->_attachmentRange.minimum;
  maximum = self->_attachmentRange.maximum;
  result.maximum = maximum;
  result.minimum = minimum;
  return result;
}

@end