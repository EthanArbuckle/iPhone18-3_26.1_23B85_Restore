@interface CRWrappingClassifierFeatureExtractor
+ (id)_tokenizeString:(id)string usingWordUnits:(BOOL)units excludeWhitespace:(BOOL)whitespace;
+ (id)evaluationResultForTextFeature:(id)feature withLastFeature:(id)lastFeature locale:(id)locale imageSize:(CGSize)size;
+ (id)extractFeatureMultiArrayForLocale:(id)locale textFeature:(id)feature lastFeature:(id)lastFeature evaluation:(id)evaluation imageSize:(CGSize)size;
+ (id)extractFeaturesForLocale:(id)locale textFeature:(id)feature lastFeature:(id)lastFeature imageSize:(CGSize)size revision:(unint64_t)revision;
+ (id)multiArrayFromVector:(const void *)vector;
+ (id)nsArrayFromVector:(const void *)vector;
+ (vector<double,)extractFeatureVectorForLocale:(id)locale string1:(SEL)string1 string2:(id)string2 evaluation:(id)evaluation imageSize:(id)size;
+ (void)_extractBagOfTokensFeaturesTo:(void *)to vocabulary:(id)vocabulary tokens:(id)tokens beginIndex:(int64_t)index endIndex:(int64_t)endIndex;
+ (void)_extractEvaluatedFeaturesTo:(void *)to evaluation:(id)evaluation;
+ (void)_extractGeometricFeaturesTo:(void *)to evaluation:(id)evaluation;
+ (void)_extractLanguageModelFeaturesTo:(void *)to evaluation:(id)evaluation;
+ (void)_extractLexicalFeaturesTo:(void *)to string1:(id)string1 string2:(id)string2 configuration:(id)configuration forCJK:(BOOL)k;
+ (void)_extractLocaleFeaturesTo:(void *)to locale:(id)locale;
@end

@implementation CRWrappingClassifierFeatureExtractor

