@interface PRUISPosterSnapshotRequest
+ (id)snapshotRequestForPRPosterConfiguration:(id)a3 definition:(id)a4 interfaceOrientation:(int64_t)a5;
+ (id)snapshotRequestForPRSPosterConfiguration:(id)a3 definition:(id)a4 interfaceOrientation:(int64_t)a5;
+ (id)snapshotRequestForPRSPosterConfiguration:(id)a3 definition:(id)a4 interfaceOrientation:(int64_t)a5 userInterfaceStyle:(int64_t)a6;
+ (id)snapshotRequestForPoster:(id)a3 definition:(id)a4 interfaceOrientation:(int64_t)a5;
- (BOOL)determineColorStatistics;
- (BOOL)isEqual:(id)a3;
- (NSArray)attachments;
- (PRUISPosterSnapshotRequest)initWithPoster:(id)a3 definition:(id)a4 interfaceOrientation:(int64_t)a5;
- (PRUISPosterSnapshotRequest)initWithPoster:(id)a3 definition:(id)a4 interfaceOrientation:(int64_t)a5 userInterfaceStyle:(int64_t)a6;
- (PRUISPosterSnapshotRequest)initWithPoster:(id)a3 snapshotDescriptor:(id)a4;
- (UIScreen)screen;
- (id)buildPUISnapshotRequestForPriority:(int64_t)a3 sceneAttachments:(id)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)serverPosterPath;
- (unint64_t)hash;
- (void)dealloc;
- (void)setAttachmentConfiguration:(id)a3;
- (void)setSnapshotDescriptor:(id)a3;
@end

@implementation PRUISPosterSnapshotRequest

- (PRUISPosterSnapshotRequest)initWithPoster:(id)a3 snapshotDescriptor:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 _path];
  v11 = [v10 isServerPosterPath];

  if ((v11 & 1) == 0)
  {
    [PRUISPosterSnapshotRequest initWithPoster:a2 snapshotDescriptor:?];
  }

  if (!v9)
  {
    [PRUISPosterSnapshotRequest initWithPoster:a2 snapshotDescriptor:?];
  }

  v22.receiver = self;
  v22.super_class = PRUISPosterSnapshotRequest;
  v12 = [(PRUISPosterSnapshotRequest *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_poster, a3);
    v14 = [v8 _path];
    v15 = [v14 extendValidityForReason:@"Snapshot Request"];
    sandboxExtension = v13->_sandboxExtension;
    v13->_sandboxExtension = v15;

    v17 = [v9 snapshotDefinition];
    definition = v13->_definition;
    v13->_definition = v17;

    v19 = [v9 copy];
    snapshotDescriptor = v13->_snapshotDescriptor;
    v13->_snapshotDescriptor = v19;

    v13->_timeout = 120.0;
    v13->_priority = 0;
    v13->_retryCount = 0;
  }

  return v13;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_sandboxExtension invalidate];
  sandboxExtension = self->_sandboxExtension;
  self->_sandboxExtension = 0;

  v4.receiver = self;
  v4.super_class = PRUISPosterSnapshotRequest;
  [(PRUISPosterSnapshotRequest *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[PRUISPosterSnapshotRequest allocWithZone:?]snapshotDescriptor:"initWithPoster:snapshotDescriptor:", self->_poster, self->_snapshotDescriptor];
  v4->_timeout = self->_timeout;
  v4->_priority = self->_priority;
  objc_storeStrong(&v4->_attachmentConfiguration, self->_attachmentConfiguration);
  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(PRUISPosterSnapshotRequest *)[PRUISMutablePosterSnapshotRequest allocWithZone:?]snapshotDescriptor:"initWithPoster:snapshotDescriptor:", self->_poster, self->_snapshotDescriptor];
  [(PRUISPosterSnapshotRequest *)v4 setTimeout:self->_timeout];
  [(PRUISPosterSnapshotRequest *)v4 setPriority:self->_priority];
  [(PRUISMutablePosterSnapshotRequest *)v4 setAttachmentConfiguration:self->_attachmentConfiguration];
  return v4;
}

