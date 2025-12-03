@interface PRUISPosterSnapshotDescriptor
- (BOOL)isEqual:(id)equal;
- (CGRect)canvasBounds;
- (CGRect)salientContentRectangle;
- (PRUISPosterSnapshotDescriptor)init;
- (PRUISPosterSnapshotDescriptor)initWithSnapshotDefinition:(id)definition;
- (PRUISPosterSnapshotDescriptor)initWithSnapshotDescriptor:(id)descriptor;
- (PRUISPosterSnapshotDescriptor)initWithUserInterfaceStyle:(int64_t)style interfaceOrientation:(int64_t)orientation snapshotDefinition:(id)definition;
- (PUIPosterSnapshotDescriptor)underlyingSnapshotDescriptor;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation PRUISPosterSnapshotDescriptor

- (PRUISPosterSnapshotDescriptor)initWithSnapshotDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (!descriptorCopy)
  {
    [(PRUISPosterSnapshotDescriptor *)a2 initWithSnapshotDescriptor:?];
  }

  v6 = descriptorCopy;
  v26.receiver = self;
  v26.super_class = PRUISPosterSnapshotDescriptor;
  v7 = [(PRUISPosterSnapshotDescriptor *)&v26 init];
  if (v7)
  {
    v7->_userInterfaceStyle = [v6 userInterfaceStyle];
    v7->_interfaceOrientation = [v6 interfaceOrientation];
    snapshotDefinition = [v6 snapshotDefinition];
    snapshotDefinition = v7->_snapshotDefinition;
    v7->_snapshotDefinition = snapshotDefinition;

    [v6 persistenceScale];
    v7->_persistenceScale = v10;
    v7->_accessibilityContrast = [v6 accessibilityContrast];
    displayConfiguration = [v6 displayConfiguration];
    v12 = [displayConfiguration copy];
    displayConfiguration = v7->_displayConfiguration;
    v7->_displayConfiguration = v12;

    [v6 canvasBounds];
    v7->_canvasBounds.origin.x = v14;
    v7->_canvasBounds.origin.y = v15;
    v7->_canvasBounds.size.width = v16;
    v7->_canvasBounds.size.height = v17;
    v7->_determineColorStatistics = [v6 determineColorStatistics];
    [v6 salientContentRectangle];
    v7->_salientContentRectangle.origin.x = v18;
    v7->_salientContentRectangle.origin.y = v19;
    v7->_salientContentRectangle.size.width = v20;
    v7->_salientContentRectangle.size.height = v21;
    contentOcclusionRectangles = [v6 contentOcclusionRectangles];
    v23 = [contentOcclusionRectangles copy];
    contentOcclusionRectangles = v7->_contentOcclusionRectangles;
    v7->_contentOcclusionRectangles = v23;

    v7->_predicateOptions = v6[17];
  }

  return v7;
}

- (PRUISPosterSnapshotDescriptor)initWithSnapshotDefinition:(id)definition
{
  definitionCopy = definition;
  v17.receiver = self;
  v17.super_class = PRUISPosterSnapshotDescriptor;
  v6 = [(PRUISPosterSnapshotDescriptor *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_snapshotDefinition, definition);
    v7->_predicateOptions = 2;
    v7->_interfaceOrientation = 0;
    v7->_persistenceScale = 1.0;
    *&v7->_accessibilityContrast = xmmword_1CAF02610;
    pui_sharedDisplayMonitor = [MEMORY[0x1E699FB10] pui_sharedDisplayMonitor];
    mainConfiguration = [pui_sharedDisplayMonitor mainConfiguration];
    displayConfiguration = v7->_displayConfiguration;
    v7->_displayConfiguration = mainConfiguration;

    [(FBSDisplayConfiguration *)v7->_displayConfiguration bounds];
    v7->_canvasBounds.origin.x = v11;
    v7->_canvasBounds.origin.y = v12;
    v7->_canvasBounds.size.width = v13;
    v7->_canvasBounds.size.height = v14;
    v7->_determineColorStatistics = 0;
    v15 = *(MEMORY[0x1E695F040] + 16);
    v7->_salientContentRectangle.origin = *MEMORY[0x1E695F040];
    v7->_salientContentRectangle.size = v15;
  }

  return v7;
}

