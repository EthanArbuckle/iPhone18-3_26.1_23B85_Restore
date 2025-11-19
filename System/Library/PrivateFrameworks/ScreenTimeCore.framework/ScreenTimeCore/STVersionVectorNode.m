@interface STVersionVectorNode
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToNode:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (STVersionVectorNode)initWithCoder:(id)a3;
- (STVersionVectorNode)initWithDictionaryRepresentation:(id)a3;
- (STVersionVectorNode)initWithIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)increment;
- (void)join:(id)a3;
@end

@implementation STVersionVectorNode

- (STVersionVectorNode)initWithIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STVersionVectorNode;
  v5 = [(STVersionVectorNode *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_count = 0;
  }

  return v5;
}

- (STVersionVectorNode)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 allKeys];
  v6 = [v5 firstObject];

  v7 = [(STVersionVectorNode *)self initWithIdentifier:v6];
  if (v7)
  {
    v8 = [v4 objectForKeyedSubscript:v6];
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
  v3 = [(STVersionVectorNode *)self identifier];
  v11 = v3;
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

- (void)join:(id)a3
{
  v4 = a3;
  v5 = [(STVersionVectorNode *)self identifier];
  v6 = [v4 identifier];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = [v4 count];
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

- (int64_t)compare:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  v6 = [(STVersionVectorNode *)self identifier];
  v7 = [v5 identifier];
  v8 = [v6 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    [(STVersionVectorNode *)a2 compare:?];
  }

  v9 = [(STVersionVectorNode *)self count];
  if (v9 >= [v5 count])
  {
    v11 = [(STVersionVectorNode *)self count];
    v10 = v11 > [v5 count];
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
  v4 = [(STVersionVectorNode *)self identifier];
  v5 = [v3 stringWithFormat:@"%@: %lu", v4, -[STVersionVectorNode count](self, "count")];

  return v5;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(STVersionVectorNode *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@: %p { identifier = %@, count = %lu }>", v4, self, v5, -[STVersionVectorNode count](self, "count")];

  return v6;
}

- (BOOL)isEqualToNode:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    v6 = [(STVersionVectorNode *)v4 identifier];
    v7 = [(STVersionVectorNode *)self identifier];
    if ([v6 isEqual:v7])
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    v6 = [(STVersionVectorNode *)v4 identifier];
    v7 = [(STVersionVectorNode *)self identifier];
    v8 = [v6 isEqual:v7];
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(STVersionVectorNode *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (STVersionVectorNode)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = STVersionVectorNode;
  v5 = [(STVersionVectorNode *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"count"];
    v5->_count = [v8 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_count];
  [v5 encodeObject:v6 forKey:@"count"];
}

- (id)copyWithZone:(_NSZone *)a3
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