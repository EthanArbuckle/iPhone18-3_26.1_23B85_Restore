@interface NSObject(OFNSObjectExtensions)
- (uint64_t)performBlock:()OFNSObjectExtensions withAnimationDuration:;
- (uint64_t)performBlockWithoutAnimations:()OFNSObjectExtensions;
- (void)performBlock:()OFNSObjectExtensions usingQueue:;
- (void)performBlockAndWait:()OFNSObjectExtensions usingQueue:;
- (void)performBlockAndWaitOnMainThread:()OFNSObjectExtensions;
- (void)performBlockAndWakeUpMainThread:()OFNSObjectExtensions;
@end

@implementation NSObject(OFNSObjectExtensions)

- (void)performBlockAndWaitOnMainThread:()OFNSObjectExtensions
{
  if (pthread_main_np())
  {
    v4 = *(a3 + 16);

    v4(a3);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__NSObject_OFNSObjectExtensions__performBlockAndWaitOnMainThread___block_invoke;
    block[3] = &unk_279C89D60;
    block[4] = a3;
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }
}

- (void)performBlock:()OFNSObjectExtensions usingQueue:
{
  dispatch_retain(object);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__NSObject_OFNSObjectExtensions__performBlock_usingQueue___block_invoke;
  v6[3] = &unk_279C89D88;
  v6[4] = object;
  v6[5] = a3;
  dispatch_async(object, v6);
}

- (void)performBlockAndWait:()OFNSObjectExtensions usingQueue:
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__NSObject_OFNSObjectExtensions__performBlockAndWait_usingQueue___block_invoke;
  block[3] = &unk_279C89D60;
  block[4] = a3;
  dispatch_sync(queue, block);
}

- (void)performBlockAndWakeUpMainThread:()OFNSObjectExtensions
{
  Main = CFRunLoopGetMain();
  v5 = CFRunLoopCopyAllModes(Main);
  v6 = CFRunLoopGetMain();
  CFRunLoopPerformBlock(v6, v5, a3);
  v7 = CFRunLoopGetMain();
  CFRunLoopWakeUp(v7);

  CFRelease(v5);
}

- (uint64_t)performBlockWithoutAnimations:()OFNSObjectExtensions
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__NSObject_OFNSObjectExtensions__performBlockWithoutAnimations___block_invoke;
  v4[3] = &unk_279C89D60;
  v4[4] = a3;
  return [MEMORY[0x277D75D18] performWithoutAnimation:v4];
}

- (uint64_t)performBlock:()OFNSObjectExtensions withAnimationDuration:
{
  [MEMORY[0x277D75D18] beginAnimations:0 context:0];
  [MEMORY[0x277D75D18] setAnimationDuration:a1];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setAnimationDuration:a1];
  (*(a4 + 16))(a4);
  [MEMORY[0x277CD9FF0] commit];
  v6 = MEMORY[0x277D75D18];

  return [v6 commitAnimations];
}

@end