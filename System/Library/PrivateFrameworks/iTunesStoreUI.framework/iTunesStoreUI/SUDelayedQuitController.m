@interface SUDelayedQuitController
+ (BOOL)isDelayingTerminate;
+ (BOOL)viewControllerIsLongLived:(id)a3;
+ (id)checkedInViewControllerOfClass:(Class)a3;
+ (void)beginDelayingTerminate;
+ (void)checkInLongLivedViewController:(id)a3;
+ (void)checkOutLongLivedViewController:(id)a3;
+ (void)endDelayingTerminate;
- (id)_checkedInViewControllerOfClass:(Class)a3;
- (void)_checkInLongLivedViewController:(id)a3;
- (void)_checkOutLongLivedViewController:(id)a3;
- (void)_endDelayingTerminate;
- (void)dealloc;
@end

@implementation SUDelayedQuitController

- (void)dealloc
{
  self->_longLivedViewControllers = 0;
  v3.receiver = self;
  v3.super_class = SUDelayedQuitController;
  [(SUDelayedQuitController *)&v3 dealloc];
}

+ (void)checkInLongLivedViewController:(id)a3
{
  v4 = +[SUDelayedQuitController sharedInstance];

  [(SUDelayedQuitController *)v4 _checkInLongLivedViewController:a3];
}

+ (void)checkOutLongLivedViewController:(id)a3
{
  v4 = +[SUDelayedQuitController sharedInstance];

  [(SUDelayedQuitController *)v4 _checkOutLongLivedViewController:a3];
}

+ (BOOL)viewControllerIsLongLived:(id)a3
{
  v4 = +[SUDelayedQuitController sharedInstance];

  return [(SUDelayedQuitController *)v4 _viewControllerIsLongLived:a3];
}

+ (id)checkedInViewControllerOfClass:(Class)a3
{
  v4 = +[SUDelayedQuitController sharedInstance];

  return [(SUDelayedQuitController *)v4 _checkedInViewControllerOfClass:a3];
}

+ (BOOL)isDelayingTerminate
{
  v2 = +[SUDelayedQuitController sharedInstance];

  return [(SUDelayedQuitController *)v2 _isDelayingTerminate];
}

+ (void)beginDelayingTerminate
{
  v2 = [+[SUDelayedQuitController sharedInstance](SUDelayedQuitController mainThreadProxy];

  [v2 _beginDelayingTerminate];
}

+ (void)endDelayingTerminate
{
  v2 = [+[SUDelayedQuitController sharedInstance](SUDelayedQuitController mainThreadProxy];

  [v2 _endDelayingTerminate];
}

- (void)_checkInLongLivedViewController:(id)a3
{
  longLivedViewControllers = self->_longLivedViewControllers;
  if (!longLivedViewControllers)
  {
    longLivedViewControllers = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_longLivedViewControllers = longLivedViewControllers;
  }

  if (([(NSMutableArray *)longLivedViewControllers containsObject:a3]& 1) == 0)
  {
    [(NSMutableArray *)self->_longLivedViewControllers addObject:a3];

    [(SUDelayedQuitController *)self _beginDelayingTerminate];
  }
}

- (void)_checkOutLongLivedViewController:(id)a3
{
  longLivedViewControllers = self->_longLivedViewControllers;
  if (longLivedViewControllers && [(NSMutableArray *)longLivedViewControllers containsObject:?])
  {
    v6 = a3;
    [(NSMutableArray *)self->_longLivedViewControllers removeObject:a3];
    v7 = [(SUDelayedQuitController *)self mainThreadProxy];

    [v7 _endDelayingTerminate];
  }
}

- (id)_checkedInViewControllerOfClass:(Class)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  longLivedViewControllers = self->_longLivedViewControllers;
  v4 = [(NSMutableArray *)longLivedViewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *v11;
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (*v11 != v6)
    {
      objc_enumerationMutation(longLivedViewControllers);
    }

    v8 = *(*(&v10 + 1) + 8 * v7);
    if (objc_opt_isKindOfClass())
    {
      return v8;
    }

    if (v5 == ++v7)
    {
      v5 = [(NSMutableArray *)longLivedViewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)_endDelayingTerminate
{
  delayTerminateCount = self->_delayTerminateCount;
  v3 = delayTerminateCount < 1;
  v4 = delayTerminateCount - 1;
  if (!v3)
  {
    self->_delayTerminateCount = v4;
    v6 = [MEMORY[0x1E69DC668] sharedApplication];
    if (!self->_delayTerminateCount)
    {
      v7 = v6;
      if ([v6 isSuspended])
      {
        if (([v7 isSuspendedEventsOnly] & 1) == 0)
        {

          [v7 terminateWithSuccess];
        }
      }
    }
  }
}

@end