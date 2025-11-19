@interface _UIMainMenuCommandInvocationRequestActionResponse
+ (id)_responseWithInvocationResponse:(id)a3;
- (_UIMainMenuCommandInvocationResponse)invocationResponse;
@end

@implementation _UIMainMenuCommandInvocationRequestActionResponse

+ (id)_responseWithInvocationResponse:(id)a3
{
  v4 = MEMORY[0x1E698E700];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [MEMORY[0x1E696ACC8] _ui_archivedInterprocessDataWithRootObject:v5 requiringSecureCoding:1 error:0];

  [v6 setObject:v7 forSetting:12];
  v8 = [a1 responseWithInfo:v6];

  return v8;
}

- (_UIMainMenuCommandInvocationResponse)invocationResponse
{
  v2 = [(_UIMainMenuCommandInvocationRequestActionResponse *)self info];
  v3 = [v2 objectForSetting:12];
  v4 = objc_opt_self();
  v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:v4 fromData:v3 error:0];

  return v5;
}

@end