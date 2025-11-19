@interface CRLineWrappingContext
+ (BOOL)_usesWordTokensForLocale:(uint64_t)a1;
- (BOOL)classifierShouldCorrectOverwrappingWithEvaluation:(int64_t)a3 correctionMode:(int64_t)a4;
- (BOOL)classifierShouldInsertLineBreakForEvaluationResult:(id)a3 threshold:(float)a4 useThresholdOverride:(BOOL)a5;
- (BOOL)isClassifierAvailable;
- (BOOL)isRTL;
- (BOOL)isValidWordString:(id)a3;
- (BOOL)shouldAllowWhitespaceDelimiterForString:(id)a3;
- (BOOL)shouldConsiderLetterCase;
- (BOOL)usesWordTokens;
- (CRLineWrappable)lastFeature;
- (CRLineWrappingContext)initWithLocale:(id)a3;
- (NSArray)contextResults;
- (double)averageLineHeight;
- (double)averageVerticalSpacing;
- (double)charLMScoreByAddingString:(id)a3 eosScore:(double *)a4;
- (double)wordLMScoreByAddingTokens:(const void *)a3;
- (id).cxx_construct;
- (vector<unsigned)tokenizeStringIntoWords:(CRLineWrappingContext *)self;
- (void)addResult:(id)a3 mergeOversegmentation:(BOOL)a4;
- (void)contextByAddingNewTokens:(void *)a3;
- (void)dealloc;
- (void)resetContext;
- (void)startWithResult:(id)a3 contextSize:(int64_t)a4;
@end

@implementation CRLineWrappingContext

- (CRLineWrappingContext)initWithLocale:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = CRLineWrappingContext;
  v6 = [(CRLineWrappingContext *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locale, a3);
    v8 = +[CRLanguageResourcesManager lineWrappingManager];
    lrManager = v7->_lrManager;
    v7->_lrManager = v8;

    [(CRLanguageResourcesManager *)v7->_lrManager addSubscriber:v7 forLocale:v5];
    v7->_active = 0;
    if ([CRLineWrappingClassifier localeIsSupported:v5])
    {
      v10 = [[CRLineWrappingClassifier alloc] initWithLocale:v5];
      classifier = v7->_classifier;
      v7->_classifier = v10;
    }
  }

  return v7;
}

- (NSArray)contextResults
{
  if (self)
  {
    self = objc_getProperty(self, a2, 64, 1);
  }

  v2 = [(CRLineWrappingContext *)self copy];

  return v2;
}

- (void)startWithResult:(id)a3 contextSize:(int64_t)a4
{
  v6 = a3;
  if ([(CRLineWrappingContext *)self active])
  {
    v7 = CROSLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B40D2000, v7, OS_LOG_TYPE_FAULT, "Unexpectedly starting an active context", buf, 2u);
    }
  }

  if (self)
  {
    self->_active = 1;
  }

  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v6, 0}];
  if (self)
  {
    objc_setProperty_atomic(self, v8, v9, 64);
  }

  v10 = [v6 paragraphText];
  v12 = v10;
  if (self)
  {
    objc_setProperty_atomic(self, v11, v10, 40);

    self->_contextSize = a4;
  }

  else
  {
  }

  v13 = [(CRLineWrappingContext *)self locale];
  v14 = [CRLineWrappingContext _usesWordTokensForLocale:v13];

  if (v14)
  {
    v15 = [v6 paragraphText];
    [(CRLineWrappingContext *)self tokenizeStringIntoWords:v15];

    [(CRLineWrappingContext *)&v18 contextByAddingNewTokens:buf];
    begin = self->_contextTokens.__begin_;
    if (begin)
    {
      self->_contextTokens.__end_ = begin;
      operator delete(begin);
      self->_contextTokens.__begin_ = 0;
      self->_contextTokens.__end_ = 0;
      self->_contextTokens.__cap_ = 0;
    }

    *&self->_contextTokens.__begin_ = v18;
    self->_contextTokens.__cap_ = v19;
    if (*buf)
    {
      v21 = *buf;
      operator delete(*buf);
    }
  }

  else if (!self)
  {
    goto LABEL_18;
  }

  self->_lineCount = 1;
