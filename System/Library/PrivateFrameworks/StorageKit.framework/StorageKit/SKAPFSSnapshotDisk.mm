@interface SKAPFSSnapshotDisk
- (id)dictionaryRepresentation;
- (id)innerDescriptionWithPrivateData:(BOOL)data;
- (id)minimalDictionaryRepresentation;
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation SKAPFSSnapshotDisk

- (void)updateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9.receiver = selfCopy;
  v9.super_class = SKAPFSSnapshotDisk;
  [(SKAPFSDisk *)&v9 updateWithDictionary:dictionaryCopy];
  v6 = [dictionaryCopy objectForKey:@"snapshotName"];
  [(SKAPFSSnapshotDisk *)selfCopy setSnapshotName:v6];

  v7 = [dictionaryCopy objectForKey:@"snapshotSealStatus"];
  -[SKAPFSSnapshotDisk setSealStatus:](selfCopy, "setSealStatus:", [v7 integerValue]);

  v8 = [dictionaryCopy objectForKey:@"apfsUUID"];
  [(SKAPFSSnapshotDisk *)selfCopy setApfsUUID:v8];

  objc_sync_exit(selfCopy);
}

- (id)dictionaryRepresentation
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10.receiver = selfCopy;
  v10.super_class = SKAPFSSnapshotDisk;
  dictionaryRepresentation = [(SKAPFSDisk *)&v10 dictionaryRepresentation];
  snapshotName = [(SKAPFSSnapshotDisk *)selfCopy snapshotName];

  if (snapshotName)
  {
    snapshotName2 = [(SKAPFSSnapshotDisk *)selfCopy snapshotName];
    [dictionaryRepresentation setObject:snapshotName2 forKeyedSubscript:@"snapshotName"];
  }

  if ([(SKAPFSSnapshotDisk *)selfCopy sealStatus])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SKAPFSSnapshotDisk sealStatus](selfCopy, "sealStatus")}];
    [dictionaryRepresentation setObject:v6 forKeyedSubscript:@"snapshotSealStatus"];
  }

  apfsUUID = [(SKAPFSSnapshotDisk *)selfCopy apfsUUID];

  if (apfsUUID)
  {
    apfsUUID2 = [(SKAPFSSnapshotDisk *)selfCopy apfsUUID];
    [dictionaryRepresentation setObject:apfsUUID2 forKeyedSubscript:@"apfsUUID"];
  }

  objc_sync_exit(selfCopy);

  return dictionaryRepresentation;
}

- (id)minimalDictionaryRepresentation
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10.receiver = selfCopy;
  v10.super_class = SKAPFSSnapshotDisk;
  minimalDictionaryRepresentation = [(SKAPFSDisk *)&v10 minimalDictionaryRepresentation];
  snapshotName = [(SKAPFSSnapshotDisk *)selfCopy snapshotName];

  if (snapshotName)
  {
    snapshotName2 = [(SKAPFSSnapshotDisk *)selfCopy snapshotName];
    [minimalDictionaryRepresentation setObject:snapshotName2 forKeyedSubscript:@"snapshotName"];
  }

  if ([(SKAPFSSnapshotDisk *)selfCopy sealStatus])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SKAPFSSnapshotDisk sealStatus](selfCopy, "sealStatus")}];
    [minimalDictionaryRepresentation setObject:v6 forKeyedSubscript:@"snapshotSealStatus"];
  }

  apfsUUID = [(SKAPFSSnapshotDisk *)selfCopy apfsUUID];

  if (apfsUUID)
  {
    apfsUUID2 = [(SKAPFSSnapshotDisk *)selfCopy apfsUUID];
    [minimalDictionaryRepresentation setObject:apfsUUID2 forKeyedSubscript:@"apfsUUID"];
  }

  objc_sync_exit(selfCopy);

  return minimalDictionaryRepresentation;
}

- (id)innerDescriptionWithPrivateData:(BOOL)data
{
  dataCopy = data;
  v5 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = SKAPFSSnapshotDisk;
  v6 = [(SKAPFSDisk *)&v13 innerDescriptionWithPrivateData:?];
  if (dataCopy)
  {
    snapshotName = [(SKAPFSSnapshotDisk *)self snapshotName];
  }

  else
  {
    snapshotName = @"<private>";
  }

  snapshotUUID = [(SKAPFSSnapshotDisk *)self snapshotUUID];
  v9 = snapshotUUID;
  v10 = @"--";
  if (snapshotUUID)
  {
    v10 = snapshotUUID;
  }

  v11 = [v5 stringWithFormat:@"%@, Snapshot Name: %@, Snapshot UUID: %@", v6, snapshotName, v10];

  if (dataCopy)
  {
  }

  return v11;
}

@end