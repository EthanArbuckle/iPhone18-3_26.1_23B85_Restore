@interface _SCDAAdvertisementContextMutation
- (_SCDAAdvertisementContextMutation)initWithBase:(id)base;
- (double)getContextFetchDelay;
- (id)getContextData;
- (unint64_t)getGeneration;
@end

@implementation _SCDAAdvertisementContextMutation

- (double)getContextFetchDelay
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    return self->_contextFetchDelay;
  }

  [(SCDAAdvertisementContext *)self->_base contextFetchDelay];
  return result;
}

- (id)getContextData
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    contextData = self->_contextData;
  }

  else
  {
    contextData = [(SCDAAdvertisementContext *)self->_base contextData];
  }

  return contextData;
}

- (unint64_t)getGeneration
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_generation;
  }

  else
  {
    return [(SCDAAdvertisementContext *)self->_base generation];
  }
}

- (_SCDAAdvertisementContextMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _SCDAAdvertisementContextMutation;
  v6 = [(_SCDAAdvertisementContextMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end