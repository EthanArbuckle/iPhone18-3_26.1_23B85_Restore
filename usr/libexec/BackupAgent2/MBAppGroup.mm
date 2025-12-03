@interface MBAppGroup
- (id)domain;
@end

@implementation MBAppGroup

- (id)domain
{
  identifier = [(MBContainer *)self identifier];
  volumeMountPoint = [(MBContainer *)self volumeMountPoint];
  containerDir = [(MBContainer *)self containerDir];
  v6 = [MBDomain appGroupDomainWithIdentifier:identifier volumeMountPoint:volumeMountPoint rootPath:containerDir];

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