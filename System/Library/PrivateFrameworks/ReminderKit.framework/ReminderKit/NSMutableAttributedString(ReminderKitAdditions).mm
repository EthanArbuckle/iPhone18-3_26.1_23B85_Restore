@interface NSMutableAttributedString(ReminderKitAdditions)
- (BOOL)rem_replaceTTREMHashtag:()ReminderKitAdditions withTTREMHashtag:;
@end

@implementation NSMutableAttributedString(ReminderKitAdditions)

- (BOOL)rem_replaceTTREMHashtag:()ReminderKitAdditions withTTREMHashtag:
{
  v27[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3010000000;
  v24 = &unk_19A260519;
  v25 = xmmword_19A2310A0;
  v8 = [self length];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __92__NSMutableAttributedString_ReminderKitAdditions__rem_replaceTTREMHashtag_withTTREMHashtag___block_invoke;
  v17 = &unk_1E7508590;
  selfCopy = self;
  v9 = v6;
  v19 = v9;
  v20 = &v21;
  [self enumerateAttribute:@"_TTREMHashtag" inRange:0 options:v8 usingBlock:{0, &v14}];
  v10 = v22[4];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [self removeAttribute:@"_TTREMHashtag" range:{v22[4], v22[5], v14, v15, v16, v17, selfCopy}];
    v26 = @"_TTREMHashtag";
    v27[0] = v7;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    [self setAttributes:v11 range:{v22[4], v22[5]}];
  }

  _Block_object_dispose(&v21, 8);
  v12 = *MEMORY[0x1E69E9840];
  return v10 != 0x7FFFFFFFFFFFFFFFLL;
}

@end