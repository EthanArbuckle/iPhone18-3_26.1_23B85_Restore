@interface CRRegisterLatest
- (BOOL)isEqualContents:(id)a3;
- (CRRegisterLatest)initWithCRCoder:(id)a3;
- (CRRegisterLatest)initWithContents:(id)a3 document:(id)a4;
- (CRRegisterLatest)initWithContents:(id)a3 timestamp:(id)a4 document:(id)a5;
- (CRRegisterLatest)initWithProtobufRegisterLatest:(const void *)a3 decoder:(id)a4;
- (id)deltaSince:(id)a3 in:(id)a4;
- (id)description;
- (void)encodeIntoProtobufRegisterLatest:(void *)a3 coder:(id)a4;
- (void)encodeWithCRCoder:(id)a3;
- (void)mergeWith:(id)a3;
- (void)mergeWithRegisterLatest:(id)a3;
- (void)realizeLocalChangesIn:(id)a3;
- (void)setContents:(id)a3;
- (void)setDocument:(id)a3;
- (void)walkGraph:(id)a3;
@end

@implementation CRRegisterLatest

- (CRRegisterLatest)initWithContents:(id)a3 document:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [CRTimestamp alloc];
  v9 = +[CRReplica unserialisedIdentifier];
  v10 = [(CRTimestamp *)v8 initWithReplica:v9 andCounter:0];

  v11 = [(CRRegisterLatest *)self initWithContents:v6 timestamp:v10 document:v7];
  return v11;
}

- (CRRegisterLatest)initWithContents:(id)a3 timestamp:(id)a4 document:(id)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = CRRegisterLatest;
  v11 = [(CRRegister *)&v14 initWithDocument:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_timestamp, a4);
    objc_storeStrong(&v12->_contents, a3);
  }

  return v12;
}

- (void)encodeWithCRCoder:(id)a3
{
  v6 = a3;
  v4 = [v6 currentDocumentObjectForEncoding];
  v5 = v4;
  if (*(v4 + 48) != 1)
  {
    CRDT::Document_DocObject::clear_contents(v4);
    *(v5 + 48) = 1;
    operator new();
  }

  [(CRRegisterLatest *)self encodeIntoProtobufRegisterLatest:*(v4 + 40) coder:v6];
}

- (CRRegisterLatest)initWithCRCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 currentDocumentObjectForDecoding];
  if (*(v5 + 48) == 1)
  {
    v6 = [(CRRegisterLatest *)self initWithProtobufRegisterLatest:*(v5 + 40) decoder:v4];
  }

  else
  {
    v7 = [v4 document];
    v6 = [(CRRegisterLatest *)self initWithContents:0 document:v7];
  }

  return v6;
}

- (CRRegisterLatest)initWithProtobufRegisterLatest:(const void *)a3 decoder:(id)a4
{
  v6 = a4;
  v7 = v6;
  v8 = *(a3 + 8);
  if ((v8 & 2) != 0)
  {
    v10 = *(a3 + 6);
    if (!v10)
    {
      v10 = *(CRDT::RegisterLatest::default_instance(v6) + 48);
    }

    v11 = [(CRDT::RegisterLatest *)v7 decodeObjectForProtobufObjectID:v10];
    v8 = *(a3 + 8);
    v9 = v11;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v16 = [CRTimestamp alloc];
    v17 = v16;
    v18 = *(a3 + 5);
    if (!v18)
    {
      v18 = *(CRDT::RegisterLatest::default_instance(v16) + 40);
    }

    v15 = [(CRTimestamp *)v17 initWithProtobufTimestamp:v18 decoder:v7];
  }

  else
  {
    v12 = [CRTimestamp alloc];
    v13 = [(CRDT::RegisterLatest *)v7 document];
    v14 = [v13 replica];
    v15 = [(CRTimestamp *)v12 initWithReplica:v14 andCounter:0];
  }

  v19 = [(CRDT::RegisterLatest *)v7 document];
  v20 = [(CRRegisterLatest *)self initWithContents:v9 timestamp:v15 document:v19];

  return v20;
}

- (void)encodeIntoProtobufRegisterLatest:(void *)a3 coder:(id)a4
{
  v13 = a4;
  v6 = [(CRRegisterLatest *)self timestamp];
  *(a3 + 8) |= 1u;
  v7 = *(a3 + 5);
  if (!v7)
  {
    operator new();
  }

  [v6 encodeIntoProtobufTimestamp:v7 coder:v13];

  v8 = [(CRRegisterLatest *)self contents];

  if (v8)
  {
    v9 = [(CRRegisterLatest *)self contents];
    v10 = [v9 conformsToProtocol:&unk_1F0DB3B90];

    if (v10)
    {
      v11 = [(CRRegisterLatest *)self contents];
      *(a3 + 8) |= 2u;
      v12 = *(a3 + 6);
      if (!v12)
      {
        operator new();
      }

      [v13 encodeObject:v11 forObjectID:v12];
    }
  }
}

