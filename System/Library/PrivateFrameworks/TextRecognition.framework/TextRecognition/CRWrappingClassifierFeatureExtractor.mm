@interface CRWrappingClassifierFeatureExtractor
+ (id)_tokenizeString:(id)a3 usingWordUnits:(BOOL)a4 excludeWhitespace:(BOOL)a5;
+ (id)evaluationResultForTextFeature:(id)a3 withLastFeature:(id)a4 locale:(id)a5 imageSize:(CGSize)a6;
+ (id)extractFeatureMultiArrayForLocale:(id)a3 textFeature:(id)a4 lastFeature:(id)a5 evaluation:(id)a6 imageSize:(CGSize)a7;
+ (id)extractFeaturesForLocale:(id)a3 textFeature:(id)a4 lastFeature:(id)a5 imageSize:(CGSize)a6 revision:(unint64_t)a7;
+ (id)multiArrayFromVector:(const void *)a3;
+ (id)nsArrayFromVector:(const void *)a3;
+ (vector<double,)extractFeatureVectorForLocale:(id)a2 string1:(SEL)a3 string2:(id)a4 evaluation:(id)a5 imageSize:(id)a6;
+ (void)_extractBagOfTokensFeaturesTo:(void *)a3 vocabulary:(id)a4 tokens:(id)a5 beginIndex:(int64_t)a6 endIndex:(int64_t)a7;
+ (void)_extractEvaluatedFeaturesTo:(void *)a3 evaluation:(id)a4;
+ (void)_extractGeometricFeaturesTo:(void *)a3 evaluation:(id)a4;
+ (void)_extractLanguageModelFeaturesTo:(void *)a3 evaluation:(id)a4;
+ (void)_extractLexicalFeaturesTo:(void *)a3 string1:(id)a4 string2:(id)a5 configuration:(id)a6 forCJK:(BOOL)a7;
+ (void)_extractLocaleFeaturesTo:(void *)a3 locale:(id)a4;
@end

@implementation CRWrappingClassifierFeatureExtractor

+ (void)_extractBagOfTokensFeaturesTo:(void *)a3 vocabulary:(id)a4 tokens:(id)a5 beginIndex:(int64_t)a6 endIndex:(int64_t)a7
{
  v11 = a4;
  v12 = a5;
  std::vector<BOOL>::vector(&__p, [v11 count]);
  v48 = a3;
  v13 = [v12 count];
  v14 = a6 & ~(a6 >> 63);
  if (v13 >= a7)
  {
    v15 = a7;
  }

  else
  {
    v15 = v13;
  }

  v49 = v15;
  if (v14 < v15)
  {
    do
    {
      for (i = 0; i < [v11 count]; ++i)
      {
        v17 = i >> 6;
        v18 = 1 << i;
        v19 = *(__p + (i >> 6));
        if ((v19 & (1 << i)) != 0)
        {
          *(__p + v17) = v19 | v18;
        }

        else
        {
          v20 = [v11 objectAtIndexedSubscript:i];
          v21 = [v12 objectAtIndexedSubscript:v14];
          v22 = [v21 lowercaseString];
          if ([v20 isEqualToString:v22])
          {
            v23 = *(__p + v17) | v18;
          }

          else
          {
            v23 = *(__p + v17) & ~v18;
          }

          *(__p + v17) = v23;
        }
      }

      ++v14;
    }

    while (v14 != v49);
  }

  v24 = v51;
  if (v51 >= 1)
  {
    v25 = __p;
    v27 = v48[1];
    v26 = v48[2];
    if (v51 <= (v26 - v27) >> 3)
    {
      v32 = v51 & 0x3F;
      if (v51 > 0x3F || (v33 = v48[1], (v51 & 0x3F) != 0))
      {
        v34 = 0;
        v35 = __p + 8 * (v51 >> 6);
        v33 = v48[1];
        v36 = v35;
        do
        {
          if ((*v25 >> v34))
          {
            v37 = 1.0;
          }

          else
          {
            v37 = 0.0;
          }

          *v27++ = v37;
          if (v34 == 63)
          {
            v36 = v35;
          }

          v25 += v34 == 63;
          if (v34 == 63)
          {
            v34 = 0;
          }

          else
          {
            ++v34;
          }

          v33 += 8;
        }

        while (v34 != v32 || v25 != v36);
      }

      v48[1] = v33;
    }

    else
    {
      v28 = v27 - *v48;
      v29 = v51 + (v28 >> 3);
      if (v29 >> 61)
      {
        std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
      }

      v30 = v26 - *v48;
      if (v30 >> 2 > v29)
      {
        v29 = v30 >> 2;
      }

      if (v30 >= 0x7FFFFFFFFFFFFFF8)
      {
        v31 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v31 = v29;
      }

      if (v31)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v48, v31);
      }

      v38 = 0;
      v39 = 8 * (v28 >> 3);
      v40 = 8 * v51;
      v41 = v39;
      do
      {
        if ((*v25 >> v38))
        {
          v42 = 1.0;
        }

        else
        {
          v42 = 0.0;
        }

        *v41++ = v42;
        v25 += v38 == 63;
        if (v38 == 63)
        {
          v38 = 0;
        }

        else
        {
          ++v38;
        }

        v40 -= 8;
      }

      while (v40);
      memcpy((v39 + 8 * v24), v27, v48[1] - v27);
      v43 = *v48;
      v44 = v39 + 8 * v24 + v48[1] - v27;
      v48[1] = v27;
      v45 = v27 - v43;
      v46 = (v39 - (v27 - v43));
      memcpy(v46, v43, v45);
      v47 = *v48;
      *v48 = v46;
      v48[1] = v44;
      v48[2] = 0;
      if (v47)
      {
        operator delete(v47);
      }
    }
  }

  if (__p)
  {
    operator delete(__p);
  }
}

