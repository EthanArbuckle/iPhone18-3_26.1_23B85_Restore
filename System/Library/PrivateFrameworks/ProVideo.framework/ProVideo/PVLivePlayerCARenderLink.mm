@interface PVLivePlayerCARenderLink
- (PVLivePlayerCARenderLink)initWithCADisplayLinkFPS:(int64_t)s;
- (int64_t)prefferedCADisplayFPS;
- (void)displayLinkFired:(id)fired;
- (void)rebuild;
- (void)setPrefferedCADisplayFPS:(int64_t)s;
- (void)teardown;
@end

@implementation PVLivePlayerCARenderLink

- (PVLivePlayerCARenderLink)initWithCADisplayLinkFPS:(int64_t)s
{
  v5.receiver = self;
  v5.super_class = PVLivePlayerCARenderLink;
  result = [(PVLivePlayerRenderLink *)&v5 init];
  if (result)
  {
    result->_prefferedCADisplayFPS = s;
  }

  return result;
}

- (void)setPrefferedCADisplayFPS:(int64_t)s
{
  lock = self->super._lock;
  LOBYTE(v6) = 0;
  HGSynchronizable::Lock(lock);
  self->_prefferedCADisplayFPS = s;
  v7 = CAFrameRateRangeMake(s, s, s);
  [(CADisplayLink *)self->_displayLink setPreferredFrameRateRange:*&v7.minimum, *&v7.maximum, *&v7.preferred, lock, v6];
  HGSynchronizable::Unlock(lock);
}

- (int64_t)prefferedCADisplayFPS
{
  lock = self->super._lock;
  HGSynchronizable::Lock(lock);
  prefferedCADisplayFPS = self->_prefferedCADisplayFPS;
  HGSynchronizable::Unlock(lock);
  return prefferedCADisplayFPS;
}

- (void)teardown
{
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;
}

- (void)rebuild
{
  if (!self->_displayLink)
  {
    v3 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel_displayLinkFired_];
    displayLink = self->_displayLink;
    self->_displayLink = v3;

    v5 = self->_displayLink;
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [(CADisplayLink *)v5 addToRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE738]];

    v9 = CAFrameRateRangeMake(self->_prefferedCADisplayFPS, self->_prefferedCADisplayFPS, self->_prefferedCADisplayFPS);
    v7 = self->_displayLink;

    [(CADisplayLink *)v7 setPreferredFrameRateRange:*&v9.minimum, *&v9.maximum, *&v9.preferred];
  }
}

- (void)displayLinkFired:(id)fired
{
  memset(&v6, 0, sizeof(v6));
  [(CADisplayLink *)self->_displayLink timestamp];
  CMTimeMakeWithSeconds(&v6, v4, [(PVLivePlayerCARenderLink *)self prefferedCADisplayFPS]);
  v5 = v6;
  [(PVLivePlayerRenderLink *)self signalPlayer:&v5];
}

@end