- (PRUISPosterSnapshotDescriptor)initWithUserInterfaceStyle:(int64_t)style interfaceOrientation:(int64_t)orientation snapshotDefinition:(id)definition
{
  definitionCopy = definition;
  v21.receiver = self;
  v21.super_class = PRUISPosterSnapshotDescriptor;
  v10 = [(PRUISPosterSnapshotDescriptor *)&v21 init];
  v11 = v10;
  if (v10)
  {
    v10->_userInterfaceStyle = style;
    v10->_interfaceOrientation = orientation;
    objc_storeStrong(&v10->_snapshotDefinition, definition);
    v11->_predicateOptions = 98;
    v11->_persistenceScale = 1.0;
    v11->_accessibilityContrast = -1;
    pui_sharedDisplayMonitor = [MEMORY[0x1E699FB10] pui_sharedDisplayMonitor];
    mainConfiguration = [pui_sharedDisplayMonitor mainConfiguration];
    displayConfiguration = v11->_displayConfiguration;
    v11->_displayConfiguration = mainConfiguration;

    [(FBSDisplayConfiguration *)v11->_displayConfiguration bounds];
    v11->_canvasBounds.origin.x = v15;
    v11->_canvasBounds.origin.y = v16;
    v11->_canvasBounds.size.width = v17;
    v11->_canvasBounds.size.height = v18;
    v11->_determineColorStatistics = 0;
    v19 = *(MEMORY[0x1E695F040] + 16);
    v11->_salientContentRectangle.origin = *MEMORY[0x1E695F040];
    v11->_salientContentRectangle.size = v19;
  }

  return v11;
}

- (PRUISPosterSnapshotDescriptor)init
{
  [(PRUISPosterSnapshotDescriptor *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PRUISPosterSnapshotDescriptor allocWithZone:zone];

  return [(PRUISPosterSnapshotDescriptor *)v4 initWithSnapshotDescriptor:self];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [PRUISMutablePosterSnapshotDescriptor allocWithZone:zone];

  return [(PRUISPosterSnapshotDescriptor *)v4 initWithSnapshotDescriptor:self];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:self ofExpectedClass:objc_opt_class()];
  v6 = equalCopy;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __41__PRUISPosterSnapshotDescriptor_isEqual___block_invoke;
  v46[3] = &unk_1E83A7FB8;
  v46[4] = self;
  v7 = v6;
  v47 = v7;
  v8 = [v5 appendEqualsBlocks:{v46, 0}];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __41__PRUISPosterSnapshotDescriptor_isEqual___block_invoke_2;
  v44[3] = &unk_1E83A7FB8;
  v44[4] = self;
  v9 = v7;
  v45 = v9;
  v10 = [v5 appendEqualsBlocks:{v44, 0}];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __41__PRUISPosterSnapshotDescriptor_isEqual___block_invoke_3;
  v42[3] = &unk_1E83A7FB8;
  v42[4] = self;
  v11 = v9;
  v43 = v11;
  v12 = [v5 appendEqualsBlocks:{v42, 0}];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __41__PRUISPosterSnapshotDescriptor_isEqual___block_invoke_4;
  v40[3] = &unk_1E83A7FB8;
  v40[4] = self;
  v13 = v11;
  v41 = v13;
  v14 = [v5 appendEqualsBlocks:{v40, 0}];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __41__PRUISPosterSnapshotDescriptor_isEqual___block_invoke_5;
  v38[3] = &unk_1E83A7FB8;
  v38[4] = self;
  v15 = v13;
  v39 = v15;
  v16 = [v5 appendEqualsBlocks:{v38, 0}];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __41__PRUISPosterSnapshotDescriptor_isEqual___block_invoke_6;
  v36[3] = &unk_1E83A7FB8;
  v36[4] = self;
  v17 = v15;
  v37 = v17;
  v18 = [v5 appendEqualsBlocks:{v36, 0}];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __41__PRUISPosterSnapshotDescriptor_isEqual___block_invoke_7;
  v34[3] = &unk_1E83A7FB8;
  v34[4] = self;
  v19 = v17;
  v35 = v19;
  v20 = [v5 appendEqualsBlocks:{v34, 0}];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __41__PRUISPosterSnapshotDescriptor_isEqual___block_invoke_8;
  v32[3] = &unk_1E83A7FB8;
  v32[4] = self;
  v21 = v19;
  v33 = v21;
  v22 = [v5 appendEqualsBlocks:{v32, 0}];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __41__PRUISPosterSnapshotDescriptor_isEqual___block_invoke_9;
  v30[3] = &unk_1E83A7FB8;
  v30[4] = self;
  v23 = v21;
  v31 = v23;
  v24 = [v5 appendEqualsBlocks:{v30, 0}];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __41__PRUISPosterSnapshotDescriptor_isEqual___block_invoke_10;
  v28[3] = &unk_1E83A7FB8;
  v28[4] = self;
  v29 = v23;
  v25 = v23;
  v26 = [v5 appendEqualsBlocks:{v28, 0}];
  LOBYTE(v23) = [v5 isEqual:v25];

  return v23;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendInteger:{-[PRUISPosterSnapshotDescriptor userInterfaceStyle](self, "userInterfaceStyle")}];
  v5 = [builder appendInteger:{-[PRUISPosterSnapshotDescriptor interfaceOrientation](self, "interfaceOrientation")}];
  v6 = [builder appendInteger:{-[PRUISPosterSnapshotDescriptor accessibilityContrast](self, "accessibilityContrast")}];
  v7 = [builder appendBool:{-[PRUISPosterSnapshotDescriptor determineColorStatistics](self, "determineColorStatistics")}];
  [(PRUISPosterSnapshotDescriptor *)self persistenceScale];
  v8 = [builder appendCGFloat:?];
  [(PRUISPosterSnapshotDescriptor *)self canvasBounds];
  v9 = [builder appendCGRect:?];
  displayConfiguration = [(PRUISPosterSnapshotDescriptor *)self displayConfiguration];
  v11 = [builder appendObject:displayConfiguration];

  snapshotDefinition = [(PRUISPosterSnapshotDescriptor *)self snapshotDefinition];
  v13 = [builder appendObject:snapshotDefinition];

  [(PRUISPosterSnapshotDescriptor *)self salientContentRectangle];
  v14 = [builder appendCGRect:?];
  contentOcclusionRectangles = [(PRUISPosterSnapshotDescriptor *)self contentOcclusionRectangles];
  v16 = [builder appendObject:contentOcclusionRectangles];

  v17 = [builder hash];
  return v17;
}

