@interface CRTextDecodingUtils
+ (id)adjustedBeamSearchDecodedString:(id)a3 greedyDecodedString:(id)a4 decodingLocale:(id)a5;
+ (id)characterRangesForTokens:(id)a3 fromActivation:(id)a4 usingCharacterTokens:(BOOL)a5;
+ (id)filteredTokensFromTokens:(id)a3 falsePositiveFiltering:(BOOL)a4 keepWhitespaceToken:(BOOL)a5;
+ (id)getTokenPermutationByApplyingReorderingPermutation:(id)a3 toRanges:(id)a4;
+ (id)graphemeClusterTokensFromTokens:(id)a3;
+ (id)halfWidthToFullWidthNormalizationForTextString:(id)a3;
+ (id)invertedPermutation:(id)a3;
+ (id)reversedPermutation:(id)a3 numTimeSteps:(unint64_t)a4;
+ (id)reversedTokens:(id)a3 numTimeSteps:(unint64_t)a4;
+ (id)tokenDelimiterRangesForTokens:(id)a3 usingCharacterTokens:(BOOL)a4;
+ (id)tokenSequenceStringForTokens:(id)a3 usingCharacterTokens:(BOOL)a4;
+ (id)wordTokensFromCharacterTokens:(id)a3;
+ (uint64_t)getTokenPermutationByApplyingReorderingPermutation:(uint64_t *)a3 toRanges:(uint64_t)a4;
+ (void)getBoundariesForRanges:(void *)a3 topPoints:(void *)a4 bottomPoints:(void *)a5 imageSize:(void *)a6 scale:(int)a7 featureImageSize:(int)a8 rect:(float64_t)a9 rotatedRoi:(float64_t)a10 radians:(float)a11 model:(double)a12 configuration:(double)a13 paddingLeft:(double)a14 paddingRight:(double)a15 rangeOffset:(double)a16;
@end

@implementation CRTextDecodingUtils

+ (id)adjustedBeamSearchDecodedString:(id)a3 greedyDecodedString:(id)a4 decodingLocale:(id)a5
{
  v6 = sub_1B429FB98();
  v8 = v7;
  v9 = sub_1B429FB98();
  v11 = v10;
  if (a5)
  {
    v12 = sub_1B429FB98();
    a5 = v13;
  }

  else
  {
    v12 = 0;
  }

  swift_getObjCClassMetadata();
  sub_1B41257F0(v6, v8, v9, v11, v12, a5);

  v14 = sub_1B429FB88();

  return v14;
}

+ (id)halfWidthToFullWidthNormalizationForTextString:(id)a3
{
  v3 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__6;
  v32 = __Block_byref_object_dispose__6;
  v33 = 0;
  v4 = customHalfWidthToFullWidthMapping();
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__6;
  v26 = __Block_byref_object_dispose__6;
  v27 = 0;
  if ([v3 length] >= 3)
  {
    v5 = customRegexToIgnoreHalfWidthToFullWidthMapping();
    v6 = v23[5];
    v23[5] = v5;
  }

  v7 = [v3 length];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __70__CRTextDecodingUtils_halfWidthToFullWidthNormalizationForTextString___block_invoke;
  v17 = &unk_1E7BC29F0;
  v8 = v4;
  v18 = v8;
  v20 = &v22;
  v9 = v3;
  v19 = v9;
  v21 = &v28;
  [v9 enumerateSubstringsInRange:0 options:v7 usingBlock:{2, &v14}];
  v10 = v29[5];
  if (v10)
  {
    v11 = [v10 copy];
  }

  else
  {
    v11 = v9;
  }

  v12 = v11;

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v12;
}

void __70__CRTextDecodingUtils_halfWidthToFullWidthNormalizationForTextString___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v7 = [*(a1 + 32) allKeys];
  v8 = [v7 containsObject:v26];

  if (v8)
  {
    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      goto LABEL_20;
    }

    v9 = a3 <= 1 ? 1 : a3;
    v10 = v9 - 1;
    do
    {
      v11 = v10;
      v12 = [*(a1 + 40) substringWithRange:{v10, 1}];
      v13 = [v12 isEqualToString:@" "];
      if ((v10 + 1) > 1)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      --v10;
    }

    while ((v14 & 1) != 0);
    v15 = [*(a1 + 40) length];
    v16 = v15 - 1 >= ([v26 length] + a3) ? objc_msgSend(v26, "length") + a3 : objc_msgSend(*(a1 + 40), "length") - 1;
    for (i = v16 - v10; ; ++i)
    {
      v18 = [*(a1 + 40) substringWithRange:{v16, 1}];
      if (![v18 isEqualToString:@" "])
      {
        break;
      }

      v19 = [*(a1 + 40) length] - 1;

      if (v16 >= v19)
      {
        goto LABEL_19;
      }

      ++v16;
    }

LABEL_19:
    if ([*(*(*(a1 + 48) + 8) + 40) rangeOfFirstMatchInString:*(a1 + 40) options:0 range:{v11, i}] == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_20:
      v20 = *(*(*(a1 + 56) + 8) + 40);
      v21 = v26;
      if (!v20)
      {
        v22 = [*(a1 + 40) mutableCopy];
        v23 = *(*(a1 + 56) + 8);
        v24 = *(v23 + 40);
        *(v23 + 40) = v22;

        v20 = *(*(*(a1 + 56) + 8) + 40);
        v21 = v26;
      }

      v25 = [*(a1 + 32) objectForKeyedSubscript:v21];
      [v20 replaceCharactersInRange:a3 withString:{a4, v25}];
    }
  }
}

