@interface WFDatabaseObjectDescriptor
+ (id)mockWithIdentifier:(id)identifier objectType:(unint64_t)type;
- (BOOL)isEqual:(id)equal;
- (WFDatabaseObjectDescriptor)initWithCoder:(id)coder;
- (WFDatabaseObjectDescriptor)initWithDictionaryRepresentation:(id)representation;
- (WFDatabaseObjectDescriptor)initWithIdentifier:(id)identifier objectType:(unint64_t)type;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFDatabaseObjectDescriptor

- (unint64_t)hash
{
  identifier = [(WFDatabaseObjectDescriptor *)self identifier];
  v4 = [identifier hash];
  v5 = [(WFDatabaseObjectDescriptor *)self objectType]^ 0xABCD1234;

  return v4 ^ v5;
}

- (id)dictionaryRepresentation
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"objectType";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[WFDatabaseObjectDescriptor objectType](self, "objectType")}];
  v8[1] = @"identifier";
  v9[0] = v3;
  identifier = [(WFDatabaseObjectDescriptor *)self identifier];
  v9[1] = identifier;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (WFDatabaseObjectDescriptor)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy objectForKeyedSubscript:@"objectType"];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  v7 = [representationCopy objectForKeyedSubscript:@"identifier"];

  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    self = [(WFDatabaseObjectDescriptor *)self initWithIdentifier:v7 objectType:unsignedIntegerValue];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(WFDatabaseObjectDescriptor *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  [coderCopy encodeInteger:-[WFDatabaseObjectDescriptor objectType](self forKey:{"objectType"), @"objectType"}];
}

- (WFDatabaseObjectDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFDatabaseObjectDescriptor;
  v5 = [(WFDatabaseObjectDescriptor *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_objectType = [coderCopy decodeIntegerForKey:@"objectType"];
    v8 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = [(WFDatabaseObjectDescriptor *)equalCopy identifier];
      identifier2 = [(WFDatabaseObjectDescriptor *)self identifier];
      v7 = [identifier isEqualToString:identifier2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(WFDatabaseObjectDescriptor *)self identifier];
  objectType = [(WFDatabaseObjectDescriptor *)self objectType];
  if (objectType > 0xC)
  {
    v8 = @"Unknown";
  }

  else
  {
    v8 = off_1E7B025D8[objectType];
  }

  v9 = v8;
  v10 = [v3 stringWithFormat:@"<%@: %p, identifier: %@, objectType: %@>", v5, self, identifier, v9];

  return v10;
}

- (WFDatabaseObjectDescriptor)initWithIdentifier:(id)identifier objectType:(unint64_t)type
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFDatabaseObjectDescriptor.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  if (type == 12)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFDatabaseObjectDescriptor.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"objectType != WFDatabaseObjectTypeOther"}];
  }

  v15.receiver = self;
  v15.super_class = WFDatabaseObjectDescriptor;
  v8 = [(WFDatabaseObjectDescriptor *)&v15 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v8->_objectType = type;
    v11 = v8;
  }

  return v8;
}

+ (id)mockWithIdentifier:(id)identifier objectType:(unint64_t)type
{
  identifierCopy = identifier;
  v6 = [[WFDatabaseObjectDescriptor alloc] initWithIdentifier:identifierCopy objectType:type];

  return v6;
}

@end