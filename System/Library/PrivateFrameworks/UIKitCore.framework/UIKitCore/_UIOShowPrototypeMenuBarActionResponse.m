@interface _UIOShowPrototypeMenuBarActionResponse
+ (id)_responseWithAccepted:(BOOL)a3;
- (BOOL)accepted;
@end

@implementation _UIOShowPrototypeMenuBarActionResponse

+ (id)_responseWithAccepted:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  v6 = MEMORY[0x1E696ACC8];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v8 = [v6 archivedDataWithRootObject:v7 requiringSecureCoding:1 error:0];
  [v5 setObject:v8 forSetting:1];

  v9 = [a1 responseWithInfo:v5];

  return v9;
}

- (BOOL)accepted
{
  v3 = MEMORY[0x1E696ACD0];
  v4 = objc_opt_self();
  v5 = [(_UIOShowPrototypeMenuBarActionResponse *)self info];
  v6 = [v5 objectForSetting:1];
  v7 = [v3 unarchivedObjectOfClass:v4 fromData:v6 error:0];
  v8 = [v7 BOOLValue];

  return v8;
}

@end