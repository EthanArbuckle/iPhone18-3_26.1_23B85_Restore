@interface REMMemberships
- (BOOL)isEqual:(id)a3;
- (REMMemberships)initWithCoder:(id)a3;
- (REMMemberships)initWithMembershipByMemberIdentifier:(id)a3;
- (REMMemberships)initWithMemberships:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)excludingObsoleteAndModifiedEarlierThan:(id)a3;
- (id)groupIdentifierOfMemberWithIdentifier:(id)a3;
- (id)mergingWith:(id)a3 mergePolicy:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMMemberships

- (REMMemberships)initWithMembershipByMemberIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMMemberships;
  v6 = [(REMMemberships *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_membershipByMemberIdentifier, a3);
  }

  return v7;
}

- (REMMemberships)initWithMemberships:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 memberIdentifier];
        [v5 setObject:v11 forKeyedSubscript:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = [(REMMemberships *)self initWithMembershipByMemberIdentifier:v5];
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)groupIdentifierOfMemberWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(REMMemberships *)self membershipByMemberIdentifier];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 groupIdentifier];

  return v7;
}

- (id)mergingWith:(id)a3 mergePolicy:(unint64_t)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v31 = a3;
  v6 = objc_alloc(MEMORY[0x1E695DF90]);
  v34 = self;
  v7 = [(REMMemberships *)self membershipByMemberIdentifier];
  v33 = [v6 initWithDictionary:v7];

  if (a4 == 1)
  {
    v27 = [v31 membershipByMemberIdentifier];
    [v33 addEntriesFromDictionary:v27];

    v8 = v31;
  }

  else
  {
    v8 = v31;
    if (!a4)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      obj = [v31 membershipByMemberIdentifier];
      v9 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v36;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v36 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v35 + 1) + 8 * i);
            v14 = [v8 membershipByMemberIdentifier];
            v15 = [v14 objectForKeyedSubscript:v13];

            v16 = [(REMMemberships *)v34 membershipByMemberIdentifier];
            v17 = [v16 objectForKeyedSubscript:v13];

            if (!v17)
            {
              goto LABEL_14;
            }

            v18 = [v17 modifiedOn];
            v19 = [v15 modifiedOn];
            v20 = [v18 compare:v19];

            if (v20 == -1)
            {
              goto LABEL_14;
            }

            if (!v20)
            {
              v21 = [v17 groupIdentifier];
              if (!v21)
              {
                goto LABEL_14;
              }

              v22 = v21;
              v23 = [v15 groupIdentifier];
              v24 = [v17 groupIdentifier];
              v25 = [v23 compare:v24];

              v26 = v25 == 1;
              v8 = v31;
              if (v26)
              {
LABEL_14:
                [v33 setObject:v15 forKeyedSubscript:v13];
              }
            }
          }

          v10 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
        }

        while (v10);
      }
    }
  }

  v28 = [objc_alloc(objc_opt_class()) initWithMembershipByMemberIdentifier:v33];

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

- (id)excludingObsoleteAndModifiedEarlierThan:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E695DF70]);
  v6 = [(REMMemberships *)self membershipByMemberIdentifier];
  v7 = [v5 initWithCapacity:{objc_msgSend(v6, "count")}];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [(REMMemberships *)self membershipByMemberIdentifier];
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [(REMMemberships *)self membershipByMemberIdentifier];
        v15 = [v14 objectForKeyedSubscript:v13];

        if (v15)
        {
          if (![v15 isObsolete] || (objc_msgSend(v15, "modifiedOn"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "compare:", v4), v16, v17 != -1))
          {
            [v7 addObject:v15];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v18 = [objc_alloc(objc_opt_class()) initWithMemberships:v7];
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMMemberships *)self membershipByMemberIdentifier];
  v6 = [v3 stringWithFormat:@"<%@: %p membershipByMemberIdentifier: %@>", v4, self, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(REMMemberships *)self membershipByMemberIdentifier];
    v6 = [v4 membershipByMemberIdentifier];
    if (v5 == v6)
    {
      v9 = 1;
    }

    else
    {
      v7 = [(REMMemberships *)self membershipByMemberIdentifier];
      v8 = [v4 membershipByMemberIdentifier];
      v9 = [v7 isEqual:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(REMMemberships *)self membershipByMemberIdentifier];
  v6 = [v4 initWithMembershipByMemberIdentifier:v5];

  return v6;
}

- (REMMemberships)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:@"membershipByMemberIdentifier"];

  v10 = [(REMMemberships *)self initWithMembershipByMemberIdentifier:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMMemberships *)self membershipByMemberIdentifier];
  [v4 encodeObject:v5 forKey:@"membershipByMemberIdentifier"];
}

@end