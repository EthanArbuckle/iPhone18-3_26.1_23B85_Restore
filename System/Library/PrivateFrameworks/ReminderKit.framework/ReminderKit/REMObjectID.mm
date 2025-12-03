@interface REMObjectID
+ (REMObjectID)objectIDWithURL:(id)l;
+ (REMObjectID)objectIDWithUUID:(id)d entityName:(id)name;
+ (void)initialize;
+ (void)rem_registerClassAtCRCoderIfNeeded;
- (BOOL)isEqual:(id)equal;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)stringRepresentation;
- (NSURL)urlRepresentation;
- (REMObjectID)initWithCRCoder:(id)coder;
- (REMObjectID)initWithCoder:(id)coder;
- (REMObjectID)initWithUUID:(id)d entityName:(id)name;
- (unint64_t)hash;
- (void)encodeWithCRCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)mergeWith:(id)with;
- (void)setDocument:(id)document;
@end

@implementation REMObjectID

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [self rem_registerClassAtCRCoderIfNeeded];
  }
}

+ (void)rem_registerClassAtCRCoderIfNeeded
{
  if (CR_REMObjectID_registerClass_onceToken != -1)
  {
    +[REMObjectID(CRDT_Additions) rem_registerClassAtCRCoderIfNeeded];
  }
}

- (NSString)description
{
  stringRepresentation = [(REMObjectID *)self stringRepresentation];
  v3 = MEMORY[0x1E696AEC0];
  rem_humanReadableIdentifier = [stringRepresentation rem_humanReadableIdentifier];
  v5 = [v3 stringWithFormat:@"%@~%@", rem_humanReadableIdentifier, stringRepresentation];

  return v5;
}

- (NSString)stringRepresentation
{
  v2 = MEMORY[0x1E696AEC0];
  urlRepresentation = [(REMObjectID *)self urlRepresentation];
  absoluteString = [urlRepresentation absoluteString];
  v5 = [v2 stringWithFormat:@"<%@>", absoluteString];

  return v5;
}

- (NSURL)urlRepresentation
{
  v3 = MEMORY[0x1E696AEC0];
  entityName = [(REMObjectID *)self entityName];
  uuid = [(REMObjectID *)self uuid];
  v6 = [v3 stringWithFormat:@"%@://%@/%@", @"x-apple-reminderkit", entityName, uuid];

  v7 = [MEMORY[0x1E695DFF8] URLWithString:v6];

  return v7;
}

- (unint64_t)hash
{
  uuid = [(REMObjectID *)self uuid];
  v3 = [uuid hash];

  return v3;
}

- (void)mergeWith:(id)with
{
  withCopy = with;
  if (![(REMObjectID *)self isEqual:?])
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Cannot merge REMObjectID with different value." userInfo:0];
    objc_exception_throw(v4);
  }
}

- (void)setDocument:(id)document
{
  if (CR_REMObjectID_registerClass_onceToken != -1)
  {
    +[REMObjectID(CRDT_Additions) rem_registerClassAtCRCoderIfNeeded];
  }
}

- (REMObjectID)initWithCRCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeStringForKey:@"entityName"];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithCRCoder:coderCopy];

  if (v6)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(REMObjectID *)self initWithUUID:v6 entityName:v5];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCRCoder:(id)coder
{
  coderCopy = coder;
  entityName = [(REMObjectID *)self entityName];
  [coderCopy encodeString:entityName forKey:@"entityName"];

  uuid = [(REMObjectID *)self uuid];
  [uuid encodeWithCRCoder:coderCopy];
}

+ (REMObjectID)objectIDWithUUID:(id)d entityName:(id)name
{
  nameCopy = name;
  dCopy = d;
  v8 = [[self alloc] initWithUUID:dCopy entityName:nameCopy];

  return v8;
}

+ (REMObjectID)objectIDWithURL:(id)l
{
  lCopy = l;
  scheme = [lCopy scheme];
  host = [lCopy host];
  lastPathComponent = [lCopy lastPathComponent];
  pathComponents = [lCopy pathComponents];
  v9 = [pathComponents count];

  v10 = 0;
  if (v9 == 2 && lastPathComponent)
  {
    v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:lastPathComponent];
  }

  if ([scheme isEqualToString:@"x-apple-reminderkit"] && objc_msgSend(host, "length") && v10)
  {
    v11 = [[self alloc] initWithUUID:v10 entityName:host];
  }

  else
  {
    v12 = +[REMLogStore utility];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(REMObjectID *)lCopy objectIDWithURL:v12];
    }

    v11 = 0;
  }

  return v11;
}

- (REMObjectID)initWithUUID:(id)d entityName:(id)name
{
  dCopy = d;
  nameCopy = name;
  v8 = nameCopy;
  if (!dCopy || !nameCopy)
  {
    v9 = +[REMLogStore utility];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(REMObjectID *)dCopy initWithUUID:v8 entityName:v9];
    }
  }

  v16.receiver = self;
  v16.super_class = REMObjectID;
  v10 = [(REMObjectID *)&v16 init];
  if (v10)
  {
    v11 = [dCopy copy];
    uuid = v10->_uuid;
    v10->_uuid = v11;

    v13 = [v8 copy];
    entityName = v10->_entityName;
    v10->_entityName = v13;
  }

  return v10;
}

- (NSString)debugDescription
{
  stringRepresentation = [(REMObjectID *)self stringRepresentation];
  v4 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = REMObjectID;
  v5 = [(REMObjectID *)&v9 description];
  rem_humanReadableIdentifier = [stringRepresentation rem_humanReadableIdentifier];
  v7 = [v4 stringWithFormat:@"<%@>%@~%@", v5, rem_humanReadableIdentifier, stringRepresentation];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else if (equalCopy && ((Class = object_getClass(self), Class == object_getClass(v5)) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    v7 = v5;
    uuid = [(REMObjectID *)self uuid];
    uuid2 = [(REMObjectID *)v7 uuid];
    if (uuid == uuid2)
    {
      v12 = 1;
    }

    else
    {
      uuid3 = [(REMObjectID *)self uuid];
      uuid4 = [(REMObjectID *)v7 uuid];
      v12 = [uuid3 isEqual:uuid4];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (REMObjectID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entityName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];

  if (v6)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(REMObjectID *)self initWithUUID:v6 entityName:v5];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  entityName = [(REMObjectID *)self entityName];
  [coderCopy encodeObject:entityName forKey:@"entityName"];

  uuid = [(REMObjectID *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"uuid"];
}

+ (void)objectIDWithURL:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_DEBUG, "Failed to create REMObjectID {url: %@}", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)initWithUUID:(NSObject *)a3 entityName:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 UUIDString];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_fault_impl(&dword_19A0DB000, a3, OS_LOG_TYPE_FAULT, "REMObjectID: nil value passed to non-nil parameter. Something must have gone wrong. {uuid: %@, entityName: %@}", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end