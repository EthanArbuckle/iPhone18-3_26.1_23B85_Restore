@interface _SBCameraOverlayRequest
- (BOOL)isEqual:(id)equal;
- (_SBCameraOverlayRequest)initWithObservation:(id)observation;
- (unint64_t)hash;
@end

@implementation _SBCameraOverlayRequest

- (_SBCameraOverlayRequest)initWithObservation:(id)observation
{
  observationCopy = observation;
  v11.receiver = self;
  v11.super_class = _SBCameraOverlayRequest;
  v5 = [(_SBCameraOverlayRequest *)&v11 init];
  if (v5)
  {
    cameraBehaviorScene = [observationCopy cameraBehaviorScene];
    sceneRequestingOverlay = v5->_sceneRequestingOverlay;
    v5->_sceneRequestingOverlay = cameraBehaviorScene;

    auditTokenForRequestingProcessOfCameraBehaviorScene = [observationCopy auditTokenForRequestingProcessOfCameraBehaviorScene];
    auditTokenOfProcessRequestingOverlay = v5->_auditTokenOfProcessRequestingOverlay;
    v5->_auditTokenOfProcessRequestingOverlay = auditTokenForRequestingProcessOfCameraBehaviorScene;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  sceneRequestingOverlay = self->_sceneRequestingOverlay;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __35___SBCameraOverlayRequest_isEqual___block_invoke;
  v19[3] = &unk_2783ACDB8;
  v7 = equalCopy;
  v20 = v7;
  v8 = [v5 appendObject:sceneRequestingOverlay counterpart:v19];
  auditTokenOfProcessRequestingOverlay = self->_auditTokenOfProcessRequestingOverlay;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __35___SBCameraOverlayRequest_isEqual___block_invoke_2;
  v17 = &unk_2783ACDB8;
  v18 = v7;
  v10 = v7;
  v11 = [v8 appendObject:auditTokenOfProcessRequestingOverlay counterpart:&v14];
  v12 = [v11 isEqual];

  return v12;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_sceneRequestingOverlay];
  v5 = [v4 appendObject:self->_auditTokenOfProcessRequestingOverlay];
  v6 = [v5 hash];

  return v6;
}

@end