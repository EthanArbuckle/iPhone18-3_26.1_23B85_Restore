@interface SWNavigationObserver
- (SWNavigationObserver)initWithBlock:(id)a3;
- (void)handledNavigationWithURL:(id)a3;
@end

@implementation SWNavigationObserver

- (SWNavigationObserver)initWithBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SWNavigationObserver;
  v5 = [(SWNavigationObserver *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x1DA6FDA60](v4);
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

- (void)handledNavigationWithURL:(id)a3
{
  v6 = a3;
  v4 = [(SWNavigationObserver *)self block];

  if (v4)
  {
    v5 = [(SWNavigationObserver *)self block];
    (v5)[2](v5, v6);
  }
}

@end