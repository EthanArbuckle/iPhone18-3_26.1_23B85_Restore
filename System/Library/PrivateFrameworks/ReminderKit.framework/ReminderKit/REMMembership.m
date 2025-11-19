@interface REMMembership
- (BOOL)isEqual:(id)a3;
- (REMMembership)initWithCoder:(id)a3;
- (REMMembership)initWithMemberIdentifier:(id)a3 groupIdentifier:(id)a4 isObsolete:(BOOL)a5 modifiedOn:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMMembership

- (REMMembership)initWithMemberIdentifier:(id)a3 groupIdentifier:(id)a4 isObsolete:(BOOL)a5 modifiedOn:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = REMMembership;
  v14 = [(REMMembership *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_memberIdentifier, a3);
    objc_storeStrong(&v15->_groupIdentifier, a4);
    v15->_isObsolete = a5;
    objc_storeStrong(&v15->_modifiedOn, a6);
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMMembership *)self memberIdentifier];
  v6 = [(REMMembership *)self groupIdentifier];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[REMMembership isObsolete](self, "isObsolete")}];
  v8 = [(REMMembership *)self modifiedOn];
  v9 = [v3 stringWithFormat:@"<%@: %p memberIdentifier: %@, groupIdentifier: %@, isObsolete: %@, modifiedOn: %@>", v4, self, v5, v6, v7, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  v5 = [(REMMembership *)self memberIdentifier];
  v6 = [v4 memberIdentifier];
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [(REMMembership *)self memberIdentifier];
    v9 = [v4 memberIdentifier];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
      goto LABEL_11;
    }
  }

  v11 = [(REMMembership *)self groupIdentifier];
  v12 = [v4 groupIdentifier];
  v13 = v12;
  if (v11 == v12)
  {
  }

  else
  {
    v14 = [(REMMembership *)self groupIdentifier];
    v15 = [v4 groupIdentifier];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_11;
    }
  }

  v17 = [(REMMembership *)self isObsolete];
  if (v17 != [v4 isObsolete])
  {
LABEL_11:
    v18 = 0;
    goto LABEL_12;
  }

  v20 = [(REMMembership *)self modifiedOn];
  v21 = [v4 modifiedOn];
  if (v20 == v21)
  {
    v18 = 1;
  }

  else
  {
    v22 = [(REMMembership *)self modifiedOn];
    v23 = [v4 modifiedOn];
    v18 = [v22 isEqual:v23];
  }

LABEL_12:
  return v18 & 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(REMMembership *)self memberIdentifier];
  v6 = [(REMMembership *)self groupIdentifier];
  v7 = [(REMMembership *)self isObsolete];
  v8 = [(REMMembership *)self modifiedOn];
  v9 = [v4 initWithMemberIdentifier:v5 groupIdentifier:v6 isObsolete:v7 modifiedOn:v8];

  return v9;
}

- (REMMembership)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"memberIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupIdentifier"];
  v7 = [v4 decodeBoolForKey:@"isObsolete"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modifiedOn"];

  v9 = [(REMMembership *)self initWithMemberIdentifier:v5 groupIdentifier:v6 isObsolete:v7 modifiedOn:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMMembership *)self memberIdentifier];
  [v4 encodeObject:v5 forKey:@"memberIdentifier"];

  v6 = [(REMMembership *)self groupIdentifier];
  [v4 encodeObject:v6 forKey:@"groupIdentifier"];

  [v4 encodeBool:-[REMMembership isObsolete](self forKey:{"isObsolete"), @"isObsolete"}];
  v7 = [(REMMembership *)self modifiedOn];
  [v4 encodeObject:v7 forKey:@"modifiedOn"];
}

@end