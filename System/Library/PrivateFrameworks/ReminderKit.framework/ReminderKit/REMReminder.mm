@interface REMReminder
+ (id)fetchRequestForRemindersListID:(id)a3;
+ (id)fetchRequestForRemindersListID:(id)a3 withSortDescriptors:(id)a4;
+ (id)fetchRequestForScheduledRemindersWithDueDateOnOrAfter:(id)a3;
+ (id)fetchRequestWithPredicateDescriptor:(id)a3 sortDescriptors:(id)a4;
- (BOOL)allDay;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSubtask;
- (BOOL)isUnsupported;
- (BOOL)respondsToSelector:(SEL)a3;
- (BOOL)shouldUseExternalIdentifierAsDeletionKey;
- (NSAttributedString)notes;
- (NSAttributedString)title;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)externalIdentifierForMarkedForDeletionObject;
- (NSString)notesAsString;
- (NSString)timeZone;
- (NSString)titleAsString;
- (REMReminder)initWithStore:(id)a3 account:(id)a4 storage:(id)a5;
- (REMReminder)initWithStore:(id)a3 list:(id)a4 storage:(id)a5;
- (REMReminderAssignmentContext)assignmentContext;
- (REMReminderAttachmentContext)attachmentContext;
- (REMReminderDueDateDeltaAlertContext)dueDateDeltaAlertContext;
- (REMReminderFlaggedContext)flaggedContext;
- (REMReminderHashtagContext)hashtagContext;
- (REMReminderSubtaskContext)subtaskContext;
- (id)datesDebugDescriptionInTimeZone:(id)a3;
- (id)optionalObjectID;
- (id)valueForUndefinedKey:(id)a3;
- (unint64_t)hash;
- (void)allDay;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
- (void)shouldUseExternalIdentifierAsDeletionKey;
- (void)timeZone;
@end

@implementation REMReminder

id __86__REMReminder_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_fetchByObjectIDBlock__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a4;
  v10 = v9;
  if (a3)
  {
    v23 = 0;
    v11 = &v23;
    v12 = [v9 fetchReminderIncludingConcealedWithObjectID:v8 error:&v23];
  }

  else
  {
    v22 = 0;
    v11 = &v22;
    v12 = [v9 fetchReminderWithObjectID:v8 error:&v22];
  }

  v13 = v12;
  v14 = *v11;
  v15 = v14;
  if (v14 && [v14 code] != -3000)
  {
    v16 = +[REMLog changeTracking];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AD98] numberWithBool:a3];
      v21 = [v15 localizedDescription];
      *buf = 138543874;
      v25 = v8;
      v26 = 2114;
      v27 = v20;
      v28 = 2112;
      v29 = v21;
      _os_log_error_impl(&dword_19A0DB000, v16, OS_LOG_TYPE_ERROR, "REMDAChangeTrackingHelper:_REMDAChangeTrackableModel: ERROR: Failed to fetch REMReminder {objectID: %{public}@, includeConcealedObjects: %{public}@, error: %@}.", buf, 0x20u);
    }
  }

  if (a5)
  {
    v17 = v15;
    *a5 = v15;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v13;
}

id __87__REMReminder_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_fetchByObjectIDsBlock__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v12 = 0;
  v7 = [a3 fetchRemindersWithObjectIDs:v6 error:&v12];
  v8 = v12;
  if (v8)
  {
    v9 = +[REMLog changeTracking];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __87__REMReminder_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_fetchByObjectIDsBlock__block_invoke_cold_1();
    }
  }

  if (a4)
  {
    v10 = v8;
    *a4 = v8;
  }

  return v7;
}

id __94__REMReminder_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_deletedKeyFromTombstoneBlock__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 externalIdentifier];
  if (!v3)
  {
    v4 = [v2 objectIdentifier];
    v3 = [v4 UUIDString];
  }

  return v3;
}

