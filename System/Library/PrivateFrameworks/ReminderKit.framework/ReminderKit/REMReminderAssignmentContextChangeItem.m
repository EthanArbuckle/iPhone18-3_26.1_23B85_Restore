@interface REMReminderAssignmentContextChangeItem
- (NSSet)assignments;
- (REMAssignment)currentAssignment;
- (REMReminderAssignmentContextChangeItem)initWithReminderChangeItem:(id)a3;
- (id)addAssignmentWithAssignee:(id)a3 originator:(id)a4 status:(int64_t)a5;
- (id)addAssignmentWithAssigneeID:(id)a3 originatorID:(id)a4 status:(int64_t)a5;
- (void)addAssignment:(id)a3;
- (void)removeAllAssignments;
- (void)removeAssignment:(id)a3;
@end

@implementation REMReminderAssignmentContextChangeItem

- (REMReminderAssignmentContextChangeItem)initWithReminderChangeItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMReminderAssignmentContextChangeItem;
  v6 = [(REMReminderAssignmentContextChangeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reminderChangeItem, a3);
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
  v2 = [(REMReminderAssignmentContextChangeItem *)self reminderChangeItem];
  v3 = [v2 assignments];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__REMReminderAssignmentContextChangeItem_currentAssignment__block_invoke;
  v6[3] = &unk_1E7507A50;
  v6[4] = &v7;
  [v3 enumerateObjectsUsingBlock:v6];

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
  v2 = [(REMReminderAssignmentContextChangeItem *)self reminderChangeItem];
  v3 = [v2 assignments];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFD8] set];
  }

  v6 = v5;

  return v6;
}

- (void)addAssignment:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[REMLogStore write];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(REMReminderAssignmentContextChangeItem *)self reminderChangeItem];
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_INFO, "Adding assignment {reminderChangeItem: %@, assignment: %@}", &v12, 0x16u);
  }

  v7 = [(REMReminderAssignmentContextChangeItem *)self reminderChangeItem];
  v8 = [v7 assignments];
  v9 = [v8 mutableCopy];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  [v9 addObject:v4];
  v10 = [(REMReminderAssignmentContextChangeItem *)self reminderChangeItem];
  [v10 setAssignments:v9];

  v11 = *MEMORY[0x1E69E9840];
}

- (id)addAssignmentWithAssignee:(id)a3 originator:(id)a4 status:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = +[REMAssignment newObjectID];
  v10 = [REMAssignment alloc];
  v11 = [(REMReminderAssignmentContextChangeItem *)self reminderChangeItem];
  v12 = [v11 accountID];
  v13 = [(REMReminderAssignmentContextChangeItem *)self reminderChangeItem];
  v14 = [v13 objectID];
  v15 = [v8 objectID];

  v16 = [v7 objectID];

  v17 = [(REMAssignment *)v10 initWithObjectID:v9 accountID:v12 reminderID:v14 assigneeID:v15 originatorID:v16 status:a5];
  [(REMReminderAssignmentContextChangeItem *)self addAssignment:v17];

  return v17;
}

- (id)addAssignmentWithAssigneeID:(id)a3 originatorID:(id)a4 status:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = +[REMAssignment newObjectID];
  v11 = [REMAssignment alloc];
  v12 = [(REMReminderAssignmentContextChangeItem *)self reminderChangeItem];
  v13 = [v12 accountID];
  v14 = [(REMReminderAssignmentContextChangeItem *)self reminderChangeItem];
  v15 = [v14 objectID];
  v16 = [(REMAssignment *)v11 initWithObjectID:v10 accountID:v13 reminderID:v15 assigneeID:v9 originatorID:v8 status:a5];

  [(REMReminderAssignmentContextChangeItem *)self addAssignment:v16];

  return v16;
}

- (void)removeAssignment:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[REMLogStore write];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(REMReminderAssignmentContextChangeItem *)self reminderChangeItem];
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_INFO, "Removing assignment {reminderChangeItem: %@, assignment: %@}", &v12, 0x16u);
  }

  v7 = [(REMReminderAssignmentContextChangeItem *)self reminderChangeItem];
  v8 = [v7 assignments];
  v9 = [v8 mutableCopy];

  [v9 removeObject:v4];
  v10 = [(REMReminderAssignmentContextChangeItem *)self reminderChangeItem];
  [v10 setAssignments:v9];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeAllAssignments
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(REMReminderAssignmentContextChangeItem *)self reminderChangeItem];
  v4 = [v3 assignments];
  v5 = [v4 count];

  if (v5)
  {
    v6 = +[REMLogStore write];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [(REMReminderAssignmentContextChangeItem *)self reminderChangeItem];
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_19A0DB000, v6, OS_LOG_TYPE_INFO, "Removing all assignment {reminderChangeItem: %@}", &v11, 0xCu);
    }

    v8 = [MEMORY[0x1E695DFD8] set];
    v9 = [(REMReminderAssignmentContextChangeItem *)self reminderChangeItem];
    [v9 setAssignments:v8];
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end