@interface PIInpaintAdjustmentController
- (BOOL)_maskArray:(id)a3 hasSourceWithIdentifier:(id)a4;
- (BOOL)appendRemovalOperationWithMasks:(id)a3 exclusionMasks:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (id)deltaFromComposition:(id)a3;
- (unint64_t)operationCount;
- (void)appendCloneStroke:(id)a3 sourceOffset:(CGPoint)a4 repairEdges:(BOOL)a5;
- (void)appendOperation:(id)a3;
- (void)appendStroke:(id)a3 exclusionMasks:(id)a4 options:(unint64_t)a5;
- (void)applyDelta:(id)a3;
- (void)initializeAdjustment;
@end

@implementation PIInpaintAdjustmentController

- (BOOL)appendRemovalOperationWithMasks:(id)a3 exclusionMasks:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v98 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  if (!a6)
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
        v74 = [v72 callStackSymbols];
        v75 = [v74 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v71;
        *&buf[12] = 2114;
        *&buf[14] = v75;
        _os_log_error_impl(&dword_1C7694000, v67, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v68)
    {
      v69 = [MEMORY[0x1E696AF00] callStackSymbols];
      v70 = [v69 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v70;
      _os_log_error_impl(&dword_1C7694000, v67, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v12 = v11;
  v84 = self;
  v13 = [(PIAdjustmentController *)self containingComposition];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 objectForKeyedSubscript:@"inpaintMasks"];
    v16 = [v15 mutableCopy];
    v17 = v16;
    v77 = a5;
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

    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v79 = v10;
    v22 = v10;
    v23 = [v22 countByEnumeratingWithState:&v89 objects:v97 count:16];
    v80 = v12;
    v81 = v21;
    if (v23)
    {
      v24 = v23;
      v76 = a6;
      v25 = 0;
      v82 = *v90;
      v26 = v84;
      while (2)
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v90 != v82)
          {
            objc_enumerationMutation(v22);
          }

          v28 = *(*(&v89 + 1) + 8 * i);
          v29 = [v28 identifier];
          v30 = [(PIInpaintAdjustmentController *)v26 _maskArray:v20 hasSourceWithIdentifier:v29];

          if (v30)
          {
            v40 = MEMORY[0x1E69B3A48];
            v41 = [v28 identifier];
            [v40 invalidError:@"Composition already has a mask with identifier" object:v41];
            *v76 = v19 = 0;
            v10 = v79;
            v12 = v80;
            v14 = v78;
            goto LABEL_38;
          }

          v31 = objc_alloc(MEMORY[0x1E69B3B58]);
          v32 = [v28 buffer];
          v33 = [v28 identifier];
          if (v28)
          {
            [v28 extent];
          }

          else
          {
            memset(buf, 0, 32);
          }

          v34 = [v28 scale];
          v36 = [v31 initWithImageBuffer:v32 identifier:v33 extent:buf scale:{v34, v35}];

          [v20 addObject:v36];
          v37 = [v28 identifier];
          [v21 addObject:v37];

          v38 = [v28 identifier];
          LOBYTE(v37) = [PIObjectRemoval maskIdentifierIsDeclutter:v38];

          v25 |= v37;
          v26 = v84;
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
      v26 = v84;
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
          v48 = [v47 identifier];
          v49 = [(PIInpaintAdjustmentController *)v26 _maskArray:v20 hasSourceWithIdentifier:v48];

          if (!v49)
          {
            v50 = objc_alloc(MEMORY[0x1E69B3B58]);
            v51 = [v47 buffer];
            v52 = [v47 identifier];
            if (v47)
            {
              [v47 extent];
            }

            else
            {
              memset(buf, 0, 32);
            }

            v53 = [v47 scale];
            v55 = [v50 initWithImageBuffer:v51 identifier:v52 extent:buf scale:{v53, v54}];

            [v20 addObject:v55];
            v26 = v84;
          }

          v56 = [v47 identifier];
          [v22 addObject:v56];
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
    v59 = [v57 numberWithUnsignedInteger:v77];
    v94[3] = v59;
    v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:v93 count:4];

    if ([v22 count])
    {
      v60 = [v41 mutableCopy];
      [v60 setObject:v22 forKeyedSubscript:@"exclusionMaskIdentifiers"];
      v61 = [v60 copy];

      v41 = v61;
    }

    v10 = v79;
    [(PIInpaintAdjustmentController *)v84 appendOperation:v41];
    v19 = 1;
    v12 = v80;
LABEL_38:
  }

  else
  {
    [MEMORY[0x1E69B3A48] invalidError:@"Internal composition not set" object:0];
    *a6 = v19 = 0;
  }

  return v19;
}

- (BOOL)_maskArray:(id)a3 hasSourceWithIdentifier:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
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

        v11 = [*(*(&v14 + 1) + 8 * i) maskIdentifier];
        v12 = [v11 isEqualToString:v6];

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

- (void)appendCloneStroke:(id)a3 sourceOffset:(CGPoint)a4 repairEdges:(BOOL)a5
{
  v5 = a5;
  y = a4.y;
  x = a4.x;
  v17[2] = *MEMORY[0x1E69E9840];
  v9 = [MEMORY[0x1E69B3980] dictionaryFromBrushStroke:a3];
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

  v15 = [MEMORY[0x1E696AD98] numberWithBool:v5];
  [v10 setObject:v15 forKeyedSubscript:@"repairEdges"];

  [v10 setObject:0 forKeyedSubscript:@"clipRect"];
  [v10 setObject:&unk_1F471ECA0 forKeyedSubscript:@"options"];
  [(PIInpaintAdjustmentController *)self appendOperation:v10];
}

