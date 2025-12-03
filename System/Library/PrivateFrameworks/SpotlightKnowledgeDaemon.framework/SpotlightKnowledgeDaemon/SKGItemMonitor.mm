@interface SKGItemMonitor
- (BOOL)haveSeenItem:(id)item bundle:(id)bundle persona:(id)persona protectionClass:(id)class;
- (SKGItemMonitor)initWithResourceDirectoryPath:(id)path;
- (int64_t)domainCount;
- (int64_t)personaCountOfDomain:(id)domain;
- (void)addSeenItem:(id)item bundle:(id)bundle persona:(id)persona protectionClass:(id)class;
- (void)clear;
- (void)flush;
- (void)load;
- (void)purgeOld:(id)old;
@end

@implementation SKGItemMonitor

- (SKGItemMonitor)initWithResourceDirectoryPath:(id)path
{
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = SKGItemMonitor;
  v5 = [(SKGItemMonitor *)&v11 init];
  if (v5)
  {
    pathCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/oids", pathCopy];
    resourcePath = v5->_resourcePath;
    v5->_resourcePath = pathCopy;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    domains = v5->_domains;
    v5->_domains = v8;

    [(SKGItemMonitor *)v5 load];
    [(SKGItemMonitor *)v5 purgeOld:pathCopy];
  }

  return v5;
}

- (void)load
{
  selfCopy = self;
  v49[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:self->_resourcePath];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v3 path];
  v6 = [defaultManager fileExistsAtPath:path];

  if (v6)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = *MEMORY[0x277CBE8E8];
    v49[0] = *MEMORY[0x277CBE8E8];
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];
    v34 = v3;
    v10 = [defaultManager2 enumeratorAtURL:v3 includingPropertiesForKeys:v9 options:4 errorHandler:&__block_literal_global_33];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v10;
    v11 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v45;
      v39 = *MEMORY[0x277CBECE8];
      v40 = selfCopy;
      v35 = *v45;
      v36 = v8;
      do
      {
        v14 = 0;
        v37 = v12;
        do
        {
          if (*v45 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v44 + 1) + 8 * v14);
          v43 = 0;
          [v15 getResourceValue:&v43 forKey:v8 error:0];
          v16 = v43;
          v17 = [v16 componentsSeparatedByString:@"_"];
          if ([v17 count] == 3)
          {
            path2 = [v15 path];
            v19 = open([path2 UTF8String], 256);

            v42 = 0;
            if (v19 < 0 || (Mutable = RLEOIDArrayDeserialize(v39, v19, &v42)) == 0)
            {
              Mutable = RLEOIDArrayCreateMutable(v39);
            }

            v21 = [v17 objectAtIndexedSubscript:0];
            v22 = [v17 objectAtIndexedSubscript:1];
            v41 = [v17 objectAtIndexedSubscript:2];
            v23 = [(NSMutableDictionary *)selfCopy->_domains objectForKeyedSubscript:v21];

            if (!v23)
            {
              domains = selfCopy->_domains;
              dictionary = [MEMORY[0x277CBEB38] dictionary];
              [(NSMutableDictionary *)domains setObject:dictionary forKey:v21];

              selfCopy = v40;
            }

            v26 = [(NSMutableDictionary *)selfCopy->_domains objectForKeyedSubscript:v21];
            [v26 objectForKeyedSubscript:v22];
            v28 = v27 = selfCopy;

            if (!v28)
            {
              v29 = [(NSMutableDictionary *)v27->_domains objectForKeyedSubscript:v21];
              dictionary2 = [MEMORY[0x277CBEB38] dictionary];
              [v29 setObject:dictionary2 forKey:v22];
            }

            v31 = [(NSMutableDictionary *)v27->_domains objectForKeyedSubscript:v21];
            v32 = [v31 objectForKeyedSubscript:v22];
            [v32 setObject:Mutable forKey:v41];

            CFRelease(Mutable);
            if ((v19 & 0x80000000) == 0)
            {
              close(v19);
            }

            selfCopy = v40;
            v13 = v35;
            v8 = v36;
            v12 = v37;
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v12);
    }

    v3 = v34;
  }

  v33 = *MEMORY[0x277D85DE8];
}

