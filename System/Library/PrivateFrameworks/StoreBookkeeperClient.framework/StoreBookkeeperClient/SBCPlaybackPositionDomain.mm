@interface SBCPlaybackPositionDomain
+ (id)domainForExtrasValues;
+ (id)domainForSyncingMusicLibraryWithLibraryPath:(id)path;
- (SBCPlaybackPositionDomain)initWithCoder:(id)coder;
- (SBCPlaybackPositionDomain)initWithDomainIdentifier:(id)identifier foreignDatabasePath:(id)path;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBCPlaybackPositionDomain

- (SBCPlaybackPositionDomain)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"SBCDomainIdentifier"];
  v6 = [coderCopy decodeObjectForKey:@"SBCForeignDatabasePath"];
  v7 = [(SBCPlaybackPositionDomain *)self initWithDomainIdentifier:v5 foreignDatabasePath:v6];
  if (v7)
  {
    v8 = [coderCopy decodeObjectForKey:@"SBCUbiquitousDatabasePath"];
    [(SBCPlaybackPositionDomain *)v7 setUbiquitousDatabasePath:v8];

    -[SBCPlaybackPositionDomain setSupportsSyncProtocol:](v7, "setSupportsSyncProtocol:", [coderCopy decodeBoolForKey:@"SBCSupportsSyncProtocol"]);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  domainIdentifier = self->_domainIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:domainIdentifier forKey:@"SBCDomainIdentifier"];
  [coderCopy encodeObject:self->_foreignDatabasePath forKey:@"SBCForeignDatabasePath"];
  [coderCopy encodeObject:self->_ubiquitousDatabasePath forKey:@"SBCUbiquitousDatabasePath"];
  [coderCopy encodeBool:self->_supportsSyncProtocol forKey:@"SBCSupportsSyncProtocol"];
}

- (id)description
{
  if ([(NSString *)self->_foreignDatabasePath length])
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@", foreignDB = %@", self->_foreignDatabasePath];
  }

  else
  {
    v3 = &stru_287CA2B78;
  }

  v4 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = SBCPlaybackPositionDomain;
  v5 = [(SBCPlaybackPositionDomain *)&v10 description];
  v6 = v5;
  if (self->_supportsSyncProtocol)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v4 stringWithFormat:@"%@ domain='%@'%@, supportsSync=%@", v5, self->_domainIdentifier, v3, v7];

  return v8;
}

- (SBCPlaybackPositionDomain)initWithDomainIdentifier:(id)identifier foreignDatabasePath:(id)path
{
  identifierCopy = identifier;
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = SBCPlaybackPositionDomain;
  v9 = [(SBCPlaybackPositionDomain *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_domainIdentifier, identifier);
    stringByStandardizingPath = [pathCopy stringByStandardizingPath];
    foreignDatabasePath = v10->_foreignDatabasePath;
    v10->_foreignDatabasePath = stringByStandardizingPath;
  }

  return v10;
}

+ (id)domainForExtrasValues
{
  v2 = [self alloc];
  v3 = [v2 initWithDomainIdentifier:*MEMORY[0x277D7F950] foreignDatabasePath:0];

  return v3;
}

+ (id)domainForSyncingMusicLibraryWithLibraryPath:(id)path
{
  pathCopy = path;
  v4 = [SBCMusicLibraryPlaybackPositionDomain alloc];
  v5 = [(SBCPlaybackPositionDomain *)v4 initWithDomainIdentifier:*MEMORY[0x277D7F948] foreignDatabasePath:pathCopy];

  [(SBCPlaybackPositionDomain *)v5 setSupportsSyncProtocol:1];

  return v5;
}

@end