- (void)setAttachmentConfiguration:(id)a3
{
  v12 = a3;
  v5 = [(PRUISPosterAttachmentConfiguration *)self->_attachmentConfiguration isEqual:v12];
  if (!v5)
  {
    v6 = v12;
    if (v12)
    {
      v7 = [(PRUISPosterAttachmentConfiguration *)v12 attachmentHostWindowScene];
      v8 = [v7 screen];
      v9 = [(PRUISPosterSnapshotRequest *)self screen];
      v10 = [v8 isEqual:v9];

      if ((v10 & 1) == 0)
      {
        [PRUISPosterSnapshotRequest setAttachmentConfiguration:a2];
      }

      v6 = v12;
    }

    attachmentConfiguration = self->_attachmentConfiguration;
    self->_attachmentConfiguration = v6;
  }

  MEMORY[0x1EEE66BB8](v5);
}

- (void)setSnapshotDescriptor:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [PRUISPosterSnapshotRequest setSnapshotDescriptor:a2];
  }

  v8 = v5;
  if (([v5 isEqual:self->_snapshotDescriptor] & 1) == 0)
  {
    v6 = [v8 copy];
    snapshotDescriptor = self->_snapshotDescriptor;
    self->_snapshotDescriptor = v6;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:self ofExpectedClass:objc_opt_class()];
  v6 = v4;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __38__PRUISPosterSnapshotRequest_isEqual___block_invoke;
  v18[3] = &unk_1E83A7FB8;
  v18[4] = self;
  v7 = v6;
  v19 = v7;
  v8 = [v5 appendEqualsBlocks:{v18, 0}];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __38__PRUISPosterSnapshotRequest_isEqual___block_invoke_2;
  v16[3] = &unk_1E83A7FB8;
  v16[4] = self;
  v9 = v7;
  v17 = v9;
  v10 = [v5 appendEqualsBlocks:{v16, 0}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __38__PRUISPosterSnapshotRequest_isEqual___block_invoke_3;
  v14[3] = &unk_1E83A7FB8;
  v14[4] = self;
  v15 = v9;
  v11 = v9;
  v12 = [v5 appendEqualsBlocks:{v14, 0}];
  LOBYTE(v9) = [v5 isEqual:v11];

  return v9;
}

uint64_t __38__PRUISPosterSnapshotRequest_isEqual___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serverPosterPath];
  v3 = [*(a1 + 40) serverPosterPath];
  v4 = BSEqualObjects();
  if (v2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v3)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(PRUISPosterSnapshotRequest *)self poster];
  v5 = [v3 appendObject:v4];

  v6 = [(PRUISPosterSnapshotRequest *)self snapshotDescriptor];
  v7 = [v3 appendObject:v6];

  v8 = [(PRUISPosterSnapshotRequest *)self attachmentConfiguration];
  v9 = [v3 appendObject:v8];

  [(PRUISPosterSnapshotRequest *)self timeout];
  v10 = [v3 appendDouble:?];
  v11 = [v3 appendInt64:{-[PRUISPosterSnapshotRequest priority](self, "priority")}];
  v12 = [v3 hash];

  return v12;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(PRUISPosterSnapshotRequest *)self poster];
  v5 = [v3 appendObject:v4 withName:@"poster"];

  v6 = [(PRUISPosterSnapshotRequest *)self snapshotDescriptor];
  v7 = [v3 appendObject:v6 withName:@"snapshotDescriptor"];

  v8 = [(PRUISPosterSnapshotRequest *)self attachmentConfiguration];
  v9 = [v3 appendObject:v8 withName:@"attachmentConfiguration" skipIfNil:1];

  [(PRUISPosterSnapshotRequest *)self timeout];
  v10 = [v3 appendDouble:@"timeout" withName:4 decimalPrecision:?];
  v11 = [v3 appendInt64:-[PRUISPosterSnapshotRequest priority](self withName:{"priority"), @"priority"}];
  v12 = [v3 build];

  return v12;
}

- (id)serverPosterPath
{
  v2 = [(PRUISPosterSnapshotRequest *)self poster];
  v3 = [v2 _path];

  return v3;
}