- (id)description
{
  objc_initWeak(&location, self);
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __44__PRUISPosterSnapshotDescriptor_description__block_invoke;
  v37[3] = &unk_1E83A7FE0;
  objc_copyWeak(&v38, &location);
  v4 = __44__PRUISPosterSnapshotDescriptor_description__block_invoke(v37);
  v5 = [v3 appendObject:v4 withName:@"interfaceOrientation"];

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __44__PRUISPosterSnapshotDescriptor_description__block_invoke_2;
  v35[3] = &unk_1E83A7FE0;
  objc_copyWeak(&v36, &location);
  v6 = __44__PRUISPosterSnapshotDescriptor_description__block_invoke_2(v35);
  v7 = [v3 appendObject:v6 withName:@"userInterfaceStyle"];

  v30 = MEMORY[0x1E69E9820];
  v31 = 3221225472;
  v32 = __44__PRUISPosterSnapshotDescriptor_description__block_invoke_3;
  v33 = &unk_1E83A7FE0;
  objc_copyWeak(&v34, &location);
  v8 = __44__PRUISPosterSnapshotDescriptor_description__block_invoke_3(&v30);
  v9 = [v3 appendObject:v8 withName:{@"accessibilityContrast", v30, v31}];

  displayConfiguration = [(PRUISPosterSnapshotDescriptor *)self displayConfiguration];
  [displayConfiguration bounds];
  v42.origin.x = v11;
  v42.origin.y = v12;
  v42.size.width = v13;
  v42.size.height = v14;
  v15 = CGRectEqualToRect(self->_canvasBounds, v42);

  if (!v15)
  {
    v16 = [v3 appendRect:@"canvasBounds" withName:{self->_canvasBounds.origin.x, self->_canvasBounds.origin.y, self->_canvasBounds.size.width, self->_canvasBounds.size.height}];
  }

  snapshotDefinition = [(PRUISPosterSnapshotDescriptor *)self snapshotDefinition];
  v18 = [v3 appendObject:snapshotDefinition withName:@"snapshotDefinition"];

  displayConfiguration2 = [(PRUISPosterSnapshotDescriptor *)self displayConfiguration];
  v20 = [v3 appendObject:displayConfiguration2 withName:@"displayConfiguration"];

  [(PRUISPosterSnapshotDescriptor *)self persistenceScale];
  if (v21 != 1.0)
  {
    [(PRUISPosterSnapshotDescriptor *)self persistenceScale];
    v22 = [v3 appendFloat:@"persistenceScale" withName:4 decimalPrecision:?];
  }

  v23 = [v3 appendBool:-[PRUISPosterSnapshotDescriptor determineColorStatistics](self withName:{"determineColorStatistics"), @"determineColorStatistics"}];
  [(PRUISPosterSnapshotDescriptor *)self salientContentRectangle];
  if (!CGRectIsInfinite(v41))
  {
    v24 = [v3 appendRect:@"salientContentRectangle" withName:{self->_salientContentRectangle.origin.x, self->_salientContentRectangle.origin.y, self->_salientContentRectangle.size.width, self->_salientContentRectangle.size.height}];
  }

  contentOcclusionRectangles = [(PRUISPosterSnapshotDescriptor *)self contentOcclusionRectangles];

  if (contentOcclusionRectangles)
  {
    contentOcclusionRectangles2 = [(PRUISPosterSnapshotDescriptor *)self contentOcclusionRectangles];
    v27 = [v3 appendObject:contentOcclusionRectangles2 withName:@"contentOcclusionRectangles"];
  }

  build = [v3 build];
  objc_destroyWeak(&v34);
  objc_destroyWeak(&v36);
  objc_destroyWeak(&v38);

  objc_destroyWeak(&location);

  return build;
}

