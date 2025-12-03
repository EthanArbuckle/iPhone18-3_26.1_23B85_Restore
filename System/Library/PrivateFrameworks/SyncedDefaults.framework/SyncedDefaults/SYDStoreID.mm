@interface SYDStoreID
- (BOOL)isEqual:(id)equal;
- (CKContainerID)containerID;
- (SYDStoreID)initWithCoder:(id)coder;
- (SYDStoreID)initWithIdentifier:(id)identifier type:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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
  identifier = [(SYDStoreID *)self identifier];
  v7 = SYDStringForStoreType([(SYDStoreID *)self type]);
  v8 = [v3 stringWithFormat:@"<%@: %p identifier=%@ type=%@", v5, self, identifier, v7];;

  personaUniqueString = [(SYDStoreID *)self personaUniqueString];

  if (personaUniqueString)
  {
    personaUniqueString2 = [(SYDStoreID *)self personaUniqueString];
    [v8 appendFormat:@" persona=%@", personaUniqueString2];
  }

  containerID = [(SYDStoreID *)self containerID];

  if (containerID)
  {
    containerID2 = [(SYDStoreID *)self containerID];
    [v8 appendFormat:@" containerID=%@", containerID2];
  }

  testConfiguration = [(SYDStoreID *)self testConfiguration];

  if (testConfiguration)
  {
    testConfiguration2 = [(SYDStoreID *)self testConfiguration];
    [v8 appendFormat:@" testConfiguration=%@", testConfiguration2];
  }

  [v8 appendString:@">"];

  return v8;
}

- (unint64_t)hash
{
  identifier = [(SYDStoreID *)self identifier];
  v4 = [identifier hash];
  v5 = [(SYDStoreID *)self type]^ v4;
  testConfiguration = [(SYDStoreID *)self testConfiguration];
  v7 = v5 ^ [testConfiguration hash];

  personaUniqueString = [(SYDStoreID *)self personaUniqueString];

  if (personaUniqueString)
  {
    personaUniqueString2 = [(SYDStoreID *)self personaUniqueString];
    v7 ^= [personaUniqueString2 hash];
  }

  containerID = [(SYDStoreID *)self containerID];

  if (containerID)
  {
    containerID2 = [(SYDStoreID *)self containerID];
    v7 ^= [containerID2 hash];
  }

  return v7;
}

- (SYDStoreID)initWithIdentifier:(id)identifier type:(int64_t)type
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [SYDStoreID initWithIdentifier:a2 type:?];
  }

  v16.receiver = self;
  v16.super_class = SYDStoreID;
  v9 = [(SYDStoreID *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    v10->_type = type;
    if (SYDIsDataSeparatedPersona())
    {
      currentPersona = [MEMORY[0x1E69DF078] currentPersona];
      userPersonaUniqueString = [currentPersona userPersonaUniqueString];
      v13 = [userPersonaUniqueString copy];
      personaUniqueString = v10->_personaUniqueString;
      v10->_personaUniqueString = v13;
    }
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    type = [v5 type];
    if (type != [(SYDStoreID *)self type])
    {
      goto LABEL_12;
    }

    identifier = [v5 identifier];
    identifier2 = [(SYDStoreID *)self identifier];
    v9 = [identifier isEqualToString:identifier2];

    if (!v9)
    {
      goto LABEL_12;
    }

    personaUniqueString = [(SYDStoreID *)self personaUniqueString];
    if (personaUniqueString)
    {
      v11 = personaUniqueString;
      personaUniqueString2 = [(SYDStoreID *)self personaUniqueString];
      personaUniqueString3 = [v5 personaUniqueString];
      v14 = [personaUniqueString2 isEqualToString:personaUniqueString3];

      if (!v14)
      {
        goto LABEL_12;
      }
    }

    personaUniqueString4 = [(SYDStoreID *)self personaUniqueString];
    if (personaUniqueString4)
    {
    }

    else
    {
      personaUniqueString5 = [v5 personaUniqueString];

      if (personaUniqueString5)
      {
        goto LABEL_12;
      }
    }

    containerID = [(SYDStoreID *)self containerID];
    containerID2 = [v5 containerID];
    v18 = [containerID isEqual:containerID2];

    if (v18)
    {
      testConfiguration = [(SYDStoreID *)self testConfiguration];
      testConfiguration2 = [v5 testConfiguration];
      v21 = SYDObjectsAreBothNilOrEqual(testConfiguration, testConfiguration2);

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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SYDStoreID allocWithZone:zone];
  identifier = [(SYDStoreID *)self identifier];
  v6 = [(SYDStoreID *)v4 initWithIdentifier:identifier type:[(SYDStoreID *)self type]];

  testConfiguration = [(SYDStoreID *)self testConfiguration];
  v8 = [testConfiguration copy];
  [(SYDStoreID *)v6 setTestConfiguration:v8];

  personaUniqueString = [(SYDStoreID *)self personaUniqueString];
  v10 = [personaUniqueString copy];
  [(SYDStoreID *)v6 setPersonaUniqueString:v10];

  containerID = [(SYDStoreID *)self containerID];
  v12 = [containerID copy];
  [(SYDStoreID *)v6 setContainerID:v12];

  return v6;
}

- (SYDStoreID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = SYDStoreID;
  v5 = [(SYDStoreID *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v8 = objc_opt_class();
    v9 = NSStringFromSelector(sel_testConfiguration);
    v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];
    testConfiguration = v5->_testConfiguration;
    v5->_testConfiguration = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"persona"];
    personaUniqueString = v5->_personaUniqueString;
    v5->_personaUniqueString = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"container"];
    containerID = v5->_containerID;
    v5->_containerID = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  testConfiguration = self->_testConfiguration;
  v6 = NSStringFromSelector(sel_testConfiguration);
  [coderCopy encodeObject:testConfiguration forKey:v6];

  [coderCopy encodeObject:self->_personaUniqueString forKey:@"persona"];
  [coderCopy encodeObject:self->_containerID forKey:@"container"];
}

- (void)initWithIdentifier:(uint64_t)a1 type:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v6 handleFailureInMethod:a2 object:a1 file:@"SYDStoreID.m" lineNumber:37 description:{@"Trying to instantiate a %@ without an identifier", v5}];
}

@end