- (id)buildPUISnapshotRequestForPriority:(int64_t)a3 sceneAttachments:(id)a4 error:(id *)a5
{
  v104[1] = *MEMORY[0x1E69E9840];
  v96 = a4;
  v9 = [(PRUISPosterSnapshotRequest *)self serverPosterPath];
  if (([v9 isServerPosterPath] & 1) == 0)
  {
    [PRUISPosterSnapshotRequest buildPUISnapshotRequestForPriority:a2 sceneAttachments:? error:?];
  }

  v10 = [(PRUISPosterSnapshotRequest *)self snapshotDescriptor];
  v11 = [v10 snapshotDefinition];
  v12 = [v11 uniqueIdentifier];
  if ([v12 length])
  {
    v13 = [MEMORY[0x1E69C5320] modelObjectCacheForPath:v9];
    v14 = [v13 configuredProperties];
    if (v14)
    {
      v94 = v14;
      v87 = a3;

      v15 = 0;
    }

    else
    {
      v102 = 0;
      v19 = [MEMORY[0x1E69C5328] loadConfiguredPropertiesForPath:v9 error:&v102];
      v15 = v102;

      v94 = v19;
      if (!v19)
      {
        if (!v15)
        {
          v78 = MEMORY[0x1E696ABC0];
          v103 = *MEMORY[0x1E696A588];
          v104[0] = @"Unable to load configured properties for path.";
          [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:&v103 count:1];
          v80 = v79 = v11;
          v15 = [v78 errorWithDomain:@"com.apple.PosterBoardUIServices.errorDomain" code:-1 userInfo:v80];

          v11 = v79;
        }

        if (a5)
        {
          v81 = v15;
          v17 = 0;
          *a5 = v15;
        }

        else
        {
          v17 = 0;
        }

        v18 = v96;
        goto LABEL_28;
      }

      v87 = a3;
    }

    v20 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:{-[PRUISPosterSnapshotDescriptor userInterfaceStyle](self->_snapshotDescriptor, "userInterfaceStyle")}];
    if ([(PRUISPosterSnapshotDescriptor *)self->_snapshotDescriptor accessibilityContrast]!= -1)
    {
      v101[0] = MEMORY[0x1E69E9820];
      v101[1] = 3221225472;
      v101[2] = __88__PRUISPosterSnapshotRequest_buildPUISnapshotRequestForPriority_sceneAttachments_error___block_invoke;
      v101[3] = &unk_1E83A77D8;
      v101[4] = self;
      v21 = [v20 traitCollectionByModifyingTraits:v101];

      v20 = v21;
    }

    v22 = [v10 displayConfiguration];
    [v10 canvasBounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = objc_alloc_init(PRUISPosterSceneSettingsBuilder);
    -[PRUISPosterSceneSettingsBuilder setSnapshotOptions:](v31, "setSnapshotOptions:", [MEMORY[0x1E69C5338] snapshotOptionsForDefinition:v11]);
    [(PRUISPosterSceneSettingsBuilder *)v31 setTraitCollection:v20];
    v93 = v22;
    [(PRUISPosterSceneSettingsBuilder *)v31 setDisplayConfiguration:v22];
    v95 = v31;
    [(PRUISPosterSceneSettingsBuilder *)v31 setCanvasBounds:v24, v26, v28, v30];
    v32 = [(PRUISPosterSnapshotDescriptor *)self->_snapshotDescriptor interfaceOrientation];
    v88 = v15;
    if (v32)
    {
      v33 = v32;
      if (PUIDynamicRotationIsActive())
      {
        v34 = [v9 role];
        v35 = v12;
        v36 = v11;
        v37 = PFPosterRoleSupportsDynamicRotation();

        v38 = (v37 & 1) == 0;
        v11 = v36;
        v12 = v35;
        if (v38)
        {
          v39 = v33;
        }

        else
        {
          v39 = 1;
        }

LABEL_21:
        [(PRUISPosterSceneSettingsBuilder *)v95 setInterfaceOrientation:v39];
        [(PRUISPosterSceneSettingsBuilder *)v95 setDeviceOrientation:v33];
        v99[0] = MEMORY[0x1E69E9820];
        v99[1] = 3221225472;
        v99[2] = __88__PRUISPosterSnapshotRequest_buildPUISnapshotRequestForPriority_sceneAttachments_error___block_invoke_2;
        v99[3] = &unk_1E83A77B0;
        v83 = v96;
        v100 = v83;
        [(PRUISPosterSceneSettingsBuilder *)v95 applySceneSettings:v99];
        v90 = v11;
        v42 = [v11 levelSets];
        v92 = [v42 bs_mapNoNulls:&__block_literal_global_20];

        v43 = [(PRUISPosterSnapshotRequest *)self snapshotDescriptor];
        v44 = [v43 contentOcclusionRectangles];

        v85 = v44;
        if (v44)
        {
          v45 = objc_alloc(MEMORY[0x1E69C5580]);
          v46 = [v44 allRects];
          v47 = [v45 initWithNameToRectMap:v46];
        }

        else
        {
          v47 = 0;
        }

        v48 = objc_alloc(MEMORY[0x1E69C5610]);
        [v10 canvasBounds];
        v50 = v49;
        v52 = v51;
        v54 = v53;
        v56 = v55;
        v57 = [v20 userInterfaceStyle];
        v86 = v20;
        v58 = [v20 accessibilityContrast];
        [v10 salientContentRectangle];
        v63 = [v48 initWithDisplayConfiguration:v93 canvasBounds:v39 interfaceOrientation:v33 deviceOrientation:v57 userInterfaceStyle:v58 accessibilityContrast:v47 salientContentRectangle:v50 contentOcclusionRectangles:{v52, v54, v56, v59, v60, v61, v62}];
        v64 = objc_alloc(MEMORY[0x1E69C55F0]);
        [v10 persistenceScale];
        v89 = v12;
        v65 = [v64 initWithLevelSets:v92 snapshotDefinitionIdentifier:v12 persistenceScale:?];
        v91 = v10;
        v84 = v47;
        if ([(PRUISPosterSnapshotRequest *)self determineColorStatistics])
        {
          v66 = [MEMORY[0x1E69C55B0] defaultAnalysisDescriptor];
          v67 = [v66 copyWithShouldDetermineColorStatistics:1];
        }

        else
        {
          v67 = 0;
        }

        v68 = [objc_alloc(MEMORY[0x1E69C55D8]) initWithOutputDescriptor:v65 sceneDescriptor:v63 attachments:v83 analysis:v67];
        v82 = v63;
        v11 = v90;
        v69 = [(PRUISPosterSceneSettingsBuilder *)v95 buildWithPath:v9 configuredProperties:v94 snapshotDefinition:v90 sceneDescriptor:v63];
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __88__PRUISPosterSnapshotRequest_buildPUISnapshotRequestForPriority_sceneAttachments_error___block_invoke_4;
        aBlock[3] = &unk_1E83A7D50;
        v98 = v69;
        v70 = v69;
        v71 = _Block_copy(aBlock);
        v72 = v9;
        v73 = objc_alloc(MEMORY[0x1E69C5600]);
        v74 = v67;
        v75 = [(PRUISPosterSnapshotRequest *)self retryCount];
        [(PRUISPosterSnapshotRequest *)self timeout];
        v76 = v73;
        v9 = v72;
        v17 = [v76 initWithPath:v72 sceneSettingsApplicator:v71 priority:v87 snapshotDescriptor:v68 retryCount:v75 timeout:?];

        v18 = v96;
        v10 = v91;
        v15 = v88;
        v12 = v89;
LABEL_28:

        goto LABEL_29;
      }
    }

    else
    {
      v40 = [v9 role];
      v41 = [v40 isEqualToString:*MEMORY[0x1E69C53A8]];

      if (v41)
      {
        v33 = 4;
      }

      else
      {
        v33 = 1;
      }
    }

    v39 = v33;
    goto LABEL_21;
  }

  if (a5)
  {
    v16 = PFFunctionNameForAddress();
    *a5 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
  }

  v17 = 0;
  v18 = v96;
LABEL_29:

  return v17;
}

