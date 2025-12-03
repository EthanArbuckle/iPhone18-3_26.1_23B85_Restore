@interface CRTableStructureRecognizerResult
- (CRTableStructureRecognizerResultParsed)parsedProgram;
- (id).cxx_construct;
- (vector<CGRect,)rectForCells;
- (vector<CRTableStructureColumn,)columns;
- (vector<CRTableStructureMerge,)merges;
- (vector<CRTableStructureRow,)rows;
- (vector<_NSRange,)columnsForCells;
- (vector<_NSRange,)rowsForCells;
- (vector<std::vector<unsigned)textLineIndexesForCells;
- (void)setColumns:()vector<CRTableStructureColumn;
- (void)setColumnsForCells:()vector<_NSRange;
- (void)setMerges:()vector<CRTableStructureMerge;
- (void)setParsedProgram:(CRTableStructureRecognizerResultParsed *)program;
- (void)setRectForCells:()vector<CGRect;
- (void)setRows:()vector<CRTableStructureRow;
- (void)setRowsForCells:()vector<_NSRange;
- (void)setTextLineIndexesForCells:(vector<std:(std::allocator<std::vector<unsigned long>>> *)cells :vector<unsigned)long>;
@end

@implementation CRTableStructureRecognizerResult

- (vector<CRTableStructureRow,)rows
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  begin = self[1].__begin_;
  end = self[1].__end_;
  if (end != begin)
  {
    std::vector<CGRect>::__vallocate[abi:ne200100](retstr, (end - begin) >> 5);
  }

  return self;
}

