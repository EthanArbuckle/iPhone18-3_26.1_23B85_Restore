@interface VIFaissIndex
- (VIFaissIndex)initWithContentsOfFile:(id)a3 error:(id *)a4;
- (VIFaissIndex)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (id)computeResidualForEmbedding:(id)a3 identifier:(int64_t)a4 error:(id *)a5;
- (id)reconstructEmbeddingForIdentifier:(int64_t)a3;
- (id)searchWithQuery:(id)a3 numberOfNearestNeighbors:(int64_t)a4 options:(unint64_t)a5 error:(id *)a6;
- (void)getFaissError:(id *)a3 forCode:(int64_t)a4 userInfo:(id)a5;
- (void)getFaissError:(id *)a3 forFaissException:(const void *)a4;
@end

@implementation VIFaissIndex

- (VIFaissIndex)initWithContentsOfFile:(id)a3 error:(id *)a4
{
  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:a3];
  v7 = [(VIFaissIndex *)self initWithContentsOfURL:v6 error:a4];

  return v7;
}

- (VIFaissIndex)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v15.receiver = self;
  v15.super_class = VIFaissIndex;
  v7 = [(VIFaissIndex *)&v15 init];
  if (!v7)
  {
    goto LABEL_8;
  }

  if (([v6 isFileURL] & 1) == 0)
  {
    if (!a4)
    {
      goto LABEL_9;
    }

    v16 = *MEMORY[0x1E696A998];
    v17[0] = v6;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:262 userInfo:v13];

LABEL_8:
    a4 = 0;
    goto LABEL_9;
  }

  v8 = [v6 path];
  v9 = v8;
  v10 = [v8 fileSystemRepresentation];

  index = faiss::read_index(v10, 0);
  ptr = v7->_index.__ptr_;
  v7->_index.__ptr_ = index;
  if (ptr)
  {
    (*(*ptr + 8))(ptr);
  }

  a4 = v7;
LABEL_9:

  return a4;
}

- (id)searchWithQuery:(id)a3 numberOfNearestNeighbors:(int64_t)a4 options:(unint64_t)a5 error:(id *)a6
{
  v7 = a5;
  v40 = a3;
  if ([v40 dataType] != 65568)
  {
    v17 = 5;
LABEL_8:
    [(VIFaissIndex *)self getFaissError:a6 forCode:v17];
    v18 = 0;
    goto LABEL_40;
  }

  v9 = [v40 shape];
  v10 = [v9 count];

  if (v10 != 2)
  {
    v17 = 6;
    goto LABEL_8;
  }

  v38 = [v40 dataPointer];
  v47 = objc_opt_new();
  v11 = [v40 shape];
  v12 = [v11 objectAtIndexedSubscript:0];
  v13 = [v12 integerValue];

  v14 = [v40 shape];
  v15 = [v14 objectAtIndexedSubscript:1];
  v46 = [v15 integerValue];

  if (v46 == [(VIFaissIndex *)self embeddingLength])
  {
    v52[0] = 0;
    std::vector<long long>::vector[abi:ne200100](v53, v13 * a4);
    LODWORD(v51[0]) = 0;
    std::vector<float>::vector[abi:ne200100](v52, v13 * a4);
    LODWORD(__p) = 0;
    std::vector<float>::vector[abi:ne200100](v51, v46 * v13 * a4);
    std::vector<float>::vector[abi:ne200100](&__p, v46);
    ptr = self->_index.__ptr_;
    v45 = self;
    if (v7)
    {
      (*(*ptr + 96))(ptr, v13, v38, a4, v52[0], v53[0], v51[0]);
    }

    else
    {
      (*(*ptr + 40))(ptr, v13, v38, a4, v52[0], v53[0]);
    }

    if (v13 >= 1)
    {
      v41 = 0;
      v42 = 0;
      v39 = v13;
      v44 = v7;
      while (a4 < 1)
      {
LABEL_30:
        ++v41;
        v42 += 4 * v46 * a4;
        if (v41 == v39)
        {
          goto LABEL_31;
        }
      }

      v19 = 0;
      v20 = v42;
      v21 = v41 * a4;
      v43 = v38 + 4 * v41 * v46;
      while (1)
      {
        v22 = *(v52[0] + v19 + v21);
        if (*(v53[0] + v19 + v21) == -1 || (v23 = [(VIFaissIndex *)self identifierForIndex:?], v23 == 0x7FFFFFFFFFFFFFFFLL))
        {
          v24 = 0;
          v25 = 0;
          v23 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          if (v7)
          {
            v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v46];
            v30 = v46;
            v31 = v20;
            if (v46 >= 1)
            {
              do
              {
                LODWORD(v29) = *(v51[0] + v31);
                v32 = [MEMORY[0x1E696AD98] numberWithFloat:{v29, v38}];
                [v24 addObject:v32];

                v31 += 4;
                --v30;
              }

              while (v30);
            }

            v7 = v44;
            self = v45;
            if ((v44 & 2) != 0)
            {
LABEL_26:
              (*(*self->_index.__ptr_ + 104))(self->_index.__ptr_, v43, __p, v23);
              v25 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v46];
              v34 = __p;
              if (v50 != __p)
              {
                v35 = 0;
                do
                {
                  LODWORD(v33) = v34[v35];
                  v36 = [MEMORY[0x1E696AD98] numberWithFloat:{v33, v38}];
                  [v25 addObject:v36];

                  ++v35;
                  v34 = __p;
                }

                while (v35 < (v50 - __p) >> 2);
                v7 = v44;
                self = v45;
              }

              goto LABEL_18;
            }
          }

          else
          {
            v24 = 0;
            if ((v7 & 2) != 0)
            {
              goto LABEL_26;
            }
          }

          v25 = 0;
        }

LABEL_18:
        v26 = [VIFaissSearchResult alloc];
        LODWORD(v27) = v22;
        v28 = [(VIFaissSearchResult *)v26 initWithIdentifier:v23 distance:v24 embedding:v25 residual:v27];
        [v47 addObject:v28];

        ++v19;
        v20 += 4 * v46;
        if (v19 == a4)
        {
          goto LABEL_30;
        }
      }
    }

