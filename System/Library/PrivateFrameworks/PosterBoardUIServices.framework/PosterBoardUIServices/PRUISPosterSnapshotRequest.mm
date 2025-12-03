@interface PRUISPosterSnapshotRequest
+ (id)snapshotRequestForPRPosterConfiguration:(id)configuration definition:(id)definition interfaceOrientation:(int64_t)orientation;
+ (id)snapshotRequestForPRSPosterConfiguration:(id)configuration definition:(id)definition interfaceOrientation:(int64_t)orientation;
+ (id)snapshotRequestForPRSPosterConfiguration:(id)configuration definition:(id)definition interfaceOrientation:(int64_t)orientation userInterfaceStyle:(int64_t)style;
+ (id)snapshotRequestForPoster:(id)poster definition:(id)definition interfaceOrientation:(int64_t)orientation;
- (BOOL)determineColorStatistics;
- (BOOL)isEqual:(id)equal;
- (NSArray)attachments;
- (PRUISPosterSnapshotRequest)initWithPoster:(id)poster definition:(id)definition interfaceOrientation:(int64_t)orientation;
- (PRUISPosterSnapshotRequest)initWithPoster:(id)poster definition:(id)definition interfaceOrientation:(int64_t)orientation userInterfaceStyle:(int64_t)style;
- (PRUISPosterSnapshotRequest)initWithPoster:(id)poster snapshotDescriptor:(id)descriptor;
- (UIScreen)screen;
- (id)buildPUISnapshotRequestForPriority:(int64_t)priority sceneAttachments:(id)attachments error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)serverPosterPath;
- (unint64_t)hash;
- (void)dealloc;
- (void)setAttachmentConfiguration:(id)configuration;
- (void)setSnapshotDescriptor:(id)descriptor;
@end

@implementation PRUISPosterSnapshotRequest

- (PRUISPosterSnapshotRequest)initWithPoster:(id)poster snapshotDescriptor:(id)descriptor
{
  posterCopy = poster;
  descriptorCopy = descriptor;
  _path = [posterCopy _path];
  isServerPosterPath = [_path isServerPosterPath];

  if ((isServerPosterPath & 1) == 0)
  {
    [PRUISPosterSnapshotRequest initWithPoster:a2 snapshotDescriptor:?];
  }

  if (!descriptorCopy)
  {
    [PRUISPosterSnapshotRequest initWithPoster:a2 snapshotDescriptor:?];
  }

  v22.receiver = self;
  v22.super_class = PRUISPosterSnapshotRequest;
  v12 = [(PRUISPosterSnapshotRequest *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_poster, poster);
    _path2 = [posterCopy _path];
    v15 = [_path2 extendValidityForReason:@"Snapshot Request"];
    sandboxExtension = v13->_sandboxExtension;
    v13->_sandboxExtension = v15;

    snapshotDefinition = [descriptorCopy snapshotDefinition];
    definition = v13->_definition;
    v13->_definition = snapshotDefinition;

    v19 = [descriptorCopy copy];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[PRUISPosterSnapshotRequest allocWithZone:?]snapshotDescriptor:"initWithPoster:snapshotDescriptor:", self->_poster, self->_snapshotDescriptor];
  v4->_timeout = self->_timeout;
  v4->_priority = self->_priority;
  objc_storeStrong(&v4->_attachmentConfiguration, self->_attachmentConfiguration);
  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(PRUISPosterSnapshotRequest *)[PRUISMutablePosterSnapshotRequest allocWithZone:?]snapshotDescriptor:"initWithPoster:snapshotDescriptor:", self->_poster, self->_snapshotDescriptor];
  [(PRUISPosterSnapshotRequest *)v4 setTimeout:self->_timeout];
  [(PRUISPosterSnapshotRequest *)v4 setPriority:self->_priority];
  [(PRUISMutablePosterSnapshotRequest *)v4 setAttachmentConfiguration:self->_attachmentConfiguration];
  return v4;
}

- (void)setAttachmentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [(PRUISPosterAttachmentConfiguration *)self->_attachmentConfiguration isEqual:configurationCopy];
  if (!v5)
  {
    v6 = configurationCopy;
    if (configurationCopy)
    {
      attachmentHostWindowScene = [(PRUISPosterAttachmentConfiguration *)configurationCopy attachmentHostWindowScene];
      screen = [attachmentHostWindowScene screen];
      screen2 = [(PRUISPosterSnapshotRequest *)self screen];
      v10 = [screen isEqual:screen2];

      if ((v10 & 1) == 0)
      {
        [PRUISPosterSnapshotRequest setAttachmentConfiguration:a2];
      }

      v6 = configurationCopy;
    }

    attachmentConfiguration = self->_attachmentConfiguration;
    self->_attachmentConfiguration = v6;
  }

  MEMORY[0x1EEE66BB8](v5);
}

