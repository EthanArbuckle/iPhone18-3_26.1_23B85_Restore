@interface UIDraggingBeginningSessionConfiguration
+ (UIDraggingBeginningSessionConfiguration)configurationWithItems:(id)a3 dataOwner:(int64_t)a4 initialCentroidInSourceWindow:(CAPoint3D)a5 requiredContextIds:(id)a6 sourceView:(id)a7 accessibilityEndpoint:(id)a8;
+ (UIDraggingBeginningSessionConfiguration)configurationWithItems:(id)a3 dataOwner:(int64_t)a4 pointerTouch:(id)a5 requiredContextIds:(id)a6 sourceView:(id)a7;
+ (UIDraggingBeginningSessionConfiguration)configurationWithItems:(id)a3 dataOwner:(int64_t)a4 touches:(id)a5 requiredContextIds:(id)a6 sourceView:(id)a7;
+ (UIDraggingBeginningSessionConfiguration)configurationWithItems:(id)a3 initialCentroidInSourceWindow:(CAPoint3D)a4 sourceView:(id)a5;
- (UIDraggingBeginningSessionConfiguration)initWithItems:(id)a3 dataOwner:(int64_t)a4 requiredContextIds:(id)a5 sourceView:(id)a6;
@end

@implementation UIDraggingBeginningSessionConfiguration

- (UIDraggingBeginningSessionConfiguration)initWithItems:(id)a3 dataOwner:(int64_t)a4 requiredContextIds:(id)a5 sourceView:(id)a6
{
  v48[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v46.receiver = self;
  v46.super_class = UIDraggingBeginningSessionConfiguration;
  v14 = [(UIDraggingBeginningSessionConfiguration *)&v46 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_items, a3);
    v15->_dataOwner = a4;
    objc_storeStrong(&v15->_sourceView, a6);
    v16 = [v13 layer];
    v17 = [v13 _window];
    v18 = [v17 windowScene];

    v19 = [v18 _sceneIdentifier];
    [(UIDraggingSessionConfiguration *)v15 setSceneIdentifier:v19];

    v20 = [v18 session];
    v21 = [v20 persistentIdentifier];
    [(UIDraggingSessionConfiguration *)v15 setPersistentSceneIdentifier:v21];

    v22 = objc_alloc_init(_DUITargetLayerDescriptor);
    v23 = [v16 context];
    -[_DUITargetLayerDescriptor setContextID:](v22, "setContextID:", [v23 contextId]);

    [(_DUITargetLayerDescriptor *)v22 setRenderID:CALayerGetRenderId()];
    v24 = [v18 systemShellHostingEnvironment];
    v25 = [v24 systemShellHostingSpaceIdentifier];
    [(_DUITargetLayerDescriptor *)v22 setSystemShellHostingSpaceIdentifier:v25];

    [(UIDraggingSessionConfiguration *)v15 setCoordinateSpaceSourceLayerContext:v22];
    [(UIDraggingSessionConfiguration *)v15 setSupportsSystemDrag:1];
    v26 = objc_alloc_init(UIDraggingSystemTouchRoutingPolicy);
    if ([v12 count])
    {
      v27 = [v13 _screen];
      [v27 displayConfiguration];
      v42 = v22;
      v28 = v18;
      v29 = v13;
      v30 = v12;
      v32 = v31 = v11;
      v33 = [v32 hardwareIdentifier];
      v34 = v33;
      v35 = _UIDraggingSystemEmbeddedDisplayIdentifier;
      if (v33)
      {
        v35 = v33;
      }

      v43 = v16;
      v36 = v35;

      v11 = v31;
      v12 = v30;
      v13 = v29;
      v18 = v28;
      v22 = v42;

      v47 = v36;
      v48[0] = v12;
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];

      v16 = v43;
      [(UIDraggingSystemTouchRoutingPolicy *)v26 setContextIDsToAlwaysSendTouchesByDisplayIdentifier:v37];
    }

    [(UIDraggingSessionConfiguration *)v15 setRoutingPolicy:v26];

    v38 = [MEMORY[0x1E696AD50] indexSet];
    items = v15->_items;
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __97__UIDraggingBeginningSessionConfiguration_initWithItems_dataOwner_requiredContextIds_sourceView___block_invoke;
    v44[3] = &unk_1E71248A0;
    v40 = v38;
    v45 = v40;
    [(NSArray *)items enumerateObjectsUsingBlock:v44];
    if ([v40 count])
    {
      [(UIDraggingSessionConfiguration *)v15 setPreferredPreviewIndexes:v40];
    }
  }

  return v15;
}

void __97__UIDraggingBeginningSessionConfiguration_initWithItems_dataOwner_requiredContextIds_sourceView___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  v5 = [v10 _targetedLiftPreview];
  if (v5)
  {
    v6 = v5;
    v7 = [v10 _targetedLiftPreview];
    v8 = [v7 _duiPreview];
    v9 = [v8 preferredStackOrder];

    if ((v9 & 0x8000000000000000) == 0)
    {
      [*(a1 + 32) addIndex:a3];
    }
  }
}

