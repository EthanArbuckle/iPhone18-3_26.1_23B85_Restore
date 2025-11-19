@interface _UIMainMenuDeferredElementRequestActionResponse
+ (id)_responseWithDeferredElementResponse:(id)a3;
- (_UIMainMenuDeferredElementResponse)deferredElementResponse;
@end

@implementation _UIMainMenuDeferredElementRequestActionResponse

+ (id)_responseWithDeferredElementResponse:(id)a3
{
  v4 = MEMORY[0x1E698E700];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [MEMORY[0x1E696ACC8] _ui_archivedInterprocessDataWithRootObject:v5 requiringSecureCoding:1 error:0];

  [v6 setObject:v7 forSetting:10];
  v8 = [a1 responseWithInfo:v6];

  return v8;
}

- (_UIMainMenuDeferredElementResponse)deferredElementResponse
{
  v2 = [(_UIMainMenuDeferredElementRequestActionResponse *)self info];
  v3 = [v2 objectForSetting:10];
  v4 = objc_opt_self();
  v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:v4 fromData:v3 error:0];

  return v5;
}

@end