LABEL_18:
  [v6 featureInTestSize];
  if (self)
  {
    self->_lineHeightSum = v17;
  }
}

+ (BOOL)_usesWordTokensForLocale:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [CRImageReader languageIsLatin:v2]|| [CRImageReader languageIsCyrillic:v2];

  return v3;
}

- (void)contextByAddingNewTokens:(void *)a3
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    v3 = a2[10];
    v4 = a3[1] - *a3;
    v5 = v3 - (v4 >> 2);
    if (v5 >= 1)
    {
      v6 = a2[2] - a2[1];
      if (v6)
      {
        v7 = v6 >> 2;
        if (v7 >= v5)
        {
          v8 = v3 - (v4 >> 2);
        }

        else
        {
          v8 = v7;
        }

        memset(v10, 0, sizeof(v10));
        if (4 * v8)
        {
          std::vector<float>::__vallocate[abi:ne200100](v10, (4 * v8) >> 2);
        }

        *a1 = 0;
        a1[1] = 0;
        a1[2] = 0;
      }
    }

    if (v4 >> 2 >= v3)
    {
      v9 = (4 * v3) >> 2;
    }

    else
    {
      v9 = v4 >> 2;
    }

    if (v9 >= 1)
    {
      if (!(v9 >> 62))
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v9);
      }

      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }
  }
}

- (void)resetContext
{
  if (self)
  {
    self->_active = 0;
    objc_setProperty_atomic(self, a2, 0, 64);
    objc_setProperty_atomic(self, v3, 0, 40);
  }

  self->_contextTokens.__end_ = self->_contextTokens.__begin_;
  self->_lineCount = 0;
  self->_verticalSpacingSumCount = 0;
  self->_verticalSpacingSum = 0.0;
  self->_lineHeightSum = 0.0;
}

- (double)averageVerticalSpacing
{
  result = 0.0;
  if (self)
  {
    verticalSpacingSumCount = self->_verticalSpacingSumCount;
    if (verticalSpacingSumCount >= 1)
    {
      return self->_verticalSpacingSum / verticalSpacingSumCount;
    }
  }

  return result;
}

- (double)averageLineHeight
{
  if (![(CRLineWrappingContext *)self lineCount])
  {
    return 0.0;
  }

  if (self)
  {
    lineHeightSum = self->_lineHeightSum;
  }

  else
  {
    lineHeightSum = 0.0;
  }

  return lineHeightSum / [(CRLineWrappingContext *)self lineCount];
}

