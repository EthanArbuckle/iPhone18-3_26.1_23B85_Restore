@interface Exchange
+ (id)formattedExchangeNameForName:(id)name;
- (BOOL)isEqual:(id)equal;
- (Exchange)initWithDictionary:(id)dictionary;
- (Exchange)initWithName:(id)name;
- (id)archiveDictionary;
- (id)description;
- (void)_updateWithDictionary:(id)dictionary newUpdate:(BOOL)update;
- (void)setName:(id)name;
@end

@implementation Exchange

+ (id)formattedExchangeNameForName:(id)name
{
  v3 = formattedExchangeNameForName__onceToken;
  nameCopy = name;
  if (v3 != -1)
  {
    +[Exchange formattedExchangeNameForName:];
  }

  v5 = [formattedExchangeNameForName__prettyExchangeMap objectForKeyedSubscript:nameCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = nameCopy;
  }

  v8 = v7;

  return v7;
}

void __41__Exchange_formattedExchangeNameForName___block_invoke()
{
  v0 = formattedExchangeNameForName__prettyExchangeMap;
  formattedExchangeNameForName__prettyExchangeMap = &unk_287C81110;
}

- (Exchange)initWithName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v9.receiver = self;
    v9.super_class = Exchange;
    v5 = [(Exchange *)&v9 init];
    v6 = v5;
    if (v5)
    {
      [(Exchange *)v5 setName:nameCopy];
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (Exchange)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"name"];
  v6 = [(Exchange *)self initWithName:v5];

  if (v6)
  {
    [(Exchange *)v6 _updateWithDictionary:dictionaryCopy newUpdate:0];
  }

  return v6;
}

- (void)_updateWithDictionary:(id)dictionary newUpdate:(BOOL)update
{
  updateCopy = update;
  v29 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v7 = objc_opt_class();
  v8 = [dictionaryCopy objectForKeyedSubscript:@"name"];
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
        v28 = dictionaryCopy;
        _os_log_error_impl(&dword_26BAAD000, v11, OS_LOG_TYPE_ERROR, "#Exchange Attempting to update exchange %@ with dictionary containing a different name (%@)! Dictionary: %@", &v23, 0x20u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    [(Exchange *)self setName:v9];
  }

  v13 = [dictionaryCopy objectForKeyedSubscript:@"nextOpenDate"];
  [(Exchange *)self setNextOpenDate:v13];

  v14 = [dictionaryCopy objectForKeyedSubscript:@"status"];
  status = [v14 integerValue];
  if (!status)
  {
    status = self->_status;
  }

  v16 = self->_status;
  if (status != v16)
  {
    if (updateCopy)
    {
      if (v16 <= 2 && status >= 3)
      {
        date = [MEMORY[0x277CBEAA8] date];
LABEL_17:
        v19 = date;
        [(Exchange *)self setLastCloseDate:date];

        goto LABEL_18;
      }

      if (status == 2)
      {
        [(Exchange *)self setLastCloseDate:0];
      }

      else
      {
        v18 = [dictionaryCopy objectForKeyedSubscript:@"lastCloseDate"];

        if (v18)
        {
          date = [dictionaryCopy objectForKeyedSubscript:@"lastCloseDate"];
          goto LABEL_17;
        }
      }
    }

LABEL_18:
    [(Exchange *)self setStatus:status];
  }

  v20 = [dictionaryCopy objectForKeyedSubscript:@"streamInterval"];
  [v20 doubleValue];
  if (streamInterval == 0.0)
  {
    streamInterval = self->_streamInterval;
  }

  [(Exchange *)self setStreamInterval:streamInterval];

  if (!updateCopy)
  {
    v11 = [dictionaryCopy objectForKeyedSubscript:@"lastUpdateTime"];
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

  lastCloseDate = [(Exchange *)self lastCloseDate];

  if (lastCloseDate)
  {
    lastCloseDate2 = [(Exchange *)self lastCloseDate];
    [v8 setObject:lastCloseDate2 forKeyedSubscript:@"lastCloseDate"];
  }

  nextOpenDate = [(Exchange *)self nextOpenDate];

  if (nextOpenDate)
  {
    nextOpenDate2 = [(Exchange *)self nextOpenDate];
    [v8 setObject:nextOpenDate2 forKeyedSubscript:@"nextOpenDate"];
  }

  return v8;
}

- (void)setName:(id)name
{
  if (self->_name != name)
  {
    nameCopy = name;
    v6 = [objc_opt_class() formattedExchangeNameForName:nameCopy];

    name = self->_name;
    self->_name = v6;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    name = self->_name;
    name = [equalCopy name];
    v7 = [(NSString *)name isEqualToString:name];
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