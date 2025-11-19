@interface PFSlowMotionRampConfiguration
- (PFSlowMotionRampConfiguration)init;
- (id)initForRampDown:(BOOL)a3;
- (void)computeRampToTargetRate:(float)a3 forExport:(BOOL)a4 outTimeSteps:(id *)a5 outIntermediateRates:(id *)a6;
@end

@implementation PFSlowMotionRampConfiguration

- (void)computeRampToTargetRate:(float)a3 forExport:(BOOL)a4 outTimeSteps:(id *)a5 outIntermediateRates:(id *)a6
{
  v8 = a4;
  v61 = *MEMORY[0x1E69E9840];
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [MEMORY[0x1E695DF70] array];
  if (v8)
  {
    v13 = [(PFSlowMotionRampConfiguration *)self exportNumIntermediateSteps];
  }

  else
  {
    v13 = [(PFSlowMotionRampConfiguration *)self playbackNumIntermediateSteps];
  }

  v14 = v13;
  [(PFSlowMotionRampConfiguration *)self rampTime];
  v16 = v15;
  [(PFSlowMotionRampConfiguration *)self introTime];
  v18 = v17;
  [(PFSlowMotionRampConfiguration *)self outroTime];
  v20 = v19;
  v21 = 1.0;
  v22 = 1.0 - a3;
  if (v14)
  {
    v23 = v22 / (v14 + 1);
    do
    {
      v21 = v21 - v23;
      *&v19 = v21;
      v24 = [MEMORY[0x1E696AD98] numberWithFloat:v19];
      [v12 addObject:v24];

      --v14;
    }

    while (v14);
  }

  if (v8)
  {
    [(PFSlowMotionRampConfiguration *)self exportRampCurveExponent];
  }

  else
  {
    [(PFSlowMotionRampConfiguration *)self playbackRampCurveExponent];
  }

  v26 = v25;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v27 = v12;
  v28 = [v27 countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = v16 - (v18 + v20);
    v31 = *v57;
    v32 = 0.0;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v57 != v31)
        {
          objc_enumerationMutation(v27);
        }

        [*(*(&v56 + 1) + 8 * i) floatValue];
        v35 = v34;
        v36 = powf((1.0 - v34) / v22, v26);
        v32 = v32 + v36;
        *&v37 = v35 * (v36 * v30);
        v38 = [MEMORY[0x1E696AD98] numberWithFloat:v37];
        [v11 addObject:v38];
      }

      v29 = [v27 countByEnumeratingWithState:&v56 objects:v60 count:16];
    }

    while (v29);
  }

  else
  {
    v32 = 0.0;
  }

  v50 = MEMORY[0x1E69E9820];
  v51 = 3221225472;
  v52 = __101__PFSlowMotionRampConfiguration_computeRampToTargetRate_forExport_outTimeSteps_outIntermediateRates___block_invoke;
  v53 = &unk_1E7B65910;
  v55 = v32;
  v39 = v11;
  v54 = v39;
  [v39 enumerateObjectsUsingBlock:&v50];
  [(PFSlowMotionRampConfiguration *)self introTime:v50];
  *&v40 = v40;
  if (*&v40 > 0.0)
  {
    v41 = [MEMORY[0x1E696AD98] numberWithFloat:?];
    [v39 insertObject:v41 atIndex:0];

    LODWORD(v42) = 1.0;
    v43 = [MEMORY[0x1E696AD98] numberWithFloat:v42];
    [v27 insertObject:v43 atIndex:0];
  }

  [(PFSlowMotionRampConfiguration *)self outroTime];
  *&v44 = v44;
  if (*&v44 > 0.0)
  {
    *&v44 = *&v44 * a3;
    v45 = [MEMORY[0x1E696AD98] numberWithFloat:v44];
    [v39 addObject:v45];

    *&v46 = a3;
    v47 = [MEMORY[0x1E696AD98] numberWithFloat:v46];
    [v27 addObject:v47];
  }

  v48 = v39;
  *a5 = v39;
  v49 = v27;
  *a6 = v27;
}

void __101__PFSlowMotionRampConfiguration_computeRampToTargetRate_forExport_outTimeSteps_outIntermediateRates___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  [a2 floatValue];
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  *&v8 = v7 / v5;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [v6 replaceObjectAtIndex:a3 withObject:v9];
}

- (PFSlowMotionRampConfiguration)init
{
  [(PFSlowMotionRampConfiguration *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)initForRampDown:(BOOL)a3
{
  v3 = a3;
  v10.receiver = self;
  v10.super_class = PFSlowMotionRampConfiguration;
  result = [(PFSlowMotionRampConfiguration *)&v10 init];
  if (result)
  {
    v5 = 0.35;
    if (v3)
    {
      v5 = 0.56;
    }

    v6 = 0.08;
    v7 = 0.1;
    if (v3)
    {
      v6 = 0.1;
    }

    else
    {
      v7 = 0.07;
    }

    v8 = 20;
    if (v3)
    {
      v8 = 34;
    }

    v9 = 1.2;
    if (!v3)
    {
      v9 = 2.0;
    }

    *(result + 2) = v5;
    *(result + 3) = v6;
    *(result + 2) = xmmword_1B36A1ED0;
    *(result + 6) = v7;
    *(result + 7) = v8;
    *(result + 8) = 5;
    *(result + 2) = v9;
    *(result + 3) = 1069547520;
  }

  return result;
}

@end