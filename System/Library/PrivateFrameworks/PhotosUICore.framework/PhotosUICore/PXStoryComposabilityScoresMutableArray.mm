@interface PXStoryComposabilityScoresMutableArray
- (void)addComposabilityScores:(id)scores;
@end

@implementation PXStoryComposabilityScoresMutableArray

- (void)addComposabilityScores:(id)scores
{
  end = self->super._scores.__end_;
  cap = self->super._scores.__cap_;
  if (end >= cap)
  {
    begin = self->super._scores.__begin_;
    v8 = (end - begin) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::vector<PXStoryAutoEditComposabilityScores>::__throw_length_error[abi:ne200100]();
    }

    v10 = cap - begin;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PXStoryAutoEditComposabilityScores>>(v11);
    }

    v12 = (8 * v8);
    *v12 = scores;
    v6 = (8 * v8 + 8);
    v13 = self->super._scores.__begin_;
    v14 = (self->super._scores.__end_ - v13);
    v15 = (8 * v8 - v14);
    memcpy((v12 - v14), v13, v14);
    v16 = self->super._scores.__begin_;
    self->super._scores.__begin_ = v15;
    self->super._scores.__end_ = v6;
    self->super._scores.__cap_ = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *end = scores;
    v6 = (end + 8);
  }

  self->super._scores.__end_ = v6;
}

@end