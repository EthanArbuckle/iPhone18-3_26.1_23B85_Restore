@interface NWNetworkAdviceUpdate
- (BOOL)isEqual:(id)a3;
- (NWNetworkAdviceUpdate)initWithCoder:(id)a3;
- (NWNetworkAdviceUpdate)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NWNetworkAdviceUpdate

- (NWNetworkAdviceUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NWNetworkAdviceUpdate;
  v5 = [(NWNetworkAdviceUpdate *)&v13 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v5->_level = [v4 decodeIntegerForKey:@"level"];
    v7 = objc_alloc(MEMORY[0x277CBEB98]);
    v8 = objc_opt_class();
    v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"applications"];
    applications = v5->_applications;
    v5->_applications = v10;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = objc_autoreleasePoolPush();
  [v6 encodeInteger:-[NWNetworkAdviceUpdate level](self forKey:{"level"), @"level"}];
  v5 = [(NWNetworkAdviceUpdate *)self applications];
  [v6 encodeObject:v5 forKey:@"applications"];

  objc_autoreleasePoolPop(v4);
}

- (id)description
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:10];
  [v3 appendFormat:@"level: %ld", -[NWNetworkAdviceUpdate level](self, "level")];
  v4 = [(NWNetworkAdviceUpdate *)self applications];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 bundleIdentifier];
        v11 = [v9 state];
        v12 = [v9 reason];
        [v3 appendFormat:@", (%@, %ld, %@)", v10, v11, v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:v3];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (NWNetworkAdviceUpdate)initWithDictionary:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = NWNetworkAdviceUpdate;
  v5 = [(NWNetworkAdviceUpdate *)&v27 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"detail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NWNetworkAdviceUpdate setLevel:](v5, "setLevel:", [v6 integerValue]);
    }

    v21 = v5;
    v7 = [v4 objectForKeyedSubscript:@"states"];
    v22 = v4;
    v8 = [v4 objectForKeyedSubscript:@"reasons"];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v24;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          v16 = objc_alloc_init(NWAppAdvice);
          [(NWAppAdvice *)v16 setBundleIdentifier:v15];
          v17 = [v9 objectForKeyedSubscript:v15];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            -[NWAppAdvice setState:](v16, "setState:", [v17 integerValue]);
          }

          v18 = [v8 objectForKeyedSubscript:v15];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(NWAppAdvice *)v16 setReason:v18];
          }

          if (!v12)
          {
            v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          [v12 addObject:v16];
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    v5 = v21;
    [(NWNetworkAdviceUpdate *)v21 setApplications:v12];

    v4 = v22;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(NWNetworkAdviceUpdate *)self level];
      if (v6 == [(NWNetworkAdviceUpdate *)v5 level])
      {
        v7 = [(NWNetworkAdviceUpdate *)self applications];
        if (v7)
        {
          v8 = [(NWNetworkAdviceUpdate *)v5 applications];

          if (v8)
          {
            v9 = objc_alloc(MEMORY[0x277CBEB98]);
            v10 = [(NWNetworkAdviceUpdate *)self applications];
            v11 = [v9 initWithArray:v10];

            v7 = objc_alloc(MEMORY[0x277CBEB98]);
            v12 = [(NWNetworkAdviceUpdate *)v5 applications];
            v13 = [v7 initWithArray:v12];

            LOBYTE(v7) = [v11 isEqualToSet:v13];
          }

          else
          {
            LOBYTE(v7) = 0;
          }
        }

        v14 = [(NWNetworkAdviceUpdate *)self applications];
        if (![v14 count])
        {
          v15 = [(NWNetworkAdviceUpdate *)v5 applications];
          v16 = [v15 count] == 0;

          LOBYTE(v7) = v16 | v7;
        }
      }

      else
      {
        LOBYTE(v7) = 0;
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7 & 1;
}

- (unint64_t)hash
{
  v2 = [(NWNetworkAdviceUpdate *)self description];
  v3 = [v2 hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(NWNetworkAdviceUpdate);
  v4->_level = self->_level;
  objc_storeStrong(&v4->_applications, self->_applications);
  return v4;
}

@end