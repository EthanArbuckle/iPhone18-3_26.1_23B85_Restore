@interface INObjectCollection(WFMapping)
- (id)wf_mapObjectsUsingBlock:()WFMapping;
- (void)wf_mapAsynchronously:()WFMapping completionHandler:;
@end

@implementation INObjectCollection(WFMapping)

- (void)wf_mapAsynchronously:()WFMapping completionHandler:
{
  v6 = a3;
  v7 = a4;
  sections = [self sections];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__INObjectCollection_WFMapping__wf_mapAsynchronously_completionHandler___block_invoke;
  v13[3] = &unk_1E837F048;
  v14 = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__INObjectCollection_WFMapping__wf_mapAsynchronously_completionHandler___block_invoke_4;
  v11[3] = &unk_1E837F020;
  v11[4] = self;
  v12 = v7;
  v9 = v7;
  v10 = v6;
  [sections if_mapAsynchronously:v13 completionHandler:v11];
}

- (id)wf_mapObjectsUsingBlock:()WFMapping
{
  v4 = a3;
  sections = [self sections];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__INObjectCollection_WFMapping__wf_mapObjectsUsingBlock___block_invoke;
  v10[3] = &unk_1E837EFD0;
  v11 = v4;
  v6 = v4;
  v7 = [sections if_map:v10];

  v8 = [objc_alloc(objc_opt_class()) initWithSections:v7];
  [v8 setUsesIndexedCollation:{objc_msgSend(self, "usesIndexedCollation")}];

  return v8;
}

@end