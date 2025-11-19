@interface RSMajorViewInfo
- (RSMajorViewInfo)init;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation RSMajorViewInfo

- (id).cxx_construct
{
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = *self->_anon_8;
  v6 = *&self->_anon_8[8];
  while (v5 != v6)
  {
    sub_2621D9F60(v4 + 8, v5++);
  }

  v7 = *self->_anon_20;
  v8 = *&self->_anon_20[8];
  while (v7 != v8)
  {
    sub_2621D9F60(v4 + 32, v7++);
  }

  v9 = *self->_anon_38;
  v10 = *&self->_anon_38[8];
  while (v9 != v10)
  {
    sub_2621D9F60(v4 + 56, v9++);
  }

  isa = self[1].super.isa;
  v11 = *self[1]._anon_8;
  while (isa != v11)
  {
    sub_2621D9F60(v4 + 80, isa);
    isa = (isa + 16);
  }

  return v4;
}

- (RSMajorViewInfo)init
{
  v3.receiver = self;
  v3.super_class = RSMajorViewInfo;
  result = [(RSMajorViewInfo *)&v3 init];
  if (result)
  {
    *&result->_anon_8[8] = *result->_anon_8;
    *&result->_anon_20[8] = *result->_anon_20;
    *&result->_anon_38[8] = *result->_anon_38;
    *result[1]._anon_8 = result[1].super.isa;
  }

  return result;
}

@end