- (void)appendStroke:(id)a3 exclusionMasks:(id)a4 options:(unint64_t)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [MEMORY[0x1E69B3980] dictionaryFromBrushStroke:a3];
  v10 = [v9 mutableCopy];

  [v10 setObject:@"RepairML" forKeyedSubscript:@"mode"];
  [v10 setObject:0 forKeyedSubscript:@"clipRect"];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
  [v10 setObject:v11 forKeyedSubscript:@"options"];

  if ([v8 count])
  {
    v34 = v10;
    v33 = [(PIAdjustmentController *)self containingComposition];
    v12 = [v33 objectForKeyedSubscript:@"inpaintMasks"];
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

    v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v35 = v8;
    obj = v8;
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
          v23 = [v22 identifier];
          v24 = [(PIInpaintAdjustmentController *)self _maskArray:v16 hasSourceWithIdentifier:v23];

          if (!v24)
          {
            v25 = self;
            v26 = objc_alloc(MEMORY[0x1E69B3B58]);
            v27 = [v22 buffer];
            v28 = [v22 identifier];
            if (v22)
            {
              [v22 extent];
            }

            else
            {
              memset(v37, 0, sizeof(v37));
            }

            v29 = [v22 scale];
            v31 = [v26 initWithImageBuffer:v27 identifier:v28 extent:v37 scale:{v29, v30}];

            [v16 addObject:v31];
            self = v25;
          }

          v32 = [v22 identifier];
          [v17 addObject:v32];
        }

        v19 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v19);
    }

    [v33 setObject:v16 forKeyedSubscript:@"inpaintMasks"];
    v10 = v34;
    [v34 setObject:v17 forKeyedSubscript:@"exclusionMaskIdentifiers"];

    v8 = v35;
  }

  [(PIInpaintAdjustmentController *)self appendOperation:v10];
}

- (void)appendOperation:(id)a3
{
  v8 = a3;
  v4 = [(PIAdjustmentController *)self adjustment];
  v5 = [v4 objectForKeyedSubscript:@"operations"];

  if (!v5)
  {
    v5 = [MEMORY[0x1E695DEC8] array];
    [(PIInpaintAdjustmentController *)self initializeAdjustment];
  }

  v6 = [v5 arrayByAddingObject:v8];

  v7 = [(PIAdjustmentController *)self adjustment];
  [v7 setObject:v6 forKeyedSubscript:@"operations"];
}

- (unint64_t)operationCount
{
  v2 = [(PIAdjustmentController *)self adjustment];
  v3 = [v2 objectForKeyedSubscript:@"operations"];

  v4 = [v3 count];
  return v4;
}

- (void)initializeAdjustment
{
  v3 = [(PIAdjustmentController *)self adjustment];
  [v3 setObject:&unk_1F471EC88 forKeyedSubscript:@"version"];

  v12 = +[PIModelCatalog shared];
  v4 = [v12 cleanupVersion];
  v5 = [(PIAdjustmentController *)self adjustment];
  [v5 setObject:v4 forKeyedSubscript:@"cleanupVersion"];

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [v12 segmentationModelVersion];
  [v6 setObject:v7 forKeyedSubscript:@"segmentationVersion"];

  v8 = [v12 inpaintModelVersion];
  [v6 setObject:v8 forKeyedSubscript:@"inpaintVersion"];

  v9 = [v12 refinementModelVersion];
  [v6 setObject:v9 forKeyedSubscript:@"refinementVersion"];

  if ([v6 count])
  {
    v10 = [(PIAdjustmentController *)self adjustment];
    [v10 setObject:v6 forKeyedSubscript:@"modelVersionInfo"];
  }

  v11 = [(PIAdjustmentController *)self adjustment];
  [v11 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"enabled"];
}

- (void)applyDelta:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 masks];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(PIAdjustmentController *)self containingComposition];
    v8 = [v7 objectForKeyedSubscript:@"inpaintMasks"];
    v9 = v8;
    v10 = MEMORY[0x1E695E0F0];
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;

    v12 = [v4 masks];
    v13 = [v11 arrayByAddingObjectsFromArray:v12];

    [v7 setObject:v13 forKeyedSubscript:@"inpaintMasks"];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = [v4 operations];
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v14);
        }

        [(PIInpaintAdjustmentController *)self appendOperation:*(*(&v19 + 1) + 8 * v18++)];
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v16);
  }
}

- (id)deltaFromComposition:(id)a3
{
  v4 = a3;
  v5 = [(PIAdjustmentController *)self adjustment];
  v6 = [v5 objectForKeyedSubscript:@"operations"];

  v7 = [(PIAdjustmentController *)self containingComposition];
  v8 = [v7 objectForKeyedSubscript:@"inpaintMasks"];

  v9 = [v4 objectForKeyedSubscript:@"inpaint"];
  v10 = [v9 objectForKeyedSubscript:@"operations"];

  v11 = [v4 objectForKeyedSubscript:@"inpaintMasks"];

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