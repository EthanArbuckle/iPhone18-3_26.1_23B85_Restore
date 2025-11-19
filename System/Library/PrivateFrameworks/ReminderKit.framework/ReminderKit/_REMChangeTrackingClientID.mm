@interface _REMChangeTrackingClientID
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_REMChangeTrackingClientID)initWithClientName:(id)a3 accountIdentifier:(id)a4;
- (_REMChangeTrackingClientID)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _REMChangeTrackingClientID

- (_REMChangeTrackingClientID)initWithClientName:(id)a3 accountIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _REMChangeTrackingClientID;
  v9 = [(_REMChangeTrackingClientID *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientName, a3);
    objc_storeStrong(&v10->_accountIdentifier, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_REMChangeTrackingClientID *)self clientName];
  [v4 encodeObject:v5 forKey:@"clientName"];

  v6 = [(_REMChangeTrackingClientID *)self accountIdentifier];
  [v4 encodeObject:v6 forKey:@"accountIdentifier"];
}

- (_REMChangeTrackingClientID)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientName"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    self = [(_REMChangeTrackingClientID *)self initWithClientName:v5 accountIdentifier:v6];
    v8 = self;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(_REMChangeTrackingClientID *)self clientName];
      v8 = [(_REMChangeTrackingClientID *)v6 clientName];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(_REMChangeTrackingClientID *)self clientName];
        v11 = [(_REMChangeTrackingClientID *)v6 clientName];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_5;
        }
      }

      v14 = [(_REMChangeTrackingClientID *)self accountIdentifier];
      v15 = [(_REMChangeTrackingClientID *)v6 accountIdentifier];
      if (v14 == v15)
      {
        v13 = 1;
      }

      else
      {
        v16 = [(_REMChangeTrackingClientID *)self accountIdentifier];
        v17 = [(_REMChangeTrackingClientID *)v6 accountIdentifier];
        v13 = [v16 isEqual:v17];
      }

      goto LABEL_12;
    }

LABEL_5:
    v13 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v13 = 1;
LABEL_13:

  return v13 & 1;
}

- (NSString)description
{
  v10.receiver = self;
  v10.super_class = _REMChangeTrackingClientID;
  v3 = [(_REMChangeTrackingClientID *)&v10 description];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(_REMChangeTrackingClientID *)self clientName];
  v6 = [(_REMChangeTrackingClientID *)self accountIdentifier];
  v7 = [v4 stringWithFormat:@" - {clientName: %@, accountIdentifier: %@}", v5, v6];;
  v8 = [v3 stringByAppendingString:v7];

  return v8;
}

@end