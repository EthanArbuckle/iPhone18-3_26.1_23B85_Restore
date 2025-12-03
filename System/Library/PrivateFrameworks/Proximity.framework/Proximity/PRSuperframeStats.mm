@interface PRSuperframeStats
- (PRSuperframeStats)initWithStats:(const void *)stats;
- (ResponderSuperframeStats)stats;
- (id).cxx_construct;
@end

@implementation PRSuperframeStats

- (PRSuperframeStats)initWithStats:(const void *)stats
{
  v4.receiver = self;
  v4.super_class = PRSuperframeStats;
  if ([(PRSuperframeStats *)&v4 init])
  {
    std::allocate_shared[abi:ne200100]<rose::ResponderSuperframeStats,std::allocator<rose::ResponderSuperframeStats>,rose::ResponderSuperframeStats const&,0>();
  }

  return 0;
}

- (ResponderSuperframeStats)stats
{
  ptr = self->_stats.__ptr_;
  var1 = ptr->var1;
  retstr->var0 = ptr->var0;
  retstr->var1 = var1;
  var0_low = LODWORD(ptr[2].var0);
  v8 = *&ptr[1].var0;
  var2 = ptr[1].var2;
  v9 = ptr->var2;
  *&retstr[2].var1 = 0;
  retstr = (retstr + 72);
  *&retstr[-2].var1 = v9;
  *&retstr[-2].var2.var3 = v8;
  *&retstr[-1].var1 = var2;
  LODWORD(retstr[-1].var2.var3) = var0_low;
  *&retstr->var1 = 0;
  *&retstr->var2.var0 = 0;
  result = std::vector<Rose::ResponderSuperframeRxPacketInfo>::__init_with_size[abi:ne200100]<Rose::ResponderSuperframeRxPacketInfo*,Rose::ResponderSuperframeRxPacketInfo*>(retstr, *&ptr[2].var1, *&ptr[2].var2.var0, (*&ptr[2].var2.var0 - *&ptr[2].var1) >> 4);
  *&retstr->var2.var3 = *&ptr[3].var0;
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end