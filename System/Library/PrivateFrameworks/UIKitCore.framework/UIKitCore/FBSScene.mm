@interface FBSScene
@end

@implementation FBSScene

void __51__FBSScene_UIApp__updateUIClientSettingsWithBlock___block_invoke_2(void *a1, void *a2)
{
  v4 = a2;
  if (([v4 isUISubclass] & 1) == 0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    [v3 handleFailureInMethod:a1[6] object:a1[4] file:@"FBSScene+UIApp.m" lineNumber:49 description:{@"clientSettings is of an unexpected class : %@", v4}];
  }

  (*(a1[5] + 16))();
}

id __61__FBSScene_UIApp__updateUIClientSettingsWithTransitionBlock___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  if (([v3 isUISubclass] & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a1[6] object:a1[4] file:@"FBSScene+UIApp.m" lineNumber:60 description:{@"clientSettings is of an unexpected class : %@", v3}];
  }

  v4 = (*(a1[5] + 16))();

  return v4;
}

@end