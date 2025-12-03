@interface SCWZoneJSONStore
- (SCWZoneJSONStore)initWithZoneSchema:(id)schema serverRecords:(id)records lastSyncDate:(id)date lastDirtyDate:(id)dirtyDate serverChangeToken:(id)token pendingCommands:(id)commands;
- (void)addPendingCommands:(id)commands;
- (void)applyServerRecordsDiff:(id)diff;
- (void)clearPendingCommandsUpToCount:(unint64_t)count;
@end

@implementation SCWZoneJSONStore

- (SCWZoneJSONStore)initWithZoneSchema:(id)schema serverRecords:(id)records lastSyncDate:(id)date lastDirtyDate:(id)dirtyDate serverChangeToken:(id)token pendingCommands:(id)commands
{
  schemaCopy = schema;
  recordsCopy = records;
  dateCopy = date;
  dirtyDateCopy = dirtyDate;
  tokenCopy = token;
  commandsCopy = commands;
  v27.receiver = self;
  v27.super_class = SCWZoneJSONStore;
  v20 = [(SCWZoneJSONStore *)&v27 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_zoneSchema, schema);
    v22 = MEMORY[0x1E695E0F0];
    if (recordsCopy)
    {
      v23 = recordsCopy;
    }

    else
    {
      v23 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v21->_serverRecords, v23);
    objc_storeStrong(&v21->_lastSyncDate, date);
    objc_storeStrong(&v21->_lastDirtyDate, dirtyDate);
    objc_storeStrong(&v21->_serverChangeToken, token);
    if (commandsCopy)
    {
      v24 = commandsCopy;
    }

    else
    {
      v24 = v22;
    }

    objc_storeStrong(&v21->_pendingCommands, v24);
  }

  return v21;
}

- (void)applyServerRecordsDiff:(id)diff
{
  diffCopy = diff;
  serverRecords = [(SCWZoneJSONStore *)self serverRecords];
  v5 = [diffCopy applyToRecords:serverRecords];

  serverRecords = self->_serverRecords;
  self->_serverRecords = v5;
}

- (void)addPendingCommands:(id)commands
{
  v4 = [(NSArray *)self->_pendingCommands arrayByAddingObjectsFromArray:commands];
  pendingCommands = self->_pendingCommands;
  self->_pendingCommands = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)clearPendingCommandsUpToCount:(unint64_t)count
{
  v4 = [(NSArray *)self->_pendingCommands subarrayWithRange:count, [(NSArray *)self->_pendingCommands count]- count];
  pendingCommands = self->_pendingCommands;
  self->_pendingCommands = v4;

  MEMORY[0x1EEE66BB8]();
}

@end