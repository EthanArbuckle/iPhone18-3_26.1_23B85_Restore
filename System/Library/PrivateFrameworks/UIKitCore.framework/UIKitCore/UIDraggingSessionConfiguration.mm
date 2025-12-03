@interface UIDraggingSessionConfiguration
+ (id)configurationWithItemCollection:(id)collection dataProviderEndpoint:(id)endpoint initialCentroidInSourceWindow:(CAPoint3D)window sourceView:(id)view;
- ($1AB5FA073B851C12C2339EC22442E995)associatedObjectManipulationDragItemSize;
- (CAPoint3D)_initialCentroid;
- (CAPoint3D)initialCentroid3D;
- (CAPoint3D)initialCentroidInSourceWindow;
- (CGPoint)initialCentroid;
- (CGSize)maximumResizableSize;
- (CGSize)minimumResizableSize;
- (CGSize)originalScale;
- (UIDraggingSessionConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setInitialCentroid:(CGPoint)centroid;
@end

@implementation UIDraggingSessionConfiguration

- (CGPoint)initialCentroid
{
  x = self->_initialCentroid.x;
  y = self->_initialCentroid.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setInitialCentroid:(CGPoint)centroid
{
  self->_initialCentroid.x = centroid.x;
  self->_initialCentroid.y = centroid.y;
  self->_initialCentroid.z = 0.0;
}

- (UIDraggingSessionConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v76.receiver = self;
  v76.super_class = UIDraggingSessionConfiguration;
  v5 = [(UIDraggingSessionConfiguration *)&v76 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v75 = v5;
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"touchIDs"];
    touchIDs = v75->_touchIDs;
    v75->_touchIDs = v9;

    v74 = v75;
    [coderCopy decodeCGPointForKey:@"initialCentroid"];
    v75->_initialCentroid.x = v11;
    v74->_initialCentroid.y = v12;
    v74->_initialCentroid.z = 0.0;
    v73 = v74;
    [coderCopy decodeCGPointForKey:@"initialCentroidInSourceWindow"];
    v74->_initialCentroidInSourceWindow.x = v13;
    v73->_initialCentroidInSourceWindow.y = v14;
    v73->_initialCentroidInSourceWindow.z = 0.0;
    v15 = objc_opt_class();
    v72 = v73;
    v16 = [coderCopy decodeObjectOfClass:v15 forKey:@"coordinateSpaceSourceLayerContext"];
    coordinateSpaceSourceLayerContext = v72->_coordinateSpaceSourceLayerContext;
    v72->_coordinateSpaceSourceLayerContext = v16;

    v18 = objc_opt_class();
    v71 = v72;
    v19 = [coderCopy decodeObjectOfClass:v18 forKey:@"routingPolicy"];
    routingPolicy = v71->_routingPolicy;
    v71->_routingPolicy = v19;

    allowedClassesForSecureCoding = [MEMORY[0x1E69BC808] allowedClassesForSecureCoding];
    v70 = v71;
    v22 = [coderCopy decodeObjectOfClasses:allowedClassesForSecureCoding forKey:@"itemCollection"];
    itemCollection = v70->_itemCollection;
    v70->_itemCollection = v22;

    v24 = objc_opt_class();
    v69 = v70;
    v25 = [coderCopy decodeObjectOfClass:v24 forKey:@"dataProviderEndpoint"];
    dataProviderEndpoint = v69->_dataProviderEndpoint;
    v69->_dataProviderEndpoint = v25;

    v27 = objc_opt_class();
    v68 = v69;
    v28 = [coderCopy decodeObjectOfClass:v27 forKey:@"axEndpoint"];
    axEndpoint = v68->_axEndpoint;
    v68->_axEndpoint = v28;

    v67 = v68;
    v67[8] = [coderCopy decodeBoolForKey:@"supportsSystemDrag"];
    v30 = objc_opt_class();
    v66 = v67;
    v31 = [coderCopy decodeObjectOfClass:v30 forKey:@"sceneIdentifier"];
    v32 = v66[9];
    v66[9] = v31;

    v33 = objc_opt_class();
    v65 = v66;
    v34 = [coderCopy decodeObjectOfClass:v33 forKey:@"persistentSceneIdentifier"];
    v35 = v65[10];
    v65[10] = v34;

    v64 = v65;
    v64[9] = [coderCopy decodeBoolForKey:@"initiatedWithPointer"];
    v36 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v63 = v64;
    v37 = [coderCopy decodeObjectOfClasses:v36 forKey:@"preferredPreviewIndexes"];
    v38 = v63[11];
    v63[11] = v37;

    v62 = v63;
    v62[10] = [coderCopy decodeBoolForKey:@"avoidsKeyboardSuppression"];
    v61 = v62;
    v61[11] = [coderCopy decodeBoolForKey:@"rotatable"];
    v60 = v61;
    v60[12] = [coderCopy decodeBoolForKey:@"resizable"];
    v59 = v60;
    [coderCopy decodeCGSizeForKey:@"minimumResizableSize"];
    *(v60 + 14) = v39;
    v59[15] = v40;
    v58 = v59;
    [coderCopy decodeCGSizeForKey:@"maximumResizableSize"];
    v59[16] = v41;
    v58[17] = v42;
    v57 = v58;
    v57[13] = [coderCopy decodeBoolForKey:@"wantsElasticEffects"];
    v56 = v57;
    [coderCopy decodeDoubleForKey:@"originalRotation"];
    v56[12] = v43;
    v55 = v56;
    [coderCopy decodeCGSizeForKey:@"originalScale"];
    v56[18] = v44;
    v55[19] = v45;
    v54 = v55;
    v54[14] = [coderCopy decodeBoolForKey:@"wantsPresentationUpdates"];
    v53 = v54;
    v53[15] = [coderCopy decodeBoolForKey:@"sessionIsRestrictedToSourceApplication"];
    v52 = v53;
    v52[16] = [coderCopy decodeBoolForKey:@"sessionIsRestrictedToLocalDevice"];
    v51 = v52;
    v51[13] = [coderCopy decodeInt64ForKey:@"associatedObjectManipulationSessionIdentifier"];
    v50 = v51;
    [coderCopy decodeUISize3DForKey:@"associatedObjectManipulationDragItemSize"];
    v51[29] = v46;
    v50[30] = v47;
    v50[31] = v48;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  touchIDs = [(UIDraggingSessionConfiguration *)self touchIDs];
  [coderCopy encodeObject:touchIDs forKey:@"touchIDs"];

  [coderCopy encodeCGPoint:@"initialCentroid" forKey:{self->_initialCentroid.x, self->_initialCentroid.y}];
  [coderCopy encodeCGPoint:@"initialCentroidInSourceWindow" forKey:{self->_initialCentroidInSourceWindow.x, self->_initialCentroidInSourceWindow.y}];
  routingPolicy = [(UIDraggingSessionConfiguration *)self routingPolicy];
  [coderCopy encodeObject:routingPolicy forKey:@"routingPolicy"];

  itemCollection = [(UIDraggingSessionConfiguration *)self itemCollection];
  [coderCopy encodeObject:itemCollection forKey:@"itemCollection"];

  dataProviderEndpoint = [(UIDraggingSessionConfiguration *)self dataProviderEndpoint];
  [coderCopy encodeObject:dataProviderEndpoint forKey:@"dataProviderEndpoint"];

  axEndpoint = [(UIDraggingSessionConfiguration *)self axEndpoint];
  [coderCopy encodeObject:axEndpoint forKey:@"axEndpoint"];

  [coderCopy encodeBool:-[UIDraggingSessionConfiguration supportsSystemDrag](self forKey:{"supportsSystemDrag"), @"supportsSystemDrag"}];
  sceneIdentifier = [(UIDraggingSessionConfiguration *)self sceneIdentifier];
  [coderCopy encodeObject:sceneIdentifier forKey:@"sceneIdentifier"];

  persistentSceneIdentifier = [(UIDraggingSessionConfiguration *)self persistentSceneIdentifier];
  [coderCopy encodeObject:persistentSceneIdentifier forKey:@"persistentSceneIdentifier"];

  [coderCopy encodeBool:-[UIDraggingSessionConfiguration initiatedWithPointer](self forKey:{"initiatedWithPointer"), @"initiatedWithPointer"}];
  coordinateSpaceSourceLayerContext = [(UIDraggingSessionConfiguration *)self coordinateSpaceSourceLayerContext];

  if (coordinateSpaceSourceLayerContext)
  {
    coordinateSpaceSourceLayerContext2 = [(UIDraggingSessionConfiguration *)self coordinateSpaceSourceLayerContext];
    [coderCopy encodeObject:coordinateSpaceSourceLayerContext2 forKey:@"coordinateSpaceSourceLayerContext"];
  }

  preferredPreviewIndexes = [(UIDraggingSessionConfiguration *)self preferredPreviewIndexes];

  if (preferredPreviewIndexes)
  {
    preferredPreviewIndexes2 = [(UIDraggingSessionConfiguration *)self preferredPreviewIndexes];
    [coderCopy encodeObject:preferredPreviewIndexes2 forKey:@"preferredPreviewIndexes"];
  }

  [coderCopy encodeBool:-[UIDraggingSessionConfiguration avoidsKeyboardSuppression](self forKey:{"avoidsKeyboardSuppression"), @"avoidsKeyboardSuppression"}];
  [coderCopy encodeBool:-[UIDraggingSessionConfiguration rotatable](self forKey:{"rotatable"), @"rotatable"}];
  [coderCopy encodeBool:-[UIDraggingSessionConfiguration resizable](self forKey:{"resizable"), @"resizable"}];
  [(UIDraggingSessionConfiguration *)self minimumResizableSize];
  [coderCopy encodeCGSize:@"minimumResizableSize" forKey:?];
  [(UIDraggingSessionConfiguration *)self maximumResizableSize];
  [coderCopy encodeCGSize:@"maximumResizableSize" forKey:?];
  [coderCopy encodeBool:-[UIDraggingSessionConfiguration wantsElasticEffects](self forKey:{"wantsElasticEffects"), @"wantsElasticEffects"}];
  [(UIDraggingSessionConfiguration *)self originalRotation];
  [coderCopy encodeDouble:@"originalRotation" forKey:?];
  [(UIDraggingSessionConfiguration *)self originalScale];
  [coderCopy encodeCGSize:@"originalScale" forKey:?];
  [coderCopy encodeBool:-[UIDraggingSessionConfiguration wantsPresentationUpdates](self forKey:{"wantsPresentationUpdates"), @"wantsPresentationUpdates"}];
  [coderCopy encodeBool:-[UIDraggingSessionConfiguration sessionIsRestrictedToSourceApplication](self forKey:{"sessionIsRestrictedToSourceApplication"), @"sessionIsRestrictedToSourceApplication"}];
  [coderCopy encodeBool:-[UIDraggingSessionConfiguration sessionIsRestrictedToLocalDevice](self forKey:{"sessionIsRestrictedToLocalDevice"), @"sessionIsRestrictedToLocalDevice"}];
  [coderCopy encodeInt64:-[UIDraggingSessionConfiguration associatedObjectManipulationSessionIdentifier](self forKey:{"associatedObjectManipulationSessionIdentifier"), @"associatedObjectManipulationSessionIdentifier"}];
  [(UIDraggingSessionConfiguration *)self associatedObjectManipulationDragItemSize];
  [coderCopy encodeUISize3D:@"associatedObjectManipulationDragItemSize" forKey:{MEMORY[0x1E69E9820], 3221225472, __50__UIDraggingSessionConfiguration_encodeWithCoder___block_invoke_26, &unk_1E70F7FE0, self}];
}

- (CAPoint3D)_initialCentroid
{
  x = self->_initialCentroid.x;
  y = self->_initialCentroid.y;
  z = self->_initialCentroid.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)minimumResizableSize
{
  width = self->_minimumResizableSize.width;
  height = self->_minimumResizableSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)maximumResizableSize
{
  width = self->_maximumResizableSize.width;
  height = self->_maximumResizableSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)originalScale
{
  width = self->_originalScale.width;
  height = self->_originalScale.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CAPoint3D)initialCentroid3D
{
  x = self->_initialCentroid3D.x;
  y = self->_initialCentroid3D.y;
  z = self->_initialCentroid3D.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (CAPoint3D)initialCentroidInSourceWindow
{
  x = self->_initialCentroidInSourceWindow.x;
  y = self->_initialCentroidInSourceWindow.y;
  z = self->_initialCentroidInSourceWindow.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)associatedObjectManipulationDragItemSize
{
  width = self->_associatedObjectManipulationDragItemSize.width;
  height = self->_associatedObjectManipulationDragItemSize.height;
  depth = self->_associatedObjectManipulationDragItemSize.depth;
  result.var2 = depth;
  result.var1 = height;
  result.var0 = width;
  return result;
}

+ (id)configurationWithItemCollection:(id)collection dataProviderEndpoint:(id)endpoint initialCentroidInSourceWindow:(CAPoint3D)window sourceView:(id)view
{
  z = window.z;
  y = window.y;
  x = window.x;
  viewCopy = view;
  endpointCopy = endpoint;
  collectionCopy = collection;
  _window = [viewCopy _window];
  windowScene = [_window windowScene];

  v16 = objc_opt_new();
  [v16 setItemCollection:collectionCopy];

  [v16 setDataProviderEndpoint:endpointCopy];
  v17 = objc_alloc_init(_DUITargetLayerDescriptor);
  layer = [viewCopy layer];
  context = [layer context];
  -[_DUITargetLayerDescriptor setContextID:](v17, "setContextID:", [context contextId]);

  layer2 = [viewCopy layer];
  [(_DUITargetLayerDescriptor *)v17 setRenderID:CALayerGetRenderId()];

  systemShellHostingEnvironment = [windowScene systemShellHostingEnvironment];
  systemShellHostingSpaceIdentifier = [systemShellHostingEnvironment systemShellHostingSpaceIdentifier];
  [(_DUITargetLayerDescriptor *)v17 setSystemShellHostingSpaceIdentifier:systemShellHostingSpaceIdentifier];

  [v16 setCoordinateSpaceSourceLayerContext:v17];
  _sceneIdentifier = [windowScene _sceneIdentifier];
  [v16 setSceneIdentifier:_sceneIdentifier];

  session = [windowScene session];
  persistentIdentifier = [session persistentIdentifier];
  [v16 setPersistentSceneIdentifier:persistentIdentifier];

  [v16 setInitiatedWithPointer:1];
  [v16 setSupportsSystemDrag:1];
  [v16 setInitialCentroidInSourceWindow:{x, y, z}];
  window = [viewCopy window];
  [viewCopy convertPoint:window fromView:{x, y}];
  v28 = v27;
  v30 = v29;

  [v16 set_initialCentroid:{v28, v30, 0.0}];

  return v16;
}

@end