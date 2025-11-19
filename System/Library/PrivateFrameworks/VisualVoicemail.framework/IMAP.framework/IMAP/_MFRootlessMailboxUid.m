@interface _MFRootlessMailboxUid
- (id)displayName;
- (id)tildeAbbreviatedPath;
@end

@implementation _MFRootlessMailboxUid

- (id)displayName
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(MFMailboxUid *)self name];
  v5 = [v3 displayNameAtPath:v4];

  return v5;
}

- (id)tildeAbbreviatedPath
{
  v2 = [(MFMailboxUid *)self name];
  v3 = [v2 mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath];

  return v3;
}

@end