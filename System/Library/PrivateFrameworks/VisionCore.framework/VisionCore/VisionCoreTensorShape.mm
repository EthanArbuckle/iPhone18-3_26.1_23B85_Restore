@interface VisionCoreTensorShape
- (BOOL)getOneDimensionalArrayDimensionIndex:(unint64_t *)index error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSArray)sizesAsNSNumberArray;
- (VisionCoreTensorShape)initWithBatchNumber:(unint64_t)number channels:(unint64_t)channels height:(unint64_t)height width:(unint64_t)width;
- (VisionCoreTensorShape)initWithCoder:(id)coder;
- (VisionCoreTensorShape)initWithImageChannels:(unint64_t)channels width:(unint64_t)width height:(unint64_t)height;
- (VisionCoreTensorShape)initWithSizes:(const unint64_t *)sizes rank:(unint64_t)rank;
- (id).cxx_construct;
- (id)description;
- (unint64_t)elementCount;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VisionCoreTensorShape

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (VisionCoreTensorShape)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sizes"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 length];
    if (v7)
    {
      v8 = (v7 & 3) == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      if (v7 < 0x7FFFFFFFFFFFFFFDLL)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v7 >> 2);
      }

      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Illegal sizes data length of %lu", v7];
    v10 = [MEMORY[0x1E696ABC0] VisionCoreErrorForCorruptedResourceWithLocalizedDescription:v9];
    [coderCopy failWithError:v10];
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  begin = self->_sizes.__begin_;
  end = self->_sizes.__end_;
  v6 = end - begin;
  v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:(end - begin) >> 1];
  mutableBytes = [v7 mutableBytes];
  if (end != begin)
  {
    v9 = v6 >> 3;
    v10 = self->_sizes.__begin_;
    if ((v6 >> 3) <= 1)
    {
      v9 = 1;
    }

    do
    {
      v11 = *v10++;
      *mutableBytes++ = bswap32(v11);
      --v9;
    }

    while (v9);
  }

  [coderCopy encodeObject:v7 forKey:@"sizes"];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendString:@"["];
  rank = [(VisionCoreTensorShape *)self rank];
  if (rank)
  {
    sizes = [(VisionCoreTensorShape *)self sizes];
    do
    {
      v6 = *sizes++;
      [v3 appendFormat:@" %lu", v6];
      --rank;
    }

    while (rank);
  }

  [v3 appendString:@" ]"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      begin = self->_sizes.__begin_;
      v7 = (self->_sizes.__end_ - begin);
      v8 = v5->_sizes.__begin_;
      v9 = v7 == (v5->_sizes.__end_ - v8) && memcmp(begin, v8, v7) == 0;
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
  begin = self->_sizes.__begin_;
  end = self->_sizes.__end_;
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

- (BOOL)getOneDimensionalArrayDimensionIndex:(unint64_t *)index error:(id *)error
{
  rank = [(VisionCoreTensorShape *)self rank];
  sizes = [(VisionCoreTensorShape *)self sizes];
  if (rank)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v13 = *sizes;
    v12 = sizes + 1;
    v14 = v13 != 1;
    while (1)
    {
      if (v14)
      {
        v10 = v9;
      }

      if (rank - 1 == v9)
      {
        break;
      }

      v11 |= v14;
      v15 = v12[v9++];
      v16 = v15 == 1;
      v14 = v15 != 1;
      if (!v16 && (v11 & 1) != 0)
      {
        v17 = v9 >= rank;
        if (error)
        {
          v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ has multiple dimensions", self];
          *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidOperationWithLocalizedDescription:v18];
        }

        return v17;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  if (index)
  {
    *index = v10;
  }

  return 1;
}

- (NSArray)sizesAsNSNumberArray
{
  rank = [(VisionCoreTensorShape *)self rank];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:rank];
  sizes = [(VisionCoreTensorShape *)self sizes];
  if (rank)
  {
    v6 = sizes;
    do
    {
      v7 = *v6++;
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v7];
      [v4 addObject:v8];

      --rank;
    }

    while (rank);
  }

  return v4;
}

- (VisionCoreTensorShape)initWithImageChannels:(unint64_t)channels width:(unint64_t)width height:(unint64_t)height
{
  channelsCopy = channels;
  heightCopy = height;
  widthCopy = width;
  v9.receiver = self;
  v9.super_class = VisionCoreTensorShape;
  v5 = [(VisionCoreTensorShape *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v8 = 1;
    std::vector<unsigned long>::push_back[abi:ne200100](&v5->_sizes, &v8);
    std::vector<unsigned long>::push_back[abi:ne200100](&v6->_sizes, &channelsCopy);
    std::vector<unsigned long>::push_back[abi:ne200100](&v6->_sizes, &heightCopy);
    std::vector<unsigned long>::push_back[abi:ne200100](&v6->_sizes, &widthCopy);
  }

  return v6;
}

- (VisionCoreTensorShape)initWithBatchNumber:(unint64_t)number channels:(unint64_t)channels height:(unint64_t)height width:(unint64_t)width
{
  numberCopy = number;
  heightCopy = height;
  channelsCopy = channels;
  v9.receiver = self;
  v9.super_class = VisionCoreTensorShape;
  widthCopy = width;
  v6 = [(VisionCoreTensorShape *)&v9 init];
  v7 = v6;
  if (v6)
  {
    std::vector<unsigned long>::push_back[abi:ne200100](&v6->_sizes, &numberCopy);
    std::vector<unsigned long>::push_back[abi:ne200100](&v7->_sizes, &channelsCopy);
    std::vector<unsigned long>::push_back[abi:ne200100](&v7->_sizes, &heightCopy);
    std::vector<unsigned long>::push_back[abi:ne200100](&v7->_sizes, &widthCopy);
  }

  return v7;
}

- (VisionCoreTensorShape)initWithSizes:(const unint64_t *)sizes rank:(unint64_t)rank
{
  v9.receiver = self;
  v9.super_class = VisionCoreTensorShape;
  v6 = [(VisionCoreTensorShape *)&v9 init];
  if (v6)
  {
    v7 = rank == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    do
    {
      std::vector<unsigned long>::push_back[abi:ne200100](&v6->_sizes, sizes++);
      --rank;
    }

    while (rank);
  }

  return v6;
}

- (unint64_t)elementCount
{
  end = self->_sizes.__end_;
  begin = self->_sizes.__begin_;
  if (begin == end)
  {
    return 0;
  }

  v4 = 1;
  do
  {
    v5 = *begin++;
    v4 *= v5;
  }

  while (begin != end);
  return v4;
}

@end