void __88__PRUISPosterSnapshotRequest_buildPUISnapshotRequestForPriority_sceneAttachments_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = a2;
  [v3 setAccessibilityContrast:{objc_msgSend(v2, "accessibilityContrast")}];
}

uint64_t __88__PRUISPosterSnapshotRequest_buildPUISnapshotRequestForPriority_sceneAttachments_error___block_invoke_2(uint64_t result, void *a2)
{
  if (*(result + 32))
  {
    return [a2 pui_setSceneAttachments:?];
  }

  return result;
}

id __88__PRUISPosterSnapshotRequest_buildPUISnapshotRequestForPriority_sceneAttachments_error___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69C5590];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 levels];

  v6 = [v4 initWithSet:v5];

  return v6;
}

+ (id)snapshotRequestForPRPosterConfiguration:(id)a3 definition:(id)a4 interfaceOrientation:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[a1 alloc] initWithPoster:v9 definition:v8 interfaceOrientation:a5];

  return v10;
}

+ (id)snapshotRequestForPRSPosterConfiguration:(id)a3 definition:(id)a4 interfaceOrientation:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    [PRUISPosterSnapshotRequest(Deprecated) snapshotRequestForPRSPosterConfiguration:a2 definition:? interfaceOrientation:?];
  }

  v11 = v10;
  v12 = [a1 alloc];
  v13 = objc_alloc(MEMORY[0x1E69C52E8]);
  v14 = [v9 _path];
  v15 = [v13 _initWithPath:v14];
  v16 = [v12 initWithPoster:v15 definition:v11 interfaceOrientation:a5];

  return v16;
}

