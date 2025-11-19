@interface _UISceneMaskingAction
+ (id)actionForBeginMaskingWithReason:(int64_t)a3 continuation:(id)a4;
+ (id)invalidationAction;
@end

@implementation _UISceneMaskingAction

+ (id)actionForBeginMaskingWithReason:(int64_t)a3 continuation:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v7 setObject:&unk_1EFE33778 forSetting:0];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v7 setObject:v8 forSetting:1];

  v9 = MEMORY[0x1E698E5F8];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70___UISceneMaskingAction_actionForBeginMaskingWithReason_continuation___block_invoke;
  v14[3] = &unk_1E7108B40;
  v15 = v6;
  v10 = v6;
  v11 = [v9 responderWithHandler:v14];
  [v11 setQueue:MEMORY[0x1E69E96A0]];
  v12 = [[a1 alloc] initWithInfo:v7 responder:v11];

  return v12;
}

+ (id)invalidationAction
{
  v3 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v3 setObject:&unk_1EFE33790 forSetting:0];
  v4 = [[a1 alloc] initWithInfo:v3 responder:0];

  return v4;
}

@end