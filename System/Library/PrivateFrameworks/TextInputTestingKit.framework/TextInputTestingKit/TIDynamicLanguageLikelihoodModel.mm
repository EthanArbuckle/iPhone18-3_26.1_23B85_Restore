@interface TIDynamicLanguageLikelihoodModel
- (TIDynamicLanguageLikelihoodModel)init;
- (float)_priorProbabilityForLanguage:(const void *)language;
- (id).cxx_construct;
- (id)rankedLanguagesForRecipient:(id)recipient;
- (void)addEvidence:(id)evidence forRecipient:(id)recipient language:(id)language;
- (void)addEvidence:(id)evidence timestamp:(double)timestamp adaptationType:(int)type forRecipient:(id)recipient app:(id)app language:(id)language;
- (void)priorProbabilityForLanguages:(id)languages recipient:(id)recipient handler:(id)handler;
@end

@implementation TIDynamicLanguageLikelihoodModel

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  return self;
}

- (void)priorProbabilityForLanguages:(id)languages recipient:(id)recipient handler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  languagesCopy = languages;
  handlerCopy = handler;
  v23 = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = languagesCopy;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v10)
  {
    v11 = *v20;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v20 != v11)
      {
        objc_enumerationMutation(v9);
      }

      v13 = *(*(&v19 + 1) + 8 * v12);
      v14 = v13;
      std::string::basic_string[abi:nn200100]<0>(__p, [v13 UTF8String]);
      [(TIDynamicLanguageLikelihoodModel *)self _priorProbabilityForLanguage:__p];
      v16 = v15;
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      handlerCopy[2](handlerCopy, v13, &v23, v16);
      if (v23)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (float)_priorProbabilityForLanguage:(const void *)language
{
  p_end_node = &self->m_counts_for_language.__tree_.__end_node_;
  left = self->m_counts_for_language.__tree_.__end_node_.__left_;
  v5 = 0.0;
  if (left)
  {
    v8 = &self->m_counts_for_language.__tree_.__end_node_;
    do
    {
      v9 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&left[4].__left_, language);
      if ((v9 & 0x80u) == 0)
      {
        v8 = left;
      }

      left = *(&left->__left_ + ((v9 >> 4) & 8));
    }

    while (left);
    if (v8 != p_end_node && (std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(language, &v8[4].__left_) & 0x80) == 0)
    {
      m_total_counts = self->m_total_counts;
      if (m_total_counts >= 1)
      {
        return v8[7].__left_ / m_total_counts;
      }
    }
  }

  return v5;
}

- (id)rankedLanguagesForRecipient:(id)recipient
{
  recipientCopy = recipient;
  array = [MEMORY[0x277CBEB18] array];
  v36 = 0;
  v6 = 0uLL;
  v35 = 0u;
  p_m_counts_for_language = &self->m_counts_for_language;
  begin_node = self->m_counts_for_language.__tree_.__begin_node_;
  p_end_node = &self->m_counts_for_language.__tree_.__end_node_;
  if (begin_node != &self->m_counts_for_language.__tree_.__end_node_)
  {
    selfCopy = self;
    v10 = 0;
    do
    {
      if (v10 >= v36)
      {
        v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v35) >> 3) + 1;
        if (v12 > 0xAAAAAAAAAAAAAAALL)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        if (0x5555555555555556 * ((v36 - v35) >> 3) > v12)
        {
          v12 = 0x5555555555555556 * ((v36 - v35) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v36 - v35) >> 3) >= 0x555555555555555)
        {
          v13 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v13 = v12;
        }

        v37.__end_cap_.__value_ = &v35;
        if (v13)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v13);
        }

        begin = (8 * ((v10 - v35) >> 3));
        v37.__first_ = 0;
        v37.__begin_ = begin;
        value = 0;
        v37.__end_ = begin;
        v37.__end_cap_.__value_ = 0;
        if (SHIBYTE(begin_node[6].__left_) < 0)
        {
          std::string::__init_copy_ctor_external(begin, begin_node[4].__left_, begin_node[5].__left_);
          begin = v37.__begin_;
          end = v37.__end_;
          value = v37.__end_cap_.__value_;
        }

        else
        {
          v16 = *&begin_node[4].__left_;
          *(8 * ((v10 - v35) >> 3) + 0x10) = begin_node[6];
          *&begin->__r_.__value_.__l.__data_ = v16;
          end = begin;
        }

        v10 = end + 1;
        v18 = begin - (*(&v35 + 1) - v35);
        memcpy(v18, v35, *(&v35 + 1) - v35);
        v19 = v35;
        v20 = v36;
        *&v35 = v18;
        *(&v35 + 1) = v10;
        v36 = value;
        v37.__end_ = v19;
        v37.__end_cap_.__value_ = v20;
        v37.__first_ = v19;
        v37.__begin_ = v19;
        std::__split_buffer<std::string>::~__split_buffer(&v37);
      }

      else
      {
        if (SHIBYTE(begin_node[6].__left_) < 0)
        {
          std::string::__init_copy_ctor_external(v10, begin_node[4].__left_, begin_node[5].__left_);
        }

        else
        {
          v11 = *&begin_node[4].__left_;
          v10->__r_.__value_.__r.__words[2] = begin_node[6].__left_;
          *&v10->__r_.__value_.__l.__data_ = v11;
        }

        ++v10;
      }

      *(&v35 + 1) = v10;
      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v22 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v22 = begin_node[2].__left_;
          v23 = v22->__left_ == begin_node;
          begin_node = v22;
        }

        while (!v23);
      }

      begin_node = v22;
    }

    while (v22 != p_end_node);
    v6 = v35;
    self = selfCopy;
  }

  v24 = *(&v6 + 1);
  v25 = v6;
  v26 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((*(&v6 + 1) - v6) >> 3));
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __64__TIDynamicLanguageLikelihoodModel_rankedLanguagesForRecipient___block_invoke;
  v34[3] = &unk_279DA0540;
  v34[4] = self;
  if (*(&v6 + 1) == v6)
  {
    v27 = 0;
  }

  else
  {
    v27 = v26;
  }

  v37.__first_ = v34;
  std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(std::string const&,std::string const&),std::string*,false>(v25, v24, &v37, v27, 1);

  v28 = *(&v35 + 1);
  for (i = v35; i != v28; ++i)
  {
    v37.__first_ = i;
    if (std::__tree<std::__value_type<std::string,long>,std::__map_value_compare<std::string,std::__value_type<std::string,long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(p_m_counts_for_language, i)[7] >= 5)
    {
      v30 = i;
      if (SHIBYTE(i->__r_.__value_.__r.__words[2]) < 0)
      {
        v30 = i->__r_.__value_.__r.__words[0];
      }

      v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:v30];
      [array addObject:v31];
    }
  }

  v37.__first_ = &v35;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v37);

  return array;
}

