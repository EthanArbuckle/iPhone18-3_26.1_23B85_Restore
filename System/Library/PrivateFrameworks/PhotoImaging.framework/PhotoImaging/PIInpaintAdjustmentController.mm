@interface PIInpaintAdjustmentController
- (BOOL)_maskArray:(id)array hasSourceWithIdentifier:(id)identifier;
- (BOOL)appendRemovalOperationWithMasks:(id)masks exclusionMasks:(id)exclusionMasks options:(unint64_t)options error:(id *)error;
- (id)deltaFromComposition:(id)composition;
- (unint64_t)operationCount;
- (void)appendCloneStroke:(id)stroke sourceOffset:(CGPoint)offset repairEdges:(BOOL)edges;
- (void)appendOperation:(id)operation;
- (void)appendStroke:(id)stroke exclusionMasks:(id)masks options:(unint64_t)options;
- (void)applyDelta:(id)delta;
- (void)initializeAdjustment;
@end

@implementation PIInpaintAdjustmentController

- (BOOL)appendRemovalOperationWithMasks:(id)masks exclusionMasks:(id)exclusionMasks options:(unint64_t)options error:(id *)error
{
  v98 = *MEMORY[0x1E69E9840];
  masksCopy = masks;
  exclusionMasksCopy = exclusionMasks;
  if (!error)
  {
    v63 = NUAssertLogger_10117();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v64;
      _os_log_error_impl(&dword_1C7694000, v63, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v65 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v67 = NUAssertLogger_10117();
    v68 = os_log_type_enabled(v67, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v68)
      {
        v71 = dispatch_get_specific(*v65);
        v72 = MEMORY[0x1E696AF00];
        v73 = v71;
        callStackSymbols = [v72 callStackSymbols];
        v75 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v71;
        *&buf[12] = 2114;
        *&buf[14] = v75;
        _os_log_error_impl(&dword_1C7694000, v67, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v68)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v70 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v70;
      _os_log_error_impl(&dword_1C7694000, v67, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v12 = exclusionMasksCopy;
  selfCopy = self;
  containingComposition = [(PIAdjustmentController *)self containingComposition];
  v14 = containingComposition;
  if (containingComposition)
  {
    v15 = [containingComposition objectForKeyedSubscript:@"inpaintMasks"];
    v16 = [v15 mutableCopy];
    v17 = v16;
    optionsCopy = options;
    v78 = v14;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v20 = v18;

    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(masksCopy, "count")}];
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v79 = masksCopy;
    v22 = masksCopy;
    v23 = [v22 countByEnumeratingWithState:&v89 objects:v97 count:16];
    v80 = v12;
    v81 = v21;
    if (v23)
    {
      v24 = v23;
      errorCopy = error;
      v25 = 0;
      v82 = *v90;
      v26 = selfCopy;
      while (2)
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v90 != v82)
          {
            objc_enumerationMutation(v22);
          }

          v28 = *(*(&v89 + 1) + 8 * i);
          identifier = [v28 identifier];
          v30 = [(PIInpaintAdjustmentController *)v26 _maskArray:v20 hasSourceWithIdentifier:identifier];

          if (v30)
          {
            v40 = MEMORY[0x1E69B3A48];
            identifier2 = [v28 identifier];
            [v40 invalidError:@"Composition already has a mask with identifier" object:identifier2];
            *errorCopy = v19 = 0;
            masksCopy = v79;
            v12 = v80;
            v14 = v78;
            goto LABEL_38;
          }

          v31 = objc_alloc(MEMORY[0x1E69B3B58]);
          buffer = [v28 buffer];
          identifier3 = [v28 identifier];
          if (v28)
          {
            [v28 extent];
          }

          else
          {
            memset(buf, 0, 32);
          }

          scale = [v28 scale];
          v36 = [v31 initWithImageBuffer:buffer identifier:identifier3 extent:buf scale:{scale, v35}];

          [v20 addObject:v36];
          identifier4 = [v28 identifier];
          [v21 addObject:identifier4];

          identifier5 = [v28 identifier];
          LOBYTE(identifier4) = [PIObjectRemoval maskIdentifierIsDeclutter:identifier5];

          v25 |= identifier4;
          v26 = selfCopy;
        }

        v24 = [v22 countByEnumeratingWithState:&v89 objects:v97 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }

      v39 = @"Declutter";
      if ((v25 & 1) == 0)
      {
        v39 = @"ObjectRemoval";
      }

      v83 = v39;
      v12 = v80;
    }

    else
    {
      v83 = @"ObjectRemoval";
      v26 = selfCopy;
    }

    v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v12, "count")}];
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v42 = v12;
    v43 = [v42 countByEnumeratingWithState:&v85 objects:v95 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v86;
      do
      {
        for (j = 0; j != v44; ++j)
        {
          if (*v86 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v85 + 1) + 8 * j);
          identifier6 = [v47 identifier];
          v49 = [(PIInpaintAdjustmentController *)v26 _maskArray:v20 hasSourceWithIdentifier:identifier6];

          if (!v49)
          {
            v50 = objc_alloc(MEMORY[0x1E69B3B58]);
            buffer2 = [v47 buffer];
            identifier7 = [v47 identifier];
            if (v47)
            {
              [v47 extent];
            }

            else
            {
              memset(buf, 0, 32);
            }

            scale2 = [v47 scale];
            v55 = [v50 initWithImageBuffer:buffer2 identifier:identifier7 extent:buf scale:{scale2, v54}];

            [v20 addObject:v55];
            v26 = selfCopy;
          }

          identifier8 = [v47 identifier];
          [v22 addObject:identifier8];
        }

        v44 = [v42 countByEnumeratingWithState:&v85 objects:v95 count:16];
      }

      while (v44);
    }

    v14 = v78;
    [v78 setObject:v20 forKeyedSubscript:@"inpaintMasks"];
    v93[0] = @"mode";
    v93[1] = @"version";
    v94[0] = v83;
    v94[1] = &unk_1F471EC88;
    v94[2] = v81;
    v93[2] = @"maskIdentifiers";
    v93[3] = @"options";
    v57 = MEMORY[0x1E696AD98];
    v58 = v83;
    v59 = [v57 numberWithUnsignedInteger:optionsCopy];
    v94[3] = v59;
    identifier2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:v93 count:4];

    if ([v22 count])
    {
      v60 = [identifier2 mutableCopy];
      [v60 setObject:v22 forKeyedSubscript:@"exclusionMaskIdentifiers"];
      v61 = [v60 copy];

      identifier2 = v61;
    }

    masksCopy = v79;
    [(PIInpaintAdjustmentController *)selfCopy appendOperation:identifier2];
    v19 = 1;
    v12 = v80;
