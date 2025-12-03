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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"INObject+Workflow.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  displayImage = [self displayImage];
  if (displayImage)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __74__INObject_Workflow__wf_transformUsingCodableAttribute_completionHandler___block_invoke;
    v11[3] = &unk_1E837B9E8;
    v11[4] = self;
    v12 = v8;
    [displayImage wf_transformUsingCodableAttribute:0 completionHandler:v11];
  }

  else
  {
    (*(v8 + 2))(v8, self);
  }
}

@end