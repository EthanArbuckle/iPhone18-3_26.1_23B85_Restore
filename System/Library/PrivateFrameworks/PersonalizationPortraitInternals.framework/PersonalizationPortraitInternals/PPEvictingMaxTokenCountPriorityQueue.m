@interface PPEvictingMaxTokenCountPriorityQueue
- (PPEvictingMaxTokenCountPriorityQueue)initWithCapacity:(unint64_t)a3;
- (id)getMaxItemWithoutPopping;
- (id)popItem;
- (void)addObject:(id)a3;
- (void)dealloc;
- (void)enumerateTokenCountsUsingBlock:(id)a3;
@end

@implementation PPEvictingMaxTokenCountPriorityQueue

- (void)enumerateTokenCountsUsingBlock:(id)a3
{
  v4 = a3;
  v9 = 0;
  v5 = *(self->_queue + 1) - *self->_queue;
  if (v5)
  {
    v6 = (v5 >> 3) - 1;
    do
    {
      v4[2](v4, **self->_queue, &v9);
      std::priority_queue<PPTokenCount * {__strong},std::vector<PPTokenCount * {__strong}>,PPTokenCountCompareLess>::pop(self->_queue);
      v8 = v6-- != 0;
    }

    while ((v9 & 1) == 0 && v8);
  }
}

- (id)getMaxItemWithoutPopping
{
  queue = self->_queue;
  if (*queue == queue[1])
  {
    v4 = 0;
  }

  else
  {
    v4 = **queue;
  }

  return v4;
}

- (id)popItem
{
  queue = self->_queue;
  if (*queue == queue[1])
  {
    v4 = 0;
  }

  else
  {
    v4 = **queue;
    std::priority_queue<PPTokenCount * {__strong},std::vector<PPTokenCount * {__strong}>,PPTokenCountCompareLess>::pop(self->_queue);
  }

  return v4;
}

- (void)addObject:(id)a3
{
  v4 = a3;
  capacity = self->_capacity;
  if (capacity)
  {
    queue = self->_queue;
    v25 = v4;
    if (capacity <= (queue[1] - *queue) >> 3)
    {
      v7 = [v4 count];
      v8 = v7 > [**self->_queue count];
      v4 = v25;
      if (v8)
      {
        goto LABEL_24;
      }

      std::priority_queue<PPTokenCount * {__strong},std::vector<PPTokenCount * {__strong}>,PPTokenCountCompareLess>::pop(self->_queue);
      queue = self->_queue;
      v4 = v25;
    }

    v9 = v4;
    v11 = queue[1];
    v10 = queue[2];
    if (v11 >= v10)
    {
      v14 = *queue;
      v15 = (v11 - *queue) >> 3;
      v16 = v15 + 1;
      if ((v15 + 1) >> 61)
      {
        std::vector<PPTokenCount * {__strong}>::__throw_length_error[abi:ne200100]();
      }

      v17 = v10 - v14;
      if (v17 >> 2 > v16)
      {
        v16 = v17 >> 2;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        if (!(v18 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v19 = (8 * v15);
      v20 = &v19[-((v11 - *queue) >> 3)];
      *v19 = v9;
      v13 = (v19 + 1);
      if (v14 != v11)
      {
        v21 = v14;
        v22 = v20;
        do
        {
          v23 = *v21;
          *v21++ = 0;
          *v22++ = v23;
        }

        while (v21 != v11);
        do
        {
          v24 = *v14++;
        }

        while (v14 != v11);
        v14 = *queue;
      }

      *queue = v20;
      queue[1] = v13;
      queue[2] = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v11 = v9;
      v12 = v11 + 1;
      queue[1] = v12;
      v13 = v12;
    }

    queue[1] = v13;
    std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,PPTokenCountCompareLess &,std::__wrap_iter<PPTokenCount * {__strong}*>>(*queue, v13, (v13 - *queue) >> 3);
    v4 = v25;
  }

LABEL_24:
}

- (void)dealloc
{
  queue = self->_queue;
  if (queue)
  {
    v4 = *queue;
    if (*queue)
    {
      v5 = queue[1];
      v6 = *queue;
      if (v5 != v4)
      {
        do
        {
          v7 = *(v5 - 1);
          v5 -= 8;
        }

        while (v5 != v4);
        v6 = *queue;
      }

      queue[1] = v4;
      operator delete(v6);
    }

    MEMORY[0x238383310](queue, 0x80C402512154ALL);
  }

  v8.receiver = self;
  v8.super_class = PPEvictingMaxTokenCountPriorityQueue;
  [(PPEvictingMaxTokenCountPriorityQueue *)&v8 dealloc];
}

- (PPEvictingMaxTokenCountPriorityQueue)initWithCapacity:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = PPEvictingMaxTokenCountPriorityQueue;
  v4 = [(PPEvictingMaxTokenCountPriorityQueue *)&v6 init];
  if (v4)
  {
    v4->_capacity = a3;
    operator new();
  }

  return 0;
}

@end