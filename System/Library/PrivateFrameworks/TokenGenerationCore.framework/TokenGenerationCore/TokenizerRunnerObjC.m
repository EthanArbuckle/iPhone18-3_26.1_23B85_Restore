@interface TokenizerRunnerObjC
- (TokenizerRunnerObjC)initWithTokenizerPath:(id)a3 error:(id *)a4;
- (id)detokenize:(id)a3 error:(id *)a4;
- (id)textForTokenID:(int64_t)a3;
- (id)tokenize:(id)a3 error:(id *)a4;
- (id)vocabulary;
- (int64_t)longestTokenLength;
- (int64_t)tokenIDForText:(id)a3;
- (void)enumeratePrefixTokenIDsForPrefix:(id)a3 block:(id)a4;
- (void)enumerateTokenIDsForDecodedPrefix:(id)a3 block:(id)a4;
- (void)enumerateTokenIDsForRawPrefix:(id)a3 block:(id)a4;
- (void)prefixMatchesForText:(id)a3 block:(id)a4;
@end

@implementation TokenizerRunnerObjC

- (TokenizerRunnerObjC)initWithTokenizerPath:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v24.receiver = self;
  v24.super_class = TokenizerRunnerObjC;
  v7 = [(TokenizerRunnerObjC *)&v24 init];
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = os_log_create("com.apple.tokengenerationinference", "E5LanguageModel");
  v9 = *(v7 + 16);
  *(v7 + 16) = v8;

  v10 = *(v7 + 16);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v28 = v6;
    _os_log_impl(&dword_1A8E85000, v10, OS_LOG_TYPE_DEFAULT, "Initializing tokenizer with path: %{public}@", buf, 0xCu);
  }

  v11 = v6;
  strlen([v6 UTF8String]);
  (*(*(v7 + 1) + 16))(&v23);
  if (!v23)
  {
    sentencepiece::util::Status::~Status(&v23);
LABEL_13:
    v20 = v7;
    goto LABEL_14;
  }

  v12 = *(v7 + 16);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = sentencepiece::util::Status::error_message(&v23);
    [(TokenizerRunnerObjC *)v13 initWithTokenizerPath:buf error:v12];
  }

  v14 = *(v7 + 16);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [TokenizerRunnerObjC initWithTokenizerPath:v14 error:?];
  }

  if (a4)
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = +[TokenizerRunnerObjC sentencePieceErrorDomain];
    v17 = sentencepiece::util::Status::code(&v23);
    v25 = *MEMORY[0x1E696A578];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load tokenizer."];
    v26 = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    *a4 = [v15 errorWithDomain:v16 code:v17 userInfo:v19];
  }

  sentencepiece::util::Status::~Status(&v23);
  v20 = 0;
LABEL_14:

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)vocabulary
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = 0;
  p_processor = &self->_processor;
  while (v4 < (*(p_processor->_vptr$SentencePieceProcessor + 62))(p_processor))
  {
    v6 = (*(p_processor->_vptr$SentencePieceProcessor + 64))(p_processor, v4);
    v8 = v7;
    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v9 = MEMORY[0x1E696AEC0];
    if (v7 >= 0x17)
    {
      operator new();
    }

    v14 = v7;
    if (v7)
    {
      memmove(&__dst, v6, v7);
    }

    *(&__dst + v8) = 0;
    if (v14 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    v11 = [v9 stringWithUTF8String:p_dst];
    if (v14 < 0)
    {
      operator delete(__dst);
    }

    [v3 addObject:v11];

    v4 = (v4 + 1);
  }

  return v3;
}

- (int64_t)longestTokenLength
{
  p_processor = &self->_processor;
  if ((*(self->_processor._vptr$SentencePieceProcessor + 62))(&self->_processor, a2) < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    (*(p_processor->_vptr$SentencePieceProcessor + 64))(p_processor, v4);
    if (v3 <= v5)
    {
      v3 = v5;
    }

    v4 = (v4 + 1);
  }

  while (v4 < (*(p_processor->_vptr$SentencePieceProcessor + 62))(p_processor));
  return v3;
}

- (id)tokenize:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  __p = 0;
  v22 = 0;
  v23 = 0;
  strlen([v6 UTF8String]);
  (*(self->_processor._vptr$SentencePieceProcessor + 18))(&v20);
  if (v20)
  {
    v7 = *&self->_processor.var0;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = sentencepiece::util::Status::error_message(&v20);
      [(TokenizerRunnerObjC *)v8 tokenize:v26 error:v7];
    }

    if (a4)
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = +[TokenizerRunnerObjC sentencePieceErrorDomain];
      v11 = sentencepiece::util::Status::code(&v20);
      v24 = *MEMORY[0x1E696A578];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to tokenize text: %{public}s", sentencepiece::util::Status::error_message(&v20)];
      v25 = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      *a4 = [v9 errorWithDomain:v10 code:v11 userInfo:v13];

      a4 = 0;
    }
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x1E695DF70]);
    a4 = [v14 initWithCapacity:(v22 - __p) >> 2];
    v15 = __p;
    if (v22 != __p)
    {
      v16 = 0;
      do
      {
        v17 = [MEMORY[0x1E696AD98] numberWithInt:v15[v16]];
        [a4 setObject:v17 atIndexedSubscript:v16];

        ++v16;
        v15 = __p;
      }

      while (v16 < (v22 - __p) >> 2);
    }
  }

  sentencepiece::util::Status::~Status(&v20);
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  v18 = *MEMORY[0x1E69E9840];

  return a4;
}

