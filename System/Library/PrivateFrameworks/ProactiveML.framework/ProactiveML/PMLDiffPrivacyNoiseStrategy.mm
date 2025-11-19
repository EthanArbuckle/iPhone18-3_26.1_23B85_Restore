@interface PMLDiffPrivacyNoiseStrategy
- ($94F468A8D4C62B317260615823C2B210)noiseScaleFactors;
- (NSString)description;
- (PMLDiffPrivacyNoiseStrategy)initWithMaxIterationCount:(int)a3 noiseScaleFactors:(id)a4 minimumMagnitude:(float)a5 seed:(int)a6 noiseMechanism:(int64_t)a7 inplaceNorm:(BOOL)a8;
- (PMLDiffPrivacyNoiseStrategy)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5;
- (_PMLPreNoiseScaleFactorAndNoiseSampler)samplerWithScaleFactorFor:(id)a3 usingNorm:(BOOL)a4;
- (id)createDefaultSampler;
- (id)createSamplerByName:(id)a3;
- (id)toPlistWithChunks:(id)a3;
- (void)addNoiseToSparseMatrix:(id)a3;
- (void)addNoiseToSparseVector:(id)a3;
@end

@implementation PMLDiffPrivacyNoiseStrategy

- ($94F468A8D4C62B317260615823C2B210)noiseScaleFactors
{
  gaussianScaleFactor = self->_noiseScaleFactors.gaussianScaleFactor;
  laplaceScaleFactor = self->_noiseScaleFactors.laplaceScaleFactor;
  result.var1 = laplaceScaleFactor;
  result.var0 = gaussianScaleFactor;
  return result;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ gaussianScaleFactor:%0.2f laplaceScaleFactor:%0.2f minMagnitude:%0.2f>", v5, self->_noiseScaleFactors.gaussianScaleFactor, self->_noiseScaleFactors.laplaceScaleFactor, self->_minimumMagnitude];

  return v6;
}

- (PMLDiffPrivacyNoiseStrategy)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5
{
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"NOISE_STRATEGY_MAX_ITERATIONS"];
  v8 = [v6 objectForKeyedSubscript:@"GAUSSIAN_NOISE_SCALE"];
  [v8 floatValue];
  v10 = v9;
  v11 = [v6 objectForKeyedSubscript:@"LAPLACE_NOISE_SCALE"];
  [v11 floatValue];
  v13 = v12;

  v14 = [v6 objectForKeyedSubscript:@"NOISE_STRATEGY_MINIMUM_MAGNITUDE"];
  v15 = [v6 objectForKeyedSubscript:@"NOISE_MECHANISM_ENUM_VALUE"];
  v16 = [v15 integerValue];

  v17 = [v6 objectForKeyedSubscript:@"INPLACE_NORM"];

  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = MEMORY[0x277CBEC28];
  }

  v19 = [v7 intValue];
  [v14 floatValue];
  v21 = v20;
  v22 = [v18 BOOLValue];
  LODWORD(v23) = v10;
  LODWORD(v24) = v13;
  LODWORD(v25) = v21;
  v26 = [(PMLDiffPrivacyNoiseStrategy *)self initWithMaxIterationCount:v19 noiseScaleFactors:v16 minimumMagnitude:v22 noiseMechanism:v23 inplaceNorm:v24, v25];

  return v26;
}

- (id)toPlistWithChunks:(id)a3
{
  v31[8] = *MEMORY[0x277D85DE8];
  v4 = a3;
  noiseMechanism = self->_noiseMechanism;
  v6 = off_279ABF6E8;
  if (noiseMechanism > 1)
  {
    if (noiseMechanism != 3)
    {
      if (noiseMechanism != 2)
      {
        goto LABEL_13;
      }

      v6 = off_279ABF718;
    }

LABEL_8:
    v7 = *v6;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (v9)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (!noiseMechanism)
  {
    v10 = PML_LogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_260D68000, v10, OS_LOG_TYPE_ERROR, "You must explicitly specify a noise mechanism.", buf, 2u);
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"You must explicitly specify a noise mechanism."];
    goto LABEL_13;
  }

  if (noiseMechanism == 1)
  {
    goto LABEL_8;
  }

