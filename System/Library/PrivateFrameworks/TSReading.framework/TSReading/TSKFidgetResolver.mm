@interface TSKFidgetResolver
- (TSKFidgetResolver)init;
- (id)nonFidgetValue;
- (unint64_t)p_previousValidIndexFromIndex:(unint64_t)index;
- (void)dealloc;
- (void)p_advanceHead;
- (void)pushValue:(id)value;
- (void)pushValue:(id)value withTime:(double)time;
@end

@implementation TSKFidgetResolver

- (TSKFidgetResolver)init
{
  v5.receiver = self;
  v5.super_class = TSKFidgetResolver;
  v2 = [(TSKFidgetResolver *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_fidgetThreshold = 0.1;
    v2->_values = malloc_type_calloc(0xAuLL, 8uLL, 0x80040B8603338uLL);
    v3->_times = malloc_type_calloc(0xAuLL, 8uLL, 0x100004000313F17uLL);
    v3->_head = 9;
  }

  return v3;
}

- (void)dealloc
{
  for (i = 0; i != 10; ++i)
  {
  }

  free(self->_values);
  free(self->_times);
  v4.receiver = self;
  v4.super_class = TSKFidgetResolver;
  [(TSKFidgetResolver *)&v4 dealloc];
}

- (id)nonFidgetValue
{
  v3 = CFAbsoluteTimeGetCurrent() - self->_fidgetThreshold;
  for (i = self->_head; ; i = v8)
  {
    result = self->_values[i];
    v6 = self->_times[i];
    if (!result || v6 <= v3)
    {
      break;
    }

    v8 = [(TSKFidgetResolver *)self p_previousValidIndexFromIndex:v6];
    if (v8 == self->_head)
    {
      return 0;
    }
  }

  return result;
}

- (void)pushValue:(id)value
{
  Current = CFAbsoluteTimeGetCurrent();

  [(TSKFidgetResolver *)self pushValue:value withTime:Current];
}

- (void)pushValue:(id)value withTime:(double)time
{
  [(TSKFidgetResolver *)self p_advanceHead];
  valueCopy = value;

  self->_values[self->_head] = value;
  self->_times[self->_head] = time;
}

- (void)p_advanceHead
{
  head = self->_head;
  if (head == 9)
  {
    v3 = 0;
  }

  else
  {
    v3 = head + 1;
  }

  self->_head = v3;
}

- (unint64_t)p_previousValidIndexFromIndex:(unint64_t)index
{
  if (index)
  {
    return index - 1;
  }

  else
  {
    return 9;
  }
}

@end