@interface PAEFracturedFilter
- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5;
- (BOOL)getOutputWidth:(unint64_t *)a3 height:(unint64_t *)a4 withInput:(id *)a5 withInfo:(id *)a6;
- (PAEFracturedFilter)initWithAPIManager:(id)a3;
- (id).cxx_construct;
- (void)dealloc;
- (void)onVTBUserInteractionEventNotification:(id)a3;
@end

@implementation PAEFracturedFilter

- (PAEFracturedFilter)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEFracturedFilter;
  if ([(PAESharedDefaultBase *)&v4 initWithAPIManager:a3])
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

- (void)onVTBUserInteractionEventNotification:(id)a3
{
  v4 = [a3 userInfo];
  [objc_msgSend(v4 objectForKeyedSubscript:{@"X", "doubleValue"}];
  v6 = v5;
  [objc_msgSend(v4 objectForKeyedSubscript:{@"Y", "doubleValue"}];
  v8 = v7;
  [objc_msgSend(v4 objectForKeyedSubscript:{@"VelocityX", "doubleValue"}];
  v10 = v9;
  [objc_msgSend(v4 objectForKeyedSubscript:{@"VelocityY", "doubleValue"}];
  v12 = v11;
  [objc_msgSend(v4 objectForKeyedSubscript:{@"Scale", "doubleValue"}];
  [objc_msgSend(v4 objectForKeyedSubscript:{@"ScaleVelocity", "doubleValue"}];
  [objc_msgSend(v4 objectForKeyedSubscript:{@"Rotation", "doubleValue"}];
  [objc_msgSend(v4 objectForKeyedSubscript:{@"RotationVelocity", "doubleValue"}];
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

- (BOOL)canThrowRenderOutput:(id)a3 withInput:(id)a4 withInfo:(id *)a5
{
  LODWORD(v5) = FracturedUtils::_lastTouchX;
  LODWORD(v6) = FracturedUtils::_lastTouchY;
  if (*&FracturedUtils::_lastTouchX == -1.0 || *&FracturedUtils::_lastTouchY == -1.0)
  {
    if (a4)
    {
      [a4 heliumRef];
    }

    else
    {
      v17 = 0;
    }

    [a3 setHeliumRef:&v17];
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
    FracturedUtils::renderOutput(self, self->super.super._apiManager, ReadyEffect, fxParams, a3, a4, 0, &a5->var0.var0, 0.0, 0);
  }

  return 1;
}

- (BOOL)getOutputWidth:(unint64_t *)a3 height:(unint64_t *)a4 withInput:(id *)a5 withInfo:(id *)a6
{
  v10 = [(PROAPIAccessing *)self->super.super._apiManager apiForProtocol:&unk_28735B780];
  if (a3)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11 || a4 == 0;
  v13 = !v12;
  if (!v12)
  {
    v16 = 0.0;
    [v10 getFloatValue:&v16 fromParm:19 atFxTime:a6->var0.var1];
    v14 = v16;
    *a3 = (v16 * a5->var0);
    *a4 = (v14 * a5->var1);
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