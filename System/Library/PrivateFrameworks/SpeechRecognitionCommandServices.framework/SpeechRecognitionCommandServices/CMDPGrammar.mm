@interface CMDPGrammar
- (CMDPGrammar)initWithCommandTreeDictionary:(id)dictionary forLocaleIdentifier:(id)identifier;
- (id).cxx_construct;
- (void)addPhrase:(id)phrase toFst:(void *)fst withArc:(_FstArc)arc;
- (void)buildGrammarFst:(void *)fst forCommandTree:(id)tree withFstArcDictionary:(id)dictionary;
- (void)grammarFst;
@end

@implementation CMDPGrammar

- (CMDPGrammar)initWithCommandTreeDictionary:(id)dictionary forLocaleIdentifier:(id)identifier
{
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = CMDPGrammar;
  if ([(CMDPGrammar *)&v10 init])
  {
    v8 = *MEMORY[0x277CBECE8];
    if (identifierCopy)
    {
      CFLocaleCreate(v8, identifierCopy);
      operator new();
    }

    CFLocaleCreate(v8, @"en_US");
    operator new();
  }

  return 0;
}

- (void)grammarFst
{
  if (self->_rebuildGrammar)
  {
    if (self->_labelFstPairVector.__begin_ != self->_labelFstPairVector.__end_)
    {
      cmdp_fst_util::replace(self->_grammarFst.__ptr_, &self->_labelFstPairVector.__begin_);
    }

    self->_rebuildGrammar = 0;
  }

  return self->_grammarFst.__ptr_;
}

- (void)buildGrammarFst:(void *)fst forCommandTree:(id)tree withFstArcDictionary:(id)dictionary
{
  treeCopy = tree;
  dictionaryCopy = dictionary;
  v9 = [treeCopy objectForKey:kSRCSCommandParseDictionaryKeyAttributes[0]];
  v10 = [v9 objectForKey:kSRCSCommandParseAttributeOptional[0]];
  bOOLValue = [v10 BOOLValue];

  v11 = [dictionaryCopy objectForKey:treeCopy];
  arcValue = [v11 arcValue];

  v12 = [treeCopy objectForKey:kSRCSCommandParseDictionaryKeyText[0]];

  if (v12)
  {
    v13 = [treeCopy objectForKey:kSRCSCommandParseDictionaryKeyText[0]];
    [(CMDPGrammar *)self addPhrase:v13 toFst:fst withArc:arcValue];

    goto LABEL_3;
  }

  v14 = [treeCopy objectForKey:kSRCSCommandParseDictionaryKeyIsBuiltInIdentifier[0]];
  if ([v14 BOOLValue])
  {
    v15 = [treeCopy objectForKey:kSRCSCommandParseDictionaryKeyIdentifier[0]];
    if ([v15 isEqualToString:@"BuiltInLM.Dictation"])
    {

LABEL_21:
      v25 = [treeCopy objectForKey:kSRCSCommandParseDictionaryKeyIdentifier[0]];
      v26 = [[CMDPGrammarData alloc] initWithGrammarDataWord:0 lmIdentifer:v25 commandIdentifier:self->_currentCommandIdentifier];
      [(NSMutableArray *)self->_grammarDataArray addObject:v26];
      nextLabelIndex = self->_nextLabelIndex;
      self->_nextLabelIndex = nextLabelIndex + 1;
      std::to_string(&__p, nextLabelIndex);
      v28 = std::string::insert(&__p, 0, "$$ADLIB");
      v29 = *&v28->__r_.__value_.__l.__data_;
      v57 = v28->__r_.__value_.__r.__words[2];
      *v56 = v29;
      v28->__r_.__value_.__l.__size_ = 0;
      v28->__r_.__value_.__r.__words[2] = 0;
      v28->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      [(CMDPGrammar *)self addAdlibFstWithLabel:v56 outputIndex:[(NSMutableArray *)self->_grammarDataArray count]- 1];
      CMDPFst::addArc(fst, arcValue, SHIDWORD(arcValue), v56, v56, 0.0);
      if (SHIBYTE(v57) < 0)
      {
        operator delete(v56[0]);
      }

      goto LABEL_3;
    }

    v23 = [treeCopy objectForKey:kSRCSCommandParseDictionaryKeyIdentifier[0]];
    v24 = [v23 isEqualToString:@"BuiltInLM.Dictation.2"];

    if (v24)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v16 = [treeCopy objectForKey:kSRCSCommandParseDictionaryKeyChildren[0]];

  if (v16)
  {
    v17 = [treeCopy objectForKey:kSRCSCommandParseDictionaryKeyIdentifier[0]];

    if (v17)
    {
      v18 = [treeCopy objectForKey:kSRCSCommandParseDictionaryKeyIdentifier[0]];
      v19 = [treeCopy objectForKey:kSRCSCommandParseDictionaryKeyIsBuiltInIdentifier[0]];
      bOOLValue2 = [v19 BOOLValue];

      v21 = 80;
      if (bOOLValue2)
      {
        v21 = 72;
      }

      v22 = *(&self->super.isa + v21);
      *(&self->super.isa + v21) = v18;

      v49 = bOOLValue2;
      LODWORD(v17) = bOOLValue2 ^ 1;
    }

    else
    {
      v49 = 0;
    }

    v30 = [treeCopy objectForKey:kSRCSCommandParseDictionaryKeyChildren[0]];
    v48 = v17;
    v31 = [v30 count];
    v32 = v31;
    if (v31)
    {
      v33 = 0;
      v50 = v31 - 2;
      v51 = v31 - 1;
      do
      {
        v34 = [v30 objectAtIndex:v33];
        v35 = [treeCopy objectForKey:kSRCSCommandParseDictionaryKeyAttributes[0]];
        v36 = [v35 objectForKey:kSRCSCommandParseAttributePath[0]];

        if (v36)
        {
          if (v33)
          {
            if (v51 == v33)
            {
              v37 = [v30 objectAtIndex:v50];
              v38 = [dictionaryCopy objectForKey:v37];
              arcValue2 = [v38 arcValue];

              [MEMORY[0x277CCAE60] valueWithArc:arcValue & 0xFFFFFFFF00000000 | HIDWORD(arcValue2)];
            }

            else
            {
              v37 = [v30 objectAtIndex:v33 - 1];
              v41 = [dictionaryCopy objectForKey:v37];
              arcValue3 = [v41 arcValue];

              v43 = (self->_nextFstState + 1);
              self->_nextFstState = v43;
              *(&v44 + 1) = v43;
              *&v44 = arcValue3;
              [MEMORY[0x277CCAE60] valueWithArc:(v44 >> 32)];
            }
            v40 = ;
            [dictionaryCopy setObject:v40 forKey:v34];
          }

          else
          {
            if (v32 == 1)
            {
              [MEMORY[0x277CCAE60] valueWithArc:arcValue];
            }

            else
            {
              v45 = (self->_nextFstState + 1);
              self->_nextFstState = v45;
              [MEMORY[0x277CCAE60] valueWithArc:arcValue | (v45 << 32)];
            }
            v37 = ;
            [dictionaryCopy setObject:v37 forKey:v34];
          }
        }

        else
        {
          v37 = [MEMORY[0x277CCAE60] valueWithArc:arcValue];
          [dictionaryCopy setObject:v37 forKey:v34];
        }

        [(CMDPGrammar *)self buildGrammarFst:fst forCommandTree:v34 withFstArcDictionary:dictionaryCopy];
        ++v33;
      }

      while (v32 != v33);
    }

    if (v49)
    {
      currentBuiltInLMString = self->_currentBuiltInLMString;
      self->_currentBuiltInLMString = 0;
    }

    if (v48)
    {
      currentCommandIdentifier = self->_currentCommandIdentifier;
      self->_currentCommandIdentifier = 0;
    }
  }

  else
  {
    NSLog(&cfstr_ErrorInBuildgr.isa, treeCopy);
  }

LABEL_3:
  if (bOOLValue)
  {
    if (self->_addOptionalFst)
    {
      [(CMDPGrammar *)self addOptionalFstWithLabel];
      self->_addOptionalFst = 0;
    }

    std::string::basic_string[abi:ne200100]<0>(v56, kCMDPReplaceOptionalLabel);
    std::string::basic_string[abi:ne200100]<0>(&__p, kCMDPReplaceOptionalLabel);
    CMDPFst::addArc(fst, arcValue, SHIDWORD(arcValue), v56, &__p, 0.0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57) < 0)
    {
      operator delete(v56[0]);
    }
  }
}

