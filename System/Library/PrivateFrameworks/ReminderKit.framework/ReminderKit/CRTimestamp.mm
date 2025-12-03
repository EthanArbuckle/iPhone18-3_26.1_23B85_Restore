@interface CRTimestamp
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTimestamp:(id)timestamp;
- (CRTimestamp)initWithCRCoder:(id)coder;
- (CRTimestamp)initWithProtobufTimestamp:(const void *)timestamp decoder:(id)decoder;
- (CRTimestamp)initWithReplica:(id)replica andCounter:(int64_t)counter;
- (NSString)description;
- (id)earlierTimestamp:(id)timestamp;
- (id)laterTimestamp:(id)timestamp;
- (id)nextTimestamp;
- (id)nextTimestampForReplica:(id)replica;
- (id)shortDescription;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeIntoProtobufTimestamp:(void *)timestamp coder:(id)coder;
- (void)encodeWithCRCoder:(id)coder;
- (void)mergeWith:(id)with;
@end

@implementation CRTimestamp

- (CRTimestamp)initWithCRCoder:(id)coder
{
  coderCopy = coder;
  currentDocumentObjectForDecoding = [coderCopy currentDocumentObjectForDecoding];
  if (*(currentDocumentObjectForDecoding + 48) == 7)
  {
    self = [(CRTimestamp *)self initWithProtobufTimestamp:*(currentDocumentObjectForDecoding + 40) decoder:coderCopy];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCRCoder:(id)coder
{
  coderCopy = coder;
  currentDocumentObjectForEncoding = [coderCopy currentDocumentObjectForEncoding];
  v5 = currentDocumentObjectForEncoding;
  if (*(currentDocumentObjectForEncoding + 48) != 7)
  {
    CRDT::Document_DocObject::clear_contents(currentDocumentObjectForEncoding);
    *(v5 + 48) = 7;
    operator new();
  }

  [(CRTimestamp *)self encodeIntoProtobufTimestamp:*(currentDocumentObjectForEncoding + 40) coder:coderCopy];
}

- (CRTimestamp)initWithProtobufTimestamp:(const void *)timestamp decoder:(id)decoder
{
  decoderCopy = decoder;
  v7 = [(CRTimestamp *)self init];
  if (v7)
  {
    v8 = *(timestamp + 8);
    if (v8)
    {
      v9 = [decoderCopy decodeUUIDFromUUIDIndex:*(timestamp + 5)];
      replica = v7->_replica;
      v7->_replica = v9;

      v8 = *(timestamp + 8);
    }

    if ((v8 & 2) != 0)
    {
      v7->_counter = *(timestamp + 6);
    }
  }

  return v7;
}

- (void)encodeIntoProtobufTimestamp:(void *)timestamp coder:(id)coder
{
  coderCopy = coder;
  replica = [(CRTimestamp *)self replica];

  if (replica)
  {
    replica2 = [(CRTimestamp *)self replica];
    v8 = [coderCopy encodeUUIDIndexFromUUID:replica2];
    *(timestamp + 8) |= 1u;
    *(timestamp + 5) = v8;
  }

  counter = [(CRTimestamp *)self counter];
  *(timestamp + 8) |= 2u;
  *(timestamp + 6) = counter;
}

- (CRTimestamp)initWithReplica:(id)replica andCounter:(int64_t)counter
{
  replicaCopy = replica;
  v11.receiver = self;
  v11.super_class = CRTimestamp;
  v8 = [(CRTimestamp *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_replica, replica);
    v9->_counter = counter;
  }

  return v9;
}

- (void)mergeWith:(id)with
{
  withCopy = with;
  if ([withCopy compare:self] == 1)
  {
    replica = [withCopy replica];
    [(CRTimestamp *)self setReplica:replica];

    -[CRTimestamp setCounter:](self, "setCounter:", [withCopy counter]);
  }
}

- (id)nextTimestampForReplica:(id)replica
{
  replicaCopy = replica;
  replica = [(CRTimestamp *)self replica];
  v6 = [replica CR_compare:replicaCopy];

  v7 = [CRTimestamp alloc];
  if (v6 == -1)
  {
    counter = [(CRTimestamp *)self counter];
  }

  else
  {
    counter = [(CRTimestamp *)self counter]+ 1;
  }

  v9 = [(CRTimestamp *)v7 initWithReplica:replicaCopy andCounter:counter];

  return v9;
}

- (id)nextTimestamp
{
  v3 = [CRTimestamp alloc];
  replica = [(CRTimestamp *)self replica];
  v5 = [(CRTimestamp *)v3 initWithReplica:replica andCounter:[(CRTimestamp *)self counter]+ 1];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CRTimestamp *)self isEqualToTimestamp:equalCopy];

  return v5;
}

- (BOOL)isEqualToTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  counter = [(CRTimestamp *)self counter];
  if (counter == [timestampCopy counter])
  {
    replica = [(CRTimestamp *)self replica];
    replica2 = [timestampCopy replica];
    v8 = [replica isEqual:replica2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  replica = [(CRTimestamp *)self replica];
  v4 = [replica hash];
  counter = [(CRTimestamp *)self counter];

  return counter ^ v4;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  counter = [(CRTimestamp *)self counter];
  if (counter == [compareCopy counter])
  {
    replica = [(CRTimestamp *)self replica];
    replica2 = [compareCopy replica];
    v8 = [replica CR_compare:replica2];
  }

  else
  {
    counter2 = [(CRTimestamp *)self counter];
    if (counter2 > [compareCopy counter])
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

- (id)earlierTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  if ([(CRTimestamp *)self compare:timestampCopy]== 1)
  {
    self = timestampCopy;
  }

  selfCopy = self;

  return self;
}

- (id)laterTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  if ([(CRTimestamp *)self compare:timestampCopy]== -1)
  {
    self = timestampCopy;
  }

  selfCopy = self;

  return self;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  counter = [(CRTimestamp *)self counter];
  replica = [(CRTimestamp *)self replica];
  v8 = [v3 stringWithFormat:@"<%@ %p %ld:%@>", v5, self, counter, replica];

  return v8;
}

- (id)shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  counter = [(CRTimestamp *)self counter];
  replica = [(CRTimestamp *)self replica];
  cR_shortDescription = [replica CR_shortDescription];
  v7 = [v3 stringWithFormat:@"%ld:%@", counter, cR_shortDescription];

  return v7;
}

@end