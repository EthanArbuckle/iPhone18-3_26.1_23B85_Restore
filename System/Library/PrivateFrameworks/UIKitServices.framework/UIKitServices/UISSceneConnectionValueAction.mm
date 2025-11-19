@interface UISSceneConnectionValueAction
+ (id)actionWithFlag:(BOOL)a3 forKey:(id)a4 responder:(id)a5;
+ (id)actionWithValue:(id)a3 forKey:(id)a4 responder:(id)a5;
@end

@implementation UISSceneConnectionValueAction

+ (id)actionWithValue:(id)a3 forKey:(id)a4 responder:(id)a5
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  if (([v11 bs_isPlistableType] & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"UISSceneConnectionValueAction.m" lineNumber:19 description:@"Value must be a Plistable type"];
  }

  v12 = objc_alloc_init(MEMORY[0x1E698E6F0]);
  [v12 setObject:v11 forKey:v10];

  v13 = [[a1 alloc] initWithInfo:v12 responder:v9];

  return v13;
}

+ (id)actionWithFlag:(BOOL)a3 forKey:(id)a4 responder:(id)a5
{
  v6 = a3;
  v8 = MEMORY[0x1E698E6F0];
  v9 = a5;
  v10 = a4;
  v11 = objc_alloc_init(v8);
  [v11 setFlag:v6 forKey:v10];

  v12 = [[a1 alloc] initWithInfo:v11 responder:v9];

  return v12;
}

@end