+ (void)_extractBagOfTokensFeaturesTo:(void *)to vocabulary:(id)vocabulary tokens:(id)tokens beginIndex:(int64_t)index endIndex:(int64_t)endIndex
{
  vocabularyCopy = vocabulary;
  tokensCopy = tokens;
  std::vector<BOOL>::vector(&__p, [vocabularyCopy count]);
  toCopy = to;
  v13 = [tokensCopy count];
  v14 = index & ~(index >> 63);
  if (v13 >= endIndex)
  {
    endIndexCopy = endIndex;
  }

  else
  {
    endIndexCopy = v13;
  }

  v49 = endIndexCopy;
  if (v14 < endIndexCopy)
  {
    do
    {
      for (i = 0; i < [vocabularyCopy count]; ++i)
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
          v20 = [vocabularyCopy objectAtIndexedSubscript:i];
          v21 = [tokensCopy objectAtIndexedSubscript:v14];
          lowercaseString = [v21 lowercaseString];
          if ([v20 isEqualToString:lowercaseString])
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
    v27 = toCopy[1];
    v26 = toCopy[2];
    if (v51 <= (v26 - v27) >> 3)
    {
      v32 = v51 & 0x3F;
      if (v51 > 0x3F || (v33 = toCopy[1], (v51 & 0x3F) != 0))
      {
        v34 = 0;
        v35 = __p + 8 * (v51 >> 6);
        v33 = toCopy[1];
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

      toCopy[1] = v33;
    }

    else
    {
      v28 = v27 - *toCopy;
      v29 = v51 + (v28 >> 3);
      if (v29 >> 61)
      {
        std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
      }

      v30 = v26 - *toCopy;
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
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(toCopy, v31);
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
      memcpy((v39 + 8 * v24), v27, toCopy[1] - v27);
      v43 = *toCopy;
      v44 = v39 + 8 * v24 + toCopy[1] - v27;
      toCopy[1] = v27;
      v45 = v27 - v43;
      v46 = (v39 - (v27 - v43));
      memcpy(v46, v43, v45);
      v47 = *toCopy;
      *toCopy = v46;
      toCopy[1] = v44;
      toCopy[2] = 0;
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

+ (id)_tokenizeString:(id)string usingWordUnits:(BOOL)units excludeWhitespace:(BOOL)whitespace
{
  whitespaceCopy = whitespace;
  unitsCopy = units;
  stringCopy = string;
  if (unitsCopy)
  {
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    _crArrayOfComposedCharacters = [stringCopy componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];
  }

  else
  {
    if (whitespaceCopy)
    {
      whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v11 = [stringCopy _crStringByReplacingCharactersInSet:whitespaceCharacterSet withString:&stru_1F2BB4348];

      stringCopy = v11;
    }

    _crArrayOfComposedCharacters = [stringCopy _crArrayOfComposedCharacters];
  }

  return _crArrayOfComposedCharacters;
}

+ (void)_extractLanguageModelFeaturesTo:(void *)to evaluation:(id)evaluation
{
  evaluationCopy = evaluation;
  [evaluationCopy lmScore];
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
  [evaluationCopy eosLMScore];
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
  std::vector<double>::push_back[abi:ne200100](to, &v16);
  std::vector<double>::push_back[abi:ne200100](to, &v15);
  std::vector<double>::push_back[abi:ne200100](to, &v14);
  std::vector<double>::push_back[abi:ne200100](to, &v13);
  v12 = v14 - v13;
  std::vector<double>::push_back[abi:ne200100](to, &v12);
}

+ (void)_extractGeometricFeaturesTo:(void *)to evaluation:(id)evaluation
{
  evaluationCopy = evaluation;
  [evaluationCopy lastFeatureSize];
  v7 = v6;
  v9 = v8;
  [evaluationCopy featureInTestSize];
  v11 = v10;
  v13 = v12;
  [evaluationCopy imageSize];
  v15 = v14;
  v17 = v16;
  v18 = fabs(v14);
  v19 = v7 / v14;
  if (v18 <= 2.22044605e-16)
  {
    v19 = 0.0;
  }

  v63 = v19;
  std::vector<double>::push_back[abi:ne200100](to, &v63);
  v20 = v9 / v17;
  v59 = fabs(v17);
  if (v59 <= 2.22044605e-16)
  {
    v20 = 0.0;
  }

  v63 = v20;
  std::vector<double>::push_back[abi:ne200100](to, &v63);
  v21 = v11 / v15;
  if (v18 <= 2.22044605e-16)
  {
    v21 = 0.0;
  }

  v63 = v21;
  std::vector<double>::push_back[abi:ne200100](to, &v63);
  v22 = v13 / v17;
  if (v59 <= 2.22044605e-16)
  {
    v22 = 0.0;
  }

  v63 = v22;
  std::vector<double>::push_back[abi:ne200100](to, &v63);
  [evaluationCopy textHeightRatio];
  v63 = 1.0 / (exp(-v23) + 1.0);
  std::vector<double>::push_back[abi:ne200100](to, &v63);
  [evaluationCopy textHeightRatio];
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
  std::vector<double>::push_back[abi:ne200100](to, &v63);
  [evaluationCopy textWidthRatio];
  v63 = 1.0 / (exp(-v27) + 1.0);
  std::vector<double>::push_back[abi:ne200100](to, &v63);
  [evaluationCopy textWidthRatio];
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
  std::vector<double>::push_back[abi:ne200100](to, &v63);
  [evaluationCopy angleDiff];
  v63 = v31;
  std::vector<double>::push_back[abi:ne200100](to, &v63);
  [evaluationCopy topDistanceLeft];
  v33 = v32 / v15;
  if (v18 <= 2.22044605e-16)
  {
    v33 = 0.0;
  }

  v63 = v33;
  [evaluationCopy topDistanceRight];
  v35 = v34 / v15;
  if (v18 <= 2.22044605e-16)
  {
    v35 = 0.0;
  }

  v62 = v35;
  [evaluationCopy leftDistance];
  v37 = v36;
  [evaluationCopy rightDistance];
  v39 = v38;
  std::vector<double>::push_back[abi:ne200100](to, &v63);
  std::vector<double>::push_back[abi:ne200100](to, &v62);
  v61 = v63 - v62;
  std::vector<double>::push_back[abi:ne200100](to, &v61);
  v40 = v37;
  v41 = fabs(v9);
  v42 = -v40 / v9;
  v43 = -0.0;
  if (v41 > 2.22044605e-16)
  {
    v43 = v42;
  }

  v61 = 1.0 / (exp(v43) + 1.0);
  std::vector<double>::push_back[abi:ne200100](to, &v61);
  v44 = -v39 / v9;
  if (v41 <= 2.22044605e-16)
  {
    v44 = -0.0;
  }

  v61 = 1.0 / (exp(v44) + 1.0);
  std::vector<double>::push_back[abi:ne200100](to, &v61);
  v45 = v42 / v9;
  if (v41 <= 2.22044605e-16)
  {
    v45 = -0.0;
  }

  v61 = 1.0 / (exp(v45) + 1.0);
  std::vector<double>::push_back[abi:ne200100](to, &v61);
  [evaluationCopy verticalSpacing];
  v47 = v46 / v9;
  if (v41 <= 2.22044605e-16)
  {
    v47 = 0.0;
  }

  v61 = v47;
  std::vector<double>::push_back[abi:ne200100](to, &v61);
  [evaluationCopy horizontalOverlap];
  v49 = fabs(v7);
  v50 = v48 / v7;
  if (v49 <= 2.22044605e-16)
  {
    v50 = 0.0;
  }

  v61 = v50;
  std::vector<double>::push_back[abi:ne200100](to, &v61);
  [evaluationCopy verticalOverlap];
  v52 = v51 / v9;
  if (v41 <= 2.22044605e-16)
  {
    v52 = 0.0;
  }

  v61 = v52;
  std::vector<double>::push_back[abi:ne200100](to, &v61);
  [evaluationCopy midDistance];
  v54 = (v9 + v13 - v53) / v17;
  if (v59 <= 2.22044605e-16)
  {
    v54 = 0.0;
  }

  v61 = v54;
  std::vector<double>::push_back[abi:ne200100](to, &v61);
  [evaluationCopy xSpace];
  v56 = -v55 / v7;
  if (v49 <= 2.22044605e-16)
  {
    v56 = -0.0;
  }

  v60 = 1.0 / (exp(v56) + 1.0);
  std::vector<double>::push_back[abi:ne200100](to, &v60);
  [evaluationCopy ySpace];
  v58 = -v57 / v13;
  if (fabs(v13) <= 2.22044605e-16)
  {
    v58 = -0.0;
  }

  v60 = 1.0 / (exp(v58) + 1.0);
  std::vector<double>::push_back[abi:ne200100](to, &v60);
}

+ (void)_extractEvaluatedFeaturesTo:(void *)to evaluation:(id)evaluation
{
  evaluationCopy = evaluation;
  isOversegmented = [evaluationCopy isOversegmented];
  std::vector<double>::push_back[abi:ne200100](to, &isOversegmented);
  isOversegmented = [evaluationCopy caseWrappingScoreUsingCustomConfiguration:0] / 10.0;
  std::vector<double>::push_back[abi:ne200100](to, &isOversegmented);
  isOversegmented = [evaluationCopy wordCountWrappingScore] / 10.0;
  std::vector<double>::push_back[abi:ne200100](to, &isOversegmented);
  isOversegmented = [evaluationCopy punctuationWrappingScoreUsingCustomConfiguration:0] / 10.0;
  std::vector<double>::push_back[abi:ne200100](to, &isOversegmented);
  isOversegmented = [evaluationCopy textContentWrappingScore] / 10.0;
  std::vector<double>::push_back[abi:ne200100](to, &isOversegmented);
  isOversegmented = [evaluationCopy midSentencePunctuated];
  std::vector<double>::push_back[abi:ne200100](to, &isOversegmented);
  isOversegmented = [evaluationCopy bothBeginWithDigits];
  std::vector<double>::push_back[abi:ne200100](to, &isOversegmented);
  isOversegmented = [evaluationCopy f2StartOfSentence];
  std::vector<double>::push_back[abi:ne200100](to, &isOversegmented);
  isOversegmented = [evaluationCopy oversegmentedListItem];
  std::vector<double>::push_back[abi:ne200100](to, &isOversegmented);
  isOversegmented = [evaluationCopy f2BeginsWithDD];
  std::vector<double>::push_back[abi:ne200100](to, &isOversegmented);
  isOversegmented = [evaluationCopy f1EndsWithDD];
  std::vector<double>::push_back[abi:ne200100](to, &isOversegmented);
  isOversegmented = [evaluationCopy f2FullyDD];
  std::vector<double>::push_back[abi:ne200100](to, &isOversegmented);
  isOversegmented = [evaluationCopy multilineDD];
  std::vector<double>::push_back[abi:ne200100](to, &isOversegmented);
}

+ (void)_extractLexicalFeaturesTo:(void *)to string1:(id)string1 string2:(id)string2 configuration:(id)configuration forCJK:(BOOL)k
{
  kCopy = k;
  v114 = *MEMORY[0x1E69E9840];
  string1Copy = string1;
  string2Copy = string2;
  configurationCopy = configuration;
  v84 = string1Copy;
  _crStartsWithListItemIndicator = [string1Copy _crStartsWithListItemIndicator];
  std::vector<double>::push_back[abi:ne200100](to, &_crStartsWithListItemIndicator);
  _crStartsWithListItemIndicator = [string1Copy _crStartsWithDigit];
  std::vector<double>::push_back[abi:ne200100](to, &_crStartsWithListItemIndicator);
  _crStartsWithListItemIndicator = [string1Copy _crEndsWithClosingPunctuation];
  std::vector<double>::push_back[abi:ne200100](to, &_crStartsWithListItemIndicator);
  _crStartsWithListItemIndicator = [string1Copy _crEndsWithHyphen];
  std::vector<double>::push_back[abi:ne200100](to, &_crStartsWithListItemIndicator);
  _crStartsWithListItemIndicator = [string1Copy _crEndsWithDigit];
  std::vector<double>::push_back[abi:ne200100](to, &_crStartsWithListItemIndicator);
  _crStartsWithListItemIndicator = [string1Copy _crIsSentencePunctuatedIncludingWhitespace:1];
  std::vector<double>::push_back[abi:ne200100](to, &_crStartsWithListItemIndicator);
  _crStartsWithListItemIndicator = [string2Copy _crStartsWithListItemIndicator];
  std::vector<double>::push_back[abi:ne200100](to, &_crStartsWithListItemIndicator);
  _crStartsWithListItemIndicator = [string2Copy _crStartsWithDigit];
  std::vector<double>::push_back[abi:ne200100](to, &_crStartsWithListItemIndicator);
  _crStartsWithListItemIndicator = [string2Copy _crEndsWithClosingPunctuation];
  std::vector<double>::push_back[abi:ne200100](to, &_crStartsWithListItemIndicator);
  _crStartsWithListItemIndicator = [string2Copy _crEndsWithHyphen];
  std::vector<double>::push_back[abi:ne200100](to, &_crStartsWithListItemIndicator);
  _crStartsWithListItemIndicator = [string2Copy _crEndsWithDigit];
  std::vector<double>::push_back[abi:ne200100](to, &_crStartsWithListItemIndicator);
  _crStartsWithListItemIndicator = [string2Copy _crIsSentencePunctuatedIncludingWhitespace:1];
  std::vector<double>::push_back[abi:ne200100](to, &_crStartsWithListItemIndicator);
  v13 = [configurationCopy objectForKeyedSubscript:@"useWordTokens"];
  bOOLValue = [v13 BOOLValue];

  v15 = [configurationCopy objectForKeyedSubscript:@"excludeWhitespace"];
  bOOLValue2 = [v15 BOOLValue];

  v82 = [configurationCopy objectForKeyedSubscript:@"features"];
  v88 = [objc_opt_class() _tokenizeString:string1Copy usingWordUnits:bOOLValue excludeWhitespace:bOOLValue2];
  v87 = [objc_opt_class() _tokenizeString:string2Copy usingWordUnits:bOOLValue excludeWhitespace:bOOLValue2];
  if ([v88 count])
  {
    lastObject = [v88 lastObject];
  }

  else
  {
    lastObject = &stru_1F2BB4348;
  }

  if (![v87 count])
  {
    firstObject = &stru_1F2BB4348;
    if (!bOOLValue)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  firstObject = [v87 firstObject];
  if (bOOLValue)
  {
LABEL_8:
    _crStartsWithUppercase = [string1Copy _crStartsWithUppercase];
    _crStartsWithUppercase2 = [string2Copy _crStartsWithUppercase];
    _crStartsWithListItemIndicator = _crStartsWithUppercase;
    std::vector<double>::push_back[abi:ne200100](to, &_crStartsWithListItemIndicator);
    _crStartsWithListItemIndicator = _crStartsWithUppercase2;
    std::vector<double>::push_back[abi:ne200100](to, &_crStartsWithListItemIndicator);
    _crStartsWithListItemIndicator = (_crStartsWithUppercase & _crStartsWithUppercase2);
    std::vector<double>::push_back[abi:ne200100](to, &_crStartsWithListItemIndicator);
    letterCharacterSet = [MEMORY[0x1E696AB08] letterCharacterSet];
    _crStartsWithListItemIndicator = [string1Copy _crStartsWithCharacterInSet:letterCharacterSet];
    std::vector<double>::push_back[abi:ne200100](to, &_crStartsWithListItemIndicator);

    letterCharacterSet2 = [MEMORY[0x1E696AB08] letterCharacterSet];
    _crStartsWithListItemIndicator = [string2Copy _crStartsWithCharacterInSet:letterCharacterSet2];
    std::vector<double>::push_back[abi:ne200100](to, &_crStartsWithListItemIndicator);

    LODWORD(letterCharacterSet2) = [(__CFString *)lastObject _crStartsWithUppercase];
    _crStartsWithUppercase3 = [(__CFString *)firstObject _crStartsWithUppercase];
    _crStartsWithListItemIndicator = letterCharacterSet2;
    std::vector<double>::push_back[abi:ne200100](to, &_crStartsWithListItemIndicator);
    _crStartsWithListItemIndicator = (letterCharacterSet2 & (_crStartsWithUppercase3 ^ 1));
    std::vector<double>::push_back[abi:ne200100](to, &_crStartsWithListItemIndicator);
    _crStartsWithListItemIndicator = (letterCharacterSet2 & _crStartsWithUppercase3);
    std::vector<double>::push_back[abi:ne200100](to, &_crStartsWithListItemIndicator);
    _crStartsWithListItemIndicator = [(__CFString *)lastObject _crIsAllCaps];
    std::vector<double>::push_back[abi:ne200100](to, &_crStartsWithListItemIndicator);
    _crStartsWithListItemIndicator = [(__CFString *)firstObject _crIsAllCaps];
    std::vector<double>::push_back[abi:ne200100](to, &_crStartsWithListItemIndicator);
  }

LABEL_9:
  _crStartsWithListItemIndicator = [v88 count] / 20.0;
  v108 = [v87 count] / 20.0;
  std::vector<double>::push_back[abi:ne200100](to, &_crStartsWithListItemIndicator);
  std::vector<double>::push_back[abi:ne200100](to, &v108);
  v107 = _crStartsWithListItemIndicator + v108;
  std::vector<double>::push_back[abi:ne200100](to, &v107);
  v107 = v108 - _crStartsWithListItemIndicator;
  std::vector<double>::push_back[abi:ne200100](to, &v107);
  v22 = -_crStartsWithListItemIndicator / v108;
  if (fabs(v108) <= 2.22044605e-16)
  {
    v22 = -0.0;
  }

  v107 = 1.0 / (exp(v22) + 1.0);
  std::vector<double>::push_back[abi:ne200100](to, &v107);
  v23 = -v108 / _crStartsWithListItemIndicator;
  if (fabs(_crStartsWithListItemIndicator) <= 2.22044605e-16)
  {
    v23 = -0.0;
  }

  v107 = 1.0 / (exp(v23) + 1.0);
  std::vector<double>::push_back[abi:ne200100](to, &v107);
  v86 = [configurationCopy objectForKeyedSubscript:@"maxTokenCountForLengthFeatures"];
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
    std::vector<double>::push_back[abi:ne200100](to, &v107);
    if (i == [v87 count])
    {
      v26 = 1.0;
    }

    else
    {
      v26 = 0.0;
    }

    v107 = v26;
    std::vector<double>::push_back[abi:ne200100](to, &v107);
  }

  v27 = [string1Copy length];
  v28 = [string2Copy length];
  if (v27 < 1)
  {
    v29 = 0;
  }

  else
  {
    v29 = [string1Copy characterAtIndex:v27 - 1];
  }

  if (v28 < 1)
  {
    v30 = 0;
  }

  else
  {
    v30 = [string2Copy characterAtIndex:0];
  }

  v33 = 0;
  if (bOOLValue)
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
    std::vector<double>::push_back[abi:ne200100](to, &v107);
    if (v32 == v33)
    {
      v36 = 1.0;
    }

    else
    {
      v36 = 0.0;
    }

    v107 = v36;
    std::vector<double>::push_back[abi:ne200100](to, &v107);
    ++v33;
  }

  while (v34 != v33);
  v80 = bOOLValue;
  for (j = 0; j != v34; ++j)
  {
    v38 = v32;
    v39 = v34;
    do
    {
      v41 = v31 == j && v38 == 0;
      v107 = v41;
      std::vector<double>::push_back[abi:ne200100](to, &v107);
      --v38;
      --v39;
    }

    while (v39);
  }

  selfCopy = self;
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
        std::vector<double>::push_back[abi:ne200100](to, &v107);
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
        std::vector<double>::push_back[abi:ne200100](to, &v107);
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
          lowercaseString = [(__CFString *)lastObject lowercaseString];
          v107 = [v64 isEqualToString:lowercaseString];
          std::vector<double>::push_back[abi:ne200100](to, &v107);
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
          lowercaseString2 = [(__CFString *)firstObject lowercaseString];
          v107 = [v70 isEqualToString:lowercaseString2];
          std::vector<double>::push_back[abi:ne200100](to, &v107);
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
  v75 = [configurationCopy objectForKeyedSubscript:@"leftBagOfTokensContextSize"];
  v76 = [configurationCopy objectForKeyedSubscript:@"rightBagOfTokensContextSize"];
  v77 = [v88 count];
  intValue = [v75 intValue];
  intValue2 = [v76 intValue];
  [selfCopy _extractBagOfTokensFeaturesTo:to vocabulary:v72 tokens:v88 beginIndex:v77 - intValue endIndex:{objc_msgSend(v88, "count")}];
  [selfCopy _extractBagOfTokensFeaturesTo:to vocabulary:v74 tokens:v87 beginIndex:0 endIndex:intValue2];
}

+ (void)_extractLocaleFeaturesTo:(void *)to locale:(id)locale
{
  v16 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
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

        v10 = [localeCopy isEqualToString:*(*(&v11 + 1) + 8 * i)];
        std::vector<double>::push_back[abi:ne200100](to, &v10);
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

+ (vector<double,)extractFeatureVectorForLocale:(id)locale string1:(SEL)string1 string2:(id)string2 evaluation:(id)evaluation imageSize:(id)size
{
  v28 = *MEMORY[0x1E69E9840];
  string2Copy = string2;
  evaluationCopy = evaluation;
  sizeCopy = size;
  v16 = a7;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  std::vector<double>::reserve(retstr, 0x12CuLL);
  v17 = [CRLineWrappingClassifier modelLocaleForLocale:string2Copy];
  v18 = lineWrappingConfig();
  v19 = [v18 objectForKey:v17];
  v20 = [v19 objectForKey:@"classifier"];

  if (v20)
  {
    v21 = [CRImageReader languageIsChinese:string2Copy]|| [CRImageReader languageIsJapanese:string2Copy]|| [CRImageReader languageIsKorean:string2Copy];
    [locale _extractLanguageModelFeaturesTo:retstr evaluation:v16];
    [locale _extractGeometricFeaturesTo:retstr evaluation:v16];
    [locale _extractEvaluatedFeaturesTo:retstr evaluation:v16];
    [locale _extractLexicalFeaturesTo:retstr string1:evaluationCopy string2:sizeCopy configuration:v20 forCJK:v21];
    v23 = [v20 objectForKeyedSubscript:@"useLocaleTokens"];
    bOOLValue = [v23 BOOLValue];

    if (bOOLValue)
    {
      [locale _extractLocaleFeaturesTo:retstr locale:string2Copy];
    }
  }

  else
  {
    v22 = CROSLogForCategory(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      v26 = 138412290;
      v27 = string2Copy;
      _os_log_impl(&dword_1B40D2000, v22, OS_LOG_TYPE_FAULT, "Failed to load classifier config for locale %@", &v26, 0xCu);
    }
  }

  return result;
}

+ (id)nsArrayFromVector:(const void *)vector
{
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:(*(vector + 1) - *vector) >> 3];
  v5 = *vector;
  v6 = *(vector + 1);
  if (*vector != v6)
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

+ (id)multiArrayFromVector:(const void *)vector
{
  v10[2] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E695FED0]);
  v10[0] = &unk_1F2BF85D8;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:(*(vector + 1) - *vector) >> 3];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v7 = [v4 initWithShape:v6 dataType:65600 error:0];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__CRWrappingClassifierFeatureExtractor_multiArrayFromVector___block_invoke;
  v9[3] = &__block_descriptor_40_e24_v32__0_v8q16__NSArray_24l;
  v9[4] = vector;
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

+ (id)extractFeaturesForLocale:(id)locale textFeature:(id)feature lastFeature:(id)lastFeature imageSize:(CGSize)size revision:(unint64_t)revision
{
  height = size.height;
  width = size.width;
  localeCopy = locale;
  featureCopy = feature;
  lastFeatureCopy = lastFeature;
  v15 = [CRLineWrappingParameters alloc];
  locale = [featureCopy locale];
  languageIdentifier = [locale languageIdentifier];
  v18 = [(CRLineWrappingParameters *)v15 initWithLocale:languageIdentifier];

  v19 = [CRLineWrappingContext alloc];
  locale2 = [lastFeatureCopy locale];
  languageIdentifier2 = [locale2 languageIdentifier];
  v22 = [(CRLineWrappingContext *)v19 initWithLocale:languageIdentifier2];

  height = [[CRWrappingEvaluationResult alloc] initWithTextFeature:lastFeatureCopy context:v22 imageSize:v18 parameters:width, height];
  [(CRLineWrappingContext *)v22 startWithResult:height contextSize:[(CRLineWrappingParameters *)v18 lmContextSize]];
  height2 = [[CRWrappingEvaluationResult alloc] initWithTextFeature:featureCopy context:v22 imageSize:v18 parameters:width, height];
  text = [lastFeatureCopy text];
  text2 = [featureCopy text];
  [self extractFeatureVectorForLocale:localeCopy string1:text string2:text2 evaluation:height2 imageSize:{width, height}];

  v27 = [self nsArrayFromVector:__p];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v27;
}

+ (id)extractFeatureMultiArrayForLocale:(id)locale textFeature:(id)feature lastFeature:(id)lastFeature evaluation:(id)evaluation imageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  localeCopy = locale;
  featureCopy = feature;
  evaluationCopy = evaluation;
  text = [lastFeature text];
  text2 = [featureCopy text];
  [self extractFeatureVectorForLocale:localeCopy string1:text string2:text2 evaluation:evaluationCopy imageSize:{width, height}];

  v18 = __p;
  if (__p != v22)
  {
    v19 = [self multiArrayFromVector:&__p];
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

+ (id)evaluationResultForTextFeature:(id)feature withLastFeature:(id)lastFeature locale:(id)locale imageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  featureCopy = feature;
  lastFeatureCopy = lastFeature;
  localeCopy = locale;
  v13 = [[CRLineWrappingParameters alloc] initWithLocale:localeCopy];
  v14 = [CRLineWrappingContext alloc];
  locale = [featureCopy locale];
  languageIdentifier = [locale languageIdentifier];
  v17 = [(CRLineWrappingContext *)v14 initWithLocale:languageIdentifier];

  height = [[CRWrappingEvaluationResult alloc] initWithTextFeature:lastFeatureCopy context:v17 imageSize:v13 parameters:width, height];
  [(CRLineWrappingContext *)v17 startWithResult:height contextSize:20];
  if (!v17)
  {
    NSLog(&cfstr_Nil.isa);
  }

  height2 = [[CRWrappingEvaluationResult alloc] initWithTextFeature:featureCopy context:v17 imageSize:v13 parameters:width, height];

  return height2;
}

@end