@interface PLJournalEntryPayloadUpdateAdapter
- (PLJournalEntryPayloadUpdateAdapter)initWithManagedObject:(id)object;
@end

@implementation PLJournalEntryPayloadUpdateAdapter

- (PLJournalEntryPayloadUpdateAdapter)initWithManagedObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = PLJournalEntryPayloadUpdateAdapter;
  v6 = [(PLJournalEntryPayloadUpdateAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_managedObject, object);
  }

  return v7;
}

@end