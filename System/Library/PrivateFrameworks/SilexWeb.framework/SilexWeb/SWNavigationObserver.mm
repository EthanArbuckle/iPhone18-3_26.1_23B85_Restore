@interface SWNavigationObserver
- (SWNavigationObserver)initWithBlock:(id)block;
- (void)handledNavigationWithURL:(id)l;
@end

@implementation SWNavigationObserver

- (SWNavigationObserver)initWithBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = SWNavigationObserver;
  v5 = [(SWNavigationObserver *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x1DA6FDA60](blockCopy);
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

- (void)handledNavigationWithURL:(id)l
{
  lCopy = l;
  block = [(SWNavigationObserver *)self block];

  if (block)
  {
    block2 = [(SWNavigationObserver *)self block];
    (block2)[2](block2, lCopy);
  }
}

@end