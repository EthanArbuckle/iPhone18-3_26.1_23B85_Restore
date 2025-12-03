@interface PLSocialGroupPayloadAdapter
- (BOOL)isValidForJournalPersistence;
- (PLSocialGroupPayloadAdapter)initWithManagedObject:(id)object;
- (id)payloadForChangedKeys:(id)keys;
- (id)payloadID;
- (id)payloadIDForTombstone:(id)tombstone;
@end

@implementation PLSocialGroupPayloadAdapter

- (id)payloadIDForTombstone:(id)tombstone
{
  v3 = [tombstone objectForKeyedSubscript:@"uuid"];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v3];

  return v4;
}

- (id)payloadForChangedKeys:(id)keys
{
  keysCopy = keys;
  if ([(PLSocialGroupPayloadAdapter *)self isValidForJournalPersistence])
  {
    if (keysCopy)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v6 = +[(PLGraphNodeContainer *)PLSocialGroup];
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __53__PLSocialGroupPayloadAdapter_payloadForChangedKeys___block_invoke;
      v16 = &unk_1E756C9F8;
      v17 = v6;
      v18 = v5;
      v7 = v5;
      v8 = v6;
      [keysCopy enumerateObjectsUsingBlock:&v13];
      v9 = [PLSocialGroupJournalEntryPayload alloc];
      if ([v7 count])
      {
        v10 = v7;
      }

      else
      {
        v10 = 0;
      }

      v11 = [(PLManagedObjectJournalEntryPayload *)v9 initWithInsertAdapter:self changedKeys:v10];
    }

    else
    {
      v11 = [(PLManagedObjectJournalEntryPayload *)[PLSocialGroupJournalEntryPayload alloc] initWithInsertAdapter:self changedKeys:0];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __53__PLSocialGroupPayloadAdapter_payloadForChangedKeys___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = +[PLSocialGroupJournalEntryPayload modelProperties];
  v4 = [v3 objectForKeyedSubscript:v8];

  if (v4)
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:v8];
    if (v6)
    {
      [*(a1 + 40) unionSet:v6];
    }
  }

  return MEMORY[0x1EEE66BE0](v5);
}

- (id)payloadID
{
  nodeContainer = [(PLSocialGroupPayloadAdapter *)self nodeContainer];
  uuid = [nodeContainer uuid];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:uuid];

  return v4;
}

- (BOOL)isValidForJournalPersistence
{
  managedObject = [(PLJournalEntryPayloadUpdateAdapter *)self managedObject];
  primaryLabelCode = [managedObject primaryLabelCode];

  return primaryLabelCode == 1000 && (([(PLGraphNodeContainer *)self->_nodeContainer socialGroupVerifiedType]+ 1) & 0xFFFD) == 0;
}

- (PLSocialGroupPayloadAdapter)initWithManagedObject:(id)object
{
  objectCopy = object;
  v11.receiver = self;
  v11.super_class = PLSocialGroupPayloadAdapter;
  v5 = [(PLJournalEntryPayloadUpdateAdapter *)&v11 initWithManagedObject:objectCopy];
  if (v5)
  {
    v6 = objectCopy;
    nodeContainerClass = [v6 nodeContainerClass];
    if (nodeContainerClass)
    {
      v8 = [PLGraphNodeContainer newNodeContainerWithNode:v6 containerClass:nodeContainerClass];
      nodeContainer = v5->_nodeContainer;
      v5->_nodeContainer = v8;
    }
  }

  return v5;
}

@end