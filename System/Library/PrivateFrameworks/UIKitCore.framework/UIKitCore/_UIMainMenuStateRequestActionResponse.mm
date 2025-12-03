@interface _UIMainMenuStateRequestActionResponse
+ (id)_responseWithMenuStateResponse:(id)response;
- (_UIMainMenuStateResponse)menuStateResponse;
@end

@implementation _UIMainMenuStateRequestActionResponse

+ (id)_responseWithMenuStateResponse:(id)response
{
  v4 = MEMORY[0x1E698E700];
  responseCopy = response;
  v6 = objc_alloc_init(v4);
  v7 = [MEMORY[0x1E696ACC8] _ui_archivedInterprocessDataWithRootObject:responseCopy requiringSecureCoding:1 error:0];

  [v6 setObject:v7 forSetting:8];
  v8 = [self responseWithInfo:v6];

  return v8;
}

- (_UIMainMenuStateResponse)menuStateResponse
{
  info = [(_UIMainMenuStateRequestActionResponse *)self info];
  v3 = [info objectForSetting:8];
  v4 = objc_opt_self();
  v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:v4 fromData:v3 error:0];

  return v5;
}

@end