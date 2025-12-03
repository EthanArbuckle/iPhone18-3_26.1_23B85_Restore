@interface SKAPFSStoreDisk
- (BOOL)isEqual:(id)equal;
- (BOOL)isOurContainerWithDisk:(id)disk;
- (id)container;
- (id)minimalDictionaryRepresentation;
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation SKAPFSStoreDisk

- (void)updateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8.receiver = selfCopy;
  v8.super_class = SKAPFSStoreDisk;
  [(SKDisk *)&v8 updateWithDictionary:dictionaryCopy];
  v6 = [dictionaryCopy objectForKey:@"apfsContainerUUID"];
  [(SKAPFSStoreDisk *)selfCopy setApfsContainerUUID:v6];

  v7 = [dictionaryCopy objectForKey:@"apfsContainerIdentifier"];
  [(SKAPFSStoreDisk *)selfCopy setApfsContainerIdentifier:v7];

  objc_sync_exit(selfCopy);
}

- (id)minimalDictionaryRepresentation
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7.receiver = selfCopy;
  v7.super_class = SKAPFSStoreDisk;
  minimalDictionaryRepresentation = [(SKDisk *)&v7 minimalDictionaryRepresentation];
  apfsContainerUUID = [(SKAPFSStoreDisk *)selfCopy apfsContainerUUID];
  [minimalDictionaryRepresentation setValue:apfsContainerUUID forKey:@"apfsContainerUUID"];

  apfsContainerIdentifier = [(SKAPFSStoreDisk *)selfCopy apfsContainerIdentifier];
  [minimalDictionaryRepresentation setValue:apfsContainerIdentifier forKey:@"apfsContainerIdentifier"];

  objc_sync_exit(selfCopy);

  return minimalDictionaryRepresentation;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v11.receiver = self;
  v11.super_class = SKAPFSStoreDisk;
  if ([(SKDisk *)&v11 isEqual:equalCopy])
  {
    apfsContainerUUID = [(SKAPFSStoreDisk *)self apfsContainerUUID];
    apfsContainerUUID2 = [equalCopy apfsContainerUUID];
    if ([apfsContainerUUID isEqualToString:apfsContainerUUID2])
    {
      apfsContainerIdentifier = [(SKAPFSStoreDisk *)self apfsContainerIdentifier];
      apfsContainerIdentifier2 = [equalCopy apfsContainerIdentifier];
      v9 = [apfsContainerIdentifier isEqualToString:apfsContainerIdentifier2];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isOurContainerWithDisk:(id)disk
{
  diskCopy = disk;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = diskCopy;
    apfsContainerUUID = [(SKAPFSStoreDisk *)self apfsContainerUUID];
    if (!apfsContainerUUID)
    {
      goto LABEL_4;
    }

    v7 = apfsContainerUUID;
    apfsContainerUUID2 = [(SKAPFSStoreDisk *)self apfsContainerUUID];
    apfsUUID = [v5 apfsUUID];
    v10 = [apfsContainerUUID2 isEqual:apfsUUID];

    if (!v10)
    {
      v13 = 0;
    }

    else
    {
LABEL_4:
      diskIdentifier = [v5 diskIdentifier];
      apfsContainerIdentifier = [(SKAPFSStoreDisk *)self apfsContainerIdentifier];
      v13 = [diskIdentifier isEqualToString:apfsContainerIdentifier];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)container
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = +[SKBaseManager sharedManager];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allDisks = [v3 allDisks];
  v5 = [allDisks countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(allDisks);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([(SKAPFSStoreDisk *)self isOurContainerWithDisk:v9])
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [allDisks countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end