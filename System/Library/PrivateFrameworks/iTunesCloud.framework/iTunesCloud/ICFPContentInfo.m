@interface ICFPContentInfo
+ (id)whaContentInfoWithAccountID:(unint64_t)a3;
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

+ (id)whaContentInfoWithAccountID:(unint64_t)a3
{
  v4 = [[a1 alloc] _init];
  if (v4)
  {
    v4[1] = 3;
    v4[2] = a3;
  }

  return v4;
}

@end