+ (id)snapshotRequestForPRSPosterConfiguration:(id)a3 definition:(id)a4 interfaceOrientation:(int64_t)a5 userInterfaceStyle:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  if (!v11)
  {
    [PRUISPosterSnapshotRequest(Deprecated) snapshotRequestForPRSPosterConfiguration:a2 definition:? interfaceOrientation:? userInterfaceStyle:?];
  }

  v13 = v12;
  v14 = [a1 alloc];
  v15 = objc_alloc(MEMORY[0x1E69C52E8]);
  v16 = [v11 _path];
  v17 = [v15 _initWithPath:v16];
  v18 = [v14 initWithPoster:v17 definition:v13 interfaceOrientation:a5 userInterfaceStyle:a6];

  return v18;
}

+ (id)snapshotRequestForPoster:(id)a3 definition:(id)a4 interfaceOrientation:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[a1 alloc] initWithPoster:v9 definition:v8 interfaceOrientation:a5];

  return v10;
}

- (PRUISPosterSnapshotRequest)initWithPoster:(id)a3 definition:(id)a4 interfaceOrientation:(int64_t)a5 userInterfaceStyle:(int64_t)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [[PRUISPosterSnapshotDescriptor alloc] initWithUserInterfaceStyle:a6 interfaceOrientation:a5 snapshotDefinition:v10];

  v13 = [(PRUISPosterSnapshotRequest *)self initWithPoster:v11 snapshotDescriptor:v12];
  return v13;
}

- (PRUISPosterSnapshotRequest)initWithPoster:(id)a3 definition:(id)a4 interfaceOrientation:(int64_t)a5
{
  v8 = MEMORY[0x1E69DCEB0];
  v9 = a4;
  v10 = a3;
  v11 = [v8 mainScreen];
  v12 = [v11 traitCollection];
  v13 = -[PRUISPosterSnapshotRequest initWithPoster:definition:interfaceOrientation:userInterfaceStyle:](self, "initWithPoster:definition:interfaceOrientation:userInterfaceStyle:", v10, v9, a5, [v12 userInterfaceStyle]);

  return v13;
}

- (NSArray)attachments
{
  v2 = [(PRUISPosterSnapshotRequest *)self attachmentConfiguration];
  v3 = [v2 attachments];

  return v3;
}

- (UIScreen)screen
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [(PRUISPosterSnapshotRequest *)self snapshotDescriptor];
  v3 = [v2 displayConfiguration];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [MEMORY[0x1E69DCEB0] screens];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 displayConfiguration];
        v11 = [v10 isEqual:v3];

        if (v11)
        {
          v12 = v9;

          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = [MEMORY[0x1E69DCEB0] mainScreen];
LABEL_11:

  return v12;
}

- (BOOL)determineColorStatistics
{
  v2 = [(PRUISPosterSnapshotRequest *)self snapshotDescriptor];
  v3 = [v2 determineColorStatistics];

  return v3;
}

- (void)initWithPoster:(char *)a1 snapshotDescriptor:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[[poster _path] isServerPosterPath]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithPoster:(char *)a1 snapshotDescriptor:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"snapshotDescriptor", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setAttachmentConfiguration:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[[[attachmentConfiguration attachmentHostWindowScene] screen] isEqual:[self screen]]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setSnapshotDescriptor:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"snapshotDescriptor", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)buildPUISnapshotRequestForPriority:(char *)a1 sceneAttachments:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[path isServerPosterPath]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end