@interface SCWZoneMemoryStore
- (SCWZoneMemoryStore)init;
- (void)addPendingCommands:(id)commands;
- (void)applyServerRecordsDiff:(id)diff;
- (void)clearPendingCommandsUpToCount:(unint64_t)count;
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

- (void)applyServerRecordsDiff:(id)diff
{
  diffCopy = diff;
  serverRecords = [(SCWZoneMemoryStore *)self serverRecords];
  v5 = [diffCopy applyToRecords:serverRecords];

  serverRecords = self->_serverRecords;
  self->_serverRecords = v5;
}

- (void)addPendingCommands:(id)commands
{
  commandsCopy = commands;
  pendingCommands = [(SCWZoneMemoryStore *)self pendingCommands];
  v5 = [pendingCommands arrayByAddingObjectsFromArray:commandsCopy];

  pendingCommands = self->_pendingCommands;
  self->_pendingCommands = v5;
}

- (void)clearPendingCommandsUpToCount:(unint64_t)count
{
  v4 = [(NSArray *)self->_pendingCommands subarrayWithRange:count, [(NSArray *)self->_pendingCommands count]- count];
  pendingCommands = self->_pendingCommands;
  self->_pendingCommands = v4;

  MEMORY[0x1EEE66BB8]();
}

@end