@interface W5SummaryLinkTests
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLinkTests:(id)a3;
- (W5SummaryLinkTests)initWithCoder:(id)a3;
- (W5SummaryLinkTests)initWithSummaryLinkTests:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation W5SummaryLinkTests

- (W5SummaryLinkTests)initWithSummaryLinkTests:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10.receiver = self;
  v10.super_class = W5SummaryLinkTests;
  v5 = [(W5SummaryLinkTests *)&v10 init];
  if (v5)
  {
    v6 = v4;
    p_super = &v5->_lastHrLinkTests->super;
    v5->_lastHrLinkTests = v6;
  }

  else
  {
    p_super = W5GetOSLog();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315906;
      v12 = "[W5SummaryLinkTests initWithSummaryLinkTests:]";
      v13 = 2080;
      v14 = "W5SummaryLinkTests.m";
      v15 = 1024;
      v16 = 31;
      v17 = 2080;
      v18 = "[W5SummaryLinkTests initWithSummaryLinkTests:]";
      _os_log_send_and_compose_impl();
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)description
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  [v3 appendFormat:@"LinkTests in last Hour: %lu\n", -[NSArray count](self->_lastHrLinkTests, "count")];
  if ([(NSArray *)self->_lastHrLinkTests count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    obj = self->_lastHrLinkTests;
    v4 = [(NSArray *)obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v15;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v14 + 1) + 8 * i);
          v9 = [v8 objectForKeyedSubscript:@"initiatingReason"];
          [v3 appendFormat:@"Initiating Reason: %@\n", v9];

          v10 = [v8 objectForKeyedSubscript:@"date"];
          [v3 appendFormat:@"\tDate: %@\n", v10];
        }

        v5 = [(NSArray *)obj countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v5);
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)isEqualToLinkTests:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSArray *)self->_lastHrLinkTests count];
  v6 = [v4 lastHrLinkTests];
  v7 = [v6 count];

  if (v5 == v7)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = [v4 lastHrLinkTests];
    v8 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v29;
      v22 = v4;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v28 + 1) + 8 * i);
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v13 = self->_lastHrLinkTests;
          v14 = [(NSArray *)v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (!v14)
          {

LABEL_20:
            v19 = 0;
            v4 = v22;
            goto LABEL_21;
          }

          v15 = v14;
          v16 = 0;
          v17 = *v25;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v25 != v17)
              {
                objc_enumerationMutation(v13);
              }

              v16 |= [*(*(&v24 + 1) + 8 * j) isEqualToDictionary:{v12, v22}];
            }

            v15 = [(NSArray *)v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v15);

          if ((v16 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        v9 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
        v19 = 1;
        v4 = v22;
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v19 = 1;
    }

LABEL_21:
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(W5SummaryLinkTests *)self isEqualToLinkTests:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[W5SummaryLinkTests allocWithZone:?]];
  [(W5SummaryLinkTests *)v4 setLastHrLinkTests:self->_lastHrLinkTests];
  return v4;
}

- (W5SummaryLinkTests)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = W5SummaryLinkTests;
  v5 = [(W5SummaryLinkTests *)&v16 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"_lastHrLinkTests"];
    v13 = [v12 copy];
    lastHrLinkTests = v5->_lastHrLinkTests;
    v5->_lastHrLinkTests = v13;
  }

  return v5;
}

@end