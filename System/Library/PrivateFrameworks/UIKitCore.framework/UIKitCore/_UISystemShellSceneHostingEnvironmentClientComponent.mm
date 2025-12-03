@interface _UISystemShellSceneHostingEnvironmentClientComponent
- (NSString)systemShellHostingSpaceIdentifier;
@end

@implementation _UISystemShellSceneHostingEnvironmentClientComponent

- (NSString)systemShellHostingSpaceIdentifier
{
  clientScene = [(FBSSceneComponent *)self clientScene];
  settings = [clientScene settings];
  systemShellHostingSpaceIdentifier = [settings systemShellHostingSpaceIdentifier];

  return systemShellHostingSpaceIdentifier;
}

@end