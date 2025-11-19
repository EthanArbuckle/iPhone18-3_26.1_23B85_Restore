@interface RETransformerInvocation
+ (id)invocationWithArguments:(unint64_t *)a3 count:(unint64_t)a4;
- (RETransformerInvocation)init;
- (id).cxx_construct;
- (void)dealloc;
- (void)setArgument:(unint64_t)a3 atIndex:(unint64_t)a4;
@end

@implementation RETransformerInvocation

+ (id)invocationWithArguments:(unint64_t *)a3 count:(unint64_t)a4
{
  v6 = objc_alloc_init(RETransformerInvocation);
  if (a4)
  {
    v7 = 0;
    do
    {
      [(RETransformerInvocation *)v6 setArgument:a3[v7] atIndex:v7];
      ++v7;
    }

    while (a4 != v7);
  }

  return v6;
}

- (RETransformerInvocation)init
{
  v5.receiver = self;
  v5.super_class = RETransformerInvocation;
  v2 = [(RETransformerInvocation *)&v5 init];
  v3 = v2;
  if (v2)
  {
    std::vector<unsigned long>::resize(&v2->_values.__begin_, 0);
  }

  return v3;
}

- (void)dealloc
{
  begin = self->_values.__begin_;
  for (i = self->_values.__end_; begin != i; i = self->_values.__end_)
  {
    REReleaseFeatureValueTaggedPointer(*begin++);
  }

  v5.receiver = self;
  v5.super_class = RETransformerInvocation;
  [(RETransformerInvocation *)&v5 dealloc];
}

- (void)setArgument:(unint64_t)a3 atIndex:(unint64_t)a4
{
  p_values = &self->_values;
  if (a4 >= self->_values.__end_ - self->_values.__begin_)
  {
    std::vector<unsigned long>::resize(&self->_values.__begin_, a4 + 1);
  }

  RERetainFeatureValueTaggedPointer(a3);
  REReleaseFeatureValueTaggedPointer(p_values->__begin_[a4]);
  p_values->__begin_[a4] = a3;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end