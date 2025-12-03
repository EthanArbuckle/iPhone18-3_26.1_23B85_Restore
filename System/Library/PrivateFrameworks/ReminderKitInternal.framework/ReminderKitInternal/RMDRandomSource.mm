@interface RMDRandomSource
+ (id)sharedRandom;
- (RMDRandomSource)init;
- (RMDRandomSource)initWithCoder:(id)coder;
- (id)arrayByShufflingObjectsInArray:(id)array;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation RMDRandomSource

- (RMDRandomSource)init
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    v4 = objc_alloc_init(RMDARC4RandomSource);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = RMDRandomSource;
    v4 = [(RMDRandomSource *)&v7 init];
    self = &v4->super;
  }

  p_super = &v4->super;

  return p_super;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();

  return objc_opt_new();
}

- (RMDRandomSource)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = RMDRandomSource;
  return [(RMDRandomSource *)&v4 init];
}

+ (id)sharedRandom
{
  if (sharedRandom_onceToken != -1)
  {
    +[RMDRandomSource sharedRandom];
  }

  v3 = sharedRandom_source;

  return v3;
}

uint64_t __31__RMDRandomSource_sharedRandom__block_invoke()
{
  sharedRandom_source = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (id)arrayByShufflingObjectsInArray:(id)array
{
  v25 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if ([arrayCopy count] > 1)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(arrayCopy, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = arrayCopy;
    v7 = arrayCopy;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v21;
      do
      {
        v12 = 0;
        v13 = v10;
        do
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v20 + 1) + 8 * v12);
          v10 = v13 + 1;
          v15 = [(RMDRandomSource *)self nextIntWithUpperBound:(v13 + 1)];
          if (v15 == v13)
          {
            [v6 addObject:v14];
          }

          else
          {
            v16 = v15;
            v17 = [v6 objectAtIndex:v15];
            [v6 addObject:v17];

            [v6 setObject:v14 atIndexedSubscript:v16];
          }

          ++v12;
          v13 = v10;
        }

        while (v9 != v12);
        v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }

    v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v6];
    arrayCopy = v19;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:arrayCopy];
  }

  return v5;
}

@end