@interface REMTextMemberships
- (BOOL)isEqual:(id)a3;
- (REMTextMemberships)initWithCoder:(id)a3;
- (REMTextMemberships)initWithMemberships:(id)a3 lastResetDate:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)groupIdentifierOfMemberWithIdentifier:(id)a3;
- (id)mergingWith:(id)a3;
- (id)removing:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)reset;
@end

@implementation REMTextMemberships

- (REMTextMemberships)initWithMemberships:(id)a3 lastResetDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = REMTextMemberships;
  v9 = [(REMTextMemberships *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_memberships, a3);
    objc_storeStrong(&v10->_lastResetDate, a4);
  }

  return v10;
}

- (id)groupIdentifierOfMemberWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(REMTextMemberships *)self memberships];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 identifier];

  return v7;
}

- (id)mergingWith:(id)a3
{
  v70 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(REMTextMemberships *)self lastResetDate];

  v6 = [v4 lastResetDate];
  v7 = v6;
  v55 = v4;
  if (v5)
  {

    if (v7)
    {
      v8 = [v4 lastResetDate];
      v9 = [(REMTextMemberships *)self lastResetDate];
      v10 = [v9 compare:v8];

      if (v10 == -1)
      {
        v11 = v8;
      }

      else
      {
        v11 = [(REMTextMemberships *)self lastResetDate];
      }

      v7 = v11;
    }

    else
    {
      v7 = [(REMTextMemberships *)self lastResetDate];
    }
  }

  v12 = [MEMORY[0x1E695DF90] dictionary];
  v13 = v12;
  v59 = self;
  if (v7)
  {
    v57 = v12;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v14 = [(REMTextMemberships *)self memberships];
    v15 = [v14 countByEnumeratingWithState:&v64 objects:v69 count:16];
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
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v64 + 1) + 8 * i);
          v20 = [(REMTextMemberships *)v59 memberships];
          v21 = [v20 objectForKeyedSubscript:v19];
          v22 = [v21 modifiedOn];
          v23 = [v22 compare:v7];

          if (v23 == 1)
          {
            v24 = [(REMTextMemberships *)v59 memberships];
            v25 = [v24 objectForKeyedSubscript:v19];
            [v57 setObject:v25 forKeyedSubscript:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v64 objects:v69 count:16];
      }

      while (v16);
    }
  }

  else
  {
    v26 = objc_alloc(MEMORY[0x1E695DF90]);
    v27 = [(REMTextMemberships *)self memberships];
    v28 = [v26 initWithDictionary:v27];

    v57 = v28;
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v29 = v55;
  obj = [v55 memberships];
  v30 = [obj countByEnumeratingWithState:&v60 objects:v68 count:16];
  v31 = v59;
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
        if (!v7)
        {
          goto LABEL_27;
        }

        v35 = [v29 memberships];
        v36 = [v35 objectForKeyedSubscript:v34];
        v37 = [v36 modifiedOn];
        v38 = [v37 compare:v7];

        if (v38 == 1)
        {
LABEL_27:
          v39 = [v29 memberships];
          v40 = [v39 objectForKeyedSubscript:v34];

          v41 = [(REMTextMemberships *)v31 memberships];
          v42 = [v41 objectForKeyedSubscript:v34];

          if (!v42)
          {
            goto LABEL_33;
          }

          v43 = [v42 modifiedOn];
          v44 = [v40 modifiedOn];
          v45 = [v43 compare:v44];

          v31 = v59;
          if (v45 == -1)
          {
            goto LABEL_33;
          }

          if (!v45)
          {
            v46 = [v42 identifier];
            if (!v46)
            {
              goto LABEL_33;
            }

            v47 = v46;
            v48 = [v40 identifier];
            v49 = [v42 identifier];
            v50 = [v48 compare:v49];

            v31 = v59;
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

  v52 = [objc_alloc(objc_opt_class()) initWithMemberships:v57 lastResetDate:v7];
  v53 = *MEMORY[0x1E69E9840];

  return v52;
}

- (id)removing:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(REMTextMemberships *)self memberships];
  v8 = [v6 initWithDictionary:v7];

  [v8 removeObjectsForKeys:v5];
  v9 = objc_alloc(objc_opt_class());
  v10 = [(REMTextMemberships *)self lastResetDate];
  v11 = [v9 initWithMemberships:v8 lastResetDate:v10];

  return v11;
}

- (void)reset
{
  v3 = [MEMORY[0x1E695DF20] dictionary];
  memberships = self->_memberships;
  self->_memberships = v3;

  v5 = [MEMORY[0x1E695DF00] date];
  lastResetDate = self->_lastResetDate;
  self->_lastResetDate = v5;

  MEMORY[0x1EEE66BB8]();
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMTextMemberships *)self memberships];
  v6 = [(REMTextMemberships *)self lastResetDate];
  v7 = [v3 stringWithFormat:@"<%@: %p memberships: %@, lastResetDate: %@>", v4, self, v5, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  v5 = [(REMTextMemberships *)self memberships];
  v6 = [v4 memberships];
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [(REMTextMemberships *)self memberships];
    v9 = [v4 memberships];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
LABEL_4:
      v11 = 0;
      goto LABEL_10;
    }
  }

  v12 = [(REMTextMemberships *)self lastResetDate];
  v13 = [v4 lastResetDate];
  if (v12 == v13)
  {
    v11 = 1;
  }

  else
  {
    v14 = [(REMTextMemberships *)self lastResetDate];
    v15 = [v4 lastResetDate];
    v11 = [v14 isEqual:v15];
  }

LABEL_10:
  return v11 & 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(REMTextMemberships *)self memberships];
  v6 = [(REMTextMemberships *)self lastResetDate];
  v7 = [v4 initWithMemberships:v5 lastResetDate:v6];

  return v7;
}

- (REMTextMemberships)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:@"memberships"];

  v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"lastResetDate"];

  v11 = [(REMTextMemberships *)self initWithMemberships:v9 lastResetDate:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMTextMemberships *)self memberships];
  [v4 encodeObject:v5 forKey:@"memberships"];

  v6 = [(REMTextMemberships *)self lastResetDate];
  [v4 encodeObject:v6 forKey:@"lastResetDate"];
}

@end