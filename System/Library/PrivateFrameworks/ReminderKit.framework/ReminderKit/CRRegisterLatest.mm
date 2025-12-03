@interface CRRegisterLatest
- (BOOL)isEqualContents:(id)contents;
- (CRRegisterLatest)initWithCRCoder:(id)coder;
- (CRRegisterLatest)initWithContents:(id)contents document:(id)document;
- (CRRegisterLatest)initWithContents:(id)contents timestamp:(id)timestamp document:(id)document;
- (CRRegisterLatest)initWithProtobufRegisterLatest:(const void *)latest decoder:(id)decoder;
- (id)deltaSince:(id)since in:(id)in;
- (id)description;
- (void)encodeIntoProtobufRegisterLatest:(void *)latest coder:(id)coder;
- (void)encodeWithCRCoder:(id)coder;
- (void)mergeWith:(id)with;
- (void)mergeWithRegisterLatest:(id)latest;
- (void)realizeLocalChangesIn:(id)in;
- (void)setContents:(id)contents;
- (void)setDocument:(id)document;
- (void)walkGraph:(id)graph;
@end

@implementation CRRegisterLatest

- (CRRegisterLatest)initWithContents:(id)contents document:(id)document
{
  contentsCopy = contents;
  documentCopy = document;
  v8 = [CRTimestamp alloc];
  v9 = +[CRReplica unserialisedIdentifier];
  v10 = [(CRTimestamp *)v8 initWithReplica:v9 andCounter:0];

  v11 = [(CRRegisterLatest *)self initWithContents:contentsCopy timestamp:v10 document:documentCopy];
  return v11;
}

- (CRRegisterLatest)initWithContents:(id)contents timestamp:(id)timestamp document:(id)document
{
  contentsCopy = contents;
  timestampCopy = timestamp;
  v14.receiver = self;
  v14.super_class = CRRegisterLatest;
  v11 = [(CRRegister *)&v14 initWithDocument:document];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_timestamp, timestamp);
    objc_storeStrong(&v12->_contents, contents);
  }

  return v12;
}

- (void)encodeWithCRCoder:(id)coder
{
  coderCopy = coder;
  currentDocumentObjectForEncoding = [coderCopy currentDocumentObjectForEncoding];
  v5 = currentDocumentObjectForEncoding;
  if (*(currentDocumentObjectForEncoding + 48) != 1)
  {
    CRDT::Document_DocObject::clear_contents(currentDocumentObjectForEncoding);
    *(v5 + 48) = 1;
    operator new();
  }

  [(CRRegisterLatest *)self encodeIntoProtobufRegisterLatest:*(currentDocumentObjectForEncoding + 40) coder:coderCopy];
}

- (CRRegisterLatest)initWithCRCoder:(id)coder
{
  coderCopy = coder;
  currentDocumentObjectForDecoding = [coderCopy currentDocumentObjectForDecoding];
  if (*(currentDocumentObjectForDecoding + 48) == 1)
  {
    v6 = [(CRRegisterLatest *)self initWithProtobufRegisterLatest:*(currentDocumentObjectForDecoding + 40) decoder:coderCopy];
  }

  else
  {
    document = [coderCopy document];
    v6 = [(CRRegisterLatest *)self initWithContents:0 document:document];
  }

  return v6;
}

- (CRRegisterLatest)initWithProtobufRegisterLatest:(const void *)latest decoder:(id)decoder
{
  decoderCopy = decoder;
  v7 = decoderCopy;
  v8 = *(latest + 8);
  if ((v8 & 2) != 0)
  {
    v10 = *(latest + 6);
    if (!v10)
    {
      v10 = *(CRDT::RegisterLatest::default_instance(decoderCopy) + 48);
    }

    v11 = [(CRDT::RegisterLatest *)v7 decodeObjectForProtobufObjectID:v10];
    v8 = *(latest + 8);
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
    v18 = *(latest + 5);
    if (!v18)
    {
      v18 = *(CRDT::RegisterLatest::default_instance(v16) + 40);
    }

    v15 = [(CRTimestamp *)v17 initWithProtobufTimestamp:v18 decoder:v7];
  }

  else
  {
    v12 = [CRTimestamp alloc];
    document = [(CRDT::RegisterLatest *)v7 document];
    replica = [document replica];
    v15 = [(CRTimestamp *)v12 initWithReplica:replica andCounter:0];
  }

  document2 = [(CRDT::RegisterLatest *)v7 document];
  v20 = [(CRRegisterLatest *)self initWithContents:v9 timestamp:v15 document:document2];

  return v20;
}

- (void)encodeIntoProtobufRegisterLatest:(void *)latest coder:(id)coder
{
  coderCopy = coder;
  timestamp = [(CRRegisterLatest *)self timestamp];
  *(latest + 8) |= 1u;
  v7 = *(latest + 5);
  if (!v7)
  {
    operator new();
  }

  [timestamp encodeIntoProtobufTimestamp:v7 coder:coderCopy];

  contents = [(CRRegisterLatest *)self contents];

  if (contents)
  {
    contents2 = [(CRRegisterLatest *)self contents];
    v10 = [contents2 conformsToProtocol:&unk_1F0DB3B90];

    if (v10)
    {
      contents3 = [(CRRegisterLatest *)self contents];
      *(latest + 8) |= 2u;
      v12 = *(latest + 6);
      if (!v12)
      {
        operator new();
      }

      [coderCopy encodeObject:contents3 forObjectID:v12];
    }
  }
}

