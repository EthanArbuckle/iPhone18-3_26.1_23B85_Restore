@interface PIInpaintOperation
- (BOOL)hasExclusionMask;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualtoInpaintOperation:(id)a3;
- (BOOL)isFilledBrushStroke;
- (BOOL)isTargetPoints;
- (CGPoint)sourceOffset;
- (PIInpaintOperation)init;
- (PIInpaintOperation)initWithDictionary:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)nu_updateDigest:(id)a3;
@end

@implementation PIInpaintOperation

- (CGPoint)sourceOffset
{
  x = self->_sourceOffset.x;
  y = self->_sourceOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (BOOL)isEqualtoInpaintOperation:(id)a3
{
  v4 = a3;
  v5 = [v4 mode];
  if (v5 != [(PIInpaintOperation *)self mode])
  {
    goto LABEL_8;
  }

  v6 = [v4 options];
  if (v6 != [(PIInpaintOperation *)self options])
  {
    goto LABEL_8;
  }

  if ([(PIInpaintOperation *)self mode]== 2)
  {
    v7 = [v4 brushStroke];
    v8 = [(PIInpaintOperation *)self brushStroke];
    v9 = [v7 isEqualToBrushStroke:v8];

    if ((v9 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = [v4 maskIdentifiers];
    v11 = [(PIInpaintOperation *)self maskIdentifiers];
    v12 = [v10 isEqualToArray:v11];

    if (!v12)
    {
LABEL_8:
      v14 = 0;
      goto LABEL_9;
    }
  }

  v13 = [v4 hasExclusionMask];
  if (v13 != [(PIInpaintOperation *)self hasExclusionMask])
  {
    goto LABEL_8;
  }

  if ([(PIInpaintOperation *)self hasExclusionMask])
  {
    v16 = [v4 exclusionMaskIdentifiers];
    v17 = [(PIInpaintOperation *)self exclusionMaskIdentifiers];
    v14 = [v16 isEqualToArray:v17];
  }

  else
  {
    v14 = 1;
  }

LABEL_9:

  return v14 & 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 isEqualtoInpaintOperation:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  mode = self->_mode;
  if (mode == 2)
  {
    v4 = (0x218F3622596F05 * [(NUBrushStroke *)self->_brushStroke hash]) ^ 0x4528A1BEDC7236;
  }

  else
  {
    v5 = 0x229450DF6E391BLL * mode;
    v6 = 0x1EA54677C8386DLL * NUDeepArrayHash();
    v4 = v6 ^ v5 ^ (0x1461D866E2FF85 * NUDeepArrayHash());
  }

  return (0xA9D3B49167B13 * self->_options) ^ v4;
}

- (void)nu_updateDigest:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 addString:@"PIInpaintOperation{"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_mode];
  [v5 nu_updateDigest:v4];

  [(NUBrushStroke *)self->_brushStroke nu_updateDigest:v4];
  [v4 addCString:{", "}];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [(PIInpaintOperation *)self maskIdentifiers];
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v4 addString:*(*(&v25 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v8);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [(PIInpaintOperation *)self exclusionMaskIdentifiers];
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [v4 addString:*(*(&v21 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v13);
  }

  [v4 addCString:{", "}];
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PIInpaintOperation options](self, "options")}];
  [v16 nu_updateDigest:v4];

  if (self->_sourceOffset.x != *MEMORY[0x1E695EFF8] || self->_sourceOffset.y != *(MEMORY[0x1E695EFF8] + 8))
  {
    [v4 addCString:{", "}];
    v29[0] = @"x";
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:self->_sourceOffset.x];
    v29[1] = @"y";
    v30[0] = v18;
    v19 = [MEMORY[0x1E696AD98] numberWithDouble:self->_sourceOffset.y];
    v30[1] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];

    [v20 nu_updateDigest:v4];
  }

  [v4 addString:@"}"];
}

