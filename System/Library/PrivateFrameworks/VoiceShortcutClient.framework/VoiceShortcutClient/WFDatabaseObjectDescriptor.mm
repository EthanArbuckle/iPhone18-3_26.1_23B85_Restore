@interface WFDatabaseObjectDescriptor
+ (id)mockWithIdentifier:(id)a3 objectType:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (WFDatabaseObjectDescriptor)initWithCoder:(id)a3;
- (WFDatabaseObjectDescriptor)initWithDictionaryRepresentation:(id)a3;
- (WFDatabaseObjectDescriptor)initWithIdentifier:(id)a3 objectType:(unint64_t)a4;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFDatabaseObjectDescriptor

- (unint64_t)hash
{
  v3 = [(WFDatabaseObjectDescriptor *)self identifier];
  v4 = [v3 hash];
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
  v4 = [(WFDatabaseObjectDescriptor *)self identifier];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (WFDatabaseObjectDescriptor)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"objectType"];
  v6 = [v5 unsignedIntegerValue];

  v7 = [v4 objectForKeyedSubscript:@"identifier"];

  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    self = [(WFDatabaseObjectDescriptor *)self initWithIdentifier:v7 objectType:v6];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(WFDatabaseObjectDescriptor *)self identifier];
  [v5 encodeObject:v4 forKey:@"identifier"];

  [v5 encodeInteger:-[WFDatabaseObjectDescriptor objectType](self forKey:{"objectType"), @"objectType"}];
}

- (WFDatabaseObjectDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFDatabaseObjectDescriptor;
  v5 = [(WFDatabaseObjectDescriptor *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_objectType = [v4 decodeIntegerForKey:@"objectType"];
    v8 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFDatabaseObjectDescriptor *)v4 identifier];
      v6 = [(WFDatabaseObjectDescriptor *)self identifier];
      v7 = [v5 isEqualToString:v6];
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
  v6 = [(WFDatabaseObjectDescriptor *)self identifier];
  v7 = [(WFDatabaseObjectDescriptor *)self objectType];
  if (v7 > 0xC)
  {
    v8 = @"Unknown";
  }

  else
  {
    v8 = off_1E7B025D8[v7];
  }

  v9 = v8;
  v10 = [v3 stringWithFormat:@"<%@: %p, identifier: %@, objectType: %@>", v5, self, v6, v9];

  return v10;
}

- (WFDatabaseObjectDescriptor)initWithIdentifier:(id)a3 objectType:(unint64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"WFDatabaseObjectDescriptor.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  if (a4 == 12)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"WFDatabaseObjectDescriptor.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"objectType != WFDatabaseObjectTypeOther"}];
  }

  v15.receiver = self;
  v15.super_class = WFDatabaseObjectDescriptor;
  v8 = [(WFDatabaseObjectDescriptor *)&v15 init];
  if (v8)
  {
    v9 = [v7 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v8->_objectType = a4;
    v11 = v8;
  }

  return v8;
}

+ (id)mockWithIdentifier:(id)a3 objectType:(unint64_t)a4
{
  v5 = a3;
  v6 = [[WFDatabaseObjectDescriptor alloc] initWithIdentifier:v5 objectType:a4];

  return v6;
}

@end