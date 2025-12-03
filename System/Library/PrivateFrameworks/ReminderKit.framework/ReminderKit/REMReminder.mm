@interface REMReminder
+ (id)fetchRequestForRemindersListID:(id)d;
+ (id)fetchRequestForRemindersListID:(id)d withSortDescriptors:(id)descriptors;
+ (id)fetchRequestForScheduledRemindersWithDueDateOnOrAfter:(id)after;
+ (id)fetchRequestWithPredicateDescriptor:(id)descriptor sortDescriptors:(id)descriptors;
- (BOOL)allDay;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSubtask;
- (BOOL)isUnsupported;
- (BOOL)respondsToSelector:(SEL)selector;
- (BOOL)shouldUseExternalIdentifierAsDeletionKey;
- (NSAttributedString)notes;
- (NSAttributedString)title;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)externalIdentifierForMarkedForDeletionObject;
- (NSString)notesAsString;
- (NSString)timeZone;
- (NSString)titleAsString;
- (REMReminder)initWithStore:(id)store account:(id)account storage:(id)storage;
- (REMReminder)initWithStore:(id)store list:(id)list storage:(id)storage;
- (REMReminderAssignmentContext)assignmentContext;
- (REMReminderAttachmentContext)attachmentContext;
- (REMReminderDueDateDeltaAlertContext)dueDateDeltaAlertContext;
- (REMReminderFlaggedContext)flaggedContext;
- (REMReminderHashtagContext)hashtagContext;
- (REMReminderSubtaskContext)subtaskContext;
- (id)datesDebugDescriptionInTimeZone:(id)zone;
- (id)optionalObjectID;
- (id)valueForUndefinedKey:(id)key;
- (unint64_t)hash;
- (void)allDay;
- (void)setValue:(id)value forUndefinedKey:(id)key;
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

+ (id)fetchRequestWithPredicateDescriptor:(id)descriptor sortDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  descriptorCopy = descriptor;
  v7 = [[REMReminderFetchExecutor alloc] initWithPredicateDescriptor:descriptorCopy sortDescriptors:descriptorsCopy options:0];

  v8 = [[REMFetchRequest alloc] initWithFetchExecutor:v7];

  return v8;
}

+ (id)fetchRequestForRemindersListID:(id)d
{
  v4 = MEMORY[0x1E695DEC8];
  dCopy = d;
  v6 = [REMReminderSortDescriptor sortDescriptorSortingByCreationDateAscending:1];
  v7 = [v4 arrayWithObject:v6];

  v8 = [self fetchRequestForRemindersListID:dCopy withSortDescriptors:v7];

  return v8;
}

+ (id)fetchRequestForRemindersListID:(id)d withSortDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  if (descriptorsCopy)
  {
    v6 = descriptorsCopy;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = descriptorsCopy;
  v8 = [REMReminderPredicateDescriptor predicateDescriptorForRemindersWithListID:d];
  v9 = [[REMReminderFetchExecutor alloc] initWithPredicateDescriptor:v8 sortDescriptors:v6 options:3];
  v10 = [[REMFetchRequest alloc] initWithFetchExecutor:v9];

  return v10;
}

+ (id)fetchRequestForScheduledRemindersWithDueDateOnOrAfter:(id)after
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = [REMReminderPredicateDescriptor predicateDescriptorForRemindersWithDueDateOnOrAfter:after];
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

- (REMReminder)initWithStore:(id)store list:(id)list storage:(id)storage
{
  storeCopy = store;
  listCopy = list;
  storageCopy = storage;
  v17.receiver = self;
  v17.super_class = REMReminder;
  v12 = [(REMReminder *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_store, store);
    account = [listCopy account];
    account = v13->_account;
    v13->_account = account;

    objc_storeStrong(&v13->_list, list);
    objc_storeStrong(&v13->_storage, storage);
    -[REMReminderStorage setStoreGenerationIfNeeded:](v13->_storage, "setStoreGenerationIfNeeded:", [storeCopy storeGeneration]);
  }

  return v13;
}

