@interface BRCClientRanksPersistedState
+ (id)loadFromClientStateInSession:(id)a3 options:(id)a4;
- (BOOL)getAndClearIsNotifRankChanged;
- (BRCClientRanksPersistedState)init;
- (BRCClientRanksPersistedState)initWithCoder:(id)a3;
- (unint64_t)allocateItemRowID;
- (unint64_t)allocateNotifRank;
- (unint64_t)allocatePackageItemRank;
- (void)encodeWithCoder:(id)a3;
- (void)setNextNotifRank:(unint64_t)a3;
- (void)setNextPackageItemRank:(unint64_t)a3;
@end

@implementation BRCClientRanksPersistedState

- (BOOL)getAndClearIsNotifRankChanged
{
  [(BRCPersistedState *)self assertQueue];
  result = self->_notifRankChanged;
  self->_notifRankChanged = 0;
  return result;
}

- (unint64_t)allocateNotifRank
{
  [(BRCPersistedState *)self assertQueue];
  self->_notifRankChanged = 1;
  result = self->_nextNotifRank;
  self->_nextNotifRank = result + 1;
  return result;
}

- (unint64_t)allocateItemRowID
{
  [(BRCPersistedState *)self assertQueue];
  result = self->_nextItemRowID;
  self->_nextItemRowID = result + 1;
  return result;
}

- (void)setNextNotifRank:(unint64_t)a3
{
  [(BRCPersistedState *)self assertQueue];
  if (self->_nextNotifRank > a3)
  {
    [BRCClientRanksPersistedState setNextNotifRank:];
  }

  self->_nextNotifRank = a3;
  self->_notifRankChanged = 1;
}

- (unint64_t)allocatePackageItemRank
{
  [(BRCPersistedState *)self assertQueue];
  result = self->_nextPackageItemRank;
  self->_nextPackageItemRank = result + 1;
  return result;
}

- (void)setNextPackageItemRank:(unint64_t)a3
{
  [(BRCPersistedState *)self assertQueue];
  if (self->_nextPackageItemRank > a3)
  {
    [BRCClientRanksPersistedState setNextPackageItemRank:];
  }

  self->_nextPackageItemRank = a3;
}

+ (id)loadFromClientStateInSession:(id)a3 options:(id)a4
{
  v4 = a3;
  v5 = [v4 clientState];
  v6 = [v5 objectForKeyedSubscript:@"clientRanks"];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = objc_opt_new();

    [v5 setObject:v9 forKeyedSubscript:@"clientRanks"];
    v6 = v9;
  }

  v7 = [v4 clientTruthWorkloop];
  [v6 setAssertionQueue:v7];

  return v6;
}

- (BRCClientRanksPersistedState)init
{
  v3.receiver = self;
  v3.super_class = BRCClientRanksPersistedState;
  result = [(BRCClientRanksPersistedState *)&v3 init];
  if (result)
  {
    result->_nextItemRowID = 1;
    result->_nextNotifRank = 1;
    result->_nextPackageItemRank = 1;
    result->_notifRankChanged = 0;
  }

  return result;
}

- (BRCClientRanksPersistedState)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = BRCClientRanksPersistedState;
  v5 = [(BRCPersistedState *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_nextItemRowID = [v4 decodeInt64ForKey:@"nextItemRowID"];
    v5->_nextNotifRank = [v4 decodeInt64ForKey:@"nextNotifRank"];
    v5->_nextPackageItemRank = [v4 decodeInt64ForKey:@"nextPackageItemRank"];
    v5->_telemetryMinRowID = [v4 decodeInt64ForKey:@"telemetryRowID"];
    v5->_telemetryToken = [v4 decodeInt64ForKey:@"telemetryToken"];
    v5->_notifRankChanged = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = BRCClientRanksPersistedState;
  v4 = a3;
  [(BRCPersistedState *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_nextItemRowID forKey:{@"nextItemRowID", v5.receiver, v5.super_class}];
  [v4 encodeInt64:self->_nextNotifRank forKey:@"nextNotifRank"];
  [v4 encodeInt64:self->_nextPackageItemRank forKey:@"nextPackageItemRank"];
  [v4 encodeInt64:self->_telemetryMinRowID forKey:@"telemetryRowID"];
  [v4 encodeInt64:self->_telemetryToken forKey:@"telemetryToken"];
}

- (void)setNextNotifRank:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: nextNotifRank >= _nextNotifRank%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setNextPackageItemRank:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: nextPackageItemRank >= _nextPackageItemRank%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end