@interface REFeatureValueCounter
- (BOOL)readFromURL:(id)a3 error:(id *)a4;
- (BOOL)writeToURL:(id)a3 error:(id *)a4;
- (REFeatureValueCounter)init;
- (id)_createErrorWithCode:(unint64_t)a3 description:(id)a4 underlyingError:(id)a5;
- (unint64_t)countForValue:(id)a3;
- (unint64_t)totalCount;
- (unint64_t)trackedValueForValue:(id)a3;
- (void)_updateConfigurationForCount:(unint64_t)a3;
@end

@implementation REFeatureValueCounter

- (REFeatureValueCounter)init
{
  v6.receiver = self;
  v6.super_class = REFeatureValueCounter;
  v2 = [(REFeatureValueCounter *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAC18] strongObjectsPointerArray];
    values = v2->_values;
    v2->_values = v3;

    [(REFeatureValueCounter *)v2 _updateConfigurationForCount:20];
  }

  return v2;
}

- (BOOL)readFromURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  pthread_rwlock_wrlock(&self->_lock);
  v7 = [v6 URLByAppendingPathComponent:@"index.idx"];
  v26 = 0;
  v8 = [MEMORY[0x277CCACA8] stringWithContentsOfURL:v7 encoding:4 error:&v26];
  v9 = v26;
  if (v8)
  {
    v21 = v7;
    v10 = MEMORY[0x277CBEA90];
    v11 = [v6 URLByAppendingPathComponent:@"values.dat"];
    v25 = v9;
    v12 = [v10 dataWithContentsOfURL:v11 options:0 error:&v25];
    v13 = v25;

    if (!v12)
    {
      if (!a4)
      {
        v18 = 0;
        goto LABEL_20;
      }

      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to read contents of %@.", @"values.dat"];
      [(REFeatureValueCounter *)self _createErrorWithCode:2 description:v14 underlyingError:v13];
      *a4 = v18 = 0;
LABEL_19:

LABEL_20:
      v9 = v13;
      v7 = v21;
      goto LABEL_21;
    }

    v24 = v13;
    v14 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v12 options:4 error:&v24];
    v15 = v24;

    if (v14)
    {
      -[REFeatureValueCounter _updateConfigurationForCount:](self, "_updateConfigurationForCount:", [v14 count]);
      std::string::basic_string[abi:ne200100]<0>(&__p, [v8 UTF8String]);
      v16 = REFancyShrinkingDictionary::LoadModel(&self->_indicies, &__p);
      v17 = v16;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (v17)
        {
          goto LABEL_6;
        }
      }

      else if (v16)
      {
LABEL_6:
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __43__REFeatureValueCounter_readFromURL_error___block_invoke;
        v22[3] = &unk_2785FB538;
        v22[4] = self;
        [v14 enumerateObjectsUsingBlock:v22];
        v18 = 1;
LABEL_18:
        v13 = v15;
        goto LABEL_19;
      }

      if (a4)
      {
        [(REFeatureValueCounter *)self _createErrorWithCode:6 description:@"Unable to load model." underlyingError:0];
        *a4 = v18 = 0;
        goto LABEL_18;
      }
    }

    else if (a4)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to serialize content of %@ into JSON.", @"values.dat"];
      *a4 = [(REFeatureValueCounter *)self _createErrorWithCode:5 description:v19 underlyingError:v15];
    }

    v18 = 0;
    goto LABEL_18;
  }

  if (a4)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to read contents of %@.", @"index.idx"];
    [(REFeatureValueCounter *)self _createErrorWithCode:2 description:v12 underlyingError:v9];
    *a4 = v18 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v18 = 0;
LABEL_22:

  pthread_rwlock_unlock(&self->_lock);
  return v18;
}

void __43__REFeatureValueCounter_readFromURL_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [REFeatureValue featureValueWithDictionary:v6];
    if (v5)
    {
      [*(*(a1 + 32) + 16) replacePointerAtIndex:a3 withPointer:v5];
    }
  }
}