- (void)addResult:(id)a3 mergeOversegmentation:(BOOL)a4
{
  v4 = a4;
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (![(CRLineWrappingContext *)self active])
  {
    v7 = CROSLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B40D2000, v7, OS_LOG_TYPE_FAULT, "Adding result to an inactive context", buf, 2u);
    }
  }

  v8 = [v6 featureInTest];
  v9 = [v8 locale];
  v10 = [v9 languageIdentifier];
  v11 = [(CRLineWrappingContext *)self locale];
  v12 = [v10 isEqualToString:v11];

  if ((v12 & 1) == 0)
  {
    v13 = CROSLogForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [v6 featureInTest];
      v15 = [v14 locale];
      v16 = [(CRLineWrappingContext *)self locale];
      *buf = 138412546;
      *&buf[4] = v15;
      *&buf[12] = 2112;
      *&buf[14] = v16;
      _os_log_impl(&dword_1B40D2000, v13, OS_LOG_TYPE_ERROR, "Attempting to add a feature with locale %@ to a context with locale %@", buf, 0x16u);
    }
  }

  if (v6)
  {
    [v6 featureTokens];
  }

  else
  {
    __p = 0;
    v41 = 0;
    v42 = 0;
  }

  [(CRLineWrappingContext *)buf contextByAddingNewTokens:&__p];
  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  if (&self->_contextTokens != buf)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&self->_contextTokens.__begin_, *buf, *&buf[8], (*&buf[8] - *buf) >> 2);
  }

  v18 = [v6 paragraphText];
  if (self)
  {
    objc_setProperty_atomic(self, v17, v18, 40);
  }

  if ([v6 isOversegmented] & v4) == 1 && (!self ? (v20 = 0) : (v20 = objc_getProperty(self, v19, 64, 1)), objc_msgSend(v20, "lastObject"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "featureInTest"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_opt_respondsToSelector(), v22, v21, (v23))
  {
    if (self)
    {
      Property = objc_getProperty(self, v19, 64, 1);
    }

    else
    {
      Property = 0;
    }

    v26 = [Property lastObject];
    if (self)
    {
      v27 = objc_getProperty(self, v25, 64, 1);
    }

    else
    {
      v27 = 0;
    }

    [v27 removeLastObject];
    v29 = [v26 resultByMerging:v6];
    if (self)
    {
      v30 = objc_getProperty(self, v28, 64, 1);
    }

    else
    {
      v30 = 0;
    }

    [v30 addObject:v29];
    [v29 featureInTestSize];
    v32 = v31;
    [v26 featureInTestSize];
    if (self)
    {
      self->_lineHeightSum = v32 - v33 + self->_lineHeightSum;
    }

    if ([v26 contributesToVerticalSpacing])
    {
      [v29 verticalSpacing];
      v35 = v34;
      [v26 verticalSpacing];
      if (self)
      {
        self->_verticalSpacingSum = v35 - v36 + self->_verticalSpacingSum;
      }
    }
  }

  else
  {
    if (self)
    {
      v37 = objc_getProperty(self, v19, 64, 1);
    }

    else
    {
      v37 = 0;
    }

    [v37 addObject:v6];
    ++self->_lineCount;
    [v6 featureInTestSize];
    self->_lineHeightSum = v38 + self->_lineHeightSum;
    if ([v6 contributesToVerticalSpacing])
    {
      [v6 verticalSpacing];
      self->_verticalSpacingSum = v39 + self->_verticalSpacingSum;
      ++self->_verticalSpacingSumCount;
    }
  }

  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }
}

- (CRLineWrappable)lastFeature
{
  if (self)
  {
    self = objc_getProperty(self, a2, 64, 1);
  }

  v2 = [(CRLineWrappingContext *)self lastObject];
  v3 = [v2 featureInTest];

  return v3;
}

- (vector<unsigned)tokenizeStringIntoWords:(CRLineWrappingContext *)self
{
  v6 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x4812000000;
  v26 = __Block_byref_object_copy__110;
  v27 = __Block_byref_object_dispose__111;
  v28 = &unk_1B4305E9E;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  if ([(CRLineWrappingContext *)self usesWordTokens])
  {
    v7 = [v6 stringByAppendingString:@" "];

    v8 = [v7 maximumLengthOfBytesUsingEncoding:4];
    v9 = [v7 length];
    if (v8)
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v22 = 0;
    [v7 getBytes:0 maxLength:0 usedLength:&v22 encoding:4 options:0 range:0 remainingRange:{v9, 0}];
    if (self)
    {
      Property = objc_getProperty(self, v11, 72, 1);
    }

    else
    {
      Property = 0;
    }

    v13 = Property;
    v14 = [(CRLineWrappingContext *)self locale];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3321888768;
    v17[2] = __49__CRLineWrappingContext_tokenizeStringIntoWords___block_invoke;
    v17[3] = &unk_1F2BAF5F8;
    v19 = 0;
    v20 = 0;
    __p = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, 0, 0, 0);
    v21 = v22;
    v17[4] = &v23;
    [v13 lockResourcesForLocale:v14 sender:self block:v17];

    v15 = v24;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
    retstr->__begin_ = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(retstr, v15[6], v15[7], (v15[7] - v15[6]) >> 2);
    if (__p)
    {
      v19 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v10 = v24;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
    retstr->__begin_ = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(retstr, v10[6], v10[7], (v10[7] - v10[6]) >> 2);
    v7 = v6;
  }

  _Block_object_dispose(&v23, 8);
  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  return result;
}

