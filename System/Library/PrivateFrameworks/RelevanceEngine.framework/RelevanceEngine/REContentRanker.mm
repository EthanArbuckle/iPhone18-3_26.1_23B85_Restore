@interface REContentRanker
- (BOOL)load:(id)load error:(id *)error;
- (BOOL)save:(id)save error:(id *)error;
- (BOOL)train:(id)train isPositive:(BOOL)positive;
- (NSString)negativeContent;
- (NSString)positiveContent;
- (REContentRanker)init;
- (id)predict:(id)predict;
@end

@implementation REContentRanker

- (REContentRanker)init
{
  v3.receiver = self;
  v3.super_class = REContentRanker;
  return [(REContentRanker *)&v3 init];
}

- (BOOL)load:(id)load error:(id *)error
{
  loadCopy = load;
  v7 = [loadCopy stringByAppendingPathComponent:@"PositiveContent.dic"];
  v8 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v7 encoding:4 error:error];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_8;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, [v8 UTF8String]);
  v10 = REContentFeatureExtractor::LoadPositiveModel(&self->_extractor, &__p);
  v11 = v10;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_8:
    v15 = 0;
    goto LABEL_11;
  }

  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_4:
  v12 = [loadCopy stringByAppendingPathComponent:@"NegativeContent.dic"];
  v13 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v12 encoding:4 error:error];
  v14 = v13;
  if (v13)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, [v13 UTF8String]);
    v15 = REContentFeatureExtractor::LoadNegativeModel(&self->_extractor, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_11:
  return v15;
}

- (BOOL)save:(id)save error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  saveCopy = save;
  v6 = [saveCopy stringByAppendingPathComponent:@"PositiveContent.dic"];
  MEMORY[0x22AABBC00](__sb);
  v7 = v6;
  [v6 UTF8String];
  std::filebuf::open();
  v8 = v22;
  if (v22)
  {
    v18.__loc_ = 0;
    v17 = MEMORY[0x277D82850] + 24;
    v18.__vftable = (MEMORY[0x277D82850] + 64);
    std::ios_base::init(&v18, __sb);
    v19 = 0;
    v20 = -1;
    REContentFeatureExtractor::SavePositiveModel(&self->_extractor, &v17);
    std::ostream::flush();
    std::ostream::~ostream();
  }

  std::filebuf::close();
  if (v8)
  {
    v9 = [saveCopy stringByAppendingPathComponent:@"NegativeContent.dic"];
    MEMORY[0x22AABBC00](&v17);
    v10 = v9;
    [v9 UTF8String];
    std::filebuf::open();
    LOBYTE(v8) = v18.__parray_ != 0;
    if (v18.__parray_)
    {
      v14.__loc_ = 0;
      v13 = MEMORY[0x277D82850] + 24;
      v14.__vftable = (MEMORY[0x277D82850] + 64);
      std::ios_base::init(&v14, &v17);
      v15 = 0;
      v16 = -1;
      REContentFeatureExtractor::SaveNegativeModel(&self->_extractor, &v13);
      std::ostream::flush();
      std::ostream::~ostream();
    }

    std::filebuf::close();
    MEMORY[0x22AABBC10](&v17);
  }

  MEMORY[0x22AABBC10](__sb);

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)train:(id)train isPositive:(BOOL)positive
{
  positiveCopy = positive;
  trainCopy = train;
  if ([trainCopy count])
  {
    std::vector<std::string>::vector[abi:ne200100](v13, [trainCopy count]);
    v7 = 0;
    for (i = 0; i < [trainCopy count]; ++i)
    {
      v9 = [trainCopy objectAtIndexedSubscript:i];
      uTF8String = [v9 UTF8String];
      MEMORY[0x22AABBBA0](&v13[0][v7], uTF8String);

      v7 += 3;
    }

    v11 = REContentFeatureExtractor::train(&self->_extractor.m_rwlock, v13, positiveCopy);
    v14 = v13;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v14);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)predict:(id)predict
{
  predictCopy = predict;
  v5 = objc_opt_new();
  if ([predictCopy count])
  {
    std::vector<std::string>::vector[abi:ne200100](v15, [predictCopy count]);
    v6 = 0;
    for (i = 0; i < [predictCopy count]; ++i)
    {
      v8 = [predictCopy objectAtIndexedSubscript:i];
      uTF8String = [v8 UTF8String];
      MEMORY[0x22AABBBA0](&v15[0][v6], uTF8String);

      v6 += 3;
    }

    REContentFeatureExtractor::predict(&self->_extractor, v15, v11);
    [v5 setValid:LOBYTE(v11[0])];
    [v5 setPositivePolarity:*&v11[2]];
    [v5 setNegativePolarity:*&v11[1]];
    [v5 setUnknownCount:v12];
    [v5 setUnbiasedPositivePolarity:v13];
    [v5 setUnbiasedNegativePolarity:v14];
    v11[0] = v15;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v11);
  }

  else
  {
    [v5 setValid:0];
  }

  return v5;
}

- (NSString)positiveContent
{
  std::stringbuf::basic_stringbuf[abi:ne200100](&__sb);
  v10.__loc_ = 0;
  v9 = MEMORY[0x277D82850] + 24;
  v10.__vftable = (MEMORY[0x277D82850] + 64);
  std::ios_base::init(&v10, &__sb);
  v11 = 0;
  v12 = -1;
  REContentFeatureExtractor::SavePositiveModel(&self->_extractor, &v9);
  std::ostream::flush();
  v3 = MEMORY[0x277CCACA8];
  std::stringbuf::str();
  if (v8 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v5 = [v3 stringWithUTF8String:p_p];
  if (v8 < 0)
  {
    operator delete(__p);
  }

  std::ostream::~ostream();
  __sb = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  __sb = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);

  return v5;
}

- (NSString)negativeContent
{
  std::stringbuf::basic_stringbuf[abi:ne200100](&__sb);
  v10.__loc_ = 0;
  v9 = MEMORY[0x277D82850] + 24;
  v10.__vftable = (MEMORY[0x277D82850] + 64);
  std::ios_base::init(&v10, &__sb);
  v11 = 0;
  v12 = -1;
  REContentFeatureExtractor::SaveNegativeModel(&self->_extractor, &v9);
  std::ostream::flush();
  v3 = MEMORY[0x277CCACA8];
  std::stringbuf::str();
  if (v8 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v5 = [v3 stringWithUTF8String:p_p];
  if (v8 < 0)
  {
    operator delete(__p);
  }

  std::ostream::~ostream();
  __sb = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  __sb = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);

  return v5;
}

@end