@interface NSError(PosterUIFoundation)
+ (id)pui_errorWithCode:()PosterUIFoundation;
+ (id)pui_errorWithCode:()PosterUIFoundation underlyingError:userInfo:;
@end

@implementation NSError(PosterUIFoundation)

+ (id)pui_errorWithCode:()PosterUIFoundation
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = *MEMORY[0x1E696A588];
  v5 = PUIErrorCodeToDebugDescription(a3);
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [a1 pui_errorWithCode:a3 underlyingError:0 userInfo:v6];

  return v7;
}

+ (id)pui_errorWithCode:()PosterUIFoundation underlyingError:userInfo:
{
  v8 = a4;
  v9 = [a5 mutableCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;

  if (v8)
  {
    [v12 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  v13 = PUIErrorCodeToDebugDescription(a3);
  [v12 setObject:v13 forKeyedSubscript:*MEMORY[0x1E696A588]];
  v14 = [a1 errorWithDomain:@"com.apple.PosterUIFoundation.errorDomain" code:a3 userInfo:v12];

  return v14;
}

@end