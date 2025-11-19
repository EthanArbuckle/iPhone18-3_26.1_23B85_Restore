@interface CAContentStreamFrame
@end

@implementation CAContentStreamFrame

uint64_t __72__CAContentStreamFrame_CAContentStreamFrameRevLockAdditions__updateTime__block_invoke()
{
  result = NSSelectorFromString(&cfstr_Updatebegintim.isa);
  if (![CAContentStreamFrame(CAContentStreamFrameRevLockAdditions) updateTime]::updateBeginTimeSel)
  {
    v1 = result;
    result = objc_opt_respondsToSelector();
    if (result)
    {
      [CAContentStreamFrame(CAContentStreamFrameRevLockAdditions) updateTime]::updateBeginTimeSel = v1;
    }
  }

  return result;
}

@end