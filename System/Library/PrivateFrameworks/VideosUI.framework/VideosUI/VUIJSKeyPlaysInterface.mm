@interface VUIJSKeyPlaysInterface
+ (void)fetchKeyPlays:(id)plays nextToken:(id)token completion:(id)completion;
@end

@implementation VUIJSKeyPlaysInterface

+ (void)fetchKeyPlays:(id)plays nextToken:(id)token completion:(id)completion
{
  playsCopy = plays;
  tokenCopy = token;
  completionCopy = completion;
  v10 = +[VUITVAppLauncher sharedInstance];
  appController = [v10 appController];
  appContext = [appController appContext];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __61__VUIJSKeyPlaysInterface_fetchKeyPlays_nextToken_completion___block_invoke;
  v16[3] = &unk_1E872DD88;
  v17 = playsCopy;
  v18 = tokenCopy;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = tokenCopy;
  v15 = playsCopy;
  [appContext evaluate:v16];
}

void __61__VUIJSKeyPlaysInterface_fetchKeyPlays_nextToken_completion___block_invoke(uint64_t a1, void *a2)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v3 = [a2 objectForKeyedSubscript:@"KeyPlaysInterface"];
  v4 = *(a1 + 32);
  v5 = v4;
  if (!v4)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v5;
  v6 = *(a1 + 40);
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__VUIJSKeyPlaysInterface_fetchKeyPlays_nextToken_completion___block_invoke_2;
  aBlock[3] = &unk_1E872FC40;
  v12 = *(a1 + 48);
  v8 = _Block_copy(aBlock);
  v13[2] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
  v10 = [v3 invokeMethod:@"getKeyPlays" withArguments:v9];

  if (!v6)
  {

    if (v4)
    {
      goto LABEL_7;
    }

LABEL_9:

    goto LABEL_7;
  }

  if (!v4)
  {
    goto LABEL_9;
  }

LABEL_7:
}

void __61__VUIJSKeyPlaysInterface_fetchKeyPlays_nextToken_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKey:@"error"];
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A578];
    v10[0] = v4;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v8 = [v6 errorWithDomain:@"VUIJSKeyPlaysInterfaceErrorDomain" code:0 userInfo:v7];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

@end