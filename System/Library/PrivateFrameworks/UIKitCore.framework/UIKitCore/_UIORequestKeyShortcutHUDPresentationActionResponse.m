@interface _UIORequestKeyShortcutHUDPresentationActionResponse
+ (id)_responseWithHUDPresentationResponse:(id)a3;
- (_UIKeyShortcutHUDPresentationResponse)response;
@end

@implementation _UIORequestKeyShortcutHUDPresentationActionResponse

+ (id)_responseWithHUDPresentationResponse:(id)a3
{
  v4 = MEMORY[0x1E698E700];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];

  [v6 setObject:v7 forSetting:0];
  v8 = [a1 responseWithInfo:v6];

  return v8;
}

- (_UIKeyShortcutHUDPresentationResponse)response
{
  v3 = MEMORY[0x1E696ACD0];
  v4 = objc_opt_self();
  v5 = [(_UIORequestKeyShortcutHUDPresentationActionResponse *)self info];
  v6 = [v5 objectForSetting:0];
  v7 = [v3 unarchivedObjectOfClass:v4 fromData:v6 error:0];

  return v7;
}

@end