- (id)detokenize:(id)a3 error:(id *)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  memset(&v30, 0, sizeof(v30));
  std::vector<int>::resize(&v30, [v6 count]);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v8)
  {
    v9 = 0;
    v10 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v26 + 1) + 8 * i) intValue];
        v30.__begin_[v9++] = v12;
      }

      v8 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v8);
  }

  __p[0] = 0;
  __p[1] = 0;
  v25 = 0;
  (*(self->_processor._vptr$SentencePieceProcessor + 21))(&v23);
  if (v23)
  {
    v13 = *&self->_processor.var0;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = sentencepiece::util::Status::error_message(&v23);
      [(TokenizerRunnerObjC *)v14 detokenize:v33 error:v13];
    }

    if (a4)
    {
      v15 = MEMORY[0x1E696ABC0];
      v16 = +[TokenizerRunnerObjC sentencePieceErrorDomain];
      v17 = sentencepiece::util::Status::code(&v23);
      v31 = *MEMORY[0x1E696A578];
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to detokenize tokens: %{public}s", sentencepiece::util::Status::error_message(&v23)];
      v32 = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      *a4 = [v15 errorWithDomain:v16 code:v17 userInfo:v19];

      a4 = 0;
    }
  }

  else
  {
    if (v25 >= 0)
    {
      v20 = __p;
    }

    else
    {
      v20 = __p[0];
    }

    a4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v20];
  }

  sentencepiece::util::Status::~Status(&v23);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  if (v30.__begin_)
  {
    v30.__end_ = v30.__begin_;
    operator delete(v30.__begin_);
  }

  v21 = *MEMORY[0x1E69E9840];

  return a4;
}

- (id)textForTokenID:(int64_t)a3
{
  v3 = (*(self->_processor._vptr$SentencePieceProcessor + 64))();
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v10 = v4;
  if (v4)
  {
    memmove(&__dst, v3, v4);
  }

  *(&__dst + v5) = 0;
  if (v10 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:p_dst];
  if (v10 < 0)
  {
    operator delete(__dst);
  }

  return v7;
}

- (int64_t)tokenIDForText:(id)a3
{
  v4 = a3;
  v5 = [v4 UTF8String];
  v6 = strlen(v5);
  v7 = (*(self->_processor._vptr$SentencePieceProcessor + 63))(&self->_processor, v5, v6);

  return v7;
}

- (void)prefixMatchesForText:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  __p = 0;
  v28 = 0;
  v29 = 0;
  v8 = [v6 UTF8String];
  v9 = strlen(v8);
  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    operator new();
  }

  v25 = v9;
  if (v9)
  {
    memmove(&__dst, v8, v9);
  }

  *(&__dst + v10) = 0;
  v12 = self->_processor._vptr$SentencePieceProcessor;
  p_processor = &self->_processor;
  (v12[75])(&v26, p_processor, &__dst, 0xFFFFFFFFLL, &__p);
  if (v25 < 0)
  {
    operator delete(__dst);
  }

  if (v26)
  {
    v13 = [v6 UTF8String];
    v14 = strlen(v13);
    v15 = 0;
    LOBYTE(__dst) = 0;
    while (v15 < (*(p_processor->_vptr$SentencePieceProcessor + 62))(p_processor))
    {
      v16 = (*(p_processor->_vptr$SentencePieceProcessor + 64))(p_processor, v15);
      if (v17 >= v14)
      {
        v18 = v14;
      }

      else
      {
        v18 = v17;
      }

      v19 = v13;
      if (v18)
      {
        v20 = &v13[v18];
        v19 = v13;
        while (*v19 == *v16)
        {
          ++v19;
          ++v16;
          if (!--v18)
          {
            v19 = v20;
            break;
          }
        }
      }

      if (&v13[v14] == v19)
      {
        v7[2](v7, v15, &__dst);
        if (__dst)
        {
          break;
        }
      }

      ++v15;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    v21 = v28;
    if (__p != v28)
    {
      v22 = __p + 4;
      do
      {
        v7[2](v7, *(v22 - 1), &__dst);
        if (__dst)
        {
          break;
        }

        v23 = v22 == v21;
        v22 += 4;
      }

      while (!v23);
    }
  }

  sentencepiece::util::Status::~Status(&v26);
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }
}

