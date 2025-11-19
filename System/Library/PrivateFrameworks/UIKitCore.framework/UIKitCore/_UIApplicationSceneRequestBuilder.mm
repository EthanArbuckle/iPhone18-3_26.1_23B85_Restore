@interface _UIApplicationSceneRequestBuilder
- (id)_optionsWithInitialClientSettings:(id)a3 activationOptions:(id)a4 targetSession:(id)a5 configuration:(id)a6 optionsClass:(Class)a7 outError:(id *)a8;
- (void)buildWorkspaceRequestOptionsForRequest:(id)a3 withContinuation:(id)a4;
@end

@implementation _UIApplicationSceneRequestBuilder

- (void)buildWorkspaceRequestOptionsForRequest:(id)a3 withContinuation:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self)
  {
    v8 = v6;
    v9 = [(_UIApplicationSceneRequestBuilder *)self _specification];
    v10 = [objc_msgSend(v9 "clientSettingsClass")];
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
  v13 = [v6 options];
  v14 = [v6 session];
  v15 = [v6 _configuration];
  v28 = 0;
  v16 = [(_UIApplicationSceneRequestBuilder *)self _optionsWithInitialClientSettings:v12 activationOptions:v13 targetSession:v14 configuration:v15 optionsClass:[(_UIApplicationSceneRequestBuilder *)self _requestOptionsClass] outError:&v28];
  v17 = v28;
  v34 = v16;

  if (v17)
  {
    v7[2](v7, 0, v17);
  }

  else
  {
    [(_UIApplicationSceneRequestBuilder *)self _customizeWorkspaceRequestOptions:v30[5] usingRequest:v6];
    v18 = [v30[5] actions];
    v19 = [v18 mutableCopy];

    v20 = [v6 _definitionPayloadStorage];
    v21 = [v20 encodeAsBSActions];
    [v19 unionSet:v21];

    v22 = [v6 userActivity];

    if (v22)
    {
      v23 = [v6 userActivity];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __93___UIApplicationSceneRequestBuilder_buildWorkspaceRequestOptionsForRequest_withContinuation___block_invoke;
      v24[3] = &unk_1E70F3028;
      v26 = v7;
      v25 = v19;
      v27 = &v29;
      [(UISActivityContinuationAction *)UIActivityContinuationAction buildWithUserActivity:v23 completion:v24];
    }

    else
    {
      [v30[5] setActions:v19];
      v7[2](v7, v30[5], 0);
    }
  }

  _Block_object_dispose(&v29, 8);
}

- (id)_optionsWithInitialClientSettings:(id)a3 activationOptions:(id)a4 targetSession:(id)a5 configuration:(id)a6 optionsClass:(Class)a7 outError:(id *)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a3;
  v18 = objc_alloc_init(a7);
  [v18 setInitialClientSettings:v17];

  v19 = [MEMORY[0x1E695DFA8] set];
  if (v15)
  {
    v20 = [v15 persistentIdentifier];
    [v18 setIdentifier:v20];
  }

  if (v16)
  {
    v45 = 0;
    v21 = [[_UISceneConfigurationAction alloc] initWithSceneConfiguration:v16 error:&v45];
    v22 = v45;
    v23 = v22;
    if (v22)
    {
      v24 = v22;
      *a8 = v23;
    }

    else
    {
      [v19 addObject:v21];
    }
  }

  if (v14)
  {
    v25 = [v14 requestingScene];
    v26 = [v25 session];

    if (v26)
    {
      v27 = [v26 persistentIdentifier];
      [v18 setSourceIdentifier:v27];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = self;
      v28 = v14;
      v29 = [v28 _interactionIdentifier];
      [v18 setInteractionIdentifier:v29];

      v30 = [v28 _quickLookSceneConfiguration];
      v31 = v30;
      if (!v15 && v30)
      {
        [v18 setRequestQuickLookScene:1];
        v32 = [UIQuickLookSceneConfigurationAction actionWithSceneConfiguration:v31];
        [v19 addObject:v32];
      }

      v41 = a8;
      v42 = v31;
      [v18 setPreserveLayout:{objc_msgSend(v28, "_effectivelyWantsPreservedLayout")}];
      [v18 setRequestFullscreen:{objc_msgSend(v28, "_effectivelyWantsFullscreen")}];
      [v18 setRequestCenterSlot:{objc_msgSend(v28, "_effectivelyWantsProminence")}];
      [v18 setRequestBackground:{objc_msgSend(v28, "_effectivelyWantsBackground")}];
      v33 = [v28 placement];
      if (v33 || (([v18 preserveLayout] & 1) != 0 || (objc_msgSend(v18, "requestFullscreen") & 1) != 0 || (objc_msgSend(v18, "requestCenterSlot") & 1) != 0 || objc_msgSend(v18, "requestBackground")) && (_UIWindowScenePlacementForLegacyFlags(objc_msgSend(v18, "requestFullscreen"), objc_msgSend(v18, "requestCenterSlot"), objc_msgSend(v18, "preserveLayout"), objc_msgSend(v18, "requestBackground")), (v33 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v34 = v33;
        v44 = 0;
        v35 = [v33 _createConfigurationWithError:&v44];
        v36 = v44;
        [v18 setScenePlacementConfiguration:v35];

        if (v36)
        {
          v37 = v36;
          *v41 = v36;
        }
      }

      self = v43;
    }

    else
    {
      [v18 setRequestFullscreen:{objc_msgSend(v14, "_requestFullscreen")}];
      [v18 setPreserveLayout:{objc_msgSend(v14, "preserveLayout")}];
    }
  }

  v38 = [(_UIApplicationSceneRequestBuilder *)self _specification];
  [v18 setSpecification:v38];

  v39 = [v19 copy];
  [v18 setActions:v39];

  return v18;
}

@end