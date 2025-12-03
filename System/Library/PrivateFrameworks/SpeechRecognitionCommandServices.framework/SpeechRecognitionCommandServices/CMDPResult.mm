@interface CMDPResult
+ (vector<std::vector<std::vector<std::unique_ptr<CMDPToken>>>,)CMDPTokenSausageFromAFSpeechPhraseArray:(id)array;
+ (vector<std::vector<std::vector<std::unique_ptr<CMDPToken>>>,)CMDPTokenSausageFromCFTokenSausage:(id)sausage;
- (CMDPResult)initWithAFSpeechPhraseArray:(id)array forLocaleIdentifier:(id)identifier;
- (CMDPResult)initWithTokenSausage:(__CFArray *)sausage forLocaleIdentifier:(id)identifier;
- (CMDPResult)initWithTokenSausageVec:(void *)vec forLocaleIdentifier:(id)identifier;
- (id).cxx_construct;
- (id)createArrayFromNBestResults:(const void *)results withGrammarData:(id)data;
- (id)initWithTokenSausageVec:forLocaleIdentifier:;
- (id)matchWithGrammars:(id)grammars winningIndex:(int *)index winningDistance:(float *)distance;
- (uint64_t)initWithTokenSausageVec:forLocaleIdentifier:;
- (void)initWithTokenSausageVec:forLocaleIdentifier:;
@end

@implementation CMDPResult

- (CMDPResult)initWithTokenSausage:(__CFArray *)sausage forLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = CMDPResult;
  v7 = [(CMDPResult *)&v11 init];
  if (v7)
  {
    [CMDPResult CMDPTokenSausageFromCFTokenSausage:sausage];
    v8 = [(CMDPResult *)v7 initWithTokenSausageVec:v10 forLocaleIdentifier:identifierCopy];
    v12 = v10;
    std::vector<std::vector<std::vector<std::unique_ptr<CMDPToken>>>>::__destroy_vector::operator()[abi:ne200100](&v12);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CMDPResult)initWithAFSpeechPhraseArray:(id)array forLocaleIdentifier:(id)identifier
{
  arrayCopy = array;
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = CMDPResult;
  v8 = [(CMDPResult *)&v11 init];
  if (v8)
  {
    [CMDPResult CMDPTokenSausageFromAFSpeechPhraseArray:arrayCopy];
    v8 = [(CMDPResult *)v8 initWithTokenSausageVec:v10 forLocaleIdentifier:identifierCopy];
    v12 = v10;
    std::vector<std::vector<std::vector<std::unique_ptr<CMDPToken>>>>::__destroy_vector::operator()[abi:ne200100](&v12);
  }

  return v8;
}

- (CMDPResult)initWithTokenSausageVec:(void *)vec forLocaleIdentifier:(id)identifier
{
  v10 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = CMDPResult;
  if ([(CMDPResult *)&v9 init])
  {
    v6 = *MEMORY[0x277CBECE8];
    if (identifierCopy)
    {
      CFLocaleCreate(v6, identifierCopy);
      operator new();
    }

    CFLocaleCreate(v6, @"en_US");
    operator new();
  }

  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)matchWithGrammars:(id)grammars winningIndex:(int *)index winningDistance:(float *)distance
{
  v24 = *MEMORY[0x277D85DE8];
  grammarsCopy = grammars;
  *index = -1;
  *distance = 3.4028e38;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = grammarsCopy;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = 0;
    v12 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        cmdp_fst_util::compose(self->_resultFst.__ptr_, [*(*(&v19 + 1) + 8 * i) grammarFst], v18);
        isEmpty = cmdp_fst_util::isEmpty(v18[0]);
        v15 = v18[0];
        if (!isEmpty)
        {
          cmdp_fst_util::shortestDistance(v18[0]);
        }

        v18[0] = 0;
        if (v15)
        {
          (*(*v15 + 8))(v15);
        }

        ++v11;
      }

      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  else
  {
  }

  v16 = *MEMORY[0x277D85DE8];

  return 0;
}

