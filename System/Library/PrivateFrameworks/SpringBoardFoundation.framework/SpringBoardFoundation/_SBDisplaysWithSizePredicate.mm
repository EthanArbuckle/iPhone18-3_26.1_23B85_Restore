@interface _SBDisplaysWithSizePredicate
+ (id)fromDefaultsKey:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesDisplay:(id)a3;
- (_SBDisplaysWithSizePredicate)initWithDiagonal:(unint64_t)a3 pixelSize:(CGSize)a4;
- (_SBDisplaysWithSizePredicate)initWithDisplay:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation _SBDisplaysWithSizePredicate

- (_SBDisplaysWithSizePredicate)initWithDiagonal:(unint64_t)a3 pixelSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  if (a4.width == *MEMORY[0x1E695F060] && a4.height == *(MEMORY[0x1E695F060] + 8))
  {
    [_SBDisplaysWithSizePredicate initWithDiagonal:pixelSize:];
  }

  v10.receiver = self;
  v10.super_class = _SBDisplaysWithSizePredicate;
  result = [(SBDisplayModePredicate *)&v10 _init];
  if (result)
  {
    result->_diagonal = a3;
    result->_nativePixelSize.width = width;
    result->_nativePixelSize.height = height;
  }

  return result;
}

- (_SBDisplaysWithSizePredicate)initWithDisplay:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [_SBDisplaysWithSizePredicate initWithDisplay:];
  }

  v5 = [v4 CADisplay];
  v6 = [v5 immutableCopy];

  [v6 physicalSize];
  v9 = vcvtad_u64_f64(hypot(v7, v8));
  v10 = objc_alloc_init(MEMORY[0x1E6979340]);
  [v6 nativeSize];
  [v10 setResolution:?];
  v11 = [v6 preferredModeWithCriteria:v10];
  v12 = -[_SBDisplaysWithSizePredicate initWithDiagonal:pixelSize:](self, "initWithDiagonal:pixelSize:", v9, [v11 width], objc_msgSend(v11, "height"));

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = v8 && self->_diagonal == v8[1] && self->_nativePixelSize.height == *(v8 + 3) && self->_nativePixelSize.width == *(v8 + 2);
  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendUnsignedInteger:self->_diagonal];
  v5 = [v3 appendCGSize:{self->_nativePixelSize.width, self->_nativePixelSize.height}];
  v6 = [v3 hash];

  return v6;
}

- (BOOL)matchesDisplay:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    [_SBDisplaysWithSizePredicate matchesDisplay:];
  }

  v4 = [v3 CADisplay];
  v5 = [v4 uniqueId];

  if (v5)
  {
    v6 = [v3 CADisplay];
    v7 = [v6 immutableCopy];

    v8 = objc_alloc_init(MEMORY[0x1E6979340]);
    v9 = [v7 preferredModeWithCriteria:v8];

    [v9 width];
    [v9 height];
    if (BSFloatEqualToFloat() && BSFloatEqualToFloat())
    {
      [v7 physicalSize];
      hypot(v10, v11);
      v12 = BSFloatEqualToFloat();
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)fromDefaultsKey:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"^\\(\\.%@ \\[(\\d+)\\] \\[(\\d+)\\s+(\\d+)\\]\\)$", @"matchingDisplays"];
  v6 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v5 options:0 error:0];
  v7 = [v6 firstMatchInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 rangeAtIndex:1];
    v11 = [v4 substringWithRange:{v9, v10}];
    v12 = [v8 rangeAtIndex:2];
    v14 = [v4 substringWithRange:{v12, v13}];
    v15 = [v8 rangeAtIndex:3];
    v17 = [v4 substringWithRange:{v15, v16}];
    v18 = v17;
    if (v11)
    {
      v19 = v14 == 0;
    }

    else
    {
      v19 = 1;
    }

    v20 = v19 || v17 == 0;
    if (v20 || ((v21 = [v14 integerValue], v22 = objc_msgSend(v18, "integerValue"), v24 = *(MEMORY[0x1E695F060] + 8), *MEMORY[0x1E695F060] == v21) ? (v25 = v24 == v22) : (v25 = 0), v25))
    {
      v26 = 0;
    }

    else
    {
      v23 = *MEMORY[0x1E695F060];
      v26 = [[a1 alloc] initWithDiagonal:objc_msgSend(v11 pixelSize:{"integerValue", v23, v24), v21, v22}];
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  diagonal = self->_diagonal;
  v6 = BSNSStringFromCGSize();
  v7 = [v3 stringWithFormat:@"<%@:%p> [diagonal: %lu] [pixelSize: %@]", v4, self, diagonal, v6];

  return v7;
}

- (void)initWithDiagonal:pixelSize:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"!CGSizeEqualToSize(pixelSize object:CGSizeZero)" file:? lineNumber:? description:?];
}

- (void)initWithDisplay:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"displayConfiguration" object:? file:? lineNumber:? description:?];
}

- (void)matchesDisplay:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"displayConfiguration != nil" object:? file:? lineNumber:? description:?];
}

@end