LABEL_38:
  }

  else
  {
    [MEMORY[0x1E69B3A48] invalidError:@"Internal composition not set" object:0];
    *error = v19 = 0;
  }

  return v19;
}

- (BOOL)_maskArray:(id)array hasSourceWithIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  identifierCopy = identifier;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = arrayCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        maskIdentifier = [*(*(&v14 + 1) + 8 * i) maskIdentifier];
        v12 = [maskIdentifier isEqualToString:identifierCopy];

        if (v12)
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (void)appendCloneStroke:(id)stroke sourceOffset:(CGPoint)offset repairEdges:(BOOL)edges
{
  edgesCopy = edges;
  y = offset.y;
  x = offset.x;
  v17[2] = *MEMORY[0x1E69E9840];
  v9 = [MEMORY[0x1E69B3980] dictionaryFromBrushStroke:stroke];
  v10 = [v9 mutableCopy];

  v11 = kRepairModeClone;
  [v10 setObject:v11 forKeyedSubscript:@"mode"];

  v16[0] = @"x";
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:x];
  v16[1] = @"y";
  v17[0] = v12;
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:y];
  v17[1] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  [v10 setObject:v14 forKeyedSubscript:@"sourceOffset"];

  v15 = [MEMORY[0x1E696AD98] numberWithBool:edgesCopy];
  [v10 setObject:v15 forKeyedSubscript:@"repairEdges"];

  [v10 setObject:0 forKeyedSubscript:@"clipRect"];
  [v10 setObject:&unk_1F471ECA0 forKeyedSubscript:@"options"];
  [(PIInpaintAdjustmentController *)self appendOperation:v10];
}

- (void)appendStroke:(id)stroke exclusionMasks:(id)masks options:(unint64_t)options
{
  v43 = *MEMORY[0x1E69E9840];
  masksCopy = masks;
  v9 = [MEMORY[0x1E69B3980] dictionaryFromBrushStroke:stroke];
  v10 = [v9 mutableCopy];

  [v10 setObject:@"RepairML" forKeyedSubscript:@"mode"];
  [v10 setObject:0 forKeyedSubscript:@"clipRect"];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:options];
  [v10 setObject:v11 forKeyedSubscript:@"options"];

  if ([masksCopy count])
  {
    v34 = v10;
    containingComposition = [(PIAdjustmentController *)self containingComposition];
    v12 = [containingComposition objectForKeyedSubscript:@"inpaintMasks"];
    v13 = [v12 mutableCopy];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v16 = v15;

    v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(masksCopy, "count")}];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v35 = masksCopy;
    obj = masksCopy;
    v18 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v39;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v39 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v38 + 1) + 8 * i);
          identifier = [v22 identifier];
          v24 = [(PIInpaintAdjustmentController *)self _maskArray:v16 hasSourceWithIdentifier:identifier];

          if (!v24)
          {
            selfCopy = self;
            v26 = objc_alloc(MEMORY[0x1E69B3B58]);
            buffer = [v22 buffer];
            identifier2 = [v22 identifier];
            if (v22)
            {
              [v22 extent];
            }

            else
            {
              memset(v37, 0, sizeof(v37));
            }

            scale = [v22 scale];
            v31 = [v26 initWithImageBuffer:buffer identifier:identifier2 extent:v37 scale:{scale, v30}];

            [v16 addObject:v31];
            self = selfCopy;
          }

          identifier3 = [v22 identifier];
          [v17 addObject:identifier3];
        }

        v19 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v19);
    }

    [containingComposition setObject:v16 forKeyedSubscript:@"inpaintMasks"];
    v10 = v34;
    [v34 setObject:v17 forKeyedSubscript:@"exclusionMaskIdentifiers"];

    masksCopy = v35;
  }

  [(PIInpaintAdjustmentController *)self appendOperation:v10];
}

