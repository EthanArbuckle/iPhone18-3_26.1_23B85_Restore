@interface PTRow(PhotosUI)
+ (id)pu_rowWithTitle:()PhotosUI action:;
+ (id)pu_rowWithTitle:()PhotosUI asynchronousOutputProducer:;
+ (id)pu_rowWithTitle:()PhotosUI output:;
+ (id)pu_rowWithTitle:()PhotosUI settings:;
+ (id)pu_rowWithTitle:()PhotosUI settings:condition:;
+ (id)pu_rowWithTitle:()PhotosUI settingsProvider:isTransient:;
@end

@implementation PTRow(PhotosUI)

+ (id)pu_rowWithTitle:()PhotosUI settings:condition:
{
  v8 = a5;
  v9 = [a1 pu_rowWithTitle:a3 settings:a4];
  [v9 setCondition:v8];

  return v9;
}

+ (id)pu_rowWithTitle:()PhotosUI settingsProvider:isTransient:
{
  v8 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__PTRow_PhotosUI__pu_rowWithTitle_settingsProvider_isTransient___block_invoke;
  v12[3] = &unk_1E7B80860;
  v13 = v8;
  v14 = a5;
  v9 = v8;
  v10 = [a1 px_rowWithTitle:a3 action:v12];

  return v10;
}

+ (id)pu_rowWithTitle:()PhotosUI settings:
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__PTRow_PhotosUI__pu_rowWithTitle_settings___block_invoke;
  v10[3] = &unk_1E7B80838;
  v11 = v6;
  v7 = v6;
  v8 = [a1 pu_rowWithTitle:a3 settingsProvider:v10];

  return v8;
}

+ (id)pu_rowWithTitle:()PhotosUI action:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 row];
  [v8 setStaticTitle:v7];

  v9 = MEMORY[0x1E69C6658];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42__PTRow_PhotosUI__pu_rowWithTitle_action___block_invoke;
  v13[3] = &unk_1E7B80810;
  v14 = v6;
  v10 = v6;
  v11 = [v9 actionWithHandler:v13];
  [v8 setAction:v11];

  return v8;
}

+ (id)pu_rowWithTitle:()PhotosUI asynchronousOutputProducer:
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__PTRow_PhotosUI__pu_rowWithTitle_asynchronousOutputProducer___block_invoke;
  v10[3] = &unk_1E7B807E8;
  v11 = v6;
  v7 = v6;
  v8 = [a1 px_rowWithTitle:a3 action:v10];

  return v8;
}

+ (id)pu_rowWithTitle:()PhotosUI output:
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__PTRow_PhotosUI__pu_rowWithTitle_output___block_invoke;
  v10[3] = &unk_1E7B807C0;
  v11 = v6;
  v7 = v6;
  v8 = [a1 pu_rowWithTitle:a3 asynchronousOutputProducer:v10];

  return v8;
}

@end