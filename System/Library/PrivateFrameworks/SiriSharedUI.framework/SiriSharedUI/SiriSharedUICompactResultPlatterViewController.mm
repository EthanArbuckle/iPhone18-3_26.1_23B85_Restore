@interface SiriSharedUICompactResultPlatterViewController
- (void)setSiriContentViewControllers:(id)a3;
@end

@implementation SiriSharedUICompactResultPlatterViewController

- (void)setSiriContentViewControllers:(id)a3
{
  v5 = a3;
  if (self->_siriContentViewControllers != v5)
  {
    v11 = v5;
    objc_storeStrong(&self->_siriContentViewControllers, a3);
    v6 = objc_opt_new();
    if ([(NSArray *)self->_siriContentViewControllers count])
    {
      v7 = 0;
      do
      {
        v8 = [(NSArray *)v11 objectAtIndex:v7];
        v9 = [(NSArray *)v11 lastObject];

        [v6 addObject:v8];
        ++v7;
        if (v8 != v9)
        {
          v10 = [(NSArray *)v11 objectAtIndex:v7];
          [(SiriSharedUIContentPlatterViewController *)self appendSeparatorToViewControllers:v6 forNextViewController:v10];
        }
      }

      while ([(NSArray *)self->_siriContentViewControllers count]> v7);
    }

    [(SiriSharedUIContentPlatterViewController *)self setContentViewControllers:v6];

    v5 = v11;
  }
}

@end