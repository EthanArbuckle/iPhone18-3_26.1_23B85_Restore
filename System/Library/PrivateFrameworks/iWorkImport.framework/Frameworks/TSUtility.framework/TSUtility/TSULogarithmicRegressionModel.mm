@interface TSULogarithmicRegressionModel
- (TSULogarithmicRegressionModel)initWithMappings:(int)a3 xs:(double *)a4 ys:(double *)a5 xDimension:(int)a6 makeAffine:(BOOL)a7 desiredIntercept:(double)a8;
- (double)estimateForX:(double *)a3;
- (id)getEquationStringAndBuildSuperscriptRangesArray:(id)a3;
- (void)dealloc;
@end

@implementation TSULogarithmicRegressionModel

- (TSULogarithmicRegressionModel)initWithMappings:(int)a3 xs:(double *)a4 ys:(double *)a5 xDimension:(int)a6 makeAffine:(BOOL)a7 desiredIntercept:(double)a8
{
  v9 = a7;
  v65.receiver = self;
  v65.super_class = TSULogarithmicRegressionModel;
  v14 = [(TSULogarithmicRegressionModel *)&v65 init];
  v15 = v14;
  if (v14)
  {
    v61 = a5;
    v14->super.mErrorType = 0;
    v14->mAffine = v9;
    if (v9)
    {
      a8 = 0.0;
    }

    v14->mIntercept = a8;
    v16 = v9 + a6;
    v63 = v9 + a6;
    v64 = a3;
    v17 = 8 * a3;
    v18 = malloc_type_malloc(v17, 0x100004000313F17uLL);
    if (v18)
    {
      v19 = v18;
      v59 = a6;
      if (a3 >= 1)
      {
        memset_pattern16(v18, &unk_277133D00, 8 * a3);
      }

      v20 = malloc_type_malloc(v17 * v16, 0x100004000313F17uLL);
      if (!v20)
      {
        v15->super.mErrorType = 1;
LABEL_66:
        free(v19);
        return v15;
      }

      v57 = a4;
      v58 = v19;
      __src = v20;
      if (v9)
      {
        memcpy(v20, v19, 8 * a3);
        v21 = (a3 * a6);
        if (v21 >= 1)
        {
          v22 = &__src[8 * a3];
          v23 = v57;
          while (*v23 > 0.0)
          {
            *v22++ = log(*v23++);
            if (!--v21)
            {
              goto LABEL_20;
            }
          }

LABEL_34:
          v36 = 2;
          goto LABEL_36;
        }
      }

      else
      {
        v24 = (a3 * a6);
        if (v24 >= 1)
        {
          v25 = v57;
          v26 = v20;
          while (*v25 > 0.0)
          {
            *v26++ = log(*v25++);
            if (!--v24)
            {
              goto LABEL_20;
            }
          }

          goto LABEL_34;
        }
      }

LABEL_20:
      v27 = malloc_type_malloc(v17 * v16, 0x100004000313F17uLL);
      if (v27)
      {
        v56 = v27;
        v28 = __src;
        memcpy(v27, __src, v17 * v16);
        v29 = malloc_type_malloc(8 * a3, 0x100004000313F17uLL);
        v19 = v58;
        if (v29)
        {
          v30 = v29;
          memcpy(v29, v61, 8 * a3);
          if (a8 != 0.0)
          {
            cblas_daxpy_NEWLAPACK();
          }

          if (a3 >= v16)
          {
            v31 = v16;
          }

          else
          {
            v31 = a3;
          }

          if (v31 <= 1)
          {
            v32 = 1;
          }

          else
          {
            v32 = v31;
          }

          v33 = v32 + v31;
          if (v33 <= 1)
          {
            v33 = 1;
          }

          v34 = malloc_type_malloc(8 * v33, 0x100004000313F17uLL);
          if (v34)
          {
            v35 = v34;
            dgels_NEWLAPACK();
            v38 = malloc_type_malloc(8 * v63, 0x100004000313F17uLL);
            v15->mCoefficients = v38;
            if (v38)
            {
              memcpy(v38, v30, 8 * v63);
              v15->mNumCoefficients = v63;
              memcpy(v30, v61, 8 * v64);
              v55 = v35;
              if (a8 != 0.0)
              {
                cblas_daxpy_NEWLAPACK();
              }

              cblas_ddot_NEWLAPACK();
              v40 = v39;
              v41 = malloc_type_malloc(8 * v64, 0x100004000313F17uLL);
              if (v41)
              {
                v42 = v41;
                v62 = v30;
                memcpy(v41, v30, 8 * v64);
                cblas_ddot_NEWLAPACK();
                cblas_daxpy_NEWLAPACK();
                v43 = v40;
                if (v9)
                {
                  cblas_ddot_NEWLAPACK();
                  v43 = v44;
                }

                v45 = malloc_type_malloc(8 * v64, 0x100004000313F17uLL);
                if (v45)
                {
                  v46 = v45;
                  cblas_dgemm_NEWLAPACK();
                  cblas_ddot_NEWLAPACK();
                  v48 = v40 - v47;
                  if (v43 == 0.0)
                  {
                    v48 = 0.0;
                  }

                  v15->mRSquared = 1.0 - v48 / v43;
                  v49 = malloc_type_malloc(8 * v64 * v63, 0x100004000313F17uLL);
                  if (v49)
                  {
                    v50 = v49;
                    v51 = v64;
                    if (v9)
                    {
                      memcpy(v49, v58, 8 * v64);
                      v51 = v64;
                      v49 = &v50[8 * v64];
                    }

                    memcpy(v49, v57, 8 * v51 * v59);
                    v52 = malloc_type_malloc(8 * v63 * v63, 0x100004000313F17uLL);
                    if (v52)
                    {
                      v53 = v52;
                      v15->super.mErrorType = sub_2770952E8(v50, v63);
                      free(v53);
                    }

                    else
                    {
                      v15->super.mErrorType = 1;
                    }

                    free(v50);
                  }

                  else
                  {
                    v15->super.mErrorType = 1;
                  }

                  v37 = v56;
                  free(v46);
                }

                else
                {
                  v15->super.mErrorType = 1;
                  v37 = v56;
                }

                v30 = v62;
                free(v42);
              }

              else
              {
                v15->super.mErrorType = 1;
                v37 = v56;
              }

              v35 = v55;
            }

            else
            {
              v15->super.mErrorType = 1;
              v37 = v56;
            }

            free(v35);
          }

          else
          {
            v15->super.mErrorType = 1;
            v37 = v56;
          }

          free(v30);
        }

        else
        {
          v15->super.mErrorType = 1;
          v37 = v56;
        }

        free(v37);
        goto LABEL_65;
      }

      v36 = 1;
LABEL_36:
      v19 = v58;
      v15->super.mErrorType = v36;
      v28 = __src;
LABEL_65:
      free(v28);
      goto LABEL_66;
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
  v4.super_class = TSULogarithmicRegressionModel;
  [(TSULogarithmicRegressionModel *)&v4 dealloc];
}

- (double)estimateForX:(double *)a3
{
  if (self->mAffine)
  {
    mCoefficients = self->mCoefficients;
    v6 = *mCoefficients;
    mNumCoefficients = self->mNumCoefficients;
    if (mNumCoefficients >= 2)
    {
      v8 = mCoefficients + 1;
      v9 = mNumCoefficients - 1;
      do
      {
        v10 = *v8++;
        v11 = v10;
        v12 = *a3++;
        v6 = v6 + v11 * log(v12);
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
      v6 = 0.0;
    }

    else
    {
      v14 = self->mCoefficients;
      v6 = 0.0;
      do
      {
        v15 = *v14++;
        v16 = v15;
        v17 = *a3++;
        v6 = v6 + v16 * log(v17);
        --v13;
      }

      while (v13);
    }
  }

  return v6 + self->mIntercept;
}

- (id)getEquationStringAndBuildSuperscriptRangesArray:(id)a3
{
  v4 = a3;
  if (!self->mAffine)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSULogarithmicRegressionModel getEquationStringAndBuildSuperscriptRangesArray:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSULogarithmicRegressionModel.m"];
    [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:432 isFatal:0 description:"Chart trend line should be affine."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (self->mNumCoefficients != 2)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSULogarithmicRegressionModel getEquationStringAndBuildSuperscriptRangesArray:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSULogarithmicRegressionModel.m"];
    [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:433 isFatal:0 description:"Chart trend line should have 2 coefficients, need to change this method when it supports more."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (!v4)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSULogarithmicRegressionModel getEquationStringAndBuildSuperscriptRangesArray:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSULogarithmicRegressionModel.m"];
    [TSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:434 isFatal:0 description:"invalid nil value for '%{public}s'", "locale"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v11 = SFUMainBundle();
  v12 = [v11 localizedStringForKey:@"x" value:&stru_28862C2A0 table:@"TSUtility"];

  v13 = SFUMainBundle();
  v14 = [v13 localizedStringForKey:@"y" value:&stru_28862C2A0 table:@"TSUtility"];

  v15 = SFUMainBundle();
  v16 = [v15 localizedStringForKey:@"ln" value:&stru_28862C2A0 table:@"TSUtility"];

  LOBYTE(v31) = 0;
  v17 = [v4 numberFormatterStringFromDouble:@"#" withFormat:0 useDecimalPlaces:0 minDecimalPlaces:0 decimalPlaces:0 showThousandsSeparator:0 currencyCode:0.0 suppressMinusSign:v31];
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ = ", v14];
  v19 = v18;
  mCoefficients = self->mCoefficients;
  v33 = v17;
  if (fabs(mCoefficients[1]) <= 1.0e-14)
  {
    if (fabs(*mCoefficients) <= 1.0e-14)
    {
      v27 = [v18 stringByAppendingString:v17];
      v26 = 0;
    }

    else
    {
      v26 = [(TSURegressionModel *)self formattedStringWithCoefficient:v4 locale:?];
      v27 = [v19 stringByAppendingString:v26];
    }

    v28 = v19;
    goto LABEL_26;
  }

  v32 = v16;
  v21 = v12;
  v22 = [(TSURegressionModel *)self formattedStringWithCoefficient:v4 locale:?];
  v23 = [(TSURegressionModel *)self formattedStringWithCoefficient:v4 locale:1.0];
  v24 = [(TSURegressionModel *)self formattedStringWithCoefficient:v4 locale:-1.0];
  if ([v22 isEqualToString:v23])
  {
    v25 = &stru_28862C2A0;
  }

  else
  {
    if (![v22 isEqualToString:v24])
    {
      goto LABEL_15;
    }

    v25 = @"-";
  }

  v22 = v25;
LABEL_15:
  v28 = [v19 stringByAppendingFormat:@"%@%@(%@)", v22, v32, v21];

  v29 = *self->mCoefficients;
  if (v29 <= 1.0e-14 && v29 >= -1.0e-14)
  {
    v12 = v21;
LABEL_18:
    v16 = v32;
    goto LABEL_27;
  }

  v26 = [(TSURegressionModel *)self formattedStringWithCoefficient:v4 locale:fabs(v29)];

  if (v29 <= 1.0e-14)
  {
    v12 = v21;
    if (v29 >= -1.0e-14)
    {
      v22 = v26;
      goto LABEL_18;
    }

    v27 = [v28 stringByAppendingFormat:@" - %@", v26];
  }

  else
  {
    v27 = [v28 stringByAppendingFormat:@" + %@", v26];
    v12 = v21;
  }

  v16 = v32;
LABEL_26:

  v22 = v26;
  v28 = v27;
LABEL_27:

  return v28;
}

@end