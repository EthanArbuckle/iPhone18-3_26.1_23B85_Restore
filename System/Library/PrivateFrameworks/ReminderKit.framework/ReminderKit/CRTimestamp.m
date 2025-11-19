@interface CRTimestamp
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTimestamp:(id)a3;
- (CRTimestamp)initWithCRCoder:(id)a3;
- (CRTimestamp)initWithProtobufTimestamp:(const void *)a3 decoder:(id)a4;
- (CRTimestamp)initWithReplica:(id)a3 andCounter:(int64_t)a4;
- (NSString)description;
- (id)earlierTimestamp:(id)a3;
- (id)laterTimestamp:(id)a3;
- (id)nextTimestamp;
- (id)nextTimestampForReplica:(id)a3;
- (id)shortDescription;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)encodeIntoProtobufTimestamp:(void *)a3 coder:(id)a4;
- (void)encodeWithCRCoder:(id)a3;
- (void)mergeWith:(id)a3;
@end

@implementation CRTimestamp

- (CRTimestamp)initWithCRCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 currentDocumentObjectForDecoding];
  if (*(v5 + 48) == 7)
  {
    self = [(CRTimestamp *)self initWithProtobufTimestamp:*(v5 + 40) decoder:v4];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCRCoder:(id)a3
{
  v6 = a3;
  v4 = [v6 currentDocumentObjectForEncoding];
  v5 = v4;
  if (*(v4 + 48) != 7)
  {
    CRDT::Document_DocObject::clear_contents(v4);
    *(v5 + 48) = 7;
    operator new();
  }

  [(CRTimestamp *)self encodeIntoProtobufTimestamp:*(v4 + 40) coder:v6];
}

- (CRTimestamp)initWithProtobufTimestamp:(const void *)a3 decoder:(id)a4
{
  v6 = a4;
  v7 = [(CRTimestamp *)self init];
  if (v7)
  {
    v8 = *(a3 + 8);
    if (v8)
    {
      v9 = [v6 decodeUUIDFromUUIDIndex:*(a3 + 5)];
      replica = v7->_replica;
      v7->_replica = v9;

      v8 = *(a3 + 8);
    }

    if ((v8 & 2) != 0)
    {
      v7->_counter = *(a3 + 6);
    }
  }

  return v7;
}

- (void)encodeIntoProtobufTimestamp:(void *)a3 coder:(id)a4
{
  v10 = a4;
  v6 = [(CRTimestamp *)self replica];

  if (v6)
  {
    v7 = [(CRTimestamp *)self replica];
    v8 = [v10 encodeUUIDIndexFromUUID:v7];
    *(a3 + 8) |= 1u;
    *(a3 + 5) = v8;
  }

  v9 = [(CRTimestamp *)self counter];
  *(a3 + 8) |= 2u;
  *(a3 + 6) = v9;
}

- (CRTimestamp)initWithReplica:(id)a3 andCounter:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CRTimestamp;
  v8 = [(CRTimestamp *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_replica, a3);
    v9->_counter = a4;
  }

  return v9;
}

- (void)mergeWith:(id)a3
{
  v5 = a3;
  if ([v5 compare:self] == 1)
  {
    v4 = [v5 replica];
    [(CRTimestamp *)self setReplica:v4];

    -[CRTimestamp setCounter:](self, "setCounter:", [v5 counter]);
  }
}

- (id)nextTimestampForReplica:(id)a3
{
  v4 = a3;
  v5 = [(CRTimestamp *)self replica];
  v6 = [v5 CR_compare:v4];

  v7 = [CRTimestamp alloc];
  if (v6 == -1)
  {
    v8 = [(CRTimestamp *)self counter];
  }

  else
  {
    v8 = [(CRTimestamp *)self counter]+ 1;
  }

  v9 = [(CRTimestamp *)v7 initWithReplica:v4 andCounter:v8];

  return v9;
}

- (id)nextTimestamp
{
  v3 = [CRTimestamp alloc];
  v4 = [(CRTimestamp *)self replica];
  v5 = [(CRTimestamp *)v3 initWithReplica:v4 andCounter:[(CRTimestamp *)self counter]+ 1];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CRTimestamp *)self isEqualToTimestamp:v4];

  return v5;
}

- (BOOL)isEqualToTimestamp:(id)a3
{
  v4 = a3;
  v5 = [(CRTimestamp *)self counter];
  if (v5 == [v4 counter])
  {
    v6 = [(CRTimestamp *)self replica];
    v7 = [v4 replica];
    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(CRTimestamp *)self replica];
  v4 = [v3 hash];
  v5 = [(CRTimestamp *)self counter];

  return v5 ^ v4;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(CRTimestamp *)self counter];
  if (v5 == [v4 counter])
  {
    v6 = [(CRTimestamp *)self replica];
    v7 = [v4 replica];
    v8 = [v6 CR_compare:v7];
  }

  else
  {
    v9 = [(CRTimestamp *)self counter];
    if (v9 > [v4 counter])
    {
      v8 = 1;
    }

    else
    {
      v8 = -1;
    }
  }

  return v8;
}

- (id)earlierTimestamp:(id)a3
{
  v4 = a3;
  if ([(CRTimestamp *)self compare:v4]== 1)
  {
    self = v4;
  }

  v5 = self;

  return self;
}

- (id)laterTimestamp:(id)a3
{
  v4 = a3;
  if ([(CRTimestamp *)self compare:v4]== -1)
  {
    self = v4;
  }

  v5 = self;

  return self;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CRTimestamp *)self counter];
  v7 = [(CRTimestamp *)self replica];
  v8 = [v3 stringWithFormat:@"<%@ %p %ld:%@>", v5, self, v6, v7];

  return v8;
}

- (id)shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CRTimestamp *)self counter];
  v5 = [(CRTimestamp *)self replica];
  v6 = [v5 CR_shortDescription];
  v7 = [v3 stringWithFormat:@"%ld:%@", v4, v6];

  return v7;
}

@end