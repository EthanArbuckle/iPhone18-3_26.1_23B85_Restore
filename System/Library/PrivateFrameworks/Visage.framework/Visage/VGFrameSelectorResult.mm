@interface VGFrameSelectorResult
- (FrameRejectionState)rejectionState;
- (VGFrameSelectorResult)init;
- (id).cxx_construct;
- (void)addDebugDataForKey:(id)key debugData:(id)data;
- (void)setRejectionState:(FrameRejectionState *)state;
@end

@implementation VGFrameSelectorResult

- (VGFrameSelectorResult)init
{
  v6.receiver = self;
  v6.super_class = VGFrameSelectorResult;
  v2 = [(VGFrameSelectorResult *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_poseIndex = -1;
    v4 = v2;
  }

  return v3;
}

- (void)addDebugDataForKey:(id)key debugData:(id)data
{
  keyCopy = key;
  dataCopy = data;
  debugDataInternal = self->_debugDataInternal;
  if (!debugDataInternal)
  {
    v8 = objc_opt_new();
    v9 = self->_debugDataInternal;
    self->_debugDataInternal = v8;

    debugDataInternal = self->_debugDataInternal;
  }

  [(NSMutableDictionary *)debugDataInternal setObject:dataCopy forKeyedSubscript:keyCopy];
}

- (FrameRejectionState)rejectionState
{
  retstr->reason = self->_rejectionState.reason;
  v5 = self->_rejectionState.description;
  v6 = *&self->_rejectionState.outOfFovOffset;
  debugDictionary = self->_rejectionState.debugDictionary;
  retstr->description = v5;
  *&retstr->outOfFovOffset = v6;
  result = debugDictionary;
  retstr->debugDictionary = result;
  return result;
}

- (void)setRejectionState:(FrameRejectionState *)state
{
  self->_rejectionState.reason = state->reason;
  objc_storeStrong(&self->_rejectionState.description, state->description);
  *&self->_rejectionState.outOfFovOffset = *&state->outOfFovOffset;
  objc_storeStrong(&self->_rejectionState.debugDictionary, state->debugDictionary);

  description = state->description;
}

- (id).cxx_construct
{
  *(self + 14) = 0;
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 8) = 0;
  return self;
}

@end