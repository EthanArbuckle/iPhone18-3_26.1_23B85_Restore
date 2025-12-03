@interface PLManagedKeyword
+ (id)keywordForTitle:(id)title context:(id)context;
+ (id)keywordForUuid:(id)uuid context:(id)context;
- (id)payloadForChangedKeys:(id)keys;
- (id)payloadID;
- (id)payloadIDForTombstone:(id)tombstone;
- (void)awakeFromInsert;
@end

@implementation PLManagedKeyword

- (id)payloadForChangedKeys:(id)keys
{
  keysCopy = keys;
  v5 = [(PLManagedObjectJournalEntryPayload *)[PLKeywordJournalEntryPayload alloc] initWithManagedObject:self changedKeys:keysCopy];

  return v5;
}

- (id)payloadIDForTombstone:(id)tombstone
{
  v3 = [tombstone objectForKeyedSubscript:@"uuid"];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v3];

  return v4;
}

- (id)payloadID
{
  uuid = [(PLManagedKeyword *)self uuid];
  v3 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:uuid];

  return v3;
}

- (void)awakeFromInsert
{
  v4.receiver = self;
  v4.super_class = PLManagedKeyword;
  [(PLManagedKeyword *)&v4 awakeFromInsert];
  uUIDString = [MEMORY[0x1E69BF320] UUIDString];
  [(PLManagedKeyword *)self setUuid:uUIDString];
}

+ (id)keywordForUuid:(id)uuid context:(id)context
{
  contextCopy = context;
  uuidCopy = uuid;
  v7 = +[PLManagedKeyword fetchRequest];
  uuidCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"uuid", uuidCopy];

  [v7 setPredicate:uuidCopy];
  v9 = [contextCopy executeFetchRequest:v7 error:0];

  firstObject = [v9 firstObject];

  return firstObject;
}

+ (id)keywordForTitle:(id)title context:(id)context
{
  contextCopy = context;
  titleCopy = title;
  v7 = +[PLManagedKeyword fetchRequest];
  titleCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"title", titleCopy];

  [v7 setPredicate:titleCopy];
  v9 = [contextCopy executeFetchRequest:v7 error:0];

  firstObject = [v9 firstObject];

  return firstObject;
}

@end