LABEL_13:
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE660];
  v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid noise mechanism value: %lli", self->_noiseMechanism];
  v14 = [v11 exceptionWithName:v12 reason:v13 userInfo:0];
  [v14 raise];

  v9 = 0;
LABEL_14:
  v30[0] = @"NOISE_STRATEGY_MAX_ITERATIONS";
  v15 = [MEMORY[0x277CCABB0] numberWithInt:self->_maxIterations];
  v31[0] = v15;
  v30[1] = @"NOISE_STRATEGY_MINIMUM_MAGNITUDE";
  v16 = MEMORY[0x277CCABB0];
  [(PMLDiffPrivacyNoiseStrategy *)self minimumMagnitude];
  v17 = [v16 numberWithFloat:?];
  v31[1] = v17;
  v30[2] = @"GAUSSIAN_NOISE_SCALE";
  *&v18 = self->_noiseScaleFactors.gaussianScaleFactor;
  v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
  v31[2] = v19;
  v30[3] = @"LAPLACE_NOISE_SCALE";
  *&v20 = self->_noiseScaleFactors.laplaceScaleFactor;
  v21 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
  v31[3] = v21;
  v30[4] = @"NOISE_MECHANISM_ENUM_VALUE";
  v22 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_noiseMechanism];
  v31[4] = v22;
  v30[5] = @"INPLACE_NORM";
  v23 = [MEMORY[0x277CCABB0] numberWithBool:self->_inplaceNorm];
  v31[5] = v23;
  v30[6] = @"NOISE_STRATEGY_SCALE";
  *&v24 = self->_noiseScaleFactors.gaussianScaleFactor;
  v25 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
  v30[7] = @"NOISE_SAMPLER";
  v31[6] = v25;
  v31[7] = v9;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:8];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (void)addNoiseToSparseMatrix:(id)a3
{
  v4 = a3;
  v5 = [(PMLDiffPrivacyNoiseStrategy *)self createDefaultSampler];
  v6 = [v4 numberOfRows];
  v7 = [v4 numberOfColumns];
  v46 = 0;
  v47 = &v46;
  v48 = 0x3810000000;
  v49 = &unk_260DBE1FE;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  matrix_nonzero_count = sparse_get_matrix_nonzero_count([v4 matrix]);
  v9 = 8;
  if (matrix_nonzero_count > 8)
  {
    v9 = matrix_nonzero_count;
  }

  v50 = 0;
  v51 = v9;
  v52 = malloc_type_malloc(16 * v9, 0x1000040D9A13B51uLL);
  v35 = v4;
  if ([v4 isSymmetric])
  {
    v10 = objc_opt_new();
    if (v6)
    {
      v11 = 0;
      v12 = v7;
      v13 = v6;
      do
      {
        [v10 addIndexesInRange:{v11, v12--}];
        v11 += v6 + 1;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277CCAB58]) initWithIndexesInRange:{0, v7 * v6}];
  }

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __54__PMLDiffPrivacyNoiseStrategy_addNoiseToSparseMatrix___block_invoke;
  v40[3] = &unk_279AC01B0;
  v14 = v5;
  v41 = v14;
  v42 = self;
  v44 = &v46;
  v45 = v6;
  v15 = v10;
  v43 = v15;
  [v4 enumerateNonZeroValuesWithBlock:v40];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __54__PMLDiffPrivacyNoiseStrategy_addNoiseToSparseMatrix___block_invoke_2;
  v36[3] = &unk_279AC0188;
  v16 = v14;
  v37 = v16;
  v38 = self;
  v39 = &v46;
  [v15 enumerateIndexesUsingBlock:v36];
  qsort(v47[6], v47[4], 0x10uLL, ixvalCompareIndex);
  v33 = v16;
  v34 = v15;
  v17 = sparse_matrix_create_float(v6, v7);
  if (v6)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = v47[4];
      if (v20 <= v19)
      {
        v22 = v18 + 1;
      }

      else
      {
        v21 = 0;
        v22 = v18 + 1;
        v23 = 16 * v19;
        v24 = (v47[6] + 16 * v19);
        while (1)
        {
          v25 = *v24;
          v24 += 2;
          if (v25 >= (v18 + 1) * v6)
          {
            break;
          }

          if (v20 - v19 == ++v21)
          {
            v21 = v20 - v19;
            goto LABEL_18;
          }
        }

        v20 = v19 + v21;
        if (!v21)
        {
          goto LABEL_22;
        }

LABEL_18:
        v26 = malloc_type_malloc(4 * v21, 0x100004052888210uLL);
        v27 = malloc_type_malloc(8 * v21, 0x100004000313F17uLL);
        v28 = v27;
        v29 = v20 - v19;
        if (v20 > v19)
        {
          v30 = v26;
          v31 = v27;
          do
          {
            *v30++ = *(v47[6] + v23 + 8);
            *v31++ = *(v47[6] + v23) % v6;
            v23 += 16;
            --v29;
          }

          while (v29);
        }

        sparse_insert_row_float(v17, v18, v21, v26, v27);
        free(v26);
        free(v28);
LABEL_22:
        v19 = v20;
      }

      v18 = v22;
    }

    while (v22 != v6);
  }

  v32 = v47;
  free(v47[6]);
  v32[6] = 0;
  sparse_commit(v17);
  [v35 setMatrix:v17];

  _Block_object_dispose(&v46, 8);
}

