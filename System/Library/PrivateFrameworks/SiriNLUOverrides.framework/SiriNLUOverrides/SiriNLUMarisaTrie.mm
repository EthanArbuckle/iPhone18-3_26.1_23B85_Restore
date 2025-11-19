@interface SiriNLUMarisaTrie
- (BOOL)lookupRow:(id)a3 outIdx:(int64_t *)a4;
- (BOOL)reverseLookupKey:(int)a3 dataLength:(unint64_t)a4 resultBlock:(id)a5;
- (SiriNLUMarisaTrie)init;
- (SiriNLUMarisaTrie)initWithURL:(id)a3;
- (id).cxx_construct;
- (id)reverseLookupRow:(int)a3;
- (void)addKey:(id)a3 payload:(id)a4;
- (void)addRow:(id)a3;
- (void)enumerateAllEntriesWithBlock:(id)a3;
- (void)enumerateAllRowsWithBlock:(id)a3;
- (void)lookupKey:(id)a3 resultBlock:(id)a4;
- (void)lookupPrefix:(id)a3 resultBlock:(id)a4;
- (void)writeToURL:(id)a3;
@end

@implementation SiriNLUMarisaTrie

- (id).cxx_construct
{
  marisa::Trie::Trie(&self->trie);
  marisa::Keyset::Keyset(&self->keyset);
  return self;
}

- (BOOL)reverseLookupKey:(int)a3 dataLength:(unint64_t)a4 resultBlock:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a5;
  marisa::Agent::Agent(v14);
  marisa::Agent::set_query(v14);
  marisa::Trie::reverse_lookup(&self->trie, v14);
  v8 = v15;
  v9 = v16;
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v15 length:v16 + ~a4 encoding:4];
  v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v8 + v9 - a4 length:a4];
  v7[2](v7, v10, v11);

  marisa::Agent::~Agent(v14);
  v12 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)reverseLookupRow:(int)a3
{
  v10 = *MEMORY[0x277D85DE8];
  marisa::Agent::Agent(v7);
  marisa::Agent::set_query(v7);
  marisa::Trie::reverse_lookup(&self->trie, v7);
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v8 length:v9 encoding:4];
  marisa::Agent::~Agent(v7);
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)lookupPrefix:(id)a3 resultBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  marisa::Agent::Agent(v19);
  marisa::Agent::set_query(v19, [v6 UTF8String]);
  while (marisa::Trie::predictive_search(&self->trie, v19))
  {
    v8 = __s;
    v10 = v21;
    v9 = v22;
    v11 = strchr(__s, 255);
    __p[0] = 0;
    __p[1] = 0;
    v18 = 0;
    if (v11)
    {
      std::string::basic_string[abi:ne200100](&__dst, v8, v11 - v8);
    }

    else
    {
      std::string::basic_string[abi:ne200100](&__dst, v8, v10);
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = __dst;
    v18 = v16;
    v12 = objc_autoreleasePoolPush();
    if (v18 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:v13];
    v7[2](v7, v14, v9);

    objc_autoreleasePoolPop(v12);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }
  }

  marisa::Agent::~Agent(v19);
}

- (void)lookupKey:(id)a3 resultBlock:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v20 = v6;
  marisa::Agent::Agent(v22);
  v8 = [v6 dataUsingEncoding:4];
  v21 = [v8 mutableCopy];

  if (v21)
  {
    v9 = [v21 length];
    *buf = 255;
    [v21 appendBytes:buf length:2];
    v10 = v21;
    marisa::Agent::set_query(v22, [v21 bytes]);
    while (marisa::Trie::predictive_search(&self->trie, v22))
    {
      v11 = v23;
      v12 = v24;
      v13 = v25;
      v14 = objc_autoreleasePoolPush();
      v15 = [MEMORY[0x277CBEA90] dataWithBytes:v11 + v9 + 1 length:~v9 + v12];
      v7[2](v7, v15, v13);

      objc_autoreleasePoolPop(v14);
    }

    v16 = v21;
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = OverridesLogContext;
    if (os_log_type_enabled(OverridesLogContext, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v27 = "[SiriNLUMarisaTrie lookupKey:resultBlock:]";
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_268086000, v18, OS_LOG_TYPE_INFO, "%s [WARN]: Unable to convert NSString to UTF8 NSData. String is:%@", buf, 0x16u);
    }

    v16 = 0;
    v7[2](v7, 0, 0);
    objc_autoreleasePoolPop(v17);
  }

  marisa::Agent::~Agent(v22);
  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)lookupRow:(id)a3 outIdx:(int64_t *)a4
{
  v6 = a3;
  marisa::Agent::Agent(v10);
  marisa::Agent::set_query(v10, [v6 UTF8String]);
  v7 = marisa::Trie::lookup(&self->trie, v10);
  v8 = v7 ^ 1;
  if (!a4)
  {
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
    *a4 = v10[9];
  }

  marisa::Agent::~Agent(v10);

  return v7;
}