- (void)setRows:()vector<CRTableStructureRow
{
  p_rows = &self->_rows;
  if (&self->_rows != a3)
  {
    begin = a3->__begin_;
    end = a3->__end_;
    v7 = end - a3->__begin_;
    cap = self->_rows.__cap_;
    v9 = self->_rows.__begin_;
    if (cap - v9 < v7)
    {
      v10 = v7 >> 5;
      if (v9)
      {
        self->_rows.__end_ = v9;
        operator delete(v9);
        cap = 0;
        p_rows->__begin_ = 0;
        p_rows->__end_ = 0;
        p_rows->__cap_ = 0;
      }

      if (!(v10 >> 59))
      {
        v11 = cap >> 4;
        if (cap >> 4 <= v10)
        {
          v11 = v7 >> 5;
        }

        if (cap >= 0x7FFFFFFFFFFFFFE0)
        {
          v12 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        std::vector<CGRect>::__vallocate[abi:ne200100](p_rows, v12);
      }

      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v13 = self->_rows.__end_;
    v14 = v13 - v9;
    if (v13 - v9 >= v7)
    {
      if (end != begin)
      {
        memmove(self->_rows.__begin_, begin, v7);
      }

      v16 = (v9 + v7);
    }

    else
    {
      v15 = (begin + v14);
      if (v13 != v9)
      {
        memmove(self->_rows.__begin_, begin, v14);
        v13 = self->_rows.__end_;
      }

      if (end != v15)
      {
        memmove(v13, v15, end - v15);
      }

      v16 = (v13 + end - v15);
    }

    self->_rows.__end_ = v16;
  }
}

- (vector<CRTableStructureColumn,)columns
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  begin = self[2].__begin_;
  end = self[2].__end_;
  if (end != begin)
  {
    std::vector<CGRect>::__vallocate[abi:ne200100](retstr, (end - begin) >> 5);
  }

  return self;
}

- (void)setColumns:()vector<CRTableStructureColumn
{
  p_columns = &self->_columns;
  if (&self->_columns != a3)
  {
    begin = a3->__begin_;
    end = a3->__end_;
    v7 = end - a3->__begin_;
    cap = self->_columns.__cap_;
    v9 = self->_columns.__begin_;
    if (cap - v9 < v7)
    {
      v10 = v7 >> 5;
      if (v9)
      {
        self->_columns.__end_ = v9;
        operator delete(v9);
        cap = 0;
        p_columns->__begin_ = 0;
        p_columns->__end_ = 0;
        p_columns->__cap_ = 0;
      }

      if (!(v10 >> 59))
      {
        v11 = cap >> 4;
        if (cap >> 4 <= v10)
        {
          v11 = v7 >> 5;
        }

        if (cap >= 0x7FFFFFFFFFFFFFE0)
        {
          v12 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        std::vector<CGRect>::__vallocate[abi:ne200100](p_columns, v12);
      }

      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v13 = self->_columns.__end_;
    v14 = v13 - v9;
    if (v13 - v9 >= v7)
    {
      if (end != begin)
      {
        memmove(self->_columns.__begin_, begin, v7);
      }

      v16 = (v9 + v7);
    }

    else
    {
      v15 = (begin + v14);
      if (v13 != v9)
      {
        memmove(self->_columns.__begin_, begin, v14);
        v13 = self->_columns.__end_;
      }

      if (end != v15)
      {
        memmove(v13, v15, end - v15);
      }

      v16 = (v13 + end - v15);
    }

    self->_columns.__end_ = v16;
  }
}

- (vector<CRTableStructureMerge,)merges
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return std::vector<CRTableStructureMerge>::__init_with_size[abi:ne200100]<CRTableStructureMerge*,CRTableStructureMerge*>(retstr, self->_merges.__begin_, self->_merges.__end_, (self->_merges.__end_ - self->_merges.__begin_) >> 5);
}

- (void)setMerges:()vector<CRTableStructureMerge
{
  p_merges = &self->_merges;
  if (p_merges != a3)
  {
    std::vector<CRTableStructureMerge>::__assign_with_size[abi:ne200100]<CRTableStructureMerge*,CRTableStructureMerge*>(p_merges, a3->__begin_, a3->__end_, (a3->__end_ - a3->__begin_) >> 5);
  }
}

- (vector<std::vector<unsigned)textLineIndexesForCells
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return std::vector<std::vector<unsigned long>>::__init_with_size[abi:ne200100]<std::vector<unsigned long>*,std::vector<unsigned long>*>(retstr, self->_textLineIndexesForCells.__begin_, self->_textLineIndexesForCells.__end_, 0xAAAAAAAAAAAAAAABLL * ((self->_textLineIndexesForCells.__end_ - self->_textLineIndexesForCells.__begin_) >> 3));
}

- (void)setTextLineIndexesForCells:(vector<std:(std::allocator<std::vector<unsigned long>>> *)cells :vector<unsigned)long>
{
  p_textLineIndexesForCells = &self->_textLineIndexesForCells;
  if (&self->_textLineIndexesForCells != cells)
  {
    begin = cells->__begin_;
    end = cells->__end_;
    v7 = end - cells->__begin_;
    cap = self->_textLineIndexesForCells.__cap_;
    v9 = self->_textLineIndexesForCells.__begin_;
    if (cap - v9 < v7)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      if (v9)
      {
        std::vector<std::vector<PixelPosition>>::clear[abi:ne200100](&self->_textLineIndexesForCells);
        operator delete(p_textLineIndexesForCells->__begin_);
        cap = 0;
        p_textLineIndexesForCells->__begin_ = 0;
        p_textLineIndexesForCells->__end_ = 0;
        p_textLineIndexesForCells->__cap_ = 0;
      }

      if (v10 <= 0xAAAAAAAAAAAAAAALL)
      {
        v11 = 0xAAAAAAAAAAAAAAABLL * (cap >> 3);
        v12 = 2 * v11;
        if (2 * v11 <= v10)
        {
          v12 = v10;
        }

        if (v11 >= 0x555555555555555)
        {
          v13 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v13 = v12;
        }

        std::vector<std::vector<unsigned long>>::__vallocate[abi:ne200100](p_textLineIndexesForCells, v13);
      }

      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v14 = (self->_textLineIndexesForCells.__end_ - v9);
    if (v14 >= v7)
    {
      v15 = std::__copy_impl::operator()[abi:ne200100]<std::vector<unsigned long> *,std::vector<unsigned long> *,std::vector<unsigned long> *>(begin, end, v9);
      v16 = self->_textLineIndexesForCells.__end_;
      if (v16 != v15)
      {
        v17 = self->_textLineIndexesForCells.__end_;
        do
        {
          v19 = *(v17 - 3);
          v17 -= 3;
          v18 = v19;
          if (v19)
          {
            *(v16 - 2) = v18;
            operator delete(v18);
          }

          v16 = v17;
        }

        while (v17 != v15);
      }

      self->_textLineIndexesForCells.__end_ = v15;
    }

    else
    {
      std::__copy_impl::operator()[abi:ne200100]<std::vector<unsigned long> *,std::vector<unsigned long> *,std::vector<unsigned long> *>(begin, &v14[begin], v9);
      self->_textLineIndexesForCells.__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<unsigned long>>,std::vector<unsigned long>*,std::vector<unsigned long>*,std::vector<unsigned long>*>(p_textLineIndexesForCells, &v14[begin], end, self->_textLineIndexesForCells.__end_);
    }
  }
}

- (vector<CGRect,)rectForCells
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return std::vector<CGRect>::__init_with_size[abi:ne200100]<CGRect*,CGRect*>(retstr, self->_rectForCells.__begin_, self->_rectForCells.__end_, self->_rectForCells.__end_ - self->_rectForCells.__begin_);
}

