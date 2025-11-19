@interface _UIScrollViewSimulatedGesture
- (BOOL)updateSimulation;
- (_UIScrollViewSimulatedGesture)initWithDuration:(double)a3 begin:(id)a4 update:(id)a5 end:(id)a6;
@end

@implementation _UIScrollViewSimulatedGesture

- (_UIScrollViewSimulatedGesture)initWithDuration:(double)a3 begin:(id)a4 update:(id)a5 end:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = _UIScrollViewSimulatedGesture;
  v13 = [(_UIScrollViewSimulatedGesture *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_simulationDuration = a3;
    v15 = _Block_copy(v10);
    beginBlock = v14->_beginBlock;
    v14->_beginBlock = v15;

    v17 = _Block_copy(v11);
    updateBlock = v14->_updateBlock;
    v14->_updateBlock = v17;

    v19 = _Block_copy(v12);
    endBlock = v14->_endBlock;
    v14->_endBlock = v19;
  }

  return v14;
}

- (BOOL)updateSimulation
{
  beginTime = self->_beginTime;
  v4 = CACurrentMediaTime();
  if (beginTime == 0.0)
  {
    v5 = 0;
    self->_beginTime = v4;
    v6 = 24;
  }

  else
  {
    simulationDuration = self->_simulationDuration;
    v8 = v4 - self->_beginTime;
    v5 = v8 >= simulationDuration;
    v6 = 32;
    if (v8 >= simulationDuration)
    {
      v6 = 40;
    }
  }

  (*(&self->super.isa + v6))[2]();
  return v5;
}

@end