- (void)enumerateAllRowsWithBlock:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  marisa::Agent::Agent(v15);
  v5 = 0;
  *&v6 = 136315394;
  v14 = v6;
  while (v5 < marisa::Trie::size(&self->trie))
  {
    marisa::Agent::set_query(v15);
    marisa::Trie::reverse_lookup(&self->trie, v15);
    v7 = v16;
    v9 = v17;
    v8 = v18;
    v10 = objc_autoreleasePoolPush();
    std::string::basic_string[abi:ne200100](&__p, v7, v9);
    if (v20 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{p_p, v14}];
    v4[2](v4, v12, v8);

    if (v20 < 0)
    {
      operator delete(__p);
    }

    objc_autoreleasePoolPop(v10);
    ++v5;
  }

  marisa::Agent::~Agent(v15);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)enumerateAllEntriesWithBlock:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  marisa::Agent::Agent(v18);
  v5 = 0;
  *&v6 = 136315394;
  v17 = v6;
  while (v5 < marisa::Trie::size(&self->trie))
  {
    marisa::Agent::set_query(v18);
    marisa::Trie::reverse_lookup(&self->trie, v18);
    v7 = __s;
    v8 = v20;
    v9 = v21;
    v10 = strchr(__s, -1);
    v11 = objc_autoreleasePoolPush();
    v12 = v10 - v7;
    std::string::basic_string[abi:ne200100](&__p, v7, v10 - v7);
    if (v23 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:{p_p, v17}];
    v15 = [MEMORY[0x277CBEA90] dataWithBytes:&v7[v12 + 1] length:~v12 + v8];
    v4[2](v4, v14, v15, v9);

    if (v23 < 0)
    {
      operator delete(__p);
    }

    objc_autoreleasePoolPop(v11);
    ++v5;
  }

  marisa::Agent::~Agent(v18);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)writeToURL:(id)a3
{
  v5 = a3;
  marisa::Trie::build(&self->trie, &self->keyset);
  v4 = [v5 path];
  marisa::Trie::save(&self->trie, [v4 UTF8String]);
}

- (void)addRow:(id)a3
{
  v4 = a3;
  v5 = [v4 UTF8String];
  v6 = strlen(v5);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v10 = v6;
  if (v6)
  {
    memmove(&__dst, v5, v6);
  }

  *(&__dst + v7) = 0;
  if (v10 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  marisa::Keyset::push_back(&self->keyset, p_dst, 1.0);
  if (v10 < 0)
  {
    operator delete(__dst);
  }
}

- (void)addKey:(id)a3 payload:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x277CBEB28]);
  v9 = [v6 dataUsingEncoding:4];
  v10 = [v8 initWithData:v9];

  v12 = -1;
  [v10 appendBytes:&v12 length:1];
  if (v7 && [v7 length])
  {
    [v10 appendData:v7];
  }

  v11 = [v10 bytes];
  [v10 length];
  marisa::Keyset::push_back(&self->keyset, v11, 1.0);
}

- (SiriNLUMarisaTrie)init
{
  v3.receiver = self;
  v3.super_class = SiriNLUMarisaTrie;
  return [(SiriNLUMarisaTrie *)&v3 init];
}

- (SiriNLUMarisaTrie)initWithURL:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v4 path];
  v7 = [v5 fileExistsAtPath:v6];

  if (v7)
  {
    v19.receiver = self;
    v19.super_class = SiriNLUMarisaTrie;
    v8 = [(SiriNLUMarisaTrie *)&v19 init];
    if (v8)
    {
      v9 = [v4 path];
      v10 = v9;
      marisa::Trie::mmap(&v8->trie, [v9 UTF8String]);

      v11 = OverridesLogContext;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [v4 lastPathComponent];
        v13 = marisa::Trie::num_keys(&v8->trie);
        *buf = 136315650;
        v21 = "[SiriNLUMarisaTrie initWithURL:]";
        v22 = 2112;
        v23 = v12;
        v24 = 2048;
        v25 = v13;
        _os_log_impl(&dword_268086000, v11, OS_LOG_TYPE_INFO, "%s OVMarisaTrie %@ loaded {count: %lu}", buf, 0x20u);
      }
    }

    self = v8;
    v14 = self;
  }

  else
  {
    v15 = OverridesLogContext;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v4 path];
      *buf = 136315394;
      v21 = "[SiriNLUMarisaTrie initWithURL:]";
      v22 = 2112;
      v23 = v16;
      _os_log_impl(&dword_268086000, v15, OS_LOG_TYPE_INFO, "%s [WARN]: Unable to locate marisa trie {path: %@}", buf, 0x16u);
    }

    v14 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

@end