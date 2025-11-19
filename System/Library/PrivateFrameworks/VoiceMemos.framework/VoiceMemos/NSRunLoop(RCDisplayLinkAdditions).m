@interface NSRunLoop(RCDisplayLinkAdditions)
- (uint64_t)rc_runUntilNextDisplayLinkEventWithTimeout:()RCDisplayLinkAdditions;
@end

@implementation NSRunLoop(RCDisplayLinkAdditions)

- (uint64_t)rc_runUntilNextDisplayLinkEventWithTimeout:()RCDisplayLinkAdditions
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__NSRunLoop_RCDisplayLinkAdditions__rc_runUntilNextDisplayLinkEventWithTimeout___block_invoke;
  v9[3] = &unk_279E45068;
  v9[4] = &v10;
  v4 = [MEMORY[0x277CD9E48] rc_displayWithFramesPerSecond:0 handlerBlock:v9];
  [v4 addToRunLoop:a1 forMode:*MEMORY[0x277CBE738]];
  Current = CFAbsoluteTimeGetCurrent();
  do
  {
    [a1 runUntilDate:{objc_msgSend(MEMORY[0x277CBEAA8], "dateWithTimeIntervalSinceNow:", 0.05)}];
    if (v11[3])
    {
      break;
    }

    v6 = CFAbsoluteTimeGetCurrent();
  }

  while (a2 < 0.0 || v6 - Current <= a2);
  [v4 invalidate];

  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

@end