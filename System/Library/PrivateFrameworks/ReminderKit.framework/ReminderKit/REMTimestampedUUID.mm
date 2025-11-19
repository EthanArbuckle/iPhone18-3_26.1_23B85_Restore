@interface REMTimestampedUUID
- (BOOL)isEqual:(id)a3;
- (REMTimestampedUUID)initWithCoder:(id)a3;
- (REMTimestampedUUID)initWithIdentifier:(id)a3 modifiedOn:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMTimestampedUUID

- (REMTimestampedUUID)initWithIdentifier:(id)a3 modifiedOn:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = REMTimestampedUUID;
  v9 = [(REMTimestampedUUID *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_modifiedOn, a4);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMTimestampedUUID *)self identifier];
  v6 = [(REMTimestampedUUID *)self modifiedOn];
  v7 = [v3 stringWithFormat:@"<%@: %p identifier: %@, modifiedOn: %@>", v4, self, v5, v6];

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

  v5 = [(REMTimestampedUUID *)self identifier];
  v6 = [v4 identifier];
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [(REMTimestampedUUID *)self identifier];
    v9 = [v4 identifier];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
LABEL_4:
      v11 = 0;
      goto LABEL_10;
    }
  }

  v12 = [(REMTimestampedUUID *)self modifiedOn];
  v13 = [v4 modifiedOn];
  if (v12 == v13)
  {
    v11 = 1;
  }

  else
  {
    v14 = [(REMTimestampedUUID *)self modifiedOn];
    v15 = [v4 modifiedOn];
    v11 = [v14 isEqual:v15];
  }

LABEL_10:
  return v11 & 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(REMTimestampedUUID *)self identifier];
  v6 = [(REMTimestampedUUID *)self modifiedOn];
  v7 = [v4 initWithIdentifier:v5 modifiedOn:v6];

  return v7;
}

- (REMTimestampedUUID)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modifiedOn"];

  v7 = [(REMTimestampedUUID *)self initWithIdentifier:v5 modifiedOn:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMTimestampedUUID *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(REMTimestampedUUID *)self modifiedOn];
  [v4 encodeObject:v6 forKey:@"modifiedOn"];
}

@end