void __49__CRLineWrappingContext_tokenizeStringIntoWords___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 wordTokenizer];
  LMStreamTokenizerReset();
  v3 = v2;
  LMStreamTokenizerPushBytes();
}

void __49__CRLineWrappingContext_tokenizeStringIntoWords___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  TokenIDForString = a4;
  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a2 length:a3 encoding:4];
  v7 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v12 = [v6 stringByTrimmingCharactersInSet:v7];

  if ([v12 length])
  {
    [*(a1 + 32) wordLanguageModel];
    v8 = LMLanguageModelTokenIDisUnknown() ^ 1;
    if (!a4)
    {
      LOBYTE(v8) = 0;
    }

    if ((v8 & 1) == 0)
    {
      [*(a1 + 32) wordLanguageModel];
      TokenIDForString = LMLanguageModelGetTokenIDForString();
      [*(a1 + 32) wordLanguageModel];
      v9 = LMLanguageModelTokenIDisUnknown();
      v10 = TokenIDForString ? v9 : 1;
      if (v10 == 1)
      {
        v11 = [v12 lowercaseString];
        [*(a1 + 32) wordLanguageModel];
        TokenIDForString = LMLanguageModelGetTokenIDForString();
      }
    }

    std::vector<unsigned int>::push_back[abi:ne200100]((*(*(a1 + 40) + 8) + 48), &TokenIDForString);
  }
}

- (BOOL)isValidWordString:(id)a3
{
  v5 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (self)
  {
    Property = objc_getProperty(self, v4, 72, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  v8 = [(CRLineWrappingContext *)self locale];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43__CRLineWrappingContext_isValidWordString___block_invoke;
  v12[3] = &unk_1E7BC2E08;
  v9 = v5;
  v13 = v9;
  v14 = &v15;
  [v7 lockResourcesForLocale:v8 sender:self block:v12];

  v10 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return v10;
}

void __43__CRLineWrappingContext_isValidWordString___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 wordLanguageModel];
  if (LMLanguageModelGetTokenIDForString() > 0x1F3)
  {
    v3 = 1;
  }

  else
  {
    [*(a1 + 32) lowercaseString];
    [v4 wordLanguageModel];
    v3 = LMLanguageModelGetTokenIDForString() > 0x1F3;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

- (BOOL)isRTL
{
  v2 = [(CRLineWrappingContext *)self locale];
  v3 = [CRImageReader languageIsArabic:v2];

  return v3;
}

- (double)wordLMScoreByAddingTokens:(const void *)a3
{
  if (![(CRLineWrappingContext *)self usesWordTokens])
  {
    return -1.79769313e308;
  }

  if (self->_contextTokens.__end_ == self->_contextTokens.__begin_)
  {
    return -1.79769313e308;
  }

  v30 = 0;
  v31 = 0;
  v32 = 0;
  v6 = *a3;
  v5 = *(a3 + 1);
  if (v6 == v5)
  {
    return -1.79769313e308;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    LODWORD(v26) = *v6;
    v9 = v26;
    std::vector<unsigned int>::push_back[abi:ne200100](&v30, &v26);
    v8 |= v9 != 0;
    v7 |= v9 > 0x1F3;
    if (v7 & 1) != 0 && (v8)
    {
      goto LABEL_10;
    }

    v11 = v30;
    if (&v31[-v30] == 12)
    {
      break;
    }

    ++v6;
  }

  while (v6 != v5);
  if ((v8 & 1) == 0)
  {
    v16 = -1.79769313e308;
    if (!v30)
    {
      return v16;
    }

    goto LABEL_26;
  }

LABEL_10:
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0x7FEFFFFFFFFFFFFFLL;
  begin = self->_contextTokens.__begin_;
  v13 = self->_contextTokens.__end_ - begin;
  if (v13)
  {
    v14 = v13 >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    while (1)
    {
      v15 = *begin++;
      if (v15 >= 0x1F4)
      {
        break;
      }

      if (!--v14)
      {
        goto LABEL_15;
      }
    }

    v18 = objc_getProperty(self, v10, 72, 1);
    v19 = [(CRLineWrappingContext *)self locale];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3321888768;
    v22[2] = __51__CRLineWrappingContext_wordLMScoreByAddingTokens___block_invoke;
    v22[3] = &unk_1F2BAF5C0;
    v22[4] = self;
    v22[5] = &v26;
    v24 = 0;
    v25 = 0;
    __p = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v30, v31, &v31[-v30] >> 2);
    [v18 lockResourcesForLocale:v19 sender:self block:v22];

    v20 = *(v27 + 3);
    v21 = exp(v20);
    if (v20 >= 0.0)
    {
      v16 = -1.79769313e308;
    }

    else
    {
      v16 = v21;
    }

    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }
  }

  else
  {
LABEL_15:
    v16 = -1.79769313e308;
  }

  _Block_object_dispose(&v26, 8);
  v11 = v30;
  if (v30)
  {
LABEL_26:
    v31 = v11;
    operator delete(v11);
  }

  return v16;
}

