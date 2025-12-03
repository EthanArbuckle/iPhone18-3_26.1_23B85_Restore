@interface TSCH3DRayPickPipelineDelegate
- (BOOL)willSubmitElement:(id)element sceneObject:(id)object;
- (BOOL)willSubmitLabelType:(int)type boundsIndex:(int64_t)index alignment:(unint64_t)alignment elementIndex:(unint64_t)elementIndex forSceneObject:(id)object;
@end

@implementation TSCH3DRayPickPipelineDelegate

- (BOOL)willSubmitLabelType:(int)type boundsIndex:(int64_t)index alignment:(unint64_t)alignment elementIndex:(unint64_t)elementIndex forSceneObject:(id)object
{
  v11[0] = type;
  v11[1] = elementIndex;
  objc_msgSend_setCurrentElement_(self, a2, v7, v8, v9, v11, index, alignment, elementIndex, object);
  return 0;
}

- (BOOL)willSubmitElement:(id)element sceneObject:(id)object
{
  elementCopy = element;
  objectCopy = object;
  if (elementCopy)
  {
    objc_msgSend_index(elementCopy, v7, v9, v10, v11);
  }

  else
  {
    v17 = 0;
  }

  objc_msgSend_setCurrentElement_(self, v7, v9, v10, v11, &v17);
  objc_msgSend_setCurrentSceneObject_(self, v12, v13, v14, v15, objectCopy);

  return 0;
}

@end