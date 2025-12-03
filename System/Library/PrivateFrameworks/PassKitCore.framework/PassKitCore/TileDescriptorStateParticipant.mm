@interface TileDescriptorStateParticipant
+ (BOOL)removeParticipantsForPassUniqueID:(id)d inDatabase:(id)database;
+ (BOOL)setPassTileDescriptorStateParticipantIDs:(id)ds forPassUniqueID:(id)d inDatabase:(id)database;
+ (id)passUniqueIdentifiersForTileDescriptorStateParticipantWithIdentifier:(id)identifier inDatabase:(id)database;
+ (id)passUniqueIdentifiersInDatabase:(id)database;
+ (void)addJoinClausesForProperty:(id)property toJoins:(id)joins;
- (id)_initWitParticipantID:(id)d forPass:(id)pass inDatabase:(id)database;
@end

@implementation TileDescriptorStateParticipant

+ (void)addJoinClausesForProperty:(id)property toJoins:(id)joins
{
  joinsCopy = joins;
  if ([property isEqualToString:@"pass.unique_id"])
  {
    [joinsCopy addObject:@"JOIN pass ON pass_tile_descriptor_state_participant.pass_pid = pass.pid"];
  }
}

- (id)_initWitParticipantID:(id)d forPass:(id)pass inDatabase:(id)database
{
  databaseCopy = database;
  passCopy = pass;
  dCopy = d;
  v11 = objc_alloc_init(NSMutableDictionary);
  [v11 setObjectOrNull:dCopy forKey:@"participant_identifier"];

  [v11 setEntityPIDOrNull:passCopy forKey:@"pass_pid"];
  v12 = [(SQLiteEntity *)self initWithPropertyValues:v11 inDatabase:databaseCopy];

  return v12;
}

+ (id)passUniqueIdentifiersInDatabase:(id)database
{
  databaseCopy = database;
  v5 = objc_alloc_init(NSMutableSet);
  v6 = [self queryWithDatabase:databaseCopy predicate:0];

  v13 = @"pass.unique_id";
  v7 = [NSArray arrayWithObjects:&v13 count:1];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100078560;
  v11[3] = &unk_1008409E0;
  v8 = v5;
  v12 = v8;
  [v6 enumerateProperties:v7 usingBlock:v11];

  if ([v8 count])
  {
    v9 = [v8 copy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)passUniqueIdentifiersForTileDescriptorStateParticipantWithIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  identifierCopy = identifier;
  v8 = objc_alloc_init(NSMutableSet);
  v9 = [self _predicateForParticipantID:identifierCopy];

  v10 = [self queryWithDatabase:databaseCopy predicate:v9];

  v17 = @"pass.unique_id";
  v11 = [NSArray arrayWithObjects:&v17 count:1];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100078700;
  v15[3] = &unk_1008409E0;
  v12 = v8;
  v16 = v12;
  [v10 enumerateProperties:v11 usingBlock:v15];

  if ([v12 count])
  {
    v13 = [v12 copy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (BOOL)setPassTileDescriptorStateParticipantIDs:(id)ds forPassUniqueID:(id)d inDatabase:(id)database
{
  dsCopy = ds;
  dCopy = d;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100078844;
  v14[3] = &unk_10083C290;
  databaseCopy = database;
  v15 = databaseCopy;
  v11 = dCopy;
  v16 = v11;
  selfCopy = self;
  v12 = dsCopy;
  v17 = v12;
  v18 = &v20;
  sub_1005D4424(databaseCopy, v14);
  LOBYTE(self) = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return self;
}

+ (BOOL)removeParticipantsForPassUniqueID:(id)d inDatabase:(id)database
{
  databaseCopy = database;
  v7 = [self _predicateForPassUniqueID:d];
  v8 = [self queryWithDatabase:databaseCopy predicate:v7];

  LOBYTE(databaseCopy) = [v8 deleteAllEntities];
  return databaseCopy;
}

@end