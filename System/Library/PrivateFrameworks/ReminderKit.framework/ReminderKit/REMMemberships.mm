@interface REMMemberships
- (BOOL)isEqual:(id)equal;
- (REMMemberships)initWithCoder:(id)coder;
- (REMMemberships)initWithMembershipByMemberIdentifier:(id)identifier;
- (REMMemberships)initWithMemberships:(id)memberships;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)excludingObsoleteAndModifiedEarlierThan:(id)than;
- (id)groupIdentifierOfMemberWithIdentifier:(id)identifier;
- (id)mergingWith:(id)with mergePolicy:(unint64_t)policy;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMMemberships

- (REMMemberships)initWithMembershipByMemberIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = REMMemberships;
  v6 = [(REMMemberships *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_membershipByMemberIdentifier, identifier);
  }

  return v7;
}

- (REMMemberships)initWithMemberships:(id)memberships
{
  v21 = *MEMORY[0x1E69E9840];
  membershipsCopy = memberships;
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(membershipsCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = membershipsCopy;
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
        memberIdentifier = [v11 memberIdentifier];
        [v5 setObject:v11 forKeyedSubscript:memberIdentifier];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = [(REMMemberships *)self initWithMembershipByMemberIdentifier:v5];
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)groupIdentifierOfMemberWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  membershipByMemberIdentifier = [(REMMemberships *)self membershipByMemberIdentifier];
  v6 = [membershipByMemberIdentifier objectForKeyedSubscript:identifierCopy];

  groupIdentifier = [v6 groupIdentifier];

  return groupIdentifier;
}

- (id)mergingWith:(id)with mergePolicy:(unint64_t)policy
{
  v40 = *MEMORY[0x1E69E9840];
  withCopy = with;
  v6 = objc_alloc(MEMORY[0x1E695DF90]);
  selfCopy = self;
  membershipByMemberIdentifier = [(REMMemberships *)self membershipByMemberIdentifier];
  v33 = [v6 initWithDictionary:membershipByMemberIdentifier];

  if (policy == 1)
  {
    membershipByMemberIdentifier2 = [withCopy membershipByMemberIdentifier];
    [v33 addEntriesFromDictionary:membershipByMemberIdentifier2];

    v8 = withCopy;
  }

  else
  {
    v8 = withCopy;
    if (!policy)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      obj = [withCopy membershipByMemberIdentifier];
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
            membershipByMemberIdentifier3 = [v8 membershipByMemberIdentifier];
            v15 = [membershipByMemberIdentifier3 objectForKeyedSubscript:v13];

            membershipByMemberIdentifier4 = [(REMMemberships *)selfCopy membershipByMemberIdentifier];
            v17 = [membershipByMemberIdentifier4 objectForKeyedSubscript:v13];

            if (!v17)
            {
              goto LABEL_14;
            }

            modifiedOn = [v17 modifiedOn];
            modifiedOn2 = [v15 modifiedOn];
            v20 = [modifiedOn compare:modifiedOn2];

            if (v20 == -1)
            {
              goto LABEL_14;
            }

            if (!v20)
            {
              groupIdentifier = [v17 groupIdentifier];
              if (!groupIdentifier)
              {
                goto LABEL_14;
              }

              v22 = groupIdentifier;
              groupIdentifier2 = [v15 groupIdentifier];
              groupIdentifier3 = [v17 groupIdentifier];
              v25 = [groupIdentifier2 compare:groupIdentifier3];

              v26 = v25 == 1;
              v8 = withCopy;
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

- (id)excludingObsoleteAndModifiedEarlierThan:(id)than
{
  v26 = *MEMORY[0x1E69E9840];
  thanCopy = than;
  v5 = objc_alloc(MEMORY[0x1E695DF70]);
  membershipByMemberIdentifier = [(REMMemberships *)self membershipByMemberIdentifier];
  v7 = [v5 initWithCapacity:{objc_msgSend(membershipByMemberIdentifier, "count")}];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  membershipByMemberIdentifier2 = [(REMMemberships *)self membershipByMemberIdentifier];
  v9 = [membershipByMemberIdentifier2 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(membershipByMemberIdentifier2);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        membershipByMemberIdentifier3 = [(REMMemberships *)self membershipByMemberIdentifier];
        v15 = [membershipByMemberIdentifier3 objectForKeyedSubscript:v13];

        if (v15)
        {
          if (![v15 isObsolete] || (objc_msgSend(v15, "modifiedOn"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "compare:", thanCopy), v16, v17 != -1))
          {
            [v7 addObject:v15];
          }
        }
      }

      v10 = [membershipByMemberIdentifier2 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
  membershipByMemberIdentifier = [(REMMemberships *)self membershipByMemberIdentifier];
  v6 = [v3 stringWithFormat:@"<%@: %p membershipByMemberIdentifier: %@>", v4, self, membershipByMemberIdentifier];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    membershipByMemberIdentifier = [(REMMemberships *)self membershipByMemberIdentifier];
    membershipByMemberIdentifier2 = [equalCopy membershipByMemberIdentifier];
    if (membershipByMemberIdentifier == membershipByMemberIdentifier2)
    {
      v9 = 1;
    }

    else
    {
      membershipByMemberIdentifier3 = [(REMMemberships *)self membershipByMemberIdentifier];
      membershipByMemberIdentifier4 = [equalCopy membershipByMemberIdentifier];
      v9 = [membershipByMemberIdentifier3 isEqual:membershipByMemberIdentifier4];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  membershipByMemberIdentifier = [(REMMemberships *)self membershipByMemberIdentifier];
  v6 = [v4 initWithMembershipByMemberIdentifier:membershipByMemberIdentifier];

  return v6;
}

- (REMMemberships)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"membershipByMemberIdentifier"];

  v10 = [(REMMemberships *)self initWithMembershipByMemberIdentifier:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  membershipByMemberIdentifier = [(REMMemberships *)self membershipByMemberIdentifier];
  [coderCopy encodeObject:membershipByMemberIdentifier forKey:@"membershipByMemberIdentifier"];
}

@end