@interface TIHandwritingStrokes
- (CGPoint)pointAtIndex:(unint64_t)index inStrokeAtIndex:(unint64_t)atIndex;
- (TIHandwritingStrokes)initWithCoder:(id)coder;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)totalNumberOfPoints;
- (void)addPoint:(CGPoint)point;
- (void)encodeWithCoder:(id)coder;
- (void)removeStrokeAtIndex:(unint64_t)index;
@end

@implementation TIHandwritingStrokes

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (unint64_t)totalNumberOfPoints
{
  begin = self->_strokes.__begin_;
  end = self->_strokes.__end_;
  if (begin == end)
  {
    return 0;
  }

  result = 0;
  do
  {
    v6 = *begin;
    v5 = begin[1];
    begin += 3;
    result += (v5 - v6) >> 4;
  }

  while (begin != end);
  return result;
}

- (CGPoint)pointAtIndex:(unint64_t)index inStrokeAtIndex:(unint64_t)atIndex
{
  v4 = (*(self->_strokes.__begin_ + 3 * atIndex) + 16 * index);
  v5 = *v4;
  v6 = v4[1];
  result.y = v6;
  result.x = v5;
  return result;
}

- (void)removeStrokeAtIndex:(unint64_t)index
{
  end = self->_strokes.__end_;
  v5 = self->_strokes.__begin_ + 24 * index;
  if (v5 + 24 != end)
  {
    do
    {
      v6 = *v5;
      if (*v5)
      {
        *(v5 + 1) = v6;
        operator delete(v6);
        *(v5 + 2) = 0;
      }

      v7 = v5 + 24;
      *v5 = *(v5 + 24);
      *(v5 + 2) = *(v5 + 5);
      *(v5 + 4) = 0;
      *(v5 + 5) = 0;
      *(v5 + 3) = 0;
      v8 = v5 + 48;
      v5 += 24;
    }

    while (v8 != end);
    end = self->_strokes.__end_;
    v5 = v7;
  }

  if (end != v5)
  {
    v9 = end;
    do
    {
      v11 = *(v9 - 3);
      v9 -= 24;
      v10 = v11;
      if (v11)
      {
        *(end - 2) = v10;
        operator delete(v10);
      }

      end = v9;
    }

    while (v9 != v5);
  }

  self->_strokes.__end_ = v5;
}

