@interface TLTransliterator
- (TLTransliterator)initWithLocale:(id)locale;
- (TLTransliterator)initWithParameters:(id)parameters;
- (id)generateCandidatesForInputWord:(id)word candidateContext:(id)context maxCandidatesCount:(int64_t)count;
- (id)generateCandidatesForInputWord:(id)word candidateContextStrings:(id)strings maxCandidatesCount:(int64_t)count;
@end

@implementation TLTransliterator

- (TLTransliterator)initWithLocale:(id)locale
{
  localeCopy = locale;
  v5 = [[TLTransliteratorInitParameters alloc] initWithLocale:localeCopy];
  v6 = [(TLTransliterator *)self initWithParameters:v5];

  return v6;
}

- (TLTransliterator)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v6.receiver = self;
  v6.super_class = TLTransliterator;
  if ([(TLTransliterator *)&v6 init])
  {
    [parametersCopy locale];
    objc_claimAutoreleasedReturnValue();
    [parametersCopy modelURL];
    objc_claimAutoreleasedReturnValue();
    [parametersCopy useLanguageModel];
    [parametersCopy useSeq2SeqModel];
    operator new();
  }

  return 0;
}

- (id)generateCandidatesForInputWord:(id)word candidateContext:(id)context maxCandidatesCount:(int64_t)count
{
  v26 = *MEMORY[0x277D85DE8];
  wordCopy = word;
  contextCopy = context;
  v10 = objc_alloc(MEMORY[0x277CBEB18]);
  candidates = [contextCopy candidates];
  v12 = [v10 initWithCapacity:{objc_msgSend(candidates, "count")}];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  candidates2 = [contextCopy candidates];
  v14 = [candidates2 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(candidates2);
        }

        transliteratedWord = [*(*(&v21 + 1) + 8 * i) transliteratedWord];
        [v12 addObject:transliteratedWord];
      }

      v14 = [candidates2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  v18 = [(TLTransliterator *)self generateCandidatesForInputWord:wordCopy candidateContextStrings:v12 maxCandidatesCount:count];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)generateCandidatesForInputWord:(id)word candidateContextStrings:(id)strings maxCandidatesCount:(int64_t)count
{
  v43 = *MEMORY[0x277D85DE8];
  wordCopy = word;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = strings;
  v6 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v6)
  {
    v7 = *v35;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(obj);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, [*(*(&v34 + 1) + 8 * i) UTF8String]);
        v9 = v39;
        if (v39 >= v40)
        {
          v11 = 0xAAAAAAAAAAAAAAABLL * ((v39 - v38) >> 3);
          v12 = v11 + 1;
          if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v40 - v38) >> 3) > v12)
          {
            v12 = 0x5555555555555556 * ((v40 - v38) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v40 - v38) >> 3) >= 0x555555555555555)
          {
            v13 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v13 = v12;
          }

          v41.__end_cap_.__value_ = &v38;
          if (v13)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v38, v13);
          }

          v14 = 8 * ((v39 - v38) >> 3);
          v15 = *__p;
          *(v14 + 16) = v33;
          *v14 = v15;
          __p[1] = 0;
          v33 = 0;
          __p[0] = 0;
          v16 = 24 * v11 + 24;
          v17 = (24 * v11 - (v39 - v38));
          memcpy((v14 - (v39 - v38)), v38, v39 - v38);
          v18 = v38;
          v19 = v40;
          v38 = v17;
          v39 = v16;
          v40 = 0;
          v41.__first_ = v18;
          v41.__end_ = v18;
          v41.__end_cap_.__value_ = v19;
          v41.__begin_ = v18;
          std::__split_buffer<std::string>::~__split_buffer(&v41);
          v39 = v16;
          if (SHIBYTE(v33) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          v10 = *__p;
          *(v39 + 2) = v33;
          *v9 = v10;
          v39 = v9 + 24;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v6);
  }

  ptr = self->_compositeTransliterator.__ptr_;
  v21 = wordCopy;
  std::string::basic_string[abi:ne200100]<0>(__p, [wordCopy UTF8String]);
  TLCompositeTransliterator::getTransliterationCandidates(ptr, &v38, __p, count, &v41);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p[0]);
  }

  array = [MEMORY[0x277CBEB18] array];
  first = v41.__first_;
  for (j = v41.__begin_; first != j; first = (first + 80))
  {
    v25 = [TLTransliteratorCandidate createWithCompositeTransliteratorCandidate:first];
    [array addObject:v25];
  }

  __p[0] = &v41;
  std::vector<TLCompositeTransliteratorCandidate>::__destroy_vector::operator()[abi:ne200100](__p);
  v41.__first_ = &v38;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v41);

  v26 = *MEMORY[0x277D85DE8];

  return array;
}

@end