+ (UIDraggingBeginningSessionConfiguration)configurationWithItems:(id)a3 dataOwner:(int64_t)a4 touches:(id)a5 requiredContextIds:(id)a6 sourceView:(id)a7
{
  v36 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v30 = v12;
  v16 = [[a1 alloc] initWithItems:v12 dataOwner:a4 requiredContextIds:v14 sourceView:v15];
  v17 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = v13;
  v19 = [v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v32;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(*(*(&v31 + 1) + 8 * i), "_touchIdentifier")}];
        [v17 addObject:v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v20);
  }

  [v16 setTouchIDs:v17];
  v24 = [v15 window];
  [v24 _convertPointFromSceneReferenceSpace:{_CentroidOfTouches(v18, 0)}];
  v26 = v25;
  v28 = v27;

  [v16 setInitialCentroidInSourceWindow:{v26, v28, 0.0}];
  [v16 set_initialCentroid:{_CentroidOfTouchesInView(v18, v15)}];

  return v16;
}

+ (UIDraggingBeginningSessionConfiguration)configurationWithItems:(id)a3 dataOwner:(int64_t)a4 initialCentroidInSourceWindow:(CAPoint3D)a5 requiredContextIds:(id)a6 sourceView:(id)a7 accessibilityEndpoint:(id)a8
{
  z = a5.z;
  y = a5.y;
  x = a5.x;
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a3;
  v20 = [[a1 alloc] initWithItems:v19 dataOwner:a4 requiredContextIds:v18 sourceView:v17];

  [v20 setAxEndpoint:v16];
  [v20 setInitialCentroidInSourceWindow:{x, y, z}];
  v21 = [v17 window];
  [v17 convertPoint:v21 fromView:{x, y}];
  v23 = v22;
  v25 = v24;

  [v20 set_initialCentroid:{v23, v25, 0.0}];

  return v20;
}

+ (UIDraggingBeginningSessionConfiguration)configurationWithItems:(id)a3 dataOwner:(int64_t)a4 pointerTouch:(id)a5 requiredContextIds:(id)a6 sourceView:(id)a7
{
  v34[1] = *MEMORY[0x1E69E9840];
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v16 = [[a1 alloc] initWithItems:v15 dataOwner:a4 requiredContextIds:v13 sourceView:v12];

  [v16 setInitiatedWithPointer:1];
  v17 = [v12 window];
  v34[0] = v14;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  v19 = _CentroidOfTouches(v18, 0);
  v21 = v20;

  [v17 _convertPointFromSceneReferenceSpace:{v19, v21}];
  v23 = v22;
  v25 = v24;

  [v16 setInitialCentroidInSourceWindow:{v23, v25, 0.0}];
  v33 = v14;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];

  v27 = _CentroidOfTouchesInView(v26, v12);
  v29 = v28;
  v31 = v30;

  [v16 set_initialCentroid:{v27, v29, v31}];

  return v16;
}

+ (UIDraggingBeginningSessionConfiguration)configurationWithItems:(id)a3 initialCentroidInSourceWindow:(CAPoint3D)a4 sourceView:(id)a5
{
  z = a4.z;
  y = a4.y;
  x = a4.x;
  v10 = a5;
  v11 = a3;
  v12 = [v10 _window];
  v13 = [v12 windowScene];

  v14 = [a1 alloc];
  v15 = [v14 initWithItems:v11 dataOwner:1 requiredContextIds:MEMORY[0x1E695E0F0] sourceView:v10];

  [v15 setInitialCentroidInSourceWindow:{x, y, z}];
  v16 = objc_alloc_init(_DUITargetLayerDescriptor);
  v17 = [v10 layer];
  v18 = [v17 context];
  -[_DUITargetLayerDescriptor setContextID:](v16, "setContextID:", [v18 contextId]);

  v19 = [v10 layer];
  [(_DUITargetLayerDescriptor *)v16 setRenderID:CALayerGetRenderId()];

  v20 = [v13 systemShellHostingEnvironment];
  v21 = [v20 systemShellHostingSpaceIdentifier];
  [(_DUITargetLayerDescriptor *)v16 setSystemShellHostingSpaceIdentifier:v21];

  [v15 setCoordinateSpaceSourceLayerContext:v16];
  v22 = [v13 _sceneIdentifier];
  [v15 setSceneIdentifier:v22];

  v23 = [v13 session];
  v24 = [v23 persistentIdentifier];
  [v15 setPersistentSceneIdentifier:v24];

  [v15 setInitiatedWithPointer:1];
  [v15 setSupportsSystemDrag:1];
  [v15 setInitialCentroidInSourceWindow:{x, y, z}];
  [v15 setWantsPresentationUpdates:1];
  v25 = [v10 window];
  [v10 convertPoint:v25 fromView:{x, y}];
  v27 = v26;
  v29 = v28;

  [v15 set_initialCentroid:{v27, v29, 0.0}];

  return v15;
}

@end