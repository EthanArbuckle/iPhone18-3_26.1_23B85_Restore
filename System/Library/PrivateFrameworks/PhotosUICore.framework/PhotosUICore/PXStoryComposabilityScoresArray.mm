@interface PXStoryComposabilityScoresArray
- ($94F468A8D4C62B317260615823C2B210)composabilityScoresAtIndex:(unint64_t)a3;
- (NSString)debugDescription;
- (PXStoryComposabilityScoresArray)initWithCapacity:(unint64_t)a3;
- (PXStoryComposabilityScoresArray)initWithComposabilityResults:(id)a3;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation PXStoryComposabilityScoresArray

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [PXStoryComposabilityScoresMutableArray allocWithZone:a3];
  v5 = v4;
  if (v4 != self)
  {
    std::vector<PXStoryAutoEditComposabilityScores>::__assign_with_size[abi:ne200100]<PXStoryAutoEditComposabilityScores*,PXStoryAutoEditComposabilityScores*>(&v4->super._scores.__begin_, self->_scores.__begin_, self->_scores.__end_, (self->_scores.__end_ - self->_scores.__begin_) >> 3);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PXStoryComposabilityScoresArray allocWithZone:a3];
  v5 = v4;
  if (v4 != self)
  {
    std::vector<PXStoryAutoEditComposabilityScores>::__assign_with_size[abi:ne200100]<PXStoryAutoEditComposabilityScores*,PXStoryAutoEditComposabilityScores*>(&v4->_scores.__begin_, self->_scores.__begin_, self->_scores.__end_, (self->_scores.__end_ - self->_scores.__begin_) >> 3);
  }

  return v5;
}

- ($94F468A8D4C62B317260615823C2B210)composabilityScoresAtIndex:(unint64_t)a3
{
  v3 = (self->_scores.__begin_ + 8 * a3);
  v4 = *v3;
  v5 = v3[1];
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

- (NSString)debugDescription
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[PXStoryComposabilityScoresArray count](self, "count")}];
  for (i = 0; i < [(PXStoryComposabilityScoresArray *)self count]; ++i)
  {
    [(PXStoryComposabilityScoresArray *)self composabilityScoresAtIndex:i];
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"(d:%0.2f|t:%0.2f)", v5, v6];
    [v3 addObject:v7];
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  v10 = [(PXStoryComposabilityScoresArray *)self count];
  v11 = [v3 componentsJoinedByString:@" "];
  v12 = [v8 stringWithFormat:@"<%@:%p %lu scores: %@>", v9, self, v10, v11];

  return v12;
}

- (PXStoryComposabilityScoresArray)initWithComposabilityResults:(id)a3
{
  v4 = a3;
  v5 = -[PXStoryComposabilityScoresArray initWithCapacity:](self, "initWithCapacity:", [v4 count]);
  if (v5)
  {
    for (i = 0; i < [v4 count]; ++i)
    {
      [v4 composabilityScoresAtIndex:i];
      end = v5->_scores.__end_;
      cap = v5->_scores.__cap_;
      if (end >= cap)
      {
        begin = v5->_scores.__begin_;
        v13 = (end - begin) >> 3;
        v14 = v13 + 1;
        if ((v13 + 1) >> 61)
        {
          std::vector<PXStoryAutoEditComposabilityScores>::__throw_length_error[abi:ne200100]();
        }

        v15 = cap - begin;
        if (v15 >> 2 > v14)
        {
          v14 = v15 >> 2;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          v16 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<PXStoryAutoEditComposabilityScores>>(v16);
        }

        v17 = (8 * v13);
        *v17 = v7;
        v17[1] = v8;
        v11 = 8 * v13 + 8;
        v18 = v5->_scores.__begin_;
        v19 = v5->_scores.__end_ - v18;
        v20 = (8 * v13 - v19);
        memcpy(v17 - v19, v18, v19);
        v21 = v5->_scores.__begin_;
        v5->_scores.__begin_ = v20;
        v5->_scores.__end_ = v11;
        v5->_scores.__cap_ = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *end = v7;
        *(end + 1) = v8;
        v11 = end + 8;
      }

      v5->_scores.__end_ = v11;
    }
  }

  return v5;
}

- (PXStoryComposabilityScoresArray)initWithCapacity:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = PXStoryComposabilityScoresArray;
  result = [(PXStoryComposabilityScoresArray *)&v5 init];
  if (result && a3 > (result->_scores.__cap_ - result->_scores.__begin_) >> 3)
  {
    if (!(a3 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PXStoryAutoEditComposabilityScores>>(a3);
    }

    std::vector<PXStoryAutoEditComposabilityScores>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

@end