@interface USOSerializedGraphEdge
- (USOSerializedGraphEdge)initWithCoder:(id)a3;
- (USOSerializedGraphEdge)initWithUsoElementId:(int)a3 fromVertex:(unint64_t)a4 toVertex:(unint64_t)a5 enumeration:(unsigned int)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation USOSerializedGraphEdge

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[USOSerializedGraphEdge usoElementId](self, "usoElementId")}];
  [v9 encodeObject:v4 forKey:@"usoElementId"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[USOSerializedGraphEdge fromVertex](self, "fromVertex")}];
  [v9 encodeObject:v5 forKey:@"fromVertex"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[USOSerializedGraphEdge toVertex](self, "toVertex")}];
  [v9 encodeObject:v6 forKey:@"toVertex"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSerializedGraphEdge enumeration](self, "enumeration")}];
  [v9 encodeObject:v7 forKey:@"enumeration"];

  v8 = [(USOSerializedGraphEdge *)self edgeLabel];
  [v9 encodeObject:v8 forKey:@"edgeLabel"];
}

- (USOSerializedGraphEdge)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = USOSerializedGraphEdge;
  v5 = [(USOSerializedGraphEdge *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"usoElementId"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fromVertex"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"toVertex"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"enumeration"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"edgeLabel"];
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

- (USOSerializedGraphEdge)initWithUsoElementId:(int)a3 fromVertex:(unint64_t)a4 toVertex:(unint64_t)a5 enumeration:(unsigned int)a6
{
  self->_fromVertex = a4;
  self->_toVertex = a5;
  self->_usoElementId = a3;
  self->_enumeration = a6;
  return self;
}

@end