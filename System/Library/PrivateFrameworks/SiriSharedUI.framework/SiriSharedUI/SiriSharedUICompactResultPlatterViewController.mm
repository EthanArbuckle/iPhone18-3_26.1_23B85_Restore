@interface SiriSharedUICompactResultPlatterViewController
- (void)setSiriContentViewControllers:(id)controllers;
@end

@implementation SiriSharedUICompactResultPlatterViewController

- (void)setSiriContentViewControllers:(id)controllers
{
  controllersCopy = controllers;
  if (self->_siriContentViewControllers != controllersCopy)
  {
    v11 = controllersCopy;
    objc_storeStrong(&self->_siriContentViewControllers, controllers);
    v6 = objc_opt_new();
    if ([(NSArray *)self->_siriContentViewControllers count])
    {
      v7 = 0;
      do
      {
        v8 = [(NSArray *)v11 objectAtIndex:v7];
        lastObject = [(NSArray *)v11 lastObject];

        [v6 addObject:v8];
        ++v7;
        if (v8 != lastObject)
        {
          v10 = [(NSArray *)v11 objectAtIndex:v7];
          [(SiriSharedUIContentPlatterViewController *)self appendSeparatorToViewControllers:v6 forNextViewController:v10];
        }
      }

      while ([(NSArray *)self->_siriContentViewControllers count]> v7);
    }

    [(SiriSharedUIContentPlatterViewController *)self setContentViewControllers:v6];

    controllersCopy = v11;
  }
}

@end