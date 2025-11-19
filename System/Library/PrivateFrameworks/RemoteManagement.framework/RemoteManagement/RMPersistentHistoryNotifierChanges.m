@interface RMPersistentHistoryNotifierChanges
- (NSSet)deletedObjectIDs;
- (RMPersistentHistoryNotifierChanges)init;
- (void)_updatePropertiesWithChange:(id)a3;
- (void)updateWithChange:(id)a3;
@end

@implementation RMPersistentHistoryNotifierChanges

- (NSSet)deletedObjectIDs
{
  v2 = [(NSMutableDictionary *)self->_tombstoneByObjectID allKeys];
  v3 = [NSSet setWithArray:v2];

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

- (void)updateWithChange:(id)a3
{
  v9 = a3;
  v4 = [v9 changedObjectID];
  v5 = [v9 changeType];
  if (v5 == 2)
  {
    v6 = [v9 tombstone];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &__NSDictionary0__struct;
    }

    [(NSMutableDictionary *)self->_tombstoneByObjectID setObject:v8 forKeyedSubscript:v4];
  }

  else if (v5 == 1)
  {
    [(NSMutableSet *)self->_updatedObjectIDs addObject:v4];
    [(RMPersistentHistoryNotifierChanges *)self _updatePropertiesWithChange:v9];
  }

  else if (!v5)
  {
    [(NSMutableSet *)self->_insertedObjectIDs addObject:v4];
  }
}

- (void)_updatePropertiesWithChange:(id)a3
{
  v9 = a3;
  v4 = [v9 updatedProperties];
  if ([v4 count])
  {
    v5 = [v9 changedObjectID];
    v6 = self->_updatedPropertiesByObjectID;
    v7 = [(NSMutableDictionary *)v6 objectForKeyedSubscript:v5];
    if (!v7)
    {
      v7 = objc_opt_new();
      [(NSMutableDictionary *)v6 setObject:v7 forKeyedSubscript:v5];
    }

    v8 = [v4 valueForKey:@"name"];
    [v7 unionSet:v8];
  }
}

@end