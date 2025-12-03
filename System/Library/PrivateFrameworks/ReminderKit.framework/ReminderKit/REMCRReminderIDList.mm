@interface REMCRReminderIDList
+ (id)listFromSerializedData:(id)data replica:(id)replica;
+ (id)newObjectID;
+ (id)objectIDWithUUID:(id)d;
- (BOOL)wantsUndoCommands;
- (REMCRReminderIDList)init;
- (REMCRReminderIDList)initWithDocument:(id)document objectID:(id)d;
- (REMCRReminderIDListDelegate)delegate;
- (id)copyForReplica:(id)replica;
- (void)addReminder:(id)reminder;
- (void)addUndoCommandsForObject:(id)object block:(id)block;
- (void)mergeWith:(id)with;
@end

@implementation REMCRReminderIDList

- (REMCRReminderIDList)init
{
  v3 = [CRTTCompatibleDocument alloc];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v5 = [(CRDocument *)v3 initWithReplica:uUID];

  v6 = [[CRTombstoneOrderedSet alloc] initWithDocument:v5];
  [(CRDocument *)v5 setRootObject:v6];

  v7 = +[REMList newObjectID];
  v8 = [(REMCRReminderIDList *)self initWithDocument:v5 objectID:v7];

  return v8;
}

- (REMCRReminderIDList)initWithDocument:(id)document objectID:(id)d
{
  documentCopy = document;
  dCopy = d;
  v16.receiver = self;
  v16.super_class = REMCRReminderIDList;
  v9 = [(REMCRReminderIDList *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_remObjectID, d);
    objc_storeStrong(&v10->_document, document);
    rootObject = [documentCopy rootObject];
    reminderIDsStorage = v10->_reminderIDsStorage;
    v10->_reminderIDsStorage = rootObject;

    [(CRTombstoneOrderedSet *)v10->_reminderIDsStorage setDelegate:v10];
    replica = [documentCopy replica];
    replica = v10->_replica;
    v10->_replica = replica;
  }

  return v10;
}

+ (id)listFromSerializedData:(id)data replica:(id)replica
{
  replicaCopy = replica;
  dataCopy = data;
  +[REMObjectID rem_registerClassAtCRCoderIfNeeded];
  v7 = [CRDocument unarchiveFromData:dataCopy replica:replicaCopy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [REMCRReminderIDList listFromSerializedData:v7 replica:?];
  }

  v8 = [REMCRReminderIDList alloc];
  v9 = +[REMList newObjectID];
  v10 = [(REMCRReminderIDList *)v8 initWithDocument:v7 objectID:v9];

  return v10;
}

- (id)copyForReplica:(id)replica
{
  replicaCopy = replica;
  document = [(REMCRReminderIDList *)self document];
  v6 = [document copyForReplica:replicaCopy];

  v7 = [REMCRReminderIDList alloc];
  remObjectID = [(REMCRReminderIDList *)self remObjectID];
  v9 = [(REMCRReminderIDList *)v7 initWithDocument:v6 objectID:remObjectID];

  return v9;
}

- (void)addReminder:(id)reminder
{
  reminderCopy = reminder;
  reminderIDsProxy = [(REMCRReminderIDList *)self reminderIDsProxy];
  objectID = [reminderCopy objectID];

  [reminderIDsProxy addObject:objectID];
}

- (void)mergeWith:(id)with
{
  withCopy = with;
  document = [(REMCRReminderIDList *)self document];
  document2 = [withCopy document];

  [document mergeWithDocument:document2];
}

- (void)addUndoCommandsForObject:(id)object block:(id)block
{
  blockCopy = block;
  delegate = [(REMCRReminderIDList *)self delegate];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__REMCRReminderIDList_addUndoCommandsForObject_block___block_invoke;
  v8[3] = &unk_1E7509560;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  [delegate addUndoCommandsForList:self block:v8];
}

void __54__REMCRReminderIDList_addUndoCommandsForObject_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 remObjectID];
  v5 = [*(a1 + 32) remObjectID];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = [v3 _orderedSet];
    (*(v7 + 16))(v7, v8);
  }

  else
  {
    v9 = +[REMLog crdt];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __54__REMCRReminderIDList_addUndoCommandsForObject_block___block_invoke_cold_1(v3, v9);
    }
  }
}

- (BOOL)wantsUndoCommands
{
  delegate = [(REMCRReminderIDList *)self delegate];
  wantsUndoCommands = [delegate wantsUndoCommands];

  return wantsUndoCommands;
}

+ (id)newObjectID
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v4 = [self objectIDWithUUID:uUID];

  return v4;
}

+ (id)objectIDWithUUID:(id)d
{
  dCopy = d;
  cdEntityName = [self cdEntityName];
  v6 = [REMObjectID objectIDWithUUID:dCopy entityName:cdEntityName];

  return v6;
}

- (REMCRReminderIDListDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (void)listFromSerializedData:(uint64_t)a1 replica:.cold.1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = +[REMLog crdt];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v4 = 138412290;
    v5 = a1;
    _os_log_fault_impl(&dword_19A0DB000, v2, OS_LOG_TYPE_FAULT, "rem_log_fault_if (![document isKindOfClass:[CRTTCompatibleDocument class]]) -- Unexpected class for deserialized document for REMCRReminderIDList {document: %@}", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void __54__REMCRReminderIDList_addUndoCommandsForObject_block___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_FAULT, "An unexpected list is passed to the undo block which does not match the originating list. Passed in: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end