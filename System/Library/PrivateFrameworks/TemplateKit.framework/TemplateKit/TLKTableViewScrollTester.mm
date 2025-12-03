@interface TLKTableViewScrollTester
- (TLKTableViewScrollTester)init;
- (void)finishFirstScrollIfNeeded;
- (void)fire:(id)fire;
- (void)performScrollTestOnTableView:(id)view firstScroll:(id)scroll completion:(id)completion;
@end

@implementation TLKTableViewScrollTester

- (TLKTableViewScrollTester)init
{
  v4.receiver = self;
  v4.super_class = TLKTableViewScrollTester;
  v2 = [(TLKTableViewScrollTester *)&v4 init];
  [(TLKTableViewScrollTester *)v2 setScrollTime:30.0];
  return v2;
}

- (void)performScrollTestOnTableView:(id)view firstScroll:(id)scroll completion:(id)completion
{
  completionCopy = completion;
  scrollCopy = scroll;
  viewCopy = view;
  [(TLKTableViewScrollTester *)self setFinishedFirstScroll:0];
  [(TLKTableViewScrollTester *)self setTableView:viewCopy];

  [(TLKTableViewScrollTester *)self setStartTime:CACurrentMediaTime()];
  v12 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel_fire_];
  mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
  [v12 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

  [(TLKTableViewScrollTester *)self setFirstScroll:scrollCopy];
  [(TLKTableViewScrollTester *)self setCompletion:completionCopy];
}

- (void)fire:(id)fire
{
  fireCopy = fire;
  v4 = CACurrentMediaTime();
  [(TLKTableViewScrollTester *)self startTime];
  v6 = v4 - v5;
  [(TLKTableViewScrollTester *)self scrollTime];
  if (v6 <= v7)
  {
    tableView = [(TLKTableViewScrollTester *)self tableView];
    [tableView bounds];
    v12 = v11;

    tableView2 = [(TLKTableViewScrollTester *)self tableView];
    [tableView2 contentSize];
    v15 = v14;

    tableView3 = [(TLKTableViewScrollTester *)self tableView];
    [tableView3 contentInset];
    v18 = v17;
    v20 = v19;

    tableView4 = [(TLKTableViewScrollTester *)self tableView];
    [tableView4 contentOffset];
    v23 = v22;
    v25 = v24;

    if ([(TLKTableViewScrollTester *)self directionUp])
    {
      v26 = v25 + -24.5;
      if (v25 + -24.5 <= 0.0)
      {
        [(TLKTableViewScrollTester *)self setDirectionUp:0];
      }
    }

    else
    {
      v27 = v15 - v12 - v18 - v20;
      v26 = v25 + 24.5;
      if (v25 + 24.5 >= v27)
      {
        [(TLKTableViewScrollTester *)self setDirectionUp:1];
        [(TLKTableViewScrollTester *)self finishFirstScrollIfNeeded];
      }
    }

    tableView5 = [(TLKTableViewScrollTester *)self tableView];
    [tableView5 setContentOffset:0 animated:{v23, v26}];
  }

  else
  {
    [(TLKTableViewScrollTester *)self finishFirstScrollIfNeeded];
    completion = [(TLKTableViewScrollTester *)self completion];

    if (completion)
    {
      completion2 = [(TLKTableViewScrollTester *)self completion];
      completion2[2]();
    }

    [fireCopy invalidate];
    [(TLKTableViewScrollTester *)self setCompletion:0];
  }
}

- (void)finishFirstScrollIfNeeded
{
  if (![(TLKTableViewScrollTester *)self finishedFirstScroll])
  {
    firstScroll = [(TLKTableViewScrollTester *)self firstScroll];

    if (firstScroll)
    {
      [(TLKTableViewScrollTester *)self setFinishedFirstScroll:1];
      firstScroll2 = [(TLKTableViewScrollTester *)self firstScroll];
      firstScroll2[2]();
    }
  }
}

@end