@interface _UITextSizeCache
- (BOOL)getSize:(CGSize *)a3 baselineInfo:(id *)a4 forTargetSize:(CGSize)a5 isMultiline:(BOOL)a6;
- (id).cxx_construct;
- (id)description;
- (void)addSize:(CGSize)a3 baselineInfo:(id *)a4 forTargetSize:(CGSize)a5;
@end

@implementation _UITextSizeCache

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (BOOL)getSize:(CGSize *)a3 baselineInfo:(id *)a4 forTargetSize:(CGSize)a5 isMultiline:(BOOL)a6
{
  if (fabs(a5.width) < 0.001)
  {
    a5.width = 3.40282347e38;
  }

  if (fabs(a5.height) < 0.001)
  {
    a5.height = 3.40282347e38;
  }

  begin = self->_cache.__begin_;
  end = self->_cache.__end_;
  if (begin == end)
  {
    return 0;
  }

  while (1)
  {
    v8 = *begin;
    if (vabdd_f64(*begin, a5.width) < 0.001 || (v8 - a5.width < -0.001 ? (v9 = a6) : (v9 = 0), !v9 && (v10 = *(begin + 2), v10 - v8 < -0.001) && v10 - a5.width < 0.001))
    {
      v11 = *(begin + 1);
      if (vabdd_f64(v11, a5.height) < 0.001)
      {
        break;
      }

      v12 = *(begin + 3);
      if (v12 - v11 < -0.001 && v12 - a5.height < 0.001)
      {
        break;
      }
    }

    begin = (begin + 120);
    if (begin == end)
    {
      return 0;
    }
  }

  v14.var2.size = *(begin + 4);
  *&v14.var3 = *(begin + 5);
  *&v14.var4.origin.y = *(begin + 6);
  v14.var4.size.height = *(begin + 14);
  *&v14.var0 = *(begin + 2);
  v14.var2.origin = *(begin + 3);
  *a3 = *(begin + 1);
  if (a4)
  {
    *a4 = v14;
  }

  return 1;
}

