@interface TSCEValueBindings
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (id)lookup:(const unsigned int *)a3;
- (void)bindValue:(id)a3 atSymbol:(const unsigned int *)a4;
@end

@implementation TSCEValueBindings

- (void)bindValue:(id)a3 atSymbol:(const unsigned int *)a4
{
  v6 = a3;
  v7 = *a4;
  begin = self->_valuesBySymbol.__begin_;
  var0 = self->_valuesBySymbol.var0;
  p_valuesBySymbol = &self->_valuesBySymbol;
  if (v7 >= var0 - begin)
  {
    v12 = 0;
    sub_22130B75C(p_valuesBySymbol, (v7 + 10), &v12);

    v7 = *a4;
    begin = p_valuesBySymbol->__begin_;
  }

  v11 = begin[v7];
  begin[v7] = v6;
}

- (id)lookup:(const unsigned int *)a3
{
  v4 = *a3;
  begin = self->_valuesBySymbol.__begin_;
  if (v4 >= self->_valuesBySymbol.var0 - begin)
  {
    v6 = 0;
  }

  else
  {
    v6 = begin[v4];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = v4;
  if (v4 != self)
  {
    sub_22116CF34(&v4->_valuesBySymbol, self->_valuesBySymbol.__begin_, self->_valuesBySymbol.var0, self->_valuesBySymbol.var0 - self->_valuesBySymbol.__begin_);
  }

  return v5;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end