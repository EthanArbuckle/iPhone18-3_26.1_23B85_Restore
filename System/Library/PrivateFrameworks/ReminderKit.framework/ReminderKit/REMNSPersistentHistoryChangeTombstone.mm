@interface REMNSPersistentHistoryChangeTombstone
- (BOOL)isEqual:(id)equal;
- (NSUUID)uuidForChangeTracking;
- (REMNSPersistentHistoryChangeTombstone)initWithCoder:(id)coder;
- (REMNSPersistentHistoryChangeTombstone)initWithDictionary:(id)dictionary;
- (id)assignmentOwningReminderIdentifier;
- (id)daIsEventOnlyContainer;
- (id)dueDateDeltaAlertReminderIdentifier;
- (id)externalIdentifier;
- (id)hashtagName;
- (id)hashtagReminderIdentifier;
- (id)objectIdentifier;
- (id)remObjectIdentifier;
- (id)shareeAddress;
- (id)shareeDisplayName;
- (id)shareeOwningListIdentifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMNSPersistentHistoryChangeTombstone

- (REMNSPersistentHistoryChangeTombstone)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v12.receiver = self;
    v12.super_class = REMNSPersistentHistoryChangeTombstone;
    v5 = [(REMNSPersistentHistoryChangeTombstone *)&v12 init];
    if (v5)
    {
      v6 = [dictionaryCopy mutableCopy];
      v7 = [(NSDictionary *)v6 objectForKeyedSubscript:@"externalIdentifier"];
      if (v7)
      {
        v8 = [REMExternalSyncMetadataUtils decodeExternalIdentifierForMarkedForDeletionObject:v7];
        [(NSDictionary *)v6 setObject:v8 forKeyedSubscript:@"externalIdentifier"];
      }

      persistentHistoryChangeTombstone = v5->_persistentHistoryChangeTombstone;
      v5->_persistentHistoryChangeTombstone = v6;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)objectIdentifier
{
  remObjectIdentifier = [(REMNSPersistentHistoryChangeTombstone *)self remObjectIdentifier];
  if (!remObjectIdentifier)
  {
    remObjectIdentifier = [(REMNSPersistentHistoryChangeTombstone *)self uuidForChangeTracking];
  }

  return remObjectIdentifier;
}

- (id)remObjectIdentifier
{
  persistentHistoryChangeTombstone = [(REMNSPersistentHistoryChangeTombstone *)self persistentHistoryChangeTombstone];
  v3 = [persistentHistoryChangeTombstone objectForKey:@"identifier"];

  return v3;
}

- (id)externalIdentifier
{
  persistentHistoryChangeTombstone = [(REMNSPersistentHistoryChangeTombstone *)self persistentHistoryChangeTombstone];
  v3 = [persistentHistoryChangeTombstone objectForKey:@"externalIdentifier"];

  return v3;
}

- (id)daIsEventOnlyContainer
{
  persistentHistoryChangeTombstone = [(REMNSPersistentHistoryChangeTombstone *)self persistentHistoryChangeTombstone];
  v3 = [persistentHistoryChangeTombstone objectForKey:@"daIsEventOnlyContainer"];

  return v3;
}

- (id)shareeOwningListIdentifier
{
  persistentHistoryChangeTombstone = [(REMNSPersistentHistoryChangeTombstone *)self persistentHistoryChangeTombstone];
  v3 = [persistentHistoryChangeTombstone objectForKey:@"owningListIdentifier"];

  return v3;
}

- (id)shareeDisplayName
{
  persistentHistoryChangeTombstone = [(REMNSPersistentHistoryChangeTombstone *)self persistentHistoryChangeTombstone];
  v3 = [persistentHistoryChangeTombstone objectForKey:@"displayName"];

  return v3;
}

- (id)shareeAddress
{
  persistentHistoryChangeTombstone = [(REMNSPersistentHistoryChangeTombstone *)self persistentHistoryChangeTombstone];
  v3 = [persistentHistoryChangeTombstone objectForKey:@"address"];

  return v3;
}

- (id)assignmentOwningReminderIdentifier
{
  persistentHistoryChangeTombstone = [(REMNSPersistentHistoryChangeTombstone *)self persistentHistoryChangeTombstone];
  v3 = [persistentHistoryChangeTombstone objectForKey:@"owningReminderIdentifier"];

  return v3;
}

- (id)hashtagName
{
  persistentHistoryChangeTombstone = [(REMNSPersistentHistoryChangeTombstone *)self persistentHistoryChangeTombstone];
  v3 = [persistentHistoryChangeTombstone objectForKey:@"name"];

  return v3;
}

- (id)hashtagReminderIdentifier
{
  persistentHistoryChangeTombstone = [(REMNSPersistentHistoryChangeTombstone *)self persistentHistoryChangeTombstone];
  v3 = [persistentHistoryChangeTombstone objectForKey:@"reminderIdentifier"];

  return v3;
}

- (NSUUID)uuidForChangeTracking
{
  persistentHistoryChangeTombstone = [(REMNSPersistentHistoryChangeTombstone *)self persistentHistoryChangeTombstone];
  v3 = [persistentHistoryChangeTombstone objectForKey:@"uuidForChangeTracking"];

  return v3;
}