BOOL __22__SKGItemMonitor_load__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __22__SKGItemMonitor_load__block_invoke_cold_1();
  }

  return v5 != 0;
}

- (void)flush
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_3(&dword_231B25000, MEMORY[0x277D86220], v0, "SKG: item monitor - unable to create resources (%@): %@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)purgeOld:(id)old
{
  v44 = *MEMORY[0x277D85DE8];
  oldCopy = old;
  stringByDeletingLastPathComponent = [oldCopy stringByDeletingLastPathComponent];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [defaultManager fileExistsAtPath:stringByDeletingLastPathComponent];

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v38 = 0;
    v9 = [defaultManager2 contentsOfDirectoryAtPath:stringByDeletingLastPathComponent error:&v38];
    v10 = v38;
    v11 = v10;
    if (v9)
    {
      v31 = v10;
      v26 = v9;
      v27 = v7;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v12 = v9;
      v13 = [v12 countByEnumeratingWithState:&v34 objects:v43 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = MEMORY[0x277D86220];
        v16 = *v35;
        v29 = defaultManager2;
        v30 = stringByDeletingLastPathComponent;
        v28 = *v35;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v35 != v16)
            {
              objc_enumerationMutation(v12);
            }

            v18 = *(*(&v34 + 1) + 8 * i);
            v19 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:{v18, v26, v27}];
            v33 = 0;
            [defaultManager2 fileExistsAtPath:v19 isDirectory:&v33];
            if (v33 == 1 && ([v19 isEqualToString:oldCopy] & 1) == 0)
            {
              v20 = defaultManager2;
              v21 = v12;
              v22 = oldCopy;
              v32 = v31;
              v23 = [v20 removeItemAtPath:v19 error:&v32];
              v24 = v32;

              if (v23)
              {
                v12 = v21;
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v40 = v18;
                  _os_log_impl(&dword_231B25000, v15, OS_LOG_TYPE_DEFAULT, "SKGItemMonitor: Deleting folder %@", buf, 0xCu);
                }
              }

              else
              {
                v12 = v21;
                if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v40 = v18;
                  v41 = 2112;
                  v42 = v24;
                  _os_log_error_impl(&dword_231B25000, v15, OS_LOG_TYPE_ERROR, "SKGItemMonitor: Error deleting folder %@: %@", buf, 0x16u);
                }
              }

              v31 = v24;
              oldCopy = v22;
              defaultManager2 = v29;
              stringByDeletingLastPathComponent = v30;
              v16 = v28;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v34 objects:v43 count:16];
        }

        while (v14);
      }

      v9 = v26;
      v7 = v27;
      v11 = v31;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [SKGItemMonitor purgeOld:];
    }

    objc_autoreleasePoolPop(v7);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)clear
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  domains = self->_domains;
  self->_domains = v3;

  v5 = self->_resourcePath;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [defaultManager fileExistsAtPath:v5];

  if (v7)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = 0;
    [defaultManager2 removeItemAtPath:v5 error:&v9];
  }
}

