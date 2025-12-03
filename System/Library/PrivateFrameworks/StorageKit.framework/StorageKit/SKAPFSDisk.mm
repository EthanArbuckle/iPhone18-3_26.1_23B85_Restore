@interface SKAPFSDisk
- (BOOL)hasVolumeSiblings;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesDictionary:(id)dictionary;
- (id)container;
- (id)dictionaryRepresentation;
- (id)minimalDictionaryRepresentation;
- (id)wholeDiskIdentifier;
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation SKAPFSDisk

- (void)updateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13.receiver = selfCopy;
  v13.super_class = SKAPFSDisk;
  [(SKDisk *)&v13 updateWithDictionary:dictionaryCopy];
  v6 = [dictionaryCopy objectForKey:@"isEncrypted"];
  -[SKAPFSDisk setIsEncrypted:](selfCopy, "setIsEncrypted:", [v6 BOOLValue]);

  v7 = [dictionaryCopy objectForKey:@"defaultEffaceable"];
  -[SKAPFSDisk setDefaultEffaceable:](selfCopy, "setDefaultEffaceable:", [v7 BOOLValue]);

  v8 = [dictionaryCopy objectForKey:@"usedSpace"];
  -[SKAPFSDisk setUsedSpace:](selfCopy, "setUsedSpace:", [v8 unsignedLongLongValue]);

  v9 = [dictionaryCopy objectForKey:@"reserveSpace"];
  -[SKAPFSDisk setReserveSpace:](selfCopy, "setReserveSpace:", [v9 unsignedLongLongValue]);

  v10 = [dictionaryCopy objectForKey:@"quotaSpace"];
  -[SKAPFSDisk setQuotaSpace:](selfCopy, "setQuotaSpace:", [v10 unsignedLongLongValue]);

  v11 = [dictionaryCopy objectForKey:@"apfsRole"];
  [(SKAPFSDisk *)selfCopy setApfsRole:v11];

  v12 = [dictionaryCopy objectForKey:@"apfsVolumeGroupUUID"];
  [(SKAPFSDisk *)selfCopy setApfsVolumeGroupUUID:v12];

  objc_sync_exit(selfCopy);
}

- (id)dictionaryRepresentation
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v14.receiver = selfCopy;
  v14.super_class = SKAPFSDisk;
  dictionaryRepresentation = [(SKDisk *)&v14 dictionaryRepresentation];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SKAPFSDisk usedSpace](selfCopy, "usedSpace")}];
  [dictionaryRepresentation setObject:v4 forKey:@"usedSpace"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SKAPFSDisk quotaSpace](selfCopy, "quotaSpace")}];
  [dictionaryRepresentation setObject:v5 forKey:@"quotaSpace"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SKAPFSDisk reserveSpace](selfCopy, "reserveSpace")}];
  [dictionaryRepresentation setObject:v6 forKey:@"reserveSpace"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKAPFSDisk isEncrypted](selfCopy, "isEncrypted")}];
  [dictionaryRepresentation setObject:v7 forKey:@"isEncrypted"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKAPFSDisk defaultEffaceable](selfCopy, "defaultEffaceable")}];
  [dictionaryRepresentation setObject:v8 forKey:@"defaultEffaceable"];

  apfsVolumeGroupUUID = [(SKAPFSDisk *)selfCopy apfsVolumeGroupUUID];

  if (apfsVolumeGroupUUID)
  {
    apfsVolumeGroupUUID2 = [(SKAPFSDisk *)selfCopy apfsVolumeGroupUUID];
    [dictionaryRepresentation setObject:apfsVolumeGroupUUID2 forKey:@"apfsVolumeGroupUUID"];
  }

  apfsRole = [(SKAPFSDisk *)selfCopy apfsRole];

  if (apfsRole)
  {
    apfsRole2 = [(SKAPFSDisk *)selfCopy apfsRole];
    [dictionaryRepresentation setObject:apfsRole2 forKey:@"apfsRole"];
  }

  objc_sync_exit(selfCopy);

  return dictionaryRepresentation;
}

- (id)container
{
  cachedWholeDiskByIdentifier = [(SKDisk *)self cachedWholeDiskByIdentifier];
  if (cachedWholeDiskByIdentifier && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = cachedWholeDiskByIdentifier;
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
    diskIdentifier = [(SKDisk *)self diskIdentifier];
    v5 = [v3 initWithString:diskIdentifier];

    v6 = MEMORY[0x277CCACA8];
    host = [v5 host];
    wholeDiskIdentifier = [v6 stringWithFormat:@"apfs://%@", host];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SKAPFSDisk;
    wholeDiskIdentifier = [(SKDisk *)&v10 wholeDiskIdentifier];
  }

  return wholeDiskIdentifier;
}

- (BOOL)matchesDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([(SKDisk *)self isIOMediaDisk])
  {
    v12.receiver = self;
    v12.super_class = SKAPFSDisk;
    v5 = [(SKDisk *)&v12 matchesDictionary:dictionaryCopy];
  }

  else
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [dictionaryCopy objectForKey:@"**ClassName**"];
    if ([v7 isEqualToString:v8])
    {
      mountPoint = [(SKDisk *)self mountPoint];
      v10 = [dictionaryCopy objectForKey:@"mountPoint"];
      v5 = [mountPoint isEqual:v10];
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6.receiver = selfCopy;
  v6.super_class = SKAPFSDisk;
  minimalDictionaryRepresentation = [(SKDisk *)&v6 minimalDictionaryRepresentation];
  if (![(SKDisk *)selfCopy isIOMediaDisk])
  {
    mountPoint = [(SKDisk *)selfCopy mountPoint];
    [minimalDictionaryRepresentation setValue:mountPoint forKey:@"mountPoint"];
  }

  objc_sync_exit(selfCopy);

  return minimalDictionaryRepresentation;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([(SKDisk *)self isIOMediaDisk])
  {
    v10.receiver = self;
    v10.super_class = SKAPFSDisk;
    v5 = [(SKDisk *)&v10 isEqual:equalCopy];
  }

  else if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v6 = equalCopy;
    mountPoint = [(SKDisk *)self mountPoint];
    mountPoint2 = [v6 mountPoint];

    v5 = [mountPoint isEqual:mountPoint2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasVolumeSiblings
{
  container = [(SKAPFSDisk *)self container];
  if (container)
  {
    container2 = [(SKAPFSDisk *)self container];
    volumes = [container2 volumes];
    if (volumes)
    {
      container3 = [(SKAPFSDisk *)self container];
      volumes2 = [container3 volumes];
      v8 = [volumes2 count] > 1;
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