uint64_t __54__PMLDiffPrivacyNoiseStrategy_addNoiseToSparseMatrix___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v7 = a4;
  if (v7 > 1.0)
  {
    v7 = 1.0;
  }

  if (v7 < -1.0)
  {
    v7 = -1.0;
  }

  v8 = v7;
  [*(a1 + 32) sample];
  v10 = v9 + v8;
  if (fabsf(v10) > *(*(a1 + 40) + 24))
  {
    appendIxval((*(*(a1 + 56) + 8) + 32), a3 + *(a1 + 64) * a2, v10);
  }

  v11 = *(a1 + 48);
  v12 = a3 + *(a1 + 64) * a2;

  return [v11 removeIndex:v12];
}

char *__54__PMLDiffPrivacyNoiseStrategy_addNoiseToSparseMatrix___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) sample];
  if (fabsf(v5) > *(*(a1 + 40) + 24))
  {
    v6 = (*(*(a1 + 48) + 8) + 32);

    return appendIxval(v6, a2, v5);
  }

  return result;
}

- (void)addNoiseToSparseVector:(id)a3
{
  v4 = a3;
  v5 = [(PMLDiffPrivacyNoiseStrategy *)self createDefaultSampler];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3810000000;
  v33 = &unk_260DBE1FE;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v6 = [v4 numberOfNonZeroValues];
  v7 = 8;
  if (v6 > 8)
  {
    v7 = v6;
  }

  v34 = 0;
  v35 = v7;
  v36 = malloc_type_malloc(16 * v7, 0x1000040D9A13B51uLL);
  v8 = [objc_alloc(MEMORY[0x277CCAB58]) initWithIndexesInRange:{0, objc_msgSend(v4, "length")}];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __54__PMLDiffPrivacyNoiseStrategy_addNoiseToSparseVector___block_invoke;
  v25[3] = &unk_279AC0160;
  v9 = v5;
  v26 = v9;
  v27 = self;
  v29 = &v30;
  v10 = v8;
  v28 = v10;
  [v4 enumerateNonZeroValuesWithBlock:v25];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __54__PMLDiffPrivacyNoiseStrategy_addNoiseToSparseVector___block_invoke_2;
  v21 = &unk_279AC0188;
  v11 = v9;
  v22 = v11;
  v23 = self;
  v24 = &v30;
  [v10 enumerateIndexesUsingBlock:&v18];
  qsort(v31[6], v31[4], 0x10uLL, ixvalCompareIndex);
  v12 = malloc_type_malloc(8 * v31[4], 0x100004000313F17uLL);
  v13 = malloc_type_malloc(4 * v31[4], 0x100004052888210uLL);
  v14 = v13;
  v15 = v31;
  if (v31[4])
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v12[v17] = *(v15[6] + v16);
      v13[v17++] = *(v31[6] + v16 + 8);
      v15 = v31;
      v16 += 16;
    }

    while (v17 < v31[4]);
  }

  free(v15[6]);
  v15[6] = 0;
  [v4 setNumberOfNonZeroValues:{v31[4], v18, v19, v20, v21}];
  [v4 setSparseIndices:v12];
  [v4 setSparseValues:v14];

  _Block_object_dispose(&v30, 8);
}

