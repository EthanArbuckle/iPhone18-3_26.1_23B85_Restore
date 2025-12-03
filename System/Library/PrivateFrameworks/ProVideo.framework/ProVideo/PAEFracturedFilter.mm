@interface PAEFracturedFilter
- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info;
- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info;
- (PAEFracturedFilter)initWithAPIManager:(id)manager;
- (id).cxx_construct;
- (void)dealloc;
- (void)onVTBUserInteractionEventNotification:(id)notification;
@end

@implementation PAEFracturedFilter

- (PAEFracturedFilter)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEFracturedFilter;
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

  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  v6.receiver = self;
  v6.super_class = PAEFracturedFilter;
  [(PAESharedDefaultBase *)&v6 dealloc];
}

- (void)onVTBUserInteractionEventNotification:(id)notification
{
  userInfo = [notification userInfo];
  [objc_msgSend(userInfo objectForKeyedSubscript:{@"X", "doubleValue"}];
  v6 = v5;
  [objc_msgSend(userInfo objectForKeyedSubscript:{@"Y", "doubleValue"}];
  v8 = v7;
  [objc_msgSend(userInfo objectForKeyedSubscript:{@"VelocityX", "doubleValue"}];
  v10 = v9;
  [objc_msgSend(userInfo objectForKeyedSubscript:{@"VelocityY", "doubleValue"}];
  v12 = v11;
  [objc_msgSend(userInfo objectForKeyedSubscript:{@"Scale", "doubleValue"}];
  [objc_msgSend(userInfo objectForKeyedSubscript:{@"ScaleVelocity", "doubleValue"}];
  [objc_msgSend(userInfo objectForKeyedSubscript:{@"Rotation", "doubleValue"}];
  [objc_msgSend(userInfo objectForKeyedSubscript:{@"RotationVelocity", "doubleValue"}];
  *&v13 = v6;
  FracturedUtils::_lastTouchX = v13;
  *&v14 = v8;
  FracturedUtils::_lastTouchY = v14;
  *&v15 = v10;
  FracturedUtils::_lastVelocityTouchX = v15;
  *&v16 = v12;
  FracturedUtils::_lastVelocityTouchY = v16;
  FracturedUtils::_frameTimeOffset = FracturedUtils::_lastFrameTime;
  [(NSLock *)self->_fxPoolLock lock];
  self->_fxPool.__end_ = self->_fxPool.__begin_;
  fxPoolLock = self->_fxPoolLock;

  [(NSLock *)fxPoolLock unlock];
}

- (BOOL)canThrowRenderOutput:(id)output withInput:(id)input withInfo:(id *)info
{
  LODWORD(v5) = FracturedUtils::_lastTouchX;
  LODWORD(v6) = FracturedUtils::_lastTouchY;
  if (*&FracturedUtils::_lastTouchX == -1.0 || *&FracturedUtils::_lastTouchY == -1.0)
  {
    if (input)
    {
      [input heliumRef];
    }

    else
    {
      v17 = 0;
    }

    [output setHeliumRef:&v17];
    if (v17)
    {
      (*(*v17 + 24))(v17);
    }
  }

  else
  {
    ReadyEffect = FracturedUtils::getReadyEffect(&self->_fxPool.__begin_, self->_fxPoolLock);
    v13 = *&FracturedUtils::_lastTouchY;
    fxParams = self->_fxParams;
    fxParams->var26[0] = -(*&FracturedUtils::_lastTouchX + -0.5);
    fxParams->var26[1] = v13 + -0.5;
    v15 = FracturedUtils::_lastVelocityTouchY;
    LODWORD(fxParams->var27[0]) = FracturedUtils::_lastVelocityTouchX;
    LODWORD(fxParams->var27[1]) = v15;
    FracturedUtils::renderOutput(self, self->super.super._apiManager, ReadyEffect, fxParams, output, input, 0, &info->var0.var0, 0.0, 0);
  }

  return 1;
}

- (BOOL)getOutputWidth:(unint64_t *)width height:(unint64_t *)height withInput:(id *)input withInfo:(id *)info
{
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B780];
  if (width)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11 || height == 0;
  v13 = !v12;
  if (!v12)
  {
    v16 = 0.0;
    [v10 getFloatValue:&v16 fromParm:19 atFxTime:info->var0.var1];
    v14 = v16;
    *width = (v16 * input->var0);
    *height = (v14 * input->var1);
  }

  return v13;
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 4) = 0;
  return self;
}

@end