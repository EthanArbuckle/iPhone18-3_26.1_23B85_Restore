@interface TIContextTokens
- (TIContextTokens)initWithContext:(const TITokenID *)context contextLength:(unint64_t)length contextStringTokens:(id)tokens;
- (void)appendToken:(TITokenID)token string:(id)string;
- (void)dealloc;
@end

@implementation TIContextTokens

- (void)dealloc
{
  context = self->_context;
  if (context)
  {
    v7 = (context + 80);
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v7);
    language_modeling::v1::LinguisticContext::~LinguisticContext((context + 72));
    language_modeling::v1::LinguisticContext::~LinguisticContext((context + 64));
    v4 = *(context + 2);
    if (v4)
    {
      *(context + 3) = v4;
      operator delete(v4);
    }

    v5 = *(context + 1);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    MEMORY[0x2318BE270](context, 0x1020C40C12D0AD1);
  }

  v6.receiver = self;
  v6.super_class = TIContextTokens;
  [(TIContextTokens *)&v6 dealloc];
}

- (void)appendToken:(TITokenID)token string:(id)string
{
  stringCopy = string;
  context = self->_context;
  v11 = stringCopy;
  if (stringCopy)
  {
    uTF8String = [stringCopy UTF8String];
  }

  else
  {
    uTF8String = "";
  }

  v9 = strlen(uTF8String);
  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    operator new();
  }

  v13 = v9;
  if (v9)
  {
    memmove(&__dst, uTF8String, v9);
  }

  *(&__dst + v10) = 0;
  KB::LanguageModelContext::append(context, *&token, &__dst, 0);
  if (v13 < 0)
  {
    operator delete(__dst);
  }
}

- (TIContextTokens)initWithContext:(const TITokenID *)context contextLength:(unint64_t)length contextStringTokens:(id)tokens
{
  v28 = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  v26.receiver = self;
  v26.super_class = TIContextTokens;
  if ([(TIContextTokens *)&v26 init])
  {
    v7 = [tokensCopy count];
    v24 = 0;
    v25 = 0;
    v23 = 0;
    if (v7)
    {
      if (v7 < 0xAAAAAAAAAAAAAABLL)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v7);
      }

      std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = tokensCopy;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v20;
      v13 = 0;
      v14 = *v20;
      while (1)
      {
        if (v14 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v19 + 1) + 8 * v11);
        std::string::__assign_external(v13, [v15 UTF8String]);
        if (++v11 >= v10)
        {
          v16 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (!v16)
          {
            break;
          }

          v10 = v16;
          v11 = 0;
        }

        v14 = *v20;
        ++v13;
      }
    }

    operator new();
  }

  v17 = *MEMORY[0x277D85DE8];
  return 0;
}

@end