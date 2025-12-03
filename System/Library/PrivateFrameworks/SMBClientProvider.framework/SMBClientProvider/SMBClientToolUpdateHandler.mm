@interface SMBClientToolUpdateHandler
+ (id)newForConnection:(id)connection;
- (id)initForConnection:(id)connection;
- (void)deletedItem:(id)item name:(id)name how:(int)how interestedItem:(id)interestedItem;
- (void)deletedName:(id)name item:(id)item how:(int)how interestedItem:(id)interestedItem;
- (void)historyResetItem:(id)item interestedItem:(id)interestedItem;
- (void)historyResetName:(id)name interestedItem:(id)item;
- (void)renamedItem:(id)item named:(id)named fromDirectory:(id)directory intoDirectory:(id)intoDirectory newName:(id)name atopItem:(id)atopItem;
- (void)updatedItem:(id)item name:(id)name interestedItem:(id)interestedItem;
- (void)updatedName:(id)name interestedItem:(id)item;
- (void)updatesDoneFor:(id)for;
- (void)volumeWideDeletedName:(id)name interestedItem:(id)item;
- (void)volumeWideUpdatedName:(id)name interestedItem:(id)item;
@end

@implementation SMBClientToolUpdateHandler

- (id)initForConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = SMBClientToolUpdateHandler;
  v6 = [(SMBClientToolUpdateHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ourConnection, connection);
    puts("initForConnection: started up");
  }

  return v7;
}

+ (id)newForConnection:(id)connection
{
  connectionCopy = connection;
  v4 = [[SMBClientToolUpdateHandler alloc] initForConnection:connectionCopy];

  return v4;
}

- (void)deletedItem:(id)item name:(id)name how:(int)how interestedItem:(id)interestedItem
{
  itemCopy = item;
  interestedItemCopy = interestedItem;
  nameCopy = name;
  uTF8String = [item UTF8String];
  uTF8String2 = [interestedItemCopy UTF8String];

  uTF8String3 = [nameCopy UTF8String];
  printf("%s: item %s\tinterestedItem '%s'\tname '%s' how:%d\n", "[SMBClientToolUpdateHandler deletedItem:name:how:interestedItem:]", uTF8String, uTF8String2, uTF8String3, how);
}

- (void)deletedName:(id)name item:(id)item how:(int)how interestedItem:(id)interestedItem
{
  nameCopy = name;
  interestedItemCopy = interestedItem;
  itemCopy = item;
  uTF8String = [name UTF8String];
  uTF8String2 = [itemCopy UTF8String];

  uTF8String3 = [interestedItemCopy UTF8String];
  printf("%s: name %s\titem %s\tinterestedItem %s how:%d\n", "[SMBClientToolUpdateHandler deletedName:item:how:interestedItem:]", uTF8String, uTF8String2, uTF8String3, how);
}

- (void)updatesDoneFor:(id)for
{
  printf("All done with %s\n", [for UTF8String]);
  [qword_1000106B0 lock];
  dword_1000106B8 = 2;
  [qword_1000106B0 unlock];
  v3 = qword_1000106B0;

  [v3 signal];
}

- (void)historyResetItem:(id)item interestedItem:(id)interestedItem
{
  itemCopy = item;
  interestedItemCopy = interestedItem;
  uTF8String = [item UTF8String];
  uTF8String2 = [interestedItemCopy UTF8String];

  printf("%s: item %s\tinterestedItem %s\n", "[SMBClientToolUpdateHandler historyResetItem:interestedItem:]", uTF8String, uTF8String2);
}

- (void)historyResetName:(id)name interestedItem:(id)item
{
  nameCopy = name;
  itemCopy = item;
  uTF8String = [name UTF8String];
  uTF8String2 = [itemCopy UTF8String];

  printf("%s: path %s\tinterestedItem %s\n", "[SMBClientToolUpdateHandler historyResetName:interestedItem:]", uTF8String, uTF8String2);
}

- (void)renamedItem:(id)item named:(id)named fromDirectory:(id)directory intoDirectory:(id)intoDirectory newName:(id)name atopItem:(id)atopItem
{
  intoDirectoryCopy = intoDirectory;
  atopItemCopy = atopItem;
  itemCopy = item;
  nameCopy = name;
  directoryCopy = directory;
  namedCopy = named;
  uTF8String = [item UTF8String];
  uTF8String2 = [namedCopy UTF8String];

  uTF8String3 = [directoryCopy UTF8String];
  if (atopItemCopy)
  {
    uTF8String4 = [atopItemCopy UTF8String];
  }

  else
  {
    uTF8String4 = "<no item>";
  }

  v22 = intoDirectoryCopy;
  uTF8String5 = [intoDirectoryCopy UTF8String];
  uTF8String6 = [nameCopy UTF8String];

  printf("LIUpdateRenameFrom:'%s' name '%s'\n\tfrom ID '%s' over ID '%s'\n\tto '%s' name '%s'\n", uTF8String, uTF8String2, uTF8String3, uTF8String4, uTF8String5, uTF8String6);
}

- (void)updatedItem:(id)item name:(id)name interestedItem:(id)interestedItem
{
  itemCopy = item;
  interestedItemCopy = interestedItem;
  nameCopy = name;
  uTF8String = [item UTF8String];
  uTF8String2 = [interestedItemCopy UTF8String];

  uTF8String3 = [nameCopy UTF8String];
  printf("%s: item %s\tinterestedItem %s\tname '%s'\n", "[SMBClientToolUpdateHandler updatedItem:name:interestedItem:]", uTF8String, uTF8String2, uTF8String3);
}

- (void)updatedName:(id)name interestedItem:(id)item
{
  nameCopy = name;
  itemCopy = item;
  uTF8String = [name UTF8String];
  uTF8String2 = [itemCopy UTF8String];

  printf("%s: name %s\tinterestedItem %s\n", "[SMBClientToolUpdateHandler updatedName:interestedItem:]", uTF8String, uTF8String2);
}

- (void)volumeWideDeletedName:(id)name interestedItem:(id)item
{
  nameCopy = name;
  itemCopy = item;
  uTF8String = [name UTF8String];
  uTF8String2 = [itemCopy UTF8String];

  printf("%s: path %s\tinterestedItem %s\n", "[SMBClientToolUpdateHandler volumeWideDeletedName:interestedItem:]", uTF8String, uTF8String2);
}

- (void)volumeWideUpdatedName:(id)name interestedItem:(id)item
{
  nameCopy = name;
  itemCopy = item;
  uTF8String = [name UTF8String];
  uTF8String2 = [itemCopy UTF8String];

  printf("%s: path %s\tinterestedItem %s\n", "[SMBClientToolUpdateHandler volumeWideUpdatedName:interestedItem:]", uTF8String, uTF8String2);
}

@end