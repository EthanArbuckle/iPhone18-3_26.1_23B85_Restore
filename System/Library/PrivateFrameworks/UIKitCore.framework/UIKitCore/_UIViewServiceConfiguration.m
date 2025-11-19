@interface _UIViewServiceConfiguration
+ (void)activateDomains;
- (id)domainsDictionary;
@end

@implementation _UIViewServiceConfiguration

- (id)domainsDictionary
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = @"com.apple.uikit.viewservice";
  v9[0] = @"MachName";
  v2 = +[_UIViewServiceSessionManager _domainMachName];
  v9[1] = @"Services";
  v10[0] = v2;
  v7[0] = 8316790000;
  v7[1] = @"com.apple.frontboard.workspace-service";
  v8[0] = MEMORY[0x1E695E0F8];
  v8[1] = MEMORY[0x1E695E0F8];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v10[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v12[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  return v5;
}

+ (void)activateDomains
{
  [MEMORY[0x1E699FCB8] startViewServiceDomain];
  v2 = MEMORY[0x1E698F508];

  [v2 activateViewServiceConfiguration];
}

@end