+ (void)getBoundariesForRanges:(void *)a3 topPoints:(void *)a4 bottomPoints:(void *)a5 imageSize:(void *)a6 scale:(int)a7 featureImageSize:(int)a8 rect:(float64_t)a9 rotatedRoi:(float64_t)a10 radians:(float)a11 model:(double)a12 configuration:(double)a13 paddingLeft:(double)a14 paddingRight:(double)a15 rangeOffset:(double)a16
{
  v94 = *MEMORY[0x1E69E9840];
  v73 = a2;
  v29 = a5;
  v30 = a6;
  objc_opt_self();
  v31 = a23;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v32 = *&a22 == 0.0;
  if (*&a23 == 0.0)
  {
    v32 = 1;
  }

  if (v32)
  {
    v33 = a19;
  }

  else
  {
    v33 = a22;
  }

  if (v32)
  {
    v31 = a20;
  }

  v76 = *&v31;
  v34 = [v29 outputWidthDownscale];
  [v34 floatValue];
  v36 = v35;

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v37 = v73;
  v38 = [v37 countByEnumeratingWithState:&v86 objects:v93 count:16];
  if (v38)
  {
    v39 = *&v33;
    v40 = v36 / (a12 * a11 / v39);
    v41 = *v87;
    v42 = v40;
    v43 = MEMORY[0x1E695EFF8];
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v87 != v41)
        {
          objc_enumerationMutation(v37);
        }

        v45 = [*(*(&v86 + 1) + 8 * i) rangeValue];
        *v84 = *v43;
        *__p = *v84;
        v46 = *&a25 + (v45 + a27) * v42;
        v48 = *&a26 + ((v45 + v47) + a27) * v42;
        if (v47 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v46 = (v40 * v45);
          v48 = v46;
        }

        v84[0] = *&v46;
        __p[0] = *&v48;
        std::vector<CGPoint>::push_back[abi:ne200100](&v90, v84);
        std::vector<CGPoint>::push_back[abi:ne200100](&v90, __p);
      }

      v38 = [v37 countByEnumeratingWithState:&v86 objects:v93 count:16];
    }

    while (v38);
  }

  v84[0] = 0;
  v84[1] = 0;
  v85 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v83 = 0;
  [v30 angleThresholdForRotatedCrops];
  if (v49 >= fabsf(*&a24))
  {
    v62 = v90;
    v63 = v91;
    if (v90 != v91)
    {
      v64.f64[0] = a17;
      v64.f64[1] = *&a18 + *&a20;
      v77 = v64;
      v64.f64[0] = a9;
      v64.f64[1] = a10;
      v75 = v64;
      do
      {
        v81 = *v62;
        v80 = *v62;
        v81.f64[0] = (a17 + v81.f64[0]) / a9;
        v81.f64[1] = *&a18 / a10;
        v80 = vdivq_f64(vaddq_f64(v77, v80), v75);
        std::vector<CGPoint>::push_back[abi:ne200100](v84, &v81);
        std::vector<CGPoint>::push_back[abi:ne200100](__p, &v80);
        ++v62;
      }

      while (v62 != v63);
    }
  }

  else
  {
    v50 = v90;
    v51 = v91;
    if (v90 != v91)
    {
      v52 = v76;
      v53 = *&a19 * 0.5;
      v54 = *&a20 * 0.5;
      v55 = __sincosf_stret(*&a24);
      v56 = a21.f64[1] + v52 - *&a20 * 0.5;
      cosval = v55.__cosval;
      sinval = v55.__sinval;
      v74 = -(v56 * v55.__sinval);
      v59 = v56 * v55.__cosval;
      do
      {
        v81 = a21;
        v81.f64[0] = a21.f64[0] + *v50;
        v80 = a21;
        v60 = v81.f64[0] - v53;
        v61 = a21.f64[0] + *v50 - v53;
        v81.f64[0] = (a17 + v53 + (v81.f64[0] - v53) * cosval - (a21.f64[1] - *&a20 * 0.5) * v55.__sinval) / a9;
        v81.f64[1] = (*&a18 + v54 + (a21.f64[1] - *&a20 * 0.5) * v55.__cosval + v60 * sinval) / a10;
        v80.f64[0] = (a17 + v53 + v74 + v61 * cosval) / a9;
        v80.f64[1] = (*&a18 + v54 + v59 + v61 * sinval) / a10;
        std::vector<CGPoint>::push_back[abi:ne200100](v84, &v81);
        std::vector<CGPoint>::push_back[abi:ne200100](__p, &v80);
        v50 += 2;
      }

      while (v50 != v51);
    }
  }

  v65 = [MEMORY[0x1E695DF70] array];
  v66 = v84[0];
  for (j = v84[1]; v66 != j; v66 += 2)
  {
    v68 = [MEMORY[0x1E696B098] valueWithPoint:{*v66, v66[1]}];
    [v65 addObject:v68];
  }

  v69 = [MEMORY[0x1E695DF70] array];
  v70 = __p[0];
  for (k = __p[1]; v70 != k; v70 += 2)
  {
    v72 = [MEMORY[0x1E696B098] valueWithPoint:{*v70, v70[1]}];
    [v69 addObject:v72];
  }

  if (a3)
  {
    *a3 = [MEMORY[0x1E695DEC8] arrayWithArray:v65];
  }

  if (a4)
  {
    *a4 = [MEMORY[0x1E695DEC8] arrayWithArray:v69];
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v84[0])
  {
    v84[1] = v84[0];
    operator delete(v84[0]);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }
}

+ (id)tokenSequenceStringForTokens:(id)a3 usingCharacterTokens:(BOOL)a4
{
  v4 = a4;
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E696AD60] string];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if (v4 && ([*(*(&v18 + 1) + 8 * i) fullString], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", @" "), v12, v13))
        {
          [v6 appendString:@"\uFFFC"];
        }

        else
        {
          v14 = [v11 string];
          [v6 appendString:v14];
        }

        [v6 appendString:@" "];
      }

      v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v16 = [v6 stringByTrimmingCharactersInSet:v15];

  return v16;
}

