@interface _PUIPosterEnqueuedSnapshot
- (_PUIPosterEnqueuedSnapshot)initWithRequest:(id)request destinationProvider:(id)provider completion:(id)completion;
- (void)applyToSceneSettings:(id)settings;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _PUIPosterEnqueuedSnapshot

- (_PUIPosterEnqueuedSnapshot)initWithRequest:(id)request destinationProvider:(id)provider completion:(id)completion
{
  requestCopy = request;
  providerCopy = provider;
  completionCopy = completion;
  v40.receiver = self;
  v40.super_class = _PUIPosterEnqueuedSnapshot;
  v12 = [(_PUIPosterEnqueuedSnapshot *)&v40 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, request);
    objc_storeStrong(&v13->_destinationProvider, provider);
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(requestCopy, "priority")}];
    priority = v13->_priority;
    v13->_priority = v14;

    v13->_retryCount = [requestCopy retryCount];
    date = [requestCopy date];
    date = v13->_date;
    v13->_date = date;

    path = [requestCopy path];
    path = v13->_path;
    v13->_path = path;

    path2 = [requestCopy path];
    v21 = [path2 extendContentsReadAccessToAuditToken:0 error:0];
    extendedPath = v13->_extendedPath;
    v13->_extendedPath = v21;

    path3 = [requestCopy path];
    v24 = [path3 extendValidityForReason:@"SNAPSHOTTIN!!!!"];
    pathValidityToken = v13->_pathValidityToken;
    v13->_pathValidityToken = v24;

    v26 = [completionCopy copy];
    completion = v13->_completion;
    v13->_completion = v26;

    v38 = MEMORY[0x1E696AEC0];
    uniqueIdentifier = [requestCopy uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    v29 = [uUIDString substringToIndex:8];
    serverIdentity = [(PFPosterPath *)v13->_path serverIdentity];
    posterUUID = [serverIdentity posterUUID];
    uUIDString2 = [posterUUID UUIDString];
    [uUIDString2 substringToIndex:8];
    v34 = v33 = completionCopy;
    v35 = [v38 stringWithFormat:@"%@:%@", v29, v34];
    logIdentifier = v13->_logIdentifier;
    v13->_logIdentifier = v35;

    completionCopy = v33;
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

- (void)applyToSceneSettings:(id)settings
{
  if (self->_request)
  {
    settingsCopy = settings;
    [settingsCopy pui_setSnapshot:1];
    [settingsCopy pui_setPosterContents:self->_extendedPath];
    sceneSettingsApplicator = [(PUIPosterSnapshotRequest *)self->_request sceneSettingsApplicator];
    sceneSettingsApplicator[2](sceneSettingsApplicator, settingsCopy);
  }
}

@end