+ (id)_tokenizeString:(id)a3 usingWordUnits:(BOOL)a4 excludeWhitespace:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  if (v6)
  {
    v8 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v9 = [v7 componentsSeparatedByCharactersInSet:v8];
  }

  else
  {
    if (v5)
    {
      v10 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v11 = [v7 _crStringByReplacingCharactersInSet:v10 withString:&stru_1F2BB4348];

      v7 = v11;
    }

    v9 = [v7 _crArrayOfComposedCharacters];
  }

  return v9;
}

+ (void)_extractLanguageModelFeaturesTo:(void *)a3 evaluation:(id)a4
{
  v5 = a4;
  [v5 lmScore];
  if (v6 <= 1.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  if (v6 >= 0.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  v16 = v8;
  [v5 eosLMScore];
  if (v9 <= 1.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1.0;
  }

  if (v9 >= 0.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  v15 = v11;
  v14 = fmax(log(v8) * 0.25, -10.0);
  v13 = fmax(log(v11) * 0.25, -10.0);
  std::vector<double>::push_back[abi:ne200100](a3, &v16);
  std::vector<double>::push_back[abi:ne200100](a3, &v15);
  std::vector<double>::push_back[abi:ne200100](a3, &v14);
  std::vector<double>::push_back[abi:ne200100](a3, &v13);
  v12 = v14 - v13;
  std::vector<double>::push_back[abi:ne200100](a3, &v12);
}

+ (void)_extractGeometricFeaturesTo:(void *)a3 evaluation:(id)a4
{
  v5 = a4;
  [v5 lastFeatureSize];
  v7 = v6;
  v9 = v8;
  [v5 featureInTestSize];
  v11 = v10;
  v13 = v12;
  [v5 imageSize];
  v15 = v14;
  v17 = v16;
  v18 = fabs(v14);
  v19 = v7 / v14;
  if (v18 <= 2.22044605e-16)
  {
    v19 = 0.0;
  }

  v63 = v19;
  std::vector<double>::push_back[abi:ne200100](a3, &v63);
  v20 = v9 / v17;
  v59 = fabs(v17);
  if (v59 <= 2.22044605e-16)
  {
    v20 = 0.0;
  }

  v63 = v20;
  std::vector<double>::push_back[abi:ne200100](a3, &v63);
  v21 = v11 / v15;
  if (v18 <= 2.22044605e-16)
  {
    v21 = 0.0;
  }

  v63 = v21;
  std::vector<double>::push_back[abi:ne200100](a3, &v63);
  v22 = v13 / v17;
  if (v59 <= 2.22044605e-16)
  {
    v22 = 0.0;
  }

  v63 = v22;
  std::vector<double>::push_back[abi:ne200100](a3, &v63);
  [v5 textHeightRatio];
  v63 = 1.0 / (exp(-v23) + 1.0);
  std::vector<double>::push_back[abi:ne200100](a3, &v63);
  [v5 textHeightRatio];
  if (fabs(v24) <= 2.22044605e-16)
  {
    if (v24 >= 0.0)
    {
      *&v26 = 1.79769313e308;
    }

    else
    {
      *&v26 = -1.79769313e308;
    }

    v25 = *&v26;
  }

  else
  {
    v25 = 1.0 / v24;
  }

  v63 = 1.0 / (exp(-v25) + 1.0);
  std::vector<double>::push_back[abi:ne200100](a3, &v63);
  [v5 textWidthRatio];
  v63 = 1.0 / (exp(-v27) + 1.0);
  std::vector<double>::push_back[abi:ne200100](a3, &v63);
  [v5 textWidthRatio];
  if (fabs(v28) <= 2.22044605e-16)
  {
    if (v28 >= 0.0)
    {
      *&v30 = 1.79769313e308;
    }

    else
    {
      *&v30 = -1.79769313e308;
    }

    v29 = *&v30;
  }

  else
  {
    v29 = 1.0 / v28;
  }

  v63 = 1.0 / (exp(-v29) + 1.0);
  std::vector<double>::push_back[abi:ne200100](a3, &v63);
  [v5 angleDiff];
  v63 = v31;
  std::vector<double>::push_back[abi:ne200100](a3, &v63);
  [v5 topDistanceLeft];
  v33 = v32 / v15;
  if (v18 <= 2.22044605e-16)
  {
    v33 = 0.0;
  }

  v63 = v33;
  [v5 topDistanceRight];
  v35 = v34 / v15;
  if (v18 <= 2.22044605e-16)
  {
    v35 = 0.0;
  }

  v62 = v35;
  [v5 leftDistance];
  v37 = v36;
  [v5 rightDistance];
  v39 = v38;
  std::vector<double>::push_back[abi:ne200100](a3, &v63);
  std::vector<double>::push_back[abi:ne200100](a3, &v62);
  v61 = v63 - v62;
  std::vector<double>::push_back[abi:ne200100](a3, &v61);
  v40 = v37;
  v41 = fabs(v9);
  v42 = -v40 / v9;
  v43 = -0.0;
  if (v41 > 2.22044605e-16)
  {
    v43 = v42;
  }

  v61 = 1.0 / (exp(v43) + 1.0);
  std::vector<double>::push_back[abi:ne200100](a3, &v61);
  v44 = -v39 / v9;
  if (v41 <= 2.22044605e-16)
  {
    v44 = -0.0;
  }

  v61 = 1.0 / (exp(v44) + 1.0);
  std::vector<double>::push_back[abi:ne200100](a3, &v61);
  v45 = v42 / v9;
  if (v41 <= 2.22044605e-16)
  {
    v45 = -0.0;
  }

  v61 = 1.0 / (exp(v45) + 1.0);
  std::vector<double>::push_back[abi:ne200100](a3, &v61);
  [v5 verticalSpacing];
  v47 = v46 / v9;
  if (v41 <= 2.22044605e-16)
  {
    v47 = 0.0;
  }

  v61 = v47;
  std::vector<double>::push_back[abi:ne200100](a3, &v61);
  [v5 horizontalOverlap];
  v49 = fabs(v7);
  v50 = v48 / v7;
  if (v49 <= 2.22044605e-16)
  {
    v50 = 0.0;
  }

  v61 = v50;
  std::vector<double>::push_back[abi:ne200100](a3, &v61);
  [v5 verticalOverlap];
  v52 = v51 / v9;
  if (v41 <= 2.22044605e-16)
  {
    v52 = 0.0;
  }

  v61 = v52;
  std::vector<double>::push_back[abi:ne200100](a3, &v61);
  [v5 midDistance];
  v54 = (v9 + v13 - v53) / v17;
  if (v59 <= 2.22044605e-16)
  {
    v54 = 0.0;
  }

  v61 = v54;
  std::vector<double>::push_back[abi:ne200100](a3, &v61);
  [v5 xSpace];
  v56 = -v55 / v7;
  if (v49 <= 2.22044605e-16)
  {
    v56 = -0.0;
  }

  v60 = 1.0 / (exp(v56) + 1.0);
  std::vector<double>::push_back[abi:ne200100](a3, &v60);
  [v5 ySpace];
  v58 = -v57 / v13;
  if (fabs(v13) <= 2.22044605e-16)
  {
    v58 = -0.0;
  }

  v60 = 1.0 / (exp(v58) + 1.0);
  std::vector<double>::push_back[abi:ne200100](a3, &v60);
}

+ (void)_extractEvaluatedFeaturesTo:(void *)a3 evaluation:(id)a4
{
  v5 = a4;
  v6 = [v5 isOversegmented];
  std::vector<double>::push_back[abi:ne200100](a3, &v6);
  v6 = [v5 caseWrappingScoreUsingCustomConfiguration:0] / 10.0;
  std::vector<double>::push_back[abi:ne200100](a3, &v6);
  v6 = [v5 wordCountWrappingScore] / 10.0;
  std::vector<double>::push_back[abi:ne200100](a3, &v6);
  v6 = [v5 punctuationWrappingScoreUsingCustomConfiguration:0] / 10.0;
  std::vector<double>::push_back[abi:ne200100](a3, &v6);
  v6 = [v5 textContentWrappingScore] / 10.0;
  std::vector<double>::push_back[abi:ne200100](a3, &v6);
  v6 = [v5 midSentencePunctuated];
  std::vector<double>::push_back[abi:ne200100](a3, &v6);
  v6 = [v5 bothBeginWithDigits];
  std::vector<double>::push_back[abi:ne200100](a3, &v6);
  v6 = [v5 f2StartOfSentence];
  std::vector<double>::push_back[abi:ne200100](a3, &v6);
  v6 = [v5 oversegmentedListItem];
  std::vector<double>::push_back[abi:ne200100](a3, &v6);
  v6 = [v5 f2BeginsWithDD];
  std::vector<double>::push_back[abi:ne200100](a3, &v6);
  v6 = [v5 f1EndsWithDD];
  std::vector<double>::push_back[abi:ne200100](a3, &v6);
  v6 = [v5 f2FullyDD];
  std::vector<double>::push_back[abi:ne200100](a3, &v6);
  v6 = [v5 multilineDD];
  std::vector<double>::push_back[abi:ne200100](a3, &v6);
}

+ (void)_extractLexicalFeaturesTo:(void *)a3 string1:(id)a4 string2:(id)a5 configuration:(id)a6 forCJK:(BOOL)a7
{
  v7 = a7;
  v114 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v85 = a5;
  v83 = a6;
  v84 = v12;
  v109 = [v12 _crStartsWithListItemIndicator];
  std::vector<double>::push_back[abi:ne200100](a3, &v109);
  v109 = [v12 _crStartsWithDigit];
  std::vector<double>::push_back[abi:ne200100](a3, &v109);
  v109 = [v12 _crEndsWithClosingPunctuation];
  std::vector<double>::push_back[abi:ne200100](a3, &v109);
  v109 = [v12 _crEndsWithHyphen];
  std::vector<double>::push_back[abi:ne200100](a3, &v109);
  v109 = [v12 _crEndsWithDigit];
  std::vector<double>::push_back[abi:ne200100](a3, &v109);
  v109 = [v12 _crIsSentencePunctuatedIncludingWhitespace:1];
  std::vector<double>::push_back[abi:ne200100](a3, &v109);
  v109 = [v85 _crStartsWithListItemIndicator];
  std::vector<double>::push_back[abi:ne200100](a3, &v109);
  v109 = [v85 _crStartsWithDigit];
  std::vector<double>::push_back[abi:ne200100](a3, &v109);
  v109 = [v85 _crEndsWithClosingPunctuation];
  std::vector<double>::push_back[abi:ne200100](a3, &v109);
  v109 = [v85 _crEndsWithHyphen];
  std::vector<double>::push_back[abi:ne200100](a3, &v109);
  v109 = [v85 _crEndsWithDigit];
  std::vector<double>::push_back[abi:ne200100](a3, &v109);
  v109 = [v85 _crIsSentencePunctuatedIncludingWhitespace:1];
  std::vector<double>::push_back[abi:ne200100](a3, &v109);
  v13 = [v83 objectForKeyedSubscript:@"useWordTokens"];
  v14 = [v13 BOOLValue];

  v15 = [v83 objectForKeyedSubscript:@"excludeWhitespace"];
  v16 = [v15 BOOLValue];

  v82 = [v83 objectForKeyedSubscript:@"features"];
  v88 = [objc_opt_class() _tokenizeString:v12 usingWordUnits:v14 excludeWhitespace:v16];
  v87 = [objc_opt_class() _tokenizeString:v85 usingWordUnits:v14 excludeWhitespace:v16];
  if ([v88 count])
  {
    v90 = [v88 lastObject];
  }

  else
  {
    v90 = &stru_1F2BB4348;
  }

  if (![v87 count])
  {
    v89 = &stru_1F2BB4348;
    if (!v14)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v89 = [v87 firstObject];
  if (v14)
  {
LABEL_8:
    v17 = [v12 _crStartsWithUppercase];
    v18 = [v85 _crStartsWithUppercase];
    v109 = v17;
    std::vector<double>::push_back[abi:ne200100](a3, &v109);
    v109 = v18;
    std::vector<double>::push_back[abi:ne200100](a3, &v109);
    v109 = (v17 & v18);
    std::vector<double>::push_back[abi:ne200100](a3, &v109);
    v19 = [MEMORY[0x1E696AB08] letterCharacterSet];
    v109 = [v12 _crStartsWithCharacterInSet:v19];
    std::vector<double>::push_back[abi:ne200100](a3, &v109);

    v20 = [MEMORY[0x1E696AB08] letterCharacterSet];
    v109 = [v85 _crStartsWithCharacterInSet:v20];
    std::vector<double>::push_back[abi:ne200100](a3, &v109);

    LODWORD(v20) = [(__CFString *)v90 _crStartsWithUppercase];
    v21 = [(__CFString *)v89 _crStartsWithUppercase];
    v109 = v20;
    std::vector<double>::push_back[abi:ne200100](a3, &v109);
    v109 = (v20 & (v21 ^ 1));
    std::vector<double>::push_back[abi:ne200100](a3, &v109);
    v109 = (v20 & v21);
    std::vector<double>::push_back[abi:ne200100](a3, &v109);
    v109 = [(__CFString *)v90 _crIsAllCaps];
    std::vector<double>::push_back[abi:ne200100](a3, &v109);
    v109 = [(__CFString *)v89 _crIsAllCaps];
    std::vector<double>::push_back[abi:ne200100](a3, &v109);
  }

LABEL_9:
  v109 = [v88 count] / 20.0;
  v108 = [v87 count] / 20.0;
  std::vector<double>::push_back[abi:ne200100](a3, &v109);
  std::vector<double>::push_back[abi:ne200100](a3, &v108);
  v107 = v109 + v108;
  std::vector<double>::push_back[abi:ne200100](a3, &v107);
  v107 = v108 - v109;
  std::vector<double>::push_back[abi:ne200100](a3, &v107);
  v22 = -v109 / v108;
  if (fabs(v108) <= 2.22044605e-16)
  {
    v22 = -0.0;
  }

  v107 = 1.0 / (exp(v22) + 1.0);
  std::vector<double>::push_back[abi:ne200100](a3, &v107);
  v23 = -v108 / v109;
  if (fabs(v109) <= 2.22044605e-16)
  {
    v23 = -0.0;
  }

  v107 = 1.0 / (exp(v23) + 1.0);
  std::vector<double>::push_back[abi:ne200100](a3, &v107);
  v86 = [v83 objectForKeyedSubscript:@"maxTokenCountForLengthFeatures"];
  for (i = 1; i <= [v86 intValue]; ++i)
  {
    if (i == [v88 count])
    {
      v25 = 1.0;
    }

    else
    {
      v25 = 0.0;
    }

    v107 = v25;
    std::vector<double>::push_back[abi:ne200100](a3, &v107);
    if (i == [v87 count])
    {
      v26 = 1.0;
    }

    else
    {
      v26 = 0.0;
    }

    v107 = v26;
    std::vector<double>::push_back[abi:ne200100](a3, &v107);
  }

  v27 = [v12 length];
  v28 = [v85 length];
  if (v27 < 1)
  {
    v29 = 0;
  }

  else
  {
    v29 = [v12 characterAtIndex:v27 - 1];
  }

  if (v28 < 1)
  {
    v30 = 0;
  }

  else
  {
    v30 = [v85 characterAtIndex:0];
  }

  v33 = 0;
  if (v14)
  {
    v34 = 6;
  }

  else
  {
    v34 = 12;
  }

  do
  {
    if (v31 == v33)
    {
      v35 = 1.0;
    }

    else
    {
      v35 = 0.0;
    }

    v107 = v35;
    std::vector<double>::push_back[abi:ne200100](a3, &v107);
    if (v32 == v33)
    {
      v36 = 1.0;
    }

    else
    {
      v36 = 0.0;
    }

    v107 = v36;
    std::vector<double>::push_back[abi:ne200100](a3, &v107);
    ++v33;
  }

  while (v34 != v33);
  v80 = v14;
  for (j = 0; j != v34; ++j)
  {
    v38 = v32;
    v39 = v34;
    do
    {
      v41 = v31 == j && v38 == 0;
      v107 = v41;
      std::vector<double>::push_back[abi:ne200100](a3, &v107);
      --v38;
      --v39;
    }

    while (v39);
  }

  v81 = a1;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v42 = [v82 objectForKeyedSubscript:@"L1C"];
  v43 = [v42 countByEnumeratingWithState:&v103 objects:v113 count:16];
  if (v43)
  {
    v44 = *v104;
    do
    {
      for (k = 0; k != v43; ++k)
      {
        if (*v104 != v44)
        {
          objc_enumerationMutation(v42);
        }

        v46 = *(*(&v103 + 1) + 8 * k);
        v47 = u_isdigit(v29);
        v48 = [v46 characterAtIndex:0];
        if (v47)
        {
          v49 = 49;
        }

        else
        {
          v49 = v29;
        }

        if (v49 == v48)
        {
          v50 = 1.0;
        }

        else
        {
          v50 = 0.0;
        }

        v107 = v50;
        std::vector<double>::push_back[abi:ne200100](a3, &v107);
      }

      v43 = [v42 countByEnumeratingWithState:&v103 objects:v113 count:16];
    }

    while (v43);
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v51 = [v82 objectForKeyedSubscript:@"R1C"];
  v52 = [v51 countByEnumeratingWithState:&v99 objects:v112 count:16];
  if (v52)
  {
    v53 = *v100;
    do
    {
      for (m = 0; m != v52; ++m)
      {
        if (*v100 != v53)
        {
          objc_enumerationMutation(v51);
        }

        v55 = *(*(&v99 + 1) + 8 * m);
        v56 = u_isdigit(v30);
        v57 = [v55 characterAtIndex:0];
        if (v56)
        {
          v58 = 49;
        }

        else
        {
          v58 = v30;
        }

        if (v58 == v57)
        {
          v59 = 1.0;
        }

        else
        {
          v59 = 0.0;
        }

        v107 = v59;
        std::vector<double>::push_back[abi:ne200100](a3, &v107);
      }

      v52 = [v51 countByEnumeratingWithState:&v99 objects:v112 count:16];
    }

    while (v52);
  }

  if (v80)
  {
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v60 = [v82 objectForKeyedSubscript:@"L1W"];
    v61 = [v60 countByEnumeratingWithState:&v95 objects:v111 count:16];
    if (v61)
    {
      v62 = *v96;
      do
      {
        for (n = 0; n != v61; ++n)
        {
          if (*v96 != v62)
          {
            objc_enumerationMutation(v60);
          }

          v64 = *(*(&v95 + 1) + 8 * n);
          v65 = [(__CFString *)v90 lowercaseString];
          v107 = [v64 isEqualToString:v65];
          std::vector<double>::push_back[abi:ne200100](a3, &v107);
        }

        v61 = [v60 countByEnumeratingWithState:&v95 objects:v111 count:16];
      }

      while (v61);
    }

    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v66 = [v82 objectForKeyedSubscript:@"R1W"];
    v67 = [v66 countByEnumeratingWithState:&v91 objects:v110 count:16];
    if (v67)
    {
      v68 = *v92;
      do
      {
        for (ii = 0; ii != v67; ++ii)
        {
          if (*v92 != v68)
          {
            objc_enumerationMutation(v66);
          }

          v70 = *(*(&v91 + 1) + 8 * ii);
          v71 = [(__CFString *)v89 lowercaseString];
          v107 = [v70 isEqualToString:v71];
          std::vector<double>::push_back[abi:ne200100](a3, &v107);
        }

        v67 = [v66 countByEnumeratingWithState:&v91 objects:v110 count:16];
      }

      while (v67);
    }

    v72 = [v82 objectForKeyedSubscript:@"LnW"];
    v73 = [v82 objectForKeyedSubscript:@"RnW"];
  }

  else
  {
    v72 = [v82 objectForKeyedSubscript:@"LnC"];
    v73 = [v82 objectForKeyedSubscript:@"RnC"];
  }

  v74 = v73;
  v75 = [v83 objectForKeyedSubscript:@"leftBagOfTokensContextSize"];
  v76 = [v83 objectForKeyedSubscript:@"rightBagOfTokensContextSize"];
  v77 = [v88 count];
  v78 = [v75 intValue];
  v79 = [v76 intValue];
  [v81 _extractBagOfTokensFeaturesTo:a3 vocabulary:v72 tokens:v88 beginIndex:v77 - v78 endIndex:{objc_msgSend(v88, "count")}];
  [v81 _extractBagOfTokensFeaturesTo:a3 vocabulary:v74 tokens:v87 beginIndex:0 endIndex:v79];
}

+ (void)_extractLocaleFeaturesTo:(void *)a3 locale:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (qword_1ED9601A0 != -1)
  {
    dispatch_once(&qword_1ED9601A0, &__block_literal_global_20);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = _MergedGlobals_25;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [v5 isEqualToString:*(*(&v11 + 1) + 8 * i)];
        std::vector<double>::push_back[abi:ne200100](a3, &v10);
      }

      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

void __72__CRWrappingClassifierFeatureExtractor__extractLocaleFeaturesTo_locale___block_invoke()
{
  v0 = _MergedGlobals_25;
  _MergedGlobals_25 = &unk_1F2BFB0C8;
}

+ (vector<double,)extractFeatureVectorForLocale:(id)a2 string1:(SEL)a3 string2:(id)a4 evaluation:(id)a5 imageSize:(id)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  std::vector<double>::reserve(retstr, 0x12CuLL);
  v17 = [CRLineWrappingClassifier modelLocaleForLocale:v13];
  v18 = lineWrappingConfig();
  v19 = [v18 objectForKey:v17];
  v20 = [v19 objectForKey:@"classifier"];

  if (v20)
  {
    v21 = [CRImageReader languageIsChinese:v13]|| [CRImageReader languageIsJapanese:v13]|| [CRImageReader languageIsKorean:v13];
    [a2 _extractLanguageModelFeaturesTo:retstr evaluation:v16];
    [a2 _extractGeometricFeaturesTo:retstr evaluation:v16];
    [a2 _extractEvaluatedFeaturesTo:retstr evaluation:v16];
    [a2 _extractLexicalFeaturesTo:retstr string1:v14 string2:v15 configuration:v20 forCJK:v21];
    v23 = [v20 objectForKeyedSubscript:@"useLocaleTokens"];
    v24 = [v23 BOOLValue];

    if (v24)
    {
      [a2 _extractLocaleFeaturesTo:retstr locale:v13];
    }
  }

  else
  {
    v22 = CROSLogForCategory(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      v26 = 138412290;
      v27 = v13;
      _os_log_impl(&dword_1B40D2000, v22, OS_LOG_TYPE_FAULT, "Failed to load classifier config for locale %@", &v26, 0xCu);
    }
  }

  return result;
}

+ (id)nsArrayFromVector:(const void *)a3
{
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:(*(a3 + 1) - *a3) >> 3];
  v5 = *a3;
  v6 = *(a3 + 1);
  if (*a3 != v6)
  {
    do
    {
      v7 = [MEMORY[0x1E696AD98] numberWithDouble:*v5];
      [v4 addObject:v7];

      ++v5;
    }

    while (v5 != v6);
  }

  return v4;
}

+ (id)multiArrayFromVector:(const void *)a3
{
  v10[2] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E695FED0]);
  v10[0] = &unk_1F2BF85D8;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:(*(a3 + 1) - *a3) >> 3];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v7 = [v4 initWithShape:v6 dataType:65600 error:0];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__CRWrappingClassifierFeatureExtractor_multiArrayFromVector___block_invoke;
  v9[3] = &__block_descriptor_40_e24_v32__0_v8q16__NSArray_24l;
  v9[4] = a3;
  [v7 getMutableBytesWithHandler:v9];

  return v7;
}