void __51__CRLineWrappingContext_wordLMScoreByAddingTokens___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  __p = 0;
  __dst = 0;
  v14 = 0;
  if (v5 != v6)
  {
    std::vector<float>::__vallocate[abi:ne200100](&__p, (v5 - v6) >> 2);
  }

  v7 = a1[6];
  *(*(a1[5] + 8) + 24) = 0;
  v8 = a1[7];
  if (v7 == v8)
  {
    v10 = v7;
  }

  else
  {
    do
    {
      v11 = *v7;
      [v3 wordLanguageModel];
      LMLanguageModelConditionalProbability();
      *(*(a1[5] + 8) + 24) = v9 + *(*(a1[5] + 8) + 24);
      std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v11);
      ++v7;
    }

    while (v7 != v8);
    v7 = a1[6];
    v10 = a1[7];
  }

  *(*(a1[5] + 8) + 24) = *(*(a1[5] + 8) + 24) / (v10 - v7);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }
}

- (double)charLMScoreByAddingString:(id)a3 eosScore:(double *)a4
{
  v6 = a3;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x3032000000;
  v51[3] = __Block_byref_object_copy__10;
  v51[4] = __Block_byref_object_dispose__10;
  v52 = &stru_1F2BB4348;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v7 = [(CRLineWrappingContext *)self locale];
  if ([CRImageReader languageIsThai:v7])
  {
    v8 = 5;
  }

  else
  {
    v8 = 2;
  }

  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x4812000000;
  v43[3] = __Block_byref_object_copy__110;
  v43[4] = __Block_byref_object_dispose__111;
  v43[5] = &unk_1B4305E9E;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  v9 = [(CRLineWrappingContext *)self text];
  v10 = [(CRLineWrappingContext *)self text];
  v11 = [v10 length];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __60__CRLineWrappingContext_charLMScoreByAddingString_eosScore___block_invoke;
  v42[3] = &unk_1E7BC2E30;
  v42[6] = v43;
  v42[7] = &v47;
  v42[4] = self;
  v42[5] = v51;
  [v9 enumerateSubstringsInRange:0 options:v11 usingBlock:{v8 | 0x100, v42}];

  if (v48[3])
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__10;
    v40 = __Block_byref_object_dispose__10;
    v41 = objc_opt_new();
    v27 = 0;
    v28 = &v27;
    v29 = 0x4812000000;
    v30 = __Block_byref_object_copy__110;
    v31 = __Block_byref_object_dispose__111;
    v32 = &unk_1B4305E9E;
    v34 = 0;
    v35 = 0;
    __p = 0;
    v12 = [v6 length];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __60__CRLineWrappingContext_charLMScoreByAddingString_eosScore___block_invoke_2;
    v26[3] = &unk_1E7BC2E58;
    v26[4] = &v36;
    v26[5] = &v27;
    [v6 enumerateSubstringsInRange:0 options:v12 usingBlock:{v8, v26}];
    if (![v37[5] count] || v28[7] == v28[6])
    {
      v19 = -1.79769313e308;
    }

    else
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = 0;
      if (self)
      {
        Property = objc_getProperty(self, v13, 72, 1);
      }

      else
      {
        Property = 0;
      }

      v15 = Property;
      v16 = [(CRLineWrappingContext *)self locale];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __60__CRLineWrappingContext_charLMScoreByAddingString_eosScore___block_invoke_3;
      v21[3] = &unk_1E7BC2E80;
      v21[4] = v43;
      v21[5] = &v27;
      v21[6] = &v22;
      v21[7] = &v47;
      v21[8] = &v36;
      v21[9] = v51;
      v21[10] = a4;
      [v15 lockResourcesForLocale:v16 sender:self block:v21];

      v17 = *(v23 + 3);
      v18 = exp(v17);
      if (v17 >= 0.0)
      {
        v19 = -1.79769313e308;
      }

      else
      {
        v19 = v18;
      }

      _Block_object_dispose(&v22, 8);
    }

    _Block_object_dispose(&v27, 8);
    if (__p)
    {
      v34 = __p;
      operator delete(__p);
    }

    _Block_object_dispose(&v36, 8);
  }

  else
  {
    v19 = -1.79769313e308;
  }

  _Block_object_dispose(v43, 8);
  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(v51, 8);

  return v19;
}