- (void)setContents:(id)contents
{
  contentsCopy = contents;
  if (self->_contents != contentsCopy)
  {
    v17 = contentsCopy;
    objc_storeStrong(&self->_contents, contents);
    timestamp = [(CRRegisterLatest *)self timestamp];
    replica = [timestamp replica];
    v8 = +[CRReplica unserialisedIdentifier];

    if (replica != v8)
    {
      document = [(CRRegister *)self document];
      replicaClock = [document replicaClock];

      timestamp2 = [(CRRegisterLatest *)self timestamp];
      counter = [timestamp2 counter];

      if (replicaClock > counter)
      {
        counter = replicaClock;
      }

      v13 = [CRTimestamp alloc];
      v14 = +[CRReplica unserialisedIdentifier];
      v15 = [(CRTimestamp *)v13 initWithReplica:v14 andCounter:counter + 1];
      [(CRRegisterLatest *)self setTimestamp:v15];
    }

    document2 = [(CRRegister *)self document];
    [document2 setDocumentFor:v17];

    contentsCopy = v17;
  }
}

- (BOOL)isEqualContents:(id)contents
{
  contentsCopy = contents;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contents = [(CRRegisterLatest *)self contents];
    contents2 = [contentsCopy contents];
    if ([contents isEqual:contents2])
    {
      timestamp = [(CRRegisterLatest *)self timestamp];
      timestamp2 = [contentsCopy timestamp];
      v9 = [timestamp isEqual:timestamp2];
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

- (void)realizeLocalChangesIn:(id)in
{
  inCopy = in;
  timestamp = [(CRRegisterLatest *)self timestamp];
  replica = [timestamp replica];
  v6 = +[CRReplica unserialisedIdentifier];

  if (replica == v6)
  {
    timestamp2 = [(CRRegisterLatest *)self timestamp];
    if ([timestamp2 counter])
    {
      timestamp3 = [(CRRegisterLatest *)self timestamp];
      counter = [timestamp3 counter];
    }

    else
    {
      counter = [inCopy replicaClock] + 1;
    }

    v10 = [CRTimestamp alloc];
    replica2 = [inCopy replica];
    v12 = [(CRTimestamp *)v10 initWithReplica:replica2 andCounter:counter];
    [(CRRegisterLatest *)self setTimestamp:v12];

    unserializedReplicaClock = [inCopy unserializedReplicaClock];
    if (counter <= unserializedReplicaClock)
    {
      v14 = unserializedReplicaClock;
    }

    else
    {
      v14 = counter;
    }

    [inCopy setUnserializedReplicaClock:v14];
  }
}

- (void)mergeWith:(id)with
{
  withCopy = with;
  if (withCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Invalid CRRegisterLatest merge userInfo:{classes must be equal for merge.", 0}];
      objc_exception_throw(v4);
    }

    [(CRRegisterLatest *)self mergeWithRegisterLatest:withCopy];
  }
}

- (void)mergeWithRegisterLatest:(id)latest
{
  latestCopy = latest;
  timestamp = [(CRRegisterLatest *)self timestamp];
  timestamp2 = [latestCopy timestamp];
  v6 = [timestamp compare:timestamp2];

  if (v6 == -1)
  {
    contents = [latestCopy contents];
    [(CRRegisterLatest *)self setContents:contents];

    timestamp3 = [latestCopy timestamp];
    [(CRRegisterLatest *)self setTimestamp:timestamp3];
  }
}

- (void)setDocument:(id)document
{
  documentCopy = document;
  v8.receiver = self;
  v8.super_class = CRRegisterLatest;
  [(CRRegister *)&v8 setDocument:documentCopy];
  contents = [(CRRegisterLatest *)self contents];
  v6 = [documentCopy localObject:contents];
  contents = self->_contents;
  self->_contents = v6;
}

- (id)deltaSince:(id)since in:(id)in
{
  sinceCopy = since;
  inCopy = in;
  timestamp = [(CRRegisterLatest *)self timestamp];
  replica = [timestamp replica];
  v10 = [sinceCopy timestampForReplica:replica];
  timestamp2 = [(CRRegisterLatest *)self timestamp];
  v12 = [v10 compare:timestamp2];

  if (v12)
  {
    if (v12 == -1)
    {
      selfCopy = self;
      goto LABEL_7;
    }
  }

  else
  {
    contents = [(CRRegisterLatest *)self contents];
    v15 = [contents deltaSince:sinceCopy in:inCopy];

    if (v15)
    {
      v16 = [CRRegisterLatest alloc];
      timestamp3 = [(CRRegisterLatest *)self timestamp];
      selfCopy = [(CRRegisterLatest *)v16 initWithContents:v15 timestamp:timestamp3 document:inCopy];

      goto LABEL_7;
    }
  }

  selfCopy = 0;
LABEL_7:

  return selfCopy;
}

- (void)walkGraph:(id)graph
{
  graphCopy = graph;
  contents = [(CRRegisterLatest *)self contents];
  graphCopy[2](graphCopy, contents);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  timestamp = [(CRRegisterLatest *)self timestamp];
  shortDescription = [timestamp shortDescription];
  contents = [(CRRegisterLatest *)self contents];
  v9 = [v3 stringWithFormat:@"<%@ %p %@ %@>", v5, self, shortDescription, contents];

  return v9;
}

@end