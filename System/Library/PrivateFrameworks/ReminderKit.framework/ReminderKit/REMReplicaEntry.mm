@interface REMReplicaEntry
- (BOOL)hasEqualPersistedPropertiesAs:(id)as;
- (REMReplicaEntry)initWithEntryArchive:(const void *)archive;
- (REMReplicaEntry)initWithReplicaUUIDIndex:(unsigned int)index clockElementList:(id)list inUse:(BOOL)use forClient:(id)client;
- (id)description;
- (id)persistenceDescription;
- (void)encodeIntoEntryArchive:(void *)archive;
@end

@implementation REMReplicaEntry

- (REMReplicaEntry)initWithReplicaUUIDIndex:(unsigned int)index clockElementList:(id)list inUse:(BOOL)use forClient:(id)client
{
  listCopy = list;
  clientCopy = client;
  v16.receiver = self;
  v16.super_class = REMReplicaEntry;
  v13 = [(REMReplicaEntry *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_replicaUUIDIndex = index;
    objc_storeStrong(&v13->_clockElementList, list);
    v14->_inUse = use;
    v14->_client = clientCopy;
  }

  return v14;
}

- (void)encodeIntoEntryArchive:(void *)archive
{
  replicaUUIDIndex = [(REMReplicaEntry *)self replicaUUIDIndex];
  *(archive + 8) |= 2u;
  *(archive + 11) = replicaUUIDIndex;
  clockElementList = [(REMReplicaEntry *)self clockElementList];
  [clockElementList encodeIntoEntryArchive:archive];
}

- (REMReplicaEntry)initWithEntryArchive:(const void *)archive
{
  v5 = [[REMClockElementList alloc] initWithEntryArchive:archive];
  v6 = [(REMReplicaEntry *)self initWithReplicaUUIDIndex:*(archive + 11) clockElementList:v5 inUse:0 forClient:0];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  replicaUUIDIndex = [(REMReplicaEntry *)self replicaUUIDIndex];
  clockElementList = [(REMReplicaEntry *)self clockElementList];
  inUse = [(REMReplicaEntry *)self inUse];
  v8 = @"Available";
  if (inUse)
  {
    v8 = @"In Use";
  }

  v9 = [v3 stringWithFormat:@"<%@: %p>{UUID: %d, clock: %@, state: %@}", v4, self, replicaUUIDIndex, clockElementList, v8];

  return v9;
}

- (id)persistenceDescription
{
  v3 = MEMORY[0x1E696AEC0];
  replicaUUIDIndex = [(REMReplicaEntry *)self replicaUUIDIndex];
  clockElementList = [(REMReplicaEntry *)self clockElementList];
  v6 = [v3 stringWithFormat:@"{UUID: %d, clock: %@}", replicaUUIDIndex, clockElementList];

  return v6;
}

- (BOOL)hasEqualPersistedPropertiesAs:(id)as
{
  asCopy = as;
  if (self == asCopy)
  {
    v10 = 1;
  }

  else
  {
    replicaUUIDIndex = [(REMReplicaEntry *)self replicaUUIDIndex];
    if (replicaUUIDIndex == [(REMReplicaEntry *)asCopy replicaUUIDIndex])
    {
      clockElementList = [(REMReplicaEntry *)self clockElementList];
      clockElementList2 = [(REMReplicaEntry *)asCopy clockElementList];
      if (clockElementList == clockElementList2)
      {
        v10 = 1;
      }

      else
      {
        clockElementList3 = [(REMReplicaEntry *)self clockElementList];
        clockElementList4 = [(REMReplicaEntry *)asCopy clockElementList];
        v10 = [clockElementList3 isEqual:clockElementList4];
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