void __60__CRLineWrappingContext_charLMScoreByAddingString_eosScore___block_invoke(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v17 = a2;
  v9 = [v17 characterAtIndex:0];
  v10.i16[0] = v9;
  v10.i16[1] = v9 & 0xFFDF;
  v11 = vdup_lane_s16(v10, 0);
  v11.i16[1] = v9 & 0xFFDF;
  if ((vmaxv_u16(vcgt_u16(0x158001F001A0017, vadd_s16(v11, 0xFF08FF28FFBFFF40))) & 1) != 0 || (v9 - 880) < 0x1C0u)
  {
    goto LABEL_6;
  }

  v12 = [v17 stringByAppendingString:*(*(a1[5] + 8) + 40)];
  v13 = *(a1[5] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = *(a1[6] + 8);
  v18 = [v17 _crConvertToUnicode32];
  std::vector<unsigned int>::push_back[abi:ne200100]((v15 + 48), &v18);
  ++*(*(a1[7] + 8) + 24);
  v16 = a1[4];
  if (v16)
  {
    v16 = *(v16 + 80);
  }

  if (*(*(a1[7] + 8) + 24) == v16)
  {
LABEL_6:
    *a7 = 1;
  }
}

void __60__CRLineWrappingContext_charLMScoreByAddingString_eosScore___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v15 = a2;
  v9 = [v15 characterAtIndex:0];
  v10.i16[0] = v9;
  v10.i16[1] = v9 & 0xFFDF;
  v11 = vdup_lane_s16(v10, 0);
  v11.i16[1] = v9 & 0xFFDF;
  if ((vmaxv_u16(vcgt_u16(0x158001F001A0017, vadd_s16(v11, 0xFF08FF28FFBFFF40))) & 1) != 0 || (v9 - 880) < 0x1C0u || ([*(*(*(a1 + 32) + 8) + 40) addObject:v15], v12 = *(*(a1 + 40) + 8), v16 = objc_msgSend(v15, "_crConvertToUnicode32"), std::vector<unsigned int>::push_back[abi:ne200100]((v12 + 48), &v16), objc_msgSend(MEMORY[0x1E696AB08], "decimalDigitCharacterSet"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v15, "_crContainsCharactersInSet:", v13), v13, (v14 & 1) == 0))
  {
    *a7 = 1;
  }
}