- (void)enumeratePrefixTokenIDsForPrefix:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19 = [v6 UTF8String];
  v8 = 0;
  v20 = strlen(v19);
  p_processor = &self->_processor;
  while (v8 < (*(p_processor->_vptr$SentencePieceProcessor + 62))(p_processor))
  {
    v17 = (*(p_processor->_vptr$SentencePieceProcessor + 64))(p_processor, v8);
    v18 = v10;
    if (v10)
    {
      if (std::string_view::compare[abi:ne200100](&v17, 0, v20, v19, v20))
      {
        if (!std::string_view::compare[abi:ne200100](&v19, 0, v18, v17, v18))
        {
          if (v20 < v18)
          {
            std::__throw_out_of_range[abi:ne200100]("string_view::substr");
          }

          if (v20 - v18 >= v20)
          {
            v11 = v20;
          }

          else
          {
            v11 = v20 - v18;
          }

          if (v11 >= 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v12 = MEMORY[0x1E696AEC0];
          if (v11 >= 0x17)
          {
            operator new();
          }

          v16 = v11;
          if (v11)
          {
            memmove(&__dst, &v19[v18], v11);
          }

          *(&__dst + v11) = 0;
          if (v16 >= 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst;
          }

          v14 = [v12 stringWithUTF8String:p_dst];
          v7[2](v7, v8, v14);

          if (v16 < 0)
          {
            operator delete(__dst);
          }
        }
      }

      else
      {
        v7[2](v7, v8, &stru_1F1CAD038);
      }
    }

    ++v8;
  }
}

- (void)enumerateTokenIDsForRawPrefix:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = v6;
  v8 = [v6 UTF8String];
  v9 = strlen(v8);
  v10 = 0;
  p_processor = &self->_processor;
  while (v10 < (*(p_processor->_vptr$SentencePieceProcessor + 62))(p_processor))
  {
    v20 = (*(p_processor->_vptr$SentencePieceProcessor + 64))(p_processor, v10);
    v21 = v12;
    if (v12 && !std::string_view::compare[abi:ne200100](&v20, 0, v9, v8, v9))
    {
      if (v21 < v9)
      {
        std::__throw_out_of_range[abi:ne200100]("string_view::substr");
      }

      if (v21 - v9 >= v21)
      {
        v13 = v21;
      }

      else
      {
        v13 = v21 - v9;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v14 = MEMORY[0x1E696AEC0];
      if (v13 >= 0x17)
      {
        operator new();
      }

      v19 = v13;
      if (v13)
      {
        memmove(&__dst, (v20 + v9), v13);
      }

      *(&__dst + v13) = 0;
      if (v19 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      v16 = [v14 stringWithUTF8String:p_dst];
      v7[2](v7, v10, v16);

      if (v19 < 0)
      {
        operator delete(__dst);
      }
    }

    ++v10;
  }
}

- (void)enumerateTokenIDsForDecodedPrefix:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 UTF8String];
  v9 = strlen(v8);
  v10 = 0;
  p_processor = &self->_processor;
  memset(&__str, 0, sizeof(__str));
  while (v10 < (*(p_processor->_vptr$SentencePieceProcessor + 62))(p_processor))
  {
    v20 = v10;
    memset(&__p, 0, sizeof(__p));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v20, &__p, 1uLL);
    (*(p_processor->_vptr$SentencePieceProcessor + 21))(&v19, p_processor, &__p, &__str);
    v12 = v19.__r_.__value_.__r.__words[0];
    sentencepiece::util::Status::~Status(&v19);
    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (!v12)
    {
      size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        size = __str.__r_.__value_.__l.__size_;
        if (!__str.__r_.__value_.__l.__size_)
        {
          goto LABEL_6;
        }

        p_str = __str.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (!*(&__str.__r_.__value_.__s + 23))
        {
          goto LABEL_6;
        }

        p_str = &__str;
      }

      __p.__r_.__value_.__r.__words[0] = p_str;
      __p.__r_.__value_.__l.__size_ = size;
      if (!std::string_view::compare[abi:ne200100](&__p, 0, v9, v8, v9))
      {
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v15 = __str.__r_.__value_.__l.__size_;
        }

        std::string::basic_string(&__p, &__str, v9, v15, &v19);
        v16 = MEMORY[0x1E696AEC0];
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v19, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          v19 = __p;
        }

        if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = &v19;
        }

        else
        {
          v17 = v19.__r_.__value_.__r.__words[0];
        }

        v18 = [v16 stringWithUTF8String:{v17, *&v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__r.__words[2]}];
        v7[2](v7, v10, v18);

        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

LABEL_6:
    ++v10;
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

- (void)initWithTokenizerPath:(NSObject *)a3 error:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a2 = 136446210;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_1A8E85000, a2, a3, "Failed to load tokenizer error message: %{public}s", a2);
}

- (void)tokenize:(NSObject *)a3 error:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a2 = 136446210;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_1A8E85000, a2, a3, "Failed to tokenize text: %{public}s", a2);
}

- (void)detokenize:(NSObject *)a3 error:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a2 = 136446210;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_1A8E85000, a2, a3, "Failed to detokenize tokens: %{public}s", a2);
}

@end