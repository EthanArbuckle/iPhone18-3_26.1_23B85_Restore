@interface CAContentStreamFrame(CAContentStreamFrameRevLockAdditions)
- (id)updateTime;
@end

@implementation CAContentStreamFrame(CAContentStreamFrameRevLockAdditions)

- (id)updateTime
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__CAContentStreamFrame_CAContentStreamFrameRevLockAdditions__updateTime__block_invoke;
  block[3] = &unk_279D42530;
  block[4] = self;
  if ([CAContentStreamFrame(CAContentStreamFrameRevLockAdditions) updateTime]::once != -1)
  {
    dispatch_once(&[CAContentStreamFrame(CAContentStreamFrameRevLockAdditions) updateTime]::once, block);
  }

  if ([CAContentStreamFrame(CAContentStreamFrameRevLockAdditions) updateTime]::updateBeginTimeSel)
  {
    return [self -[CAContentStreamFrame(CAContentStreamFrameRevLockAdditions) updateTime]:? :?updateBeginTimeSel];
  }

  else
  {
    return [self displayTime];
  }
}

@end