+ (id)tokenDelimiterRangesForTokens:(id)a3 usingCharacterTokens:(BOOL)a4
{
  v43 = a4;
  v50 = *MEMORY[0x1E69E9840];
  v40 = a3;
  if ([v40 count])
  {
    v44 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v40, "count") + 1}];
    v4 = [v40 firstObject];
    v5 = [v4 activationRange];

    v6 = [v40 lastObject];
    v7 = [v6 activationRange];
    v38 = v8;
    v39 = v7;

    v9 = [v40 lastObject];
    v10 = [v9 activationRange];
    v36 = v11;
    v37 = v10;

    if (v5)
    {
      [MEMORY[0x1E696B098] valueWithRange:{0, v5}];
    }

    else
    {
      [MEMORY[0x1E696B098] valueWithRange:{0, 0x7FFFFFFFFFFFFFFFLL}];
    }
    v12 = ;
    [v44 addObject:v12];

    if ([v40 count] >= 2)
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v14 = v40;
      v42 = [v14 countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v42)
      {
        v15 = 0;
        v41 = *v46;
LABEL_9:
        v16 = 0;
        while (1)
        {
          if (*v46 != v41)
          {
            objc_enumerationMutation(v14);
          }

          v17 = *(*(&v45 + 1) + 8 * v16);
          if (v15 == [v14 count] - 1)
          {
            break;
          }

          v18 = [v14 objectAtIndexedSubscript:++v15];
          v19 = [v17 activationRange];
          v21 = v20;
          v22 = [v18 activationRange];
          v23 = v19 + v21;
          if (v22 - v23 <= !v43)
          {
            v24 = !v43;
          }

          else
          {
            v24 = v22 - v23;
          }

          if (v43)
          {
            v25 = [v17 fullString];
            v26 = [v25 isEqualToString:@" "];

            if (v26)
            {
              v23 = v19 + 1;
            }

            v27 = [v18 fullString];
            v28 = [v27 isEqualToString:@" "];

            if (v28)
            {
              v24 = 1;
            }
          }

          v29 = [MEMORY[0x1E696B098] valueWithRange:{v23, v24}];
          [v44 addObject:v29];

          if (v42 == ++v16)
          {
            v42 = [v14 countByEnumeratingWithState:&v45 objects:v49 count:16];
            if (v42)
            {
              goto LABEL_9;
            }

            break;
          }
        }
      }
    }

    if (v39 + v38 == v37 + v36)
    {
      [MEMORY[0x1E696B098] valueWithRange:{v39 + v38, 0x7FFFFFFFFFFFFFFFLL}];
    }

    else
    {
      v31 = [v40 lastObject];
      v32 = [v31 activationRange];
      v34 = v33;

      [MEMORY[0x1E696B098] valueWithRange:{v39 + v38, v34 - (v39 + v38) + v32}];
    }
    v30 = ;
    [v44 addObject:v30];

    v13 = [MEMORY[0x1E695DEC8] arrayWithArray:v44];
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  return v13;
}

+ (id)wordTokensFromCharacterTokens:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v35 = a3;
  if ([v35 count])
  {
    v36 = [MEMORY[0x1E695DF70] array];
    v3 = [MEMORY[0x1E696AD60] string];
    v4 = [v35 firstObject];
    location = [v4 activationRange];
    length = v6;

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v35;
    v8 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v8)
    {
      v9 = 0;
      v10 = *v39;
      v11 = 0.0;
      v12 = 0.0;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v39 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v38 + 1) + 8 * i);
          v46.location = [v14 activationRange];
          v46.length = v15;
          v45.location = location;
          v45.length = length;
          v16 = NSUnionRange(v45, v46);
          location = v16.location;
          length = v16.length;
          v17 = [v14 fullString];
          v18 = [v17 isEqualToString:@" "];

          if ((v18 & 1) == 0)
          {
            v19 = [v14 string];
            [v3 appendString:v19];

            v20 = [v14 alignmentScore];
            [v20 doubleValue];
            v22 = v21;

            v23 = [v14 score];
            [v23 doubleValue];
            v25 = v24;

            v26 = [obj lastObject];
            LODWORD(v23) = v14 == v26;

            ++v9;
            v12 = v12 + v22;
            v11 = v11 + v25;
            if (!v23)
            {
              continue;
            }
          }

          if (v9)
          {
            v27 = v11 / v9;
          }

          else
          {
            v27 = 0.0;
          }

          v28 = [MEMORY[0x1E696AD98] numberWithDouble:v27];
          if (v9)
          {
            v29 = v12 / v9;
          }

          else
          {
            v29 = 0.0;
          }

          v30 = [MEMORY[0x1E696AD98] numberWithDouble:v29];
          v31 = objc_alloc(MEMORY[0x1E6992028]);
          v32 = [v3 copy];
          v33 = [v31 initWithString:v32 score:v28 alignmentScore:v30 activationRange:v16.location terminatingCharacter:{v16.length, &stru_1F2BB4348}];

          [v36 addObject:v33];
          [v3 setString:&stru_1F2BB4348];

          v9 = 0;
          location = v16.location + v16.length;
          v11 = 0.0;
          v12 = 0.0;
          length = 0;
        }

        v8 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v36 = MEMORY[0x1E695E0F0];
  }

  return v36;
}

