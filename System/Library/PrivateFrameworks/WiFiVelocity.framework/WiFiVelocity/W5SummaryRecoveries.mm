@interface W5SummaryRecoveries
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRecoveries:(id)recoveries;
- (W5SummaryRecoveries)initWithCoder:(id)coder;
- (W5SummaryRecoveries)initWithSummaryRecoveries:(id)recoveries;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation W5SummaryRecoveries

- (W5SummaryRecoveries)initWithSummaryRecoveries:(id)recoveries
{
  v19 = *MEMORY[0x277D85DE8];
  recoveriesCopy = recoveries;
  v10.receiver = self;
  v10.super_class = W5SummaryRecoveries;
  v5 = [(W5SummaryRecoveries *)&v10 init];
  if (v5)
  {
    v6 = recoveriesCopy;
    p_super = &v5->_lastHrRecoveries->super;
    v5->_lastHrRecoveries = v6;
  }

  else
  {
    p_super = W5GetOSLog();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315906;
      v12 = "[W5SummaryRecoveries initWithSummaryRecoveries:]";
      v13 = 2080;
      v14 = "W5SummaryRecoveries.m";
      v15 = 1024;
      v16 = 31;
      v17 = 2080;
      v18 = "[W5SummaryRecoveries initWithSummaryRecoveries:]";
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
  [v3 appendFormat:@"Recoveries in last Hour: %lu\n", -[NSArray count](self->_lastHrRecoveries, "count")];
  if ([(NSArray *)self->_lastHrRecoveries count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    obj = self->_lastHrRecoveries;
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
          v9 = [v8 objectForKeyedSubscript:@"recoveryType"];
          [v3 appendFormat:@"Recovery Type: %@\n", v9];

          v10 = [v8 objectForKeyedSubscript:@"recoveryReason"];
          [v3 appendFormat:@"\tRecovery Reason: %@\n", v10];
        }

        v5 = [(NSArray *)obj countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v5);
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)isEqualToRecoveries:(id)recoveries
{
  v34 = *MEMORY[0x277D85DE8];
  recoveriesCopy = recoveries;
  v5 = [(NSArray *)self->_lastHrRecoveries count];
  lastHrRecoveries = [recoveriesCopy lastHrRecoveries];
  v7 = [lastHrRecoveries count];

  if (v5 == v7)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = [recoveriesCopy lastHrRecoveries];
    v8 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v29;
      v22 = recoveriesCopy;
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
          v13 = self->_lastHrRecoveries;
          v14 = [(NSArray *)v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (!v14)
          {

LABEL_20:
            v19 = 0;
            recoveriesCopy = v22;
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
        recoveriesCopy = v22;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(W5SummaryRecoveries *)self isEqualToRecoveries:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[W5SummaryRecoveries allocWithZone:?]];
  [(W5SummaryRecoveries *)v4 setLastHrRecoveries:self->_lastHrRecoveries];
  return v4;
}

- (W5SummaryRecoveries)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = W5SummaryRecoveries;
  v5 = [(W5SummaryRecoveries *)&v16 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"_lastHrRecoveries"];
    v13 = [v12 copy];
    lastHrRecoveries = v5->_lastHrRecoveries;
    v5->_lastHrRecoveries = v13;
  }

  return v5;
}

@end