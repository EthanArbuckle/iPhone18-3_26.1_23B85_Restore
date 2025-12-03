@interface STFamily
- (STFamily)initWithFamilyCircle:(id)circle;
- (STFamily)initWithMembers:(id)members;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
@end

@implementation STFamily

- (STFamily)initWithFamilyCircle:(id)circle
{
  v35 = *MEMORY[0x1E69E9840];
  circleCopy = circle;
  v33.receiver = self;
  v33.super_class = STFamily;
  v23 = [(STFamily *)&v33 init];
  if (v23)
  {
    v26 = objc_opt_new();
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v22 = circleCopy;
    obj = [circleCopy members];
    v27 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v27)
    {
      v25 = *v30;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v30 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v29 + 1) + 8 * i);
          v7 = @"Child";
          if ([v6 memberType] != 2)
          {
            v7 = @"Teen";
            if ([v6 memberType] != 1)
            {
              if ([v6 memberType])
              {
                v7 = @"Unknown";
              }

              else
              {
                v7 = @"Adult";
              }
            }
          }

          v28 = [STFamilyMember alloc];
          dsid = [v6 dsid];
          altDSID = [v6 altDSID];
          appleID = [v6 appleID];
          firstName = [v6 firstName];
          lastName = [v6 lastName];
          isMe = [v6 isMe];
          isParent = [v6 isParent];
          BYTE2(v21) = [v6 isOrganizer];
          BYTE1(v21) = isParent;
          LOBYTE(v21) = isMe;
          v15 = [STFamilyMember initWithDSID:v28 altDSID:"initWithDSID:altDSID:appleID:memberType:firstName:lastName:isMe:isParent:isOrganizer:" appleID:dsid memberType:altDSID firstName:appleID lastName:v7 isMe:firstName isParent:lastName isOrganizer:v21];

          if ([v6 isMe])
          {
            objc_storeStrong(&v23->_me, v15);
          }

          [v26 addObject:v15];
        }

        v27 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v27);
    }

    dataSource = v23->_dataSource;
    v23->_dataSource = @"familyCircle";

    v17 = [v26 copy];
    members = v23->_members;
    v23->_members = v17;

    circleCopy = v22;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v23;
}

- (STFamily)initWithMembers:(id)members
{
  membersCopy = members;
  v13.receiver = self;
  v13.super_class = STFamily;
  v6 = [(STFamily *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_members, members);
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == YES", @"isMe"];
    v9 = [membersCopy filteredArrayUsingPredicate:v8];
    firstObject = [v9 firstObject];
    me = v7->_me;
    v7->_me = firstObject;
  }

  return v7;
}

- (id)dictionaryRepresentation
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(STFamily *)self members];
  v4 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:8];
        dSID = [v8 DSID];
        [v9 setObject:dSID forKeyedSubscript:@"dsid"];

        appleID = [v8 appleID];
        [v9 setObject:appleID forKeyedSubscript:@"appleID"];

        memberType = [v8 memberType];
        [v9 setObject:memberType forKeyedSubscript:@"memberType"];

        firstName = [v8 firstName];
        [v9 setObject:firstName forKeyedSubscript:@"firstName"];

        lastName = [v8 lastName];
        [v9 setObject:lastName forKeyedSubscript:@"lastName"];

        v15 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "isMe")}];
        [v9 setObject:v15 forKeyedSubscript:@"isMe"];

        v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "isParent")}];
        [v9 setObject:v16 forKeyedSubscript:@"isParent"];

        v17 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "isOrganizer")}];
        [v9 setObject:v17 forKeyedSubscript:@"isOrganizer"];

        v18 = [v9 copy];
        [v3 addObject:v18];
      }

      v5 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v5);
  }

  v29[0] = @"dataSource";
  dataSource = [(STFamily *)self dataSource];
  v29[1] = @"members";
  v30[0] = dataSource;
  v20 = [v3 copy];
  v30[1] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(NSArray *)self->_members copy];
  v6 = [v4 initWithMembers:v5];

  return v6;
}

@end