uint64_t __54__PMLDiffPrivacyNoiseStrategy_addNoiseToSparseVector___block_invoke(uint64_t a1, uint64_t a2, float a3)
{
  v5 = a3;
  if (v5 > 1.0)
  {
    v5 = 1.0;
  }

  if (v5 < -1.0)
  {
    v5 = -1.0;
  }

  v6 = v5;
  [*(a1 + 32) sample];
  v8 = v7 + v6;
  if (fabsf(v8) > *(*(a1 + 40) + 24))
  {
    appendIxval((*(*(a1 + 56) + 8) + 32), a2, v8);
  }

  v9 = *(a1 + 48);

  return [v9 removeIndex:a2];
}

char *__54__PMLDiffPrivacyNoiseStrategy_addNoiseToSparseVector___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) sample];
  if (fabsf(v5) > *(*(a1 + 40) + 24))
  {
    v6 = (*(*(a1 + 48) + 8) + 32);

    return appendIxval(v6, a2, v5);
  }

  return result;
}

- (id)createSamplerByName:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    v8 = 28;
  }

  else
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v4 isEqualToString:v10];

    v12 = 1.0;
    if (!v11)
    {
      goto LABEL_6;
    }

    v8 = 32;
  }

  v12 = *(&self->super.isa + v8);
LABEL_6:
  seed = self->_seed;
  v14 = objc_alloc(NSClassFromString(v4));
  *&v15 = v12;
  if (seed)
  {
    v16 = [v14 initWithMagnitude:self->_seed seed:v15];
  }

  else
  {
    v16 = [v14 initWithMagnitude:v15];
  }

  v17 = v16;

  return v17;
}

