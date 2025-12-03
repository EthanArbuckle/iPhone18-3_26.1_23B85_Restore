@interface SCKZoneJSONStore
- (SCKZoneJSONStore)initWithZoneName:(id)name serverRecords:(id)records lastSyncDate:(id)date lastDirtyDate:(id)dirtyDate serverChangeToken:(id)token pendingCommands:(id)commands;
- (void)addPendingCommands:(id)commands;
- (void)applyServerRecordsDiff:(id)diff;
- (void)clearPendingCommandsUpToCount:(unint64_t)count;
@end

@implementation SCKZoneJSONStore

- (SCKZoneJSONStore)initWithZoneName:(id)name serverRecords:(id)records lastSyncDate:(id)date lastDirtyDate:(id)dirtyDate serverChangeToken:(id)token pendingCommands:(id)commands
{
  nameCopy = name;
  recordsCopy = records;
  dateCopy = date;
  dirtyDateCopy = dirtyDate;
  tokenCopy = token;
  commandsCopy = commands;
  v27.receiver = self;
  v27.super_class = SCKZoneJSONStore;
  v19 = [(SCKZoneJSONStore *)&v27 init];
  if (v19)
  {
    v20 = [nameCopy copy];
    zoneName = v19->_zoneName;
    v19->_zoneName = v20;

    v22 = MEMORY[0x277CBEBF8];
    if (recordsCopy)
    {
      v23 = recordsCopy;
    }

    else
    {
      v23 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&v19->_serverRecords, v23);
    objc_storeStrong(&v19->_lastSyncDate, date);
    objc_storeStrong(&v19->_lastDirtyDate, dirtyDate);
    objc_storeStrong(&v19->_serverChangeToken, token);
    if (commandsCopy)
    {
      v24 = commandsCopy;
    }

    else
    {
      v24 = v22;
    }

    objc_storeStrong(&v19->_pendingCommands, v24);
  }

  return v19;
}

- (void)applyServerRecordsDiff:(id)diff
{
  diffCopy = diff;
  serverRecords = [(SCKZoneJSONStore *)self serverRecords];
  v5 = [diffCopy applyToRecords:serverRecords];

  serverRecords = self->_serverRecords;
  self->_serverRecords = v5;
}

- (void)addPendingCommands:(id)commands
{
  v4 = [(NSArray *)self->_pendingCommands arrayByAddingObjectsFromArray:commands];
  pendingCommands = self->_pendingCommands;
  self->_pendingCommands = v4;

  MEMORY[0x2821F96F8](v4, pendingCommands);
}

- (void)clearPendingCommandsUpToCount:(unint64_t)count
{
  v4 = [(NSArray *)self->_pendingCommands subarrayWithRange:count, [(NSArray *)self->_pendingCommands count]- count];
  pendingCommands = self->_pendingCommands;
  self->_pendingCommands = v4;

  MEMORY[0x2821F96F8](v4, pendingCommands);
}

@end