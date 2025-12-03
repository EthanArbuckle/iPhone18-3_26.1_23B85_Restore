@interface MBSystemContainer
+ (id)systemContainerWithDomainName:(id)name containerDir:(id)dir isShared:(BOOL)shared;
- (id)domain;
@end

@implementation MBSystemContainer

+ (id)systemContainerWithDomainName:(id)name containerDir:(id)dir isShared:(BOOL)shared
{
  v7 = @"System/Data";
  if (shared)
  {
    v7 = @"System/Shared";
  }

  v15[0] = kCFBundleIdentifierKey;
  v8 = v7;
  dirCopy = dir;
  v10 = [MBDomain containerIDWithName:name];
  v16[0] = v10;
  v16[1] = v8;
  v15[1] = @"ContainerContentClass";
  v15[2] = @"Container";
  v16[2] = dirCopy;
  v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];

  v12 = [MBSystemContainer alloc];
  v13 = [(MBContainer *)v12 initWithPropertyList:v11 volumeMountPoint:0];

  return v13;
}

- (id)domain
{
  containerType = [(MBContainer *)self containerType];
  identifier = [(MBContainer *)self identifier];
  volumeMountPoint = [(MBContainer *)self volumeMountPoint];
  containerDir = [(MBContainer *)self containerDir];
  if (containerType == 4)
  {
    [MBDomain systemContainerDomainWithIdentifier:identifier volumeMountPoint:volumeMountPoint rootPath:containerDir];
  }

  else
  {
    [MBDomain systemSharedContainerDomainWithIdentifier:identifier volumeMountPoint:volumeMountPoint rootPath:containerDir];
  }
  v7 = ;

  if (qword_10011E388 != -1)
  {
    sub_10009DBAC();
  }

  [v7 setRelativePathsToBackupAndRestore:qword_10011E380];
  if (qword_10011E398 != -1)
  {
    sub_10009DBC0();
  }

  [v7 setRelativePathsNotToBackup:qword_10011E390];
  if (qword_10011E3A8 != -1)
  {
    sub_10009DBD4();
  }

  [v7 setRelativePathsNotToRestore:qword_10011E3A0];
  [v7 setShouldDigest:0];

  return v7;
}

@end