@interface _UIOShowPrototypeMenuBarActionResponse
+ (id)_responseWithAccepted:(BOOL)accepted;
- (BOOL)accepted;
@end

@implementation _UIOShowPrototypeMenuBarActionResponse

+ (id)_responseWithAccepted:(BOOL)accepted
{
  acceptedCopy = accepted;
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  v6 = MEMORY[0x1E696ACC8];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:acceptedCopy];
  v8 = [v6 archivedDataWithRootObject:v7 requiringSecureCoding:1 error:0];
  [v5 setObject:v8 forSetting:1];

  v9 = [self responseWithInfo:v5];

  return v9;
}

- (BOOL)accepted
{
  v3 = MEMORY[0x1E696ACD0];
  v4 = objc_opt_self();
  info = [(_UIOShowPrototypeMenuBarActionResponse *)self info];
  v6 = [info objectForSetting:1];
  v7 = [v3 unarchivedObjectOfClass:v4 fromData:v6 error:0];
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

@end