- (void)addSize:(CGSize)a3 baselineInfo:(id *)a4 forTargetSize:(CGSize)a5
{
  begin = self->_cache.__begin_;
  end = self->_cache.__end_;
  if (0xEEEEEEEEEEEEEEEFLL * ((end - begin) >> 3) >= 7)
  {
    self->_cache.__end_ = begin;
    end = begin;
  }

  if (fabs(a5.width) < 0.001)
  {
    a5.width = 3.40282347e38;
  }

  if (fabs(a5.height) < 0.001)
  {
    a5.height = 3.40282347e38;
  }

  v55 = a5;
  v56 = a3;
  if (a4)
  {
    v8 = *&a4->var3;
    size = a4->var2.size;
    v60 = v8;
    v61 = *&a4->var4.origin.y;
    height = a4->var4.size.height;
    origin = a4->var2.origin;
    v57 = *&a4->var0;
    v58 = origin;
  }

  else
  {
    height = 0.0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0;
    size = 0;
    v57 = 0u;
  }

  if (end == begin)
  {
    v10 = begin;
  }

  else
  {
    v10 = begin;
    v11 = 0xEEEEEEEEEEEEEEEFLL * ((end - begin) >> 3);
    do
    {
      v12 = v11 >> 1;
      v13 = (v10 + 120 * (v11 >> 1));
      v14 = *v13 - a5.width;
      if (v14 < -0.001 || fabs(v14) < 0.001 && v13[1] - a5.height < -0.001)
      {
        v10 = (v13 + 15);
        v12 = v11 + ~v12;
      }

      v11 = v12;
    }

    while (v12);
  }

  cap = self->_cache.__cap_;
  if (end >= cap)
  {
    v32 = 0xEEEEEEEEEEEEEEEFLL * ((end - begin) >> 3) + 1;
    if (v32 > 0x222222222222222)
    {
      std::vector<_UIAuxillarySolveResult>::__throw_length_error[abi:nn200100]();
    }

    v33 = v10 - begin;
    v34 = 0xEEEEEEEEEEEEEEEFLL * ((cap - begin) >> 3);
    if (2 * v34 > v32)
    {
      v32 = 2 * v34;
    }

    if (v34 >= 0x111111111111111)
    {
      v35 = 0x222222222222222;
    }

    else
    {
      v35 = v32;
    }

    if (v35)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<ui_size_cache_value>>(v35);
    }

    v42 = 8 * (v33 >> 3);
    if (!(0xEEEEEEEEEEEEEEEFLL * (v33 >> 3)))
    {
      if (v33 < 1)
      {
        if (v10 == begin)
        {
          v43 = 1;
        }

        else
        {
          v43 = 0xDDDDDDDDDDDDDDDELL * (v33 >> 3);
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<ui_size_cache_value>>(v43);
      }

      v42 = 8 * (v33 >> 3) - 120 * ((0xEEEEEEEEEEEEEEEFLL * ((8 * (v33 >> 3)) >> 3) + 1 + ((0xEEEEEEEEEEEEEEEFLL * ((8 * (v33 >> 3)) >> 3) + 1) >> 63)) >> 1);
    }

    v44 = v55;
    v45 = v56;
    v46 = v58;
    *(v42 + 32) = v57;
    *(v42 + 48) = v46;
    *v42 = v44;
    *(v42 + 16) = v45;
    v47 = size;
    v48 = v60;
    v49 = v61;
    *(v42 + 112) = height;
    *(v42 + 80) = v48;
    *(v42 + 96) = v49;
    *(v42 + 64) = v47;
    memcpy((v42 + 120), v10, self->_cache.__end_ - v10);
    v50 = self->_cache.__begin_;
    v51 = (self->_cache.__end_ + v42 - v10 + 120);
    self->_cache.__end_ = v10;
    v52 = v10 - v50;
    v53 = (v42 - (v10 - v50));
    memcpy(v53, v50, v52);
    v54 = self->_cache.__begin_;
    self->_cache.__begin_ = v53;
    self->_cache.__end_ = v51;
    self->_cache.__cap_ = 0;
    if (v54)
    {

      operator delete(v54);
    }
  }

  else if (v10 == end)
  {
    v36 = v55;
    v37 = v56;
    v38 = v58;
    *(end + 2) = v57;
    *(end + 3) = v38;
    *end = v36;
    *(end + 1) = v37;
    v39 = size;
    v40 = v60;
    v41 = v61;
    *(end + 14) = height;
    *(end + 5) = v40;
    *(end + 6) = v41;
    *(end + 4) = v39;
    self->_cache.__end_ = (end + 120);
  }

  else
  {
    v16 = (v10 + 120);
    v17 = end;
    if (end >= 0x78)
    {
      v17 = (end + 120);
      v18 = *(end - 120);
      v19 = *(end - 104);
      v20 = *(end - 72);
      *(end + 2) = *(end - 88);
      *(end + 3) = v20;
      *end = v18;
      *(end + 1) = v19;
      v21 = *(end - 56);
      v22 = *(end - 40);
      v23 = *(end - 24);
      *(end + 14) = *(end - 1);
      *(end + 5) = v22;
      *(end + 6) = v23;
      *(end + 4) = v21;
    }

    self->_cache.__end_ = v17;
    if (end != v16)
    {
      memmove((v10 + 120), v10, end - v16);
      v17 = self->_cache.__end_;
    }

    v24 = v17 <= &v55 || v10 > &v55;
    v25 = 120;
    if (v24)
    {
      v25 = 0;
    }

    v26 = *(&v55 + v25);
    v27 = *(&v55 + v25 + 16);
    v28 = *(&v58 + v25);
    *(v10 + 32) = *(&v57 + v25);
    *(v10 + 48) = v28;
    *v10 = v26;
    *(v10 + 16) = v27;
    v29 = *(&size + v25);
    v30 = *(&v60 + v25);
    v31 = *(&v61 + v25);
    *(v10 + 112) = *(&height + v25);
    *(v10 + 80) = v30;
    *(v10 + 96) = v31;
    *(v10 + 64) = v29;
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:0xEEEEEEEEEEEEEEEFLL * ((self->_cache.__end_ - self->_cache.__begin_) >> 3)];
  begin = self->_cache.__begin_;
  for (i = self->_cache.__end_; begin != i; begin = (begin + 120))
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = NSStringFromCGSize(*begin);
    v8 = NSStringFromCGSize(*(begin + 1));
    v9 = [v6 stringWithFormat:@"%@ : %@", v7, v8];
    [v3 addObject:v9];
  }

  v10 = MEMORY[0x1E696AD60];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v14 = self->_cache.__begin_;
  end = self->_cache.__end_;
  v15 = [v3 componentsJoinedByString:{@", "}];
  v16 = [v10 stringWithFormat:@"<%@ %p: [%lu] { %@ }>", v12, self, 0xEEEEEEEEEEEEEEEFLL * ((end - v14) >> 3), v15];

  return v16;
}

@end