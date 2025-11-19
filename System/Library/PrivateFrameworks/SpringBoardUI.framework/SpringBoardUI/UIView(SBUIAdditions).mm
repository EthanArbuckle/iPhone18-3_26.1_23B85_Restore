@interface UIView(SBUIAdditions)
- (void)sbui_drawEagerly;
@end

@implementation UIView(SBUIAdditions)

- (void)sbui_drawEagerly
{
  v2 = objc_getAssociatedObject(a1, "hasDrawn");

  if (!v2)
  {
    objc_setAssociatedObject(a1, "hasDrawn", *MEMORY[0x277CBED28], 0);
    Current = CFRunLoopGetCurrent();
    v4 = *MEMORY[0x277CBF058];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__UIView_SBUIAdditions__sbui_drawEagerly__block_invoke;
    block[3] = &unk_27836AFB0;
    block[4] = a1;
    CFRunLoopPerformBlock(Current, v4, block);
  }
}

@end