@interface UIStoryboardUnwindSegueSource
- (id)_childContainingUnwindSourceForViewController:(id)a3;
- (id)_findDestination;
- (id)_initWithSourceViewController:(id)a3 action:(SEL)a4 sender:(id)a5;
@end

@implementation UIStoryboardUnwindSegueSource

- (id)_initWithSourceViewController:(id)a3 action:(SEL)a4 sender:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = UIStoryboardUnwindSegueSource;
  v11 = [(UIStoryboardUnwindSegueSource *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_sourceViewController, a3);
    v12->_unwindAction = a4;
    objc_storeStrong(&v12->_sender, a5);
  }

  return v12;
}

- (id)_childContainingUnwindSourceForViewController:(id)a3
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__187;
  v21 = __Block_byref_object_dispose__187;
  v22 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  searchChain = self->_searchChain;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__UIStoryboardUnwindSegueSource__childContainingUnwindSourceForViewController___block_invoke;
  v11[3] = &unk_1E7122900;
  v13 = v15;
  v6 = v4;
  v12 = v6;
  v14 = &v17;
  [(NSMutableArray *)searchChain enumerateObjectsWithOptions:2 usingBlock:v11];
  sourceViewController = v18[5];
  if (sourceViewController)
  {
    goto LABEL_2;
  }

  v9 = [(UIViewController *)self->_sourceViewController parentViewController];

  if (v9 == v6)
  {
    sourceViewController = self->_sourceViewController;
LABEL_2:
    v8 = sourceViewController;
    goto LABEL_5;
  }

  v8 = 0;
LABEL_5:

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v17, 8);

  return v8;
}

void __79__UIStoryboardUnwindSegueSource__childContainingUnwindSourceForViewController___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1[5] + 8);
  v12 = v7;
  if (*(v8 + 24))
  {
    v9 = [v7 parentViewController];
    if (v9)
    {
      v10 = v9;
      do
      {
        if (v10 == a1[4])
        {
          objc_storeStrong((*(a1[6] + 8) + 40), a2);
          *a4 = 1;
        }

        v11 = [v10 parentViewController];

        v10 = v11;
      }

      while (v11);
    }
  }

  else if (a1[4] == v7)
  {
    *(v8 + 24) = 1;
  }
}

- (id)_findDestination
{
  v3 = objc_opt_new();
  searchChain = self->_searchChain;
  self->_searchChain = v3;

  v5 = [MEMORY[0x1E696AC70] hashTableWithOptions:512];
  v6 = self->_sourceViewController;
  v7 = [(UIViewController *)v6 _nextViewControllerForUnwindSegueSearch];
  if (v7)
  {
    v8 = v7;
    while (1)
    {
      [(NSMutableArray *)self->_searchChain addObject:v8];
      v9 = [v8 _destinationForUnwindingFromSource:self visitedViewControllers:v5];
      if (v9)
      {
        break;
      }

      v10 = [v8 _nextViewControllerForUnwindSegueSearch];

      v8 = v10;
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

LABEL_8:

  return v10;
}

@end