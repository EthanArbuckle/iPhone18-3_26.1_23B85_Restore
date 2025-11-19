@interface PLJournalEntryPayloadUpdateAdapter
- (PLJournalEntryPayloadUpdateAdapter)initWithManagedObject:(id)a3;
@end

@implementation PLJournalEntryPayloadUpdateAdapter

- (PLJournalEntryPayloadUpdateAdapter)initWithManagedObject:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PLJournalEntryPayloadUpdateAdapter;
  v6 = [(PLJournalEntryPayloadUpdateAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_managedObject, a3);
  }

  return v7;
}

@end