@interface UPEmbedding
- (UPEmbedding)initWithCoordinates:(id)a3;
- (id)getCoordinates;
- (unint64_t)getDimension;
- (void)dealloc;
@end

@implementation UPEmbedding

- (void)dealloc
{
  embedding = self->_embedding;
  if (embedding)
  {
    v4 = *embedding;
    if (*embedding)
    {
      embedding[1] = v4;
      operator delete(v4);
    }

    MEMORY[0x223DC4D00](embedding, 0x80C40D6874129);
  }

  v5.receiver = self;
  v5.super_class = UPEmbedding;
  [(UPEmbedding *)&v5 dealloc];
}

- (unint64_t)getDimension
{
  embedding = self->_embedding;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v6, *embedding, embedding[1], (embedding[1] - *embedding) >> 3);
  v3 = v6;
  v4 = v7;
  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  return (v4 - v3) >> 3;
}

- (id)getCoordinates
{
  embedding = self->_embedding;
  v10 = 0;
  v11 = 0;
  __p = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, *embedding, embedding[1], (embedding[1] - *embedding) >> 3);
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:(v10 - __p) >> 3];
  v4 = __p;
  v5 = v10;
  if (__p != v10)
  {
    do
    {
      v6 = [MEMORY[0x277CCABB0] numberWithDouble:*v4];
      [v3 addObject:v6];

      ++v4;
    }

    while (v4 != v5);
  }

  v7 = [MEMORY[0x277CBEA60] arrayWithArray:v3];

  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  return v7;
}

- (UPEmbedding)initWithCoordinates:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = UPEmbedding;
  if ([(UPEmbedding *)&v28 init])
  {
    __src = 0;
    v26 = 0;
    v27 = 0;
    std::vector<double>::reserve(&__src, [v4 count]);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v6)
    {
      v7 = *v22;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v21 + 1) + 8 * i) doubleValue];
          v10 = v26;
          if (v26 >= v27)
          {
            v12 = __src;
            v13 = v26 - __src;
            v14 = (v26 - __src) >> 3;
            v15 = v14 + 1;
            if ((v14 + 1) >> 61)
            {
              std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
            }

            v16 = v27 - __src;
            if ((v27 - __src) >> 2 > v15)
            {
              v15 = v16 >> 2;
            }

            if (v16 >= 0x7FFFFFFFFFFFFFF8)
            {
              v17 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v17 = v15;
            }

            if (v17)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src, v17);
            }

            *(8 * v14) = v9;
            v11 = 8 * v14 + 8;
            memcpy(0, v12, v13);
            v18 = __src;
            __src = 0;
            v26 = v11;
            v27 = 0;
            if (v18)
            {
              operator delete(v18);
            }
          }

          else
          {
            *v26 = v9;
            v11 = (v10 + 8);
          }

          v26 = v11;
        }

        v6 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v6);
    }

    operator new();
  }

  v19 = *MEMORY[0x277D85DE8];
  return 0;
}

@end