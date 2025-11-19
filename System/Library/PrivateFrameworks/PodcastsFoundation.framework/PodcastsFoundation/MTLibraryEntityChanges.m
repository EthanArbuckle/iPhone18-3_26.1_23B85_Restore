@interface MTLibraryEntityChanges
- (BOOL)hasChanges;
- (BOOL)hasDeletes;
- (BOOL)hasInserts;
- (BOOL)hasUpdates;
- (MTLibraryEntityChanges)initWithEntityName:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)insertedAndUpdatedObjectIDs;
- (void)add:(id)a3 changeType:(int)a4;
- (void)combineChanges:(id)a3;
@end

@implementation MTLibraryEntityChanges

- (BOOL)hasInserts
{
  v2 = [(MTLibraryEntityChanges *)self insertedObjectIDs];
  v3 = [v2 count] != 0;

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
  v2 = [(MTLibraryEntityChanges *)self deletedObjectIDs];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)hasUpdates
{
  v2 = [(MTLibraryEntityChanges *)self updatedObjectIDs];
  v3 = [v2 count] != 0;

  return v3;
}

- (MTLibraryEntityChanges)initWithEntityName:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = MTLibraryEntityChanges;
  v6 = [(MTLibraryEntityChanges *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entityName, a3);
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(MTLibraryEntityChanges *)self entityName];
  v7 = [v5 initWithEntityName:v6];

  v8 = [(MTLibraryEntityChanges *)self insertedObjectIDs];
  v9 = [v8 mutableCopyWithZone:a3];
  [v7 setInsertedObjectIDs:v9];

  v10 = [(MTLibraryEntityChanges *)self deletedObjectIDs];
  v11 = [v10 mutableCopyWithZone:a3];
  [v7 setDeletedObjectIDs:v11];

  v12 = [(MTLibraryEntityChanges *)self updatedObjectIDs];
  v13 = [v12 mutableCopyWithZone:a3];
  [v7 setUpdatedObjectIDs:v13];

  return v7;
}

- (id)insertedAndUpdatedObjectIDs
{
  v3 = objc_opt_new();
  v4 = [(MTLibraryEntityChanges *)self insertedObjectIDs];
  [v3 unionSet:v4];

  v5 = [(MTLibraryEntityChanges *)self updatedObjectIDs];
  [v3 unionSet:v5];

  return v3;
}

- (void)combineChanges:(id)a3
{
  insertedObjectIDs = self->_insertedObjectIDs;
  v5 = a3;
  v6 = [v5 insertedObjectIDs];
  [(NSMutableSet *)insertedObjectIDs unionSet:v6];

  deletedObjectIDs = self->_deletedObjectIDs;
  v8 = [v5 deletedObjectIDs];
  [(NSMutableSet *)deletedObjectIDs unionSet:v8];

  updatedObjectIDs = self->_updatedObjectIDs;
  v10 = [v5 updatedObjectIDs];

  [(NSMutableSet *)updatedObjectIDs unionSet:v10];
}

- (void)add:(id)a3 changeType:(int)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 <= 2)
  {
    v8 = v6;
    v6 = [*(&self->_insertedObjectIDs + (8 * a4)) addObject:v6];
    v7 = v8;
  }

  MEMORY[0x1EEE66BB8](v6, v7);
}

@end