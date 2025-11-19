@interface _SBCameraOverlayRequest
- (BOOL)isEqual:(id)a3;
- (_SBCameraOverlayRequest)initWithObservation:(id)a3;
- (unint64_t)hash;
@end

@implementation _SBCameraOverlayRequest

- (_SBCameraOverlayRequest)initWithObservation:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _SBCameraOverlayRequest;
  v5 = [(_SBCameraOverlayRequest *)&v11 init];
  if (v5)
  {
    v6 = [v4 cameraBehaviorScene];
    sceneRequestingOverlay = v5->_sceneRequestingOverlay;
    v5->_sceneRequestingOverlay = v6;

    v8 = [v4 auditTokenForRequestingProcessOfCameraBehaviorScene];
    auditTokenOfProcessRequestingOverlay = v5->_auditTokenOfProcessRequestingOverlay;
    v5->_auditTokenOfProcessRequestingOverlay = v8;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  sceneRequestingOverlay = self->_sceneRequestingOverlay;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __35___SBCameraOverlayRequest_isEqual___block_invoke;
  v19[3] = &unk_2783ACDB8;
  v7 = v4;
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
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendObject:self->_sceneRequestingOverlay];
  v5 = [v4 appendObject:self->_auditTokenOfProcessRequestingOverlay];
  v6 = [v5 hash];

  return v6;
}

@end