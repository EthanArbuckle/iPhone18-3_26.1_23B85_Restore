@interface STFamily
- (STFamily)initWithFamilyCircle:(id)a3;
- (STFamily)initWithMembers:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
@end

@implementation STFamily

- (STFamily)initWithFamilyCircle:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    v22 = v4;
    obj = [v4 members];
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
          v8 = [v6 dsid];
          v9 = [v6 altDSID];
          v10 = [v6 appleID];
          v11 = [v6 firstName];
          v12 = [v6 lastName];
          v13 = [v6 isMe];
          v14 = [v6 isParent];
          BYTE2(v21) = [v6 isOrganizer];
          BYTE1(v21) = v14;
          LOBYTE(v21) = v13;
          v15 = [STFamilyMember initWithDSID:v28 altDSID:"initWithDSID:altDSID:appleID:memberType:firstName:lastName:isMe:isParent:isOrganizer:" appleID:v8 memberType:v9 firstName:v10 lastName:v7 isMe:v11 isParent:v12 isOrganizer:v21];

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

    v4 = v22;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v23;
}

- (STFamily)initWithMembers:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = STFamily;
  v6 = [(STFamily *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_members, a3);
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == YES", @"isMe"];
    v9 = [v5 filteredArrayUsingPredicate:v8];
    v10 = [v9 firstObject];
    me = v7->_me;
    v7->_me = v10;
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
        v10 = [v8 DSID];
        [v9 setObject:v10 forKeyedSubscript:@"dsid"];

        v11 = [v8 appleID];
        [v9 setObject:v11 forKeyedSubscript:@"appleID"];

        v12 = [v8 memberType];
        [v9 setObject:v12 forKeyedSubscript:@"memberType"];

        v13 = [v8 firstName];
        [v9 setObject:v13 forKeyedSubscript:@"firstName"];

        v14 = [v8 lastName];
        [v9 setObject:v14 forKeyedSubscript:@"lastName"];

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
  v19 = [(STFamily *)self dataSource];
  v29[1] = @"members";
  v30[0] = v19;
  v20 = [v3 copy];
  v30[1] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(NSArray *)self->_members copy];
  v6 = [v4 initWithMembers:v5];

  return v6;
}

@end