@interface TSUPolynomialRegressionModel
- (TSUPolynomialRegressionModel)initWithMappings:(int)mappings xs:(double *)xs ys:(double *)ys xOrder:(int)order makeAffine:(BOOL)affine desiredIntercept:(double)intercept;
- (_NSRange)superscriptRangeAtIndex:(int)index;
- (double)estimateFor1DX:(double)x;
- (id)getEquationStringAndBuildSuperscriptRangesArray:(id)array;
- (void)dealloc;
@end

@implementation TSUPolynomialRegressionModel

- (TSUPolynomialRegressionModel)initWithMappings:(int)mappings xs:(double *)xs ys:(double *)ys xOrder:(int)order makeAffine:(BOOL)affine desiredIntercept:(double)intercept
{
  affineCopy = affine;
  v69.receiver = self;
  v69.super_class = TSUPolynomialRegressionModel;
  v14 = [(TSUPolynomialRegressionModel *)&v69 init];
  v15 = v14;
  if (v14)
  {
    if (order || affineCopy)
    {
      ysCopy = ys;
      v14->super.mErrorType = 0;
      v14->mAffine = affineCopy;
      if (affineCopy)
      {
        interceptCopy = 0.0;
      }

      else
      {
        interceptCopy = intercept;
      }

      v14->mIntercept = interceptCopy;
      v67 = affineCopy + order;
      mappingsCopy = mappings;
      v66 = 8 * mappings;
      v19 = malloc_type_malloc(v66, 0x100004000313F17uLL);
      if (v19)
      {
        v20 = v19;
        if (mappings >= 1)
        {
          memset_pattern16(v19, &unk_277133D00, 8 * mappings);
        }

        size = v66 * (affineCopy + order);
        v21 = malloc_type_malloc(size, 0x100004000313F17uLL);
        if (v21)
        {
          v60 = affineCopy + order;
          v61 = v20;
          v62 = v15;
          v59 = affineCopy;
          __src = v21;
          if (affineCopy)
          {
            memcpy(v21, v20, v66);
            if (order >= 1)
            {
              v22 = (order + 1);
              v23 = 1;
              v24 = &__src[8 * mappings];
              do
              {
                if (mappings >= 1)
                {
                  mappingsCopy2 = mappings;
                  xsCopy = xs;
                  v27 = v24;
                  do
                  {
                    v28 = *xsCopy++;
                    *v27++ = pow(v28, v23);
                    --mappingsCopy2;
                  }

                  while (mappingsCopy2);
                }

                ++v23;
                v24 += mappings;
              }

              while (v23 != v22);
            }
          }

          else if (order >= 1)
          {
            v29 = 1;
            v30 = v21;
            do
            {
              if (mappings >= 1)
              {
                mappingsCopy3 = mappings;
                xsCopy2 = xs;
                v33 = v30;
                do
                {
                  v34 = *xsCopy2++;
                  *v33++ = pow(v34, v29);
                  --mappingsCopy3;
                }

                while (mappingsCopy3);
              }

              ++v29;
              v30 += mappings;
            }

            while (v29 != order + 1);
          }

          v35 = malloc_type_malloc(size, 0x100004000313F17uLL);
          if (v35)
          {
            v36 = v35;
            v37 = __src;
            memcpy(v35, __src, size);
            v38 = malloc_type_malloc(v66, 0x100004000313F17uLL);
            v15 = v62;
            if (v38)
            {
              v39 = v38;
              memcpy(v38, ysCopy, v66);
              v20 = v61;
              if (interceptCopy != 0.0)
              {
                cblas_daxpy_NEWLAPACK();
              }

              if (mappings >= v60)
              {
                mappingsCopy4 = v60;
              }

              else
              {
                mappingsCopy4 = mappings;
              }

              if (mappingsCopy4 <= 1)
              {
                v41 = 1;
              }

              else
              {
                v41 = mappingsCopy4;
              }

              v42 = v41 + mappingsCopy4;
              if (v42 <= 1)
              {
                v42 = 1;
              }

              v43 = malloc_type_malloc(8 * v42, 0x100004000313F17uLL);
              if (v43)
              {
                v44 = v43;
                dgels_NEWLAPACK();
                v46 = malloc_type_malloc(8 * v67, 0x100004000313F17uLL);
                v62->mCoefficients = v46;
                if (v46)
                {
                  memcpy(v46, v39, 8 * v67);
                  v62->mNumCoefficients = v67;
                  memcpy(v39, ysCopy, 8 * mappingsCopy);
                  if (interceptCopy != 0.0)
                  {
                    cblas_daxpy_NEWLAPACK();
                  }

                  cblas_ddot_NEWLAPACK();
                  v48 = v47;
                  v49 = malloc_type_malloc(8 * mappingsCopy, 0x100004000313F17uLL);
                  if (v49)
                  {
                    v50 = v49;
                    memcpy(v49, v39, 8 * mappingsCopy);
                    cblas_ddot_NEWLAPACK();
                    cblas_daxpy_NEWLAPACK();
                    v51 = v48;
                    if (v59)
                    {
                      cblas_ddot_NEWLAPACK();
                      v51 = v52;
                    }

                    v53 = malloc_type_malloc(8 * mappingsCopy, 0x100004000313F17uLL);
                    if (v53)
                    {
                      v54 = v53;
                      cblas_dgemm_NEWLAPACK();
                      cblas_ddot_NEWLAPACK();
                      v56 = v48 - v55;
                      if (v51 == 0.0)
                      {
                        v56 = 0.0;
                      }

                      v62->mRSquared = 1.0 - v56 / v51;
                      v57 = malloc_type_malloc(8 * v67 * v67, 0x100004000313F17uLL);
                      if (v57)
                      {
                        v58 = v57;
                        v62->super.mErrorType = sub_2770952E8(v36, v67);
                        free(v58);
                      }

                      else
                      {
                        v62->super.mErrorType = 1;
                      }

                      free(v54);
                    }

                    else
                    {
                      v62->super.mErrorType = 1;
                    }

                    free(v50);
                  }

                  else
                  {
                    v62->super.mErrorType = 1;
                  }
                }

                else
                {
                  v62->super.mErrorType = 1;
                }

                free(v44);
              }

              else
              {
                v62->super.mErrorType = 1;
              }

              free(v39);
            }

            else
            {
              v20 = v61;
              v62->super.mErrorType = 1;
            }

            free(v36);
          }

          else
          {
            v20 = v61;
            v15 = v62;
            v62->super.mErrorType = 1;
            v37 = __src;
          }

          free(v37);
        }

        else
        {
          v15->super.mErrorType = 1;
        }

        free(v20);
      }

      else
      {
        v15->super.mErrorType = 1;
      }
    }

    else
    {
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUPolynomialRegressionModel initWithMappings:xs:ys:xOrder:makeAffine:desiredIntercept:]"];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUPolynomialRegressionModel.m"];
      [TSUAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:44 isFatal:0 description:"Order 0 and intercept is being set in the SFUPolynomialRegressionModel."];

      +[TSUAssertionHandler logBacktraceThrottled];
      v15->super.mErrorType = 1;
    }
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
  v4.super_class = TSUPolynomialRegressionModel;
  [(TSUPolynomialRegressionModel *)&v4 dealloc];
}

