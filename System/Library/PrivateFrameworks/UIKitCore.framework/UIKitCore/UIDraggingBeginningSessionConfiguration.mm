@interface UIDraggingBeginningSessionConfiguration
+ (UIDraggingBeginningSessionConfiguration)configurationWithItems:(id)items dataOwner:(int64_t)owner initialCentroidInSourceWindow:(CAPoint3D)window requiredContextIds:(id)ids sourceView:(id)view accessibilityEndpoint:(id)endpoint;
+ (UIDraggingBeginningSessionConfiguration)configurationWithItems:(id)items dataOwner:(int64_t)owner pointerTouch:(id)touch requiredContextIds:(id)ids sourceView:(id)view;
+ (UIDraggingBeginningSessionConfiguration)configurationWithItems:(id)items dataOwner:(int64_t)owner touches:(id)touches requiredContextIds:(id)ids sourceView:(id)view;
+ (UIDraggingBeginningSessionConfiguration)configurationWithItems:(id)items initialCentroidInSourceWindow:(CAPoint3D)window sourceView:(id)view;
- (UIDraggingBeginningSessionConfiguration)initWithItems:(id)items dataOwner:(int64_t)owner requiredContextIds:(id)ids sourceView:(id)view;
@end

@implementation UIDraggingBeginningSessionConfiguration

- (UIDraggingBeginningSessionConfiguration)initWithItems:(id)items dataOwner:(int64_t)owner requiredContextIds:(id)ids sourceView:(id)view
{
  v48[1] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  idsCopy = ids;
  viewCopy = view;
  v46.receiver = self;
  v46.super_class = UIDraggingBeginningSessionConfiguration;
  v14 = [(UIDraggingBeginningSessionConfiguration *)&v46 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_items, items);
    v15->_dataOwner = owner;
    objc_storeStrong(&v15->_sourceView, view);
    layer = [viewCopy layer];
    _window = [viewCopy _window];
    windowScene = [_window windowScene];

    _sceneIdentifier = [windowScene _sceneIdentifier];
    [(UIDraggingSessionConfiguration *)v15 setSceneIdentifier:_sceneIdentifier];

    session = [windowScene session];
    persistentIdentifier = [session persistentIdentifier];
    [(UIDraggingSessionConfiguration *)v15 setPersistentSceneIdentifier:persistentIdentifier];

    v22 = objc_alloc_init(_DUITargetLayerDescriptor);
    context = [layer context];
    -[_DUITargetLayerDescriptor setContextID:](v22, "setContextID:", [context contextId]);

    [(_DUITargetLayerDescriptor *)v22 setRenderID:CALayerGetRenderId()];
    systemShellHostingEnvironment = [windowScene systemShellHostingEnvironment];
    systemShellHostingSpaceIdentifier = [systemShellHostingEnvironment systemShellHostingSpaceIdentifier];
    [(_DUITargetLayerDescriptor *)v22 setSystemShellHostingSpaceIdentifier:systemShellHostingSpaceIdentifier];

    [(UIDraggingSessionConfiguration *)v15 setCoordinateSpaceSourceLayerContext:v22];
    [(UIDraggingSessionConfiguration *)v15 setSupportsSystemDrag:1];
    v26 = objc_alloc_init(UIDraggingSystemTouchRoutingPolicy);
    if ([idsCopy count])
    {
      _screen = [viewCopy _screen];
      [_screen displayConfiguration];
      v42 = v22;
      v28 = windowScene;
      v29 = viewCopy;
      v30 = idsCopy;
      v32 = v31 = itemsCopy;
      hardwareIdentifier = [v32 hardwareIdentifier];
      v34 = hardwareIdentifier;
      v35 = _UIDraggingSystemEmbeddedDisplayIdentifier;
      if (hardwareIdentifier)
      {
        v35 = hardwareIdentifier;
      }

      v43 = layer;
      v36 = v35;

      itemsCopy = v31;
      idsCopy = v30;
      viewCopy = v29;
      windowScene = v28;
      v22 = v42;

      v47 = v36;
      v48[0] = idsCopy;
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];

      layer = v43;
      [(UIDraggingSystemTouchRoutingPolicy *)v26 setContextIDsToAlwaysSendTouchesByDisplayIdentifier:v37];
    }

    [(UIDraggingSessionConfiguration *)v15 setRoutingPolicy:v26];

    indexSet = [MEMORY[0x1E696AD50] indexSet];
    items = v15->_items;
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __97__UIDraggingBeginningSessionConfiguration_initWithItems_dataOwner_requiredContextIds_sourceView___block_invoke;
    v44[3] = &unk_1E71248A0;
    v40 = indexSet;
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

