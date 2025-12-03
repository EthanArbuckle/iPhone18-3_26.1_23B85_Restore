@interface TSCEValueBindings
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)lookup:(const unsigned int *)lookup;
- (void)bindValue:(id)value atSymbol:(const unsigned int *)symbol;
@end

@implementation TSCEValueBindings

- (void)bindValue:(id)value atSymbol:(const unsigned int *)symbol
{
  valueCopy = value;
  v7 = *symbol;
  begin = self->_valuesBySymbol.__begin_;
  var0 = self->_valuesBySymbol.var0;
  p_valuesBySymbol = &self->_valuesBySymbol;
  if (v7 >= var0 - begin)
  {
    v12 = 0;
    sub_22130B75C(p_valuesBySymbol, (v7 + 10), &v12);

    v7 = *symbol;
    begin = p_valuesBySymbol->__begin_;
  }

  v11 = begin[v7];
  begin[v7] = valueCopy;
}

- (id)lookup:(const unsigned int *)lookup
{
  v4 = *lookup;
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

- (id)copyWithZone:(_NSZone *)zone
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