+ (id)graphemeClusterTokensFromTokens:(id)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v49 = a3;
  if (![v49 count])
  {
    v51 = MEMORY[0x1E695E0F0];
    goto LABEL_35;
  }

  v51 = [MEMORY[0x1E695DF70] array];
  v55 = [MEMORY[0x1E696AD60] string];
  v3 = [v49 firstObject];
  v54.location = [v3 activationRange];
  v54.length = v4;

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v49;
  v5 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
  v6 = 0;
  if (!v5)
  {
    v7 = 0.0;
    v8 = 0.0;
    goto LABEL_26;
  }

  v52 = *v57;
  v7 = 0.0;
  v8 = 0.0;
  do
  {
    v53 = v5;
    for (i = 0; i != v53; ++i)
    {
      if (*v57 != v52)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v56 + 1) + 8 * i);
      v11 = [v10 string];
      v12 = [(NSString *)v55 stringByAppendingString:v11];

      v13 = [v10 fullString];
      v14 = [v13 isEqualToString:@" "];

      v15 = [v10 string];
      v16 = characterCount(v15);

      if ([(NSString *)v55 length])
      {
        v17 = characterCount(v12);
        if (!((v17 >= characterCount(v55) + v16) | v14 & 1))
        {
          goto LABEL_12;
        }
      }

      else if ((v14 & 1) == 0)
      {
LABEL_12:
        v19 = [v10 string];
        v20 = characterCount(v19);

        v21 = [v10 string];
        [(NSString *)v55 appendString:v21];

        v64.location = [v10 activationRange];
        v64.length = v22;
        v54 = NSUnionRange(v54, v64);
        v23 = [v10 alignmentScore];
        [v23 doubleValue];
        v25 = v24;

        v26 = [v10 score];
        [v26 doubleValue];
        v6 += v20;
        v8 = v8 + v25;
        v7 = v7 + v27;
        goto LABEL_21;
      }

      if (v6)
      {
        v18 = v7 / v6;
      }

      else
      {
        v18 = 0.0;
      }

      v26 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
      if (v6)
      {
        v28 = v8 / v6;
      }

      else
      {
        v28 = 0.0;
      }

      v29 = [MEMORY[0x1E696AD98] numberWithDouble:v28];
      v30 = objc_alloc(MEMORY[0x1E6992028]);
      v31 = [(NSString *)v55 copy];
      v32 = [v30 initWithString:v31 score:v26 alignmentScore:v29 activationRange:v54 terminatingCharacter:&stru_1F2BB4348];

      [v51 addObject:v32];
      if (v14)
      {
        [v51 addObject:v10];
        [(NSString *)v55 setString:&stru_1F2BB4348];
        v33 = [v10 activationRange];
        v6 = 0;
        v54 = (v33 + v34);
        v7 = 0.0;
        v8 = 0.0;
      }

      else
      {
        v35 = [v10 string];
        [(NSString *)v55 setString:v35];

        v65.location = [v10 activationRange];
        v65.length = v36;
        v63.location = v54.location + v54.length;
        v63.length = 0;
        v54 = NSUnionRange(v63, v65);
        v37 = [v10 alignmentScore];
        [v37 doubleValue];
        v8 = v38;

        v39 = [v10 score];
        [v39 doubleValue];
        v7 = v40;

        v6 = v16;
      }

LABEL_21:
    }

    v5 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
  }

  while (v5);
LABEL_26:

  if ([(NSString *)v55 length])
  {
    if (v6)
    {
      v41 = v7 / v6;
    }

    else
    {
      v41 = 0.0;
    }

    v42 = [MEMORY[0x1E696AD98] numberWithDouble:v41];
    if (v6)
    {
      v43 = v8 / v6;
    }

    else
    {
      v43 = 0.0;
    }

    v44 = [MEMORY[0x1E696AD98] numberWithDouble:v43];
    v45 = objc_alloc(MEMORY[0x1E6992028]);
    v46 = [(NSString *)v55 copy];
    v47 = [v45 initWithString:v46 score:v42 alignmentScore:v44 activationRange:v54 terminatingCharacter:&stru_1F2BB4348];

    [v51 addObject:v47];
  }

LABEL_35:

  return v51;
}

+ (id)characterRangesForTokens:(id)a3 fromActivation:(id)a4 usingCharacterTokens:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v46 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v9 = [v7 count];
  v10 = MEMORY[0x1E695E0F0];
  if (v8 && v9)
  {
    v11 = 0x1E695D000uLL;
    v41 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v12 = [v8 characterObservations];
    v48 = [v12 objectAtIndexedSubscript:{objc_msgSend(v8, "blankIndex")}];

    v45 = 0;
    v40 = !v5;
    v42 = v7;
    v49 = v8;
    while (v45 < [v7 count])
    {
      v13 = [v7 objectAtIndexedSubscript:?];
      v14 = [v13 activationRange];
      v16 = v15;

      v17 = [v7 objectAtIndexedSubscript:v45];
      v18 = [v17 fullString];
      v19 = [v18 componentsSeparatedByCharactersInSet:v46];
      v20 = [v19 componentsJoinedByString:&stru_1F2BB4348];

      v43 = characterCount(v20);
      v44 = v20;
      v50 = [*(v11 + 3952) array];
      v21 = [*(v11 + 3952) array];
      if (v14 >= v14 + v16)
      {
        v22 = 0;
        v47 = -1;
        v25 = &stru_1F2BB4348;
      }

      else
      {
        v22 = 0;
        v23 = 0;
        v47 = -1;
        v24 = -1.79769313e308;
        v25 = &stru_1F2BB4348;
        do
        {
          v26 = v22;
          v51 = 0.0;
          v22 = [v49 topCandidateForTimestep:v14 outputLogProbability:&v51];
          v27 = ([v22 isEqualToString:v48] & 1) != 0 || objc_msgSend(v22, "rangeOfCharacterFromSet:", v46) != 0x7FFFFFFFFFFFFFFFLL;
          if (((v27 | [v22 isEqualToString:v26]) & 1) == 0)
          {
            v28 = [(__CFString *)v25 length];
            v29 = [(__CFString *)v25 stringByAppendingString:v22];
            v23 = v28 == 0;

            v25 = v29;
          }

          if (characterCount(&v25->isa) == 1)
          {
            if (!v27)
            {
              if (v23)
              {
                v23 = 1;
                if (v51 > v24)
                {
                  v24 = v51;
                  v47 = v14;
                }
              }

              else
              {
                v23 = 0;
              }
            }
          }

          else
          {
            if ([(__CFString *)v25 length])
            {

              v25 = &stru_1F2BB4348;
            }

            if (!v27)
            {
              v30 = [MEMORY[0x1E696AD98] numberWithInteger:v47];
              [v21 addObject:v30];

              v24 = v51;
              v31 = v22;

              v23 = 1;
              v47 = v14;
              v25 = v31;
            }
          }

          ++v14;
          --v16;
        }

        while (v16);
      }

      if ([(__CFString *)v25 length])
      {
        v32 = [MEMORY[0x1E696AD98] numberWithInteger:v47];
        [v21 addObject:v32];
      }

      v33 = [v21 count];
      if (v33 == v43)
      {
        for (i = v40; i < [v21 count]; ++i)
        {
          v35 = [v21 objectAtIndexedSubscript:i];
          v36 = [v35 integerValue];

          v37 = [MEMORY[0x1E696B098] valueWithRange:{v36, 0}];
          [v50 addObject:v37];
        }

        v38 = [MEMORY[0x1E695DEC8] arrayWithArray:v50];
        [v41 addObject:v38];
      }

      ++v45;
      v7 = v42;
      v8 = v49;
      v11 = 0x1E695D000;
      if (v33 != v43)
      {
        v10 = MEMORY[0x1E695E0F0];
        goto LABEL_35;
      }
    }

    v10 = [MEMORY[0x1E695DEC8] arrayWithArray:v41];
LABEL_35:
  }

  return v10;
}

