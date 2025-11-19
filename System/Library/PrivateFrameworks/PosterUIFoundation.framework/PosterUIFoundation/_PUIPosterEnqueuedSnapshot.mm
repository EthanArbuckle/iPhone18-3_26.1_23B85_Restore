@interface _PUIPosterEnqueuedSnapshot
- (_PUIPosterEnqueuedSnapshot)initWithRequest:(id)a3 destinationProvider:(id)a4 completion:(id)a5;
- (void)applyToSceneSettings:(id)a3;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _PUIPosterEnqueuedSnapshot

- (_PUIPosterEnqueuedSnapshot)initWithRequest:(id)a3 destinationProvider:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v40.receiver = self;
  v40.super_class = _PUIPosterEnqueuedSnapshot;
  v12 = [(_PUIPosterEnqueuedSnapshot *)&v40 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, a3);
    objc_storeStrong(&v13->_destinationProvider, a4);
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "priority")}];
    priority = v13->_priority;
    v13->_priority = v14;

    v13->_retryCount = [v9 retryCount];
    v16 = [v9 date];
    date = v13->_date;
    v13->_date = v16;

    v18 = [v9 path];
    path = v13->_path;
    v13->_path = v18;

    v20 = [v9 path];
    v21 = [v20 extendContentsReadAccessToAuditToken:0 error:0];
    extendedPath = v13->_extendedPath;
    v13->_extendedPath = v21;

    v23 = [v9 path];
    v24 = [v23 extendValidityForReason:@"SNAPSHOTTIN!!!!"];
    pathValidityToken = v13->_pathValidityToken;
    v13->_pathValidityToken = v24;

    v26 = [v11 copy];
    completion = v13->_completion;
    v13->_completion = v26;

    v38 = MEMORY[0x1E696AEC0];
    v39 = [v9 uniqueIdentifier];
    v28 = [v39 UUIDString];
    v29 = [v28 substringToIndex:8];
    v30 = [(PFPosterPath *)v13->_path serverIdentity];
    v31 = [v30 posterUUID];
    v32 = [v31 UUIDString];
    [v32 substringToIndex:8];
    v34 = v33 = v11;
    v35 = [v38 stringWithFormat:@"%@:%@", v29, v34];
    logIdentifier = v13->_logIdentifier;
    v13->_logIdentifier = v35;

    v11 = v33;
  }

  return v13;
}

- (void)dealloc
{
  [(_PUIPosterEnqueuedSnapshot *)self invalidate];
  v3.receiver = self;
  v3.super_class = _PUIPosterEnqueuedSnapshot;
  [(_PUIPosterEnqueuedSnapshot *)&v3 dealloc];
}

- (void)invalidate
{
  request = self->_request;
  self->_request = 0;

  completion = self->_completion;
  self->_completion = 0;

  path = self->_path;
  self->_path = 0;

  extendedPath = self->_extendedPath;
  self->_extendedPath = 0;

  [(BSInvalidatable *)self->_pathValidityToken invalidate];
  v7 = self->_path;
  self->_path = 0;

  date = self->_date;
  self->_date = 0;

  destinationProvider = self->_destinationProvider;
  self->_destinationProvider = 0;
}

- (void)applyToSceneSettings:(id)a3
{
  if (self->_request)
  {
    v4 = a3;
    [v4 pui_setSnapshot:1];
    [v4 pui_setPosterContents:self->_extendedPath];
    v5 = [(PUIPosterSnapshotRequest *)self->_request sceneSettingsApplicator];
    v5[2](v5, v4);
  }
}

@end