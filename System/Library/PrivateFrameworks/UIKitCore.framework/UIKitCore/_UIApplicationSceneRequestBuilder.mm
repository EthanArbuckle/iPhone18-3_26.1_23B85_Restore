@interface _UIApplicationSceneRequestBuilder
- (id)_optionsWithInitialClientSettings:(id)settings activationOptions:(id)options targetSession:(id)session configuration:(id)configuration optionsClass:(Class)class outError:(id *)error;
- (void)buildWorkspaceRequestOptionsForRequest:(id)request withContinuation:(id)continuation;
@end

@implementation _UIApplicationSceneRequestBuilder

- (void)buildWorkspaceRequestOptionsForRequest:(id)request withContinuation:(id)continuation
{
  requestCopy = request;
  continuationCopy = continuation;
  if (self)
  {
    v8 = requestCopy;
    _specification = [(_UIApplicationSceneRequestBuilder *)self _specification];
    v10 = [objc_msgSend(_specification "clientSettingsClass")];
    v11 = [v10 mutableCopy];

    [(_UIApplicationSceneRequestBuilder *)self _customizeInitialClientSettings:v11 usingRequest:v8];
    v12 = [v11 copy];
  }

  else
  {
    v12 = 0;
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  options = [requestCopy options];
  session = [requestCopy session];
  _configuration = [requestCopy _configuration];
  v28 = 0;
  v16 = [(_UIApplicationSceneRequestBuilder *)self _optionsWithInitialClientSettings:v12 activationOptions:options targetSession:session configuration:_configuration optionsClass:[(_UIApplicationSceneRequestBuilder *)self _requestOptionsClass] outError:&v28];
  v17 = v28;
  v34 = v16;

  if (v17)
  {
    continuationCopy[2](continuationCopy, 0, v17);
  }

  else
  {
    [(_UIApplicationSceneRequestBuilder *)self _customizeWorkspaceRequestOptions:v30[5] usingRequest:requestCopy];
    actions = [v30[5] actions];
    v19 = [actions mutableCopy];

    _definitionPayloadStorage = [requestCopy _definitionPayloadStorage];
    encodeAsBSActions = [_definitionPayloadStorage encodeAsBSActions];
    [v19 unionSet:encodeAsBSActions];

    userActivity = [requestCopy userActivity];

    if (userActivity)
    {
      userActivity2 = [requestCopy userActivity];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __93___UIApplicationSceneRequestBuilder_buildWorkspaceRequestOptionsForRequest_withContinuation___block_invoke;
      v24[3] = &unk_1E70F3028;
      v26 = continuationCopy;
      v25 = v19;
      v27 = &v29;
      [(UISActivityContinuationAction *)UIActivityContinuationAction buildWithUserActivity:userActivity2 completion:v24];
    }

    else
    {
      [v30[5] setActions:v19];
      continuationCopy[2](continuationCopy, v30[5], 0);
    }
  }

  _Block_object_dispose(&v29, 8);
}

- (id)_optionsWithInitialClientSettings:(id)settings activationOptions:(id)options targetSession:(id)session configuration:(id)configuration optionsClass:(Class)class outError:(id *)error
{
  optionsCopy = options;
  sessionCopy = session;
  configurationCopy = configuration;
  settingsCopy = settings;
  v18 = objc_alloc_init(class);
  [v18 setInitialClientSettings:settingsCopy];

  v19 = [MEMORY[0x1E695DFA8] set];
  if (sessionCopy)
  {
    persistentIdentifier = [sessionCopy persistentIdentifier];
    [v18 setIdentifier:persistentIdentifier];
  }

  if (configurationCopy)
  {
    v45 = 0;
    v21 = [[_UISceneConfigurationAction alloc] initWithSceneConfiguration:configurationCopy error:&v45];
    v22 = v45;
    v23 = v22;
    if (v22)
    {
      v24 = v22;
      *error = v23;
    }

    else
    {
      [v19 addObject:v21];
    }
  }

  if (optionsCopy)
  {
    requestingScene = [optionsCopy requestingScene];
    session = [requestingScene session];

    if (session)
    {
      persistentIdentifier2 = [session persistentIdentifier];
      [v18 setSourceIdentifier:persistentIdentifier2];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy = self;
      v28 = optionsCopy;
      _interactionIdentifier = [v28 _interactionIdentifier];
      [v18 setInteractionIdentifier:_interactionIdentifier];

      _quickLookSceneConfiguration = [v28 _quickLookSceneConfiguration];
      v31 = _quickLookSceneConfiguration;
      if (!sessionCopy && _quickLookSceneConfiguration)
      {
        [v18 setRequestQuickLookScene:1];
        v32 = [UIQuickLookSceneConfigurationAction actionWithSceneConfiguration:v31];
        [v19 addObject:v32];
      }

      errorCopy = error;
      v42 = v31;
      [v18 setPreserveLayout:{objc_msgSend(v28, "_effectivelyWantsPreservedLayout")}];
      [v18 setRequestFullscreen:{objc_msgSend(v28, "_effectivelyWantsFullscreen")}];
      [v18 setRequestCenterSlot:{objc_msgSend(v28, "_effectivelyWantsProminence")}];
      [v18 setRequestBackground:{objc_msgSend(v28, "_effectivelyWantsBackground")}];
      placement = [v28 placement];
      if (placement || (([v18 preserveLayout] & 1) != 0 || (objc_msgSend(v18, "requestFullscreen") & 1) != 0 || (objc_msgSend(v18, "requestCenterSlot") & 1) != 0 || objc_msgSend(v18, "requestBackground")) && (_UIWindowScenePlacementForLegacyFlags(objc_msgSend(v18, "requestFullscreen"), objc_msgSend(v18, "requestCenterSlot"), objc_msgSend(v18, "preserveLayout"), objc_msgSend(v18, "requestBackground")), (placement = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v34 = placement;
        v44 = 0;
        v35 = [placement _createConfigurationWithError:&v44];
        v36 = v44;
        [v18 setScenePlacementConfiguration:v35];

        if (v36)
        {
          v37 = v36;
          *errorCopy = v36;
        }
      }

      self = selfCopy;
    }

    else
    {
      [v18 setRequestFullscreen:{objc_msgSend(optionsCopy, "_requestFullscreen")}];
      [v18 setPreserveLayout:{objc_msgSend(optionsCopy, "preserveLayout")}];
    }
  }

  _specification = [(_UIApplicationSceneRequestBuilder *)self _specification];
  [v18 setSpecification:_specification];

  v39 = [v19 copy];
  [v18 setActions:v39];

  return v18;
}

@end