@interface PXDebugHierarchyCALayerObjectsBuilder
+ (id)buildLayerTreeForDebugHierarchyWithIdentifier:(id)identifier provider:(id)provider options:(unint64_t)options;
+ (id)createObjectForElement:(id)element parentObject:(id)object options:(unint64_t)options;
@end

@implementation PXDebugHierarchyCALayerObjectsBuilder

+ (id)createObjectForElement:(id)element parentObject:(id)object options:(unint64_t)options
{
  elementCopy = element;
  objectCopy = object;
  v8 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [elementCopy frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if (objectCopy)
  {
    [objectCopy bounds];
    PXRectFlippedVertically();
    v10 = v17;
    v12 = v18;
    v14 = v19;
    v16 = v20;
  }

  [v8 setFrame:{v10, v12, v14, v16}];
  [elementCopy zPosition];
  [v8 setZPosition:?];
  [elementCopy alpha];
  *&v21 = v21;
  [v8 setOpacity:v21];
  [v8 setContents:{objc_msgSend(elementCopy, "previewImage")}];
  contentsGravity = [elementCopy contentsGravity];
  [v8 setContentsGravity:contentsGravity];

  [elementCopy contentsRect];
  [v8 setContentsRect:?];
  [v8 setMasksToBounds:1];
  [v8 setBackgroundColor:{objc_msgSend(elementCopy, "backgroundColor")}];
  name = [elementCopy name];
  [v8 setName:name];

  [objectCopy addSublayer:v8];

  return v8;
}

+ (id)buildLayerTreeForDebugHierarchyWithIdentifier:(id)identifier provider:(id)provider options:(unint64_t)options
{
  v7 = [self buildObjectTreeForDebugHierarchyWithIdentifier:identifier provider:provider options:options];
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      px_descriptionForAssertionMessage = [v7 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXDebugHierarchyCALayerObjectsBuilder.m" lineNumber:19 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[self buildObjectTreeForDebugHierarchyWithIdentifier:identifier provider:provider options:options]", v11, px_descriptionForAssertionMessage}];
    }
  }

  return v7;
}

@end