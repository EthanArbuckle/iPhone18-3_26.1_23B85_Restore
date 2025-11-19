@interface WFRemoteServerAccessResource
- (WFRemoteServerAccessResource)init;
@end

@implementation WFRemoteServerAccessResource

- (WFRemoteServerAccessResource)init
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = @"WFResourceClass";
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v13[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v11.receiver = self;
  v11.super_class = WFRemoteServerAccessResource;
  v6 = [(WFAccessResource *)&v11 initWithDefinition:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

@end