- (void)setContents:(id)a3
{
  v5 = a3;
  if (self->_contents != v5)
  {
    v17 = v5;
    objc_storeStrong(&self->_contents, a3);
    v6 = [(CRRegisterLatest *)self timestamp];
    v7 = [v6 replica];
    v8 = +[CRReplica unserialisedIdentifier];

    if (v7 != v8)
    {
      v9 = [(CRRegister *)self document];
      v10 = [v9 replicaClock];

      v11 = [(CRRegisterLatest *)self timestamp];
      v12 = [v11 counter];

      if (v10 > v12)
      {
        v12 = v10;
      }

      v13 = [CRTimestamp alloc];
      v14 = +[CRReplica unserialisedIdentifier];
      v15 = [(CRTimestamp *)v13 initWithReplica:v14 andCounter:v12 + 1];
      [(CRRegisterLatest *)self setTimestamp:v15];
    }

    v16 = [(CRRegister *)self document];
    [v16 setDocumentFor:v17];

    v5 = v17;
  }
}

- (BOOL)isEqualContents:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CRRegisterLatest *)self contents];
    v6 = [v4 contents];
    if ([v5 isEqual:v6])
    {
      v7 = [(CRRegisterLatest *)self timestamp];
      v8 = [v4 timestamp];
      v9 = [v7 isEqual:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)realizeLocalChangesIn:(id)a3
{
  v15 = a3;
  v4 = [(CRRegisterLatest *)self timestamp];
  v5 = [v4 replica];
  v6 = +[CRReplica unserialisedIdentifier];

  if (v5 == v6)
  {
    v7 = [(CRRegisterLatest *)self timestamp];
    if ([v7 counter])
    {
      v8 = [(CRRegisterLatest *)self timestamp];
      v9 = [v8 counter];
    }

    else
    {
      v9 = [v15 replicaClock] + 1;
    }

    v10 = [CRTimestamp alloc];
    v11 = [v15 replica];
    v12 = [(CRTimestamp *)v10 initWithReplica:v11 andCounter:v9];
    [(CRRegisterLatest *)self setTimestamp:v12];

    v13 = [v15 unserializedReplicaClock];
    if (v9 <= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v9;
    }

    [v15 setUnserializedReplicaClock:v14];
  }
}

- (void)mergeWith:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Invalid CRRegisterLatest merge userInfo:{classes must be equal for merge.", 0}];
      objc_exception_throw(v4);
    }

    [(CRRegisterLatest *)self mergeWithRegisterLatest:v5];
  }
}

- (void)mergeWithRegisterLatest:(id)a3
{
  v9 = a3;
  v4 = [(CRRegisterLatest *)self timestamp];
  v5 = [v9 timestamp];
  v6 = [v4 compare:v5];

  if (v6 == -1)
  {
    v7 = [v9 contents];
    [(CRRegisterLatest *)self setContents:v7];

    v8 = [v9 timestamp];
    [(CRRegisterLatest *)self setTimestamp:v8];
  }
}

- (void)setDocument:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CRRegisterLatest;
  [(CRRegister *)&v8 setDocument:v4];
  v5 = [(CRRegisterLatest *)self contents];
  v6 = [v4 localObject:v5];
  contents = self->_contents;
  self->_contents = v6;
}

- (id)deltaSince:(id)a3 in:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRRegisterLatest *)self timestamp];
  v9 = [v8 replica];
  v10 = [v6 timestampForReplica:v9];
  v11 = [(CRRegisterLatest *)self timestamp];
  v12 = [v10 compare:v11];

  if (v12)
  {
    if (v12 == -1)
    {
      v13 = self;
      goto LABEL_7;
    }
  }

  else
  {
    v14 = [(CRRegisterLatest *)self contents];
    v15 = [v14 deltaSince:v6 in:v7];

    if (v15)
    {
      v16 = [CRRegisterLatest alloc];
      v17 = [(CRRegisterLatest *)self timestamp];
      v13 = [(CRRegisterLatest *)v16 initWithContents:v15 timestamp:v17 document:v7];

      goto LABEL_7;
    }
  }

  v13 = 0;
LABEL_7:

  return v13;
}

- (void)walkGraph:(id)a3
{
  v5 = a3;
  v4 = [(CRRegisterLatest *)self contents];
  v5[2](v5, v4);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CRRegisterLatest *)self timestamp];
  v7 = [v6 shortDescription];
  v8 = [(CRRegisterLatest *)self contents];
  v9 = [v3 stringWithFormat:@"<%@ %p %@ %@>", v5, self, v7, v8];

  return v9;
}

@end