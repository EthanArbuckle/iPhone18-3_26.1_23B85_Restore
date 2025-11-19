@interface MTLHUDConfigViewController
- (void)addDescription:(id)a3;
- (void)addEntry:(id)a3;
- (void)addLink:(id)a3 andURL:(id)a4;
- (void)addPanel:(id)a3;
- (void)addSection:(id)a3;
@end

@implementation MTLHUDConfigViewController

- (void)addPanel:(id)a3
{
  v7 = a3;
  if (!self->_panels)
  {
    v4 = objc_opt_new();
    panels = self->_panels;
    self->_panels = v4;
  }

  v6 = objc_opt_new();
  [v6 setName:v7];
  [(NSMutableArray *)self->_panels addObject:v6];
}

- (void)addEntry:(id)a3
{
  v10 = a3;
  panels = self->_panels;
  if (!panels)
  {
    v5 = objc_opt_new();
    v6 = self->_panels;
    self->_panels = v5;

    v7 = objc_opt_new();
    [(NSMutableArray *)self->_panels addObject:v7];

    panels = self->_panels;
  }

  v8 = [(NSMutableArray *)panels lastObject];
  v9 = [v8 entries];
  [v9 addObject:v10];
}

- (void)addSection:(id)a3
{
  v4 = a3;
  v5 = [[MTLHUDConfigViewControllerSectionEntry alloc] initWithTitle:v4];

  [(MTLHUDConfigViewController *)self addEntry:v5];
}

- (void)addDescription:(id)a3
{
  v4 = a3;
  v5 = [[MTLHUDConfigViewControllerMessageEntry alloc] initWithMessage:v4 color:1];

  [(MTLHUDConfigViewController *)self addEntry:v5];
}

- (void)addLink:(id)a3 andURL:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[MTLHUDConfigViewControllerLinkEntry alloc] initWithTitle:v7 andURL:v6];

  [(MTLHUDConfigViewController *)self addEntry:v8];
}

@end