- (id)dueDateDeltaAlertReminderIdentifier
{
  persistentHistoryChangeTombstone = [(REMNSPersistentHistoryChangeTombstone *)self persistentHistoryChangeTombstone];
  v3 = [persistentHistoryChangeTombstone objectForKey:@"reminderIdentifier"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      persistentHistoryChangeTombstone = [(REMNSPersistentHistoryChangeTombstone *)self persistentHistoryChangeTombstone];
      persistentHistoryChangeTombstone2 = [(REMNSPersistentHistoryChangeTombstone *)v6 persistentHistoryChangeTombstone];
      if (persistentHistoryChangeTombstone == persistentHistoryChangeTombstone2)
      {
        v11 = 1;
      }

      else
      {
        persistentHistoryChangeTombstone3 = [(REMNSPersistentHistoryChangeTombstone *)self persistentHistoryChangeTombstone];
        persistentHistoryChangeTombstone4 = [(REMNSPersistentHistoryChangeTombstone *)v6 persistentHistoryChangeTombstone];
        v11 = [persistentHistoryChangeTombstone3 isEqual:persistentHistoryChangeTombstone4];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  remObjectIdentifier = [(REMNSPersistentHistoryChangeTombstone *)self remObjectIdentifier];
  [coderCopy encodeObject:remObjectIdentifier forKey:@"remObjectIdentifier"];

  externalIdentifier = [(REMNSPersistentHistoryChangeTombstone *)self externalIdentifier];
  [coderCopy encodeObject:externalIdentifier forKey:@"externalIdentifier"];

  daIsEventOnlyContainer = [(REMNSPersistentHistoryChangeTombstone *)self daIsEventOnlyContainer];
  [coderCopy encodeObject:daIsEventOnlyContainer forKey:@"daIsEventOnlyContainer"];

  shareeOwningListIdentifier = [(REMNSPersistentHistoryChangeTombstone *)self shareeOwningListIdentifier];
  [coderCopy encodeObject:shareeOwningListIdentifier forKey:@"shareeOwningListIdentifier"];

  shareeDisplayName = [(REMNSPersistentHistoryChangeTombstone *)self shareeDisplayName];
  [coderCopy encodeObject:shareeDisplayName forKey:@"shareeDisplayName"];

  shareeAddress = [(REMNSPersistentHistoryChangeTombstone *)self shareeAddress];
  [coderCopy encodeObject:shareeAddress forKey:@"shareeAddress"];

  assignmentOwningReminderIdentifier = [(REMNSPersistentHistoryChangeTombstone *)self assignmentOwningReminderIdentifier];
  [coderCopy encodeObject:assignmentOwningReminderIdentifier forKey:@"assignmentOwningReminderIdentifier"];

  hashtagName = [(REMNSPersistentHistoryChangeTombstone *)self hashtagName];
  [coderCopy encodeObject:hashtagName forKey:@"hashtagName"];

  hashtagReminderIdentifier = [(REMNSPersistentHistoryChangeTombstone *)self hashtagReminderIdentifier];
  [coderCopy encodeObject:hashtagReminderIdentifier forKey:@"hashtagReminderIdentifier"];

  uuidForChangeTracking = [(REMNSPersistentHistoryChangeTombstone *)self uuidForChangeTracking];
  [coderCopy encodeObject:uuidForChangeTracking forKey:@"uuidForChangeTracking"];

  dueDateDeltaAlertReminderIdentifier = [(REMNSPersistentHistoryChangeTombstone *)self dueDateDeltaAlertReminderIdentifier];
  [coderCopy encodeObject:dueDateDeltaAlertReminderIdentifier forKey:@"dueDateDeltaAlertReminderIdentifier"];
}

- (REMNSPersistentHistoryChangeTombstone)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = REMNSPersistentHistoryChangeTombstone;
  v5 = [(REMNSPersistentHistoryChangeTombstone *)&v24 init];
  if (v5)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remObjectIdentifier"];
    if (v7)
    {
      [dictionary setObject:v7 forKeyedSubscript:@"identifier"];
    }

    v23 = v7;
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalIdentifier"];
    if (v8)
    {
      [dictionary setObject:v8 forKeyedSubscript:@"externalIdentifier"];
    }

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"daIsEventOnlyContainer"];
    if (v9)
    {
      [dictionary setObject:v9 forKeyedSubscript:@"daIsEventOnlyContainer"];
    }

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shareeOwningListIdentifier"];
    if (v10)
    {
      [dictionary setObject:v10 forKeyedSubscript:@"owningListIdentifier"];
    }

    v19 = v10;
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shareeDisplayName"];
    if (v11)
    {
      [dictionary setObject:v11 forKeyedSubscript:{@"displayName", v19}];
    }

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shareeAddress"];
    if (v12)
    {
      [dictionary setObject:v12 forKeyedSubscript:@"address"];
    }

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assignmentOwningReminderIdentifier"];
    if (v13)
    {
      [dictionary setObject:v13 forKeyedSubscript:@"owningReminderIdentifier"];
    }

    v22 = v8;
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hashtagName"];
    if (v14)
    {
      [dictionary setObject:v14 forKeyedSubscript:@"name"];
    }

    v21 = v9;
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hashtagReminderIdentifier"];
    if (v15)
    {
      [dictionary setObject:v15 forKeyedSubscript:@"reminderIdentifier"];
    }

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuidForChangeTracking"];
    if (v16)
    {
      [dictionary setObject:v16 forKeyedSubscript:@"uuidForChangeTracking"];
    }

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dueDateDeltaAlertReminderIdentifier"];
    if (v17)
    {
      [dictionary setObject:v17 forKeyedSubscript:@"reminderIdentifier"];
    }

    if (![dictionary count])
    {

      dictionary = 0;
    }

    v5 = [(REMNSPersistentHistoryChangeTombstone *)v5 initWithDictionary:dictionary];
  }

  return v5;
}

@end