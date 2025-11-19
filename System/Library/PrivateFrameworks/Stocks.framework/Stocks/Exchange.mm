@interface Exchange
+ (id)formattedExchangeNameForName:(id)a3;
- (BOOL)isEqual:(id)a3;
- (Exchange)initWithDictionary:(id)a3;
- (Exchange)initWithName:(id)a3;
- (id)archiveDictionary;
- (id)description;
- (void)_updateWithDictionary:(id)a3 newUpdate:(BOOL)a4;
- (void)setName:(id)a3;
@end

@implementation Exchange

+ (id)formattedExchangeNameForName:(id)a3
{
  v3 = formattedExchangeNameForName__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[Exchange formattedExchangeNameForName:];
  }

  v5 = [formattedExchangeNameForName__prettyExchangeMap objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v7;
}

void __41__Exchange_formattedExchangeNameForName___block_invoke()
{
  v0 = formattedExchangeNameForName__prettyExchangeMap;
  formattedExchangeNameForName__prettyExchangeMap = &unk_287C81110;
}

- (Exchange)initWithName:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9.receiver = self;
    v9.super_class = Exchange;
    v5 = [(Exchange *)&v9 init];
    v6 = v5;
    if (v5)
    {
      [(Exchange *)v5 setName:v4];
    }

    self = v6;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (Exchange)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"name"];
  v6 = [(Exchange *)self initWithName:v5];

  if (v6)
  {
    [(Exchange *)v6 _updateWithDictionary:v4 newUpdate:0];
  }

  return v6;
}

- (void)_updateWithDictionary:(id)a3 newUpdate:(BOOL)a4
{
  v4 = a4;
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_opt_class();
  v8 = [v6 objectForKeyedSubscript:@"name"];
  v9 = [v7 formattedExchangeNameForName:v8];

  name = self->_name;
  if (name)
  {
    if (![(NSString *)name isEqualToString:v9])
    {
      v11 = StocksLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = self->_name;
        v23 = 138412802;
        v24 = v12;
        v25 = 2112;
        v26 = v9;
        v27 = 2112;
        v28 = v6;
        _os_log_error_impl(&dword_26BAAD000, v11, OS_LOG_TYPE_ERROR, "#Exchange Attempting to update exchange %@ with dictionary containing a different name (%@)! Dictionary: %@", &v23, 0x20u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    [(Exchange *)self setName:v9];
  }

  v13 = [v6 objectForKeyedSubscript:@"nextOpenDate"];
  [(Exchange *)self setNextOpenDate:v13];

  v14 = [v6 objectForKeyedSubscript:@"status"];
  status = [v14 integerValue];
  if (!status)
  {
    status = self->_status;
  }

  v16 = self->_status;
  if (status != v16)
  {
    if (v4)
    {
      if (v16 <= 2 && status >= 3)
      {
        v17 = [MEMORY[0x277CBEAA8] date];
LABEL_17:
        v19 = v17;
        [(Exchange *)self setLastCloseDate:v17];

        goto LABEL_18;
      }

      if (status == 2)
      {
        [(Exchange *)self setLastCloseDate:0];
      }

      else
      {
        v18 = [v6 objectForKeyedSubscript:@"lastCloseDate"];

        if (v18)
        {
          v17 = [v6 objectForKeyedSubscript:@"lastCloseDate"];
          goto LABEL_17;
        }
      }
    }

LABEL_18:
    [(Exchange *)self setStatus:status];
  }

  v20 = [v6 objectForKeyedSubscript:@"streamInterval"];
  [v20 doubleValue];
  if (streamInterval == 0.0)
  {
    streamInterval = self->_streamInterval;
  }

  [(Exchange *)self setStreamInterval:streamInterval];

  if (!v4)
  {
    v11 = [v6 objectForKeyedSubscript:@"lastUpdateTime"];
    [v11 doubleValue];
    self->_lastUpdateTime = v22;
LABEL_24:

    goto LABEL_25;
  }

  self->_lastUpdateTime = CFAbsoluteTimeGetCurrent();
LABEL_25:
}

- (id)archiveDictionary
{
  v15[4] = *MEMORY[0x277D85DE8];
  name = self->_name;
  if (!name)
  {
    name = &stru_287C73C90;
  }

  v15[0] = name;
  v14[0] = @"name";
  v14[1] = @"status";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_status];
  v15[1] = v4;
  v14[2] = @"streamInterval";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_streamInterval];
  v15[2] = v5;
  v14[3] = @"lastUpdateTime";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lastUpdateTime];
  v15[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];
  v8 = [v7 mutableCopy];

  v9 = [(Exchange *)self lastCloseDate];

  if (v9)
  {
    v10 = [(Exchange *)self lastCloseDate];
    [v8 setObject:v10 forKeyedSubscript:@"lastCloseDate"];
  }

  v11 = [(Exchange *)self nextOpenDate];

  if (v11)
  {
    v12 = [(Exchange *)self nextOpenDate];
    [v8 setObject:v12 forKeyedSubscript:@"nextOpenDate"];
  }

  return v8;
}

- (void)setName:(id)a3
{
  if (self->_name != a3)
  {
    v5 = a3;
    v6 = [objc_opt_class() formattedExchangeNameForName:v5];

    name = self->_name;
    self->_name = v6;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    name = self->_name;
    v6 = [v4 name];
    v7 = [(NSString *)name isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  if (self->_lastUpdateTime <= 0.0)
  {
    v3 = @"never";
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ds ago", (CFAbsoluteTimeGetCurrent() - self->_lastUpdateTime)];
  }

  v4 = MEMORY[0x277CCACA8];
  v14.receiver = self;
  v14.super_class = Exchange;
  v5 = [(Exchange *)&v14 description];
  name = self->_name;
  v7 = self->_status - 1;
  if (v7 > 5)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_279D167D0[v7];
  }

  streamInterval = self->_streamInterval;
  v10 = [(NSDate *)self->_lastCloseDate description];
  v11 = [(NSDate *)self->_nextOpenDate description];
  v12 = [v4 stringWithFormat:@"%@ %@ (status: %@, stream interval: %ds, last updated: %@, last close: %@ next open: %@)", v5, name, v8, streamInterval, v3, v10, v11];

  return v12;
}

@end