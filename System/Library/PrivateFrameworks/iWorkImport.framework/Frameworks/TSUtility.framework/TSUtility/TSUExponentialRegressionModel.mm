@interface TSUExponentialRegressionModel
- (TSUExponentialRegressionModel)initWithMappings:(int)mappings xs:(double *)xs ys:(double *)ys xDimension:(int)dimension makeAffine:(BOOL)affine desiredIntercept:(double)intercept;
- (_NSRange)superscriptRangeAtIndex:(int)index;
- (double)estimateForX:(double *)x;
- (id)getEquationStringAndBuildSuperscriptRangesArray:(id)array;
- (void)dealloc;
@end

@implementation TSUExponentialRegressionModel

- (TSUExponentialRegressionModel)initWithMappings:(int)mappings xs:(double *)xs ys:(double *)ys xDimension:(int)dimension makeAffine:(BOOL)affine desiredIntercept:(double)intercept
{
  affineCopy = affine;
  v62.receiver = self;
  v62.super_class = TSUExponentialRegressionModel;
  v14 = [(TSUExponentialRegressionModel *)&v62 init];
  v15 = v14;
  if (v14)
  {
    ysCopy = ys;
    v14->super.mErrorType = 0;
    v14->mAffine = affineCopy;
    if (affineCopy)
    {
      intercept = 1.0;
    }

    v14->mIntercept = intercept;
    v16 = affineCopy + dimension;
    v60 = affineCopy + dimension;
    mappingsCopy = mappings;
    v17 = 8 * mappings;
    v18 = malloc_type_malloc(v17, 0x100004000313F17uLL);
    if (v18)
    {
      v19 = v18;
      if (mappings >= 1)
      {
        memset_pattern16(v18, &unk_277133D00, 8 * mappings);
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
      if (affineCopy)
      {
        memcpy(v20, v19, 8 * mappings);
        v20 = &v21[8 * mappings];
      }

      memcpy(v20, xs, 8 * mappings * dimension);
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
      v24 = malloc_type_malloc(8 * mappings, 0x100004000313F17uLL);
      if (!v24)
      {
        v28 = v19;
        v15->super.mErrorType = 1;
LABEL_60:
        free(v23);
        goto LABEL_61;
      }

      v57 = v24;
      if (mappings >= 1)
      {
        mappingsCopy2 = mappings;
        ysCopy2 = ys;
        v27 = v24;
        while (*ysCopy2 > 0.0)
        {
          *v27++ = log(*ysCopy2++);
          if (!--mappingsCopy2)
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
      if (intercept != 1.0)
      {
        if (intercept <= 0.0)
        {
          v37 = 2;
          goto LABEL_38;
        }

        if (mappings >= 1)
        {
          v29 = log(intercept);
          mappingsCopy3 = mappings;
          v31 = v57;
          do
          {
            *v31 = *v31 - v29;
            ++v31;
            --mappingsCopy3;
          }

          while (mappingsCopy3);
        }
      }

      if (mappings >= v16)
      {
        mappingsCopy4 = v16;
      }

      else
      {
        mappingsCopy4 = mappings;
      }

      if (mappingsCopy4 <= 1)
      {
        v33 = 1;
      }

      else
      {
        v33 = mappingsCopy4;
      }

      v34 = v33 + mappingsCopy4;
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
          v39 = ysCopy;
          if (mappingsCopy >= 1)
          {
            v40 = mappingsCopy;
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
          v45 = malloc_type_malloc(8 * mappingsCopy, 0x100004000313F17uLL);
          if (v45)
          {
            v46 = v45;
            memcpy(v45, v57, 8 * mappingsCopy);
            v28 = __src;
            cblas_ddot_NEWLAPACK();
            cblas_daxpy_NEWLAPACK();
            v47 = v44;
            if (affineCopy)
            {
              cblas_ddot_NEWLAPACK();
              v47 = v48;
            }

            v49 = malloc_type_malloc(8 * mappingsCopy, 0x100004000313F17uLL);
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

- (double)estimateForX:(double *)x
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
        v10 = *x++;
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
        v15 = *x++;
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

- (id)getEquationStringAndBuildSuperscriptRangesArray:(id)array
{
  arrayCopy = array;
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

  if (!arrayCopy)
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
  v15 = [arrayCopy numberFormatterStringFromDouble:@"#" withFormat:0 useDecimalPlaces:0 minDecimalPlaces:0 decimalPlaces:0 showThousandsSeparator:0 currencyCode:0.0 suppressMinusSign:v43];
  LOBYTE(v44) = 0;
  v16 = [arrayCopy numberFormatterStringFromDouble:@"#" withFormat:0 useDecimalPlaces:0 minDecimalPlaces:0 decimalPlaces:0 showThousandsSeparator:0 currencyCode:1.0 suppressMinusSign:v44];
  v47 = v13;
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ = ", v13];
  self->mNumSuperscriptRanges = 0;
  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  mSuperscriptRangesArray = self->mSuperscriptRangesArray;
  self->mSuperscriptRangesArray = v18;

  v20 = exp(*self->mCoefficients);
  v21 = [(TSURegressionModel *)self formattedStringWithCoefficient:arrayCopy locale:?];
  v49 = [(TSURegressionModel *)self formattedStringWithCoefficient:arrayCopy locale:1.0];
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
    v45 = arrayCopy;
    v26 = v16;
    v28 = v27 = v15;

    v17 = v28;
    v15 = v27;
    v16 = v26;
    arrayCopy = v45;
  }

  v29 = self->mCoefficients[1];
  v24 = [(TSURegressionModel *)self formattedStringWithCoefficient:arrayCopy locale:v29];

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

- (_NSRange)superscriptRangeAtIndex:(int)index
{
  v3 = [(NSMutableArray *)self->mSuperscriptRangesArray objectAtIndex:index];
  rangeValue = [v3 rangeValue];
  v6 = v5;

  v7 = rangeValue;
  v8 = v6;
  result.length = v8;
  result.location = v7;
  return result;
}

@end