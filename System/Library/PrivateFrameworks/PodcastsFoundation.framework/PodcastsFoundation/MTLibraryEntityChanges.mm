@interface MTLibraryEntityChanges
- (BOOL)hasChanges;
- (BOOL)hasDeletes;
- (BOOL)hasInserts;
- (BOOL)hasUpdates;
- (MTLibraryEntityChanges)initWithEntityName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)insertedAndUpdatedObjectIDs;
- (void)add:(id)add changeType:(int)type;
- (void)combineChanges:(id)changes;
@end

@implementation MTLibraryEntityChanges

- (BOOL)hasInserts
{
  insertedObjectIDs = [(MTLibraryEntityChanges *)self insertedObjectIDs];
  v3 = [insertedObjectIDs count] != 0;

  return v3;
}

- (BOOL)hasChanges
{
  if ([(MTLibraryEntityChanges *)self hasInserts]|| [(MTLibraryEntityChanges *)self hasDeletes])
  {
    return 1;
  }

  return [(MTLibraryEntityChanges *)self hasUpdates];
}

- (BOOL)hasDeletes
{
  deletedObjectIDs = [(MTLibraryEntityChanges *)self deletedObjectIDs];
  v3 = [deletedObjectIDs count] != 0;

  return v3;
}

- (BOOL)hasUpdates
{
  updatedObjectIDs = [(MTLibraryEntityChanges *)self updatedObjectIDs];
  v3 = [updatedObjectIDs count] != 0;

  return v3;
}

- (MTLibraryEntityChanges)initWithEntityName:(id)name
{
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = MTLibraryEntityChanges;
  v6 = [(MTLibraryEntityChanges *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entityName, name);
    v8 = [MEMORY[0x1E695DFA8] set];
    insertedObjectIDs = v7->_insertedObjectIDs;
    v7->_insertedObjectIDs = v8;

    v10 = [MEMORY[0x1E695DFA8] set];
    deletedObjectIDs = v7->_deletedObjectIDs;
    v7->_deletedObjectIDs = v10;

    v12 = [MEMORY[0x1E695DFA8] set];
    updatedObjectIDs = v7->_updatedObjectIDs;
    v7->_updatedObjectIDs = v12;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  entityName = [(MTLibraryEntityChanges *)self entityName];
  v7 = [v5 initWithEntityName:entityName];

  insertedObjectIDs = [(MTLibraryEntityChanges *)self insertedObjectIDs];
  v9 = [insertedObjectIDs mutableCopyWithZone:zone];
  [v7 setInsertedObjectIDs:v9];

  deletedObjectIDs = [(MTLibraryEntityChanges *)self deletedObjectIDs];
  v11 = [deletedObjectIDs mutableCopyWithZone:zone];
  [v7 setDeletedObjectIDs:v11];

  updatedObjectIDs = [(MTLibraryEntityChanges *)self updatedObjectIDs];
  v13 = [updatedObjectIDs mutableCopyWithZone:zone];
  [v7 setUpdatedObjectIDs:v13];

  return v7;
}

- (id)insertedAndUpdatedObjectIDs
{
  v3 = objc_opt_new();
  insertedObjectIDs = [(MTLibraryEntityChanges *)self insertedObjectIDs];
  [v3 unionSet:insertedObjectIDs];

  updatedObjectIDs = [(MTLibraryEntityChanges *)self updatedObjectIDs];
  [v3 unionSet:updatedObjectIDs];

  return v3;
}

- (void)combineChanges:(id)changes
{
  insertedObjectIDs = self->_insertedObjectIDs;
  changesCopy = changes;
  insertedObjectIDs = [changesCopy insertedObjectIDs];
  [(NSMutableSet *)insertedObjectIDs unionSet:insertedObjectIDs];

  deletedObjectIDs = self->_deletedObjectIDs;
  deletedObjectIDs = [changesCopy deletedObjectIDs];
  [(NSMutableSet *)deletedObjectIDs unionSet:deletedObjectIDs];

  updatedObjectIDs = self->_updatedObjectIDs;
  updatedObjectIDs = [changesCopy updatedObjectIDs];

  [(NSMutableSet *)updatedObjectIDs unionSet:updatedObjectIDs];
}

- (void)add:(id)add changeType:(int)type
{
  addCopy = add;
  v7 = addCopy;
  if (type <= 2)
  {
    v8 = addCopy;
    addCopy = [*(&self->_insertedObjectIDs + (8 * type)) addObject:addCopy];
    v7 = v8;
  }

  MEMORY[0x1EEE66BB8](addCopy, v7);
}

@end