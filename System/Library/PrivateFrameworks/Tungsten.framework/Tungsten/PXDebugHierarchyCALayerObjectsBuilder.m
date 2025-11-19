@interface PXDebugHierarchyCALayerObjectsBuilder
+ (id)buildLayerTreeForDebugHierarchyWithIdentifier:(id)a3 provider:(id)a4 options:(unint64_t)a5;
+ (id)createObjectForElement:(id)a3 parentObject:(id)a4 options:(unint64_t)a5;
@end

@implementation PXDebugHierarchyCALayerObjectsBuilder

+ (id)createObjectForElement:(id)a3 parentObject:(id)a4 options:(unint64_t)a5
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [v6 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if (v7)
  {
    [v7 bounds];
    PXRectFlippedVertically();
    v10 = v17;
    v12 = v18;
    v14 = v19;
    v16 = v20;
  }

  [v8 setFrame:{v10, v12, v14, v16}];
  [v6 zPosition];
  [v8 setZPosition:?];
  [v6 alpha];
  *&v21 = v21;
  [v8 setOpacity:v21];
  [v8 setContents:{objc_msgSend(v6, "previewImage")}];
  v22 = [v6 contentsGravity];
  [v8 setContentsGravity:v22];

  [v6 contentsRect];
  [v8 setContentsRect:?];
  [v8 setMasksToBounds:1];
  [v8 setBackgroundColor:{objc_msgSend(v6, "backgroundColor")}];
  v23 = [v6 name];
  [v8 setName:v23];

  [v7 addSublayer:v8];

  return v8;
}

+ (id)buildLayerTreeForDebugHierarchyWithIdentifier:(id)a3 provider:(id)a4 options:(unint64_t)a5
{
  v7 = [a1 buildObjectTreeForDebugHierarchyWithIdentifier:a3 provider:a4 options:a5];
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = [MEMORY[0x277CCA890] currentHandler];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v7 px_descriptionForAssertionMessage];
      [v9 handleFailureInMethod:a2 object:a1 file:@"PXDebugHierarchyCALayerObjectsBuilder.m" lineNumber:19 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[self buildObjectTreeForDebugHierarchyWithIdentifier:identifier provider:provider options:options]", v11, v12}];
    }
  }

  return v7;
}

@end