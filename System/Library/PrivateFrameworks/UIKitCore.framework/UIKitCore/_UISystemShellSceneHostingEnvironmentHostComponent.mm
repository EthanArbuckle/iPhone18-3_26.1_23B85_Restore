@interface _UISystemShellSceneHostingEnvironmentHostComponent
- (NSString)systemShellHostingSpaceIdentifier;
- (void)setScene:(id)scene;
- (void)setSystemShellHostingSpaceIdentifier:(id)identifier;
@end

@implementation _UISystemShellSceneHostingEnvironmentHostComponent

- (void)setScene:(id)scene
{
  v4.receiver = self;
  v4.super_class = _UISystemShellSceneHostingEnvironmentHostComponent;
  [(FBSSceneComponent *)&v4 setScene:scene];
  [(_UISystemShellSceneHostingEnvironmentHostComponent *)self setSystemShellHostingSpaceIdentifier:0];
}

- (void)setSystemShellHostingSpaceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  hostScene = [(FBSSceneComponent *)self hostScene];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __91___UISystemShellSceneHostingEnvironmentHostComponent_setSystemShellHostingSpaceIdentifier___block_invoke;
  v7[3] = &unk_1E711FD48;
  v8 = identifierCopy;
  v6 = identifierCopy;
  [hostScene updateSettings:v7];
}

- (NSString)systemShellHostingSpaceIdentifier
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  settings = [hostScene settings];
  systemShellHostingSpaceIdentifier = [settings systemShellHostingSpaceIdentifier];

  return systemShellHostingSpaceIdentifier;
}

@end