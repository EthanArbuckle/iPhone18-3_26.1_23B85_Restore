@interface REMReminderAssignmentContextChangeItem
- (NSSet)assignments;
- (REMAssignment)currentAssignment;
- (REMReminderAssignmentContextChangeItem)initWithReminderChangeItem:(id)item;
- (id)addAssignmentWithAssignee:(id)assignee originator:(id)originator status:(int64_t)status;
- (id)addAssignmentWithAssigneeID:(id)d originatorID:(id)iD status:(int64_t)status;
- (void)addAssignment:(id)assignment;
- (void)removeAllAssignments;
- (void)removeAssignment:(id)assignment;
@end

@implementation REMReminderAssignmentContextChangeItem

- (REMReminderAssignmentContextChangeItem)initWithReminderChangeItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = REMReminderAssignmentContextChangeItem;
  v6 = [(REMReminderAssignmentContextChangeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reminderChangeItem, item);
  }

  return v7;
}

- (REMAssignment)currentAssignment
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  reminderChangeItem = [(REMReminderAssignmentContextChangeItem *)self reminderChangeItem];
  assignments = [reminderChangeItem assignments];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__REMReminderAssignmentContextChangeItem_currentAssignment__block_invoke;
  v6[3] = &unk_1E7507A50;
  v6[4] = &v7;
  [assignments enumerateObjectsUsingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __59__REMReminderAssignmentContextChangeItem_currentAssignment__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(*(a1 + 32) + 8);
  v8 = *(v5 + 40);
  v6 = (v5 + 40);
  v7 = v8;
  v12 = v4;
  if (v8)
  {
    [v7 orderValue];
    v10 = v9;
    [v12 orderValue];
    if (v10 > v11)
    {
      goto LABEL_5;
    }

    v6 = (*(*(a1 + 32) + 8) + 40);
  }

  objc_storeStrong(v6, a2);
LABEL_5:
}

- (NSSet)assignments
{
  reminderChangeItem = [(REMReminderAssignmentContextChangeItem *)self reminderChangeItem];
  assignments = [reminderChangeItem assignments];
  v4 = assignments;
  if (assignments)
  {
    v5 = assignments;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFD8] set];
  }

  v6 = v5;

  return v6;
}

- (void)addAssignment:(id)assignment
{
  v16 = *MEMORY[0x1E69E9840];
  assignmentCopy = assignment;
  v5 = +[REMLogStore write];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    reminderChangeItem = [(REMReminderAssignmentContextChangeItem *)self reminderChangeItem];
    v12 = 138412546;
    v13 = reminderChangeItem;
    v14 = 2112;
    v15 = assignmentCopy;
    _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_INFO, "Adding assignment {reminderChangeItem: %@, assignment: %@}", &v12, 0x16u);
  }

  reminderChangeItem2 = [(REMReminderAssignmentContextChangeItem *)self reminderChangeItem];
  assignments = [reminderChangeItem2 assignments];
  v9 = [assignments mutableCopy];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  [v9 addObject:assignmentCopy];
  reminderChangeItem3 = [(REMReminderAssignmentContextChangeItem *)self reminderChangeItem];
  [reminderChangeItem3 setAssignments:v9];

  v11 = *MEMORY[0x1E69E9840];
}

- (id)addAssignmentWithAssignee:(id)assignee originator:(id)originator status:(int64_t)status
{
  originatorCopy = originator;
  assigneeCopy = assignee;
  v9 = +[REMAssignment newObjectID];
  v10 = [REMAssignment alloc];
  reminderChangeItem = [(REMReminderAssignmentContextChangeItem *)self reminderChangeItem];
  accountID = [reminderChangeItem accountID];
  reminderChangeItem2 = [(REMReminderAssignmentContextChangeItem *)self reminderChangeItem];
  objectID = [reminderChangeItem2 objectID];
  objectID2 = [assigneeCopy objectID];

  objectID3 = [originatorCopy objectID];

  v17 = [(REMAssignment *)v10 initWithObjectID:v9 accountID:accountID reminderID:objectID assigneeID:objectID2 originatorID:objectID3 status:status];
  [(REMReminderAssignmentContextChangeItem *)self addAssignment:v17];

  return v17;
}

- (id)addAssignmentWithAssigneeID:(id)d originatorID:(id)iD status:(int64_t)status
{
  iDCopy = iD;
  dCopy = d;
  v10 = +[REMAssignment newObjectID];
  v11 = [REMAssignment alloc];
  reminderChangeItem = [(REMReminderAssignmentContextChangeItem *)self reminderChangeItem];
  accountID = [reminderChangeItem accountID];
  reminderChangeItem2 = [(REMReminderAssignmentContextChangeItem *)self reminderChangeItem];
  objectID = [reminderChangeItem2 objectID];
  v16 = [(REMAssignment *)v11 initWithObjectID:v10 accountID:accountID reminderID:objectID assigneeID:dCopy originatorID:iDCopy status:status];

  [(REMReminderAssignmentContextChangeItem *)self addAssignment:v16];

  return v16;
}

- (void)removeAssignment:(id)assignment
{
  v16 = *MEMORY[0x1E69E9840];
  assignmentCopy = assignment;
  v5 = +[REMLogStore write];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    reminderChangeItem = [(REMReminderAssignmentContextChangeItem *)self reminderChangeItem];
    v12 = 138412546;
    v13 = reminderChangeItem;
    v14 = 2112;
    v15 = assignmentCopy;
    _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_INFO, "Removing assignment {reminderChangeItem: %@, assignment: %@}", &v12, 0x16u);
  }

  reminderChangeItem2 = [(REMReminderAssignmentContextChangeItem *)self reminderChangeItem];
  assignments = [reminderChangeItem2 assignments];
  v9 = [assignments mutableCopy];

  [v9 removeObject:assignmentCopy];
  reminderChangeItem3 = [(REMReminderAssignmentContextChangeItem *)self reminderChangeItem];
  [reminderChangeItem3 setAssignments:v9];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeAllAssignments
{
  v13 = *MEMORY[0x1E69E9840];
  reminderChangeItem = [(REMReminderAssignmentContextChangeItem *)self reminderChangeItem];
  assignments = [reminderChangeItem assignments];
  v5 = [assignments count];

  if (v5)
  {
    v6 = +[REMLogStore write];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      reminderChangeItem2 = [(REMReminderAssignmentContextChangeItem *)self reminderChangeItem];
      v11 = 138412290;
      v12 = reminderChangeItem2;
      _os_log_impl(&dword_19A0DB000, v6, OS_LOG_TYPE_INFO, "Removing all assignment {reminderChangeItem: %@}", &v11, 0xCu);
    }

    v8 = [MEMORY[0x1E695DFD8] set];
    reminderChangeItem3 = [(REMReminderAssignmentContextChangeItem *)self reminderChangeItem];
    [reminderChangeItem3 setAssignments:v8];
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end