@interface SXTextExclusionPath
- (double)actualPosition;
- (double)exclusionRect;
- (double)insets;
- (double)path;
- (double)position;
- (double)setExclusionRect:(double)rect;
- (double)verticalAlignmentFactor;
- (id)description;
- (id)initWithTextRange:(uint64_t)range position:(double)position rect:(double)rect withInsets:(double)insets;
- (uint64_t)lineVerticalAlignment;
- (uint64_t)range;
- (uint64_t)setActualPosition:(double)position;
- (uint64_t)setFullBleed:(uint64_t)result;
- (uint64_t)setLineVerticalAlignment:(uint64_t)result;
- (uint64_t)setRange:(uint64_t)range;
- (uint64_t)setVerticalAlignmentFactor:(uint64_t)result;
- (uint64_t)type;
- (void)adjustYPositionWithCurrentPosition:(double)position;
- (void)callCompletionBlock;
- (void)callStartBlock;
- (void)setCompletionBlock:(void *)block;
- (void)setComponentIdentifier:(uint64_t)identifier;
- (void)setMinYBlock:(void *)block;
- (void)wrappable;
@end

@implementation SXTextExclusionPath

- (id)initWithTextRange:(uint64_t)range position:(double)position rect:(double)rect withInsets:(double)insets
{
  if (result)
  {
    v26.receiver = result;
    v26.super_class = SXTextExclusionPath;
    result = objc_msgSendSuper2(&v26, sel_init);
    if (result)
    {
      *(result + 3) = 2;
      *(result + 16) = a2;
      *(result + 17) = range;
      *(result + 12) = position - a13;
      *(result + 13) = rect - a12;
      *(result + 18) = a12;
      *(result + 19) = a13;
      *(result + 20) = a14;
      *(result + 21) = a15;
      *(result + 22) = insets;
      *(result + 23) = a7;
      *(result + 24) = a8 + a13 + a15;
      *(result + 25) = a9 + a12 + a14;
    }
  }

  return result;
}

- (uint64_t)setActualPosition:(double)position
{
  if (result)
  {
    *(result + 80) = a2;
    *(result + 88) = position;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if (self)
  {
    componentIdentifier = self->_componentIdentifier;
  }

  else
  {
    componentIdentifier = 0;
  }

  v6 = componentIdentifier;
  path = [(SXTextExclusionPath *)self path];
  [path bounds];
  v8 = NSStringFromCGRect(v15);
  if (self)
  {
    x = self->_actualPosition.x;
    y = self->_actualPosition.y;
  }

  else
  {
    y = 0.0;
    x = 0.0;
  }

  v11 = NSStringFromCGPoint(*&x);
  v12 = [v3 stringWithFormat:@"%@ <%p>: %@, %@, position: %@", v4, self, v6, v8, v11];

  return v12;
}

- (double)path
{
  if (self)
  {
    self = [MEMORY[0x1E69DC728] bezierPathWithRect:{self[22], self[23], self[24], self[25]}];
    v1 = vars8;
  }

  return self;
}

- (double)actualPosition
{
  if (self)
  {
    return *(self + 80);
  }

  else
  {
    return OUTLINED_FUNCTION_0_5();
  }
}

- (void)wrappable
{
  if (self)
  {
    selfCopy = self;
    if (!self[9])
    {
      v3 = [[SXTextExclusionPathWrapper alloc] initWithTextExclusionPath:self];
      v4 = selfCopy[9];
      selfCopy[9] = v3;
    }

    self = selfCopy[9];
    v1 = vars8;
  }

  return self;
}

- (void)callStartBlock
{
  if (self && self[6])
  {
    OUTLINED_FUNCTION_2_0();
    v2();

    objc_setProperty_nonatomic_copy(self, v3, 0, 48);
  }
}

- (void)adjustYPositionWithCurrentPosition:(double)position
{
  if (self && *(self + 56))
  {
    OUTLINED_FUNCTION_2_0();
    positionCopy = v5();
    if (positionCopy < position)
    {
      positionCopy = position;
    }

    *(self + 104) = positionCopy;
  }
}

- (void)callCompletionBlock
{
  if (self)
  {
    objc_setProperty_nonatomic_copy(self, a2, 0, 56);
    if (self[8])
    {
      OUTLINED_FUNCTION_2_0();
      v3();

      objc_setProperty_nonatomic_copy(self, v4, 0, 64);
    }
  }
}

- (void)setMinYBlock:(void *)block
{
  if (block)
  {
    objc_setProperty_nonatomic_copy(block, newValue, newValue, 56);
  }
}

- (void)setCompletionBlock:(void *)block
{
  if (block)
  {
    objc_setProperty_nonatomic_copy(block, newValue, newValue, 64);
  }
}

- (double)exclusionRect
{
  if (self)
  {
    return *(self + 176);
  }

  else
  {
    return OUTLINED_FUNCTION_1_0();
  }
}

- (uint64_t)type
{
  if (result)
  {
    return *(result + 12);
  }

  return result;
}

- (double)position
{
  if (self)
  {
    return *(self + 96);
  }

  else
  {
    return OUTLINED_FUNCTION_0_5();
  }
}

- (uint64_t)range
{
  if (result)
  {
    return *(result + 128);
  }

  return result;
}

- (uint64_t)setRange:(uint64_t)range
{
  if (result)
  {
    *(result + 128) = a2;
    *(result + 136) = range;
  }

  return result;
}

- (double)verticalAlignmentFactor
{
  if (self)
  {
    return *(self + 32);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)setVerticalAlignmentFactor:(uint64_t)result
{
  if (result)
  {
    *(result + 32) = a2;
  }

  return result;
}

- (uint64_t)lineVerticalAlignment
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (uint64_t)setLineVerticalAlignment:(uint64_t)result
{
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

- (double)insets
{
  if (self)
  {
    return *(self + 144);
  }

  else
  {
    return OUTLINED_FUNCTION_1_0();
  }
}

- (uint64_t)setFullBleed:(uint64_t)result
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

- (void)setComponentIdentifier:(uint64_t)identifier
{
  if (identifier)
  {
    objc_storeStrong((identifier + 40), a2);
  }
}

- (double)setExclusionRect:(double)rect
{
  if (result)
  {
    result[22] = a2;
    result[23] = rect;
    result[24] = a4;
    result[25] = a5;
  }

  return result;
}

@end