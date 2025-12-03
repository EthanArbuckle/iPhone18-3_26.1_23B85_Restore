@interface NWNetworkAdviceUpdate
- (BOOL)isEqual:(id)equal;
- (NWNetworkAdviceUpdate)initWithCoder:(id)coder;
- (NWNetworkAdviceUpdate)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NWNetworkAdviceUpdate

- (NWNetworkAdviceUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = NWNetworkAdviceUpdate;
  v5 = [(NWNetworkAdviceUpdate *)&v13 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v5->_level = [coderCopy decodeIntegerForKey:@"level"];
    v7 = objc_alloc(MEMORY[0x277CBEB98]);
    v8 = objc_opt_class();
    v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"applications"];
    applications = v5->_applications;
    v5->_applications = v10;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  [coderCopy encodeInteger:-[NWNetworkAdviceUpdate level](self forKey:{"level"), @"level"}];
  applications = [(NWNetworkAdviceUpdate *)self applications];
  [coderCopy encodeObject:applications forKey:@"applications"];

  objc_autoreleasePoolPop(v4);
}

- (id)description
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:10];
  [v3 appendFormat:@"level: %ld", -[NWNetworkAdviceUpdate level](self, "level")];
  applications = [(NWNetworkAdviceUpdate *)self applications];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [applications countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(applications);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        bundleIdentifier = [v9 bundleIdentifier];
        state = [v9 state];
        reason = [v9 reason];
        [v3 appendFormat:@", (%@, %ld, %@)", bundleIdentifier, state, reason];
      }

      v6 = [applications countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:v3];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (NWNetworkAdviceUpdate)initWithDictionary:(id)dictionary
{
  v29 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v27.receiver = self;
  v27.super_class = NWNetworkAdviceUpdate;
  v5 = [(NWNetworkAdviceUpdate *)&v27 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"detail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NWNetworkAdviceUpdate setLevel:](v5, "setLevel:", [v6 integerValue]);
    }

    v21 = v5;
    v7 = [dictionaryCopy objectForKeyedSubscript:@"states"];
    v22 = dictionaryCopy;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"reasons"];
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

    dictionaryCopy = v22;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(applications) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      level = [(NWNetworkAdviceUpdate *)self level];
      if (level == [(NWNetworkAdviceUpdate *)v5 level])
      {
        applications = [(NWNetworkAdviceUpdate *)self applications];
        if (applications)
        {
          applications2 = [(NWNetworkAdviceUpdate *)v5 applications];

          if (applications2)
          {
            v9 = objc_alloc(MEMORY[0x277CBEB98]);
            applications3 = [(NWNetworkAdviceUpdate *)self applications];
            v11 = [v9 initWithArray:applications3];

            applications = objc_alloc(MEMORY[0x277CBEB98]);
            applications4 = [(NWNetworkAdviceUpdate *)v5 applications];
            v13 = [applications initWithArray:applications4];

            LOBYTE(applications) = [v11 isEqualToSet:v13];
          }

          else
          {
            LOBYTE(applications) = 0;
          }
        }

        applications5 = [(NWNetworkAdviceUpdate *)self applications];
        if (![applications5 count])
        {
          applications6 = [(NWNetworkAdviceUpdate *)v5 applications];
          v16 = [applications6 count] == 0;

          LOBYTE(applications) = v16 | applications;
        }
      }

      else
      {
        LOBYTE(applications) = 0;
      }
    }

    else
    {
      LOBYTE(applications) = 0;
    }
  }

  return applications & 1;
}

- (unint64_t)hash
{
  v2 = [(NWNetworkAdviceUpdate *)self description];
  v3 = [v2 hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(NWNetworkAdviceUpdate);
  v4->_level = self->_level;
  objc_storeStrong(&v4->_applications, self->_applications);
  return v4;
}

@end