- (void)addPhrase:(id)phrase toFst:(void *)fst withArc:(_FstArc)arc
{
  v8 = CMDPNormalizer::tokenizedString(self->_normalizer.__ptr_, phrase);
  v9 = [v8 count];
  v10 = v9;
  __val = arc.var0;
  v11 = HIDWORD(*&arc);
  if (v9)
  {
    v19 = v9 - 1;
    if (v9 >= 1)
    {
      v12 = 0;
      while (1)
      {
        v13 = [v8 objectAtIndex:{v12, v19}];
        if ([v13 length])
        {
          break;
        }

LABEL_15:

        ++v12;
        if (!--v10)
        {
          goto LABEL_23;
        }
      }

      if (v12)
      {
        nextFstState = self->_nextFstState;
        v15 = nextFstState;
        v16 = v11;
        if (v10 == 1)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v16 = v11;
        nextFstState = __val;
        if (!v19)
        {
LABEL_11:
          ptr = self->_normalizer.__ptr_;
          std::string::basic_string[abi:ne200100]<0>(__p, [v13 UTF8String]);
          CMDPNormalizer::normalize(ptr, __p, &v23);
          if (v22 < 0)
          {
            operator delete(__p[0]);
          }

          v18 = [[CMDPGrammarData alloc] initWithGrammarDataWord:v13 lmIdentifer:self->_currentBuiltInLMString commandIdentifier:self->_currentCommandIdentifier];
          [(NSMutableArray *)self->_grammarDataArray addObject:v18];
          CMDPFst::addArc(fst, nextFstState, v16, &v23, [(NSMutableArray *)self->_grammarDataArray count]- 1, 0.0);
          std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&self->_symbol_set, &v23.__r_.__value_.__l.__data_);

          if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v23.__r_.__value_.__l.__data_);
          }

          goto LABEL_15;
        }

        nextFstState = self->_nextFstState;
        v15 = __val;
      }

      v16 = nextFstState + 1;
      self->_nextFstState = nextFstState + 1;
      nextFstState = v15;
      goto LABEL_11;
    }
  }

  else
  {
    if (self->_addOptionalFst)
    {
      [(CMDPGrammar *)self addOptionalFstWithLabel];
      self->_addOptionalFst = 0;
    }

    std::string::basic_string[abi:ne200100]<0>(&v23, kCMDPReplaceOptionalLabel);
    std::string::basic_string[abi:ne200100]<0>(__p, kCMDPReplaceOptionalLabel);
    CMDPFst::addArc(fst, arc.var0, arc.var1, &v23, __p, 0.0);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

LABEL_23:
}

- (id).cxx_construct
{
  *(self + 13) = 0;
  *(self + 3) = 0;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 12) = self + 104;
  *(self + 17) = 0;
  *(self + 16) = 0;
  *(self + 14) = 0;
  *(self + 15) = self + 128;
  return self;
}

@end