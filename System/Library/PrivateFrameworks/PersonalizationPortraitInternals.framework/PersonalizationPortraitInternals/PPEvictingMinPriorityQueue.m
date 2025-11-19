@interface PPEvictingMinPriorityQueue
- (PPEvictingMinPriorityQueue)initWithCapacity:(unint64_t)a3;
- (id)extractSortedMutableArray;
- (id)getMinItemWithoutPopping;
- (id)popItem;
- (void)addObject:(id)a3;
- (void)dealloc;
@end

@implementation PPEvictingMinPriorityQueue

- (id)extractSortedMutableArray
{
  v2 = *self->_queue;
  v3 = *(self->_queue + 1);
  v4 = v3 - v2;
  if (v3 != v2)
  {
    memset(v7, 0, 24);
    v7[3] = v7;
    v7[4] = 0;
    if (!((v4 >> 3) >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PPScoredItem * {__strong}>>(v4 >> 3);
    }

    std::vector<PPTokenCount * {__strong}>::__throw_length_error[abi:ne200100]();
  }

  v5 = objc_opt_new();

  return v5;
}

- (id)getMinItemWithoutPopping
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
    std::priority_queue<PPScoredItem * {__strong},std::vector<PPScoredItem * {__strong}>,PPScoredItemCompareGreater>::pop(self->_queue);
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
    v27 = v4;
    if (capacity <= (queue[1] - *queue) >> 3)
    {
      [v4 score];
      v8 = v7;
      [**self->_queue score];
      v4 = v27;
      if (v8 < v9)
      {
        goto LABEL_23;
      }

      std::priority_queue<PPScoredItem * {__strong},std::vector<PPScoredItem * {__strong}>,PPScoredItemCompareGreater>::pop(self->_queue);
      queue = self->_queue;
      v4 = v27;
    }

    v10 = v4;
    v11 = v10;
    v13 = queue[1];
    v12 = queue[2];
    if (v13 >= v12)
    {
      v15 = (v13 - *queue) >> 3;
      if ((v15 + 1) >> 61)
      {
        std::vector<PPTokenCount * {__strong}>::__throw_length_error[abi:ne200100]();
      }

      v16 = v12 - *queue;
      v17 = v16 >> 2;
      if (v16 >> 2 <= (v15 + 1))
      {
        v17 = v15 + 1;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v17;
      }

      if (v18)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<PPScoredItem * {__strong}>>(v18);
      }

      v19 = (8 * v15);
      *v19 = v11;
      v14 = 8 * v15 + 8;
      v20 = *queue;
      v21 = queue[1];
      v22 = (v19 + *queue - v21);
      if (v21 != *queue)
      {
        v23 = *queue;
        v24 = v22;
        do
        {
          v25 = *v23;
          *v23++ = 0;
          *v24++ = v25;
        }

        while (v23 != v21);
        do
        {
          v26 = *v20++;
        }

        while (v20 != v21);
        v20 = *queue;
      }

      *queue = v22;
      queue[1] = v14;
      queue[2] = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v13 = v10;
      v14 = (v13 + 1);
      queue[1] = v14;
    }

    queue[1] = v14;
    std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,PPScoredItemCompareGreater &,std::__wrap_iter<PPScoredItem * {__strong}*>>(*queue, v14, (v14 - *queue) >> 3);
    v4 = v27;
  }

LABEL_23:
}

- (void)dealloc
{
  queue = self->_queue;
  if (queue)
  {
    v5 = self->_queue;
    std::vector<PPScoredItem * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v5);
    MEMORY[0x238383310](queue, 0x80C402512154ALL);
  }

  v4.receiver = self;
  v4.super_class = PPEvictingMinPriorityQueue;
  [(PPEvictingMinPriorityQueue *)&v4 dealloc];
}

- (PPEvictingMinPriorityQueue)initWithCapacity:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = PPEvictingMinPriorityQueue;
  v4 = [(PPEvictingMinPriorityQueue *)&v6 init];
  if (v4)
  {
    v4->_capacity = a3;
    operator new();
  }

  return 0;
}

@end