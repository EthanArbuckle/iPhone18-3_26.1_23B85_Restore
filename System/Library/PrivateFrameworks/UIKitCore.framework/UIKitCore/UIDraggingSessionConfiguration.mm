@interface UIDraggingSessionConfiguration
+ (id)configurationWithItemCollection:(id)a3 dataProviderEndpoint:(id)a4 initialCentroidInSourceWindow:(CAPoint3D)a5 sourceView:(id)a6;
- ($1AB5FA073B851C12C2339EC22442E995)associatedObjectManipulationDragItemSize;
- (CAPoint3D)_initialCentroid;
- (CAPoint3D)initialCentroid3D;
- (CAPoint3D)initialCentroidInSourceWindow;
- (CGPoint)initialCentroid;
- (CGSize)maximumResizableSize;
- (CGSize)minimumResizableSize;
- (CGSize)originalScale;
- (UIDraggingSessionConfiguration)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setInitialCentroid:(CGPoint)a3;
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

- (void)setInitialCentroid:(CGPoint)a3
{
  self->_initialCentroid.x = a3.x;
  self->_initialCentroid.y = a3.y;
  self->_initialCentroid.z = 0.0;
}

- (UIDraggingSessionConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v76.receiver = self;
  v76.super_class = UIDraggingSessionConfiguration;
  v5 = [(UIDraggingSessionConfiguration *)&v76 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v75 = v5;
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"touchIDs"];
    touchIDs = v75->_touchIDs;
    v75->_touchIDs = v9;

    v74 = v75;
    [v4 decodeCGPointForKey:@"initialCentroid"];
    v75->_initialCentroid.x = v11;
    v74->_initialCentroid.y = v12;
    v74->_initialCentroid.z = 0.0;
    v73 = v74;
    [v4 decodeCGPointForKey:@"initialCentroidInSourceWindow"];
    v74->_initialCentroidInSourceWindow.x = v13;
    v73->_initialCentroidInSourceWindow.y = v14;
    v73->_initialCentroidInSourceWindow.z = 0.0;
    v15 = objc_opt_class();
    v72 = v73;
    v16 = [v4 decodeObjectOfClass:v15 forKey:@"coordinateSpaceSourceLayerContext"];
    coordinateSpaceSourceLayerContext = v72->_coordinateSpaceSourceLayerContext;
    v72->_coordinateSpaceSourceLayerContext = v16;

    v18 = objc_opt_class();
    v71 = v72;
    v19 = [v4 decodeObjectOfClass:v18 forKey:@"routingPolicy"];
    routingPolicy = v71->_routingPolicy;
    v71->_routingPolicy = v19;

    v21 = [MEMORY[0x1E69BC808] allowedClassesForSecureCoding];
    v70 = v71;
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"itemCollection"];
    itemCollection = v70->_itemCollection;
    v70->_itemCollection = v22;

    v24 = objc_opt_class();
    v69 = v70;
    v25 = [v4 decodeObjectOfClass:v24 forKey:@"dataProviderEndpoint"];
    dataProviderEndpoint = v69->_dataProviderEndpoint;
    v69->_dataProviderEndpoint = v25;

    v27 = objc_opt_class();
    v68 = v69;
    v28 = [v4 decodeObjectOfClass:v27 forKey:@"axEndpoint"];
    axEndpoint = v68->_axEndpoint;
    v68->_axEndpoint = v28;

    v67 = v68;
    v67[8] = [v4 decodeBoolForKey:@"supportsSystemDrag"];
    v30 = objc_opt_class();
    v66 = v67;
    v31 = [v4 decodeObjectOfClass:v30 forKey:@"sceneIdentifier"];
    v32 = v66[9];
    v66[9] = v31;

    v33 = objc_opt_class();
    v65 = v66;
    v34 = [v4 decodeObjectOfClass:v33 forKey:@"persistentSceneIdentifier"];
    v35 = v65[10];
    v65[10] = v34;

    v64 = v65;
    v64[9] = [v4 decodeBoolForKey:@"initiatedWithPointer"];
    v36 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v63 = v64;
    v37 = [v4 decodeObjectOfClasses:v36 forKey:@"preferredPreviewIndexes"];
    v38 = v63[11];
    v63[11] = v37;

    v62 = v63;
    v62[10] = [v4 decodeBoolForKey:@"avoidsKeyboardSuppression"];
    v61 = v62;
    v61[11] = [v4 decodeBoolForKey:@"rotatable"];
    v60 = v61;
    v60[12] = [v4 decodeBoolForKey:@"resizable"];
    v59 = v60;
    [v4 decodeCGSizeForKey:@"minimumResizableSize"];
    *(v60 + 14) = v39;
    v59[15] = v40;
    v58 = v59;
    [v4 decodeCGSizeForKey:@"maximumResizableSize"];
    v59[16] = v41;
    v58[17] = v42;
    v57 = v58;
    v57[13] = [v4 decodeBoolForKey:@"wantsElasticEffects"];
    v56 = v57;
    [v4 decodeDoubleForKey:@"originalRotation"];
    v56[12] = v43;
    v55 = v56;
    [v4 decodeCGSizeForKey:@"originalScale"];
    v56[18] = v44;
    v55[19] = v45;
    v54 = v55;
    v54[14] = [v4 decodeBoolForKey:@"wantsPresentationUpdates"];
    v53 = v54;
    v53[15] = [v4 decodeBoolForKey:@"sessionIsRestrictedToSourceApplication"];
    v52 = v53;
    v52[16] = [v4 decodeBoolForKey:@"sessionIsRestrictedToLocalDevice"];
    v51 = v52;
    v51[13] = [v4 decodeInt64ForKey:@"associatedObjectManipulationSessionIdentifier"];
    v50 = v51;
    [v4 decodeUISize3DForKey:@"associatedObjectManipulationDragItemSize"];
    v51[29] = v46;
    v50[30] = v47;
    v50[31] = v48;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UIDraggingSessionConfiguration *)self touchIDs];
  [v4 encodeObject:v5 forKey:@"touchIDs"];

  [v4 encodeCGPoint:@"initialCentroid" forKey:{self->_initialCentroid.x, self->_initialCentroid.y}];
  [v4 encodeCGPoint:@"initialCentroidInSourceWindow" forKey:{self->_initialCentroidInSourceWindow.x, self->_initialCentroidInSourceWindow.y}];
  v6 = [(UIDraggingSessionConfiguration *)self routingPolicy];
  [v4 encodeObject:v6 forKey:@"routingPolicy"];

  v7 = [(UIDraggingSessionConfiguration *)self itemCollection];
  [v4 encodeObject:v7 forKey:@"itemCollection"];

  v8 = [(UIDraggingSessionConfiguration *)self dataProviderEndpoint];
  [v4 encodeObject:v8 forKey:@"dataProviderEndpoint"];

  v9 = [(UIDraggingSessionConfiguration *)self axEndpoint];
  [v4 encodeObject:v9 forKey:@"axEndpoint"];

  [v4 encodeBool:-[UIDraggingSessionConfiguration supportsSystemDrag](self forKey:{"supportsSystemDrag"), @"supportsSystemDrag"}];
  v10 = [(UIDraggingSessionConfiguration *)self sceneIdentifier];
  [v4 encodeObject:v10 forKey:@"sceneIdentifier"];

  v11 = [(UIDraggingSessionConfiguration *)self persistentSceneIdentifier];
  [v4 encodeObject:v11 forKey:@"persistentSceneIdentifier"];

  [v4 encodeBool:-[UIDraggingSessionConfiguration initiatedWithPointer](self forKey:{"initiatedWithPointer"), @"initiatedWithPointer"}];
  v12 = [(UIDraggingSessionConfiguration *)self coordinateSpaceSourceLayerContext];

  if (v12)
  {
    v13 = [(UIDraggingSessionConfiguration *)self coordinateSpaceSourceLayerContext];
    [v4 encodeObject:v13 forKey:@"coordinateSpaceSourceLayerContext"];
  }

  v14 = [(UIDraggingSessionConfiguration *)self preferredPreviewIndexes];

  if (v14)
  {
    v15 = [(UIDraggingSessionConfiguration *)self preferredPreviewIndexes];
    [v4 encodeObject:v15 forKey:@"preferredPreviewIndexes"];
  }

  [v4 encodeBool:-[UIDraggingSessionConfiguration avoidsKeyboardSuppression](self forKey:{"avoidsKeyboardSuppression"), @"avoidsKeyboardSuppression"}];
  [v4 encodeBool:-[UIDraggingSessionConfiguration rotatable](self forKey:{"rotatable"), @"rotatable"}];
  [v4 encodeBool:-[UIDraggingSessionConfiguration resizable](self forKey:{"resizable"), @"resizable"}];
  [(UIDraggingSessionConfiguration *)self minimumResizableSize];
  [v4 encodeCGSize:@"minimumResizableSize" forKey:?];
  [(UIDraggingSessionConfiguration *)self maximumResizableSize];
  [v4 encodeCGSize:@"maximumResizableSize" forKey:?];
  [v4 encodeBool:-[UIDraggingSessionConfiguration wantsElasticEffects](self forKey:{"wantsElasticEffects"), @"wantsElasticEffects"}];
  [(UIDraggingSessionConfiguration *)self originalRotation];
  [v4 encodeDouble:@"originalRotation" forKey:?];
  [(UIDraggingSessionConfiguration *)self originalScale];
  [v4 encodeCGSize:@"originalScale" forKey:?];
  [v4 encodeBool:-[UIDraggingSessionConfiguration wantsPresentationUpdates](self forKey:{"wantsPresentationUpdates"), @"wantsPresentationUpdates"}];
  [v4 encodeBool:-[UIDraggingSessionConfiguration sessionIsRestrictedToSourceApplication](self forKey:{"sessionIsRestrictedToSourceApplication"), @"sessionIsRestrictedToSourceApplication"}];
  [v4 encodeBool:-[UIDraggingSessionConfiguration sessionIsRestrictedToLocalDevice](self forKey:{"sessionIsRestrictedToLocalDevice"), @"sessionIsRestrictedToLocalDevice"}];
  [v4 encodeInt64:-[UIDraggingSessionConfiguration associatedObjectManipulationSessionIdentifier](self forKey:{"associatedObjectManipulationSessionIdentifier"), @"associatedObjectManipulationSessionIdentifier"}];
  [(UIDraggingSessionConfiguration *)self associatedObjectManipulationDragItemSize];
  [v4 encodeUISize3D:@"associatedObjectManipulationDragItemSize" forKey:{MEMORY[0x1E69E9820], 3221225472, __50__UIDraggingSessionConfiguration_encodeWithCoder___block_invoke_26, &unk_1E70F7FE0, self}];
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

