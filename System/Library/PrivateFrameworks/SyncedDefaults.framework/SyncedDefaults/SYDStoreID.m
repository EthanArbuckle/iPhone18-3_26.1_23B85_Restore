@interface SYDStoreID
- (BOOL)isEqual:(id)a3;
- (CKContainerID)containerID;
- (SYDStoreID)initWithCoder:(id)a3;
- (SYDStoreID)initWithIdentifier:(id)a3 type:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SYDStoreID

- (CKContainerID)containerID
{
  containerID = self->_containerID;
  if (containerID)
  {
    v3 = containerID;
  }

  else
  {
    v3 = SYDContainerID([(SYDStoreID *)self type], 1);
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SYDStoreID *)self identifier];
  v7 = SYDStringForStoreType([(SYDStoreID *)self type]);
  v8 = [v3 stringWithFormat:@"<%@: %p identifier=%@ type=%@", v5, self, v6, v7];;

  v9 = [(SYDStoreID *)self personaUniqueString];

  if (v9)
  {
    v10 = [(SYDStoreID *)self personaUniqueString];
    [v8 appendFormat:@" persona=%@", v10];
  }

  v11 = [(SYDStoreID *)self containerID];

  if (v11)
  {
    v12 = [(SYDStoreID *)self containerID];
    [v8 appendFormat:@" containerID=%@", v12];
  }

  v13 = [(SYDStoreID *)self testConfiguration];

  if (v13)
  {
    v14 = [(SYDStoreID *)self testConfiguration];
    [v8 appendFormat:@" testConfiguration=%@", v14];
  }

  [v8 appendString:@">"];

  return v8;
}

- (unint64_t)hash
{
  v3 = [(SYDStoreID *)self identifier];
  v4 = [v3 hash];
  v5 = [(SYDStoreID *)self type]^ v4;
  v6 = [(SYDStoreID *)self testConfiguration];
  v7 = v5 ^ [v6 hash];

  v8 = [(SYDStoreID *)self personaUniqueString];

  if (v8)
  {
    v9 = [(SYDStoreID *)self personaUniqueString];
    v7 ^= [v9 hash];
  }

  v10 = [(SYDStoreID *)self containerID];

  if (v10)
  {
    v11 = [(SYDStoreID *)self containerID];
    v7 ^= [v11 hash];
  }

  return v7;
}

- (SYDStoreID)initWithIdentifier:(id)a3 type:(int64_t)a4
{
  v8 = a3;
  if (!v8)
  {
    [SYDStoreID initWithIdentifier:a2 type:?];
  }

  v16.receiver = self;
  v16.super_class = SYDStoreID;
  v9 = [(SYDStoreID *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    v10->_type = a4;
    if (SYDIsDataSeparatedPersona())
    {
      v11 = [MEMORY[0x1E69DF078] currentPersona];
      v12 = [v11 userPersonaUniqueString];
      v13 = [v12 copy];
      personaUniqueString = v10->_personaUniqueString;
      v10->_personaUniqueString = v13;
    }
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [v5 type];
    if (v6 != [(SYDStoreID *)self type])
    {
      goto LABEL_12;
    }

    v7 = [v5 identifier];
    v8 = [(SYDStoreID *)self identifier];
    v9 = [v7 isEqualToString:v8];

    if (!v9)
    {
      goto LABEL_12;
    }

    v10 = [(SYDStoreID *)self personaUniqueString];
    if (v10)
    {
      v11 = v10;
      v12 = [(SYDStoreID *)self personaUniqueString];
      v13 = [v5 personaUniqueString];
      v14 = [v12 isEqualToString:v13];

      if (!v14)
      {
        goto LABEL_12;
      }
    }

    v15 = [(SYDStoreID *)self personaUniqueString];
    if (v15)
    {
    }

    else
    {
      v22 = [v5 personaUniqueString];

      if (v22)
      {
        goto LABEL_12;
      }
    }

    v16 = [(SYDStoreID *)self containerID];
    v17 = [v5 containerID];
    v18 = [v16 isEqual:v17];

    if (v18)
    {
      v19 = [(SYDStoreID *)self testConfiguration];
      v20 = [v5 testConfiguration];
      v21 = SYDObjectsAreBothNilOrEqual(v19, v20);

LABEL_13:
      goto LABEL_14;
    }

LABEL_12:
    v21 = 0;
    goto LABEL_13;
  }

  v21 = 0;
LABEL_14:

  return v21;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SYDStoreID allocWithZone:a3];
  v5 = [(SYDStoreID *)self identifier];
  v6 = [(SYDStoreID *)v4 initWithIdentifier:v5 type:[(SYDStoreID *)self type]];

  v7 = [(SYDStoreID *)self testConfiguration];
  v8 = [v7 copy];
  [(SYDStoreID *)v6 setTestConfiguration:v8];

  v9 = [(SYDStoreID *)self personaUniqueString];
  v10 = [v9 copy];
  [(SYDStoreID *)v6 setPersonaUniqueString:v10];

  v11 = [(SYDStoreID *)self containerID];
  v12 = [v11 copy];
  [(SYDStoreID *)v6 setContainerID:v12];

  return v6;
}

- (SYDStoreID)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SYDStoreID;
  v5 = [(SYDStoreID *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v8 = objc_opt_class();
    v9 = NSStringFromSelector(sel_testConfiguration);
    v10 = [v4 decodeObjectOfClass:v8 forKey:v9];
    testConfiguration = v5->_testConfiguration;
    v5->_testConfiguration = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"persona"];
    personaUniqueString = v5->_personaUniqueString;
    v5->_personaUniqueString = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"container"];
    containerID = v5->_containerID;
    v5->_containerID = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v7 = a3;
  [v7 encodeObject:identifier forKey:@"identifier"];
  [v7 encodeInteger:self->_type forKey:@"type"];
  testConfiguration = self->_testConfiguration;
  v6 = NSStringFromSelector(sel_testConfiguration);
  [v7 encodeObject:testConfiguration forKey:v6];

  [v7 encodeObject:self->_personaUniqueString forKey:@"persona"];
  [v7 encodeObject:self->_containerID forKey:@"container"];
}

- (void)initWithIdentifier:(uint64_t)a1 type:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v6 handleFailureInMethod:a2 object:a1 file:@"SYDStoreID.m" lineNumber:37 description:{@"Trying to instantiate a %@ without an identifier", v5}];
}

@end