id __105__REMReminder_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_deletedKeyFromConcealedModelObjectBlock__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = REMCheckedDynamicCast(v3, v2);

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    __105__REMReminder_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_deletedKeyFromConcealedModelObjectBlock__block_invoke_cold_1(v4);
  }

  if ([v4 shouldUseExternalIdentifierAsDeletionKey])
  {
    [v4 externalIdentifierForMarkedForDeletionObject];
  }

  else
  {
    [v4 objectID];
  }
  v5 = ;

  return v5;
}

+ (id)fetchRequestWithPredicateDescriptor:(id)a3 sortDescriptors:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[REMReminderFetchExecutor alloc] initWithPredicateDescriptor:v6 sortDescriptors:v5 options:0];

  v8 = [[REMFetchRequest alloc] initWithFetchExecutor:v7];

  return v8;
}

+ (id)fetchRequestForRemindersListID:(id)a3
{
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [REMReminderSortDescriptor sortDescriptorSortingByCreationDateAscending:1];
  v7 = [v4 arrayWithObject:v6];

  v8 = [a1 fetchRequestForRemindersListID:v5 withSortDescriptors:v7];

  return v8;
}

+ (id)fetchRequestForRemindersListID:(id)a3 withSortDescriptors:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v5;
  v8 = [REMReminderPredicateDescriptor predicateDescriptorForRemindersWithListID:a3];
  v9 = [[REMReminderFetchExecutor alloc] initWithPredicateDescriptor:v8 sortDescriptors:v6 options:3];
  v10 = [[REMFetchRequest alloc] initWithFetchExecutor:v9];

  return v10;
}

+ (id)fetchRequestForScheduledRemindersWithDueDateOnOrAfter:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = [REMReminderPredicateDescriptor predicateDescriptorForRemindersWithDueDateOnOrAfter:a3];
  v14[0] = v3;
  v4 = [REMReminderPredicateDescriptor predicateDescriptorForRemindersWithCompleted:0];
  v14[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v6 = [REMReminderPredicateDescriptor andPredicateDescriptorWithDescriptors:v5];

  v7 = MEMORY[0x1E695DEC8];
  v8 = [REMReminderSortDescriptor sortDescriptorSortingByDueDateAscending:1];
  v9 = [v7 arrayWithObject:v8];

  v10 = [[REMReminderFetchExecutor alloc] initWithPredicateDescriptor:v6 sortDescriptors:v9 options:4];
  v11 = [[REMFetchRequest alloc] initWithFetchExecutor:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (REMReminder)initWithStore:(id)a3 list:(id)a4 storage:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = REMReminder;
  v12 = [(REMReminder *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_store, a3);
    v14 = [v10 account];
    account = v13->_account;
    v13->_account = v14;

    objc_storeStrong(&v13->_list, a4);
    objc_storeStrong(&v13->_storage, a5);
    -[REMReminderStorage setStoreGenerationIfNeeded:](v13->_storage, "setStoreGenerationIfNeeded:", [v9 storeGeneration]);
  }

  return v13;
}

- (REMReminder)initWithStore:(id)a3 account:(id)a4 storage:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = REMReminder;
  v12 = [(REMReminder *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_store, a3);
    if (v10)
    {
      objc_storeStrong(&v13->_account, a4);
    }

    objc_storeStrong(&v13->_storage, a5);
    -[REMReminderStorage setStoreGenerationIfNeeded:](v13->_storage, "setStoreGenerationIfNeeded:", [v9 storeGeneration]);
  }

  return v13;
}

- (id)optionalObjectID
{
  v2 = [(REMReminder *)self storage];
  v3 = [v2 optionalObjectID];

  return v3;
}

- (BOOL)isSubtask
{
  v2 = [(REMReminder *)self parentReminder];
  v3 = v2 != 0;

  return v3;
}

