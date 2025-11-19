@interface VGFrameSelectorResult
- (FrameRejectionState)rejectionState;
- (VGFrameSelectorResult)init;
- (id).cxx_construct;
- (void)addDebugDataForKey:(id)a3 debugData:(id)a4;
- (void)setRejectionState:(FrameRejectionState *)a3;
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

- (void)addDebugDataForKey:(id)a3 debugData:(id)a4
{
  v10 = a3;
  v6 = a4;
  debugDataInternal = self->_debugDataInternal;
  if (!debugDataInternal)
  {
    v8 = objc_opt_new();
    v9 = self->_debugDataInternal;
    self->_debugDataInternal = v8;

    debugDataInternal = self->_debugDataInternal;
  }

  [(NSMutableDictionary *)debugDataInternal setObject:v6 forKeyedSubscript:v10];
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

- (void)setRejectionState:(FrameRejectionState *)a3
{
  self->_rejectionState.reason = a3->reason;
  objc_storeStrong(&self->_rejectionState.description, a3->description);
  *&self->_rejectionState.outOfFovOffset = *&a3->outOfFovOffset;
  objc_storeStrong(&self->_rejectionState.debugDictionary, a3->debugDictionary);

  description = a3->description;
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