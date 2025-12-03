@interface REMTimestampedUUID
- (BOOL)isEqual:(id)equal;
- (REMTimestampedUUID)initWithCoder:(id)coder;
- (REMTimestampedUUID)initWithIdentifier:(id)identifier modifiedOn:(id)on;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMTimestampedUUID

- (REMTimestampedUUID)initWithIdentifier:(id)identifier modifiedOn:(id)on
{
  identifierCopy = identifier;
  onCopy = on;
  v12.receiver = self;
  v12.super_class = REMTimestampedUUID;
  v9 = [(REMTimestampedUUID *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_modifiedOn, on);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(REMTimestampedUUID *)self identifier];
  modifiedOn = [(REMTimestampedUUID *)self modifiedOn];
  v7 = [v3 stringWithFormat:@"<%@: %p identifier: %@, modifiedOn: %@>", v4, self, identifier, modifiedOn];

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

  identifier = [(REMTimestampedUUID *)self identifier];
  identifier2 = [equalCopy identifier];
  v7 = identifier2;
  if (identifier == identifier2)
  {
  }

  else
  {
    identifier3 = [(REMTimestampedUUID *)self identifier];
    identifier4 = [equalCopy identifier];
    v10 = [identifier3 isEqual:identifier4];

    if (!v10)
    {
LABEL_4:
      v11 = 0;
      goto LABEL_10;
    }
  }

  modifiedOn = [(REMTimestampedUUID *)self modifiedOn];
  modifiedOn2 = [equalCopy modifiedOn];
  if (modifiedOn == modifiedOn2)
  {
    v11 = 1;
  }

  else
  {
    modifiedOn3 = [(REMTimestampedUUID *)self modifiedOn];
    modifiedOn4 = [equalCopy modifiedOn];
    v11 = [modifiedOn3 isEqual:modifiedOn4];
  }

LABEL_10:
  return v11 & 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  identifier = [(REMTimestampedUUID *)self identifier];
  modifiedOn = [(REMTimestampedUUID *)self modifiedOn];
  v7 = [v4 initWithIdentifier:identifier modifiedOn:modifiedOn];

  return v7;
}

- (REMTimestampedUUID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modifiedOn"];

  v7 = [(REMTimestampedUUID *)self initWithIdentifier:v5 modifiedOn:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(REMTimestampedUUID *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  modifiedOn = [(REMTimestampedUUID *)self modifiedOn];
  [coderCopy encodeObject:modifiedOn forKey:@"modifiedOn"];
}

@end