- (REMReminderSubtaskContext)subtaskContext
{
  v3 = [(REMReminder *)self account];
  v4 = [v3 capabilities];
  if ([v4 supportsSubtasks])
  {
    v5 = [(REMReminder *)self isSubtask];

    if (!v5)
    {
      v6 = [[REMReminderSubtaskContext alloc] initWithReminder:self];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (REMReminderAttachmentContext)attachmentContext
{
  v3 = [(REMReminder *)self account];
  v4 = [v3 capabilities];
  v5 = [v4 supportsAttachments];

  if (v5)
  {
    v6 = [[REMReminderAttachmentContext alloc] initWithReminder:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (REMReminderFlaggedContext)flaggedContext
{
  v3 = [(REMReminder *)self account];
  v4 = [v3 capabilities];
  v5 = [v4 supportsFlagged];

  if (v5)
  {
    v6 = [[REMReminderFlaggedContext alloc] initWithReminder:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (REMReminderAssignmentContext)assignmentContext
{
  v3 = [(REMReminder *)self account];
  v4 = [v3 capabilities];
  v5 = [v4 supportsAssignments];

  if (v5)
  {
    v6 = [[REMReminderAssignmentContext alloc] initWithReminder:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (REMReminderHashtagContext)hashtagContext
{
  v3 = [(REMReminder *)self account];
  v4 = [v3 capabilities];
  v5 = [v4 supportsHashtags];

  if (v5)
  {
    v6 = [[REMReminderHashtagContext alloc] initWithReminder:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (REMReminderDueDateDeltaAlertContext)dueDateDeltaAlertContext
{
  v3 = [(REMReminder *)self account];
  v4 = [v3 capabilities];
  v5 = [v4 supportsDueDateDeltaAlerts];

  if (v5)
  {
    v6 = [[REMReminderDueDateDeltaAlertContext alloc] initWithReminder:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(REMReminder *)v5 store];
      v7 = [(REMReminder *)self store];
      v8 = [v6 isEqual:v7];

      if (v8)
      {
        v9 = [(REMReminder *)v5 list];
        v10 = [(REMReminder *)self list];
        v11 = v10;
        if (v9 == v10)
        {
        }

        else
        {
          v12 = [(REMReminder *)v5 list];
          v13 = [(REMReminder *)self list];
          v14 = [v12 isEqual:v13];

          if (!v14)
          {
            goto LABEL_6;
          }
        }

        v16 = [(REMReminder *)v5 storage];
        v17 = [(REMReminder *)self storage];
        v15 = [v16 isEqual:v17];

        goto LABEL_11;
      }

LABEL_6:
      v15 = 0;
LABEL_11:

      goto LABEL_12;
    }

    v15 = 0;
  }

LABEL_12:

  return v15;
}

- (unint64_t)hash
{
  v2 = [(REMReminder *)self storage];
  v3 = [v2 hash];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMReminder *)self storage];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMReminder *)self storage];
  v6 = [v5 debugDescription];
  v7 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, v6];

  return v7;
}

- (id)datesDebugDescriptionInTimeZone:(id)a3
{
  v4 = a3;
  v5 = [(REMReminder *)self storage];
  v6 = [v5 datesDebugDescriptionInTimeZone:v4];

  return v6;
}

- (NSAttributedString)title
{
  v2 = [(REMReminder *)self storage];
  v3 = [v2 titleDocument];
  v4 = [v3 attributedString];

  return v4;
}

- (NSString)titleAsString
{
  v2 = [(REMReminder *)self storage];
  v3 = [v2 titleAsString];

  return v3;
}

- (NSAttributedString)notes
{
  v2 = [(REMReminder *)self storage];
  v3 = [v2 notesDocument];
  v4 = [v3 attributedString];

  return v4;
}

- (NSString)notesAsString
{
  v2 = [(REMReminder *)self storage];
  v3 = [v2 notesAsString];

  return v3;
}

- (NSString)timeZone
{
  v3 = [(REMReminder *)self dueDateComponents];
  v4 = [v3 timeZone];
  v5 = [v4 name];

  if (!v5)
  {
    v3 = [(REMReminder *)self storage];
    v6 = [v3 timeZone];
    if (!v6)
    {
LABEL_10:

      goto LABEL_11;
    }

    v4 = v6;
  }

  v7 = [(REMReminder *)self storage];
  v8 = [v7 timeZone];
  v9 = [v5 isEqual:v8];

  if (!v5)
  {

    if (v9)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if ((v9 & 1) == 0)
  {
LABEL_8:
    v3 = +[REMLogStore read];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [(REMReminder *)self timeZone];
    }

    goto LABEL_10;
  }

LABEL_11:

  return v5;
}

- (BOOL)allDay
{
  v3 = [(REMReminder *)self dueDateComponents];
  v4 = [v3 rem_isAllDayDateComponents];

  v5 = [(REMReminder *)self storage];
  v6 = [v5 allDay];

  if (v4 != v6)
  {
    v7 = +[REMLogStore read];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(REMReminder *)self allDay];
    }
  }

  return v4;
}

- (id)valueForUndefinedKey:(id)a3
{
  v4 = a3;
  v5 = [(REMReminder *)self storage];
  v6 = [v5 valueForKey:v4];

  return v6;
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(REMReminder *)self storage];
  [v8 setValue:v7 forKey:v6];
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = REMReminder;
  if ([(REMReminder *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(REMReminder *)self storage];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (BOOL)isUnsupported
{
  v2 = [(REMReminder *)self storage];
  v3 = [v2 isUnsupported];

  return v3;
}

- (NSString)externalIdentifierForMarkedForDeletionObject
{
  v2 = [(REMReminder *)self externalIdentifier];
  v3 = [REMExternalSyncMetadataUtils decodeExternalIdentifierForMarkedForDeletionObject:v2];

  return v3;
}

- (BOOL)shouldUseExternalIdentifierAsDeletionKey
{
  v3 = [(REMReminder *)self account];

  if (!v3)
  {
    [(REMReminder *)self shouldUseExternalIdentifierAsDeletionKey];
  }

  v4 = [(REMReminder *)self account];
  v5 = +[REMExternalSyncMetadataUtils shouldUseExternalIdentifierAsDeletionKeyWithAccountType:](REMExternalSyncMetadataUtils, "shouldUseExternalIdentifierAsDeletionKeyWithAccountType:", [v4 type]);

  return v5;
}

void __87__REMReminder_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_fetchByObjectIDsBlock__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  v0 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_4_3(v1 v2)];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __105__REMReminder_REMDAChangeTrackingHelper_PrivateAdditions__rem_DA_deletedKeyFromConcealedModelObjectBlock__block_invoke_cold_1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = +[REMLog changeTracking];
  if (OUTLINED_FUNCTION_7_0(v3))
  {
    v5 = [a1 objectID];
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_2();
    _os_log_fault_impl(v6, v7, v8, v9, v10, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)timeZone
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [a1 dueDateComponents];
  v5 = [v4 timeZone];
  v6 = [a1 storage];
  v7 = [v6 timeZone];
  v9 = 138412546;
  v10 = v5;
  v11 = 2112;
  v12 = v7;
  _os_log_fault_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_FAULT, "Found internal inconsistency between reminder.storage.timeZone vs reminder.storage.dueDateComponents.timeZone {dueDateComponents.timeZone: %@, storage.timeZone: %@}.", &v9, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)allDay
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 dueDateComponents];
  OUTLINED_FUNCTION_0_8(&dword_19A0DB000, v2, v3, "Found internal inconsistency between reminder.storage.allDay vs reminder.storage.dueDateComponents {dueDateComponents: %@}.", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)shouldUseExternalIdentifierAsDeletionKey
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = +[REMLogStore read];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v4 = [a1 objectID];
    OUTLINED_FUNCTION_0_8(&dword_19A0DB000, v5, v6, "rem_log_fault_if (self.account == nil) -- REMReminder.account is nil for -shouldUseExternalIdentifierAsDeletionKey {reminderID: %{public}@}", v7, v8, v9, v10, 2u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

@end