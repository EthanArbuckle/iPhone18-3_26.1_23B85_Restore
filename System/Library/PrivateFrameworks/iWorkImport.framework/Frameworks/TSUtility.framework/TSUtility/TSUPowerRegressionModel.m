@interface TSUPowerRegressionModel
- (TSUPowerRegressionModel)initWithMappings:(int)a3 xs:(double *)a4 ys:(double *)a5 xDimension:(int)a6 makeAffine:(BOOL)a7 desiredIntercept:(double)a8;
- (_NSRange)superscriptRangeAtIndex:(int)a3;
- (double)estimateForX:(double *)a3;
- (id)getEquationStringAndBuildSuperscriptRangesArray:(id)a3;
- (void)dealloc;
@end

@implementation TSUPowerRegressionModel

- (TSUPowerRegressionModel)initWithMappings:(int)a3 xs:(double *)a4 ys:(double *)a5 xDimension:(int)a6 makeAffine:(BOOL)a7 desiredIntercept:(double)a8
{
  v9 = a7;
  v73.receiver = self;
  v73.super_class = TSUPowerRegressionModel;
  v14 = [(TSUPowerRegressionModel *)&v73 init];
  v15 = v14;
  if (v14)
  {
    v14->super.mErrorType = 0;
    v14->mAffine = v9;
    if (v9)
    {
      a8 = 1.0;
    }

    v14->mIntercept = a8;
    v71 = v9 + a6;
    v72 = a3;
    v16 = malloc_type_malloc(8 * a3, 0x100004000313F17uLL);
    if (v16)
    {
      v17 = v16;
      if (v72 >= 1)
      {
        memset_pattern16(v16, &unk_277133D00, 8 * v72);
      }

      v18 = malloc_type_malloc(8 * v72 * v71, 0x100004000313F17uLL);
      if (!v18)
      {
        v15->super.mErrorType = 1;
LABEL_53:
        free(v17);
        return v15;
      }

      v19 = v18;
      v20 = v72;
      if (v9)
      {
        memcpy(v18, v17, 8 * v72);
        v20 = v72;
        v21 = (v72 * a6);
        if (v21 >= 1)
        {
          v22 = a4;
          v23 = &v19[v72];
          v67 = v19;
          __src = v22;
          v24 = v22;
          while (*v24 > 0.0)
          {
            *v23++ = log(*v24++);
            if (!--v21)
            {
              v19 = v67;
              goto LABEL_21;
            }
          }

          v15->super.mErrorType = 2;
          v19 = v67;
          goto LABEL_52;
        }
      }

      else
      {
        v25 = (v72 * a6);
        if (v25 >= 1)
        {
          __src = a4;
          v26 = v18;
          do
          {
            if (*a4 <= 0.0)
            {
              v15->super.mErrorType = 2;
              v19 = v26;
              goto LABEL_52;
            }

            *v19++ = log(*a4++);
            --v25;
          }

          while (v25);
          v19 = v26;
LABEL_21:
          a4 = __src;
        }
      }

      v27 = malloc_type_malloc(8 * v71 * v20, 0x100004000313F17uLL);
      if (!v27)
      {
        v15->super.mErrorType = 1;
LABEL_52:
        free(v19);
        goto LABEL_53;
      }

      v28 = v27;
      memcpy(v27, v19, 8 * v72 * v71);
      v66 = malloc_type_malloc(8 * v72, 0x100004000313F17uLL);
      if (!v66)
      {
        v15->super.mErrorType = 1;
LABEL_51:
        free(v28);
        goto LABEL_52;
      }

      v68 = v19;
      __srca = a4;
      if (v72 >= 1)
      {
        v29 = v72;
        v30 = a5;
        v31 = v66;
        while (*v30 > 0.0)
        {
          *v31++ = log(*v30++);
          if (!--v29)
          {
            goto LABEL_28;
          }
        }

        v15->super.mErrorType = 2;
        v32 = v66;
        v19 = v68;
        goto LABEL_50;
      }

LABEL_28:
      v32 = v66;
      if (a8 != 1.0)
      {
        if (a8 <= 0.0)
        {
          v40 = 2;
          goto LABEL_49;
        }

        if (v72 >= 1)
        {
          v33 = log(a8);
          v34 = v72;
          v35 = v66;
          do
          {
            *v35 = *v35 - v33;
            ++v35;
            --v34;
          }

          while (v34);
        }
      }

      v37 = 1;
      v36 = v9 + a6;
      if (v72 < v71)
      {
        v36 = v72;
      }

      if (v36 > 1)
      {
        v37 = v36;
      }

      v38 = v37 + v36;
      if (v38 <= 1)
      {
        v38 = 1;
      }

      v39 = malloc_type_malloc(8 * v38, 0x100004000313F17uLL);
      if (v39)
      {
        v65 = v39;
        v19 = v68;
        dgels_NEWLAPACK();
        v42 = malloc_type_malloc(8 * v71, 0x100004000313F17uLL);
        v15->mCoefficients = v42;
        if (!v42)
        {
          v15->super.mErrorType = 1;
LABEL_41:
          free(v65);
LABEL_50:
          free(v32);
          goto LABEL_51;
        }

        memcpy(v42, v66, 8 * v71);
        v15->mNumCoefficients = v71;
        if (v72 >= 1)
        {
          v43 = v72;
          v44 = v66;
          while (*a5 > 0.0)
          {
            *v44++ = log(*a5++);
            if (!--v43)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_77;
        }

LABEL_60:
        if (a8 != 1.0)
        {
          if (a8 <= 0.0)
          {
LABEL_77:
            v15->super.mErrorType = 2;
            v32 = v66;
            v19 = v68;
            goto LABEL_41;
          }

          if (v72 >= 1)
          {
            v45 = log(a8);
            v46 = v72;
            v47 = v66;
            do
            {
              *v47 = *v47 - v45;
              ++v47;
              --v46;
            }

            while (v46);
          }
        }

        v32 = v66;
        cblas_ddot_NEWLAPACK();
        v49 = v48;
        v50 = malloc_type_malloc(8 * v72, 0x100004000313F17uLL);
        if (v50)
        {
          v51 = v50;
          memcpy(v50, v66, 8 * v72);
          cblas_ddot_NEWLAPACK();
          cblas_daxpy_NEWLAPACK();
          v52 = v49;
          if (v9)
          {
            cblas_ddot_NEWLAPACK();
            v52 = v53;
          }

          v54 = malloc_type_malloc(8 * v72, 0x100004000313F17uLL);
          v19 = v68;
          if (v54)
          {
            v55 = v54;
            cblas_dgemm_NEWLAPACK();
            cblas_ddot_NEWLAPACK();
            v57 = v49 - v56;
            if (v52 == 0.0)
            {
              v57 = 0.0;
            }

            v15->mRSquared = 1.0 - v57 / v52;
            v58 = malloc_type_malloc(8 * v72 * v71, 0x100004000313F17uLL);
            v64 = v55;
            if (v58)
            {
              v59 = v72;
              v60 = v58;
              if (v9)
              {
                memcpy(v58, v17, 8 * v72);
                v59 = v72;
                v58 = (v60 + 8 * v72);
              }

              memcpy(v58, __srca, 8 * v59 * a6);
              v61 = malloc_type_malloc(8 * v71 * v71, 0x100004000313F17uLL);
              if (v61)
              {
                v62 = v61;
                v15->super.mErrorType = sub_2770952E8(v60, v71);
                free(v62);
                v63 = v60;
                v32 = v66;
              }

              else
              {
                v15->super.mErrorType = 1;
                v32 = v66;
                v63 = v60;
              }

              free(v63);
            }

            else
            {
              v15->super.mErrorType = 1;
              v32 = v66;
            }

            free(v64);
          }

          else
          {
            v15->super.mErrorType = 1;
            v32 = v66;
          }

          free(v51);
        }

        else
        {
          v15->super.mErrorType = 1;
          v19 = v68;
        }

        goto LABEL_41;
      }

      v40 = 1;
LABEL_49:
      v15->super.mErrorType = v40;
      v19 = v68;
      goto LABEL_50;
    }

    v15->super.mErrorType = 1;
  }

  return v15;
}

- (void)dealloc
{
  mCoefficients = self->mCoefficients;
  if (mCoefficients)
  {
    free(mCoefficients);
  }

  v4.receiver = self;
  v4.super_class = TSUPowerRegressionModel;
  [(TSUPowerRegressionModel *)&v4 dealloc];
}

- (double)estimateForX:(double *)a3
{
  if (self->mAffine)
  {
    mCoefficients = self->mCoefficients;
    v6 = exp(*mCoefficients);
    mNumCoefficients = self->mNumCoefficients;
    if (mNumCoefficients >= 2)
    {
      v8 = mCoefficients + 1;
      v9 = mNumCoefficients - 1;
      do
      {
        v10 = *a3++;
        v11 = v10;
        v12 = *v8++;
        v6 = v6 * pow(v11, v12);
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    v13 = self->mNumCoefficients;
    if (v13 < 1)
    {
      v6 = 1.0;
    }

    else
    {
      v14 = self->mCoefficients;
      v6 = 1.0;
      do
      {
        v15 = *a3++;
        v16 = v15;
        v17 = *v14++;
        v6 = v6 * pow(v16, v17);
        --v13;
      }

      while (v13);
    }
  }

  return v6 * self->mIntercept;
}

- (id)getEquationStringAndBuildSuperscriptRangesArray:(id)a3
{
  v4 = a3;
  if (!self->mAffine)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUPowerRegressionModel getEquationStringAndBuildSuperscriptRangesArray:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUPowerRegressionModel.m"];
    [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:434 isFatal:0 description:"Chart trend line should be affine."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (self->mNumCoefficients != 2)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUPowerRegressionModel getEquationStringAndBuildSuperscriptRangesArray:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUPowerRegressionModel.m"];
    [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:435 isFatal:0 description:"Chart trend line should have 2 coefficients, need to change this method when it supports more."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (!v4)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUPowerRegressionModel getEquationStringAndBuildSuperscriptRangesArray:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUPowerRegressionModel.m"];
    [TSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:436 isFatal:0 description:"invalid nil value for '%{public}s'", "locale"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v11 = SFUMainBundle();
  v41 = [v11 localizedStringForKey:@"x" value:&stru_28862C2A0 table:@"TSUtility"];

  v12 = SFUMainBundle();
  v13 = [v12 localizedStringForKey:@"y" value:&stru_28862C2A0 table:@"TSUtility"];

  LOBYTE(v36) = 0;
  v40 = [v4 numberFormatterStringFromDouble:@"#" withFormat:0 useDecimalPlaces:0 minDecimalPlaces:0 decimalPlaces:0 showThousandsSeparator:0 currencyCode:0.0 suppressMinusSign:v36];
  LOBYTE(v37) = 0;
  v39 = [v4 numberFormatterStringFromDouble:@"#" withFormat:0 useDecimalPlaces:0 minDecimalPlaces:0 decimalPlaces:0 showThousandsSeparator:0 currencyCode:1.0 suppressMinusSign:v37];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ = ", v13];
  self->mNumSuperscriptRanges = 0;
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  mSuperscriptRangesArray = self->mSuperscriptRangesArray;
  self->mSuperscriptRangesArray = v15;

  v17 = exp(*self->mCoefficients);
  v18 = [(TSURegressionModel *)self formattedStringWithCoefficient:v4 locale:?];
  v19 = [(TSURegressionModel *)self formattedStringWithCoefficient:v4 locale:1.0];
  v20 = [v18 isEqualToString:v19];
  if (v20)
  {
    v38 = v13;
    goto LABEL_12;
  }

  if (fabs(v17) >= 1.0e-14)
  {
    v38 = v13;
    v25 = [v14 stringByAppendingString:v18];

    v14 = v25;
LABEL_12:
    v26 = self->mCoefficients[1];
    v27 = [(TSURegressionModel *)self formattedStringWithCoefficient:v4 locale:v26];

    if (fabs(v26) <= 1.0e-14)
    {
      v23 = v41;
      v24 = v39;
      if (!v20)
      {
LABEL_19:
        v18 = v27;
        v13 = v38;
        v21 = v40;
        goto LABEL_20;
      }

      v28 = v14;
      v29 = v39;
    }

    else
    {
      v23 = v41;
      v24 = v39;
      if (([v27 isEqualToString:v19] & 1) == 0)
      {
        v31 = [v14 stringByAppendingFormat:@"%@%@", v41, v27];

        v32 = self->mSuperscriptRangesArray;
        v33 = [MEMORY[0x277CCAE60] valueWithRange:{objc_msgSend(v31, "length") - objc_msgSend(v27, "length"), objc_msgSend(v27, "length")}];
        [(NSMutableArray *)v32 addObject:v33];

        ++self->mNumSuperscriptRanges;
        v14 = v31;
        goto LABEL_19;
      }

      v28 = v14;
      v29 = v41;
    }

    v30 = [v28 stringByAppendingString:v29];

    v14 = v30;
    goto LABEL_19;
  }

  v21 = v40;
  v22 = [v14 stringByAppendingString:v40];

  v14 = v22;
  v23 = v41;
  v24 = v39;
LABEL_20:
  v34 = v14;

  return v14;
}

- (_NSRange)superscriptRangeAtIndex:(int)a3
{
  v3 = [(NSMutableArray *)self->mSuperscriptRangesArray objectAtIndex:a3];
  v4 = [v3 rangeValue];
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.length = v8;
  result.location = v7;
  return result;
}

@end