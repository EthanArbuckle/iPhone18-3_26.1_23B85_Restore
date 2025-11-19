@interface TSDFPSCACounter
- (void)p_updateFrameCount;
- (void)reset;
@end

@implementation TSDFPSCACounter

- (void)reset
{
  [(TSDFPSCACounter *)self stopLoggingFPS];
  self->mCAFrameCount = 0;
  v3.receiver = self;
  v3.super_class = TSDFPSCACounter;
  [(TSDFPSCounter *)&v3 reset];
}

- (void)p_updateFrameCount
{
  if (p_updateFrameCount_onceToken != -1)
  {
    [TSDFPSCACounter p_updateFrameCount];
  }

  if (self->mCAFrameCount)
  {
    [(TSDFPSCounter *)self addFrame];
  }

  self->mCAFrameCount = 0;
}

uint64_t __37__TSDFPSCACounter_p_updateFrameCount__block_invoke()
{
  v0 = [MEMORY[0x277D6C290] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFPSCACounter p_updateFrameCount]_block_invoke"];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFPSCounter.m"];

  return [v0 handleFailureInFunction:v1 file:v2 lineNumber:310 description:{@"To log CA framerates, you need to set CARENDERSERVERGETFRAMECOUNTER_SPI_ALLOWED to 1! (This message will only be shown once.)"}];
}

@end