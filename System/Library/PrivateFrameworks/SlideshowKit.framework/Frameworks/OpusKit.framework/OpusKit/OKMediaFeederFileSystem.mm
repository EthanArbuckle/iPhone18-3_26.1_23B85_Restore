@interface OKMediaFeederFileSystem
+ (id)mediaFeederWithDirectoryURL:(id)a3;
+ (id)supportedSettings;
- (OKMediaFeederFileSystem)init;
- (OKMediaFeederFileSystem)initWithDirectoryURL:(id)a3;
- (OKMediaFeederFileSystem)initWithSettings:(id)a3;
- (id)feederSettings;
- (id)indexesForMediaObjects:(id)a3;
- (id)mediaObjectURLsAtIndexes:(id)a3;
- (id)mediaObjectsAtIndexes:(id)a3;
- (id)reloadMediaObjectsWithCompletionHandler:(id)a3;
- (unint64_t)numberOfMediaObjects;
- (void)dealloc;
@end

@implementation OKMediaFeederFileSystem

- (OKMediaFeederFileSystem)init
{
  v3.receiver = self;
  v3.super_class = OKMediaFeederFileSystem;
  result = [(OKMediaFeeder *)&v3 init];
  if (result)
  {
    result->_directoryURL = 0;
  }

  return result;
}

- (OKMediaFeederFileSystem)initWithDirectoryURL:(id)a3
{
  v4 = [(OKMediaFeederFileSystem *)self init];
  if (v4)
  {
    v4->_directoryURL = a3;
    v4->_mediaURLs = 0;
  }

  return v4;
}

+ (id)mediaFeederWithDirectoryURL:(id)a3
{
  v3 = [[OKMediaFeederFileSystem alloc] initWithDirectoryURL:a3];

  return v3;
}

- (OKMediaFeederFileSystem)initWithSettings:(id)a3
{
  v7.receiver = self;
  v7.super_class = OKMediaFeederFileSystem;
  v4 = [(OKMediaFeeder *)&v7 initWithSettings:?];
  if (v4)
  {
    v5 = [a3 objectForKey:@"directory"];
    if (v5)
    {
      v4->_directoryURL = [v5 copy];
    }
  }

  return v4;
}

- (void)dealloc
{
  directoryURL = self->_directoryURL;
  if (directoryURL)
  {

    self->_directoryURL = 0;
  }

  mediaURLs = self->_mediaURLs;
  if (mediaURLs)
  {

    self->_mediaURLs = 0;
  }

  v5.receiver = self;
  v5.super_class = OKMediaFeederFileSystem;
  [(OKMediaFeeder *)&v5 dealloc];
}

+ (id)supportedSettings
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___OKMediaFeederFileSystem;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v4, sel_supportedSettings)}];
  v7 = @"directory";
  v5 = @"type";
  v6 = &unk_287AF0E18;
  v8[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1)}];
  return v2;
}

- (id)feederSettings
{
  v8[1] = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = OKMediaFeederFileSystem;
  v3 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{-[OKMediaFeeder feederSettings](&v6, sel_feederSettings)}];
  directoryURL = self->_directoryURL;
  v7 = @"directory";
  v8[0] = directoryURL;
  [v3 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1)}];
  return v3;
}

- (id)reloadMediaObjectsWithCompletionHandler:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__OKMediaFeederFileSystem_reloadMediaObjectsWithCompletionHandler___block_invoke;
  v4[3] = &unk_279C90DA0;
  v4[4] = self;
  return [OKMediaFeeder operationWithBlock:v4 cancellationBlock:&__block_literal_global_21 completionHandler:a3];
}

uint64_t __67__OKMediaFeederFileSystem_reloadMediaObjectsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v17 = a1;
  v7 = *(*(a1 + 32) + 56);
  v8 = *MEMORY[0x277CBE8A8];
  v24[0] = *MEMORY[0x277CBE8A8];
  v9 = [v6 enumeratorAtURL:v7 includingPropertiesForKeys:objc_msgSend(MEMORY[0x277CBEA60] options:"arrayWithObjects:count:" errorHandler:{v24, 1), 6, &__block_literal_global_25}];
  v10 = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v19 + 1) + 8 * v14);
        if ([a2 shouldContinue])
        {
          v18 = 0;
          if ([v15 getResourceValue:&v18 forKey:v8 error:0])
          {
            if ([v18 BOOLValue])
            {
              [v10 addObject:v15];
            }
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  if ([a2 shouldContinue])
  {
    [*(v17 + 32) setMediaURLs:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithArray:", v10)}];
  }

  return (*(a3 + 16))(a3, 0);
}

- (unint64_t)numberOfMediaObjects
{
  v2 = [(OKMediaFeederFileSystem *)self mediaURLs];

  return [(NSArray *)v2 count];
}

- (id)mediaObjectsAtIndexes:(id)a3
{
  v4 = [(OKMediaFeederFileSystem *)self mediaURLs];

  return [(NSArray *)v4 objectsAtIndexes:a3];
}

- (id)mediaObjectURLsAtIndexes:(id)a3
{
  v4 = [(OKMediaFeederFileSystem *)self mediaURLs];

  return [(NSArray *)v4 objectsAtIndexes:a3];
}

- (id)indexesForMediaObjects:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v10 = [+[OKMediaManager defaultManager](OKMediaManager "defaultManager")];
        }

        [v5 addObject:v10];
        ++v9;
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return [(NSArray *)[(OKMediaFeederFileSystem *)self mediaURLs] indexesOfObjects:v5];
}

@end