__CFString *__44__PRUISPosterSnapshotDescriptor_description__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained interfaceOrientation];

  if ((v2 - 1) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E83A8000[v2 - 1];
  }
}

__CFString *__44__PRUISPosterSnapshotDescriptor_description__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained userInterfaceStyle];

  v3 = @"Unspecified";
  if (v2 == 1)
  {
    v3 = @"Light";
  }

  if (v2 == 2)
  {
    return @"Dark";
  }

  else
  {
    return v3;
  }
}

__CFString *__44__PRUISPosterSnapshotDescriptor_description__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained accessibilityContrast];

  v3 = @"Normal";
  if (v2 == 1)
  {
    v3 = @"High";
  }

  if (v2 == -1)
  {
    return @"Unspecified";
  }

  else
  {
    return v3;
  }
}

- (PUIPosterSnapshotDescriptor)underlyingSnapshotDescriptor
{
  interfaceOrientation = [(PRUISPosterSnapshotDescriptor *)self interfaceOrientation];
  v4 = objc_alloc(MEMORY[0x1E69C55F0]);
  snapshotDefinition = [(PRUISPosterSnapshotDescriptor *)self snapshotDefinition];
  levelSets = [snapshotDefinition levelSets];
  v7 = [levelSets bs_map:&__block_literal_global_13];
  snapshotDefinition2 = [(PRUISPosterSnapshotDescriptor *)self snapshotDefinition];
  uniqueIdentifier = [snapshotDefinition2 uniqueIdentifier];
  [(PRUISPosterSnapshotDescriptor *)self persistenceScale];
  v10 = [v4 initWithLevelSets:v7 snapshotDefinitionIdentifier:uniqueIdentifier persistenceScale:?];

  contentOcclusionRectangles = [(PRUISPosterSnapshotDescriptor *)self contentOcclusionRectangles];
  if (contentOcclusionRectangles)
  {
    v12 = objc_alloc(MEMORY[0x1E69C5580]);
    allRects = [contentOcclusionRectangles allRects];
    v14 = [v12 initWithNameToRectMap:allRects];
  }

  else
  {
    v14 = 0;
  }

  v15 = objc_alloc(MEMORY[0x1E69C5610]);
  displayConfiguration = [(PRUISPosterSnapshotDescriptor *)self displayConfiguration];
  [(PRUISPosterSnapshotDescriptor *)self canvasBounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  userInterfaceStyle = [(PRUISPosterSnapshotDescriptor *)self userInterfaceStyle];
  accessibilityContrast = [(PRUISPosterSnapshotDescriptor *)self accessibilityContrast];
  [(PRUISPosterSnapshotDescriptor *)self salientContentRectangle];
  v31 = [v15 initWithDisplayConfiguration:displayConfiguration canvasBounds:1 interfaceOrientation:interfaceOrientation deviceOrientation:userInterfaceStyle userInterfaceStyle:accessibilityContrast accessibilityContrast:v14 salientContentRectangle:v18 contentOcclusionRectangles:{v20, v22, v24, v27, v28, v29, v30}];

  v32 = [objc_alloc(MEMORY[0x1E69C55B0]) initWithDesiredLegibilitySettings:0 determineColorStatistics:{-[PRUISPosterSnapshotDescriptor determineColorStatistics](self, "determineColorStatistics")}];
  v33 = [objc_alloc(MEMORY[0x1E69C55D8]) initWithOutputDescriptor:v10 sceneDescriptor:v31 attachments:0 analysis:v32];

  return v33;
}

id __61__PRUISPosterSnapshotDescriptor_underlyingSnapshotDescriptor__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69C5590];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 levels];

  v6 = [v4 initWithSet:v5];

  return v6;
}

- (CGRect)canvasBounds
{
  x = self->_canvasBounds.origin.x;
  y = self->_canvasBounds.origin.y;
  width = self->_canvasBounds.size.width;
  height = self->_canvasBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)salientContentRectangle
{
  x = self->_salientContentRectangle.origin.x;
  y = self->_salientContentRectangle.origin.y;
  width = self->_salientContentRectangle.size.width;
  height = self->_salientContentRectangle.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)initWithSnapshotDescriptor:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"snapshotDescriptor"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"PRUISPosterSnapshotDescriptor.m";
    v16 = 1024;
    v17 = 45;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1CAE63000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end