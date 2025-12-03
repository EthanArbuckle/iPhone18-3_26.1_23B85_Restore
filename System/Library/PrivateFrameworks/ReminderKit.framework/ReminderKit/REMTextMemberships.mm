@interface REMTextMemberships
- (BOOL)isEqual:(id)equal;
- (REMTextMemberships)initWithCoder:(id)coder;
- (REMTextMemberships)initWithMemberships:(id)memberships lastResetDate:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)groupIdentifierOfMemberWithIdentifier:(id)identifier;
- (id)mergingWith:(id)with;
- (id)removing:(id)removing;
- (void)encodeWithCoder:(id)coder;
- (void)reset;
@end

@implementation REMTextMemberships

- (REMTextMemberships)initWithMemberships:(id)memberships lastResetDate:(id)date
{
  membershipsCopy = memberships;
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = REMTextMemberships;
  v9 = [(REMTextMemberships *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_memberships, memberships);
    objc_storeStrong(&v10->_lastResetDate, date);
  }

  return v10;
}

- (id)groupIdentifierOfMemberWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  memberships = [(REMTextMemberships *)self memberships];
  v6 = [memberships objectForKeyedSubscript:identifierCopy];

  identifier = [v6 identifier];

  return identifier;
}

- (id)mergingWith:(id)with
{
  v70 = *MEMORY[0x1E69E9840];
  withCopy = with;
  lastResetDate = [(REMTextMemberships *)self lastResetDate];

  lastResetDate2 = [withCopy lastResetDate];
  lastResetDate6 = lastResetDate2;
  v55 = withCopy;
  if (lastResetDate)
  {

    if (lastResetDate6)
    {
      lastResetDate3 = [withCopy lastResetDate];
      lastResetDate4 = [(REMTextMemberships *)self lastResetDate];
      v10 = [lastResetDate4 compare:lastResetDate3];

      if (v10 == -1)
      {
        lastResetDate5 = lastResetDate3;
      }

      else
      {
        lastResetDate5 = [(REMTextMemberships *)self lastResetDate];
      }

      lastResetDate6 = lastResetDate5;
    }

    else
    {
      lastResetDate6 = [(REMTextMemberships *)self lastResetDate];
    }
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v13 = dictionary;
  selfCopy = self;
  if (lastResetDate6)
  {
    v57 = dictionary;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    memberships = [(REMTextMemberships *)self memberships];
    v15 = [memberships countByEnumeratingWithState:&v64 objects:v69 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v65;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v65 != v17)
          {
            objc_enumerationMutation(memberships);
          }

          v19 = *(*(&v64 + 1) + 8 * i);
          memberships2 = [(REMTextMemberships *)selfCopy memberships];
          v21 = [memberships2 objectForKeyedSubscript:v19];
          modifiedOn = [v21 modifiedOn];
          v23 = [modifiedOn compare:lastResetDate6];

          if (v23 == 1)
          {
            memberships3 = [(REMTextMemberships *)selfCopy memberships];
            v25 = [memberships3 objectForKeyedSubscript:v19];
            [v57 setObject:v25 forKeyedSubscript:v19];
          }
        }

        v16 = [memberships countByEnumeratingWithState:&v64 objects:v69 count:16];
      }

      while (v16);
    }
  }

  else
  {
    v26 = objc_alloc(MEMORY[0x1E695DF90]);
    memberships4 = [(REMTextMemberships *)self memberships];
    v28 = [v26 initWithDictionary:memberships4];

    v57 = v28;
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v29 = v55;
  obj = [v55 memberships];
  v30 = [obj countByEnumeratingWithState:&v60 objects:v68 count:16];
  v31 = selfCopy;
  if (v30)
  {
    v32 = v30;
    v58 = *v61;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v61 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v60 + 1) + 8 * j);
        if (!lastResetDate6)
        {
          goto LABEL_27;
        }

        memberships5 = [v29 memberships];
        v36 = [memberships5 objectForKeyedSubscript:v34];
        modifiedOn2 = [v36 modifiedOn];
        v38 = [modifiedOn2 compare:lastResetDate6];

        if (v38 == 1)
        {
LABEL_27:
          memberships6 = [v29 memberships];
          v40 = [memberships6 objectForKeyedSubscript:v34];

          memberships7 = [(REMTextMemberships *)v31 memberships];
          v42 = [memberships7 objectForKeyedSubscript:v34];

          if (!v42)
          {
            goto LABEL_33;
          }

          modifiedOn3 = [v42 modifiedOn];
          modifiedOn4 = [v40 modifiedOn];
          v45 = [modifiedOn3 compare:modifiedOn4];

          v31 = selfCopy;
          if (v45 == -1)
          {
            goto LABEL_33;
          }

          if (!v45)
          {
            identifier = [v42 identifier];
            if (!identifier)
            {
              goto LABEL_33;
            }

            v47 = identifier;
            identifier2 = [v40 identifier];
            identifier3 = [v42 identifier];
            v50 = [identifier2 compare:identifier3];

            v31 = selfCopy;
            v51 = v50 == 1;
            v29 = v55;
            if (v51)
            {
LABEL_33:
              [v57 setObject:v40 forKeyedSubscript:v34];
            }
          }
        }
      }

      v32 = [obj countByEnumeratingWithState:&v60 objects:v68 count:16];
    }

    while (v32);
  }

  v52 = [objc_alloc(objc_opt_class()) initWithMemberships:v57 lastResetDate:lastResetDate6];
  v53 = *MEMORY[0x1E69E9840];

  return v52;
}