- (BOOL)writeToURL:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  pthread_rwlock_rdlock(&self->_lock);
  v24 = [v6 URLByAppendingPathComponent:@"index.idx"];
  MEMORY[0x22AABBC00](__sb);
  v7 = [v24 path];
  v8 = v7;
  [v7 UTF8String];
  std::filebuf::open();

  v9 = v32;
  if (v32)
  {
    v28.__loc_ = 0;
    v27 = MEMORY[0x277D82850] + 24;
    v28.__vftable = (MEMORY[0x277D82850] + 64);
    std::ios_base::init(&v28, __sb);
    v29 = 0;
    v30 = -1;
    REFancyShrinkingDictionary::SaveModel(&self->_indicies, &v27);
    std::ostream::flush();
    std::ostream::~ostream();
  }

  std::filebuf::close();
  if (v9)
  {
    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:self->_count];
    if (self->_count)
    {
      v11 = 0;
      do
      {
        v12 = [(NSPointerArray *)self->_values pointerAtIndex:v11];
        v13 = v12;
        if (v12)
        {
          [v12 dictionaryEncoding];
        }

        else
        {
          [MEMORY[0x277CBEB68] null];
        }
        v14 = ;
        [v10 addObject:v14];

        ++v11;
      }

      while (v11 < self->_count);
    }

    v26 = 0;
    v15 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v10 options:0 error:&v26];
    v16 = v26;
    if (v15)
    {
      v17 = [v6 URLByAppendingPathComponent:@"values.dat"];
      v25 = v16;
      v18 = [v15 writeToURL:v17 options:1 error:&v25];
      v19 = v25;

      if (a4)
      {
        v20 = v18;
      }

      else
      {
        v20 = 1;
      }

      if ((v20 & 1) == 0)
      {
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to write to %@.", @"values.dat"];
        *a4 = [(REFeatureValueCounter *)self _createErrorWithCode:3 description:v21 underlyingError:v19];

        v18 = 0;
      }

      v16 = v19;
    }

    else if (a4)
    {
      [(REFeatureValueCounter *)self _createErrorWithCode:4 description:@"Unable to deserialize JSON content into data." underlyingError:v16];
      *a4 = v18 = 0;
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_24;
  }

  if (a4)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to open %@.", @"index.idx"];
    [(REFeatureValueCounter *)self _createErrorWithCode:1 description:v10 underlyingError:0];
    *a4 = v18 = 0;
LABEL_24:

    goto LABEL_25;
  }

  v18 = 0;
LABEL_25:
  MEMORY[0x22AABBC10](__sb);

  pthread_rwlock_unlock(&self->_lock);
  v22 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)_updateConfigurationForCount:(unint64_t)a3
{
  pthread_rwlock_wrlock(&self->_lock);
  if (a3 <= 1)
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Count is too low. Must be 2 or greater. Changing to 2 to avoid a crash in production.", v5, v6, v7, v8, v9, v10, v13.m_mapDocumentFrequency.__table_.__bucket_list_.__ptr_);
    a3 = 2;
  }

  self->_count = a3 - 1;
  v11 = [MEMORY[0x277CCAC18] strongObjectsPointerArray];
  values = self->_values;
  self->_values = v11;

  [(NSPointerArray *)self->_values setCount:a3];
  REFancyShrinkingDictionary::REFancyShrinkingDictionary(&v13, a3 - 1, ((a3 - 1) * 0.8), 1, 0, 1);
  std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::__move_assign(&self->_indicies, &v13);
  *&self->_indicies.m_maxSize = *&v13.m_maxSize;
  *(&self->_indicies.m_shrinkSize + 6) = *(&v13.m_shrinkSize + 6);
  std::__hash_table<std::__hash_value_type<std::string,unsigned short>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned short>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned short>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned short>>>::~__hash_table(&v13);
  pthread_rwlock_unlock(&self->_lock);
}

