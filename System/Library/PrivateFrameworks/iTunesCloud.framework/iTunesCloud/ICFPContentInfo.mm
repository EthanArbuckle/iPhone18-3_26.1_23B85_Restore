@interface ICFPContentInfo
+ (id)whaContentInfoWithAccountID:(unint64_t)d;
- (FPContentInfo_)fpContentInfo;
- (id)_init;
@end

@implementation ICFPContentInfo

- (FPContentInfo_)fpContentInfo
{
  *&retstr->var0 = 0uLL;
  *(&retstr->var3 + 2) = 0;
  if (self->var2.var2 == 3)
  {
    retstr->var0 = 3;
    retstr->var2.var2 = *(&self->var3 + 2);
  }

  return self;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = ICFPContentInfo;
  return [(ICFPContentInfo *)&v3 init];
}

+ (id)whaContentInfoWithAccountID:(unint64_t)d
{
  _init = [[self alloc] _init];
  if (_init)
  {
    _init[1] = 3;
    _init[2] = d;
  }

  return _init;
}

@end