void __60__CRLineWrappingContext_charLMScoreByAddingString_eosScore___block_invoke_3(void *a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 lmCharacterLanguageModel] || objc_msgSend(v3, "cvnlpCharacterLanguageModel"))
  {
    if ([v3 lmCharacterLanguageModel])
    {
      v4 = *(a1[4] + 8);
      v5 = *(v4 + 48);
      v6 = *(v4 + 56);
      v7 = (v6 - 4);
      if (v5 != v6 && v7 > v5)
      {
        v9 = v5 + 4;
        do
        {
          v10 = *(v9 - 4);
          *(v9 - 4) = *v7;
          *v7-- = v10;
          v11 = v9 >= v7;
          v9 += 4;
        }

        while (!v11);
      }

      v12 = *(a1[5] + 8);
      v13 = *(v12 + 48);
      v14 = *(v12 + 56);
      if (v13 == v14)
      {
        v17 = *(v12 + 48);
      }

      else
      {
        do
        {
          [v3 lmCharacterLanguageModel];
          LMLanguageModelConditionalProbability();
          *(*(a1[6] + 8) + 24) = v15 + *(*(a1[6] + 8) + 24);
          v13 += 4;
        }

        while (v13 != v14);
        v16 = *(a1[5] + 8);
        v13 = *(v16 + 48);
        v17 = *(v16 + 56);
      }

      *(*(a1[6] + 8) + 24) = *(*(a1[6] + 8) + 24) / ((v17 - v13) >> 2);
      v26 = a1[10];
      if (v26)
      {
        *v26 = 0xFFEFFFFFFFFFFFFFLL;
        [v3 lmCharacterLanguageModel];
        LMLanguageModelConditionalProbability();
        if (v25 < 0.0)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v18 = *(*(a1[8] + 8) + 40);
      v19 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v19)
      {
        v20 = *v29;
        do
        {
          v21 = 0;
          do
          {
            if (*v29 != v20)
            {
              objc_enumerationMutation(v18);
            }

            [v3 cvnlpCharacterLanguageModel];
            CVNLPLanguageModelLogConditionalProbabilityForTokenString();
            *(*(a1[6] + 8) + 24) = *(*(a1[6] + 8) + 24) + (v22 / [*(*(a1[8] + 8) + 40) count]);
            ++v21;
          }

          while (v19 != v21);
          v19 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v19);
      }

      v23 = a1[10];
      if (v23)
      {
        *v23 = 0xFFEFFFFFFFFFFFFFLL;
        [v3 cvnlpCharacterLanguageModel];
        CVNLPLanguageModelLogConditionalProbabilityForTokenString();
        if (v24 < 0.0)
        {
          v25 = v24;
LABEL_28:
          *a1[10] = exp(v25);
        }
      }
    }
  }

  else
  {
    v27 = a1[10];
    if (v27)
    {
      *v27 = 0xFFEFFFFFFFFFFFFFLL;
    }
  }
}

- (BOOL)shouldAllowWhitespaceDelimiterForString:(id)a3
{
  v4 = a3;
  v5 = [(CRLineWrappingContext *)self locale];
  v6 = [CRImageReader languageIsThai:v5];

  if (v6)
  {
    v14 = 0.0;
    [(CRLineWrappingContext *)self charLMScoreByAddingString:v4 eosScore:&v14];
    v8 = v7;
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %@", v4];
    v13 = 0.0;
    [(CRLineWrappingContext *)self charLMScoreByAddingString:v9 eosScore:&v13];
    v11 = v8 <= v10 && v14 <= v13;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)isClassifierAvailable
{
  if (self)
  {
    self = objc_getProperty(self, a2, 112, 1);
  }

  return self != 0;
}

- (BOOL)classifierShouldCorrectOverwrappingWithEvaluation:(int64_t)a3 correctionMode:(int64_t)a4
{
  v6 = [(CRLineWrappingContext *)self isClassifierAvailable];
  v7 = a3 < 0xA;
  if (a4 != 1)
  {
    v7 = 0;
  }

  v8 = a4 == 2 || v7;
  if (!v6)
  {
    v8 = 0;
  }

  return a3 >= 2 && v8;
}

void __54__CRLineWrappingContext__probabilityThresholdOverride__block_invoke()
{
  v3[10] = *MEMORY[0x1E69E9840];
  v2[0] = @"cs-CZ";
  v2[1] = @"da-DK";
  v3[0] = &unk_1F2C01530;
  v3[1] = &unk_1F2C01530;
  v2[2] = @"id-ID";
  v2[3] = @"ms-MY";
  v3[2] = &unk_1F2C01530;
  v3[3] = &unk_1F2C01530;
  v2[4] = @"nl-NL";
  v2[5] = @"nb-NO";
  v3[4] = &unk_1F2C01540;
  v3[5] = &unk_1F2C01540;
  v2[6] = @"nn-NO";
  v2[7] = @"pl-PL";
  v3[6] = &unk_1F2C01550;
  v3[7] = &unk_1F2C01550;
  v2[8] = @"sv-SE";
  v2[9] = @"tr-TR";
  v3[8] = &unk_1F2C01540;
  v3[9] = &unk_1F2C01560;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:10];
  v1 = qword_1ED960188;
  qword_1ED960188 = v0;
}

