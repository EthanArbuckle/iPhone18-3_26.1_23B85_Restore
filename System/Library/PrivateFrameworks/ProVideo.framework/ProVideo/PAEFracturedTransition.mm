@interface PAEFracturedTransition
- (BOOL)canThrowRenderOutput:(id)output withInputA:(id)a withInputB:(id)b withTimeFraction:(float)fraction withInfo:(id *)info;
- (BOOL)frameSetup:(id *)setup inputInfoA:(id *)a inputInfoB:(id *)b timeFraction:(float)fraction hardware:(BOOL *)hardware software:(BOOL *)software;
- (PAEFracturedTransition)initWithAPIManager:(id)manager;
- (id).cxx_construct;
- (void)dealloc;
@end

@implementation PAEFracturedTransition

- (PAEFracturedTransition)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEFracturedTransition;
  if ([(PAESharedDefaultBase *)&v4 initWithAPIManager:manager])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  fxParams = self->_fxParams;
  if (fxParams)
  {
    MEMORY[0x2666E9F00](fxParams, 0x1000C4085B916AELL);
  }

  begin = self->_fxPool.__begin_;
  end = self->_fxPool.__end_;
  if (begin != end)
  {
    do
    {
      if (*begin)
      {
        FracturedUtils::FracturedFXPoolItem::~FracturedFXPoolItem(*begin);
        MEMORY[0x2666E9F00]();
        end = self->_fxPool.__end_;
      }

      ++begin;
    }

    while (begin != end);
    begin = self->_fxPool.__begin_;
  }

  self->_fxPool.__end_ = begin;

  v6.receiver = self;
  v6.super_class = PAEFracturedTransition;
  [(PAESharedDefaultBase *)&v6 dealloc];
}

- (BOOL)frameSetup:(id *)setup inputInfoA:(id *)a inputInfoB:(id *)b timeFraction:(float)fraction hardware:(BOOL *)hardware software:(BOOL *)software
{
  *hardware = 1;
  *software = 0;
  return 1;
}

- (BOOL)canThrowRenderOutput:(id)output withInputA:(id)a withInputB:(id)b withTimeFraction:(float)fraction withInfo:(id *)info
{
  ReadyEffect = FracturedUtils::getReadyEffect(&self->_fxPool.__begin_, self->_fxPoolLock);
  FracturedUtils::renderOutput(self, self->super.super._apiManager, ReadyEffect, self->_fxParams, output, a, b, &info->var0.var0, fraction, 1);
  return 1;
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 5) = 0;
  return self;
}

@end