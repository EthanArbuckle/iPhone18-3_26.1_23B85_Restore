@interface CRTableStructureRecognizerResultProgram
- (id).cxx_construct;
- (vector<int,)programTokenIdxs;
- (void)setProgramTokenIdxs:()vector<int;
@end

@implementation CRTableStructureRecognizerResultProgram

- (vector<int,)programTokenIdxs
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(retstr, self->_programTokenIdxs.__begin_, self->_programTokenIdxs.__end_, self->_programTokenIdxs.__end_ - self->_programTokenIdxs.__begin_);
}

- (void)setProgramTokenIdxs:()vector<int
{
  p_programTokenIdxs = &self->_programTokenIdxs;
  if (&self->_programTokenIdxs != a3)
  {
    begin = a3->__begin_;
    end = a3->__end_;
    v7 = end - a3->__begin_;
    cap = self->_programTokenIdxs.__cap_;
    v9 = self->_programTokenIdxs.__begin_;
    if (cap - v9 < v7)
    {
      v10 = v7 >> 2;
      if (v9)
      {
        self->_programTokenIdxs.__end_ = v9;
        operator delete(v9);
        cap = 0;
        p_programTokenIdxs->__begin_ = 0;
        p_programTokenIdxs->__end_ = 0;
        p_programTokenIdxs->__cap_ = 0;
      }

      if (!(v10 >> 62))
      {
        v11 = cap >> 1;
        if (cap >> 1 <= v10)
        {
          v11 = v7 >> 2;
        }

        if (cap >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v12 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        std::vector<int>::__vallocate[abi:ne200100](p_programTokenIdxs, v12);
      }

      std::vector<PixelPosition>::__throw_length_error[abi:ne200100]();
    }

    v13 = self->_programTokenIdxs.__end_;
    v14 = v13 - v9;
    if (v13 - v9 >= v7)
    {
      if (end != begin)
      {
        memmove(self->_programTokenIdxs.__begin_, begin, v7);
      }

      v16 = (v9 + v7);
    }

    else
    {
      v15 = (begin + v14);
      if (v13 != v9)
      {
        memmove(self->_programTokenIdxs.__begin_, begin, v14);
        v13 = self->_programTokenIdxs.__end_;
      }

      if (end != v15)
      {
        memmove(v13, v15, end - v15);
      }

      v16 = (v13 + end - v15);
    }

    self->_programTokenIdxs.__end_ = v16;
  }
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  return self;
}

@end