+ (id)configurationWithItemCollection:(id)a3 dataProviderEndpoint:(id)a4 initialCentroidInSourceWindow:(CAPoint3D)a5 sourceView:(id)a6
{
  z = a5.z;
  y = a5.y;
  x = a5.x;
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [v11 _window];
  v15 = [v14 windowScene];

  v16 = objc_opt_new();
  [v16 setItemCollection:v13];

  [v16 setDataProviderEndpoint:v12];
  v17 = objc_alloc_init(_DUITargetLayerDescriptor);
  v18 = [v11 layer];
  v19 = [v18 context];
  -[_DUITargetLayerDescriptor setContextID:](v17, "setContextID:", [v19 contextId]);

  v20 = [v11 layer];
  [(_DUITargetLayerDescriptor *)v17 setRenderID:CALayerGetRenderId()];

  v21 = [v15 systemShellHostingEnvironment];
  v22 = [v21 systemShellHostingSpaceIdentifier];
  [(_DUITargetLayerDescriptor *)v17 setSystemShellHostingSpaceIdentifier:v22];

  [v16 setCoordinateSpaceSourceLayerContext:v17];
  v23 = [v15 _sceneIdentifier];
  [v16 setSceneIdentifier:v23];

  v24 = [v15 session];
  v25 = [v24 persistentIdentifier];
  [v16 setPersistentSceneIdentifier:v25];

  [v16 setInitiatedWithPointer:1];
  [v16 setSupportsSystemDrag:1];
  [v16 setInitialCentroidInSourceWindow:{x, y, z}];
  v26 = [v11 window];
  [v11 convertPoint:v26 fromView:{x, y}];
  v28 = v27;
  v30 = v29;

  [v16 set_initialCentroid:{v28, v30, 0.0}];

  return v16;
}

@end