void *__61__CRWrappingClassifierFeatureExtractor_multiArrayFromVector___block_invoke(void *result, void *__dst)
{
  v2 = result[4];
  v3 = *v2;
  v4 = *(v2 + 8);
  if (v4 != v3)
  {
    return memmove(__dst, v3, v4 - v3);
  }

  return result;
}

+ (id)extractFeaturesForLocale:(id)a3 textFeature:(id)a4 lastFeature:(id)a5 imageSize:(CGSize)a6 revision:(unint64_t)a7
{
  height = a6.height;
  width = a6.width;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [CRLineWrappingParameters alloc];
  v16 = [v13 locale];
  v17 = [v16 languageIdentifier];
  v18 = [(CRLineWrappingParameters *)v15 initWithLocale:v17];

  v19 = [CRLineWrappingContext alloc];
  v20 = [v14 locale];
  v21 = [v20 languageIdentifier];
  v22 = [(CRLineWrappingContext *)v19 initWithLocale:v21];

  v23 = [[CRWrappingEvaluationResult alloc] initWithTextFeature:v14 context:v22 imageSize:v18 parameters:width, height];
  [(CRLineWrappingContext *)v22 startWithResult:v23 contextSize:[(CRLineWrappingParameters *)v18 lmContextSize]];
  v24 = [[CRWrappingEvaluationResult alloc] initWithTextFeature:v13 context:v22 imageSize:v18 parameters:width, height];
  v25 = [v14 text];
  v26 = [v13 text];
  [a1 extractFeatureVectorForLocale:v12 string1:v25 string2:v26 evaluation:v24 imageSize:{width, height}];

  v27 = [a1 nsArrayFromVector:__p];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v27;
}