- (void)addPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  begin = self->_strokes.__begin_;
  end = self->_strokes.__end_;
  p_strokes = &self->_strokes;
  if (end == begin || !self->_continuePreviousStroke)
  {
    cap = self->_strokes.__cap_;
    if (end >= cap)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
      if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<TIHandwritingPoint>::__throw_length_error[abi:nn200100]();
      }

      v11 = 0xAAAAAAAAAAAAAAABLL * ((cap - begin) >> 3);
      v12 = 2 * v11;
      if (2 * v11 <= v10 + 1)
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0x555555555555555)
      {
        v13 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v13 = v12;
      }

      v31[4] = p_strokes;
      if (v13)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<TIHandwritingPoint>>>(v13);
      }

      v14 = 24 * v10;
      end = (24 * v10 + 24);
      *v14 = 0;
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      v15 = self->_strokes.__begin_;
      v16 = (self->_strokes.__end_ - v15);
      v17 = (24 * v10 - v16);
      memcpy((v14 - v16), v15, v16);
      v18 = self->_strokes.__begin_;
      self->_strokes.__begin_ = v17;
      self->_strokes.__end_ = end;
      v19 = self->_strokes.__cap_;
      self->_strokes.__cap_ = 0;
      v31[2] = v18;
      v31[3] = v19;
      v31[0] = v18;
      v31[1] = v18;
      std::__split_buffer<std::vector<TIHandwritingPoint>>::~__split_buffer(v31);
    }

    else
    {
      *end = 0;
      *(end + 1) = 0;
      *(end + 2) = 0;
      end += 24;
    }

    self->_strokes.__end_ = end;
  }

  v21 = *(end - 2);
  v20 = *(end - 1);
  if (v21 >= v20)
  {
    v23 = *(end - 3);
    v24 = v21 - v23;
    v25 = (v21 - v23) >> 4;
    v26 = v25 + 1;
    if ((v25 + 1) >> 60)
    {
      std::vector<TIHandwritingPoint>::__throw_length_error[abi:nn200100]();
    }

    v27 = v20 - v23;
    if (v27 >> 3 > v26)
    {
      v26 = v27 >> 3;
    }

    if (v27 >= 0x7FFFFFFFFFFFFFF0)
    {
      v28 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v28 = v26;
    }

    if (v28)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<TIHandwritingPoint>>(v28);
    }

    v29 = (16 * v25);
    *v29 = x;
    v29[1] = y;
    v22 = 16 * v25 + 16;
    memcpy(0, v23, v24);
    v30 = *(end - 3);
    *(end - 3) = 0;
    *(end - 2) = v22;
    *(end - 1) = 0;
    if (v30)
    {
      operator delete(v30);
    }
  }

  else
  {
    *v21 = x;
    *(v21 + 1) = y;
    v22 = (v21 + 16);
  }

  *(end - 2) = v22;
  self->_continuePreviousStroke = 1;
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = TIHandwritingStrokes;
  v3 = [(TIHandwritingStrokes *)&v11 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@"\n\t%d strokes\n", 0xAAAAAAAAAAAAAAABLL * ((self->_strokes.__end_ - self->_strokes.__begin_) >> 3)];
  begin = self->_strokes.__begin_;
  if (self->_strokes.__end_ != begin)
  {
    v6 = 0;
    do
    {
      [v4 appendFormat:@"\t\tstroke %d – %d points\n", v6, (begin[3 * v6 + 1] - begin[3 * v6]) >> 4];
      begin = self->_strokes.__begin_;
      v7 = begin[3 * v6];
      if (begin[3 * v6 + 1] != v7)
      {
        v8 = 0;
        v9 = 0;
        do
        {
          [v4 appendFormat:@"\t\t\t(%f, %f)\n", *(v7 + v8), *(v7 + v8 + 8)];
          ++v9;
          begin = self->_strokes.__begin_;
          v7 = begin[3 * v6];
          v8 += 16;
        }

        while (v9 < (begin[3 * v6 + 1] - v7) >> 4);
      }

      ++v6;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((self->_strokes.__end_ - begin) >> 3) > v6);
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v22[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = 0xAAAAAAAAAAAAAAABLL * ((self->_strokes.__end_ - self->_strokes.__begin_) >> 3);
  if (v5 >= 1)
  {
    v6 = v5 & 0x7FFFFFFF;
    (MEMORY[0x1EEE9AC00])();
    v8 = v22 - ((v7 + 15) & 0x3FFFFFFF0);
    v9 = 0;
    LODWORD(v10) = 0;
    v11 = self->_strokes.__begin_ + 8;
    do
    {
      v12 = (*v11 - *(v11 - 1)) >> 4;
      *&v8[4 * v9] = v12;
      v10 = (v10 + v12);
      ++v9;
      v11 += 3;
    }

    while (v6 != v9);
    v13 = [coderCopy encodeBytes:? length:? forKey:?];
    MEMORY[0x1EEE9AC00](v13);
    v14 = 0;
    v15 = 0;
    begin = self->_strokes.__begin_;
    do
    {
      v17 = begin[3 * v14];
      v18 = begin[3 * v14 + 1] - v17;
      if (v18)
      {
        v19 = v18 >> 4;
        if (v19 <= 1)
        {
          v19 = 1;
        }

        v20 = &v22[2 * v15 + -2 * v10];
        v15 += v19;
        do
        {
          v21 = *v17++;
          *v20++ = v21;
          --v19;
        }

        while (v19);
      }

      ++v14;
    }

    while (v14 != v6);
    [coderCopy encodeBytes:? length:? forKey:?];
  }
}

- (TIHandwritingStrokes)initWithCoder:(id)coder
{
  coderCopy = coder;
  v39.receiver = self;
  v39.super_class = TIHandwritingStrokes;
  v5 = [(TIHandwritingStrokes *)&v39 init];
  if (v5)
  {
    v38 = 0;
    v31 = coderCopy;
    v37 = [coderCopy decodeBytesForKey:@"strokePointsCount" returnedLength:&v38];
    if (v37)
    {
      v6 = v38;
      v33 = [v31 decodeBytesForKey:@"points" returnedLength:&v38];
      if (v33)
      {
        if (v6 >= 4)
        {
          v7 = 0;
          v8 = 0;
          v35 = v6 >> 2;
          v36 = v38 >> 4;
          p_strokes = &v5->_strokes;
          v34 = v5;
          do
          {
            v9 = v8 + *(v37 + 4 * v7);
            if (v8 >= v9 || v8 >= v36)
            {
              end = v5->_strokes.__end_;
              cap = v5->_strokes.__cap_;
              if (end >= cap)
              {
                v13 = 0;
LABEL_26:
                v8 = v9;
                v20 = 0xAAAAAAAAAAAAAAABLL * ((end - p_strokes->__begin_) >> 3);
                v21 = v20 + 1;
                if (v20 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<TIHandwritingPoint>::__throw_length_error[abi:nn200100]();
                }

                v22 = 0xAAAAAAAAAAAAAAABLL * ((cap - p_strokes->__begin_) >> 3);
                if (2 * v22 > v21)
                {
                  v21 = 2 * v22;
                }

                if (v22 >= 0x555555555555555)
                {
                  v23 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v23 = v21;
                }

                v40[4] = p_strokes;
                if (v23)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<TIHandwritingPoint>>>(v23);
                }

                v24 = 24 * v20;
                *v24 = 0;
                *(v24 + 8) = 0;
                *(v24 + 16) = 0;
                if (v13)
                {
                  std::vector<TIHandwritingPoint>::__vallocate[abi:nn200100](24 * v20, v13 >> 4);
                }

                v19 = (v24 + 24);
                begin = v5->_strokes.__begin_;
                v26 = v5->_strokes.__end_ - begin;
                v27 = (v24 - v26);
                memcpy((v24 - v26), begin, v26);
                v28 = v5->_strokes.__begin_;
                v5->_strokes.__begin_ = v27;
                v5->_strokes.__end_ = (v24 + 24);
                v29 = v5->_strokes.__cap_;
                v5->_strokes.__cap_ = 0;
                v40[2] = v28;
                v40[3] = v29;
                v40[0] = v28;
                v40[1] = v28;
                std::__split_buffer<std::vector<TIHandwritingPoint>>::~__split_buffer(v40);
                goto LABEL_37;
              }

              *end = 0;
              *(end + 1) = 0;
              *(end + 2) = 0;
            }

            else
            {
              v13 = 0;
              v14 = v8 + 1;
              v15 = (v33 + 16 * v8);
              do
              {
                v16 = v13;
                v17 = v13 >> 4;
                if (((v13 >> 4) + 1) >> 60)
                {
                  std::vector<TIHandwritingPoint>::__throw_length_error[abi:nn200100]();
                }

                if (v13 >> 4 != -1)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<TIHandwritingPoint>>((v13 >> 4) + 1);
                }

                *(16 * v17) = *v15;
                v13 = 16 * v17 + 16;
                memcpy(0, 0, v16);
                v9 = v8 + *(v37 + 4 * v7);
                v18 = v14 >= v9 || v14 >= v36;
                ++v14;
                ++v15;
              }

              while (!v18);
              v5 = v34;
              end = v34->_strokes.__end_;
              cap = v34->_strokes.__cap_;
              if (end >= cap)
              {
                goto LABEL_26;
              }

              *end = 0;
              *(end + 1) = 0;
              *(end + 2) = 0;
              if (v13)
              {
                std::vector<TIHandwritingPoint>::__vallocate[abi:nn200100](end, v13 >> 4);
              }
            }

            v19 = end + 24;
            v8 = v9;
LABEL_37:
            v5->_strokes.__end_ = v19;
            ++v7;
          }

          while (v7 != v35);
        }
      }
    }

    coderCopy = v31;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  v5 = v4;
  if (v4 != self)
  {
    v7 = (v4 + 8);
    v6 = *(v4 + 8);
    begin = self->_strokes.__begin_;
    end = self->_strokes.__end_;
    v10 = end - begin;
    v11 = *(v4 + 24);
    if (v11 - v6 < (end - begin))
    {
      v12 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
      if (v6)
      {
        std::vector<std::vector<TIHandwritingPoint>>::clear[abi:nn200100]((v4 + 8));
        operator delete(*v7);
        v11 = 0;
        *v7 = 0;
        v5[2] = 0;
        v5[3] = 0;
      }

      if (v12 <= 0xAAAAAAAAAAAAAAALL)
      {
        v13 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
        v14 = 2 * v13;
        if (2 * v13 <= v12)
        {
          v14 = v12;
        }

        if (v13 >= 0x555555555555555)
        {
          v15 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v15 = v14;
        }

        if (v15 <= 0xAAAAAAAAAAAAAAALL)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<TIHandwritingPoint>>>(v15);
        }
      }

      std::vector<TIHandwritingPoint>::__throw_length_error[abi:nn200100]();
    }

    v16 = *(v4 + 16) - v6;
    if (v16 >= v10)
    {
      v20 = std::__copy_impl::operator()[abi:nn200100]<std::vector<TIHandwritingPoint> *,std::vector<TIHandwritingPoint> *,std::vector<TIHandwritingPoint> *>(begin, end, v6);
      v21 = v5[2];
      if (v21 != v20)
      {
        v22 = v5[2];
        do
        {
          v24 = *(v22 - 24);
          v22 -= 24;
          v23 = v24;
          if (v24)
          {
            *(v21 - 16) = v23;
            operator delete(v23);
          }

          v21 = v22;
        }

        while (v22 != v20);
      }

      v5[2] = v20;
    }

    else
    {
      v17 = (begin + v16);
      std::__copy_impl::operator()[abi:nn200100]<std::vector<TIHandwritingPoint> *,std::vector<TIHandwritingPoint> *,std::vector<TIHandwritingPoint> *>(begin, (begin + v16), v6);
      v18 = v5[2];
      while (v17 != end)
      {
        v19 = std::vector<TIHandwritingPoint>::vector[abi:nn200100](v18, v17);
        v17 += 3;
        v18 = v19 + 3;
      }

      v5[2] = v18;
    }
  }

  return v5;
}

@end