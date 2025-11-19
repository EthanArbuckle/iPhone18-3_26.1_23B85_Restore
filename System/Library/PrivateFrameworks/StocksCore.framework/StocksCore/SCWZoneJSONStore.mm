@interface SCWZoneJSONStore
- (SCWZoneJSONStore)initWithZoneSchema:(id)a3 serverRecords:(id)a4 lastSyncDate:(id)a5 lastDirtyDate:(id)a6 serverChangeToken:(id)a7 pendingCommands:(id)a8;
- (void)addPendingCommands:(id)a3;
- (void)applyServerRecordsDiff:(id)a3;
- (void)clearPendingCommandsUpToCount:(unint64_t)a3;
@end

@implementation SCWZoneJSONStore

- (SCWZoneJSONStore)initWithZoneSchema:(id)a3 serverRecords:(id)a4 lastSyncDate:(id)a5 lastDirtyDate:(id)a6 serverChangeToken:(id)a7 pendingCommands:(id)a8
{
  v26 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v27.receiver = self;
  v27.super_class = SCWZoneJSONStore;
  v20 = [(SCWZoneJSONStore *)&v27 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_zoneSchema, a3);
    v22 = MEMORY[0x1E695E0F0];
    if (v15)
    {
      v23 = v15;
    }

    else
    {
      v23 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v21->_serverRecords, v23);
    objc_storeStrong(&v21->_lastSyncDate, a5);
    objc_storeStrong(&v21->_lastDirtyDate, a6);
    objc_storeStrong(&v21->_serverChangeToken, a7);
    if (v19)
    {
      v24 = v19;
    }

    else
    {
      v24 = v22;
    }

    objc_storeStrong(&v21->_pendingCommands, v24);
  }

  return v21;
}

- (void)applyServerRecordsDiff:(id)a3
{
  v4 = a3;
  v7 = [(SCWZoneJSONStore *)self serverRecords];
  v5 = [v4 applyToRecords:v7];

  serverRecords = self->_serverRecords;
  self->_serverRecords = v5;
}

- (void)addPendingCommands:(id)a3
{
  v4 = [(NSArray *)self->_pendingCommands arrayByAddingObjectsFromArray:a3];
  pendingCommands = self->_pendingCommands;
  self->_pendingCommands = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)clearPendingCommandsUpToCount:(unint64_t)a3
{
  v4 = [(NSArray *)self->_pendingCommands subarrayWithRange:a3, [(NSArray *)self->_pendingCommands count]- a3];
  pendingCommands = self->_pendingCommands;
  self->_pendingCommands = v4;

  MEMORY[0x1EEE66BB8]();
}

@end