- (id)removing:(id)removing
{
  v4 = MEMORY[0x1E695DF90];
  removingCopy = removing;
  v6 = [v4 alloc];
  memberships = [(REMTextMemberships *)self memberships];
  v8 = [v6 initWithDictionary:memberships];

  [v8 removeObjectsForKeys:removingCopy];
  v9 = objc_alloc(objc_opt_class());
  lastResetDate = [(REMTextMemberships *)self lastResetDate];
  v11 = [v9 initWithMemberships:v8 lastResetDate:lastResetDate];

  return v11;
}

- (void)reset
{
  dictionary = [MEMORY[0x1E695DF20] dictionary];
  memberships = self->_memberships;
  self->_memberships = dictionary;

  date = [MEMORY[0x1E695DF00] date];
  lastResetDate = self->_lastResetDate;
  self->_lastResetDate = date;

  MEMORY[0x1EEE66BB8]();
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  memberships = [(REMTextMemberships *)self memberships];
  lastResetDate = [(REMTextMemberships *)self lastResetDate];
  v7 = [v3 stringWithFormat:@"<%@: %p memberships: %@, lastResetDate: %@>", v4, self, memberships, lastResetDate];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  memberships = [(REMTextMemberships *)self memberships];
  memberships2 = [equalCopy memberships];
  v7 = memberships2;
  if (memberships == memberships2)
  {
  }

  else
  {
    memberships3 = [(REMTextMemberships *)self memberships];
    memberships4 = [equalCopy memberships];
    v10 = [memberships3 isEqual:memberships4];

    if (!v10)
    {
LABEL_4:
      v11 = 0;
      goto LABEL_10;
    }
  }

  lastResetDate = [(REMTextMemberships *)self lastResetDate];
  lastResetDate2 = [equalCopy lastResetDate];
  if (lastResetDate == lastResetDate2)
  {
    v11 = 1;
  }

  else
  {
    lastResetDate3 = [(REMTextMemberships *)self lastResetDate];
    lastResetDate4 = [equalCopy lastResetDate];
    v11 = [lastResetDate3 isEqual:lastResetDate4];
  }

LABEL_10:
  return v11 & 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  memberships = [(REMTextMemberships *)self memberships];
  lastResetDate = [(REMTextMemberships *)self lastResetDate];
  v7 = [v4 initWithMemberships:memberships lastResetDate:lastResetDate];

  return v7;
}

- (REMTextMemberships)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"memberships"];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastResetDate"];

  v11 = [(REMTextMemberships *)self initWithMemberships:v9 lastResetDate:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  memberships = [(REMTextMemberships *)self memberships];
  [coderCopy encodeObject:memberships forKey:@"memberships"];

  lastResetDate = [(REMTextMemberships *)self lastResetDate];
  [coderCopy encodeObject:lastResetDate forKey:@"lastResetDate"];
}

@end