- (double)estimateFor1DX:(double)x
{
  if (self->mAffine)
  {
    mCoefficients = self->mCoefficients;
    v6 = *mCoefficients;
    mNumCoefficients = self->mNumCoefficients;
    if (mNumCoefficients >= 2)
    {
      for (i = 1; i != mNumCoefficients; ++i)
      {
        v9 = mCoefficients[i];
        v6 = v6 + v9 * pow(x, i);
      }
    }
  }

  else
  {
    v10 = self->mNumCoefficients;
    if (v10 < 1)
    {
      v6 = 0.0;
    }

    else
    {
      v11 = self->mCoefficients;
      v6 = 0.0;
      v12 = 1;
      do
      {
        v13 = *v11++;
        v6 = v6 + v13 * pow(x, v12++);
        --v10;
      }

      while (v10);
    }
  }

  return v6 + self->mIntercept;
}

- (id)getEquationStringAndBuildSuperscriptRangesArray:(id)array
{
  arrayCopy = array;
  if (!self->mAffine)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUPolynomialRegressionModel getEquationStringAndBuildSuperscriptRangesArray:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUPolynomialRegressionModel.m"];
    [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:416 isFatal:0 description:"Chart trend line should be affine."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (!arrayCopy)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUPolynomialRegressionModel getEquationStringAndBuildSuperscriptRangesArray:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUPolynomialRegressionModel.m"];
    [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:417 isFatal:0 description:"invalid nil value for '%{public}s'", "locale"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v9 = SFUMainBundle();
  v39 = [v9 localizedStringForKey:@"x" value:&stru_28862C2A0 table:@"TSUtility"];

  v10 = SFUMainBundle();
  v11 = [v10 localizedStringForKey:@"y" value:&stru_28862C2A0 table:@"TSUtility"];

  LOBYTE(v34) = 0;
  v37 = [arrayCopy numberFormatterStringFromDouble:@"#" withFormat:0 useDecimalPlaces:0 minDecimalPlaces:0 decimalPlaces:0 showThousandsSeparator:0 currencyCode:0.0 suppressMinusSign:v34];
  v38 = v11;
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ = ", v11];
  self->mNumSuperscriptRanges = 0;
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  mSuperscriptRangesArray = self->mSuperscriptRangesArray;
  self->mSuperscriptRangesArray = v13;

  mNumCoefficients = self->mNumCoefficients;
  if (mNumCoefficients >= 1)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v40 = arrayCopy;
    while (1)
    {
      v19 = self->mCoefficients[mNumCoefficients - 1];
      if (v19 <= 1.0e-14 && v19 >= -1.0e-14)
      {
        goto LABEL_43;
      }

      v20 = [(TSURegressionModel *)self formattedStringWithCoefficient:arrayCopy locale:fabs(v19)];

      v21 = [(TSURegressionModel *)self formattedStringWithCoefficient:arrayCopy locale:v19];

      v22 = [(TSURegressionModel *)self formattedStringWithCoefficient:arrayCopy locale:1.0];
      v23 = [(TSURegressionModel *)self formattedStringWithCoefficient:arrayCopy locale:-1.0];
      v41 = v23;
      if (mNumCoefficients < 3)
      {
        if (mNumCoefficients == 2)
        {
          if ([(__CFString *)v20 isEqualToString:v22])
          {

            v20 = &stru_28862C2A0;
          }

          if ([(__CFString *)v21 isEqualToString:v22])
          {

            v21 = &stru_28862C2A0;
          }

          if ([(__CFString *)v21 isEqualToString:v23])
          {

            v21 = @"-";
          }

          if ((v16 & 1) == 0)
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v21, v39];
            goto LABEL_38;
          }

          if (v19 > 1.0e-14)
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@" + %@%@", v20, v39];
            goto LABEL_38;
          }

          v25 = &stru_28862C2A0;
          if (v19 < -1.0e-14)
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@" - %@%@", v20, v39];
            goto LABEL_38;
          }