- (void)appendOperation:(id)operation
{
  operationCopy = operation;
  adjustment = [(PIAdjustmentController *)self adjustment];
  array = [adjustment objectForKeyedSubscript:@"operations"];

  if (!array)
  {
    array = [MEMORY[0x1E695DEC8] array];
    [(PIInpaintAdjustmentController *)self initializeAdjustment];
  }

  v6 = [array arrayByAddingObject:operationCopy];

  adjustment2 = [(PIAdjustmentController *)self adjustment];
  [adjustment2 setObject:v6 forKeyedSubscript:@"operations"];
}

- (unint64_t)operationCount
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  v3 = [adjustment objectForKeyedSubscript:@"operations"];

  v4 = [v3 count];
  return v4;
}

- (void)initializeAdjustment
{
  adjustment = [(PIAdjustmentController *)self adjustment];
  [adjustment setObject:&unk_1F471EC88 forKeyedSubscript:@"version"];

  v12 = +[PIModelCatalog shared];
  cleanupVersion = [v12 cleanupVersion];
  adjustment2 = [(PIAdjustmentController *)self adjustment];
  [adjustment2 setObject:cleanupVersion forKeyedSubscript:@"cleanupVersion"];

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  segmentationModelVersion = [v12 segmentationModelVersion];
  [v6 setObject:segmentationModelVersion forKeyedSubscript:@"segmentationVersion"];

  inpaintModelVersion = [v12 inpaintModelVersion];
  [v6 setObject:inpaintModelVersion forKeyedSubscript:@"inpaintVersion"];

  refinementModelVersion = [v12 refinementModelVersion];
  [v6 setObject:refinementModelVersion forKeyedSubscript:@"refinementVersion"];

  if ([v6 count])
  {
    adjustment3 = [(PIAdjustmentController *)self adjustment];
    [adjustment3 setObject:v6 forKeyedSubscript:@"modelVersionInfo"];
  }

  adjustment4 = [(PIAdjustmentController *)self adjustment];
  [adjustment4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"enabled"];
}

- (void)applyDelta:(id)delta
{
  v24 = *MEMORY[0x1E69E9840];
  deltaCopy = delta;
  masks = [deltaCopy masks];
  v6 = [masks count];

  if (v6)
  {
    containingComposition = [(PIAdjustmentController *)self containingComposition];
    v8 = [containingComposition objectForKeyedSubscript:@"inpaintMasks"];
    v9 = v8;
    v10 = MEMORY[0x1E695E0F0];
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;

    masks2 = [deltaCopy masks];
    v13 = [v11 arrayByAddingObjectsFromArray:masks2];

    [containingComposition setObject:v13 forKeyedSubscript:@"inpaintMasks"];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  operations = [deltaCopy operations];
  v15 = [operations countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(operations);
        }

        [(PIInpaintAdjustmentController *)self appendOperation:*(*(&v19 + 1) + 8 * v18++)];
      }

      while (v16 != v18);
      v16 = [operations countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v16);
  }
}

- (id)deltaFromComposition:(id)composition
{
  compositionCopy = composition;
  adjustment = [(PIAdjustmentController *)self adjustment];
  v6 = [adjustment objectForKeyedSubscript:@"operations"];

  containingComposition = [(PIAdjustmentController *)self containingComposition];
  v8 = [containingComposition objectForKeyedSubscript:@"inpaintMasks"];

  v9 = [compositionCopy objectForKeyedSubscript:@"inpaint"];
  v10 = [v9 objectForKeyedSubscript:@"operations"];

  v11 = [compositionCopy objectForKeyedSubscript:@"inpaintMasks"];

  v12 = [v6 count];
  if (v12 <= [v10 count])
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v13 = [v6 subarrayWithRange:{objc_msgSend(v10, "count"), objc_msgSend(v6, "count") - objc_msgSend(v10, "count")}];
  }

  v14 = [v8 count];
  if (v14 <= [v11 count])
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v15 = [v8 subarrayWithRange:{objc_msgSend(v11, "count"), objc_msgSend(v8, "count") - objc_msgSend(v11, "count")}];
  }

  v16 = [[PIInpaintAdjustmentDelta alloc] initWithOperations:v13 masks:v15];

  return v16;
}

@end