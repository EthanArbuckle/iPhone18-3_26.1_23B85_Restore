@interface TLKTableViewScrollTester
- (TLKTableViewScrollTester)init;
- (void)finishFirstScrollIfNeeded;
- (void)fire:(id)a3;
- (void)performScrollTestOnTableView:(id)a3 firstScroll:(id)a4 completion:(id)a5;
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

- (void)performScrollTestOnTableView:(id)a3 firstScroll:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(TLKTableViewScrollTester *)self setFinishedFirstScroll:0];
  [(TLKTableViewScrollTester *)self setTableView:v10];

  [(TLKTableViewScrollTester *)self setStartTime:CACurrentMediaTime()];
  v12 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel_fire_];
  v11 = [MEMORY[0x1E695DFD0] mainRunLoop];
  [v12 addToRunLoop:v11 forMode:*MEMORY[0x1E695DA28]];

  [(TLKTableViewScrollTester *)self setFirstScroll:v9];
  [(TLKTableViewScrollTester *)self setCompletion:v8];
}

- (void)fire:(id)a3
{
  v29 = a3;
  v4 = CACurrentMediaTime();
  [(TLKTableViewScrollTester *)self startTime];
  v6 = v4 - v5;
  [(TLKTableViewScrollTester *)self scrollTime];
  if (v6 <= v7)
  {
    v10 = [(TLKTableViewScrollTester *)self tableView];
    [v10 bounds];
    v12 = v11;

    v13 = [(TLKTableViewScrollTester *)self tableView];
    [v13 contentSize];
    v15 = v14;

    v16 = [(TLKTableViewScrollTester *)self tableView];
    [v16 contentInset];
    v18 = v17;
    v20 = v19;

    v21 = [(TLKTableViewScrollTester *)self tableView];
    [v21 contentOffset];
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

    v28 = [(TLKTableViewScrollTester *)self tableView];
    [v28 setContentOffset:0 animated:{v23, v26}];
  }

  else
  {
    [(TLKTableViewScrollTester *)self finishFirstScrollIfNeeded];
    v8 = [(TLKTableViewScrollTester *)self completion];

    if (v8)
    {
      v9 = [(TLKTableViewScrollTester *)self completion];
      v9[2]();
    }

    [v29 invalidate];
    [(TLKTableViewScrollTester *)self setCompletion:0];
  }
}

- (void)finishFirstScrollIfNeeded
{
  if (![(TLKTableViewScrollTester *)self finishedFirstScroll])
  {
    v3 = [(TLKTableViewScrollTester *)self firstScroll];

    if (v3)
    {
      [(TLKTableViewScrollTester *)self setFinishedFirstScroll:1];
      v4 = [(TLKTableViewScrollTester *)self firstScroll];
      v4[2]();
    }
  }
}

@end