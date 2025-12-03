@interface SVXPlaybackRequestInfo
- (double)duration;
@end

@implementation SVXPlaybackRequestInfo

- (double)duration
{
  if (!self->_didStart)
  {
    return 0.0;
  }

  if (self->_didFinish)
  {
    finish = self->_finish;
  }

  else
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    [processInfo systemUptime];
    finish = v6;
  }

  return vabdd_f64(finish, self->_start);
}

@end