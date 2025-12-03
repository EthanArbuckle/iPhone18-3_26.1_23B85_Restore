@interface _MFRootlessMailboxUid
- (id)displayName;
- (id)tildeAbbreviatedPath;
@end

@implementation _MFRootlessMailboxUid

- (id)displayName
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  name = [(MFMailboxUid *)self name];
  v5 = [defaultManager displayNameAtPath:name];

  return v5;
}

- (id)tildeAbbreviatedPath
{
  name = [(MFMailboxUid *)self name];
  mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath = [name mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath];

  return mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath;
}

@end