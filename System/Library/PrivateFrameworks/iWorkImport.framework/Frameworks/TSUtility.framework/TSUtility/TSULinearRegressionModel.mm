@interface TSULinearRegressionModel
- (TSULinearRegressionModel)initWithMappings:(int)mappings xs:(double *)xs ys:(double *)ys xDimension:(int)dimension makeAffine:(BOOL)affine desiredIntercept:(double)intercept;
- (double)estimateForX:(double *)x;
- (id)getEquationStringAndBuildSuperscriptRangesArray:(id)array;
- (void)dealloc;
@end

@implementation TSULinearRegressionModel

- (TSULinearRegressionModel)initWithMappings:(int)mappings xs:(double *)xs ys:(double *)ys xDimension:(int)dimension makeAffine:(BOOL)affine desiredIntercept:(double)intercept
{
  affineCopy = affine;
  self->super.mErrorType = 0;
  self->mAffine = affine;
  if (affine)
  {
    interceptCopy = 0.0;
  }

  else
  {
    interceptCopy = intercept;
  }

  self->mIntercept = interceptCopy;
  v13 = affine + dimension;
  v52 = affine + dimension;
  v14 = 8 * mappings;
  v15 = malloc_type_malloc(v14, 0x100004000313F17uLL);
  if (v15)
  {
    v16 = v15;
    if (mappings >= 1)
    {
      memset_pattern16(v15, &unk_277133D00, 8 * mappings);
    }

    v17 = malloc_type_malloc(v14 * v13, 0x100004000313F17uLL);
    if (v17)
    {
      __src = v17;
      if (affineCopy)
      {
        memcpy(v17, v16, 8 * mappings);
        v17 = &__src[8 * mappings];
      }

      memcpy(v17, xs, 8 * mappings * dimension);
      v18 = malloc_type_malloc(v14 * v13, 0x100004000313F17uLL);
      if (v18)
      {
        v19 = v18;
        memcpy(v18, __src, v14 * v13);
        v20 = malloc_type_malloc(8 * mappings, 0x100004000313F17uLL);
        if (v20)
        {
          v21 = v20;
          memcpy(v20, ys, 8 * mappings);
          if (interceptCopy != 0.0)
          {
            cblas_daxpy_NEWLAPACK();
          }

          if (mappings >= v13)
          {
            mappingsCopy = v13;
          }

          else
          {
            mappingsCopy = mappings;
          }

          if (mappingsCopy <= 1)
          {
            v23 = 1;
          }

          else
          {
            v23 = mappingsCopy;
          }

          v24 = v23 + mappingsCopy;
          if (v24 <= 1)
          {
            v24 = 1;
          }

          v25 = malloc_type_malloc(8 * v24, 0x100004000313F17uLL);
          if (v25)
          {
            v26 = v25;
            dgels_NEWLAPACK();
            v28 = malloc_type_malloc(8 * v52, 0x100004000313F17uLL);
            self->mCoefficients = v28;
            if (v28)
            {
              v47 = v26;
              memcpy(v28, v21, 8 * v52);
              self->mNumCoefficients = v52;
              memcpy(v21, ys, 8 * mappings);
              if (interceptCopy != 0.0)
              {
                cblas_daxpy_NEWLAPACK();
              }

              cblas_ddot_NEWLAPACK();
              v30 = v29;
              v31 = malloc_type_malloc(8 * mappings, 0x100004000313F17uLL);
              if (v31)
              {
                v32 = v31;
                v49 = v21;
                memcpy(v31, v21, 8 * mappings);
                cblas_ddot_NEWLAPACK();
                v46 = v32;
                cblas_daxpy_NEWLAPACK();
                v33 = v30;
                v26 = v47;
                if (affineCopy)
                {
                  cblas_ddot_NEWLAPACK();
                  v33 = v34;
                }

                v35 = malloc_type_malloc(8 * mappings, 0x100004000313F17uLL);
                if (v35)
                {
                  v36 = v35;
                  cblas_dgemm_NEWLAPACK();
                  cblas_ddot_NEWLAPACK();
                  v38 = v30 - v37;
                  if (v33 == 0.0)
                  {
                    v38 = 0.0;
                  }

                  self->mRSquared = 1.0 - v38 / v33;
                  v39 = (mappings - v52);
                  self->mStandardError = sqrt(v38 / v39);
                  self->mFStatistic = (v33 - v38) / dimension / (v38 / v39);
                  self->mDegreesFreedom = v39;
                  self->mRegressionSumSquares = v33 - v38;
                  self->mErrorSumSquares = v38;
                  v40 = malloc_type_malloc(8 * v52 * v52, 0x100004000313F17uLL);
                  if (v40)
                  {
                    v41 = v40;
                    v42 = sub_2770952E8(v19, v52);
                    self->super.mErrorType = v42;
                    if (!v42)
                    {
                      v43 = malloc_type_malloc(8 * v52, 0x100004000313F17uLL);
                      self->mCoefficientsStandardErrors = v43;
                      if (v43)
                      {
                        v44 = v52;
                        if (v52 >= 1)
                        {
                          v45 = v41;
                          do
                          {
                            *v43++ = sqrt(*v45) * self->mStandardError;
                            v45 += v52 + 1;
                            --v44;
                          }

                          while (v44);
                        }
                      }

                      else
                      {
                        self->super.mErrorType = 1;
                      }
                    }

                    free(v41);
                  }

                  else
                  {
                    self->super.mErrorType = 1;
                  }

                  free(v36);
                  v26 = v47;
                }

                else
                {
                  self->super.mErrorType = 1;
                }

                free(v46);
                v21 = v49;
              }

              else
              {
                self->super.mErrorType = 1;
              }
            }

            else
            {
              self->super.mErrorType = 1;
            }

            free(v26);
          }

          else
          {
            self->super.mErrorType = 1;
          }

          free(v21);
        }

        else
        {
          self->super.mErrorType = 1;
        }

        free(v19);
      }

      else
      {
        self->super.mErrorType = 1;
      }

      free(__src);
    }

    else
    {
      self->super.mErrorType = 1;
    }

    free(v16);
  }

  else
  {
    self->super.mErrorType = 1;
  }

  return self;
}