- (id)createArrayFromNBestResults:(const void *)results withGrammarData:(id)data
{
  v55 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v47 = objc_opt_new();
  v49 = objc_opt_new();
  v5 = *results;
  if (*(results + 1) == *results)
  {
    std::vector<std::vector<std::pair<std::string,std::string>>>::__throw_out_of_range[abi:ne200100]();
  }

  v48 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v6 = *v5;
  if (v5[1] == *v5)
  {
    goto LABEL_75;
  }

  v7 = 0;
  v8 = 0;
  v45 = 0;
  v9 = MEMORY[0x277D86220];
  while (2)
  {
    v10 = 48 * v7 + 95;
    while (1)
    {
      v11 = v6 + v10;
      v12 = strlen("<eps>");
      v13 = *(v6 + v10 - 48);
      if (v13 < 0)
      {
        break;
      }

      if (v12 != v13)
      {
        v15 = (v6 + v10 - 71);
        goto LABEL_19;
      }

      if (memcmp((v6 + v10 - 71), "<eps>", v12))
      {
        v15 = (v6 + 48 * v7 + 24);
LABEL_19:
        v16 = (v6 + v10 - 48);
        goto LABEL_20;
      }

LABEL_12:
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = (v11 - 95);
        if (*(v6 + v10 - 72) < 0)
        {
          v14 = *v14;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v14;
        _os_log_impl(&dword_26B44D000, v9, OS_LOG_TYPE_DEFAULT, "Deleting Added Word %s", &buf, 0xCu);
      }

      ++v7;
      v6 = *v5;
      v10 += 48;
      v8 = 1;
      if (0xAAAAAAAAAAAAAAABLL * ((v5[1] - *v5) >> 4) <= v7)
      {
        goto LABEL_74;
      }
    }

    if (v12 == *(v11 - 63))
    {
      if (v12 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v15 = *(v6 + v10 - 71);
      if (memcmp(v15, "<eps>", v12))
      {
        goto LABEL_19;
      }

      goto LABEL_12;
    }

    v16 = (v6 + v10 - 48);
    v15 = *(v6 + v10 - 71);
LABEL_20:
    v51 = [dataCopy objectAtIndex:atoi(v15)];
    if (v45)
    {
LABEL_23:
      v45 = 1;
    }

    else
    {
      commandIdentifier = [v51 commandIdentifier];
      v18 = commandIdentifier == 0;

      if (!v18)
      {
        commandIdentifier2 = [v51 commandIdentifier];
        [v47 setObject:commandIdentifier2 forKey:kCMDPMatchedCommandIdentifier[0]];

        goto LABEL_23;
      }

      v45 = 0;
    }

    v20 = (v6 + v10 - 95);
    v21 = strlen("<eps>");
    v22 = *(v6 + v10 - 72);
    if (v22 < 0)
    {
      if (v21 != *(v6 + v10 - 87))
      {
        v20 = *v20;
        goto LABEL_37;
      }

      if (v21 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v20 = *v20;
    }

    else if (v21 != v22)
    {
LABEL_37:
      v24 = *(self->_resultNodes.__begin_ + atoi(v20));
      goto LABEL_38;
    }

    if (memcmp(v20, "<eps>", v21))
    {
      goto LABEL_37;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v23 = (v6 + v10 - 71);
      if (*v16 < 0)
      {
        v23 = *v23;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v23;
      _os_log_impl(&dword_26B44D000, v9, OS_LOG_TYPE_DEFAULT, "Adding Deleted Word %s", &buf, 0xCu);
      v24 = 0;
      v8 = 1;
    }

    else
    {
      v24 = 0;
      v8 = 1;
    }

LABEL_38:
    builtInLMIdentifier = [v51 builtInLMIdentifier];
    if (0xAAAAAAAAAAAAAAABLL * ((v5[1] - *v5) >> 4) <= ++v7)
    {
LABEL_47:
      builtInLMIdentifier2 = 0;
      goto LABEL_51;
    }

    v26 = (*v5 + v10);
    v27 = strlen("<eps>");
    v29 = v26 - 23;
    v28 = *v26;
    if (v28 < 0)
    {
      if (v27 != *(v26 - 15))
      {
        v29 = *v29;
        goto LABEL_50;
      }

      if (v27 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v29 = *v29;
      goto LABEL_46;
    }

    if (v27 == v28)
    {
LABEL_46:
      if (memcmp(v29, "<eps>", v27))
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }

LABEL_50:
    v30 = [dataCopy objectAtIndex:atoi(v29)];
    builtInLMIdentifier2 = [v30 builtInLMIdentifier];

LABEL_51:
    word = [v51 word];
    v32 = word == 0;

    if (!v32)
    {
      word2 = [v51 word];
      goto LABEL_53;
    }

    if (v24)
    {
      v34 = MEMORY[0x277CCACA8];
      if (*(v24 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&buf, *v24, *(v24 + 1));
      }

      else
      {
        v35 = *v24;
        buf.__r_.__value_.__r.__words[2] = *(v24 + 2);
        *&buf.__r_.__value_.__l.__data_ = v35;
      }

      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      word2 = [v34 stringWithUTF8String:p_buf];
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

LABEL_53:
      if (builtInLMIdentifier)
      {
        [v48 appendString:word2];
        if (builtInLMIdentifier2 && builtInLMIdentifier == builtInLMIdentifier2)
        {
          [v48 appendString:@" "];
        }

        else
        {
          v37 = MEMORY[0x277CBEAC0];
          v38 = [MEMORY[0x277CCACA8] stringWithString:v48];
          v39 = [v37 dictionaryWithObjectsAndKeys:{v38, kCMDPMatchedElementText[0], builtInLMIdentifier, kCMDPMatchedElementCategoryIdentifier, 0}];

          [v49 addObject:v39];
          [v48 setString:&stru_287C0A5E8];
        }
      }

      else
      {
        v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{word2, kCMDPMatchedElementText[0], 0}];
        [v49 addObject:v36];
      }
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CMDPResult createArrayFromNBestResults:v53 withGrammarData:?];
      }

      word2 = 0;
    }

    v6 = *v5;
    if (0xAAAAAAAAAAAAAAABLL * ((v5[1] - *v5) >> 4) > v7)
    {
      continue;
    }

    break;
  }

  if (v8)
  {
LABEL_74:
    v41 = kCMDPClosestMatchedElements;
    goto LABEL_76;
  }

LABEL_75:
  v41 = kCMDPMatchedElements;
LABEL_76:
  [v47 setObject:v49 forKey:*v41];

  v42 = *MEMORY[0x277D85DE8];

  return v47;
}

+ (vector<std::vector<std::vector<std::unique_ptr<CMDPToken>>>,)CMDPTokenSausageFromCFTokenSausage:(id)sausage
{
  v4 = a4;
  v5 = 0;
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  while (1)
  {
    result = CFArrayGetCount(v4);
    if (result <= v5)
    {
      break;
    }

    memset(v17, 0, sizeof(v17));
    v7 = v5;
    ValueAtIndex = CFArrayGetValueAtIndex(v4, v5);
    for (i = 0; i < CFArrayGetCount(ValueAtIndex); ++i)
    {
      v10 = CFArrayGetValueAtIndex(ValueAtIndex, i);
      memset(v16, 0, sizeof(v16));
      if (CFArrayGetCount(v10) > 0)
      {
        v11 = CFArrayGetValueAtIndex(v10, 0);
        v12 = MEMORY[0x26D678450]();
        cmdp_string::CreateCppStringFromCFString(v12, 0, __p);
        MEMORY[0x26D678440](v11);
        MEMORY[0x26D678420](v11);
        MEMORY[0x26D678430](v11);
        MEMORY[0x26D678410](v11);
        EARCSpeechRecognitionTokenHasSpaceAfter();
        operator new();
      }

      std::vector<std::vector<std::unique_ptr<CMDPToken>>>::push_back[abi:ne200100](v17, v16);
      v18.__r_.__value_.__r.__words[0] = v16;
      std::vector<std::unique_ptr<CMDPToken>>::__destroy_vector::operator()[abi:ne200100](&v18);
    }

    std::vector<std::vector<std::vector<std::unique_ptr<CMDPToken>>>>::push_back[abi:ne200100](&retstr->var0, v17);
    v18.__r_.__value_.__r.__words[0] = v17;
    std::vector<std::vector<std::unique_ptr<CMDPToken>>>::__destroy_vector::operator()[abi:ne200100](&v18);
    v5 = v7 + 1;
    v4 = a4;
  }

  return result;
}

+ (vector<std::vector<std::vector<std::unique_ptr<CMDPToken>>>,)CMDPTokenSausageFromAFSpeechPhraseArray:(id)array
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a4;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  v20 = retstr;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v6)
  {
    v21 = *v38;
    do
    {
      v23 = 0;
      v19 = v6;
      do
      {
        if (*v38 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v37 + 1) + 8 * v23);
        memset(v36, 0, sizeof(v36));
        interpretations = [v7 interpretations];
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v24 = interpretations;
        v9 = [v24 countByEnumeratingWithState:&v32 objects:v43 count:16];
        if (v9)
        {
          v25 = *v33;
          do
          {
            v26 = v9;
            for (i = 0; i != v26; ++i)
            {
              if (*v33 != v25)
              {
                objc_enumerationMutation(v24);
              }

              v11 = *(*(&v32 + 1) + 8 * i);
              memset(v31, 0, sizeof(v31));
              tokens = [v11 tokens];
              v29 = 0u;
              v30 = 0u;
              v27 = 0u;
              v28 = 0u;
              v13 = tokens;
              if ([v13 countByEnumeratingWithState:&v27 objects:v42 count:16])
              {
                *v28;
                *v28;
                v14 = **(&v27 + 1);
                text = [v14 text];
                v16 = text;
                [text UTF8String];
                [v14 startTime];
                [v14 endTime];
                [v14 silenceStartTime];
                [v14 confidenceScore];
                [v14 removeSpaceAfter];
                [v14 removeSpaceBefore];
                std::make_unique[abi:ne200100]<CMDPToken,char const*,double,double,double,long,BOOL,BOOL,0>();
              }

              std::vector<std::vector<std::unique_ptr<CMDPToken>>>::push_back[abi:ne200100](v36, v31);
              v41 = v31;
              std::vector<std::unique_ptr<CMDPToken>>::__destroy_vector::operator()[abi:ne200100](&v41);
            }

            v9 = [v24 countByEnumeratingWithState:&v32 objects:v43 count:16];
          }

          while (v9);
        }

        std::vector<std::vector<std::vector<std::unique_ptr<CMDPToken>>>>::push_back[abi:ne200100](&v20->var0, v36);
        v31[0] = v36;
        std::vector<std::vector<std::unique_ptr<CMDPToken>>>::__destroy_vector::operator()[abi:ne200100](v31);
        ++v23;
      }

      while (v23 != v19);
      v6 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v6);
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 7) = 0;
  *(self + 8) = 0u;
  *(self + 24) = 0u;
  *(self + 5) = 0;
  *(self + 6) = self + 56;
  return self;
}

- (void)initWithTokenSausageVec:forLocaleIdentifier:
{
  v2 = *a2;
  v3 = *(self + 8);
  operator new();
}

- (id)initWithTokenSausageVec:forLocaleIdentifier:
{
  *a2 = &unk_287BF10F8;
  result = *(self + 8);
  a2[1] = result;
  return result;
}

- (uint64_t)initWithTokenSausageVec:forLocaleIdentifier:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

@end