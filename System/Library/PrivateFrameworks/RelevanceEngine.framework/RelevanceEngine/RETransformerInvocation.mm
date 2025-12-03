@interface RETransformerInvocation
+ (id)invocationWithArguments:(unint64_t *)arguments count:(unint64_t)count;
- (RETransformerInvocation)init;
- (id).cxx_construct;
- (void)dealloc;
- (void)setArgument:(unint64_t)argument atIndex:(unint64_t)index;
@end

@implementation RETransformerInvocation

+ (id)invocationWithArguments:(unint64_t *)arguments count:(unint64_t)count
{
  v6 = objc_alloc_init(RETransformerInvocation);
  if (count)
  {
    v7 = 0;
    do
    {
      [(RETransformerInvocation *)v6 setArgument:arguments[v7] atIndex:v7];
      ++v7;
    }

    while (count != v7);
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

- (void)setArgument:(unint64_t)argument atIndex:(unint64_t)index
{
  p_values = &self->_values;
  if (index >= self->_values.__end_ - self->_values.__begin_)
  {
    std::vector<unsigned long>::resize(&self->_values.__begin_, index + 1);
  }

  RERetainFeatureValueTaggedPointer(argument);
  REReleaseFeatureValueTaggedPointer(p_values->__begin_[index]);
  p_values->__begin_[index] = argument;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end