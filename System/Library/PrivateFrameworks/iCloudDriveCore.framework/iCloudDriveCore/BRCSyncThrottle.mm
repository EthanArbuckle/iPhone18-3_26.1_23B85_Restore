@interface BRCSyncThrottle
- (BOOL)_validateThrottleParams:(id)params;
- (BOOL)matchesItem:(id)item nsecsToRetry:(unint64_t *)retry now:(unint64_t)now;
- (BRCSyncThrottle)initWithName:(id)name andParameters:(id)parameters;
@end

@implementation BRCSyncThrottle

- (BOOL)matchesItem:(id)item nsecsToRetry:(unint64_t *)retry now:(unint64_t)now
{
  itemCopy = item;
  v9 = [(NSPredicate *)self->_predicate evaluateWithObject:itemCopy];
  if (v9)
  {
    clientZone = [itemCopy clientZone];
    itemID = [itemCopy itemID];
    *retry = -[BRCThrottle nsecsToNextRetry:now:increment:](self, "nsecsToNextRetry:now:increment:", [clientZone throttleHashWithItemID:itemID], now, 1);
  }

  return v9;
}

- (BOOL)_validateThrottleParams:(id)params
{
  paramsCopy = params;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, 0x90u))
    {
      [BRCSyncThrottle _validateThrottleParams:];
    }

    goto LABEL_12;
  }

  v4 = [paramsCopy objectForKeyedSubscript:@"platforms"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, 0x90u))
    {
      [BRCSyncThrottle _validateThrottleParams:];
    }

    goto LABEL_11;
  }

  v5 = BRPlatform();
  v6 = [v4 containsObject:v5];

  if ((v6 & 1) == 0)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(BRCSyncThrottle *)paramsCopy _validateThrottleParams:v8, v9];
    }

LABEL_11:

LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

  v7 = 1;
LABEL_13:

  return v7;
}

- (BRCSyncThrottle)initWithName:(id)name andParameters:(id)parameters
{
  nameCopy = name;
  parametersCopy = parameters;
  if ([(BRCSyncThrottle *)self _validateThrottleParams:parametersCopy])
  {
    v14.receiver = self;
    v14.super_class = BRCSyncThrottle;
    v8 = [(BRCThrottle *)&v14 initWithName:nameCopy andParameters:parametersCopy];
    if (v8)
    {
      v9 = [parametersCopy objectForKeyedSubscript:@"predicate"];
      if (v9)
      {
        v10 = [MEMORY[0x277CCAC30] predicateWithFormat:v9];
        predicate = v8->_predicate;
        v8->_predicate = v10;
      }
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_validateThrottleParams:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6(&dword_223E7A000, v0, v1, "[ERROR] Throttle %@ isn't a dictionary%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_validateThrottleParams:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6(&dword_223E7A000, v0, v1, "[ERROR] Platforms %@ isn't an array%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_validateThrottleParams:(NSObject *)a3 .cold.3(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = BRPlatform();
  v8 = 138412802;
  v9 = a1;
  v10 = 2112;
  v11 = v6;
  v12 = 2112;
  v13 = a2;
  _os_log_debug_impl(&dword_223E7A000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] throttle dict %@ isn't for our platform %@%@", &v8, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

@end