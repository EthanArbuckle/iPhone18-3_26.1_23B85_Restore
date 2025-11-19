@interface SCKZoneJSONStore
- (SCKZoneJSONStore)initWithZoneName:(id)a3 serverRecords:(id)a4 lastSyncDate:(id)a5 lastDirtyDate:(id)a6 serverChangeToken:(id)a7 pendingCommands:(id)a8;
- (void)addPendingCommands:(id)a3;
- (void)applyServerRecordsDiff:(id)a3;
- (void)clearPendingCommandsUpToCount:(unint64_t)a3;
@end

@implementation SCKZoneJSONStore

- (SCKZoneJSONStore)initWithZoneName:(id)a3 serverRecords:(id)a4 lastSyncDate:(id)a5 lastDirtyDate:(id)a6 serverChangeToken:(id)a7 pendingCommands:(id)a8
{
  v14 = a3;
  v15 = a4;
  v26 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v27.receiver = self;
  v27.super_class = SCKZoneJSONStore;
  v19 = [(SCKZoneJSONStore *)&v27 init];
  if (v19)
  {
    v20 = [v14 copy];
    zoneName = v19->_zoneName;
    v19->_zoneName = v20;

    v22 = MEMORY[0x277CBEBF8];
    if (v15)
    {
      v23 = v15;
    }

    else
    {
      v23 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&v19->_serverRecords, v23);
    objc_storeStrong(&v19->_lastSyncDate, a5);
    objc_storeStrong(&v19->_lastDirtyDate, a6);
    objc_storeStrong(&v19->_serverChangeToken, a7);
    if (v18)
    {
      v24 = v18;
    }

    else
    {
      v24 = v22;
    }

    objc_storeStrong(&v19->_pendingCommands, v24);
  }

  return v19;
}

- (void)applyServerRecordsDiff:(id)a3
{
  v4 = a3;
  v7 = [(SCKZoneJSONStore *)self serverRecords];
  v5 = [v4 applyToRecords:v7];

  serverRecords = self->_serverRecords;
  self->_serverRecords = v5;
}

- (void)addPendingCommands:(id)a3
{
  v4 = [(NSArray *)self->_pendingCommands arrayByAddingObjectsFromArray:a3];
  pendingCommands = self->_pendingCommands;
  self->_pendingCommands = v4;

  MEMORY[0x2821F96F8](v4, pendingCommands);
}

- (void)clearPendingCommandsUpToCount:(unint64_t)a3
{
  v4 = [(NSArray *)self->_pendingCommands subarrayWithRange:a3, [(NSArray *)self->_pendingCommands count]- a3];
  pendingCommands = self->_pendingCommands;
  self->_pendingCommands = v4;

  MEMORY[0x2821F96F8](v4, pendingCommands);
}

@end