- (BOOL)isFilledBrushStroke
{
  v3 = [(PIInpaintOperation *)self maskIdentifiers];
  v4 = PFExists();

  return (v4 | ([(PIInpaintOperation *)self options]>> 4)) & 1;
}

- (BOOL)isTargetPoints
{
  v3 = [(PIInpaintOperation *)self maskIdentifiers];
  v4 = PFExists();

  return (v4 | ([(PIInpaintOperation *)self options]>> 3)) & 1;
}

- (BOOL)hasExclusionMask
{
  v2 = [(PIInpaintOperation *)self exclusionMaskIdentifiers];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(PIInpaintOperation *)self brushStroke];
  [v3 setObject:v4 forKeyedSubscript:@"stroke"];

  v5 = [(PIInpaintOperation *)self maskIdentifiers];
  [v3 setObject:v5 forKeyedSubscript:@"maskIdentifiers"];

  v6 = [(PIInpaintOperation *)self exclusionMaskIdentifiers];
  [v3 setObject:v6 forKeyedSubscript:@"exclusionMaskIdentifiers"];

  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8 = objc_opt_class();
  v9 = PIRetouchModeToString([(PIInpaintOperation *)self mode]);
  v10 = [v7 initWithFormat:@"<%@:%p> mode=%@ details:%@", v8, self, v9, v3];

  return v10;
}

- (PIInpaintOperation)initWithDictionary:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = PIInpaintOperation;
  v5 = [(PIInpaintOperation *)&v24 init];
  v6 = [v4 objectForKeyedSubscript:@"mode"];
  v5->_mode = PIRetouchModeFromString(v6);

  if ((v5->_mode - 1) <= 1)
  {
    v7 = [MEMORY[0x1E69B3980] brushStrokeFromDictionary:v4];
    brushStroke = v5->_brushStroke;
    v5->_brushStroke = v7;

    if (v5->_mode == 1)
    {
      v9 = [v4 objectForKeyedSubscript:@"repairEdges"];
      v5->_repairEdges = [v9 BOOLValue];

      v10 = [v4 objectForKeyedSubscript:@"sourceOffset"];
      v11 = [v10 objectForKeyedSubscript:@"x"];
      v12 = [v10 objectForKeyedSubscript:@"y"];
      [v11 doubleValue];
      v14 = v13;
      [v12 doubleValue];
      v5->_sourceOffset.x = v14;
      v5->_sourceOffset.y = v15;
    }
  }

  v16 = [v4 objectForKeyedSubscript:@"options"];
  v5->_options = [v16 unsignedIntegerValue];

  v17 = [v4 objectForKeyedSubscript:@"maskIdentifiers"];
  v18 = [v17 copy];
  maskIdentifiers = v5->_maskIdentifiers;
  v5->_maskIdentifiers = v18;

  v20 = [v4 objectForKeyedSubscript:@"exclusionMaskIdentifiers"];
  v21 = [v20 copy];
  exclusionMaskIdentifiers = v5->_exclusionMaskIdentifiers;
  v5->_exclusionMaskIdentifiers = v21;

  return v5;
}

- (PIInpaintOperation)init
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v4 = MEMORY[0x1E69B3D70];
    v5 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = v5;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(a2);
      v11 = [v6 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v9, v10];
      *buf = 138543362;
      v27 = v11;
      _os_log_error_impl(&dword_1C7694000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v12 = *v3;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v12 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_122_2423);
        }

LABEL_11:
        v18 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v20 = MEMORY[0x1E696AF00];
          v21 = specific;
          v22 = v18;
          v23 = [v20 callStackSymbols];
          v24 = [v23 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v27 = specific;
          v28 = 2114;
          v29 = v24;
          _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v12 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_122_2423);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v13 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v14 = MEMORY[0x1E696AF00];
      v15 = v13;
      v16 = [v14 callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v17;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v25 = objc_opt_class();
    NSStringFromClass(v25);
    objc_claimAutoreleasedReturnValue();
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_122_2423);
  }
}

@end