- (id)createDefaultSampler
{
  v14 = *MEMORY[0x277D85DE8];
  noiseMechanism = self->_noiseMechanism;
  if (noiseMechanism == 3)
  {
    v5 = vcvtq_f64_f32(self->_noiseScaleFactors);
  }

  else if (noiseMechanism != 2 && noiseMechanism != 1)
  {
    v4 = PML_LogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v11 = self->_noiseMechanism;
      *buf = 134217984;
      v13 = v11;
      _os_log_error_impl(&dword_260D68000, v4, OS_LOG_TYPE_ERROR, "Invalid noiseMechanism, got: %lld", buf, 0xCu);
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Invalid noiseMechanism, got: %lld", self->_noiseMechanism}];
  }

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [(PMLDiffPrivacyNoiseStrategy *)self createSamplerByName:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (_PMLPreNoiseScaleFactorAndNoiseSampler)samplerWithScaleFactorFor:(id)a3 usingNorm:(BOOL)a4
{
  v5 = a4;
  v32 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = v7;
  v9 = 0;
  noiseMechanism = self->_noiseMechanism;
  if (noiseMechanism <= 1)
  {
    if (noiseMechanism)
    {
      if (noiseMechanism != 1)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v18 = PML_LogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v29 = self->_noiseMechanism;
        *buf = 134217984;
        v31 = v29;
        _os_log_error_impl(&dword_260D68000, v18, OS_LOG_TYPE_ERROR, "Invalid noiseMechanism, got: %lld", buf, 0xCu);
      }

      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Invalid noiseMechanism, got: %lld", self->_noiseMechanism}];
    }

    v19 = objc_opt_class();
    v9 = NSStringFromClass(v19);
    [v8 l2norm];
    [PMLClassificationEvaluationMetrics roundFloatToSigFigs:3 sigFigs:?];
    goto LABEL_19;
  }

  if (noiseMechanism == 2)
  {
    v21 = objc_opt_class();
    v9 = NSStringFromClass(v21);
    [v8 l1norm];
    [PMLClassificationEvaluationMetrics roundFloatToSigFigs:3 sigFigs:?];
LABEL_19:
    v4 = v20;
    goto LABEL_20;
  }

  if (noiseMechanism == 3)
  {
    [v7 l2norm];
    v12 = v11;
    [v8 l1norm];
    v14 = v13;
    gaussianScaleFactor = self->_noiseScaleFactors.gaussianScaleFactor;
    if (v5)
    {
      v16 = (v12 * gaussianScaleFactor) * (v12 * gaussianScaleFactor);
      laplaceScaleFactor = v14 * self->_noiseScaleFactors.laplaceScaleFactor;
    }

    else
    {
      v16 = gaussianScaleFactor * gaussianScaleFactor;
      laplaceScaleFactor = self->_noiseScaleFactors.laplaceScaleFactor;
    }

    v22 = laplaceScaleFactor * laplaceScaleFactor + laplaceScaleFactor * laplaceScaleFactor;
    if (v16 <= v22)
    {
      v25 = objc_opt_class();
      v9 = NSStringFromClass(v25);
      *&v24 = v12;
    }

    else
    {
      v23 = objc_opt_class();
      v9 = NSStringFromClass(v23);
      *&v24 = v14;
    }

    [PMLClassificationEvaluationMetrics roundFloatToSigFigs:3 sigFigs:v24];
    goto LABEL_19;
  }

LABEL_20:

  v26 = *MEMORY[0x277D85DE8];
  v27 = v4;
  v28 = v9;
  result.var1 = *&v27;
  result.var0 = v28;
  return result;
}

- (PMLDiffPrivacyNoiseStrategy)initWithMaxIterationCount:(int)a3 noiseScaleFactors:(id)a4 minimumMagnitude:(float)a5 seed:(int)a6 noiseMechanism:(int64_t)a7 inplaceNorm:(BOOL)a8
{
  var1 = a4.var1;
  var0 = a4.var0;
  v19.receiver = self;
  v19.super_class = PMLDiffPrivacyNoiseStrategy;
  v15 = [(PMLDiffPrivacyNoiseStrategy *)&v19 init];
  v17 = v15;
  if (v15)
  {
    v15->_maxIterations = a3;
    *&v16 = a5;
    [(PMLDiffPrivacyNoiseStrategy *)v15 setMinimumMagnitude:v16];
    v17->_noiseScaleFactors.gaussianScaleFactor = var0;
    v17->_noiseScaleFactors.laplaceScaleFactor = var1;
    if (([MEMORY[0x277D42590] isInternalBuild] & 1) != 0 || objc_msgSend(MEMORY[0x277D42590], "isBetaBuild"))
    {
      v17->_seed = a6;
      v17->_noiseScaleFactors = vbic_s8(v17->_noiseScaleFactors, vcltz_f32(v17->_noiseScaleFactors));
    }

    else
    {
      v17->_noiseScaleFactors = vbsl_s8(vcgt_f32(0x40D9999A3F800000, v17->_noiseScaleFactors), 0x40D9999A3F800000, v17->_noiseScaleFactors);
      v17->_seed = 0;
    }

    v17->_noiseMechanism = a7;
    v17->_inplaceNorm = a8;
  }

  return v17;
}

@end