- (REMReminder)initWithStore:(id)store account:(id)account storage:(id)storage
{
  storeCopy = store;
  accountCopy = account;
  storageCopy = storage;
  v15.receiver = self;
  v15.super_class = REMReminder;
  v12 = [(REMReminder *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_store, store);
    if (accountCopy)
    {
      objc_storeStrong(&v13->_account, account);
    }

    objc_storeStrong(&v13->_storage, storage);
    -[REMReminderStorage setStoreGenerationIfNeeded:](v13->_storage, "setStoreGenerationIfNeeded:", [storeCopy storeGeneration]);
  }

  return v13;
}

- (id)optionalObjectID
{
  storage = [(REMReminder *)self storage];
  optionalObjectID = [storage optionalObjectID];

  return optionalObjectID;
}

- (BOOL)isSubtask
{
  parentReminder = [(REMReminder *)self parentReminder];
  v3 = parentReminder != 0;

  return v3;
}

- (REMReminderSubtaskContext)subtaskContext
{
  account = [(REMReminder *)self account];
  capabilities = [account capabilities];
  if ([capabilities supportsSubtasks])
  {
    isSubtask = [(REMReminder *)self isSubtask];

    if (!isSubtask)
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
  account = [(REMReminder *)self account];
  capabilities = [account capabilities];
  supportsAttachments = [capabilities supportsAttachments];

  if (supportsAttachments)
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
  account = [(REMReminder *)self account];
  capabilities = [account capabilities];
  supportsFlagged = [capabilities supportsFlagged];

  if (supportsFlagged)
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
  account = [(REMReminder *)self account];
  capabilities = [account capabilities];
  supportsAssignments = [capabilities supportsAssignments];

  if (supportsAssignments)
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
  account = [(REMReminder *)self account];
  capabilities = [account capabilities];
  supportsHashtags = [capabilities supportsHashtags];

  if (supportsHashtags)
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
  account = [(REMReminder *)self account];
  capabilities = [account capabilities];
  supportsDueDateDeltaAlerts = [capabilities supportsDueDateDeltaAlerts];

  if (supportsDueDateDeltaAlerts)
  {
    v6 = [[REMReminderDueDateDeltaAlertContext alloc] initWithReminder:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      store = [(REMReminder *)v5 store];
      store2 = [(REMReminder *)self store];
      v8 = [store isEqual:store2];

      if (v8)
      {
        list = [(REMReminder *)v5 list];
        list2 = [(REMReminder *)self list];
        v11 = list2;
        if (list == list2)
        {
        }

        else
        {
          list3 = [(REMReminder *)v5 list];
          list4 = [(REMReminder *)self list];
          v14 = [list3 isEqual:list4];

          if (!v14)
          {
            goto LABEL_6;
          }
        }

        storage = [(REMReminder *)v5 storage];
        storage2 = [(REMReminder *)self storage];
        v15 = [storage isEqual:storage2];

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
  storage = [(REMReminder *)self storage];
  v3 = [storage hash];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  storage = [(REMReminder *)self storage];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, storage];

  return v6;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  storage = [(REMReminder *)self storage];
  v6 = [storage debugDescription];
  v7 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, v6];

  return v7;
}

- (id)datesDebugDescriptionInTimeZone:(id)zone
{
  zoneCopy = zone;
  storage = [(REMReminder *)self storage];
  v6 = [storage datesDebugDescriptionInTimeZone:zoneCopy];

  return v6;
}

- (NSAttributedString)title
{
  storage = [(REMReminder *)self storage];
  titleDocument = [storage titleDocument];
  attributedString = [titleDocument attributedString];

  return attributedString;
}

- (NSString)titleAsString
{
  storage = [(REMReminder *)self storage];
  titleAsString = [storage titleAsString];

  return titleAsString;
}

- (NSAttributedString)notes
{
  storage = [(REMReminder *)self storage];
  notesDocument = [storage notesDocument];
  attributedString = [notesDocument attributedString];

  return attributedString;
}

- (NSString)notesAsString
{
  storage = [(REMReminder *)self storage];
  notesAsString = [storage notesAsString];

  return notesAsString;
}

- (NSString)timeZone
{
  dueDateComponents = [(REMReminder *)self dueDateComponents];
  timeZone = [dueDateComponents timeZone];
  name = [timeZone name];

  if (!name)
  {
    dueDateComponents = [(REMReminder *)self storage];
    timeZone2 = [dueDateComponents timeZone];
    if (!timeZone2)
    {
LABEL_10:

      goto LABEL_11;
    }

    timeZone = timeZone2;
  }

  storage = [(REMReminder *)self storage];
  timeZone3 = [storage timeZone];
  v9 = [name isEqual:timeZone3];

  if (!name)
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
    dueDateComponents = +[REMLogStore read];
    if (os_log_type_enabled(dueDateComponents, OS_LOG_TYPE_FAULT))
    {
      [(REMReminder *)self timeZone];
    }

    goto LABEL_10;
  }

LABEL_11:

  return name;
}

- (BOOL)allDay
{
  dueDateComponents = [(REMReminder *)self dueDateComponents];
  rem_isAllDayDateComponents = [dueDateComponents rem_isAllDayDateComponents];

  storage = [(REMReminder *)self storage];
  allDay = [storage allDay];

  if (rem_isAllDayDateComponents != allDay)
  {
    v7 = +[REMLogStore read];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(REMReminder *)self allDay];
    }
  }

  return rem_isAllDayDateComponents;
}

