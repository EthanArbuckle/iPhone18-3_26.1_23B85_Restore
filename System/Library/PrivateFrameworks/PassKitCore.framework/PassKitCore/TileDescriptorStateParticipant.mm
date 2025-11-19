@interface TileDescriptorStateParticipant
+ (BOOL)removeParticipantsForPassUniqueID:(id)a3 inDatabase:(id)a4;
+ (BOOL)setPassTileDescriptorStateParticipantIDs:(id)a3 forPassUniqueID:(id)a4 inDatabase:(id)a5;
+ (id)passUniqueIdentifiersForTileDescriptorStateParticipantWithIdentifier:(id)a3 inDatabase:(id)a4;
+ (id)passUniqueIdentifiersInDatabase:(id)a3;
+ (void)addJoinClausesForProperty:(id)a3 toJoins:(id)a4;
- (id)_initWitParticipantID:(id)a3 forPass:(id)a4 inDatabase:(id)a5;
@end

@implementation TileDescriptorStateParticipant

+ (void)addJoinClausesForProperty:(id)a3 toJoins:(id)a4
{
  v5 = a4;
  if ([a3 isEqualToString:@"pass.unique_id"])
  {
    [v5 addObject:@"JOIN pass ON pass_tile_descriptor_state_participant.pass_pid = pass.pid"];
  }
}

- (id)_initWitParticipantID:(id)a3 forPass:(id)a4 inDatabase:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(NSMutableDictionary);
  [v11 setObjectOrNull:v10 forKey:@"participant_identifier"];

  [v11 setEntityPIDOrNull:v9 forKey:@"pass_pid"];
  v12 = [(SQLiteEntity *)self initWithPropertyValues:v11 inDatabase:v8];

  return v12;
}

+ (id)passUniqueIdentifiersInDatabase:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableSet);
  v6 = [a1 queryWithDatabase:v4 predicate:0];

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

+ (id)passUniqueIdentifiersForTileDescriptorStateParticipantWithIdentifier:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(NSMutableSet);
  v9 = [a1 _predicateForParticipantID:v7];

  v10 = [a1 queryWithDatabase:v6 predicate:v9];

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

+ (BOOL)setPassTileDescriptorStateParticipantIDs:(id)a3 forPassUniqueID:(id)a4 inDatabase:(id)a5
{
  v8 = a3;
  v9 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100078844;
  v14[3] = &unk_10083C290;
  v10 = a5;
  v15 = v10;
  v11 = v9;
  v16 = v11;
  v19 = a1;
  v12 = v8;
  v17 = v12;
  v18 = &v20;
  sub_1005D4424(v10, v14);
  LOBYTE(a1) = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return a1;
}

+ (BOOL)removeParticipantsForPassUniqueID:(id)a3 inDatabase:(id)a4
{
  v6 = a4;
  v7 = [a1 _predicateForPassUniqueID:a3];
  v8 = [a1 queryWithDatabase:v6 predicate:v7];

  LOBYTE(v6) = [v8 deleteAllEntities];
  return v6;
}

@end