@interface SXTextExclusionPath
- (double)actualPosition;
- (double)exclusionRect;
- (double)insets;
- (double)path;
- (double)position;
- (double)setExclusionRect:(double)a3;
- (double)verticalAlignmentFactor;
- (id)description;
- (id)initWithTextRange:(uint64_t)a3 position:(double)a4 rect:(double)a5 withInsets:(double)a6;
- (uint64_t)lineVerticalAlignment;
- (uint64_t)range;
- (uint64_t)setActualPosition:(double)a3;
- (uint64_t)setFullBleed:(uint64_t)result;
- (uint64_t)setLineVerticalAlignment:(uint64_t)result;
- (uint64_t)setRange:(uint64_t)a3;
- (uint64_t)setVerticalAlignmentFactor:(uint64_t)result;
- (uint64_t)type;
- (void)adjustYPositionWithCurrentPosition:(double)a3;
- (void)callCompletionBlock;
- (void)callStartBlock;
- (void)setCompletionBlock:(void *)a1;
- (void)setComponentIdentifier:(uint64_t)a1;
- (void)setMinYBlock:(void *)a1;
- (void)wrappable;
@end

@implementation SXTextExclusionPath

- (id)initWithTextRange:(uint64_t)a3 position:(double)a4 rect:(double)a5 withInsets:(double)a6
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
      *(result + 17) = a3;
      *(result + 12) = a4 - a13;
      *(result + 13) = a5 - a12;
      *(result + 18) = a12;
      *(result + 19) = a13;
      *(result + 20) = a14;
      *(result + 21) = a15;
      *(result + 22) = a6;
      *(result + 23) = a7;
      *(result + 24) = a8 + a13 + a15;
      *(result + 25) = a9 + a12 + a14;
    }
  }

  return result;
}

- (uint64_t)setActualPosition:(double)a3
{
  if (result)
  {
    *(result + 80) = a2;
    *(result + 88) = a3;
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
  v7 = [(SXTextExclusionPath *)self path];
  [v7 bounds];
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
  if (a1)
  {
    a1 = [MEMORY[0x1E69DC728] bezierPathWithRect:{a1[22], a1[23], a1[24], a1[25]}];
    v1 = vars8;
  }

  return a1;
}

- (double)actualPosition
{
  if (a1)
  {
    return *(a1 + 80);
  }

  else
  {
    return OUTLINED_FUNCTION_0_5();
  }
}

- (void)wrappable
{
  if (a1)
  {
    v2 = a1;
    if (!a1[9])
    {
      v3 = [[SXTextExclusionPathWrapper alloc] initWithTextExclusionPath:a1];
      v4 = v2[9];
      v2[9] = v3;
    }

    a1 = v2[9];
    v1 = vars8;
  }

  return a1;
}

- (void)callStartBlock
{
  if (a1 && a1[6])
  {
    OUTLINED_FUNCTION_2_0();
    v2();

    objc_setProperty_nonatomic_copy(a1, v3, 0, 48);
  }
}

- (void)adjustYPositionWithCurrentPosition:(double)a3
{
  if (a1 && *(a1 + 56))
  {
    OUTLINED_FUNCTION_2_0();
    v6 = v5();
    if (v6 < a3)
    {
      v6 = a3;
    }

    *(a1 + 104) = v6;
  }
}

- (void)callCompletionBlock
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, a2, 0, 56);
    if (a1[8])
    {
      OUTLINED_FUNCTION_2_0();
      v3();

      objc_setProperty_nonatomic_copy(a1, v4, 0, 64);
    }
  }
}

- (void)setMinYBlock:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 56);
  }
}

- (void)setCompletionBlock:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 64);
  }
}

- (double)exclusionRect
{
  if (a1)
  {
    return *(a1 + 176);
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
  if (a1)
  {
    return *(a1 + 96);
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

- (uint64_t)setRange:(uint64_t)a3
{
  if (result)
  {
    *(result + 128) = a2;
    *(result + 136) = a3;
  }

  return result;
}

- (double)verticalAlignmentFactor
{
  if (a1)
  {
    return *(a1 + 32);
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
  if (a1)
  {
    return *(a1 + 144);
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

- (void)setComponentIdentifier:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 40), a2);
  }
}

- (double)setExclusionRect:(double)a3
{
  if (result)
  {
    result[22] = a2;
    result[23] = a3;
    result[24] = a4;
    result[25] = a5;
  }

  return result;
}

@end