- (void)setSnapshotDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (!descriptorCopy)
  {
    [PRUISPosterSnapshotRequest setSnapshotDescriptor:a2];
  }

  v8 = descriptorCopy;
  if (([descriptorCopy isEqual:self->_snapshotDescriptor] & 1) == 0)
  {
    v6 = [v8 copy];
    snapshotDescriptor = self->_snapshotDescriptor;
    self->_snapshotDescriptor = v6;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:self ofExpectedClass:objc_opt_class()];
  v6 = equalCopy;
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
  builder = [MEMORY[0x1E698E6B8] builder];
  poster = [(PRUISPosterSnapshotRequest *)self poster];
  v5 = [builder appendObject:poster];

  snapshotDescriptor = [(PRUISPosterSnapshotRequest *)self snapshotDescriptor];
  v7 = [builder appendObject:snapshotDescriptor];

  attachmentConfiguration = [(PRUISPosterSnapshotRequest *)self attachmentConfiguration];
  v9 = [builder appendObject:attachmentConfiguration];

  [(PRUISPosterSnapshotRequest *)self timeout];
  v10 = [builder appendDouble:?];
  v11 = [builder appendInt64:{-[PRUISPosterSnapshotRequest priority](self, "priority")}];
  v12 = [builder hash];

  return v12;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  poster = [(PRUISPosterSnapshotRequest *)self poster];
  v5 = [v3 appendObject:poster withName:@"poster"];

  snapshotDescriptor = [(PRUISPosterSnapshotRequest *)self snapshotDescriptor];
  v7 = [v3 appendObject:snapshotDescriptor withName:@"snapshotDescriptor"];

  attachmentConfiguration = [(PRUISPosterSnapshotRequest *)self attachmentConfiguration];
  v9 = [v3 appendObject:attachmentConfiguration withName:@"attachmentConfiguration" skipIfNil:1];

  [(PRUISPosterSnapshotRequest *)self timeout];
  v10 = [v3 appendDouble:@"timeout" withName:4 decimalPrecision:?];
  v11 = [v3 appendInt64:-[PRUISPosterSnapshotRequest priority](self withName:{"priority"), @"priority"}];
  build = [v3 build];

  return build;
}

- (id)serverPosterPath
{
  poster = [(PRUISPosterSnapshotRequest *)self poster];
  _path = [poster _path];

  return _path;
}