+ (id)extractFeatureMultiArrayForLocale:(id)a3 textFeature:(id)a4 lastFeature:(id)a5 evaluation:(id)a6 imageSize:(CGSize)a7
{
  height = a7.height;
  width = a7.width;
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = [a5 text];
  v17 = [v14 text];
  [a1 extractFeatureVectorForLocale:v13 string1:v16 string2:v17 evaluation:v15 imageSize:{width, height}];

  v18 = __p;
  if (__p != v22)
  {
    v19 = [a1 multiArrayFromVector:&__p];
    v18 = __p;
    if (!__p)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v19 = 0;
  if (__p)
  {
LABEL_3:
    v22 = v18;
    operator delete(v18);
  }

LABEL_4:

  return v19;
}

+ (id)evaluationResultForTextFeature:(id)a3 withLastFeature:(id)a4 locale:(id)a5 imageSize:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [[CRLineWrappingParameters alloc] initWithLocale:v12];
  v14 = [CRLineWrappingContext alloc];
  v15 = [v10 locale];
  v16 = [v15 languageIdentifier];
  v17 = [(CRLineWrappingContext *)v14 initWithLocale:v16];

  v18 = [[CRWrappingEvaluationResult alloc] initWithTextFeature:v11 context:v17 imageSize:v13 parameters:width, height];
  [(CRLineWrappingContext *)v17 startWithResult:v18 contextSize:20];
  if (!v17)
  {
    NSLog(&cfstr_Nil.isa);
  }

  v19 = [[CRWrappingEvaluationResult alloc] initWithTextFeature:v10 context:v17 imageSize:v13 parameters:width, height];

  return v19;
}

@end