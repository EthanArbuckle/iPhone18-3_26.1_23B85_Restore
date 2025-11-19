@interface VisionCoreTensorStrides
- (BOOL)isEqual:(id)a3;
- (VisionCoreTensorStrides)initWithByteOffsets:(const int64_t *)a3 rank:(unint64_t)a4;
- (VisionCoreTensorStrides)initWithCoder:(id)a3;
- (VisionCoreTensorStrides)initWithShape:(id)a3 dataType:(unint64_t)a4;
- (id).cxx_construct;
- (id)description;
- (id)shapeForPackedElementsOfType:(unint64_t)a3 error:(id *)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VisionCoreTensorStrides

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (VisionCoreTensorStrides)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"offsets"];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_7;
  }

  v7 = [v5 length];
  if (v7)
  {
    v8 = (v7 & 3) == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Illegal sizes data length of %lu", v7];
    v10 = [MEMORY[0x1E696ABC0] VisionCoreErrorForCorruptedResourceWithLocalizedDescription:v9];
    [v4 failWithError:v10];

LABEL_7:
    v11 = 0;
    goto LABEL_26;
  }

  v12 = v7 >> 2;
  __p = 0;
  v31 = 0;
  v32 = 0;
  v28 = v4;
  v29 = self;
  v27 = v6;
  std::vector<VisionCoreValueConfidencePoint>::reserve(&__p, v7 >> 2);
  v13 = [v6 bytes];
  v15 = v31;
  v14 = v32;
  v26 = v12;
  v16 = __p;
  do
  {
    v17 = *v13++;
    v18 = bswap32(v17);
    v19 = v18;
    if (v15 >= v14)
    {
      v20 = v15 - v16;
      v21 = (v15 - v16) >> 3;
      v22 = v21 + 1;
      if ((v21 + 1) >> 61)
      {
        __p = v16;
        std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
      }

      if ((v14 - v16) >> 2 > v22)
      {
        v22 = (v14 - v16) >> 2;
      }

      if (v14 - v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v23 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v22;
      }

      if (v23)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v23);
      }

      v24 = (8 * v21);
      v14 = 0;
      *v24 = v19;
      v15 = (v24 + 1);
      memcpy(0, v16, v20);
      if (v16)
      {
        operator delete(v16);
      }

      v16 = 0;
    }

    else
    {
      *v15 = v18;
      v15 += 8;
    }

    --v12;
  }

  while (v12);
  v31 = v15;
  v32 = v14;
  __p = v16;
  self = [(VisionCoreTensorStrides *)v29 initWithByteOffsets:v16 rank:v26];
  v6 = v27;
  v4 = v28;
  if (__p)
  {
    operator delete(__p);
  }

  v11 = self;
LABEL_26:

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  begin = self->_byteOffsets.__begin_;
  end = self->_byteOffsets.__end_;
  v6 = end - begin;
  v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:(end - begin) >> 1];
  v8 = [v7 mutableBytes];
  if (end != begin)
  {
    v9 = v6 >> 3;
    v10 = self->_byteOffsets.__begin_;
    if ((v6 >> 3) <= 1)
    {
      v9 = 1;
    }

    do
    {
      v11 = *v10++;
      *v8++ = bswap32(v11);
      --v9;
    }

    while (v9);
  }

  [v12 encodeObject:v7 forKey:@"offsets"];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendString:@"["];
  v4 = [(VisionCoreTensorStrides *)self rank];
  if (v4)
  {
    v5 = [(VisionCoreTensorStrides *)self byteOffsets];
    do
    {
      v6 = *v5++;
      [v3 appendFormat:@" %ld", v6];
      --v4;
    }

    while (v4);
  }

  [v3 appendString:@" ]"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      begin = self->_byteOffsets.__begin_;
      v7 = (self->_byteOffsets.__end_ - begin);
      v8 = v5->_byteOffsets.__begin_;
      v9 = v7 == (v5->_byteOffsets.__end_ - v8) && memcmp(begin, v8, v7) == 0;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  begin = self->_byteOffsets.__begin_;
  end = self->_byteOffsets.__end_;
  if (begin == end)
  {
    return 0;
  }

  result = 0;
  do
  {
    v5 = *begin++;
    result ^= v5;
  }

  while (begin != end);
  return result;
}