+ (UIDraggingBeginningSessionConfiguration)configurationWithItems:(id)items dataOwner:(int64_t)owner touches:(id)touches requiredContextIds:(id)ids sourceView:(id)view
{
  v36 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  touchesCopy = touches;
  idsCopy = ids;
  viewCopy = view;
  v30 = itemsCopy;
  v16 = [[self alloc] initWithItems:itemsCopy dataOwner:owner requiredContextIds:idsCopy sourceView:viewCopy];
  v17 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = touchesCopy;
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
  window = [viewCopy window];
  [window _convertPointFromSceneReferenceSpace:{_CentroidOfTouches(v18, 0)}];
  v26 = v25;
  v28 = v27;

  [v16 setInitialCentroidInSourceWindow:{v26, v28, 0.0}];
  [v16 set_initialCentroid:{_CentroidOfTouchesInView(v18, viewCopy)}];

  return v16;
}

+ (UIDraggingBeginningSessionConfiguration)configurationWithItems:(id)items dataOwner:(int64_t)owner initialCentroidInSourceWindow:(CAPoint3D)window requiredContextIds:(id)ids sourceView:(id)view accessibilityEndpoint:(id)endpoint
{
  z = window.z;
  y = window.y;
  x = window.x;
  endpointCopy = endpoint;
  viewCopy = view;
  idsCopy = ids;
  itemsCopy = items;
  v20 = [[self alloc] initWithItems:itemsCopy dataOwner:owner requiredContextIds:idsCopy sourceView:viewCopy];

  [v20 setAxEndpoint:endpointCopy];
  [v20 setInitialCentroidInSourceWindow:{x, y, z}];
  window = [viewCopy window];
  [viewCopy convertPoint:window fromView:{x, y}];
  v23 = v22;
  v25 = v24;

  [v20 set_initialCentroid:{v23, v25, 0.0}];

  return v20;
}

+ (UIDraggingBeginningSessionConfiguration)configurationWithItems:(id)items dataOwner:(int64_t)owner pointerTouch:(id)touch requiredContextIds:(id)ids sourceView:(id)view
{
  v34[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  idsCopy = ids;
  touchCopy = touch;
  itemsCopy = items;
  v16 = [[self alloc] initWithItems:itemsCopy dataOwner:owner requiredContextIds:idsCopy sourceView:viewCopy];

  [v16 setInitiatedWithPointer:1];
  window = [viewCopy window];
  v34[0] = touchCopy;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  v19 = _CentroidOfTouches(v18, 0);
  v21 = v20;

  [window _convertPointFromSceneReferenceSpace:{v19, v21}];
  v23 = v22;
  v25 = v24;

  [v16 setInitialCentroidInSourceWindow:{v23, v25, 0.0}];
  v33 = touchCopy;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];

  v27 = _CentroidOfTouchesInView(v26, viewCopy);
  v29 = v28;
  v31 = v30;

  [v16 set_initialCentroid:{v27, v29, v31}];

  return v16;
}

+ (UIDraggingBeginningSessionConfiguration)configurationWithItems:(id)items initialCentroidInSourceWindow:(CAPoint3D)window sourceView:(id)view
{
  z = window.z;
  y = window.y;
  x = window.x;
  viewCopy = view;
  itemsCopy = items;
  _window = [viewCopy _window];
  windowScene = [_window windowScene];

  v14 = [self alloc];
  v15 = [v14 initWithItems:itemsCopy dataOwner:1 requiredContextIds:MEMORY[0x1E695E0F0] sourceView:viewCopy];

  [v15 setInitialCentroidInSourceWindow:{x, y, z}];
  v16 = objc_alloc_init(_DUITargetLayerDescriptor);
  layer = [viewCopy layer];
  context = [layer context];
  -[_DUITargetLayerDescriptor setContextID:](v16, "setContextID:", [context contextId]);

  layer2 = [viewCopy layer];
  [(_DUITargetLayerDescriptor *)v16 setRenderID:CALayerGetRenderId()];

  systemShellHostingEnvironment = [windowScene systemShellHostingEnvironment];
  systemShellHostingSpaceIdentifier = [systemShellHostingEnvironment systemShellHostingSpaceIdentifier];
  [(_DUITargetLayerDescriptor *)v16 setSystemShellHostingSpaceIdentifier:systemShellHostingSpaceIdentifier];

  [v15 setCoordinateSpaceSourceLayerContext:v16];
  _sceneIdentifier = [windowScene _sceneIdentifier];
  [v15 setSceneIdentifier:_sceneIdentifier];

  session = [windowScene session];
  persistentIdentifier = [session persistentIdentifier];
  [v15 setPersistentSceneIdentifier:persistentIdentifier];

  [v15 setInitiatedWithPointer:1];
  [v15 setSupportsSystemDrag:1];
  [v15 setInitialCentroidInSourceWindow:{x, y, z}];
  [v15 setWantsPresentationUpdates:1];
  window = [viewCopy window];
  [viewCopy convertPoint:window fromView:{x, y}];
  v27 = v26;
  v29 = v28;

  [v15 set_initialCentroid:{v27, v29, 0.0}];

  return v15;
}

@end