@interface SKAPFSSnapshotDisk
- (id)dictionaryRepresentation;
- (id)innerDescriptionWithPrivateData:(BOOL)a3;
- (id)minimalDictionaryRepresentation;
- (void)updateWithDictionary:(id)a3;
@end

@implementation SKAPFSSnapshotDisk

- (void)updateWithDictionary:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v9.receiver = v5;
  v9.super_class = SKAPFSSnapshotDisk;
  [(SKAPFSDisk *)&v9 updateWithDictionary:v4];
  v6 = [v4 objectForKey:@"snapshotName"];
  [(SKAPFSSnapshotDisk *)v5 setSnapshotName:v6];

  v7 = [v4 objectForKey:@"snapshotSealStatus"];
  -[SKAPFSSnapshotDisk setSealStatus:](v5, "setSealStatus:", [v7 integerValue]);

  v8 = [v4 objectForKey:@"apfsUUID"];
  [(SKAPFSSnapshotDisk *)v5 setApfsUUID:v8];

  objc_sync_exit(v5);
}

- (id)dictionaryRepresentation
{
  v2 = self;
  objc_sync_enter(v2);
  v10.receiver = v2;
  v10.super_class = SKAPFSSnapshotDisk;
  v3 = [(SKAPFSDisk *)&v10 dictionaryRepresentation];
  v4 = [(SKAPFSSnapshotDisk *)v2 snapshotName];

  if (v4)
  {
    v5 = [(SKAPFSSnapshotDisk *)v2 snapshotName];
    [v3 setObject:v5 forKeyedSubscript:@"snapshotName"];
  }

  if ([(SKAPFSSnapshotDisk *)v2 sealStatus])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SKAPFSSnapshotDisk sealStatus](v2, "sealStatus")}];
    [v3 setObject:v6 forKeyedSubscript:@"snapshotSealStatus"];
  }

  v7 = [(SKAPFSSnapshotDisk *)v2 apfsUUID];

  if (v7)
  {
    v8 = [(SKAPFSSnapshotDisk *)v2 apfsUUID];
    [v3 setObject:v8 forKeyedSubscript:@"apfsUUID"];
  }

  objc_sync_exit(v2);

  return v3;
}

- (id)minimalDictionaryRepresentation
{
  v2 = self;
  objc_sync_enter(v2);
  v10.receiver = v2;
  v10.super_class = SKAPFSSnapshotDisk;
  v3 = [(SKAPFSDisk *)&v10 minimalDictionaryRepresentation];
  v4 = [(SKAPFSSnapshotDisk *)v2 snapshotName];

  if (v4)
  {
    v5 = [(SKAPFSSnapshotDisk *)v2 snapshotName];
    [v3 setObject:v5 forKeyedSubscript:@"snapshotName"];
  }

  if ([(SKAPFSSnapshotDisk *)v2 sealStatus])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SKAPFSSnapshotDisk sealStatus](v2, "sealStatus")}];
    [v3 setObject:v6 forKeyedSubscript:@"snapshotSealStatus"];
  }

  v7 = [(SKAPFSSnapshotDisk *)v2 apfsUUID];

  if (v7)
  {
    v8 = [(SKAPFSSnapshotDisk *)v2 apfsUUID];
    [v3 setObject:v8 forKeyedSubscript:@"apfsUUID"];
  }

  objc_sync_exit(v2);

  return v3;
}

- (id)innerDescriptionWithPrivateData:(BOOL)a3
{
  v3 = a3;
  v5 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = SKAPFSSnapshotDisk;
  v6 = [(SKAPFSDisk *)&v13 innerDescriptionWithPrivateData:?];
  if (v3)
  {
    v7 = [(SKAPFSSnapshotDisk *)self snapshotName];
  }

  else
  {
    v7 = @"<private>";
  }

  v8 = [(SKAPFSSnapshotDisk *)self snapshotUUID];
  v9 = v8;
  v10 = @"--";
  if (v8)
  {
    v10 = v8;
  }

  v11 = [v5 stringWithFormat:@"%@, Snapshot Name: %@, Snapshot UUID: %@", v6, v7, v10];

  if (v3)
  {
  }

  return v11;
}

@end