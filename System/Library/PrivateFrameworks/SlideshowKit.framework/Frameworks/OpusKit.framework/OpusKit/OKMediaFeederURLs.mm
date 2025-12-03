@interface OKMediaFeederURLs
+ (id)mediaFeederWithMediaObjects:(id)objects;
+ (id)mediaFeederWithMediaURLs:(id)ls;
+ (id)supportedSettings;
- (OKMediaFeederURLs)init;
- (OKMediaFeederURLs)initWithMediaObjects:(id)objects;
- (OKMediaFeederURLs)initWithMediaURLs:(id)ls;
- (OKMediaFeederURLs)initWithSettings:(id)settings;
- (id)feederSettings;
- (id)indexesForMediaObjects:(id)objects;
- (void)dealloc;
@end

@implementation OKMediaFeederURLs

- (OKMediaFeederURLs)init
{
  v3.receiver = self;
  v3.super_class = OKMediaFeederURLs;
  result = [(OKMediaFeeder *)&v3 init];
  if (result)
  {
    result->_mediaURLs = 0;
  }

  return result;
}

- (OKMediaFeederURLs)initWithMediaObjects:(id)objects
{
  v4 = [(OKMediaFeederURLs *)self init];
  if (v4)
  {
    v4->_mediaURLs = [+[OKMediaManager defaultManager](OKMediaManager "defaultManager")];
  }

  return v4;
}

+ (id)mediaFeederWithMediaObjects:(id)objects
{
  v3 = [[OKMediaFeederURLs alloc] initWithMediaObjects:objects];

  return v3;
}

- (OKMediaFeederURLs)initWithMediaURLs:(id)ls
{
  v4 = [(OKMediaFeederURLs *)self init];
  if (v4)
  {
    v4->_mediaURLs = ls;
  }

  return v4;
}

+ (id)mediaFeederWithMediaURLs:(id)ls
{
  v3 = [[OKMediaFeederURLs alloc] initWithMediaURLs:ls];

  return v3;
}

- (OKMediaFeederURLs)initWithSettings:(id)settings
{
  v7.receiver = self;
  v7.super_class = OKMediaFeederURLs;
  v4 = [(OKMediaFeeder *)&v7 initWithSettings:?];
  if (v4)
  {
    v5 = [settings objectForKey:@"items"];
    if (v5)
    {
      v4->_mediaURLs = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v5 copyItems:1];
    }
  }

  return v4;
}

- (void)dealloc
{
  mediaURLs = self->_mediaURLs;
  if (mediaURLs)
  {

    self->_mediaURLs = 0;
  }

  v4.receiver = self;
  v4.super_class = OKMediaFeederURLs;
  [(OKMediaFeeder *)&v4 dealloc];
}

+ (id)supportedSettings
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___OKMediaFeederURLs;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v4, sel_supportedSettings)}];
  v7 = @"items";
  v5 = @"type";
  v6 = &unk_287AF0278;
  v8[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1)}];
  return v2;
}

- (id)feederSettings
{
  v8[1] = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = OKMediaFeederURLs;
  v3 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{-[OKMediaFeeder feederSettings](&v6, sel_feederSettings)}];
  mediaURLs = self->_mediaURLs;
  v7 = @"items";
  v8[0] = mediaURLs;
  [v3 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1)}];
  return v3;
}

- (id)indexesForMediaObjects:(id)objects
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [objects countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(objects);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v10 = [+[OKMediaManager defaultManager](OKMediaManager "defaultManager")];
        }

        [array addObject:v10];
        ++v9;
      }

      while (v7 != v9);
      v7 = [objects countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return [(NSArray *)self->_mediaURLs indexesOfObjects:array];
}

@end