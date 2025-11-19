@interface MBAppGroup
- (id)domain;
@end

@implementation MBAppGroup

- (id)domain
{
  v3 = [(MBContainer *)self identifier];
  v4 = [(MBContainer *)self volumeMountPoint];
  v5 = [(MBContainer *)self containerDir];
  v6 = [MBDomain appGroupDomainWithIdentifier:v3 volumeMountPoint:v4 rootPath:v5];

  if (qword_10011E3E8 != -1)
  {
    sub_10009DC24();
  }

  [v6 setRelativePathsToBackupAndRestore:qword_10011E3E0];
  if (qword_10011E3F8 != -1)
  {
    sub_10009DC38();
  }

  [v6 setRelativePathsNotToBackup:qword_10011E3F0];
  if (qword_10011E408 != -1)
  {
    sub_10009DC4C();
  }

  [v6 setRelativePathsNotToRestore:qword_10011E400];
  [v6 setShouldDigest:0];

  return v6;
}

@end