- (id)valueForUndefinedKey:(id)key
{
  keyCopy = key;
  storage = [(REMReminder *)self storage];
  v6 = [storage valueForKey:keyCopy];

  return v6;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  storage = [(REMReminder *)self storage];
  [storage setValue:valueCopy forKey:keyCopy];
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = REMReminder;
  if ([(REMReminder *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    storage = [(REMReminder *)self storage];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (BOOL)isUnsupported
{
  storage = [(REMReminder *)self storage];
  isUnsupported = [storage isUnsupported];

  return isUnsupported;
}

- (NSString)externalIdentifierForMarkedForDeletionObject
{
  externalIdentifier = [(REMReminder *)self externalIdentifier];
  v3 = [REMExternalSyncMetadataUtils decodeExternalIdentifierForMarkedForDeletionObject:externalIdentifier];

  return v3;
}

- (BOOL)shouldUseExternalIdentifierAsDeletionKey
{
  account = [(REMReminder *)self account];

  if (!account)
  {
    [(REMReminder *)self shouldUseExternalIdentifierAsDeletionKey];
  }

  account2 = [(REMReminder *)self account];
  v5 = +[REMExternalSyncMetadataUtils shouldUseExternalIdentifierAsDeletionKeyWithAccountType:](REMExternalSyncMetadataUtils, "shouldUseExternalIdentifierAsDeletionKeyWithAccountType:", [account2 type]);

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
  dueDateComponents = [self dueDateComponents];
  timeZone = [dueDateComponents timeZone];
  storage = [self storage];
  timeZone2 = [storage timeZone];
  v9 = 138412546;
  v10 = timeZone;
  v11 = 2112;
  v12 = timeZone2;
  _os_log_fault_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_FAULT, "Found internal inconsistency between reminder.storage.timeZone vs reminder.storage.dueDateComponents.timeZone {dueDateComponents.timeZone: %@, storage.timeZone: %@}.", &v9, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)allDay
{
  v9 = *MEMORY[0x1E69E9840];
  dueDateComponents = [self dueDateComponents];
  OUTLINED_FUNCTION_0_8(&dword_19A0DB000, v2, v3, "Found internal inconsistency between reminder.storage.allDay vs reminder.storage.dueDateComponents {dueDateComponents: %@}.", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)shouldUseExternalIdentifierAsDeletionKey
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = +[REMLogStore read];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    objectID = [self objectID];
    OUTLINED_FUNCTION_0_8(&dword_19A0DB000, v5, v6, "rem_log_fault_if (self.account == nil) -- REMReminder.account is nil for -shouldUseExternalIdentifierAsDeletionKey {reminderID: %{public}@}", v7, v8, v9, v10, 2u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

@end