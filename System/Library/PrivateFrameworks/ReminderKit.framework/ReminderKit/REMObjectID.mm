@interface REMObjectID
+ (REMObjectID)objectIDWithURL:(id)a3;
+ (REMObjectID)objectIDWithUUID:(id)a3 entityName:(id)a4;
+ (void)initialize;
+ (void)rem_registerClassAtCRCoderIfNeeded;
- (BOOL)isEqual:(id)a3;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)stringRepresentation;
- (NSURL)urlRepresentation;
- (REMObjectID)initWithCRCoder:(id)a3;
- (REMObjectID)initWithCoder:(id)a3;
- (REMObjectID)initWithUUID:(id)a3 entityName:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCRCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)mergeWith:(id)a3;
- (void)setDocument:(id)a3;
@end

@implementation REMObjectID

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    [a1 rem_registerClassAtCRCoderIfNeeded];
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
  v2 = [(REMObjectID *)self stringRepresentation];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [v2 rem_humanReadableIdentifier];
  v5 = [v3 stringWithFormat:@"%@~%@", v4, v2];

  return v5;
}

- (NSString)stringRepresentation
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(REMObjectID *)self urlRepresentation];
  v4 = [v3 absoluteString];
  v5 = [v2 stringWithFormat:@"<%@>", v4];

  return v5;
}

- (NSURL)urlRepresentation
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(REMObjectID *)self entityName];
  v5 = [(REMObjectID *)self uuid];
  v6 = [v3 stringWithFormat:@"%@://%@/%@", @"x-apple-reminderkit", v4, v5];

  v7 = [MEMORY[0x1E695DFF8] URLWithString:v6];

  return v7;
}

- (unint64_t)hash
{
  v2 = [(REMObjectID *)self uuid];
  v3 = [v2 hash];

  return v3;
}

- (void)mergeWith:(id)a3
{
  v5 = a3;
  if (![(REMObjectID *)self isEqual:?])
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Cannot merge REMObjectID with different value." userInfo:0];
    objc_exception_throw(v4);
  }
}

- (void)setDocument:(id)a3
{
  if (CR_REMObjectID_registerClass_onceToken != -1)
  {
    +[REMObjectID(CRDT_Additions) rem_registerClassAtCRCoderIfNeeded];
  }
}

- (REMObjectID)initWithCRCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeStringForKey:@"entityName"];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithCRCoder:v4];

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
    v8 = 0;
  }

  else
  {
    self = [(REMObjectID *)self initWithUUID:v6 entityName:v5];
    v8 = self;
  }

  return v8;
}

- (void)encodeWithCRCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMObjectID *)self entityName];
  [v4 encodeString:v5 forKey:@"entityName"];

  v6 = [(REMObjectID *)self uuid];
  [v6 encodeWithCRCoder:v4];
}

+ (REMObjectID)objectIDWithUUID:(id)a3 entityName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithUUID:v7 entityName:v6];

  return v8;
}

+ (REMObjectID)objectIDWithURL:(id)a3
{
  v4 = a3;
  v5 = [v4 scheme];
  v6 = [v4 host];
  v7 = [v4 lastPathComponent];
  v8 = [v4 pathComponents];
  v9 = [v8 count];

  v10 = 0;
  if (v9 == 2 && v7)
  {
    v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
  }

  if ([v5 isEqualToString:@"x-apple-reminderkit"] && objc_msgSend(v6, "length") && v10)
  {
    v11 = [[a1 alloc] initWithUUID:v10 entityName:v6];
  }

  else
  {
    v12 = +[REMLogStore utility];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(REMObjectID *)v4 objectIDWithURL:v12];
    }

    v11 = 0;
  }

  return v11;
}

- (REMObjectID)initWithUUID:(id)a3 entityName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6 || !v7)
  {
    v9 = +[REMLogStore utility];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(REMObjectID *)v6 initWithUUID:v8 entityName:v9];
    }
  }

  v16.receiver = self;
  v16.super_class = REMObjectID;
  v10 = [(REMObjectID *)&v16 init];
  if (v10)
  {
    v11 = [v6 copy];
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
  v3 = [(REMObjectID *)self stringRepresentation];
  v4 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = REMObjectID;
  v5 = [(REMObjectID *)&v9 description];
  v6 = [v3 rem_humanReadableIdentifier];
  v7 = [v4 stringWithFormat:@"<%@>%@~%@", v5, v6, v3];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v12 = 1;
  }

  else if (v4 && ((Class = object_getClass(self), Class == object_getClass(v5)) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    v7 = v5;
    v8 = [(REMObjectID *)self uuid];
    v9 = [(REMObjectID *)v7 uuid];
    if (v8 == v9)
    {
      v12 = 1;
    }

    else
    {
      v10 = [(REMObjectID *)self uuid];
      v11 = [(REMObjectID *)v7 uuid];
      v12 = [v10 isEqual:v11];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (REMObjectID)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entityName"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];

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
    v8 = 0;
  }

  else
  {
    self = [(REMObjectID *)self initWithUUID:v6 entityName:v5];
    v8 = self;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMObjectID *)self entityName];
  [v4 encodeObject:v5 forKey:@"entityName"];

  v6 = [(REMObjectID *)self uuid];
  [v4 encodeObject:v6 forKey:@"uuid"];
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