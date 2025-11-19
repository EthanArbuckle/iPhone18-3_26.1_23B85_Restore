@interface SVTimeline
- (SVTimeline)init;
- (uint64_t)cancelScheduledBlocks;
- (uint64_t)resetTime;
- (void)dealloc;
- (void)executeActionsForTime:(double)a3 withDuration:;
- (void)performBlock:(double)a3 at:;
- (void)setDuration:(uint64_t)a1;
- (void)setTime:(uint64_t)a1;
@end

@implementation SVTimeline

- (SVTimeline)init
{
  v6.receiver = self;
  v6.super_class = SVTimeline;
  v2 = [(SVTimeline *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    actions = v2->_actions;
    v2->_actions = v3;
  }

  return v2;
}

- (void)executeActionsForTime:(double)a3 withDuration:
{
  v25 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = [*(a1 + 24) copy];
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v7 = *v21;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = a3 > 0.0;
          v10 = *(*(&v20 + 1) + 8 * i);
          v11 = [(SVTimeBasedAction *)v10 time];
          v12 = v11 < 0.0;
          v13 = v11 + a3;
          if (-v11 > a3)
          {
            v12 = 0;
          }

          if (!v9 || !v12)
          {
            v13 = -1.79769313e308;
          }

          v14 = v11 <= a3 && v11 >= 0.0;
          if (!v9 || !v14)
          {
            v11 = v13;
          }

          if (v11 <= a2 && v11 != -1.79769313e308)
          {
            objc_initWeak(&location, v10);
            v16 = [(SVTimeBasedAction *)v10 block];
            v17 = objc_loadWeakRetained(&location);
            (v16)[2](v16, v17);

            objc_destroyWeak(&location);
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v6);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)performBlock:(double)a3 at:
{
  v5 = a2;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v6 = [SVTimeBasedAction alloc];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __30__SVTimeline_performBlock_at___block_invoke;
    v9[3] = &unk_279BC5DD8;
    v10 = v5;
    objc_copyWeak(&v11, &location);
    v7 = [(SVTimeBasedAction *)v6 initWithTime:v9 block:a3];
    if (v7)
    {
      [a1[3] addObject:v7];
    }

    objc_destroyWeak(&v11);

    objc_destroyWeak(&location);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __30__SVTimeline_performBlock_at___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v4 && WeakRetained)
  {
    [WeakRetained[3] removeObject:v4];
  }
}

- (void)dealloc
{
  if (self)
  {
    [(NSMutableArray *)self->_actions removeAllObjects];
  }

  v3.receiver = self;
  v3.super_class = SVTimeline;
  [(SVTimeline *)&v3 dealloc];
}

- (uint64_t)cancelScheduledBlocks
{
  if (result)
  {
    return [*(result + 24) removeAllObjects];
  }

  return result;
}

- (uint64_t)resetTime
{
  if (result)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  return result;
}

- (void)setDuration:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 8) != a2)
    {
      *(a1 + 8) = a2;
      [(SVTimeline *)a1 executeActionsForTime:a2 withDuration:?];
    }
  }
}

- (void)setTime:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 16) != a2)
    {
      *(a1 + 16) = a2;
      [(SVTimeline *)a1 executeActionsForTime:a2 withDuration:*(a1 + 8)];
    }
  }
}

@end