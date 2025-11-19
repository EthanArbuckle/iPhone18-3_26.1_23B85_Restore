@interface _UISystemShellSceneHostingEnvironmentClientComponent
- (NSString)systemShellHostingSpaceIdentifier;
@end

@implementation _UISystemShellSceneHostingEnvironmentClientComponent

- (NSString)systemShellHostingSpaceIdentifier
{
  v2 = [(FBSSceneComponent *)self clientScene];
  v3 = [v2 settings];
  v4 = [v3 systemShellHostingSpaceIdentifier];

  return v4;
}

@end