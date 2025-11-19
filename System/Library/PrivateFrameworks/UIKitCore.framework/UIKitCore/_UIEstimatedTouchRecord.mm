@interface _UIEstimatedTouchRecord
- (BOOL)hasRemainingUpdates;
- (_UIEstimatedTouchRecord)initWithLiveTouch:(id)a3 freezeTouch:(id)a4 contextID:(id)a5;
- (void)_dispatchWithCurrentUpdates;
- (void)addTouchable:(id)a3;
- (void)dispatchUpdateWithPressure:(double)a3 stillEstimated:(BOOL)a4;
- (void)dispatchUpdateWithRollAngle:(double)a3 stillEstimated:(BOOL)a4;
@end

@implementation _UIEstimatedTouchRecord

- (_UIEstimatedTouchRecord)initWithLiveTouch:(id)a3 freezeTouch:(id)a4 contextID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _UIEstimatedTouchRecord;
  v12 = [(_UIEstimatedTouchRecord *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_liveTouch, a3);
    objc_storeStrong(&v13->_frozenTouch, a4);
    objc_storeStrong(&v13->_contextID, a5);
    *&v13->_stateFlags = *&v13->_stateFlags & 0xFE | [v10 estimatedPropertiesExpectingUpdates] & 1;
    *&v13->_stateFlags = ([v10 estimatedPropertiesExpectingUpdates] >> 1) & 8 | *&v13->_stateFlags & 0xF7;
  }

  return v13;
}

- (void)addTouchable:(id)a3
{
  v4 = a3;
  touchables = self->_touchables;
  v8 = v4;
  if (!touchables)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_touchables;
    self->_touchables = v6;

    v4 = v8;
    touchables = self->_touchables;
  }

  [(NSMutableArray *)touchables addObject:v4];
}

- (BOOL)hasRemainingUpdates
{
  stateFlags = self->_stateFlags;
  v3 = stateFlags & 3;
  v4 = (stateFlags & 8) != 0 && (stateFlags & 0x10) == 0;
  return v3 == 1 || v4;
}

- (void)_dispatchWithCurrentUpdates
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(UITouch *)self->_liveTouch _clone];
  [(UITouch *)self->_frozenTouch _clonePropertiesToTouch:self->_liveTouch];
  stateFlags = self->_stateFlags;
  liveTouch = self->_liveTouch;
  if ((stateFlags & 2) != 0)
  {
    if (liveTouch)
    {
      updatedPressure = self->_updatedPressure;
      maxObservedPressure = liveTouch->_maxObservedPressure;
      if (maxObservedPressure < updatedPressure)
      {
        maxObservedPressure = self->_updatedPressure;
      }

      liveTouch->_previousPressure = liveTouch->_pressure;
      liveTouch->_pressure = updatedPressure;
      liveTouch->_maxObservedPressure = maxObservedPressure;
      v8 = self->_liveTouch;
      if (v8 && (v8->_hasForceUpdate = 1, (v9 = self->_liveTouch) != 0))
      {
        v9->_needsForceUpdate = ((*&self->_stateFlags >> 2) & 1) == 0;
        liveTouch = self->_liveTouch;
      }

      else
      {
        liveTouch = 0;
      }
    }

    stateFlags = self->_stateFlags;
  }

  if ((stateFlags & 0x10) != 0)
  {
    [(UITouch *)liveTouch _setRollAngle:self->_updatedRollAngle resetPrevious:?];
    v10 = self->_liveTouch;
    if (v10 && (v10->_hasRollUpdate = 1, (v11 = self->_liveTouch) != 0))
    {
      v11->_needsRollUpdate = ((*&self->_stateFlags >> 5) & 1) == 0;
      liveTouch = self->_liveTouch;
    }

    else
    {
      liveTouch = 0;
    }
  }

  v12 = [MEMORY[0x1E695DFD8] setWithObject:liveTouch];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = self->_touchables;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v18 + 1) + 8 * i) touchesEstimatedPropertiesUpdated:{v12, v18}];
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v15);
  }

  [v3 _clonePropertiesToTouch:self->_liveTouch];
}

- (void)dispatchUpdateWithPressure:(double)a3 stillEstimated:(BOOL)a4
{
  stateFlags = self->_stateFlags;
  self->_updatedPressure = a3;
  v6 = stateFlags & 0xF9;
  if (a4)
  {
    v7 = 6;
  }

  else
  {
    v7 = 2;
  }

  *&self->_stateFlags = v7 | v6;
  if (![(_UIEstimatedTouchRecord *)self hasRemainingUpdates])
  {

    [(_UIEstimatedTouchRecord *)self _dispatchWithCurrentUpdates];
  }
}

- (void)dispatchUpdateWithRollAngle:(double)a3 stillEstimated:(BOOL)a4
{
  stateFlags = self->_stateFlags;
  self->_updatedRollAngle = a3;
  v6 = stateFlags & 0xCF;
  if (a4)
  {
    v7 = 48;
  }

  else
  {
    v7 = 16;
  }

  *&self->_stateFlags = v7 | v6;
  if (![(_UIEstimatedTouchRecord *)self hasRemainingUpdates])
  {

    [(_UIEstimatedTouchRecord *)self _dispatchWithCurrentUpdates];
  }
}

@end