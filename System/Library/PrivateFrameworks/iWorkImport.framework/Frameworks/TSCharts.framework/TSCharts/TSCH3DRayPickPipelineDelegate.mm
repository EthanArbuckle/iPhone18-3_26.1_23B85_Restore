@interface TSCH3DRayPickPipelineDelegate
- (BOOL)willSubmitElement:(id)a3 sceneObject:(id)a4;
- (BOOL)willSubmitLabelType:(int)a3 boundsIndex:(int64_t)a4 alignment:(unint64_t)a5 elementIndex:(unint64_t)a6 forSceneObject:(id)a7;
@end

@implementation TSCH3DRayPickPipelineDelegate

- (BOOL)willSubmitLabelType:(int)a3 boundsIndex:(int64_t)a4 alignment:(unint64_t)a5 elementIndex:(unint64_t)a6 forSceneObject:(id)a7
{
  v11[0] = a3;
  v11[1] = a6;
  objc_msgSend_setCurrentElement_(self, a2, v7, v8, v9, v11, a4, a5, a6, a7);
  return 0;
}

- (BOOL)willSubmitElement:(id)a3 sceneObject:(id)a4
{
  v6 = a3;
  v8 = a4;
  if (v6)
  {
    objc_msgSend_index(v6, v7, v9, v10, v11);
  }

  else
  {
    v17 = 0;
  }

  objc_msgSend_setCurrentElement_(self, v7, v9, v10, v11, &v17);
  objc_msgSend_setCurrentSceneObject_(self, v12, v13, v14, v15, v8);

  return 0;
}

@end