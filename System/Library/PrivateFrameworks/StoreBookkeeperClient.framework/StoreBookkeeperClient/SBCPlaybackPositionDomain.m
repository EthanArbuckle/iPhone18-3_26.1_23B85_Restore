@interface SBCPlaybackPositionDomain
+ (id)domainForExtrasValues;
+ (id)domainForSyncingMusicLibraryWithLibraryPath:(id)a3;
- (SBCPlaybackPositionDomain)initWithCoder:(id)a3;
- (SBCPlaybackPositionDomain)initWithDomainIdentifier:(id)a3 foreignDatabasePath:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBCPlaybackPositionDomain

- (SBCPlaybackPositionDomain)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"SBCDomainIdentifier"];
  v6 = [v4 decodeObjectForKey:@"SBCForeignDatabasePath"];
  v7 = [(SBCPlaybackPositionDomain *)self initWithDomainIdentifier:v5 foreignDatabasePath:v6];
  if (v7)
  {
    v8 = [v4 decodeObjectForKey:@"SBCUbiquitousDatabasePath"];
    [(SBCPlaybackPositionDomain *)v7 setUbiquitousDatabasePath:v8];

    -[SBCPlaybackPositionDomain setSupportsSyncProtocol:](v7, "setSupportsSyncProtocol:", [v4 decodeBoolForKey:@"SBCSupportsSyncProtocol"]);
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  domainIdentifier = self->_domainIdentifier;
  v5 = a3;
  [v5 encodeObject:domainIdentifier forKey:@"SBCDomainIdentifier"];
  [v5 encodeObject:self->_foreignDatabasePath forKey:@"SBCForeignDatabasePath"];
  [v5 encodeObject:self->_ubiquitousDatabasePath forKey:@"SBCUbiquitousDatabasePath"];
  [v5 encodeBool:self->_supportsSyncProtocol forKey:@"SBCSupportsSyncProtocol"];
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

- (SBCPlaybackPositionDomain)initWithDomainIdentifier:(id)a3 foreignDatabasePath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SBCPlaybackPositionDomain;
  v9 = [(SBCPlaybackPositionDomain *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_domainIdentifier, a3);
    v11 = [v8 stringByStandardizingPath];
    foreignDatabasePath = v10->_foreignDatabasePath;
    v10->_foreignDatabasePath = v11;
  }

  return v10;
}

+ (id)domainForExtrasValues
{
  v2 = [a1 alloc];
  v3 = [v2 initWithDomainIdentifier:*MEMORY[0x277D7F950] foreignDatabasePath:0];

  return v3;
}

+ (id)domainForSyncingMusicLibraryWithLibraryPath:(id)a3
{
  v3 = a3;
  v4 = [SBCMusicLibraryPlaybackPositionDomain alloc];
  v5 = [(SBCPlaybackPositionDomain *)v4 initWithDomainIdentifier:*MEMORY[0x277D7F948] foreignDatabasePath:v3];

  [(SBCPlaybackPositionDomain *)v5 setSupportsSyncProtocol:1];

  return v5;
}

@end