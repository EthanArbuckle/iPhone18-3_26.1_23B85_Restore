@interface TVProgressView
@end

@implementation TVProgressView

void __43___TVProgressView__maskImageForProgressBar__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75348] blackColor];
  [v2 setFill];

  v3 = MEMORY[0x277D75208];
  v4 = *(a1 + 32);
  v5 = v4[60];
  [v4 bounds];
  [v5 convertRect:*(a1 + 32) fromView:?];
  v6 = [v3 bezierPathWithRoundedRect:? cornerRadius:?];
  [v6 fill];
}

@end