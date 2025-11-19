@interface REMCRReminderIDList
+ (id)listFromSerializedData:(id)a3 replica:(id)a4;
+ (id)newObjectID;
+ (id)objectIDWithUUID:(id)a3;
- (BOOL)wantsUndoCommands;
- (REMCRReminderIDList)init;
- (REMCRReminderIDList)initWithDocument:(id)a3 objectID:(id)a4;
- (REMCRReminderIDListDelegate)delegate;
- (id)copyForReplica:(id)a3;
- (void)addReminder:(id)a3;
- (void)addUndoCommandsForObject:(id)a3 block:(id)a4;
- (void)mergeWith:(id)a3;
@end

@implementation REMCRReminderIDList

- (REMCRReminderIDList)init
{
  v3 = [CRTTCompatibleDocument alloc];
  v4 = [MEMORY[0x1E696AFB0] UUID];
  v5 = [(CRDocument *)v3 initWithReplica:v4];

  v6 = [[CRTombstoneOrderedSet alloc] initWithDocument:v5];
  [(CRDocument *)v5 setRootObject:v6];

  v7 = +[REMList newObjectID];
  v8 = [(REMCRReminderIDList *)self initWithDocument:v5 objectID:v7];

  return v8;
}

- (REMCRReminderIDList)initWithDocument:(id)a3 objectID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = REMCRReminderIDList;
  v9 = [(REMCRReminderIDList *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_remObjectID, a4);
    objc_storeStrong(&v10->_document, a3);
    v11 = [v7 rootObject];
    reminderIDsStorage = v10->_reminderIDsStorage;
    v10->_reminderIDsStorage = v11;

    [(CRTombstoneOrderedSet *)v10->_reminderIDsStorage setDelegate:v10];
    v13 = [v7 replica];
    replica = v10->_replica;
    v10->_replica = v13;
  }

  return v10;
}

+ (id)listFromSerializedData:(id)a3 replica:(id)a4
{
  v5 = a4;
  v6 = a3;
  +[REMObjectID rem_registerClassAtCRCoderIfNeeded];
  v7 = [CRDocument unarchiveFromData:v6 replica:v5];

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

- (id)copyForReplica:(id)a3
{
  v4 = a3;
  v5 = [(REMCRReminderIDList *)self document];
  v6 = [v5 copyForReplica:v4];

  v7 = [REMCRReminderIDList alloc];
  v8 = [(REMCRReminderIDList *)self remObjectID];
  v9 = [(REMCRReminderIDList *)v7 initWithDocument:v6 objectID:v8];

  return v9;
}

- (void)addReminder:(id)a3
{
  v4 = a3;
  v6 = [(REMCRReminderIDList *)self reminderIDsProxy];
  v5 = [v4 objectID];

  [v6 addObject:v5];
}

- (void)mergeWith:(id)a3
{
  v4 = a3;
  v6 = [(REMCRReminderIDList *)self document];
  v5 = [v4 document];

  [v6 mergeWithDocument:v5];
}

- (void)addUndoCommandsForObject:(id)a3 block:(id)a4
{
  v5 = a4;
  v6 = [(REMCRReminderIDList *)self delegate];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__REMCRReminderIDList_addUndoCommandsForObject_block___block_invoke;
  v8[3] = &unk_1E7509560;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 addUndoCommandsForList:self block:v8];
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
  v2 = [(REMCRReminderIDList *)self delegate];
  v3 = [v2 wantsUndoCommands];

  return v3;
}

+ (id)newObjectID
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [a1 objectIDWithUUID:v3];

  return v4;
}

+ (id)objectIDWithUUID:(id)a3
{
  v4 = a3;
  v5 = [a1 cdEntityName];
  v6 = [REMObjectID objectIDWithUUID:v4 entityName:v5];

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