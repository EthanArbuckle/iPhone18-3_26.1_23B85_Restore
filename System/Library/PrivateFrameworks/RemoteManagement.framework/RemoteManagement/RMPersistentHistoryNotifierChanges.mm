@interface RMPersistentHistoryNotifierChanges
- (NSSet)deletedObjectIDs;
- (RMPersistentHistoryNotifierChanges)init;
- (void)_updatePropertiesWithChange:(id)change;
- (void)updateWithChange:(id)change;
@end

@implementation RMPersistentHistoryNotifierChanges

- (NSSet)deletedObjectIDs
{
  allKeys = [(NSMutableDictionary *)self->_tombstoneByObjectID allKeys];
  v3 = [NSSet setWithArray:allKeys];

  return v3;
}

- (RMPersistentHistoryNotifierChanges)init
{
  v12.receiver = self;
  v12.super_class = RMPersistentHistoryNotifierChanges;
  v2 = [(RMPersistentHistoryNotifierChanges *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    insertedObjectIDs = v2->_insertedObjectIDs;
    v2->_insertedObjectIDs = v3;

    v5 = objc_opt_new();
    updatedObjectIDs = v2->_updatedObjectIDs;
    v2->_updatedObjectIDs = v5;

    v7 = objc_opt_new();
    updatedPropertiesByObjectID = v2->_updatedPropertiesByObjectID;
    v2->_updatedPropertiesByObjectID = v7;

    v9 = objc_opt_new();
    tombstoneByObjectID = v2->_tombstoneByObjectID;
    v2->_tombstoneByObjectID = v9;
  }

  return v2;
}

- (void)updateWithChange:(id)change
{
  changeCopy = change;
  changedObjectID = [changeCopy changedObjectID];
  changeType = [changeCopy changeType];
  if (changeType == 2)
  {
    tombstone = [changeCopy tombstone];
    v7 = tombstone;
    if (tombstone)
    {
      v8 = tombstone;
    }

    else
    {
      v8 = &__NSDictionary0__struct;
    }

    [(NSMutableDictionary *)self->_tombstoneByObjectID setObject:v8 forKeyedSubscript:changedObjectID];
  }

  else if (changeType == 1)
  {
    [(NSMutableSet *)self->_updatedObjectIDs addObject:changedObjectID];
    [(RMPersistentHistoryNotifierChanges *)self _updatePropertiesWithChange:changeCopy];
  }

  else if (!changeType)
  {
    [(NSMutableSet *)self->_insertedObjectIDs addObject:changedObjectID];
  }
}

- (void)_updatePropertiesWithChange:(id)change
{
  changeCopy = change;
  updatedProperties = [changeCopy updatedProperties];
  if ([updatedProperties count])
  {
    changedObjectID = [changeCopy changedObjectID];
    v6 = self->_updatedPropertiesByObjectID;
    v7 = [(NSMutableDictionary *)v6 objectForKeyedSubscript:changedObjectID];
    if (!v7)
    {
      v7 = objc_opt_new();
      [(NSMutableDictionary *)v6 setObject:v7 forKeyedSubscript:changedObjectID];
    }

    v8 = [updatedProperties valueForKey:@"name"];
    [v7 unionSet:v8];
  }
}

@end