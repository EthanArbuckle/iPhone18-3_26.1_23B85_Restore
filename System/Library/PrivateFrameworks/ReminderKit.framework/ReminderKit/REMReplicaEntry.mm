@interface REMReplicaEntry
- (BOOL)hasEqualPersistedPropertiesAs:(id)a3;
- (REMReplicaEntry)initWithEntryArchive:(const void *)a3;
- (REMReplicaEntry)initWithReplicaUUIDIndex:(unsigned int)a3 clockElementList:(id)a4 inUse:(BOOL)a5 forClient:(id)a6;
- (id)description;
- (id)persistenceDescription;
- (void)encodeIntoEntryArchive:(void *)a3;
@end

@implementation REMReplicaEntry

- (REMReplicaEntry)initWithReplicaUUIDIndex:(unsigned int)a3 clockElementList:(id)a4 inUse:(BOOL)a5 forClient:(id)a6
{
  v11 = a4;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = REMReplicaEntry;
  v13 = [(REMReplicaEntry *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_replicaUUIDIndex = a3;
    objc_storeStrong(&v13->_clockElementList, a4);
    v14->_inUse = a5;
    v14->_client = v12;
  }

  return v14;
}

- (void)encodeIntoEntryArchive:(void *)a3
{
  v5 = [(REMReplicaEntry *)self replicaUUIDIndex];
  *(a3 + 8) |= 2u;
  *(a3 + 11) = v5;
  v6 = [(REMReplicaEntry *)self clockElementList];
  [v6 encodeIntoEntryArchive:a3];
}

- (REMReplicaEntry)initWithEntryArchive:(const void *)a3
{
  v5 = [[REMClockElementList alloc] initWithEntryArchive:a3];
  v6 = [(REMReplicaEntry *)self initWithReplicaUUIDIndex:*(a3 + 11) clockElementList:v5 inUse:0 forClient:0];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMReplicaEntry *)self replicaUUIDIndex];
  v6 = [(REMReplicaEntry *)self clockElementList];
  v7 = [(REMReplicaEntry *)self inUse];
  v8 = @"Available";
  if (v7)
  {
    v8 = @"In Use";
  }

  v9 = [v3 stringWithFormat:@"<%@: %p>{UUID: %d, clock: %@, state: %@}", v4, self, v5, v6, v8];

  return v9;
}

- (id)persistenceDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(REMReplicaEntry *)self replicaUUIDIndex];
  v5 = [(REMReplicaEntry *)self clockElementList];
  v6 = [v3 stringWithFormat:@"{UUID: %d, clock: %@}", v4, v5];

  return v6;
}

- (BOOL)hasEqualPersistedPropertiesAs:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    v5 = [(REMReplicaEntry *)self replicaUUIDIndex];
    if (v5 == [(REMReplicaEntry *)v4 replicaUUIDIndex])
    {
      v6 = [(REMReplicaEntry *)self clockElementList];
      v7 = [(REMReplicaEntry *)v4 clockElementList];
      if (v6 == v7)
      {
        v10 = 1;
      }

      else
      {
        v8 = [(REMReplicaEntry *)self clockElementList];
        v9 = [(REMReplicaEntry *)v4 clockElementList];
        v10 = [v8 isEqual:v9];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10 & 1;
}

@end