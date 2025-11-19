@interface SCWZoneMemoryStore
- (SCWZoneMemoryStore)init;
- (void)addPendingCommands:(id)a3;
- (void)applyServerRecordsDiff:(id)a3;
- (void)clearPendingCommandsUpToCount:(unint64_t)a3;
@end

@implementation SCWZoneMemoryStore

- (SCWZoneMemoryStore)init
{
  v8.receiver = self;
  v8.super_class = SCWZoneMemoryStore;
  v2 = [(SCWZoneMemoryStore *)&v8 init];
  v3 = v2;
  if (v2)
  {
    serverRecords = v2->_serverRecords;
    v5 = MEMORY[0x1E695E0F0];
    v2->_serverRecords = MEMORY[0x1E695E0F0];

    pendingCommands = v3->_pendingCommands;
    v3->_pendingCommands = v5;
  }

  return v3;
}

- (void)applyServerRecordsDiff:(id)a3
{
  v4 = a3;
  v7 = [(SCWZoneMemoryStore *)self serverRecords];
  v5 = [v4 applyToRecords:v7];

  serverRecords = self->_serverRecords;
  self->_serverRecords = v5;
}

- (void)addPendingCommands:(id)a3
{
  v4 = a3;
  v7 = [(SCWZoneMemoryStore *)self pendingCommands];
  v5 = [v7 arrayByAddingObjectsFromArray:v4];

  pendingCommands = self->_pendingCommands;
  self->_pendingCommands = v5;
}

- (void)clearPendingCommandsUpToCount:(unint64_t)a3
{
  v4 = [(NSArray *)self->_pendingCommands subarrayWithRange:a3, [(NSArray *)self->_pendingCommands count]- a3];
  pendingCommands = self->_pendingCommands;
  self->_pendingCommands = v4;

  MEMORY[0x1EEE66BB8]();
}

@end