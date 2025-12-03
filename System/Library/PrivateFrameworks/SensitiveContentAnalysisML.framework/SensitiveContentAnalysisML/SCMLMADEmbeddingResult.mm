@interface SCMLMADEmbeddingResult
- (SCMLMADEmbeddingResult)initWithType:(unint64_t)type data:(id)data shape:(id)shape bias:(id)bias scale:(id)scale;
- (id)float16DataWithError:(id *)error;
- (id)float32DataWithError:(id *)error;
- (id)tokenCountWithError:(id *)error;
@end

@implementation SCMLMADEmbeddingResult

- (SCMLMADEmbeddingResult)initWithType:(unint64_t)type data:(id)data shape:(id)shape bias:(id)bias scale:(id)scale
{
  dataCopy = data;
  shapeCopy = shape;
  biasCopy = bias;
  scaleCopy = scale;
  v20.receiver = self;
  v20.super_class = SCMLMADEmbeddingResult;
  v17 = [(SCMLMADEmbeddingResult *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_type = type;
    objc_storeStrong(&v17->_data, data);
    objc_storeStrong(&v18->_shape, shape);
    objc_storeStrong(&v18->_bias, bias);
    objc_storeStrong(&v18->_scale, scale);
  }

  return v18;
}

- (id)tokenCountWithError:(id *)error
{
  shape = [(SCMLMADEmbeddingResult *)self shape];
  v6 = [shape count];

  if (v6 < 2)
  {
    shape2 = [(SCMLMADEmbeddingResult *)self shape];
    v11 = [shape2 componentsJoinedByString:{@", "}];
    scml::strFromNSString(v11, &v17);

    std::operator+<char>();
    if ((v16 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v16 & 0x80u) == 0)
    {
      v13 = v16;
    }

    else
    {
      v13 = __p[1];
    }

    *error = scml::error(0x15u, v12, v13);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (v18 < 0)
    {
      operator delete(v17);
    }

    v9 = 0;
  }

  else
  {
    shape3 = [(SCMLMADEmbeddingResult *)self shape];
    shape4 = [(SCMLMADEmbeddingResult *)self shape];
    v9 = [shape3 objectAtIndexedSubscript:{objc_msgSend(shape4, "count") - 2}];
  }

  return v9;
}

- (id)float16DataWithError:(id *)error
{
  type = [(SCMLMADEmbeddingResult *)self type];
  if (type != 2)
  {
    if (type == 1)
    {
      data = [(SCMLMADEmbeddingResult *)self data];
      goto LABEL_23;
    }

    type2 = [(SCMLMADEmbeddingResult *)self type];
    scml::strCat<char const(&)[32],MADUnifiedEmbeddingVersion &>("unexpected embedding type: ", &type2, &__p);
    if ((v30 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v30 & 0x80u) == 0)
    {
      v13 = v30;
    }

    else
    {
      v13 = v29;
    }

    *error = scml::error(0x15u, p_p, v13);
    if (v30 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_22;
  }

  data2 = [(SCMLMADEmbeddingResult *)self data];
  v8 = [data2 length] & 3;

  if (v8)
  {
    data3 = [(SCMLMADEmbeddingResult *)self data];
    type2 = [data3 length];
    scml::strCat<char const(&)[32],MADUnifiedEmbeddingVersion &>("unexpected embedding size: ", &type2, &__p);
    if ((v30 & 0x80u) == 0)
    {
      v10 = &__p;
    }

    else
    {
      v10 = __p;
    }

    if ((v30 & 0x80u) == 0)
    {
      v11 = v30;
    }

    else
    {
      v11 = v29;
    }

    *error = scml::error(0x15u, v10, v11);
    if (v30 < 0)
    {
      operator delete(__p);
    }

LABEL_22:
    data = 0;
    goto LABEL_23;
  }

  data4 = [(SCMLMADEmbeddingResult *)self data];
  v16 = [data4 length];
  v17 = v16 >> 2;

  data = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:2 * (v16 >> 2)];
  data5 = [(SCMLMADEmbeddingResult *)self data];
  bytes = [data5 bytes];

  mutableBytes = [data mutableBytes];
  if (v16 >= 4)
  {
    do
    {
      v21 = *bytes++;
      _S0 = v21;
      __asm { FCVT            H0, S0 }

      *mutableBytes++ = _S0;
      --v17;
    }

    while (v17);
  }

LABEL_23:

  return data;
}

- (id)float32DataWithError:(id *)error
{
  type = [(SCMLMADEmbeddingResult *)self type];
  if (type == 2)
  {
    data = [(SCMLMADEmbeddingResult *)self data];
    goto LABEL_26;
  }

  if (type != 1)
  {
    type2 = [(SCMLMADEmbeddingResult *)self type];
    scml::strCat<char const(&)[32],MADUnifiedEmbeddingVersion &>("unexpected embedding type: ", &type2, &__p);
    if ((v31 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v31 & 0x80u) == 0)
    {
      v23 = v31;
    }

    else
    {
      v23 = v30;
    }

    *error = scml::error(0x15u, p_p, v23);
    if (v31 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_25;
  }

  data2 = [(SCMLMADEmbeddingResult *)self data];
  v7 = [data2 length];

  if (v7)
  {
    data3 = [(SCMLMADEmbeddingResult *)self data];
    type2 = [data3 length];
    scml::strCat<char const(&)[32],MADUnifiedEmbeddingVersion &>("unexpected embedding size: ", &type2, &__p);
    if ((v31 & 0x80u) == 0)
    {
      v25 = &__p;
    }

    else
    {
      v25 = __p;
    }

    if ((v31 & 0x80u) == 0)
    {
      v26 = v31;
    }

    else
    {
      v26 = v30;
    }

    *error = scml::error(0x15u, v25, v26);
    if (v31 < 0)
    {
      operator delete(__p);
    }

LABEL_25:
    data = 0;
    goto LABEL_26;
  }

  data4 = [(SCMLMADEmbeddingResult *)self data];
  v9 = [data4 length];
  v10 = v9 >> 1;

  data = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:4 * (v9 >> 1)];
  data5 = [(SCMLMADEmbeddingResult *)self data];
  bytes = [data5 bytes];

  mutableBytes = [data mutableBytes];
  if (v9 >= 2)
  {
    do
    {
      v15 = *bytes++;
      _H0 = v15;
      __asm { FCVT            S0, H0 }

      *mutableBytes++ = _S0;
      --v10;
    }

    while (v10);
  }

LABEL_26:

  return data;
}

@end