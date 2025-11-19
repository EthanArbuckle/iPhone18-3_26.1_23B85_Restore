@interface INObject(Workflow)
- (void)wf_transformUsingCodableAttribute:()Workflow completionHandler:;
@end

@implementation INObject(Workflow)

- (void)wf_transformUsingCodableAttribute:()Workflow completionHandler:
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"INObject+Workflow.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v9 = [a1 displayImage];
  if (v9)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __74__INObject_Workflow__wf_transformUsingCodableAttribute_completionHandler___block_invoke;
    v11[3] = &unk_1E837B9E8;
    v11[4] = a1;
    v12 = v8;
    [v9 wf_transformUsingCodableAttribute:0 completionHandler:v11];
  }

  else
  {
    (*(v8 + 2))(v8, a1);
  }
}

@end