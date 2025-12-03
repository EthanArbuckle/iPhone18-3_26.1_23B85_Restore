@interface _UIScrollViewSimulatedGesture
- (BOOL)updateSimulation;
- (_UIScrollViewSimulatedGesture)initWithDuration:(double)duration begin:(id)begin update:(id)update end:(id)end;
@end

@implementation _UIScrollViewSimulatedGesture

- (_UIScrollViewSimulatedGesture)initWithDuration:(double)duration begin:(id)begin update:(id)update end:(id)end
{
  beginCopy = begin;
  updateCopy = update;
  endCopy = end;
  v22.receiver = self;
  v22.super_class = _UIScrollViewSimulatedGesture;
  v13 = [(_UIScrollViewSimulatedGesture *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_simulationDuration = duration;
    v15 = _Block_copy(beginCopy);
    beginBlock = v14->_beginBlock;
    v14->_beginBlock = v15;

    v17 = _Block_copy(updateCopy);
    updateBlock = v14->_updateBlock;
    v14->_updateBlock = v17;

    v19 = _Block_copy(endCopy);
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