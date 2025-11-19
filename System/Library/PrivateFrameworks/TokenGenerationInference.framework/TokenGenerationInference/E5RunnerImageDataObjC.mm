@interface E5RunnerImageDataObjC
- (E5RunnerImageDataObjC)initWithShape:(id)a3 data:;
- (id).cxx_construct;
@end

@implementation E5RunnerImageDataObjC

- (E5RunnerImageDataObjC)initWithShape:(id)a3 data:
{
  v4 = v3;
  v38 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v36.receiver = self;
  v36.super_class = E5RunnerImageDataObjC;
  v6 = [(E5RunnerImageDataObjC *)&v36 init];
  if (v6)
  {
    v7 = [v27 copy];
    shape = v6->_shape;
    v6->_shape = v7;

    v26 = v4;
    *v6->_data = v4;
    __src = 0;
    v33 = 0;
    v34 = 0;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = v27;
    v10 = [v9 countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v10)
    {
      v11 = *v29;
      v12 = v6;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v28 + 1) + 8 * i) integerValue];
          v15 = v33;
          if (v33 >= v34)
          {
            v17 = __src;
            v18 = v33 - __src;
            v19 = (v33 - __src) >> 3;
            v20 = v19 + 1;
            if ((v19 + 1) >> 61)
            {
              _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
            }

            v21 = v34 - __src;
            if ((v34 - __src) >> 2 > v20)
            {
              v20 = v21 >> 2;
            }

            if (v21 >= 0x7FFFFFFFFFFFFFF8)
            {
              v22 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v22 = v20;
            }

            if (v22)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src, v22);
            }

            *(8 * v19) = v14;
            v16 = (8 * v19 + 8);
            memcpy(0, v17, v18);
            v23 = __src;
            __src = 0;
            v33 = v16;
            v34 = 0;
            if (v23)
            {
              operator delete(v23);
            }

            v6 = v12;
          }

          else
          {
            *v33 = v14;
            v16 = v15 + 8;
          }

          v33 = v16;
        }

        v10 = [v9 countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v10);
    }

    v24 = v26;
    v35 = v26;
    if (&v6->_imageData != &__src)
    {
      std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v6->_imageData.shape.__begin_, __src, v33, (v33 - __src) >> 3);
      v24 = v35;
    }

    v6[1].super.isa = v24;
    if (__src)
    {
      v33 = __src;
      operator delete(__src);
    }
  }

  return v6;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  return self;
}

@end