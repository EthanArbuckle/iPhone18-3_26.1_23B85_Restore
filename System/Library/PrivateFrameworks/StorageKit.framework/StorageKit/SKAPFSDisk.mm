@interface SKAPFSDisk
- (BOOL)hasVolumeSiblings;
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesDictionary:(id)a3;
- (id)container;
- (id)dictionaryRepresentation;
- (id)minimalDictionaryRepresentation;
- (id)wholeDiskIdentifier;
- (void)updateWithDictionary:(id)a3;
@end

@implementation SKAPFSDisk

- (void)updateWithDictionary:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v13.receiver = v5;
  v13.super_class = SKAPFSDisk;
  [(SKDisk *)&v13 updateWithDictionary:v4];
  v6 = [v4 objectForKey:@"isEncrypted"];
  -[SKAPFSDisk setIsEncrypted:](v5, "setIsEncrypted:", [v6 BOOLValue]);

  v7 = [v4 objectForKey:@"defaultEffaceable"];
  -[SKAPFSDisk setDefaultEffaceable:](v5, "setDefaultEffaceable:", [v7 BOOLValue]);

  v8 = [v4 objectForKey:@"usedSpace"];
  -[SKAPFSDisk setUsedSpace:](v5, "setUsedSpace:", [v8 unsignedLongLongValue]);

  v9 = [v4 objectForKey:@"reserveSpace"];
  -[SKAPFSDisk setReserveSpace:](v5, "setReserveSpace:", [v9 unsignedLongLongValue]);

  v10 = [v4 objectForKey:@"quotaSpace"];
  -[SKAPFSDisk setQuotaSpace:](v5, "setQuotaSpace:", [v10 unsignedLongLongValue]);

  v11 = [v4 objectForKey:@"apfsRole"];
  [(SKAPFSDisk *)v5 setApfsRole:v11];

  v12 = [v4 objectForKey:@"apfsVolumeGroupUUID"];
  [(SKAPFSDisk *)v5 setApfsVolumeGroupUUID:v12];

  objc_sync_exit(v5);
}

- (id)dictionaryRepresentation
{
  v2 = self;
  objc_sync_enter(v2);
  v14.receiver = v2;
  v14.super_class = SKAPFSDisk;
  v3 = [(SKDisk *)&v14 dictionaryRepresentation];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SKAPFSDisk usedSpace](v2, "usedSpace")}];
  [v3 setObject:v4 forKey:@"usedSpace"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SKAPFSDisk quotaSpace](v2, "quotaSpace")}];
  [v3 setObject:v5 forKey:@"quotaSpace"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SKAPFSDisk reserveSpace](v2, "reserveSpace")}];
  [v3 setObject:v6 forKey:@"reserveSpace"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKAPFSDisk isEncrypted](v2, "isEncrypted")}];
  [v3 setObject:v7 forKey:@"isEncrypted"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKAPFSDisk defaultEffaceable](v2, "defaultEffaceable")}];
  [v3 setObject:v8 forKey:@"defaultEffaceable"];

  v9 = [(SKAPFSDisk *)v2 apfsVolumeGroupUUID];

  if (v9)
  {
    v10 = [(SKAPFSDisk *)v2 apfsVolumeGroupUUID];
    [v3 setObject:v10 forKey:@"apfsVolumeGroupUUID"];
  }

  v11 = [(SKAPFSDisk *)v2 apfsRole];

  if (v11)
  {
    v12 = [(SKAPFSDisk *)v2 apfsRole];
    [v3 setObject:v12 forKey:@"apfsRole"];
  }

  objc_sync_exit(v2);

  return v3;
}

- (id)container
{
  v2 = [(SKDisk *)self cachedWholeDiskByIdentifier];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)wholeDiskIdentifier
{
  if ([(SKDisk *)self isLiveFSAPFSDisk])
  {
    v3 = objc_alloc(MEMORY[0x277CBEBC0]);
    v4 = [(SKDisk *)self diskIdentifier];
    v5 = [v3 initWithString:v4];

    v6 = MEMORY[0x277CCACA8];
    v7 = [v5 host];
    v8 = [v6 stringWithFormat:@"apfs://%@", v7];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SKAPFSDisk;
    v8 = [(SKDisk *)&v10 wholeDiskIdentifier];
  }

  return v8;
}

- (BOOL)matchesDictionary:(id)a3
{
  v4 = a3;
  if ([(SKDisk *)self isIOMediaDisk])
  {
    v12.receiver = self;
    v12.super_class = SKAPFSDisk;
    v5 = [(SKDisk *)&v12 matchesDictionary:v4];
  }

  else
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v4 objectForKey:@"**ClassName**"];
    if ([v7 isEqualToString:v8])
    {
      v9 = [(SKDisk *)self mountPoint];
      v10 = [v4 objectForKey:@"mountPoint"];
      v5 = [v9 isEqual:v10];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)minimalDictionaryRepresentation
{
  v2 = self;
  objc_sync_enter(v2);
  v6.receiver = v2;
  v6.super_class = SKAPFSDisk;
  v3 = [(SKDisk *)&v6 minimalDictionaryRepresentation];
  if (![(SKDisk *)v2 isIOMediaDisk])
  {
    v4 = [(SKDisk *)v2 mountPoint];
    [v3 setValue:v4 forKey:@"mountPoint"];
  }

  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([(SKDisk *)self isIOMediaDisk])
  {
    v10.receiver = self;
    v10.super_class = SKAPFSDisk;
    v5 = [(SKDisk *)&v10 isEqual:v4];
  }

  else if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v6 = v4;
    v7 = [(SKDisk *)self mountPoint];
    v8 = [v6 mountPoint];

    v5 = [v7 isEqual:v8];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasVolumeSiblings
{
  v3 = [(SKAPFSDisk *)self container];
  if (v3)
  {
    v4 = [(SKAPFSDisk *)self container];
    v5 = [v4 volumes];
    if (v5)
    {
      v6 = [(SKAPFSDisk *)self container];
      v7 = [v6 volumes];
      v8 = [v7 count] > 1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end