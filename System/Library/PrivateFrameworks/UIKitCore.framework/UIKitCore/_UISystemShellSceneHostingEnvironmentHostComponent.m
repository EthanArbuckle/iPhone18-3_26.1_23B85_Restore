@interface _UISystemShellSceneHostingEnvironmentHostComponent
- (NSString)systemShellHostingSpaceIdentifier;
- (void)setScene:(id)a3;
- (void)setSystemShellHostingSpaceIdentifier:(id)a3;
@end

@implementation _UISystemShellSceneHostingEnvironmentHostComponent

- (void)setScene:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UISystemShellSceneHostingEnvironmentHostComponent;
  [(FBSSceneComponent *)&v4 setScene:a3];
  [(_UISystemShellSceneHostingEnvironmentHostComponent *)self setSystemShellHostingSpaceIdentifier:0];
}

- (void)setSystemShellHostingSpaceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(FBSSceneComponent *)self hostScene];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __91___UISystemShellSceneHostingEnvironmentHostComponent_setSystemShellHostingSpaceIdentifier___block_invoke;
  v7[3] = &unk_1E711FD48;
  v8 = v4;
  v6 = v4;
  [v5 updateSettings:v7];
}

- (NSString)systemShellHostingSpaceIdentifier
{
  v2 = [(FBSSceneComponent *)self hostScene];
  v3 = [v2 settings];
  v4 = [v3 systemShellHostingSpaceIdentifier];

  return v4;
}

@end