- (void)setRectForCells:()vector<CGRect
{
  p_rectForCells = &self->_rectForCells;
  if (&self->_rectForCells != a3)
  {
    begin = a3->__begin_;
    end = a3->__end_;
    v7 = end - a3->__begin_;
    cap = self->_rectForCells.__cap_;
    v9 = self->_rectForCells.__begin_;
    if (cap - v9 < v7)
    {
      v10 = v7 >> 5;
      if (v9)
      {
        self->_rectForCells.__end_ = v9;
        operator delete(v9);
        cap = 0;
        p_rectForCells->__begin_ = 0;
        p_rectForCells->__end_ = 0;
        p_rectForCells->__cap_ = 0;
      }

      if (!(v10 >> 59))
      {
        v11 = cap >> 4;
        if (cap >> 4 <= v10)
        {
          v11 = v7 >> 5;
        }

        if (cap >= 0x7FFFFFFFFFFFFFE0)
        {
          v12 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        std::vector<CGRect>::__vallocate[abi:ne200100](p_rectForCells, v12);
      }

      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v13 = self->_rectForCells.__end_;
    v14 = v13 - v9;
    if (v13 - v9 >= v7)
    {
      if (end != begin)
      {
        memmove(self->_rectForCells.__begin_, begin, v7);
      }

      v16 = (v9 + v7);
    }

    else
    {
      v15 = (begin + v14);
      if (v13 != v9)
      {
        memmove(self->_rectForCells.__begin_, begin, v14);
        v13 = self->_rectForCells.__end_;
      }

      if (end != v15)
      {
        memmove(v13, v15, end - v15);
      }

      v16 = (v13 + end - v15);
    }

    self->_rectForCells.__end_ = v16;
  }
}

- (vector<_NSRange,)rowsForCells
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return std::vector<_NSRange>::__init_with_size[abi:ne200100]<_NSRange*,_NSRange*>(retstr, self->_rowsForCells.__begin_, self->_rowsForCells.__end_, self->_rowsForCells.__end_ - self->_rowsForCells.__begin_);
}

- (void)setRowsForCells:()vector<_NSRange
{
  p_rowsForCells = &self->_rowsForCells;
  if (p_rowsForCells != a3)
  {
    std::vector<_NSRange>::__assign_with_size[abi:ne200100]<_NSRange*,_NSRange*>(p_rowsForCells, a3->__begin_, a3->__end_, a3->__end_ - a3->__begin_);
  }
}

- (vector<_NSRange,)columnsForCells
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return std::vector<_NSRange>::__init_with_size[abi:ne200100]<_NSRange*,_NSRange*>(retstr, self->_columnsForCells.__begin_, self->_columnsForCells.__end_, self->_columnsForCells.__end_ - self->_columnsForCells.__begin_);
}

