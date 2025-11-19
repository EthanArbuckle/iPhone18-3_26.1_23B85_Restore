@interface NSObject
@end

@implementation NSObject

void __84__NSObject_WFTransformable__wf_transformValueForCodableAttribute_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a1[6] object:a1[4] file:@"NSObject+WFCodableAttributeTransformable.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  if ([v5 conformsToProtocol:&unk_1F4AFA530])
  {
    v7 = a1[5];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __84__NSObject_WFTransformable__wf_transformValueForCodableAttribute_completionHandler___block_invoke_2;
    v9[3] = &unk_1E837D798;
    v10 = v6;
    [v5 wf_transformUsingCodableAttribute:v7 completionHandler:v9];
  }

  else
  {
    (*(v6 + 2))(v6, v5);
  }
}

void __84__NSObject_WFTransformable__wf_transformValueForCodableAttribute_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 conformsToProtocol:&unk_1F4AFA530])
  {
    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __84__NSObject_WFTransformable__wf_transformValueForCodableAttribute_completionHandler___block_invoke_4;
    v8[3] = &unk_1E837D7E8;
    v10 = v6;
    v9 = v5;
    (*(v7 + 16))(v7, v9, v8);
  }

  else
  {
    (*(v6 + 2))(v6, v5, 0);
  }
}

void __84__NSObject_WFTransformable__wf_transformValueForCodableAttribute_completionHandler___block_invoke_6(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if ([v6 conformsToProtocol:&unk_1F4AFA530])
  {
    v8 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __84__NSObject_WFTransformable__wf_transformValueForCodableAttribute_completionHandler___block_invoke_7;
    v9[3] = &unk_1E837D7E8;
    v11 = v7;
    v10 = v6;
    (*(v8 + 16))(v8, v10, v9);
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

uint64_t __84__NSObject_WFTransformable__wf_transformValueForCodableAttribute_completionHandler___block_invoke_7(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (!a2)
  {
    a2 = *(a1 + 32);
  }

  return (*(v3 + 16))(v3, a2, 0);
}

uint64_t __84__NSObject_WFTransformable__wf_transformValueForCodableAttribute_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (!a2)
  {
    a2 = *(a1 + 32);
  }

  return (*(v3 + 16))(v3, a2, 0);
}

@end