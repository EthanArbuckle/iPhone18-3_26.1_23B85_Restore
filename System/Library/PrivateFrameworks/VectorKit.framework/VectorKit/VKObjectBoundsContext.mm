@interface VKObjectBoundsContext
- ($C9B3965AAA5284750DDDB08D9AABF973)boundingRect;
- (VKEdgeInsets)edgePadding;
- (id).cxx_construct;
- (void)addPoints:(const void *)points;
@end

@implementation VKObjectBoundsContext

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (VKEdgeInsets)edgePadding
{
  top = self->_edgePadding.top;
  left = self->_edgePadding.left;
  bottom = self->_edgePadding.bottom;
  right = self->_edgePadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- ($C9B3965AAA5284750DDDB08D9AABF973)boundingRect
{
  if ([(VKObjectBoundsContext *)self isEmpty])
  {
    v3 = *MEMORY[0x1E69A1680];
    v4 = *(MEMORY[0x1E69A1680] + 8);
    v5 = *(MEMORY[0x1E69A1680] + 16);
    v6 = *(MEMORY[0x1E69A1680] + 24);
  }

  else
  {
    v20 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v21 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    begin = self->_points.__begin_;
    end = self->_points.__end_;
    if (begin == end)
    {
      v14 = -1.79769313e308;
      v16 = 1.79769313e308;
      v15 = -1.79769313e308;
      v17 = 1.79769313e308;
    }

    else
    {
      do
      {
        v9 = 0;
        v10 = &v20;
        v11 = 1;
        do
        {
          v12 = begin[v9];
          v13 = v11;
          *v10 = fmin(v12, *v10);
          *&v21.i64[v9] = fmax(*&v21.i64[v9], v12);
          v10 = &v20.i64[1];
          v9 = 1;
          v11 = 0;
        }

        while ((v13 & 1) != 0);
        begin += 2;
      }

      while (begin != end);
      v15 = *&v21.i64[1];
      v14 = *v21.i64;
      v16 = *&v20.i64[1];
      v17 = *v20.i64;
    }

    v18 = *(MEMORY[0x1E69A1688] + 16);
    v19 = *(MEMORY[0x1E69A1688] + 24);
    v3 = v18 * v17;
    v4 = v19 - v15 * v19;
    v5 = (v14 - v17) * v18;
    v6 = (v15 - v16) * v19;
  }

  result.var1.var1 = v6;
  result.var1.var0 = v5;
  result.var0.var1 = v4;
  result.var0.var0 = v3;
  return result;
}

- (void)addPoints:(const void *)points
{
  v4 = *points;
  v3 = *(points + 1);
  v5 = v3 - *points;
  if (v5 >> 4 >= 1)
  {
    end = self->_points.__end_;
    cap = self->_points.__cap_;
    if (cap - end >= v5)
    {
      while (v4 != v3)
      {
        v15 = *v4++;
        *end = v15;
        end += 16;
      }

      self->_points.__end_ = end;
    }

    else
    {
      begin = self->_points.__begin_;
      v10 = (v5 >> 4) + ((end - begin) >> 4);
      if (v10 >> 60)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v11 = (end - begin) >> 4;
      v12 = cap - begin;
      v13 = (cap - begin) >> 3;
      if (v13 > v10)
      {
        v10 = v13;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF0)
      {
        v14 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v10;
      }

      if (v14)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v14);
      }

      v16 = (16 * v11 + v5);
      v17 = (16 * v11);
      do
      {
        v18 = *v4++;
        *v17++ = v18;
        v5 -= 16;
      }

      while (v5);
      v19 = self->_points.__end_;
      v20 = end;
      if (v19 != end)
      {
        v21 = v16;
        do
        {
          v22 = *v20;
          v20 += 16;
          *v21++ = v22;
        }

        while (v20 != v19);
        v20 = self->_points.__end_;
      }

      v23 = v16 + v20 - end;
      self->_points.__end_ = end;
      v24 = self->_points.__begin_;
      v25 = (16 * v11 + v24 - end);
      if (v24 != end)
      {
        v26 = (16 * v11 + v24 - end);
        do
        {
          v27 = *v24;
          v24 += 16;
          *v26++ = v27;
        }

        while (v24 != end);
        v24 = self->_points.__begin_;
      }

      self->_points.__begin_ = v25;
      self->_points.__end_ = v23;
      self->_points.__cap_ = 0;
      if (v24)
      {

        operator delete(v24);
      }
    }
  }
}

@end