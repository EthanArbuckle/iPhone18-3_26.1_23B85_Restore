@interface TIContinuousPath
- (TIContinuousPath)init;
- (TIContinuousPath)initWithCoder:(id)a3;
- (TIContinuousPath)initWithJsonDictionary:(id)a3;
- (TIContinuousPath)initWithTimeStamp:(double)a3;
- (double)timeStamp;
- (id)description;
- (id)toJsonDictionary;
@end

@implementation TIContinuousPath

- (id)description
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_samples;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 appendFormat:@"; sample = %@", *(*(&v10 + 1) + 8 * i)];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [v3 appendString:@">"];

  return v3;
}

- (id)toJsonDictionary
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_samples;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) toJsonDictionary];
        [v4 addObject:v10];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [v3 setObject:v4 forKeyedSubscript:@"samples"];

  return v3;
}

- (TIContinuousPath)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TIContinuousPath;
  v5 = [(TIContinuousPath *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"samples"];
    v10 = [v9 copy];
    samples = v5->_samples;
    v5->_samples = v10;
  }

  return v5;
}

- (double)timeStamp
{
  v2 = [(NSMutableArray *)self->_samples objectAtIndexedSubscript:0];
  [v2 timeStamp];
  v4 = v3;

  return v4;
}

- (TIContinuousPath)initWithJsonDictionary:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = TIContinuousPath;
  v5 = [(TIContinuousPath *)&v19 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    samples = v5->_samples;
    v5->_samples = v6;

    v8 = [v4 objectForKey:@"samples"];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[TIContinuousPathSample alloc] initWithJsonDictionary:*(*(&v15 + 1) + 8 * v12)];
          [(TIContinuousPath *)v5 addSample:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v10);
    }
  }

  return v5;
}

- (TIContinuousPath)init
{
  v6.receiver = self;
  v6.super_class = TIContinuousPath;
  v2 = [(TIContinuousPath *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    samples = v2->_samples;
    v2->_samples = v3;
  }

  return v2;
}

- (TIContinuousPath)initWithTimeStamp:(double)a3
{
  v7.receiver = self;
  v7.super_class = TIContinuousPath;
  v3 = [(TIContinuousPath *)&v7 init];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    samples = v3->_samples;
    v3->_samples = v4;
  }

  return v3;
}

@end