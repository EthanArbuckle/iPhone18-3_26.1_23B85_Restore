@interface USOSerializedGraphEdge
- (USOSerializedGraphEdge)initWithCoder:(id)coder;
- (USOSerializedGraphEdge)initWithUsoElementId:(int)id fromVertex:(unint64_t)vertex toVertex:(unint64_t)toVertex enumeration:(unsigned int)enumeration;
- (void)encodeWithCoder:(id)coder;
@end

@implementation USOSerializedGraphEdge

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[USOSerializedGraphEdge usoElementId](self, "usoElementId")}];
  [coderCopy encodeObject:v4 forKey:@"usoElementId"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[USOSerializedGraphEdge fromVertex](self, "fromVertex")}];
  [coderCopy encodeObject:v5 forKey:@"fromVertex"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[USOSerializedGraphEdge toVertex](self, "toVertex")}];
  [coderCopy encodeObject:v6 forKey:@"toVertex"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSerializedGraphEdge enumeration](self, "enumeration")}];
  [coderCopy encodeObject:v7 forKey:@"enumeration"];

  edgeLabel = [(USOSerializedGraphEdge *)self edgeLabel];
  [coderCopy encodeObject:edgeLabel forKey:@"edgeLabel"];
}

- (USOSerializedGraphEdge)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = USOSerializedGraphEdge;
  v5 = [(USOSerializedGraphEdge *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"usoElementId"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fromVertex"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"toVertex"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"enumeration"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"edgeLabel"];
    v5->_usoElementId = [v6 intValue];
    v5->_fromVertex = [v7 unsignedLongLongValue];
    v5->_toVertex = [v8 unsignedLongLongValue];
    v5->_enumeration = [v9 unsignedIntValue];
    edgeLabel = v5->_edgeLabel;
    v5->_edgeLabel = v10;

    v12 = v5;
  }

  return v5;
}

- (USOSerializedGraphEdge)initWithUsoElementId:(int)id fromVertex:(unint64_t)vertex toVertex:(unint64_t)toVertex enumeration:(unsigned int)enumeration
{
  self->_fromVertex = vertex;
  self->_toVertex = toVertex;
  self->_usoElementId = id;
  self->_enumeration = enumeration;
  return self;
}

@end