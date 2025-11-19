@interface PTRow(PhotosUICore)
+ (id)px_rowWithTitle:()PhotosUICore action:;
+ (id)px_rowWithTitle:()PhotosUICore asynchronousOutputProducer:;
+ (id)px_rowWithTitle:()PhotosUICore continuousOutputProducer:;
+ (id)px_rowWithTitle:()PhotosUICore output:;
+ (id)px_rowWithTitle:()PhotosUICore postDismissalAction:;
+ (id)px_rowWithTitle:()PhotosUICore presentationStyle:viewControllerFactory:;
+ (id)px_rowWithTitle:()PhotosUICore urlString:;
+ (id)px_rowWithTitle:()PhotosUICore valueKeyPath:condition:;
- (id)px_conditionFormat:()PhotosUICore possibleValues:;
- (void)px_increment:()PhotosUICore;
@end

@implementation PTRow(PhotosUICore)

- (id)px_conditionFormat:()PhotosUICore possibleValues:
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [MEMORY[0x1E696AE18] predicateWithFormat:v6, *(*(&v18 + 1) + 8 * i), 0, v18];
          [v8 addObject:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    v15 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v8];
    v16 = [a1 condition:v15];
  }

  else
  {
    v16 = a1;
  }

  return v16;
}

- (void)px_increment:()PhotosUICore
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__PTRow_PhotosUICore__px_increment___block_invoke;
  v4[3] = &__block_descriptor_40_e11__24__0_8_16l;
  *&v4[4] = a2;
  [a1 setValueValidatator:v4];
  return a1;
}

+ (id)px_rowWithTitle:()PhotosUICore presentationStyle:viewControllerFactory:
{
  v8 = a5;
  v9 = a3;
  v10 = [a1 row];
  [v10 setStaticTitle:v9];

  v11 = MEMORY[0x1E69C6658];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __79__PTRow_PhotosUICore__px_rowWithTitle_presentationStyle_viewControllerFactory___block_invoke;
  v18 = &unk_1E7732378;
  v19 = v8;
  v20 = a4;
  v12 = v8;
  v13 = [v11 actionWithHandler:&v15];
  [v10 setAction:{v13, v15, v16, v17, v18}];

  return v10;
}

+ (id)px_rowWithTitle:()PhotosUICore valueKeyPath:condition:
{
  v8 = a5;
  v9 = [a1 rowWithTitle:a3 valueKeyPath:a4];
  [v9 setCondition:v8];

  return v9;
}

+ (id)px_rowWithTitle:()PhotosUICore urlString:
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__PTRow_PhotosUICore__px_rowWithTitle_urlString___block_invoke;
  v10[3] = &unk_1E773B578;
  v11 = v6;
  v7 = v6;
  v8 = [a1 px_rowWithTitle:a3 action:v10];

  return v8;
}

+ (id)px_rowWithTitle:()PhotosUICore postDismissalAction:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 row];
  [v8 setStaticTitle:v7];

  v9 = MEMORY[0x1E69C6658];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__PTRow_PhotosUICore__px_rowWithTitle_postDismissalAction___block_invoke;
  v13[3] = &unk_1E7732330;
  v14 = v6;
  v10 = v6;
  v11 = [v9 actionWithHandler:v13];
  [v8 setAction:v11];

  return v8;
}

+ (id)px_rowWithTitle:()PhotosUICore action:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 row];
  [v8 setStaticTitle:v7];

  v9 = MEMORY[0x1E69C6658];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46__PTRow_PhotosUICore__px_rowWithTitle_action___block_invoke;
  v13[3] = &unk_1E7732330;
  v14 = v6;
  v10 = v6;
  v11 = [v9 actionWithHandler:v13];
  [v8 setAction:v11];

  return v8;
}

+ (id)px_rowWithTitle:()PhotosUICore continuousOutputProducer:
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__PTRow_PhotosUICore__px_rowWithTitle_continuousOutputProducer___block_invoke;
  v10[3] = &unk_1E7732308;
  v11 = v6;
  v7 = v6;
  v8 = [a1 px_rowWithTitle:a3 action:v10];

  return v8;
}

+ (id)px_rowWithTitle:()PhotosUICore asynchronousOutputProducer:
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__PTRow_PhotosUICore__px_rowWithTitle_asynchronousOutputProducer___block_invoke;
  v10[3] = &unk_1E7732308;
  v11 = v6;
  v7 = v6;
  v8 = [a1 px_rowWithTitle:a3 action:v10];

  return v8;
}

+ (id)px_rowWithTitle:()PhotosUICore output:
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__PTRow_PhotosUICore__px_rowWithTitle_output___block_invoke;
  v10[3] = &unk_1E77322E0;
  v11 = v6;
  v7 = v6;
  v8 = [a1 px_rowWithTitle:a3 asynchronousOutputProducer:v10];

  return v8;
}

@end