@interface SKAPFSStoreDisk
- (BOOL)isEqual:(id)a3;
- (BOOL)isOurContainerWithDisk:(id)a3;
- (id)container;
- (id)minimalDictionaryRepresentation;
- (void)updateWithDictionary:(id)a3;
@end

@implementation SKAPFSStoreDisk

- (void)updateWithDictionary:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v8.receiver = v5;
  v8.super_class = SKAPFSStoreDisk;
  [(SKDisk *)&v8 updateWithDictionary:v4];
  v6 = [v4 objectForKey:@"apfsContainerUUID"];
  [(SKAPFSStoreDisk *)v5 setApfsContainerUUID:v6];

  v7 = [v4 objectForKey:@"apfsContainerIdentifier"];
  [(SKAPFSStoreDisk *)v5 setApfsContainerIdentifier:v7];

  objc_sync_exit(v5);
}

- (id)minimalDictionaryRepresentation
{
  v2 = self;
  objc_sync_enter(v2);
  v7.receiver = v2;
  v7.super_class = SKAPFSStoreDisk;
  v3 = [(SKDisk *)&v7 minimalDictionaryRepresentation];
  v4 = [(SKAPFSStoreDisk *)v2 apfsContainerUUID];
  [v3 setValue:v4 forKey:@"apfsContainerUUID"];

  v5 = [(SKAPFSStoreDisk *)v2 apfsContainerIdentifier];
  [v3 setValue:v5 forKey:@"apfsContainerIdentifier"];

  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SKAPFSStoreDisk;
  if ([(SKDisk *)&v11 isEqual:v4])
  {
    v5 = [(SKAPFSStoreDisk *)self apfsContainerUUID];
    v6 = [v4 apfsContainerUUID];
    if ([v5 isEqualToString:v6])
    {
      v7 = [(SKAPFSStoreDisk *)self apfsContainerIdentifier];
      v8 = [v4 apfsContainerIdentifier];
      v9 = [v7 isEqualToString:v8];
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

- (BOOL)isOurContainerWithDisk:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SKAPFSStoreDisk *)self apfsContainerUUID];
    if (!v6)
    {
      goto LABEL_4;
    }

    v7 = v6;
    v8 = [(SKAPFSStoreDisk *)self apfsContainerUUID];
    v9 = [v5 apfsUUID];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
      v13 = 0;
    }

    else
    {
LABEL_4:
      v11 = [v5 diskIdentifier];
      v12 = [(SKAPFSStoreDisk *)self apfsContainerIdentifier];
      v13 = [v11 isEqualToString:v12];
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
  v4 = [v3 allDisks];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([(SKAPFSStoreDisk *)self isOurContainerWithDisk:v9])
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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