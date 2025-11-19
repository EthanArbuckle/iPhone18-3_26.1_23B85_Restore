@interface PLSocialGroupPayloadAdapter
- (BOOL)isValidForJournalPersistence;
- (PLSocialGroupPayloadAdapter)initWithManagedObject:(id)a3;
- (id)payloadForChangedKeys:(id)a3;
- (id)payloadID;
- (id)payloadIDForTombstone:(id)a3;
@end

@implementation PLSocialGroupPayloadAdapter

- (id)payloadIDForTombstone:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"uuid"];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v3];

  return v4;
}

- (id)payloadForChangedKeys:(id)a3
{
  v4 = a3;
  if ([(PLSocialGroupPayloadAdapter *)self isValidForJournalPersistence])
  {
    if (v4)
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
      [v4 enumerateObjectsUsingBlock:&v13];
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
  v2 = [(PLSocialGroupPayloadAdapter *)self nodeContainer];
  v3 = [v2 uuid];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v3];

  return v4;
}

- (BOOL)isValidForJournalPersistence
{
  v3 = [(PLJournalEntryPayloadUpdateAdapter *)self managedObject];
  v4 = [v3 primaryLabelCode];

  return v4 == 1000 && (([(PLGraphNodeContainer *)self->_nodeContainer socialGroupVerifiedType]+ 1) & 0xFFFD) == 0;
}

- (PLSocialGroupPayloadAdapter)initWithManagedObject:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PLSocialGroupPayloadAdapter;
  v5 = [(PLJournalEntryPayloadUpdateAdapter *)&v11 initWithManagedObject:v4];
  if (v5)
  {
    v6 = v4;
    v7 = [v6 nodeContainerClass];
    if (v7)
    {
      v8 = [PLGraphNodeContainer newNodeContainerWithNode:v6 containerClass:v7];
      nodeContainer = v5->_nodeContainer;
      v5->_nodeContainer = v8;
    }
  }

  return v5;
}

@end