- (unint64_t)trackedValueForValue:(id)a3
{
  v4 = a3;
  pthread_rwlock_wrlock(&self->_lock);
  if (!self->_count)
  {
    goto LABEL_19;
  }

  v5 = 0;
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v7 = [(NSPointerArray *)self->_values pointerAtIndex:v5];
    v8 = v7;
    if (v6 == 0x7FFFFFFFFFFFFFFFLL && v7 == 0)
    {
      v10 = v5;
    }

    else
    {
      v10 = v6;
    }

    if (v7)
    {
      if ([v4 isEqual:v7])
      {

        goto LABEL_15;
      }
    }

    else
    {
      v6 = v10;
    }

    ++v5;
  }

  while (v5 < self->_count);
  v5 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_15:
  if (v5 != 0x7FFFFFFFFFFFFFFFLL || v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_20;
    }

LABEL_19:
    v5 = self->_count + 1;
    goto LABEL_20;
  }

  [(NSPointerArray *)self->_values replacePointerAtIndex:v6 withPointer:v4];
  v5 = v6;
LABEL_20:
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
  v12 = [v11 stringValue];
  std::string::basic_string[abi:ne200100]<0>(v20, [v12 UTF8String]);

  memset(v19, 0, sizeof(v19));
  std::vector<std::string>::push_back[abi:ne200100](v19, v20);
  if (REFancyShrinkingDictionary::pushToIDF(&self->_indicies, v19) && self->_count)
  {
    v13 = 0;
    do
    {
      if ([(NSPointerArray *)self->_values pointerAtIndex:v13])
      {
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
        v15 = [v14 stringValue];
        std::string::basic_string[abi:ne200100]<0>(__p, [v15 UTF8String]);

        if (!REFancyShrinkingDictionary::getTokenCount(&self->_indicies.m_mapDocumentFrequency.__table_.__bucket_list_.__ptr_, __p))
        {
          [(NSPointerArray *)self->_values replacePointerAtIndex:v13 withPointer:0];
        }

        if (v18 < 0)
        {
          operator delete(__p[0]);
        }
      }

      ++v13;
    }

    while (v13 < self->_count);
  }

  __p[0] = v19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  pthread_rwlock_unlock(&self->_lock);

  return v5;
}

- (unint64_t)countForValue:(id)a3
{
  v4 = a3;
  pthread_rwlock_rdlock(&self->_lock);
  if (!self->_count)
  {
    goto LABEL_8;
  }

  v5 = 0;
  while (1)
  {
    v6 = [(NSPointerArray *)self->_values pointerAtIndex:v5];
    if (v6)
    {
      if ([v4 isEqual:v6])
      {
        break;
      }
    }

    if (++v5 >= self->_count)
    {
      goto LABEL_8;
    }
  }

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
    v10 = [v9 stringValue];
    std::string::basic_string[abi:ne200100]<0>(__p, [v10 UTF8String]);

    TokenCount = REFancyShrinkingDictionary::getTokenCount(&self->_indicies.m_mapDocumentFrequency.__table_.__bucket_list_.__ptr_, __p);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
LABEL_8:
    TokenCount = 0;
  }

  pthread_rwlock_unlock(&self->_lock);

  return TokenCount;
}

- (unint64_t)totalCount
{
  pthread_rwlock_rdlock(&self->_lock);
  v3 = REFancyShrinkingDictionary::totalTermCount(&self->_indicies);
  pthread_rwlock_unlock(&self->_lock);
  return v3;
}

- (id)_createErrorWithCode:(unint64_t)a3 description:(id)a4 underlyingError:(id)a5
{
  v7 = a5;
  v8 = [MEMORY[0x277CBEB38] dictionaryWithObject:a4 forKey:*MEMORY[0x277CCA450]];
  v9 = v8;
  if (v7)
  {
    [v8 setObject:v7 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v10 = MEMORY[0x277CCA9B8];
  v11 = [v9 copy];
  v12 = [v10 errorWithDomain:@"REFeatureValueCounterError" code:a3 userInfo:v11];

  return v12;
}

@end