- (void)dealloc
{
  mCoefficients = self->mCoefficients;
  if (mCoefficients)
  {
    free(mCoefficients);
  }

  mCoefficientsStandardErrors = self->mCoefficientsStandardErrors;
  if (mCoefficientsStandardErrors)
  {
    free(mCoefficientsStandardErrors);
  }

  v5.receiver = self;
  v5.super_class = TSULinearRegressionModel;
  [(TSULinearRegressionModel *)&v5 dealloc];
}

- (double)estimateForX:(double *)x
{
  v5 = malloc_type_malloc(8 * self->mNumCoefficients, 0x100004000313F17uLL);
  if (v5)
  {
    v6 = v5;
    if (self->mAffine)
    {
      *v5++ = 0x3FF0000000000000;
      mNumCoefficients = self->mNumCoefficients - 1;
    }

    else
    {
      mNumCoefficients = self->mNumCoefficients;
    }

    memcpy(v5, x, 8 * mNumCoefficients);
    cblas_ddot_NEWLAPACK();
    v12 = v11;
    free(v6);
    return v12 + self->mIntercept;
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSULinearRegressionModel estimateForX:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSULinearRegressionModel.m"];
    [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:301 isFatal:0 description:"malloc in TSULinearRegressionModel failed."];

    +[TSUAssertionHandler logBacktraceThrottled];
    return NAN;
  }
}

- (id)getEquationStringAndBuildSuperscriptRangesArray:(id)array
{
  arrayCopy = array;
  if (!self->mAffine)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSULinearRegressionModel getEquationStringAndBuildSuperscriptRangesArray:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSULinearRegressionModel.m"];
    [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:446 isFatal:0 description:"Chart trend line should be affine."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (self->mNumCoefficients != 2)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSULinearRegressionModel getEquationStringAndBuildSuperscriptRangesArray:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSULinearRegressionModel.m"];
    [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:447 isFatal:0 description:"Chart trend line should have 2 coefficients, need to change this method when it supports more."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (!arrayCopy)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSULinearRegressionModel getEquationStringAndBuildSuperscriptRangesArray:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSULinearRegressionModel.m"];
    [TSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:448 isFatal:0 description:"invalid nil value for '%{public}s'", "locale"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v11 = SFUMainBundle();
  v12 = [v11 localizedStringForKey:@"x" value:&stru_28862C2A0 table:@"TSUtility"];

  v13 = SFUMainBundle();
  v14 = [v13 localizedStringForKey:@"y" value:&stru_28862C2A0 table:@"TSUtility"];

  LOBYTE(v29) = 0;
  v15 = [arrayCopy numberFormatterStringFromDouble:@"#" withFormat:0 useDecimalPlaces:0 minDecimalPlaces:0 decimalPlaces:0 showThousandsSeparator:0 currencyCode:0.0 suppressMinusSign:v29];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ = ", v14];
  v17 = v16;
  mCoefficients = self->mCoefficients;
  if (fabs(mCoefficients[1]) <= 1.0e-14)
  {
    if (fabs(*mCoefficients) <= 1.0e-14)
    {
      v25 = [v16 stringByAppendingString:v15];
      v24 = 0;
    }

    else
    {
      v24 = [(TSURegressionModel *)self formattedStringWithCoefficient:arrayCopy locale:?];
      v25 = [v17 stringByAppendingString:v24];
    }

    v26 = v17;
    goto LABEL_26;
  }

  v30 = v15;
  v19 = v12;
  v20 = [(TSURegressionModel *)self formattedStringWithCoefficient:arrayCopy locale:?];
  v21 = [(TSURegressionModel *)self formattedStringWithCoefficient:arrayCopy locale:1.0];
  v22 = [(TSURegressionModel *)self formattedStringWithCoefficient:arrayCopy locale:-1.0];
  if ([v20 isEqualToString:v21])
  {
    v23 = &stru_28862C2A0;
  }

  else
  {
    if (![v20 isEqualToString:v22])
    {
      goto LABEL_15;
    }

    v23 = @"-";
  }

  v20 = v23;
LABEL_15:
  v26 = [v17 stringByAppendingFormat:@"%@%@", v20, v19];

  v27 = *self->mCoefficients;
  if (v27 <= 1.0e-14 && v27 >= -1.0e-14)
  {
    v12 = v19;
LABEL_18:
    v15 = v30;
    goto LABEL_27;
  }

  v24 = [(TSURegressionModel *)self formattedStringWithCoefficient:arrayCopy locale:fabs(v27)];

  if (v27 <= 1.0e-14)
  {
    v12 = v19;
    if (v27 >= -1.0e-14)
    {
      v20 = v24;
      goto LABEL_18;
    }

    v25 = [v26 stringByAppendingFormat:@" - %@", v24];
  }

  else
  {
    v25 = [v26 stringByAppendingFormat:@" + %@", v24];
    v12 = v19;
  }

  v15 = v30;
LABEL_26:

  v20 = v24;
  v26 = v25;
LABEL_27:

  return v26;
}

@end