- (BOOL)haveSeenItem:(id)item bundle:(id)bundle persona:(id)persona protectionClass:(id)class
{
  itemCopy = item;
  bundleCopy = bundle;
  personaCopy = persona;
  classCopy = class;
  if ([classCopy isEqualToString:@"MobileMailIndex"])
  {
    v14 = *MEMORY[0x277CCA1A0];

    classCopy = v14;
  }

  v15 = [(NSMutableDictionary *)self->_domains objectForKeyedSubscript:bundleCopy];

  if (!v15)
  {
    goto LABEL_8;
  }

  v16 = [(NSMutableDictionary *)self->_domains objectForKeyedSubscript:bundleCopy];
  v17 = [v16 objectForKeyedSubscript:personaCopy];

  if (!v17)
  {
    goto LABEL_8;
  }

  v18 = [(NSMutableDictionary *)self->_domains objectForKeyedSubscript:bundleCopy];
  v19 = [v18 objectForKeyedSubscript:personaCopy];
  v20 = [v19 objectForKeyedSubscript:classCopy];

  if (v20)
  {
    longLongValue = [itemCopy longLongValue];
    v22 = [(NSMutableDictionary *)self->_domains objectForKeyedSubscript:bundleCopy];
    v23 = [v22 objectForKeyedSubscript:personaCopy];
    v24 = [v23 objectForKeyedSubscript:classCopy];

    if (v24)
    {
      LOBYTE(v24) = RLEOIDArrayContainsOid(v24, longLongValue) != 0;
    }
  }

  else
  {
LABEL_8:
    LOBYTE(v24) = 0;
  }

  return v24;
}

- (void)addSeenItem:(id)item bundle:(id)bundle persona:(id)persona protectionClass:(id)class
{
  itemCopy = item;
  bundleCopy = bundle;
  personaCopy = persona;
  classCopy = class;
  if ([classCopy isEqualToString:@"MobileMailIndex"])
  {
    v13 = *MEMORY[0x277CCA1A0];

    classCopy = v13;
  }

  v14 = [(NSMutableDictionary *)self->_domains objectForKeyedSubscript:bundleCopy];

  if (!v14)
  {
    domains = self->_domains;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(NSMutableDictionary *)domains setObject:dictionary forKey:bundleCopy];
  }

  v17 = [(NSMutableDictionary *)self->_domains objectForKeyedSubscript:bundleCopy];
  v18 = [v17 objectForKeyedSubscript:personaCopy];

  if (!v18)
  {
    v19 = [(NSMutableDictionary *)self->_domains objectForKeyedSubscript:bundleCopy];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    [v19 setObject:dictionary2 forKey:personaCopy];
  }

  v21 = [(NSMutableDictionary *)self->_domains objectForKeyedSubscript:bundleCopy];
  v22 = [v21 objectForKeyedSubscript:personaCopy];
  v23 = [v22 objectForKeyedSubscript:classCopy];

  if (!v23)
  {
    Mutable = RLEOIDArrayCreateMutable(*MEMORY[0x277CBECE8]);
    v25 = [(NSMutableDictionary *)self->_domains objectForKeyedSubscript:bundleCopy];
    v26 = [v25 objectForKeyedSubscript:personaCopy];
    [v26 setObject:Mutable forKey:classCopy];

    CFRelease(Mutable);
    v27 = [(NSMutableDictionary *)self->_domains objectForKeyedSubscript:bundleCopy];
    v28 = [v27 objectForKeyedSubscript:personaCopy];
    v23 = [v28 objectForKeyedSubscript:classCopy];
  }

  RLEOIDArrayAddOid(v23, [itemCopy longLongValue]);
}

- (int64_t)domainCount
{
  if (![(NSMutableDictionary *)self->_domains count])
  {
    return -1;
  }

  domains = self->_domains;

  return [(NSMutableDictionary *)domains count];
}

- (int64_t)personaCountOfDomain:(id)domain
{
  domainCopy = domain;
  v5 = [(NSMutableDictionary *)self->_domains objectForKeyedSubscript:domainCopy];
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_domains objectForKeyedSubscript:domainCopy];
    v7 = [v6 count];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void __22__SKGItemMonitor_load__block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_3(&dword_231B25000, MEMORY[0x277D86220], v0, "SKG: item monitor - unable to read file (%@): %@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)purgeOld:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_3(&dword_231B25000, MEMORY[0x277D86220], v0, "SKGItemMonitor: Error reading directory: %@ %@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

@end