+ (id)reversedTokens:(id)a3 numTimeSteps:(unint64_t)a4
{
  v25 = a3;
  v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v25, "count")}];
  v4 = [v25 count] - 1;
  if (v4 >= 0)
  {
    do
    {
      v5 = [v25 objectAtIndexedSubscript:v4];
      v6 = [v5 activationRange];
      v8 = v7;

      v9 = objc_alloc(MEMORY[0x1E6992028]);
      v10 = [v25 objectAtIndexedSubscript:v4];
      v11 = [v10 string];
      v12 = [v25 objectAtIndexedSubscript:v4];
      v13 = [v12 score];
      v14 = [v25 objectAtIndexedSubscript:v4];
      v15 = [v14 alignmentScore];
      if (v4)
      {
        v24 = [v25 objectAtIndexedSubscript:v4 - 1];
        v23 = [v24 terminatingCharacter];
        v16 = v23;
      }

      else
      {
        v16 = 0;
      }

      v17 = [v9 initWithString:v11 score:v13 alignmentScore:v15 activationRange:a4 - (v6 + v8) terminatingCharacter:{v8, v16}];
      if (v4)
      {
      }

      [v22 addObject:v17];
    }

    while (v4-- > 0);
  }

  v19 = [v22 copy];

  return v19;
}

+ (id)getTokenPermutationByApplyingReorderingPermutation:(id)a3 toRanges:(id)a4
{
  v5 = a3;
  v6 = a4;
  std::vector<unsigned long>::vector[abi:ne200100](&v31, [v6 count]);
  for (i = 0; i < [v6 count]; ++i)
  {
    v8 = [v6 objectAtIndexedSubscript:i];
    v9 = [v8 rangeValue];

    v10 = [v5 objectAtIndexedSubscript:v9];
    v11 = [v10 unsignedIntegerValue];

    *(v31 + i) = v11;
  }

  std::vector<unsigned long>::vector[abi:ne200100](&__p, (v32 - v31) >> 3);
  v12 = __p;
  v13 = v30;
  if (__p != v30)
  {
    v14 = 0;
    v15 = (v30 - __p - 8) >> 3;
    v16 = vdupq_n_s64(v15);
    v17 = (v15 + 2) & 0x3FFFFFFFFFFFFFFELL;
    v18 = xmmword_1B42AF280;
    v19 = vdupq_n_s64(2uLL);
    do
    {
      v20 = vmovn_s64(vcgeq_u64(v16, v18));
      if (v20.i8[0])
      {
        v12[v14] = v14;
      }

      if (v20.i8[4])
      {
        v12[v14 + 1] = v14 + 1;
      }

      v14 += 2;
      v18 = vaddq_s64(v18, v19);
    }

    while (v17 != v14);
  }

  v21 = 126 - 2 * __clz(v13 - v12);
  v33 = &v31;
  if (v13 == v12)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  std::__introsort<std::_ClassicAlgPolicy,+[CRTextDecodingUtils getTokenPermutationByApplyingReorderingPermutation:toRanges:]::$_0 &,unsigned long *,false>(v12, v13, &v33, v22, 1);
  v23 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v24 = __p;
  v25 = v30;
  if (__p != v30)
  {
    do
    {
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*v24];
      [v23 addObject:v26];

      ++v24;
    }

    while (v24 != v25);
  }

  v27 = [v23 copy];

  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  return v27;
}

+ (id)invertedPermutation:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  for (i = 0; i < [v3 count]; ++i)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
    v7 = [v3 objectAtIndexedSubscript:i];
    [v4 setObject:v6 forKeyedSubscript:v7];
  }

  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  for (j = 0; j < [v3 count]; ++j)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:j];
    v11 = [v4 objectForKeyedSubscript:v10];
    [v8 addObject:v11];
  }

  v12 = [v8 copy];

  return v12;
}

+ (id)reversedPermutation:(id)a3 numTimeSteps:(unint64_t)a4
{
  v5 = a3;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v7 = [v5 count];
  if (v7 - 1 >= 0)
  {
    do
    {
      v8 = [v5 objectAtIndexedSubscript:--v7];
      v9 = ~[v8 unsignedIntegerValue];

      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9 + a4];
      [v6 addObject:v10];
    }

    while (v7 > 0);
  }

  v11 = [v6 reverseObjectEnumerator];
  v12 = [v11 allObjects];

  return v12;
}

