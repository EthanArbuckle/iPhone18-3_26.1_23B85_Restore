@interface TSDDisplayLink
- (void)dealloc;
- (void)p_handleDisplayLink:(id)a3;
- (void)start;
@end

@implementation TSDDisplayLink

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDDisplayLink;
  [(TSDDisplayLink *)&v3 dealloc];
}

- (void)start
{
  if (self->_displayLink)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDDisplayLink start]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDisplayLink.m"), 43, @"expected nil value for '%s'", "_displayLink"}];
  }

  v5 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel_p_handleDisplayLink_];
  self->_displayLink = v5;
  v6 = [MEMORY[0x277CBEB88] mainRunLoop];
  [(CADisplayLink *)v5 addToRunLoop:v6 forMode:*MEMORY[0x277CBE640]];
  v7 = CACurrentMediaTime();
  self->_startTime = v7;
  self->_lastTime = v7;
}

- (void)p_handleDisplayLink:(id)a3
{
  [a3 timestamp];
  v6 = v5;
  if ((*(self->_tickBlock + 2))(v5 - self->_startTime, v5 - self->_lastTime))
  {
    completionBlock = self->_completionBlock;
    if (completionBlock)
    {
      completionBlock[2]();
    }

    [a3 invalidate];
    self->_displayLink = 0;
  }

  self->_lastTime = v6;
}

@end