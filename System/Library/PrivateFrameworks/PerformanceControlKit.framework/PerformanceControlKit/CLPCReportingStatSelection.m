@interface CLPCReportingStatSelection
- (CLPCReportingStatSelection)init;
- (double)selectedStats;
- (unint64_t)isSelected:(unint64_t)a3 error:(id *)a4;
- (void)deselectAll;
- (void)enumerate:(id)a3;
- (void)selectAll;
@end

@implementation CLPCReportingStatSelection

- (CLPCReportingStatSelection)init
{
  v6.receiver = self;
  v6.super_class = CLPCReportingStatSelection;
  v2 = [(CLPCReportingStatSelection *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 5) = 0;
    *(v2 + 24) = 0u;
    *(v2 + 8) = 0u;
    v4 = v2;
  }

  return v3;
}

- (unint64_t)isSelected:(unint64_t)a3 error:(id *)a4
{
  v4 = 0;
  {
    if (++v4 == 40)
    {
      return 0;
    }
  }

  if (self->selection.__elems_[v4])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)selectAll
{
  *&self->selection.__elems_[32] = 0x101010101010101;
  *&v2 = 0x101010101010101;
  *(&v2 + 1) = 0x101010101010101;
  *&self->selection.__elems_[16] = v2;
  *self->selection.__elems_ = v2;
}

- (void)deselectAll
{
  *&self->selection.__elems_[32] = 0;
  *&self->selection.__elems_[16] = 0u;
  *self->selection.__elems_ = 0u;
}

- (void)enumerate:(id)a3
{
  v4 = 0;
  p_selection = &self->selection;
  do
  {
    v8 = p_selection->__elems_[v4];
    p_selection->__elems_[v4] = v8;
    if (!v6)
    {
      break;
    }
  }

  while (v4++ != 39);
}

- (double)selectedStats
{
  if (a1)
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 1065353216;
    for (i = 8; i != 48; ++i)
    {
      if (*(a1 + i) == 1)
      {
        std::__hash_table<CLPCReportingStatID,std::hash<CLPCReportingStatID>,std::equal_to<CLPCReportingStatID>,std::allocator<CLPCReportingStatID>>::__emplace_unique_key_args<CLPCReportingStatID,CLPCReportingStatID const&>(a2, v5);
      }

      ++v5;
    }
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

@end