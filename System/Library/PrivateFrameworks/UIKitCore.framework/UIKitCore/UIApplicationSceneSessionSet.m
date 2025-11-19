@interface UIApplicationSceneSessionSet
@end

@implementation UIApplicationSceneSessionSet

void ___UIApplicationSceneSessionSet_block_invoke()
{
  v22 = *MEMORY[0x1E69E9840];
  v0 = +[_UISceneUserActivityManager _knownSceneSessionMap];
  v1 = [MEMORY[0x1E695DFA8] set];
  v2 = qword_1EA9932F8;
  qword_1EA9932F8 = v1;

  v3 = +[_UIApplicationConfigurationLoader sharedLoader];
  v4 = [v3 applicationInitializationContext];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 persistedSceneIdentifiers];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v0 objectForKey:*(*(&v17 + 1) + 8 * v9)];
        if (v10)
        {
          [qword_1EA9932F8 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v11 = [MEMORY[0x1E695DFD0] mainRunLoop];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = ___UIApplicationSceneSessionSet_block_invoke_2;
  v14[3] = &unk_1E70F35B8;
  v15 = v4;
  v16 = v0;
  v12 = v0;
  v13 = v4;
  [v11 performBlock:v14];
}

void ___UIApplicationSceneSessionSet_block_invoke_2(uint64_t a1)
{
  v1 = [UIApp _discardedSceneSessionIdentifiersSinceLastRunWithContext:*(a1 + 32) knownSessions:*(a1 + 40)];
  [UIApp _discardSceneSessionsWithPersistentIdentifiers:v1 skippingPersistenceDeletion:0];
}

@end