@interface MBSystemContainer
+ (id)systemContainerWithDomainName:(id)a3 containerDir:(id)a4 isShared:(BOOL)a5;
- (id)domain;
@end

@implementation MBSystemContainer

+ (id)systemContainerWithDomainName:(id)a3 containerDir:(id)a4 isShared:(BOOL)a5
{
  v7 = @"System/Data";
  if (a5)
  {
    v7 = @"System/Shared";
  }

  v15[0] = kCFBundleIdentifierKey;
  v8 = v7;
  v9 = a4;
  v10 = [MBDomain containerIDWithName:a3];
  v16[0] = v10;
  v16[1] = v8;
  v15[1] = @"ContainerContentClass";
  v15[2] = @"Container";
  v16[2] = v9;
  v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];

  v12 = [MBSystemContainer alloc];
  v13 = [(MBContainer *)v12 initWithPropertyList:v11 volumeMountPoint:0];

  return v13;
}

- (id)domain
{
  v3 = [(MBContainer *)self containerType];
  v4 = [(MBContainer *)self identifier];
  v5 = [(MBContainer *)self volumeMountPoint];
  v6 = [(MBContainer *)self containerDir];
  if (v3 == 4)
  {
    [MBDomain systemContainerDomainWithIdentifier:v4 volumeMountPoint:v5 rootPath:v6];
  }

  else
  {
    [MBDomain systemSharedContainerDomainWithIdentifier:v4 volumeMountPoint:v5 rootPath:v6];
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