LABEL_41:
          v26 = [v12 stringByAppendingString:v25];
          v24 = v12;
          goto LABEL_42;
        }

        if (v16)
        {
          if (v19 > 1.0e-14)
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@" + %@", v20, v36];
            goto LABEL_38;
          }

          v25 = &stru_28862C2A0;
          if (v19 >= -1.0e-14)
          {
            goto LABEL_41;
          }

          [MEMORY[0x277CCACA8] stringWithFormat:@" - %@", v20, v36];
          v29 = LABEL_38:;
        }

        else
        {
          v29 = [MEMORY[0x277CCACA8] stringWithString:v21];
        }

        v25 = v29;
        goto LABEL_41;
      }

      if ([(__CFString *)v20 isEqualToString:v22])
      {

        v20 = &stru_28862C2A0;
      }

      if ([(__CFString *)v21 isEqualToString:v22])
      {

        v21 = &stru_28862C2A0;
      }

      if ([(__CFString *)v21 isEqualToString:v23])
      {

        v21 = @"-";
      }

      LOBYTE(v35) = 0;
      v24 = [arrayCopy numberFormatterStringFromDouble:@"#" withFormat:0 useDecimalPlaces:0 minDecimalPlaces:0 decimalPlaces:0 showThousandsSeparator:0 currencyCode:(mNumCoefficients - 1) suppressMinusSign:v35];
      if (v16)
      {
        if (v19 <= 1.0e-14)
        {
          v25 = &stru_28862C2A0;
          if (v19 >= -1.0e-14)
          {
            goto LABEL_31;
          }

          [MEMORY[0x277CCACA8] stringWithFormat:@" - %@%@%@", v20, v39, v24];
        }

        else
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@" + %@%@%@", v20, v39, v24];
        }
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", v21, v39, v24];
      }
      v25 = ;
LABEL_31:
      v26 = [v12 stringByAppendingString:v25];

      v27 = self->mSuperscriptRangesArray;
      v28 = [MEMORY[0x277CCAE60] valueWithRange:{objc_msgSend(v26, "length") - objc_msgSend(v24, "length"), objc_msgSend(v24, "length")}];
      [(NSMutableArray *)v27 addObject:v28];

      ++self->mNumSuperscriptRanges;
LABEL_42:

      v16 = 1;
      v18 = v21;
      v17 = v20;
      v12 = v26;
      arrayCopy = v40;
LABEL_43:
      if (mNumCoefficients-- <= 1)
      {
        v30 = v37;
        if (v16)
        {
          goto LABEL_53;
        }

        goto LABEL_52;
      }
    }
  }

  v17 = 0;
  v18 = 0;
  v30 = v37;
LABEL_52:
  v31 = [v12 stringByAppendingString:v30];

  v12 = v31;
LABEL_53:
  v32 = v12;

  return v12;
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