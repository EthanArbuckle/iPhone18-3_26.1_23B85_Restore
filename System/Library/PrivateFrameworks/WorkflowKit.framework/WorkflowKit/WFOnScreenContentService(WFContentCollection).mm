@interface WFOnScreenContentService(WFContentCollection)
- (void)getOnScreenContentForInputContentClasses:()WFContentCollection completionHandler:;
- (void)populateOutputFromNodeRecursively:()WFContentCollection outputCollection:;
@end

@implementation WFOnScreenContentService(WFContentCollection)

- (void)populateOutputFromNodeRecursively:()WFContentCollection outputCollection:
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  contentItem = [v6 contentItem];

  if (contentItem)
  {
    contentItem2 = [v6 contentItem];
    [v7 addItem:contentItem2];
  }

  file = [v6 file];

  if (file)
  {
    file2 = [v6 file];
    wf_fileRepresentation = [file2 wf_fileRepresentation];
    [v7 addFile:wf_fileRepresentation];
  }

  children = [v6 children];

  if (children)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    children2 = [v6 children];
    v15 = [children2 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        v18 = 0;
        do
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(children2);
          }

          [self populateOutputFromNodeRecursively:*(*(&v20 + 1) + 8 * v18++) outputCollection:v7];
        }

        while (v16 != v18);
        v16 = [children2 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v16);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)getOnScreenContentForInputContentClasses:()WFContentCollection completionHandler:
{
  v6 = a4;
  if (a3)
  {
    v7 = [a3 if_compactMap:&__block_literal_global_68041];
    v8 = objc_alloc(MEMORY[0x1E69E0C10]);
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    v10 = processInfo;
    if (processInfo)
    {
      [processInfo if_auditToken];
    }

    else
    {
      memset(v19, 0, sizeof(v19));
    }

    v11 = [v8 initWithSupportedItemClasses:v7 originatingProcessAuditToken:v19];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E69E0C10]);
  }

  v12 = objc_alloc_init(MEMORY[0x1E69E0C08]);
  v13 = objc_alloc_init(MEMORY[0x1E6996D40]);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __108__WFOnScreenContentService_WFContentCollection__getOnScreenContentForInputContentClasses_completionHandler___block_invoke_2;
  v16[3] = &unk_1E837E798;
  v17 = v13;
  v18 = v6;
  v16[4] = self;
  v14 = v13;
  v15 = v6;
  [v12 getOnScreenContentWithOptions:v11 completionHandler:v16];
}

@end