- (BOOL)classifierShouldInsertLineBreakForEvaluationResult:(id)a3 threshold:(float)a4 useThresholdOverride:(BOOL)a5
{
  v5 = a5;
  v31 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (self && objc_getProperty(self, v8, 112, 1))
  {
    v11 = [objc_getProperty(self v10];
    v12 = [v9 featureInTest];
    v13 = [(CRLineWrappingContext *)self lastFeature];
    [v9 imageSize];
    v14 = [CRWrappingClassifierFeatureExtractor extractFeatureMultiArrayForLocale:v11 textFeature:v12 lastFeature:v13 evaluation:v9 imageSize:?];

    if (v14)
    {
      v15 = [[CRLineWrappingClassifierInput alloc] initWithFeatures:v14];
      v28 = 0;
      v17 = [objc_getProperty(self v16];
      v18 = v28;
      if (v18)
      {
        v19 = CROSLogForCategory(4);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = [v18 description];
          *buf = 138412290;
          v30 = v20;
          _os_log_impl(&dword_1B40D2000, v19, OS_LOG_TYPE_ERROR, "Error occured during line wrapping classification: %@", buf, 0xCu);
        }
      }

      if (v17)
      {
        if (v5)
        {
          if (qword_1ED960190 != -1)
          {
            dispatch_once(&qword_1ED960190, &__block_literal_global_132_0);
          }

          v21 = qword_1ED960188;
          v22 = [(CRLineWrappingContext *)self locale];
          v23 = [v21 objectForKeyedSubscript:v22];

          if (v23)
          {
            [v23 floatValue];
            a4 = v24;
          }
        }

        [v17 wrappingProbability];
        v26 = v25 <= a4;
      }

      else
      {
        v26 = 1;
      }
    }

    else
    {
      v18 = CROSLogForCategory(4);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1B40D2000, v18, OS_LOG_TYPE_ERROR, "Could not extract features for classifier", buf, 2u);
      }

      v26 = 1;
    }
  }

  else
  {
    v14 = CROSLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B40D2000, v14, OS_LOG_TYPE_FAULT, "Unexpected call when the classifier is unavailable.", buf, 2u);
    }

    v26 = 1;
  }

  return v26;
}

- (void)dealloc
{
  v2 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 72, 1);
  }

  v3 = self;
  v4 = [(CRLineWrappingContext *)v2 locale];
  [(CRLineWrappingContext *)v3 removeSubscriber:v2 forLocale:v4];

  v5.receiver = v2;
  v5.super_class = CRLineWrappingContext;
  [(CRLineWrappingContext *)&v5 dealloc];
}

- (BOOL)usesWordTokens
{
  v2 = [(CRLineWrappingContext *)self locale];
  v3 = [CRLineWrappingContext _usesWordTokensForLocale:v2];

  return v3;
}

- (BOOL)shouldConsiderLetterCase
{
  v3 = [(CRLineWrappingContext *)self locale];
  if ([CRImageReader languageIsLatin:v3])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(CRLineWrappingContext *)self locale];
    v4 = [CRImageReader languageIsCyrillic:v5];
  }

  return v4;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end