- (void)setColumnsForCells:()vector<_NSRange
{
  p_columnsForCells = &self->_columnsForCells;
  if (p_columnsForCells != a3)
  {
    std::vector<_NSRange>::__assign_with_size[abi:ne200100]<_NSRange*,_NSRange*>(p_columnsForCells, a3->__begin_, a3->__end_, a3->__end_ - a3->__begin_);
  }
}

- (CRTableStructureRecognizerResultParsed)parsedProgram
{
  *&retstr->numRows = *&self->_parsedProgram.numRows;
  retstr->valid = self->_parsedProgram.valid;
  retstr->rowHeights.__begin_ = 0;
  retstr->rowHeights.__end_ = 0;
  retstr->rowHeights.__cap_ = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&retstr->rowHeights, self->_parsedProgram.rowHeights.__begin_, self->_parsedProgram.rowHeights.__end_, self->_parsedProgram.rowHeights.__end_ - self->_parsedProgram.rowHeights.__begin_);
  retstr->columnWidths.__begin_ = 0;
  retstr->columnWidths.__end_ = 0;
  retstr->columnWidths.__cap_ = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&retstr->columnWidths, self->_parsedProgram.columnWidths.__begin_, self->_parsedProgram.columnWidths.__end_, self->_parsedProgram.columnWidths.__end_ - self->_parsedProgram.columnWidths.__begin_);
  retstr->merges.__begin_ = 0;
  retstr->merges.__end_ = 0;
  retstr->merges.__cap_ = 0;
  return std::vector<CRTableStructureMerge>::__init_with_size[abi:ne200100]<CRTableStructureMerge*,CRTableStructureMerge*>(&retstr->merges, self->_parsedProgram.merges.__begin_, self->_parsedProgram.merges.__end_, (self->_parsedProgram.merges.__end_ - self->_parsedProgram.merges.__begin_) >> 5);
}

- (void)setParsedProgram:(CRTableStructureRecognizerResultParsed *)program
{
  v4 = *&program->numRows;
  self->_parsedProgram.valid = program->valid;
  *&self->_parsedProgram.numRows = v4;
  if (&self->_parsedProgram != program)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(&self->_parsedProgram.rowHeights.__begin_, program->rowHeights.__begin_, program->rowHeights.__end_, program->rowHeights.__end_ - program->rowHeights.__begin_);
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(&self->_parsedProgram.columnWidths.__begin_, program->columnWidths.__begin_, program->columnWidths.__end_, program->columnWidths.__end_ - program->columnWidths.__begin_);
    begin = program->merges.__begin_;
    end = program->merges.__end_;

    std::vector<CRTableStructureMerge>::__assign_with_size[abi:ne200100]<CRTableStructureMerge*,CRTableStructureMerge*>(&self->_parsedProgram.merges.__begin_, begin, end, (end - begin) >> 5);
  }
}

- (id).cxx_construct
{
  *(self + 35) = 0;
  *(self + 248) = 0u;
  *(self + 232) = 0u;
  *(self + 24) = 0u;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 104) = 0u;
  *(self + 120) = 0u;
  *(self + 136) = 0u;
  *(self + 152) = 0u;
  *(self + 168) = 0u;
  *(self + 184) = 0u;
  *(self + 193) = 0u;
  *(self + 216) = 0u;
  *(self + 264) = 0u;
  return self;
}

@end