BOOL __87__CRTextDecodingUtils__tokenFilterPredicateFalsePositiveFiltering_keepWhitespaceToken___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 48) == 1 && ([v5 fullString], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @" "), v7, (v8 & 1) != 0))
  {
    v9 = 1;
  }

  else
  {
    v10 = [v5 fullString];
    v11 = [v10 stringByTrimmingCharactersInSet:*(a1 + 32)];

    v12 = [v11 length];
    v13 = v12;
    if (*(a1 + 49))
    {
      if (v12)
      {
        v14 = [v11 componentsSeparatedByCharactersInSet:*(a1 + 40)];
        v15 = [v14 componentsJoinedByString:&stru_1F2BB4348];
        v16 = [v15 length];

        v9 = v16 / v13 > 0.5;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = v12 != 0;
    }
  }

  return v9;
}

+ (id)filteredTokensFromTokens:(id)a3 falsePositiveFiltering:(BOOL)a4 keepWhitespaceToken:(BOOL)a5
{
  v7 = a3;
  objc_opt_self();
  v8 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v9 = [MEMORY[0x1E696AB08] _crUnknownScriptCharacterSet];
  v10 = MEMORY[0x1E696AE18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __87__CRTextDecodingUtils__tokenFilterPredicateFalsePositiveFiltering_keepWhitespaceToken___block_invoke;
  v16[3] = &unk_1E7BC2A18;
  v19 = a5;
  v11 = v8;
  v20 = a4;
  v17 = v11;
  v18 = v9;
  v12 = v9;
  v13 = [v10 predicateWithBlock:v16];

  v14 = [v7 filteredArrayUsingPredicate:v13];

  return v14;
}

+ (uint64_t)getTokenPermutationByApplyingReorderingPermutation:(uint64_t *)a3 toRanges:(uint64_t)a4
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v77 = *(a2 - 1);
        v78 = *v10;
        if (*(**a3 + 8 * v77) < *(**a3 + 8 * *v10))
        {
          *v10 = v77;
          *(a2 - 1) = v78;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v85 = v10 + 1;
      v86 = v10[1];
      v87 = v10 + 2;
      v88 = v10[2];
      v89 = **a3;
      v90 = *(v89 + 8 * v86);
      v91 = *v10;
      v92 = *(v89 + 8 * v88);
      if (v90 >= *(v89 + 8 * *v10))
      {
        if (v92 >= v90)
        {
          goto LABEL_175;
        }

        *v85 = v88;
        *v87 = v86;
        v93 = v10;
        v94 = v10 + 1;
        result = v86;
        if (*(v89 + 8 * v88) < *(v89 + 8 * v91))
        {
          goto LABEL_166;
        }
      }

      else
      {
        v93 = v10;
        v94 = v10 + 2;
        result = *v10;
        if (v92 >= v90)
        {
          *v10 = v86;
          v10[1] = v91;
          v93 = v10 + 1;
          v94 = v10 + 2;
          result = v91;
          if (*(v89 + 8 * v88) >= *(v89 + 8 * v91))
          {
LABEL_175:
            v86 = v88;
            goto LABEL_176;
          }
        }

LABEL_166:
        *v93 = v88;
        *v94 = v91;
        v86 = result;
      }

LABEL_176:
      v142 = *(a2 - 1);
      if (*(v89 + 8 * v142) < *(v89 + 8 * v86))
      {
        *v87 = v142;
        *(a2 - 1) = v86;
        v143 = *v87;
        v144 = *v85;
        if (*(v89 + 8 * v143) < *(v89 + 8 * v144))
        {
          v10[1] = v143;
          v10[2] = v144;
          v145 = *v10;
          if (*(v89 + 8 * v143) < *(v89 + 8 * *v10))
          {
            *v10 = v143;
            v10[1] = v145;
          }
        }
      }

      return result;
    }

    if (v11 == 5)
    {
      v76 = **a3;

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,+[CRTextDecodingUtils getTokenPermutationByApplyingReorderingPermutation:toRanges:]::$_0 &,unsigned long *,0>(v10, v10 + 1, v10 + 2, v10 + 3, a2 - 1, v76);
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v95 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v96 = **a3;
            v97 = 8;
            v98 = v10;
            do
            {
              v100 = *v98;
              v99 = v98[1];
              v98 = v95;
              if (*(v96 + 8 * v99) < *(v96 + 8 * v100))
              {
                v101 = v97;
                while (1)
                {
                  *(v10 + v101) = v100;
                  v102 = v101 - 8;
                  if (v101 == 8)
                  {
                    break;
                  }

                  v100 = *(v10 + v101 - 16);
                  v101 -= 8;
                  if (*(v96 + 8 * v99) >= *(v96 + 8 * v100))
                  {
                    v103 = (v10 + v102);
                    goto LABEL_125;
                  }
                }

                v103 = v10;
LABEL_125:
                *v103 = v99;
              }

              v95 = v98 + 1;
              v97 += 8;
            }

            while (v98 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v138 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v139 = **a3;
          do
          {
            v141 = *v9;
            v140 = v9[1];
            v9 = v138;
            if (*(v139 + 8 * v140) < *(v139 + 8 * v141))
            {
              do
              {
                *v138 = v141;
                v141 = *(v138 - 2);
                --v138;
              }

              while (*(v139 + 8 * v140) < *(v139 + 8 * v141));
              *v138 = v140;
            }

            v138 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v104 = (v11 - 2) >> 1;
        v105 = *a3;
        v106 = v104;
        do
        {
          v107 = v106;
          if (v104 >= v106)
          {
            v108 = (2 * v106) | 1;
            v109 = &v10[v108];
            v110 = *v109;
            if (2 * v107 + 2 >= v11)
            {
              v111 = *v105;
            }

            else
            {
              v111 = *v105;
              if (*(*v105 + 8 * v110) < *(*v105 + 8 * v109[1]))
              {
                v110 = v109[1];
                ++v109;
                v108 = 2 * v107 + 2;
              }
            }

            v112 = &v10[v107];
            v113 = *v112;
            if (*(v111 + 8 * v110) >= *(v111 + 8 * *v112))
            {
              do
              {
                v114 = v109;
                *v112 = v110;
                if (v104 < v108)
                {
                  break;
                }

                v115 = (2 * v108) | 1;
                v109 = &v10[v115];
                v116 = 2 * v108 + 2;
                v110 = *v109;
                if (v116 < v11 && *(v111 + 8 * v110) < *(v111 + 8 * v109[1]))
                {
                  v110 = v109[1];
                  ++v109;
                  v115 = v116;
                }

                v112 = v114;
                v108 = v115;
              }

              while (*(v111 + 8 * v110) >= *(v111 + 8 * v113));
              *v114 = v113;
            }
          }

          v106 = v107 - 1;
        }

        while (v107);
        do
        {
          v117 = 0;
          v118 = *v10;
          v119 = *a3;
          v120 = v10;
          do
          {
            v121 = &v120[v117];
            v122 = v121 + 1;
            v123 = v121[1];
            result = 2 * v117;
            v124 = (2 * v117) | 1;
            v117 = 2 * v117 + 2;
            if (v117 >= v11)
            {
              v117 = v124;
            }

            else
            {
              v126 = v121[2];
              v125 = v121 + 2;
              result = v126;
              if (*(*v119 + 8 * v123) >= *(*v119 + 8 * v126))
              {
                v117 = v124;
              }

              else
              {
                v123 = result;
                v122 = v125;
              }
            }

            *v120 = v123;
            v120 = v122;
          }

          while (v117 <= ((v11 - 2) >> 1));
          if (v122 == --a2)
          {
            *v122 = v118;
          }

          else
          {
            *v122 = *a2;
            *a2 = v118;
            v127 = (v122 - v10 + 8) >> 3;
            v128 = v127 < 2;
            v129 = v127 - 2;
            if (!v128)
            {
              v130 = v129 >> 1;
              v131 = &v10[v130];
              v132 = *v131;
              v133 = *v122;
              v134 = *v119;
              if (*(v134 + 8 * *v131) < *(v134 + 8 * *v122))
              {
                do
                {
                  v135 = v131;
                  *v122 = v132;
                  if (!v130)
                  {
                    break;
                  }

                  v130 = (v130 - 1) >> 1;
                  v131 = &v10[v130];
                  v132 = *v131;
                  v122 = v135;
                }

                while (*(v134 + 8 * *v131) < *(v134 + 8 * v133));
                *v135 = v133;
              }
            }
          }

          v128 = v11-- <= 2;
        }

        while (!v128);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = **a3;
    v15 = *(a2 - 1);
    v16 = *(v14 + 8 * v15);
    if (v11 >= 0x81)
    {
      v17 = *v12;
      v18 = *v10;
      v19 = *(v14 + 8 * *v12);
      if (v19 >= *(v14 + 8 * *v10))
      {
        if (v16 < v19)
        {
          *v12 = v15;
          *(a2 - 1) = v17;
          v23 = *v10;
          if (*(v14 + 8 * *v12) < *(v14 + 8 * *v10))
          {
            *v10 = *v12;
            *v12 = v23;
          }
        }
      }

      else
      {
        if (v16 < v19)
        {
          *v10 = v15;
          goto LABEL_27;
        }

        *v10 = v17;
        *v12 = v18;
        v25 = *(a2 - 1);
        if (*(v14 + 8 * v25) < *(v14 + 8 * v18))
        {
          *v12 = v25;
LABEL_27:
          *(a2 - 1) = v18;
        }
      }

      v26 = v12 - 1;
      v27 = *(v12 - 1);
      v28 = v10[1];
      v29 = *(v14 + 8 * v27);
      v30 = *(a2 - 2);
      v31 = *(v14 + 8 * v30);
      if (v29 >= *(v14 + 8 * v28))
      {
        if (v31 < v29)
        {
          *v26 = v30;
          *(a2 - 2) = v27;
          v32 = v10[1];
          if (*(v14 + 8 * *v26) < *(v14 + 8 * v32))
          {
            v10[1] = *v26;
            *v26 = v32;
          }
        }
      }

      else
      {
        if (v31 < v29)
        {
          v10[1] = v30;
          goto LABEL_39;
        }

        v10[1] = v27;
        *v26 = v28;
        v34 = *(a2 - 2);
        if (*(v14 + 8 * v34) < *(v14 + 8 * v28))
        {
          *v26 = v34;
LABEL_39:
          *(a2 - 2) = v28;
        }
      }

      v37 = v12[1];
      v35 = v12 + 1;
      v36 = v37;
      v38 = v10[2];
      v39 = *(v14 + 8 * v37);
      v40 = *(a2 - 3);
      v41 = *(v14 + 8 * v40);
      if (v39 >= *(v14 + 8 * v38))
      {
        if (v41 < v39)
        {
          *v35 = v40;
          *(a2 - 3) = v36;
          v42 = v10[2];
          if (*(v14 + 8 * *v35) < *(v14 + 8 * v42))
          {
            v10[2] = *v35;
            *v35 = v42;
          }
        }
      }

      else
      {
        if (v41 < v39)
        {
          v10[2] = v40;
          goto LABEL_48;
        }

        v10[2] = v36;
        *v35 = v38;
        v43 = *(a2 - 3);
        if (*(v14 + 8 * v43) < *(v14 + 8 * v38))
        {
          *v35 = v43;
LABEL_48:
          *(a2 - 3) = v38;
        }
      }

      v44 = *v13;
      v45 = *v26;
      v46 = *(v14 + 8 * *v13);
      v47 = *v35;
      v48 = *(v14 + 8 * *v35);
      if (v46 >= *(v14 + 8 * *v26))
      {
        if (v48 >= v46)
        {
          goto LABEL_56;
        }

        *v13 = v47;
        *v35 = v44;
        v35 = v13;
        v44 = v45;
        if (*(v14 + 8 * v47) >= *(v14 + 8 * v45))
        {
          v44 = v47;
          goto LABEL_56;
        }
      }

      else if (v48 >= v46)
      {
        *v26 = v44;
        *v13 = v45;
        v26 = v13;
        v44 = v47;
        if (*(v14 + 8 * v47) >= *(v14 + 8 * v45))
        {
          v44 = v45;
LABEL_56:
          v49 = *v10;
          *v10 = v44;
          *v13 = v49;
          goto LABEL_57;
        }
      }

      *v26 = v47;
      *v35 = v45;
      goto LABEL_56;
    }

    v20 = *v10;
    v21 = *v13;
    v22 = *(v14 + 8 * *v10);
    if (v22 >= *(v14 + 8 * *v13))
    {
      if (v16 < v22)
      {
        *v10 = v15;
        *(a2 - 1) = v20;
        v24 = *v13;
        if (*(v14 + 8 * *v10) < *(v14 + 8 * *v13))
        {
          *v13 = *v10;
          *v10 = v24;
        }
      }

      goto LABEL_57;
    }

    if (v16 < v22)
    {
      *v13 = v15;
LABEL_36:
      *(a2 - 1) = v21;
      goto LABEL_57;
    }

    *v13 = v20;
    *v10 = v21;
    v33 = *(a2 - 1);
    if (*(v14 + 8 * v33) < *(v14 + 8 * v21))
    {
      *v10 = v33;
      goto LABEL_36;
    }

LABEL_57:
    --a4;
    v50 = *v10;
    if (a5)
    {
      v51 = *(v14 + 8 * v50);
LABEL_60:
      v52 = 0;
      do
      {
        v53 = v10[++v52];
      }

      while (*(v14 + 8 * v53) < v51);
      v54 = &v10[v52];
      v55 = a2;
      if (v52 == 1)
      {
        v55 = a2;
        do
        {
          if (v54 >= v55)
          {
            break;
          }

          v57 = *--v55;
        }

        while (*(v14 + 8 * v57) >= v51);
      }

      else
      {
        do
        {
          v56 = *--v55;
        }

        while (*(v14 + 8 * v56) >= v51);
      }

      if (v54 >= v55)
      {
        v64 = v54 - 1;
      }

      else
      {
        v58 = *v55;
        v59 = &v10[v52];
        v60 = v55;
        do
        {
          *v59 = v58;
          *v60 = v53;
          v61 = *(v14 + 8 * v50);
          do
          {
            v62 = v59[1];
            ++v59;
            v53 = v62;
          }

          while (*(v14 + 8 * v62) < v61);
          do
          {
            v63 = *--v60;
            v58 = v63;
          }

          while (*(v14 + 8 * v63) >= v61);
        }

        while (v59 < v60);
        v64 = v59 - 1;
      }

      if (v64 != v10)
      {
        *v10 = *v64;
      }

      *v64 = v50;
      if (v54 < v55)
      {
        goto LABEL_81;
      }

      v65 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,+[CRTextDecodingUtils getTokenPermutationByApplyingReorderingPermutation:toRanges:]::$_0 &,unsigned long *>(v10, v64, *a3);
      v10 = v64 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,+[CRTextDecodingUtils getTokenPermutationByApplyingReorderingPermutation:toRanges:]::$_0 &,unsigned long *>(v64 + 1, a2, *a3);
      if (result)
      {
        a2 = v64;
        if (!v65)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v65)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,+[CRTextDecodingUtils getTokenPermutationByApplyingReorderingPermutation:toRanges:]::$_0 &,unsigned long *,false>(v9, v64, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v64 + 1;
      }
    }

    else
    {
      v51 = *(v14 + 8 * v50);
      if (*(v14 + 8 * *(v10 - 1)) < v51)
      {
        goto LABEL_60;
      }

      if (v51 >= *(v14 + 8 * *(a2 - 1)))
      {
        v67 = v10 + 1;
        do
        {
          v10 = v67;
          if (v67 >= a2)
          {
            break;
          }

          ++v67;
        }

        while (v51 >= *(v14 + 8 * *v10));
      }

      else
      {
        do
        {
          v66 = v10[1];
          ++v10;
        }

        while (v51 >= *(v14 + 8 * v66));
      }

      v68 = a2;
      if (v10 < a2)
      {
        v68 = a2;
        do
        {
          v69 = *--v68;
        }

        while (v51 < *(v14 + 8 * v69));
      }

      if (v10 < v68)
      {
        v70 = *v10;
        v71 = *v68;
        do
        {
          *v10 = v71;
          *v68 = v70;
          v72 = *(v14 + 8 * v50);
          do
          {
            v73 = v10[1];
            ++v10;
            v70 = v73;
          }

          while (v72 >= *(v14 + 8 * v73));
          do
          {
            v74 = *--v68;
            v71 = v74;
          }

          while (v72 < *(v14 + 8 * v74));
        }

        while (v10 < v68);
      }

      v75 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v75;
      }

      a5 = 0;
      *v75 = v50;
    }
  }

  v79 = *v10;
  v80 = v10[1];
  v81 = **a3;
  v82 = *(v81 + 8 * v80);
  v83 = *(a2 - 1);
  v84 = *(v81 + 8 * v83);
  if (v82 >= *(v81 + 8 * *v10))
  {
    if (v84 < v82)
    {
      v10[1] = v83;
      *(a2 - 1) = v80;
      v137 = *v10;
      v136 = v10[1];
      if (*(v81 + 8 * v136) < *(v81 + 8 * *v10))
      {
        *v10 = v136;
        v10[1] = v137;
      }
    }
  }

  else
  {
    if (v84 >= v82)
    {
      *v10 = v80;
      v10[1] = v79;
      v146 = *(a2 - 1);
      if (*(v81 + 8 * v146) >= *(v81 + 8 * v79))
      {
        return result;
      }

      v10[1] = v146;
    }

    else
    {
      *v10 = v83;
    }

    *(a2 - 1) = v79;
  }

  return result;
}

@end