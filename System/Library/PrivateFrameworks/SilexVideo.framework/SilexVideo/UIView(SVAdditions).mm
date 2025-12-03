@interface UIView(SVAdditions)
- (void)setHidden:()SVAdditions withShowDelay:;
@end

@implementation UIView(SVAdditions)

- (void)setHidden:()SVAdditions withShowDelay:
{
  if (a4)
  {

    [self setHidden:1];
  }

  else
  {
    v5 = dispatch_time(0, (a2 * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__UIView_SVAdditions__setHidden_withShowDelay___block_invoke;
    block[3] = &unk_279BC5D18;
    block[4] = self;
    dispatch_after(v5, MEMORY[0x277D85CD0], block);
  }
}

@end