@interface VIFaissIndex
- (VIFaissIndex)initWithContentsOfFile:(id)file error:(id *)error;
- (VIFaissIndex)initWithContentsOfURL:(id)l error:(id *)error;
- (id)computeResidualForEmbedding:(id)embedding identifier:(int64_t)identifier error:(id *)error;
- (id)reconstructEmbeddingForIdentifier:(int64_t)identifier;
- (id)searchWithQuery:(id)query numberOfNearestNeighbors:(int64_t)neighbors options:(unint64_t)options error:(id *)error;
- (void)getFaissError:(id *)error forCode:(int64_t)code userInfo:(id)info;
- (void)getFaissError:(id *)error forFaissException:(const void *)exception;
@end

@implementation VIFaissIndex

- (VIFaissIndex)initWithContentsOfFile:(id)file error:(id *)error
{
  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:file];
  v7 = [(VIFaissIndex *)self initWithContentsOfURL:v6 error:error];

  return v7;
}

- (VIFaissIndex)initWithContentsOfURL:(id)l error:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v15.receiver = self;
  v15.super_class = VIFaissIndex;
  v7 = [(VIFaissIndex *)&v15 init];
  if (!v7)
  {
    goto LABEL_8;
  }

  if (([lCopy isFileURL] & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_9;
    }

    v16 = *MEMORY[0x1E696A998];
    v17[0] = lCopy;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:262 userInfo:v13];

LABEL_8:
    error = 0;
    goto LABEL_9;
  }

  path = [lCopy path];
  v9 = path;
  fileSystemRepresentation = [path fileSystemRepresentation];

  index = faiss::read_index(fileSystemRepresentation, 0);
  ptr = v7->_index.__ptr_;
  v7->_index.__ptr_ = index;
  if (ptr)
  {
    (*(*ptr + 8))(ptr);
  }

  error = v7;
LABEL_9:

  return error;
}

- (id)searchWithQuery:(id)query numberOfNearestNeighbors:(int64_t)neighbors options:(unint64_t)options error:(id *)error
{
  optionsCopy = options;
  queryCopy = query;
  if ([queryCopy dataType] != 65568)
  {
    v17 = 5;
LABEL_8:
    [(VIFaissIndex *)self getFaissError:error forCode:v17];
    v18 = 0;
    goto LABEL_40;
  }

  shape = [queryCopy shape];
  v10 = [shape count];

  if (v10 != 2)
  {
    v17 = 6;
    goto LABEL_8;
  }

  dataPointer = [queryCopy dataPointer];
  v47 = objc_opt_new();
  shape2 = [queryCopy shape];
  v12 = [shape2 objectAtIndexedSubscript:0];
  integerValue = [v12 integerValue];

  shape3 = [queryCopy shape];
  v15 = [shape3 objectAtIndexedSubscript:1];
  integerValue2 = [v15 integerValue];

  if (integerValue2 == [(VIFaissIndex *)self embeddingLength])
  {
    v52[0] = 0;
    std::vector<long long>::vector[abi:ne200100](v53, integerValue * neighbors);
    LODWORD(v51[0]) = 0;
    std::vector<float>::vector[abi:ne200100](v52, integerValue * neighbors);
    LODWORD(__p) = 0;
    std::vector<float>::vector[abi:ne200100](v51, integerValue2 * integerValue * neighbors);
    std::vector<float>::vector[abi:ne200100](&__p, integerValue2);
    ptr = self->_index.__ptr_;
    selfCopy = self;
    if (optionsCopy)
    {
      (*(*ptr + 96))(ptr, integerValue, dataPointer, neighbors, v52[0], v53[0], v51[0]);
    }

    else
    {
      (*(*ptr + 40))(ptr, integerValue, dataPointer, neighbors, v52[0], v53[0]);
    }

    if (integerValue >= 1)
    {
      v41 = 0;
      v42 = 0;
      v39 = integerValue;
      v44 = optionsCopy;
      while (neighbors < 1)
      {
LABEL_30:
        ++v41;
        v42 += 4 * integerValue2 * neighbors;
        if (v41 == v39)
        {
          goto LABEL_31;
        }
      }

      v19 = 0;
      v20 = v42;
      v21 = v41 * neighbors;
      v43 = dataPointer + 4 * v41 * integerValue2;
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
          if (optionsCopy)
          {
            v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:integerValue2];
            v30 = integerValue2;
            v31 = v20;
            if (integerValue2 >= 1)
            {
              do
              {
                LODWORD(v29) = *(v51[0] + v31);
                v32 = [MEMORY[0x1E696AD98] numberWithFloat:{v29, dataPointer}];
                [v24 addObject:v32];

                v31 += 4;
                --v30;
              }

              while (v30);
            }

            optionsCopy = v44;
            self = selfCopy;
            if ((v44 & 2) != 0)
            {
LABEL_26:
              (*(*self->_index.__ptr_ + 104))(self->_index.__ptr_, v43, __p, v23);
              v25 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:integerValue2];
              v34 = __p;
              if (v50 != __p)
              {
                v35 = 0;
                do
                {
                  LODWORD(v33) = v34[v35];
                  v36 = [MEMORY[0x1E696AD98] numberWithFloat:{v33, dataPointer}];
                  [v25 addObject:v36];

                  ++v35;
                  v34 = __p;
                }

                while (v35 < (v50 - __p) >> 2);
                optionsCopy = v44;
                self = selfCopy;
              }

              goto LABEL_18;
            }
          }

          else
          {
            v24 = 0;
            if ((optionsCopy & 2) != 0)
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
        v20 += 4 * integerValue2;
        if (v19 == neighbors)
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
    [(VIFaissIndex *)self getFaissError:error forCode:3];
    v18 = 0;
  }

LABEL_40:

  return v18;
}

- (id)reconstructEmbeddingForIdentifier:(int64_t)identifier
{
  embeddingLength = [(VIFaissIndex *)self embeddingLength];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:embeddingLength];
  std::vector<float>::vector[abi:ne200100](&__p, embeddingLength);
  (*(*self->_index.__ptr_ + 80))(self->_index.__ptr_, identifier, __p);
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

- (id)computeResidualForEmbedding:(id)embedding identifier:(int64_t)identifier error:(id *)error
{
  embeddingCopy = embedding;
  embeddingLength = [(VIFaissIndex *)self embeddingLength];
  if ([embeddingCopy count] == embeddingLength)
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:embeddingLength];
    std::vector<float>::vector[abi:ne200100](&v21, embeddingLength);
    std::vector<float>::vector[abi:ne200100](&__p, embeddingLength);
    if (v22 != v21)
    {
      v10 = 0;
      do
      {
        v11 = [embeddingCopy objectAtIndexedSubscript:v10];
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
    [(VIFaissIndex *)self getFaissError:error forCode:4];
    v17 = 0;
  }

  return v17;
}

- (void)getFaissError:(id *)error forCode:(int64_t)code userInfo:(id)info
{
  infoCopy = info;
  v8 = infoCopy;
  if (error)
  {
    v9 = infoCopy;
    infoCopy = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.argos.faiss.error_domain" code:code userInfo:infoCopy];
    *error = infoCopy;
    v8 = v9;
  }

  MEMORY[0x1EEE66BB8](infoCopy, v8);
}

- (void)getFaissError:(id *)error forFaissException:(const void *)exception
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (error)
  {
    v11 = *MEMORY[0x1E696A578];
    v7 = *(exception + 1);
    v5 = exception + 8;
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

    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.argos.faiss.error_domain" code:2 userInfo:v10];
  }
}

@end