LABEL_31:
    v18 = v47;
    if (__p)
    {
      v50 = __p;
      operator delete(__p);
    }

    if (v51[0])
    {
      v51[1] = v51[0];
      operator delete(v51[0]);
    }

    if (v52[0])
    {
      v52[1] = v52[0];
      operator delete(v52[0]);
    }

    if (v53[0])
    {
      v53[1] = v53[0];
      operator delete(v53[0]);
    }
  }

  else
  {
    [(VIFaissIndex *)self getFaissError:a6 forCode:3];
    v18 = 0;
  }

LABEL_40:

  return v18;
}

- (id)reconstructEmbeddingForIdentifier:(int64_t)a3
{
  v5 = [(VIFaissIndex *)self embeddingLength];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v5];
  std::vector<float>::vector[abi:ne200100](&__p, v5);
  (*(*self->_index.__ptr_ + 80))(self->_index.__ptr_, a3, __p);
  v8 = __p;
  if (v13 != __p)
  {
    v9 = 0;
    do
    {
      LODWORD(v7) = v8[v9];
      v10 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
      [v6 addObject:v10];

      ++v9;
      v8 = __p;
    }

    while (v9 < (v13 - __p) >> 2);
  }

  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  return v6;
}

- (id)computeResidualForEmbedding:(id)a3 identifier:(int64_t)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [(VIFaissIndex *)self embeddingLength];
  if ([v7 count] == v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8];
    std::vector<float>::vector[abi:ne200100](&v21, v8);
    std::vector<float>::vector[abi:ne200100](&__p, v8);
    if (v22 != v21)
    {
      v10 = 0;
      do
      {
        v11 = [v7 objectAtIndexedSubscript:v10];
        [v11 floatValue];
        *(v21 + v10) = v12;

        ++v10;
      }

      while (v10 < (v22 - v21) >> 2);
    }

    (*(*self->_index.__ptr_ + 104))(self->_index.__ptr_);
    v14 = __p;
    if (v20 != __p)
    {
      v15 = 0;
      do
      {
        LODWORD(v13) = v14[v15];
        v16 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
        [v9 addObject:v16];

        ++v15;
        v14 = __p;
      }

      while (v15 < (v20 - __p) >> 2);
    }

    v17 = v9;
    if (__p)
    {
      v20 = __p;
      operator delete(__p);
    }

    if (v21)
    {
      v22 = v21;
      operator delete(v21);
    }
  }

  else
  {
    [(VIFaissIndex *)self getFaissError:a5 forCode:4];
    v17 = 0;
  }

  return v17;
}

- (void)getFaissError:(id *)a3 forCode:(int64_t)a4 userInfo:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a3)
  {
    v9 = v7;
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.argos.faiss.error_domain" code:a4 userInfo:v7];
    *a3 = v7;
    v8 = v9;
  }

  MEMORY[0x1EEE66BB8](v7, v8);
}

- (void)getFaissError:(id *)a3 forFaissException:(const void *)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v11 = *MEMORY[0x1E696A578];
    v7 = *(a4 + 1);
    v5 = a4 + 8;
    v6 = v7;
    if (v5[23] >= 0)
    {
      v8 = v5;
    }

    else
    {
      v8 = v6;
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
    v12[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

    *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.argos.faiss.error_domain" code:2 userInfo:v10];
  }
}

@end