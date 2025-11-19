@interface SCMLMADEmbeddingResult
- (SCMLMADEmbeddingResult)initWithType:(unint64_t)a3 data:(id)a4 shape:(id)a5 bias:(id)a6 scale:(id)a7;
- (id)float16DataWithError:(id *)a3;
- (id)float32DataWithError:(id *)a3;
- (id)tokenCountWithError:(id *)a3;
@end

@implementation SCMLMADEmbeddingResult

- (SCMLMADEmbeddingResult)initWithType:(unint64_t)a3 data:(id)a4 shape:(id)a5 bias:(id)a6 scale:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = SCMLMADEmbeddingResult;
  v17 = [(SCMLMADEmbeddingResult *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_type = a3;
    objc_storeStrong(&v17->_data, a4);
    objc_storeStrong(&v18->_shape, a5);
    objc_storeStrong(&v18->_bias, a6);
    objc_storeStrong(&v18->_scale, a7);
  }

  return v18;
}

- (id)tokenCountWithError:(id *)a3
{
  v5 = [(SCMLMADEmbeddingResult *)self shape];
  v6 = [v5 count];

  if (v6 < 2)
  {
    v10 = [(SCMLMADEmbeddingResult *)self shape];
    v11 = [v10 componentsJoinedByString:{@", "}];
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

    *a3 = scml::error(0x15u, v12, v13);
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
    v7 = [(SCMLMADEmbeddingResult *)self shape];
    v8 = [(SCMLMADEmbeddingResult *)self shape];
    v9 = [v7 objectAtIndexedSubscript:{objc_msgSend(v8, "count") - 2}];
  }

  return v9;
}

- (id)float16DataWithError:(id *)a3
{
  v5 = [(SCMLMADEmbeddingResult *)self type];
  if (v5 != 2)
  {
    if (v5 == 1)
    {
      v6 = [(SCMLMADEmbeddingResult *)self data];
      goto LABEL_23;
    }

    v27 = [(SCMLMADEmbeddingResult *)self type];
    scml::strCat<char const(&)[32],MADUnifiedEmbeddingVersion &>("unexpected embedding type: ", &v27, &__p);
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

    *a3 = scml::error(0x15u, p_p, v13);
    if (v30 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_22;
  }

  v7 = [(SCMLMADEmbeddingResult *)self data];
  v8 = [v7 length] & 3;

  if (v8)
  {
    v9 = [(SCMLMADEmbeddingResult *)self data];
    v27 = [v9 length];
    scml::strCat<char const(&)[32],MADUnifiedEmbeddingVersion &>("unexpected embedding size: ", &v27, &__p);
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

    *a3 = scml::error(0x15u, v10, v11);
    if (v30 < 0)
    {
      operator delete(__p);
    }

LABEL_22:
    v6 = 0;
    goto LABEL_23;
  }

  v15 = [(SCMLMADEmbeddingResult *)self data];
  v16 = [v15 length];
  v17 = v16 >> 2;

  v6 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:2 * (v16 >> 2)];
  v18 = [(SCMLMADEmbeddingResult *)self data];
  v19 = [v18 bytes];

  v20 = [v6 mutableBytes];
  if (v16 >= 4)
  {
    do
    {
      v21 = *v19++;
      _S0 = v21;
      __asm { FCVT            H0, S0 }

      *v20++ = _S0;
      --v17;
    }

    while (v17);
  }

LABEL_23:

  return v6;
}

- (id)float32DataWithError:(id *)a3
{
  v5 = [(SCMLMADEmbeddingResult *)self type];
  if (v5 == 2)
  {
    v11 = [(SCMLMADEmbeddingResult *)self data];
    goto LABEL_26;
  }

  if (v5 != 1)
  {
    v28 = [(SCMLMADEmbeddingResult *)self type];
    scml::strCat<char const(&)[32],MADUnifiedEmbeddingVersion &>("unexpected embedding type: ", &v28, &__p);
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

    *a3 = scml::error(0x15u, p_p, v23);
    if (v31 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_25;
  }

  v6 = [(SCMLMADEmbeddingResult *)self data];
  v7 = [v6 length];

  if (v7)
  {
    v24 = [(SCMLMADEmbeddingResult *)self data];
    v28 = [v24 length];
    scml::strCat<char const(&)[32],MADUnifiedEmbeddingVersion &>("unexpected embedding size: ", &v28, &__p);
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

    *a3 = scml::error(0x15u, v25, v26);
    if (v31 < 0)
    {
      operator delete(__p);
    }

LABEL_25:
    v11 = 0;
    goto LABEL_26;
  }

  v8 = [(SCMLMADEmbeddingResult *)self data];
  v9 = [v8 length];
  v10 = v9 >> 1;

  v11 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:4 * (v9 >> 1)];
  v12 = [(SCMLMADEmbeddingResult *)self data];
  v13 = [v12 bytes];

  v14 = [v11 mutableBytes];
  if (v9 >= 2)
  {
    do
    {
      v15 = *v13++;
      _H0 = v15;
      __asm { FCVT            S0, H0 }

      *v14++ = _S0;
      --v10;
    }

    while (v10);
  }

LABEL_26:

  return v11;
}

@end