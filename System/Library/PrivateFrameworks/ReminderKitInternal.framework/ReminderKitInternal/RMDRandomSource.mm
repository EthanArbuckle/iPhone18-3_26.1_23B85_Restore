@interface RMDRandomSource
+ (id)sharedRandom;
- (RMDRandomSource)init;
- (RMDRandomSource)initWithCoder:(id)a3;
- (id)arrayByShufflingObjectsInArray:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();

  return objc_opt_new();
}

- (RMDRandomSource)initWithCoder:(id)a3
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

- (id)arrayByShufflingObjectsInArray:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count] > 1)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = v4;
    v7 = v4;
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
    v4 = v19;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v4];
  }

  return v5;
}

@end