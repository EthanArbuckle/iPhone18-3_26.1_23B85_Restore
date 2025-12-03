@interface SCKZoneMemoryStore
- (SCKZoneMemoryStore)init;
- (void)addPendingCommands:(id)commands;
- (void)applyServerRecordsDiff:(id)diff;
- (void)clearPendingCommandsUpToCount:(unint64_t)count;
@end

@implementation SCKZoneMemoryStore

- (SCKZoneMemoryStore)init
{
  v8.receiver = self;
  v8.super_class = SCKZoneMemoryStore;
  v2 = [(SCKZoneMemoryStore *)&v8 init];
  v3 = v2;
  if (v2)
  {
    serverRecords = v2->_serverRecords;
    v5 = MEMORY[0x277CBEBF8];
    v2->_serverRecords = MEMORY[0x277CBEBF8];

    pendingCommands = v3->_pendingCommands;
    v3->_pendingCommands = v5;
  }

  return v3;
}

- (void)applyServerRecordsDiff:(id)diff
{
  diffCopy = diff;
  serverRecords = [(SCKZoneMemoryStore *)self serverRecords];
  v5 = [diffCopy applyToRecords:serverRecords];

  serverRecords = self->_serverRecords;
  self->_serverRecords = v5;
}

- (void)addPendingCommands:(id)commands
{
  commandsCopy = commands;
  pendingCommands = [(SCKZoneMemoryStore *)self pendingCommands];
  v5 = [pendingCommands arrayByAddingObjectsFromArray:commandsCopy];

  pendingCommands = self->_pendingCommands;
  self->_pendingCommands = v5;
}

- (void)clearPendingCommandsUpToCount:(unint64_t)count
{
  v4 = [(NSArray *)self->_pendingCommands subarrayWithRange:count, [(NSArray *)self->_pendingCommands count]- count];
  pendingCommands = self->_pendingCommands;
  self->_pendingCommands = v4;

  MEMORY[0x2821F96F8](v4, pendingCommands);
}

@end