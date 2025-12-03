@interface REMMembership
- (BOOL)isEqual:(id)equal;
- (REMMembership)initWithCoder:(id)coder;
- (REMMembership)initWithMemberIdentifier:(id)identifier groupIdentifier:(id)groupIdentifier isObsolete:(BOOL)obsolete modifiedOn:(id)on;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMMembership

- (REMMembership)initWithMemberIdentifier:(id)identifier groupIdentifier:(id)groupIdentifier isObsolete:(BOOL)obsolete modifiedOn:(id)on
{
  identifierCopy = identifier;
  groupIdentifierCopy = groupIdentifier;
  onCopy = on;
  v17.receiver = self;
  v17.super_class = REMMembership;
  v14 = [(REMMembership *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_memberIdentifier, identifier);
    objc_storeStrong(&v15->_groupIdentifier, groupIdentifier);
    v15->_isObsolete = obsolete;
    objc_storeStrong(&v15->_modifiedOn, on);
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  memberIdentifier = [(REMMembership *)self memberIdentifier];
  groupIdentifier = [(REMMembership *)self groupIdentifier];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[REMMembership isObsolete](self, "isObsolete")}];
  modifiedOn = [(REMMembership *)self modifiedOn];
  v9 = [v3 stringWithFormat:@"<%@: %p memberIdentifier: %@, groupIdentifier: %@, isObsolete: %@, modifiedOn: %@>", v4, self, memberIdentifier, groupIdentifier, v7, modifiedOn];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  memberIdentifier = [(REMMembership *)self memberIdentifier];
  memberIdentifier2 = [equalCopy memberIdentifier];
  v7 = memberIdentifier2;
  if (memberIdentifier == memberIdentifier2)
  {
  }

  else
  {
    memberIdentifier3 = [(REMMembership *)self memberIdentifier];
    memberIdentifier4 = [equalCopy memberIdentifier];
    v10 = [memberIdentifier3 isEqual:memberIdentifier4];

    if (!v10)
    {
      goto LABEL_11;
    }
  }

  groupIdentifier = [(REMMembership *)self groupIdentifier];
  groupIdentifier2 = [equalCopy groupIdentifier];
  v13 = groupIdentifier2;
  if (groupIdentifier == groupIdentifier2)
  {
  }

  else
  {
    groupIdentifier3 = [(REMMembership *)self groupIdentifier];
    groupIdentifier4 = [equalCopy groupIdentifier];
    v16 = [groupIdentifier3 isEqual:groupIdentifier4];

    if (!v16)
    {
      goto LABEL_11;
    }
  }

  isObsolete = [(REMMembership *)self isObsolete];
  if (isObsolete != [equalCopy isObsolete])
  {
LABEL_11:
    v18 = 0;
    goto LABEL_12;
  }

  modifiedOn = [(REMMembership *)self modifiedOn];
  modifiedOn2 = [equalCopy modifiedOn];
  if (modifiedOn == modifiedOn2)
  {
    v18 = 1;
  }

  else
  {
    modifiedOn3 = [(REMMembership *)self modifiedOn];
    modifiedOn4 = [equalCopy modifiedOn];
    v18 = [modifiedOn3 isEqual:modifiedOn4];
  }

LABEL_12:
  return v18 & 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  memberIdentifier = [(REMMembership *)self memberIdentifier];
  groupIdentifier = [(REMMembership *)self groupIdentifier];
  isObsolete = [(REMMembership *)self isObsolete];
  modifiedOn = [(REMMembership *)self modifiedOn];
  v9 = [v4 initWithMemberIdentifier:memberIdentifier groupIdentifier:groupIdentifier isObsolete:isObsolete modifiedOn:modifiedOn];

  return v9;
}

- (REMMembership)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"memberIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupIdentifier"];
  v7 = [coderCopy decodeBoolForKey:@"isObsolete"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modifiedOn"];

  v9 = [(REMMembership *)self initWithMemberIdentifier:v5 groupIdentifier:v6 isObsolete:v7 modifiedOn:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  memberIdentifier = [(REMMembership *)self memberIdentifier];
  [coderCopy encodeObject:memberIdentifier forKey:@"memberIdentifier"];

  groupIdentifier = [(REMMembership *)self groupIdentifier];
  [coderCopy encodeObject:groupIdentifier forKey:@"groupIdentifier"];

  [coderCopy encodeBool:-[REMMembership isObsolete](self forKey:{"isObsolete"), @"isObsolete"}];
  modifiedOn = [(REMMembership *)self modifiedOn];
  [coderCopy encodeObject:modifiedOn forKey:@"modifiedOn"];
}

@end