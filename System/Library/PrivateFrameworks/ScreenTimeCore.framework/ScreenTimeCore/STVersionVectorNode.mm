@interface STVersionVectorNode
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToNode:(id)node;
- (NSDictionary)dictionaryRepresentation;
- (STVersionVectorNode)initWithCoder:(id)coder;
- (STVersionVectorNode)initWithDictionaryRepresentation:(id)representation;
- (STVersionVectorNode)initWithIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)increment;
- (void)join:(id)join;
@end

@implementation STVersionVectorNode

- (STVersionVectorNode)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = STVersionVectorNode;
  v5 = [(STVersionVectorNode *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_count = 0;
  }

  return v5;
}

- (STVersionVectorNode)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  allKeys = [representationCopy allKeys];
  firstObject = [allKeys firstObject];

  v7 = [(STVersionVectorNode *)self initWithIdentifier:firstObject];
  if (v7)
  {
    v8 = [representationCopy objectForKeyedSubscript:firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 objectForKeyedSubscript:@"c"];
      v7->_count = [v9 unsignedIntegerValue];
    }
  }

  return v7;
}

- (NSDictionary)dictionaryRepresentation
{
  v12[1] = *MEMORY[0x1E69E9840];
  identifier = [(STVersionVectorNode *)self identifier];
  v11 = identifier;
  v9 = @"c";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[STVersionVectorNode count](self, "count")}];
  v10 = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v12[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)increment
{
  v3 = [(STVersionVectorNode *)self count]+ 1;

  [(STVersionVectorNode *)self setCount:v3];
}

- (void)join:(id)join
{
  joinCopy = join;
  identifier = [(STVersionVectorNode *)self identifier];
  identifier2 = [joinCopy identifier];
  v7 = [identifier isEqualToString:identifier2];

  if (v7)
  {
    v8 = [joinCopy count];
    v9 = [(STVersionVectorNode *)self count];
    if (v8 <= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }

    self->_count = v10;
  }

  else
  {
    v11 = +[STLog versionVector];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [STVersionVectorNode join:v11];
    }
  }
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  identifier = [(STVersionVectorNode *)self identifier];
  identifier2 = [compareCopy identifier];
  v8 = [identifier isEqualToString:identifier2];

  if ((v8 & 1) == 0)
  {
    [(STVersionVectorNode *)a2 compare:?];
  }

  v9 = [(STVersionVectorNode *)self count];
  if (v9 >= [compareCopy count])
  {
    v11 = [(STVersionVectorNode *)self count];
    v10 = v11 > [compareCopy count];
  }

  else
  {
LABEL_5:
    v10 = -1;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(STVersionVectorNode *)self identifier];
  v5 = [v3 stringWithFormat:@"%@: %lu", identifier, -[STVersionVectorNode count](self, "count")];

  return v5;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(STVersionVectorNode *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@: %p { identifier = %@, count = %lu }>", v4, self, identifier, -[STVersionVectorNode count](self, "count")];

  return v6;
}

- (BOOL)isEqualToNode:(id)node
{
  nodeCopy = node;
  v5 = nodeCopy;
  if (nodeCopy == self)
  {
    v9 = 1;
  }

  else
  {
    identifier = [(STVersionVectorNode *)nodeCopy identifier];
    identifier2 = [(STVersionVectorNode *)self identifier];
    if ([identifier isEqual:identifier2])
    {
      v8 = [(STVersionVectorNode *)v5 count];
      v9 = v8 == [(STVersionVectorNode *)self count];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    identifier = [(STVersionVectorNode *)equalCopy identifier];
    identifier2 = [(STVersionVectorNode *)self identifier];
    v8 = [identifier isEqual:identifier2];
  }

  return v8;
}

- (unint64_t)hash
{
  identifier = [(STVersionVectorNode *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (STVersionVectorNode)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = STVersionVectorNode;
  v5 = [(STVersionVectorNode *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"count"];
    v5->_count = [v8 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_count];
  [coderCopy encodeObject:v6 forKey:@"count"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_alloc(objc_opt_class()) initWithIdentifier:self->_identifier];
  [v4 setCount:self->_count];
  return v4;
}

- (void)compare:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STVersionVectorNode.m" lineNumber:72 description:@"Cannot compare vector nodes with different identifiers"];
}

@end