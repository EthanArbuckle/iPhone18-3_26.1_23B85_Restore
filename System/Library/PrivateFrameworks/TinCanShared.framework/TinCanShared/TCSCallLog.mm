@interface TCSCallLog
- (TCSCallLog)init;
- (id)callWithUniqueProxyIdentifier:(id)a3;
- (void)_trimCache;
- (void)addCall:(id)a3;
@end

@implementation TCSCallLog

- (TCSCallLog)init
{
  v9.receiver = self;
  v9.super_class = TCSCallLog;
  v2 = [(TCSCallLog *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x277CBEB38] dictionary];
    calls = v3->_calls;
    v3->_calls = v4;

    v6 = [MEMORY[0x277CBEB40] orderedSet];
    identifiers = v3->_identifiers;
    v3->_identifiers = v6;
  }

  return v3;
}

- (void)addCall:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueProxyIdentifier];

  if (v5)
  {
    if ([v4 status] == 6)
    {
      v6 = [v4 uniqueProxyIdentifier];
      v7 = [v6 copy];

      os_unfair_lock_lock(&self->_lock);
      [(NSMutableDictionary *)self->_calls setObject:v4 forKeyedSubscript:v7];
      [(NSMutableOrderedSet *)self->_identifiers insertObject:v7 atIndex:0];
      os_unfair_lock_unlock(&self->_lock);
      [(TCSCallLog *)self _trimCache];
    }

    else
    {
      _TCSInitializeLogging();
      if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
      {
        [TCSCallLog addCall:];
      }
    }
  }

  else
  {
    _TCSInitializeLogging();
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
    {
      [TCSCallLog addCall:];
    }
  }
}

- (id)callWithUniqueProxyIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_calls objectForKeyedSubscript:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)_trimCache
{
  v3 = [MEMORY[0x277CBEB58] set];
  os_unfair_lock_lock(&self->_lock);
  if ([(NSMutableOrderedSet *)self->_identifiers count]>= 9)
  {
    v4 = [(NSMutableOrderedSet *)self->_identifiers count];
    v5 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{8, v4 - 8}];
    v6 = [(NSMutableOrderedSet *)self->_identifiers objectsAtIndexes:v5];
    [v3 addObjectsFromArray:v6];
  }

  calls = self->_calls;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __24__TCSCallLog__trimCache__block_invoke;
  v10[3] = &unk_279DC1CC0;
  v11 = v3;
  v8 = v3;
  [(NSMutableDictionary *)calls enumerateKeysAndObjectsUsingBlock:v10];
  v9 = [v8 allObjects];
  [(NSMutableDictionary *)self->_calls removeObjectsForKeys:v9];
  [(NSMutableOrderedSet *)self->_identifiers removeObjectsInArray:v9];
  os_unfair_lock_unlock(&self->_lock);
}

void __24__TCSCallLog__trimCache__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = [a3 dateAnsweredOrDialed];
  [v5 timeIntervalSinceNow];
  v7 = v6;

  if (v7 <= -21600.0)
  {
    [*(a1 + 32) addObject:v8];
  }
}

- (void)addCall:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_26F110000, v0, OS_LOG_TYPE_ERROR, "%s: usage error, should not be adding an entry for a TCSCall object whose call state is not disconnected: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)addCall:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_26F110000, v0, OS_LOG_TYPE_ERROR, "%s: cannot add entry for TCSCall object lacking uPI: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end