- (void)addEvidence:(id)evidence forRecipient:(id)recipient language:(id)language
{
  evidenceCopy = evidence;
  linguisticTagger = [(TIDynamicLanguageLikelihoodModel *)self linguisticTagger];
  [linguisticTagger setString:evidenceCopy];

  linguisticTagger2 = [(TIDynamicLanguageLikelihoodModel *)self linguisticTagger];
  v9 = [evidenceCopy length];
  v10 = *MEMORY[0x277CCA3D8];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__TIDynamicLanguageLikelihoodModel_addEvidence_forRecipient_language___block_invoke;
  v11[3] = &unk_279DA05B8;
  v11[4] = self;
  [linguisticTagger2 enumerateTagsInRange:0 scheme:v9 options:v10 usingBlock:{14, v11}];
}

void __70__TIDynamicLanguageLikelihoodModel_addEvidence_forRecipient_language___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (([v3 isEqualToString:@"und"] & 1) == 0)
    {
      std::string::basic_string[abi:nn200100]<0>(__p, [v4 UTF8String]);
      v5 = *(a1 + 32);
      v9 = __p;
      v6 = std::__tree<std::__value_type<std::string,long>,std::__map_value_compare<std::string,std::__value_type<std::string,long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v5 + 8, __p);
      ++v6[7];
      ++*(*(a1 + 32) + 32);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

- (void)addEvidence:(id)evidence timestamp:(double)timestamp adaptationType:(int)type forRecipient:(id)recipient app:(id)app language:(id)language
{
  evidenceCopy = evidence;
  linguisticTagger = [(TIDynamicLanguageLikelihoodModel *)self linguisticTagger];
  [linguisticTagger setString:evidenceCopy];

  linguisticTagger2 = [(TIDynamicLanguageLikelihoodModel *)self linguisticTagger];
  v12 = [evidenceCopy length];
  v13 = *MEMORY[0x277CCA3D8];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __99__TIDynamicLanguageLikelihoodModel_addEvidence_timestamp_adaptationType_forRecipient_app_language___block_invoke;
  v14[3] = &unk_279DA05B8;
  v14[4] = self;
  [linguisticTagger2 enumerateTagsInRange:0 scheme:v12 options:v13 usingBlock:{14, v14}];
}

void __99__TIDynamicLanguageLikelihoodModel_addEvidence_timestamp_adaptationType_forRecipient_app_language___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (([v3 isEqualToString:@"und"] & 1) == 0)
    {
      std::string::basic_string[abi:nn200100]<0>(__p, [v4 UTF8String]);
      v5 = *(a1 + 32);
      v9 = __p;
      v6 = std::__tree<std::__value_type<std::string,long>,std::__map_value_compare<std::string,std::__value_type<std::string,long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v5 + 8, __p);
      ++v6[7];
      ++*(*(a1 + 32) + 32);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

- (TIDynamicLanguageLikelihoodModel)init
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = TIDynamicLanguageLikelihoodModel;
  v2 = [(TIDynamicLanguageLikelihoodModel *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CCAAE8]);
    v9[0] = *MEMORY[0x277CCA3D8];
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    v5 = [v3 initWithTagSchemes:v4 options:0];
    linguisticTagger = v2->_linguisticTagger;
    v2->_linguisticTagger = v5;
  }

  return v2;
}

@end