- (id)shapeForPackedElementsOfType:(unint64_t)a3 error:(id *)a4
{
  v4 = a4;
  if (!(a3 >> 3))
  {
    if (!a4)
    {
      goto LABEL_17;
    }

    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    v11 = NSStringFromVisionCoreTensorDataType(a3);
    v12 = [v10 initWithFormat:@"unknown element type %@", v11];

    v13 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:v12];
LABEL_12:
    v4->super.isa = v13;

    v4 = 0;
    goto LABEL_17;
  }

  begin = self->_byteOffsets.__begin_;
  v8 = self->_byteOffsets.__end_ - begin - 1;
  if (begin[v8] != a3 >> 3)
  {
    if (!a4)
    {
      goto LABEL_17;
    }

    v14 = objc_alloc(MEMORY[0x1E696AEC0]);
    v15 = NSStringFromVisionCoreTensorDataType(a3);
    v12 = [v14 initWithFormat:@"%@ is not packed into %@ elements", self, v15];

    v13 = [MEMORY[0x1E696ABC0] VisionCoreErrorForFailedOperationWithLocalizedDescription:v12];
    goto LABEL_12;
  }

  memset(__p, 0, sizeof(__p));
  v20 = 1;
  std::vector<unsigned long>::push_back[abi:ne200100](__p, &v20);
  if (v8)
  {
    v9 = 0;
    while (self->_byteOffsets.__begin_[v9] / self->_byteOffsets.__begin_[v9 + 1] > 0)
    {
      v20 = self->_byteOffsets.__begin_[v9] / self->_byteOffsets.__begin_[v9 + 1];
      std::vector<unsigned long>::push_back[abi:ne200100](__p, &v20);
      if (v8 == ++v9)
      {
        goto LABEL_7;
      }
    }

    if (v4)
    {
      v16 = objc_alloc(MEMORY[0x1E696AEC0]);
      v17 = NSStringFromVisionCoreTensorDataType(a3);
      v18 = [v16 initWithFormat:@"%@ is not packed into %@ elements", self, v17];

      v4->super.isa = [MEMORY[0x1E696ABC0] VisionCoreErrorForFailedOperationWithLocalizedDescription:v18];

      v4 = 0;
    }
  }

  else
  {
LABEL_7:
    v4 = [VisionCoreTensorShape initWithSizes:"initWithSizes:rank:" rank:?];
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

LABEL_17:

  return v4;
}

- (VisionCoreTensorStrides)initWithShape:(id)a3 dataType:(unint64_t)a4
{
  v4 = a4;
  v21 = a3;
  v22.receiver = self;
  v22.super_class = VisionCoreTensorStrides;
  v6 = [(VisionCoreTensorStrides *)&v22 init];
  if (v6)
  {
    v7 = [v21 rank];
    std::vector<VisionCoreValueConfidencePoint>::reserve(&v6->_byteOffsets.__begin_, v7);
    v8 = [v21 sizes];
    if (v7)
    {
      v9 = v8;
      v10 = v4 >> 3;
      v11 = 1;
      do
      {
        v10 *= v11;
        v12 = *v9++;
        v11 = v12;
        begin = v6->_byteOffsets.__begin_;
        end = v6->_byteOffsets.__end_;
        cap = v6->_byteOffsets.__cap_;
        if (end >= cap)
        {
          v17 = end - begin + 1;
          if (!(v17 >> 61))
          {
            v18 = cap - begin;
            if (v18 >> 2 > v17)
            {
              v17 = v18 >> 2;
            }

            if (v18 >= 0x7FFFFFFFFFFFFFF8)
            {
              v19 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v19 = v17;
            }

            if (v19)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v19);
            }

            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(1uLL);
          }

          std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
        }

        if (begin == end)
        {
          *end = v10;
          v6->_byteOffsets.__end_ = end + 1;
        }

        else
        {
          if (end < 8)
          {
            v16 = v6->_byteOffsets.__end_;
          }

          else
          {
            *end = *(end - 1);
            v16 = end + 1;
          }

          v6->_byteOffsets.__end_ = v16;
          if (end != begin + 1)
          {
            memmove(begin + 1, begin, end - (begin + 1));
          }

          *begin = v10;
        }

        --v7;
      }

      while (v7);
    }
  }

  return v6;
}

- (VisionCoreTensorStrides)initWithByteOffsets:(const int64_t *)a3 rank:(unint64_t)a4
{
  v21.receiver = self;
  v21.super_class = VisionCoreTensorStrides;
  v6 = [(VisionCoreTensorStrides *)&v21 init];
  v7 = v6;
  if (v6)
  {
    std::vector<VisionCoreValueConfidencePoint>::reserve(&v6->_byteOffsets.__begin_, a4);
    if (a4)
    {
      end = v7->_byteOffsets.__end_;
      do
      {
        cap = v7->_byteOffsets.__cap_;
        if (end >= cap)
        {
          begin = v7->_byteOffsets.__begin_;
          v11 = end - begin;
          v12 = end - begin;
          v13 = v12 + 1;
          if ((v12 + 1) >> 61)
          {
            std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
          }

          v14 = cap - begin;
          if (v14 >> 2 > v13)
          {
            v13 = v14 >> 2;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFF8)
          {
            v15 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v15);
          }

          v16 = end - begin;
          v17 = (8 * v12);
          v18 = (8 * v12 - 8 * v16);
          *v17 = *a3;
          end = v17 + 1;
          memcpy(v18, begin, v11);
          v19 = v7->_byteOffsets.__begin_;
          v7->_byteOffsets.__begin_ = v18;
          v7->_byteOffsets.__end_ = end;
          v7->_byteOffsets.__cap_ = 0;
          if (v19)
          {
            operator delete(v19);
          }
        }

        else
        {
          *end++ = *a3;
        }

        v7->_byteOffsets.__end_ = end;
        ++a3;
        --a4;
      }

      while (a4);
    }
  }

  return v7;
}

@end