- (id)buildPUISnapshotRequestForPriority:(int64_t)priority sceneAttachments:(id)attachments error:(id *)error
{
  v104[1] = *MEMORY[0x1E69E9840];
  attachmentsCopy = attachments;
  serverPosterPath = [(PRUISPosterSnapshotRequest *)self serverPosterPath];
  if (([serverPosterPath isServerPosterPath] & 1) == 0)
  {
    [PRUISPosterSnapshotRequest buildPUISnapshotRequestForPriority:a2 sceneAttachments:? error:?];
  }

  snapshotDescriptor = [(PRUISPosterSnapshotRequest *)self snapshotDescriptor];
  snapshotDefinition = [snapshotDescriptor snapshotDefinition];
  uniqueIdentifier = [snapshotDefinition uniqueIdentifier];
  if ([uniqueIdentifier length])
  {
    v13 = [MEMORY[0x1E69C5320] modelObjectCacheForPath:serverPosterPath];
    configuredProperties = [v13 configuredProperties];
    if (configuredProperties)
    {
      v94 = configuredProperties;
      priorityCopy2 = priority;

      v15 = 0;
    }

    else
    {
      v102 = 0;
      v19 = [MEMORY[0x1E69C5328] loadConfiguredPropertiesForPath:serverPosterPath error:&v102];
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
          v80 = v79 = snapshotDefinition;
          v15 = [v78 errorWithDomain:@"com.apple.PosterBoardUIServices.errorDomain" code:-1 userInfo:v80];

          snapshotDefinition = v79;
        }

        if (error)
        {
          v81 = v15;
          v17 = 0;
          *error = v15;
        }

        else
        {
          v17 = 0;
        }

        v18 = attachmentsCopy;
        goto LABEL_28;
      }

      priorityCopy2 = priority;
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

    displayConfiguration = [snapshotDescriptor displayConfiguration];
    [snapshotDescriptor canvasBounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = objc_alloc_init(PRUISPosterSceneSettingsBuilder);
    -[PRUISPosterSceneSettingsBuilder setSnapshotOptions:](v31, "setSnapshotOptions:", [MEMORY[0x1E69C5338] snapshotOptionsForDefinition:snapshotDefinition]);
    [(PRUISPosterSceneSettingsBuilder *)v31 setTraitCollection:v20];
    v93 = displayConfiguration;
    [(PRUISPosterSceneSettingsBuilder *)v31 setDisplayConfiguration:displayConfiguration];
    v95 = v31;
    [(PRUISPosterSceneSettingsBuilder *)v31 setCanvasBounds:v24, v26, v28, v30];
    interfaceOrientation = [(PRUISPosterSnapshotDescriptor *)self->_snapshotDescriptor interfaceOrientation];
    v88 = v15;
    if (interfaceOrientation)
    {
      v33 = interfaceOrientation;
      if (PUIDynamicRotationIsActive())
      {
        role = [serverPosterPath role];
        v35 = uniqueIdentifier;
        v36 = snapshotDefinition;
        v37 = PFPosterRoleSupportsDynamicRotation();

        v38 = (v37 & 1) == 0;
        snapshotDefinition = v36;
        uniqueIdentifier = v35;
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
        v83 = attachmentsCopy;
        v100 = v83;
        [(PRUISPosterSceneSettingsBuilder *)v95 applySceneSettings:v99];
        v90 = snapshotDefinition;
        levelSets = [snapshotDefinition levelSets];
        v92 = [levelSets bs_mapNoNulls:&__block_literal_global_20];

        snapshotDescriptor2 = [(PRUISPosterSnapshotRequest *)self snapshotDescriptor];
        contentOcclusionRectangles = [snapshotDescriptor2 contentOcclusionRectangles];

        v85 = contentOcclusionRectangles;
        if (contentOcclusionRectangles)
        {
          v45 = objc_alloc(MEMORY[0x1E69C5580]);
          allRects = [contentOcclusionRectangles allRects];
          v47 = [v45 initWithNameToRectMap:allRects];
        }

        else
        {
          v47 = 0;
        }

        v48 = objc_alloc(MEMORY[0x1E69C5610]);
        [snapshotDescriptor canvasBounds];
        v50 = v49;
        v52 = v51;
        v54 = v53;
        v56 = v55;
        userInterfaceStyle = [v20 userInterfaceStyle];
        v86 = v20;
        accessibilityContrast = [v20 accessibilityContrast];
        [snapshotDescriptor salientContentRectangle];
        v63 = [v48 initWithDisplayConfiguration:v93 canvasBounds:v39 interfaceOrientation:v33 deviceOrientation:userInterfaceStyle userInterfaceStyle:accessibilityContrast accessibilityContrast:v47 salientContentRectangle:v50 contentOcclusionRectangles:{v52, v54, v56, v59, v60, v61, v62}];
        v64 = objc_alloc(MEMORY[0x1E69C55F0]);
        [snapshotDescriptor persistenceScale];
        v89 = uniqueIdentifier;
        v65 = [v64 initWithLevelSets:v92 snapshotDefinitionIdentifier:uniqueIdentifier persistenceScale:?];
        v91 = snapshotDescriptor;
        v84 = v47;
        if ([(PRUISPosterSnapshotRequest *)self determineColorStatistics])
        {
          defaultAnalysisDescriptor = [MEMORY[0x1E69C55B0] defaultAnalysisDescriptor];
          v67 = [defaultAnalysisDescriptor copyWithShouldDetermineColorStatistics:1];
        }

        else
        {
          v67 = 0;
        }

        v68 = [objc_alloc(MEMORY[0x1E69C55D8]) initWithOutputDescriptor:v65 sceneDescriptor:v63 attachments:v83 analysis:v67];
        v82 = v63;
        snapshotDefinition = v90;
        v69 = [(PRUISPosterSceneSettingsBuilder *)v95 buildWithPath:serverPosterPath configuredProperties:v94 snapshotDefinition:v90 sceneDescriptor:v63];
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __88__PRUISPosterSnapshotRequest_buildPUISnapshotRequestForPriority_sceneAttachments_error___block_invoke_4;
        aBlock[3] = &unk_1E83A7D50;
        v98 = v69;
        v70 = v69;
        v71 = _Block_copy(aBlock);
        v72 = serverPosterPath;
        v73 = objc_alloc(MEMORY[0x1E69C5600]);
        v74 = v67;
        retryCount = [(PRUISPosterSnapshotRequest *)self retryCount];
        [(PRUISPosterSnapshotRequest *)self timeout];
        v76 = v73;
        serverPosterPath = v72;
        v17 = [v76 initWithPath:v72 sceneSettingsApplicator:v71 priority:priorityCopy2 snapshotDescriptor:v68 retryCount:retryCount timeout:?];

        v18 = attachmentsCopy;
        snapshotDescriptor = v91;
        v15 = v88;
        uniqueIdentifier = v89;
LABEL_28:

        goto LABEL_29;
      }
    }

    else
    {
      role2 = [serverPosterPath role];
      v41 = [role2 isEqualToString:*MEMORY[0x1E69C53A8]];

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

  if (error)
  {
    v16 = PFFunctionNameForAddress();
    *error = PFGeneralErrorFromObjectWithLocalizedFailureReason();
  }

  v17 = 0;
  v18 = attachmentsCopy;
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

+ (id)snapshotRequestForPRPosterConfiguration:(id)configuration definition:(id)definition interfaceOrientation:(int64_t)orientation
{
  definitionCopy = definition;
  configurationCopy = configuration;
  v10 = [[self alloc] initWithPoster:configurationCopy definition:definitionCopy interfaceOrientation:orientation];

  return v10;
}

+ (id)snapshotRequestForPRSPosterConfiguration:(id)configuration definition:(id)definition interfaceOrientation:(int64_t)orientation
{
  configurationCopy = configuration;
  definitionCopy = definition;
  if (!configurationCopy)
  {
    [PRUISPosterSnapshotRequest(Deprecated) snapshotRequestForPRSPosterConfiguration:a2 definition:? interfaceOrientation:?];
  }

  v11 = definitionCopy;
  v12 = [self alloc];
  v13 = objc_alloc(MEMORY[0x1E69C52E8]);
  _path = [configurationCopy _path];
  v15 = [v13 _initWithPath:_path];
  v16 = [v12 initWithPoster:v15 definition:v11 interfaceOrientation:orientation];

  return v16;
}

+ (id)snapshotRequestForPRSPosterConfiguration:(id)configuration definition:(id)definition interfaceOrientation:(int64_t)orientation userInterfaceStyle:(int64_t)style
{
  configurationCopy = configuration;
  definitionCopy = definition;
  if (!configurationCopy)
  {
    [PRUISPosterSnapshotRequest(Deprecated) snapshotRequestForPRSPosterConfiguration:a2 definition:? interfaceOrientation:? userInterfaceStyle:?];
  }

  v13 = definitionCopy;
  v14 = [self alloc];
  v15 = objc_alloc(MEMORY[0x1E69C52E8]);
  _path = [configurationCopy _path];
  v17 = [v15 _initWithPath:_path];
  v18 = [v14 initWithPoster:v17 definition:v13 interfaceOrientation:orientation userInterfaceStyle:style];

  return v18;
}

+ (id)snapshotRequestForPoster:(id)poster definition:(id)definition interfaceOrientation:(int64_t)orientation
{
  definitionCopy = definition;
  posterCopy = poster;
  v10 = [[self alloc] initWithPoster:posterCopy definition:definitionCopy interfaceOrientation:orientation];

  return v10;
}

- (PRUISPosterSnapshotRequest)initWithPoster:(id)poster definition:(id)definition interfaceOrientation:(int64_t)orientation userInterfaceStyle:(int64_t)style
{
  definitionCopy = definition;
  posterCopy = poster;
  v12 = [[PRUISPosterSnapshotDescriptor alloc] initWithUserInterfaceStyle:style interfaceOrientation:orientation snapshotDefinition:definitionCopy];

  v13 = [(PRUISPosterSnapshotRequest *)self initWithPoster:posterCopy snapshotDescriptor:v12];
  return v13;
}

- (PRUISPosterSnapshotRequest)initWithPoster:(id)poster definition:(id)definition interfaceOrientation:(int64_t)orientation
{
  v8 = MEMORY[0x1E69DCEB0];
  definitionCopy = definition;
  posterCopy = poster;
  mainScreen = [v8 mainScreen];
  traitCollection = [mainScreen traitCollection];
  v13 = -[PRUISPosterSnapshotRequest initWithPoster:definition:interfaceOrientation:userInterfaceStyle:](self, "initWithPoster:definition:interfaceOrientation:userInterfaceStyle:", posterCopy, definitionCopy, orientation, [traitCollection userInterfaceStyle]);

  return v13;
}

- (NSArray)attachments
{
  attachmentConfiguration = [(PRUISPosterSnapshotRequest *)self attachmentConfiguration];
  attachments = [attachmentConfiguration attachments];

  return attachments;
}

- (UIScreen)screen
{
  v19 = *MEMORY[0x1E69E9840];
  snapshotDescriptor = [(PRUISPosterSnapshotRequest *)self snapshotDescriptor];
  displayConfiguration = [snapshotDescriptor displayConfiguration];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  screens = [MEMORY[0x1E69DCEB0] screens];
  v5 = [screens countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(screens);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        displayConfiguration2 = [v9 displayConfiguration];
        v11 = [displayConfiguration2 isEqual:displayConfiguration];

        if (v11)
        {
          mainScreen = v9;

          goto LABEL_11;
        }
      }

      v6 = [screens countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
LABEL_11:

  return mainScreen;
}

- (BOOL)determineColorStatistics
{
  snapshotDescriptor = [(PRUISPosterSnapshotRequest *)self snapshotDescriptor];
  determineColorStatistics = [snapshotDescriptor determineColorStatistics];

  return determineColorStatistics;
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