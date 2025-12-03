@interface NSObject(WFTransformable)
- (void)wf_transformValueForCodableAttribute:()WFTransformable completionHandler:;
@end

@implementation NSObject(WFTransformable)

- (void)wf_transformValueForCodableAttribute:()WFTransformable completionHandler:
{
  v7 = a3;
  v8 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__NSObject_WFTransformable__wf_transformValueForCodableAttribute_completionHandler___block_invoke;
  aBlock[3] = &unk_1E837D7C0;
  v27 = a2;
  aBlock[4] = self;
  v9 = v7;
  v26 = v9;
  v10 = _Block_copy(aBlock);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = objc_opt_class();
    v12 = WFEnforceClass_1501(self, v11);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __84__NSObject_WFTransformable__wf_transformValueForCodableAttribute_completionHandler___block_invoke_3;
    v23[3] = &unk_1E837D810;
    v24 = v10;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __84__NSObject_WFTransformable__wf_transformValueForCodableAttribute_completionHandler___block_invoke_5;
    v21[3] = &unk_1E837E298;
    v22 = v8;
    [v12 wf_mapAsynchronously:v23 completionHandler:v21];

    v13 = v24;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __84__NSObject_WFTransformable__wf_transformValueForCodableAttribute_completionHandler___block_invoke_9;
      v15[3] = &unk_1E837D798;
      v16 = v8;
      (*(v10 + 2))(v10, self, v15);
      v12 = v16;
      goto LABEL_7;
    }

    v14 = objc_opt_class();
    v12 = WFEnforceClass_1501(self, v14);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __84__NSObject_WFTransformable__wf_transformValueForCodableAttribute_completionHandler___block_invoke_6;
    v19[3] = &unk_1E837EFF8;
    v20 = v10;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __84__NSObject_WFTransformable__wf_transformValueForCodableAttribute_completionHandler___block_invoke_8;
    v17[3] = &unk_1E837F588;
    v18 = v8;
    [v12 if_mapAsynchronously:v19 completionHandler:v17];

    v13 = v20;
  }

LABEL_7:
}

@end