@interface TSUExponentialRegressionModel
- (TSUExponentialRegressionModel)initWithMappings:(int)a3 xs:(double *)a4 ys:(double *)a5 xDimension:(int)a6 makeAffine:(BOOL)a7 desiredIntercept:(double)a8;
- (_NSRange)superscriptRangeAtIndex:(int)a3;
- (double)estimateForX:(double *)a3;
- (id)getEquationStringAndBuildSuperscriptRangesArray:(id)a3;
- (void)dealloc;
@end

@implementation TSUExponentialRegressionModel

- (TSUExponentialRegressionModel)initWithMappings:(int)a3 xs:(double *)a4 ys:(double *)a5 xDimension:(int)a6 makeAffine:(BOOL)a7 desiredIntercept:(double)a8
{
  v9 = a7;
  v62.receiver = self;
  v62.super_class = TSUExponentialRegressionModel;
  v14 = [(TSUExponentialRegressionModel *)&v62 init];
  v15 = v14;
  if (v14)
  {
    v58 = a5;
    v14->super.mErrorType = 0;
    v14->mAffine = v9;
    if (v9)
    {
      a8 = 1.0;
    }

    v14->mIntercept = a8;
    v16 = v9 + a6;
    v60 = v9 + a6;
    v61 = a3;
    v17 = 8 * a3;
    v18 = malloc_type_malloc(v17, 0x100004000313F17uLL);
    if (v18)
    {
      v19 = v18;
      if (a3 >= 1)
      {
        memset_pattern16(v18, &unk_277133D00, 8 * a3);
      }

      __src = v19;
      v20 = malloc_type_malloc(v17 * v16, 0x100004000313F17uLL);
      if (!v20)
      {
        v28 = v19;
        v15->super.mErrorType = 1;
LABEL_62:
        free(v28);
        return v15;
      }

      v21 = v20;
      if (v9)
      {
        memcpy(v20, v19, 8 * a3);
        v20 = &v21[8 * a3];
      }

      memcpy(v20, a4, 8 * a3 * a6);
      v22 = malloc_type_malloc(v17 * v16, 0x100004000313F17uLL);
      if (!v22)
      {
        v28 = v19;
        v15->super.mErrorType = 1;
LABEL_61:
        free(v21);
        goto LABEL_62;
      }

      v23 = v22;
      memcpy(v22, v21, v17 * v16);
      v24 = malloc_type_malloc(8 * a3, 0x100004000313F17uLL);
      if (!v24)
      {
        v28 = v19;
        v15->super.mErrorType = 1;
LABEL_60:
        free(v23);
        goto LABEL_61;
      }

      v57 = v24;
      if (a3 >= 1)
      {
        v25 = a3;
        v26 = a5;
        v27 = v24;
        while (*v26 > 0.0)
        {
          *v27++ = log(*v26++);
          if (!--v25)
          {
            goto LABEL_16;
          }
        }

        v28 = __src;
        v15->super.mErrorType = 2;
        goto LABEL_59;
      }

LABEL_16:
      v28 = __src;
      if (a8 != 1.0)
      {
        if (a8 <= 0.0)
        {
          v37 = 2;
          goto LABEL_38;
        }

        if (a3 >= 1)
        {
          v29 = log(a8);
          v30 = a3;
          v31 = v57;
          do
          {
            *v31 = *v31 - v29;
            ++v31;
            --v30;
          }

          while (v30);
        }
      }

      if (a3 >= v16)
      {
        v32 = v16;
      }

      else
      {
        v32 = a3;
      }

      if (v32 <= 1)
      {
        v33 = 1;
      }

      else
      {
        v33 = v32;
      }

      v34 = v33 + v32;
      if (v34 <= 1)
      {
        v34 = 1;
      }

      v35 = malloc_type_malloc(8 * v34, 0x100004000313F17uLL);
      if (v35)
      {
        v36 = v35;
        dgels_NEWLAPACK();
        v38 = malloc_type_malloc(8 * v60, 0x100004000313F17uLL);
        v15->mCoefficients = v38;
        if (v38)
        {
          v56 = v21;
          memcpy(v38, v57, 8 * v60);
          v15->mNumCoefficients = v60;
          v39 = v58;
          if (v61 >= 1)
          {
            v40 = v61;
            v41 = v57;
            do
            {
              v42 = *v39++;
              *v41++ = log(v42);
              --v40;
            }

            while (v40);
          }

          cblas_ddot_NEWLAPACK();
          v44 = v43;
          v45 = malloc_type_malloc(8 * v61, 0x100004000313F17uLL);
          if (v45)
          {
            v46 = v45;
            memcpy(v45, v57, 8 * v61);
            v28 = __src;
            cblas_ddot_NEWLAPACK();
            cblas_daxpy_NEWLAPACK();
            v47 = v44;
            if (v9)
            {
              cblas_ddot_NEWLAPACK();
              v47 = v48;
            }

            v49 = malloc_type_malloc(8 * v61, 0x100004000313F17uLL);
            if (v49)
            {
              v50 = v49;
              cblas_dgemm_NEWLAPACK();
              cblas_ddot_NEWLAPACK();
              v52 = v44 - v51;
              if (v47 == 0.0)
              {
                v52 = 0.0;
              }

              v15->mRSquared = 1.0 - v52 / v47;
              v53 = malloc_type_malloc(8 * v60 * v60, 0x100004000313F17uLL);
              if (v53)
              {
                v54 = v53;
                v15->super.mErrorType = sub_2770952E8(v23, v60);
                free(v54);
              }

              else
              {
                v15->super.mErrorType = 1;
              }

              free(v50);
              v28 = __src;
            }

            else
            {
              v15->super.mErrorType = 1;
            }

            free(v46);
          }

          else
          {
            v15->super.mErrorType = 1;
            v28 = __src;
          }

          v21 = v56;
        }

        else
        {
          v15->super.mErrorType = 1;
        }

        free(v36);
        goto LABEL_59;
      }

      v37 = 1;
LABEL_38:
      v15->super.mErrorType = v37;
LABEL_59:
      free(v57);
      goto LABEL_60;
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
  v4.super_class = TSUExponentialRegressionModel;
  [(TSUExponentialRegressionModel *)&v4 dealloc];
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
        v6 = v6 * exp(v11 * v12);
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
        v6 = v6 * exp(v16 * v17);
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
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUExponentialRegressionModel getEquationStringAndBuildSuperscriptRangesArray:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUExponentialRegressionModel.m"];
    [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:389 isFatal:0 description:"Chart trend line should be affine."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (self->mNumCoefficients != 2)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUExponentialRegressionModel getEquationStringAndBuildSuperscriptRangesArray:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUExponentialRegressionModel.m"];
    [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:390 isFatal:0 description:"Chart trend line should have 2 coefficients, need to change this method when it supports more."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (!v4)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUExponentialRegressionModel getEquationStringAndBuildSuperscriptRangesArray:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUExponentialRegressionModel.m"];
    [TSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:391 isFatal:0 description:"invalid nil value for '%{public}s'", "locale"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v11 = SFUMainBundle();
  v48 = [v11 localizedStringForKey:@"x" value:&stru_28862C2A0 table:@"TSUtility"];

  v12 = SFUMainBundle();
  v13 = [v12 localizedStringForKey:@"y" value:&stru_28862C2A0 table:@"TSUtility"];

  v14 = SFUMainBundle();
  v50 = [v14 localizedStringForKey:@"e" value:&stru_28862C2A0 table:@"TSUtility"];

  LOBYTE(v43) = 0;
  v15 = [v4 numberFormatterStringFromDouble:@"#" withFormat:0 useDecimalPlaces:0 minDecimalPlaces:0 decimalPlaces:0 showThousandsSeparator:0 currencyCode:0.0 suppressMinusSign:v43];
  LOBYTE(v44) = 0;
  v16 = [v4 numberFormatterStringFromDouble:@"#" withFormat:0 useDecimalPlaces:0 minDecimalPlaces:0 decimalPlaces:0 showThousandsSeparator:0 currencyCode:1.0 suppressMinusSign:v44];
  v47 = v13;
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ = ", v13];
  self->mNumSuperscriptRanges = 0;
  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  mSuperscriptRangesArray = self->mSuperscriptRangesArray;
  self->mSuperscriptRangesArray = v18;

  v20 = exp(*self->mCoefficients);
  v21 = [(TSURegressionModel *)self formattedStringWithCoefficient:v4 locale:?];
  v49 = [(TSURegressionModel *)self formattedStringWithCoefficient:v4 locale:1.0];
  v22 = [v21 isEqualToString:?];
  if ((v22 & 1) == 0)
  {
    if (fabs(v20) < 1.0e-14)
    {
      v23 = [v17 stringByAppendingString:v15];

      v17 = v23;
      v24 = v21;
      v25 = v48;
      goto LABEL_18;
    }

    [v17 stringByAppendingString:v21];
    v45 = v4;
    v26 = v16;
    v28 = v27 = v15;

    v17 = v28;
    v15 = v27;
    v16 = v26;
    v4 = v45;
  }

  v29 = self->mCoefficients[1];
  v24 = [(TSURegressionModel *)self formattedStringWithCoefficient:v4 locale:v29];

  if (fabs(v29) <= 1.0e-14)
  {
    v25 = v48;
    if (v22)
    {
      v36 = [v17 stringByAppendingString:v16];

      v17 = v36;
    }
  }

  else
  {
    v46 = v15;
    v25 = v48;
    if ([v24 isEqualToString:v49])
    {
      v30 = [v17 stringByAppendingFormat:@"%@%@", v50, v48];

      v31 = self->mSuperscriptRangesArray;
      v32 = MEMORY[0x277CCAE60];
      v33 = [v30 length];
      v34 = v33 - [v48 length];
      v35 = [v48 length];
    }

    else
    {
      v30 = [v17 stringByAppendingFormat:@"%@%@%@", v50, v24, v48];

      v31 = self->mSuperscriptRangesArray;
      v32 = MEMORY[0x277CCAE60];
      v37 = [v30 length];
      v38 = [v24 length];
      v34 = v37 - [v48 length] - v38;
      v39 = [v24 length];
      v35 = [v48 length] + v39;
    }

    v17 = v30;
    v40 = [v32 valueWithRange:{v34, v35}];
    [(NSMutableArray *)v31 addObject:v40];

    v15 = v46;
    ++self->mNumSuperscriptRanges;
  }

LABEL_18:
  v41 = v17;

  return v17;
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