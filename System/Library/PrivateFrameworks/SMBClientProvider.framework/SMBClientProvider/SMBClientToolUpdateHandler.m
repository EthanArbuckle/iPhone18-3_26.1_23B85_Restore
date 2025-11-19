@interface SMBClientToolUpdateHandler
+ (id)newForConnection:(id)a3;
- (id)initForConnection:(id)a3;
- (void)deletedItem:(id)a3 name:(id)a4 how:(int)a5 interestedItem:(id)a6;
- (void)deletedName:(id)a3 item:(id)a4 how:(int)a5 interestedItem:(id)a6;
- (void)historyResetItem:(id)a3 interestedItem:(id)a4;
- (void)historyResetName:(id)a3 interestedItem:(id)a4;
- (void)renamedItem:(id)a3 named:(id)a4 fromDirectory:(id)a5 intoDirectory:(id)a6 newName:(id)a7 atopItem:(id)a8;
- (void)updatedItem:(id)a3 name:(id)a4 interestedItem:(id)a5;
- (void)updatedName:(id)a3 interestedItem:(id)a4;
- (void)updatesDoneFor:(id)a3;
- (void)volumeWideDeletedName:(id)a3 interestedItem:(id)a4;
- (void)volumeWideUpdatedName:(id)a3 interestedItem:(id)a4;
@end

@implementation SMBClientToolUpdateHandler

- (id)initForConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SMBClientToolUpdateHandler;
  v6 = [(SMBClientToolUpdateHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ourConnection, a3);
    puts("initForConnection: started up");
  }

  return v7;
}

+ (id)newForConnection:(id)a3
{
  v3 = a3;
  v4 = [[SMBClientToolUpdateHandler alloc] initForConnection:v3];

  return v4;
}

- (void)deletedItem:(id)a3 name:(id)a4 how:(int)a5 interestedItem:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a4;
  v13 = [a3 UTF8String];
  v14 = [v11 UTF8String];

  v15 = [v12 UTF8String];
  printf("%s: item %s\tinterestedItem '%s'\tname '%s' how:%d\n", "[SMBClientToolUpdateHandler deletedItem:name:how:interestedItem:]", v13, v14, v15, a5);
}

- (void)deletedName:(id)a3 item:(id)a4 how:(int)a5 interestedItem:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a4;
  v13 = [a3 UTF8String];
  v14 = [v12 UTF8String];

  v15 = [v11 UTF8String];
  printf("%s: name %s\titem %s\tinterestedItem %s how:%d\n", "[SMBClientToolUpdateHandler deletedName:item:how:interestedItem:]", v13, v14, v15, a5);
}

- (void)updatesDoneFor:(id)a3
{
  printf("All done with %s\n", [a3 UTF8String]);
  [qword_1000106B0 lock];
  dword_1000106B8 = 2;
  [qword_1000106B0 unlock];
  v3 = qword_1000106B0;

  [v3 signal];
}

- (void)historyResetItem:(id)a3 interestedItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a3 UTF8String];
  v9 = [v7 UTF8String];

  printf("%s: item %s\tinterestedItem %s\n", "[SMBClientToolUpdateHandler historyResetItem:interestedItem:]", v8, v9);
}

- (void)historyResetName:(id)a3 interestedItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a3 UTF8String];
  v9 = [v7 UTF8String];

  printf("%s: path %s\tinterestedItem %s\n", "[SMBClientToolUpdateHandler historyResetName:interestedItem:]", v8, v9);
}

- (void)renamedItem:(id)a3 named:(id)a4 fromDirectory:(id)a5 intoDirectory:(id)a6 newName:(id)a7 atopItem:(id)a8
{
  v25 = a6;
  v13 = a8;
  v14 = a3;
  v15 = a7;
  v16 = a5;
  v17 = a4;
  v18 = [a3 UTF8String];
  v19 = [v17 UTF8String];

  v20 = [v16 UTF8String];
  if (v13)
  {
    v21 = [v13 UTF8String];
  }

  else
  {
    v21 = "<no item>";
  }

  v22 = v25;
  v23 = [v25 UTF8String];
  v24 = [v15 UTF8String];

  printf("LIUpdateRenameFrom:'%s' name '%s'\n\tfrom ID '%s' over ID '%s'\n\tto '%s' name '%s'\n", v18, v19, v20, v21, v23, v24);
}

- (void)updatedItem:(id)a3 name:(id)a4 interestedItem:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [a3 UTF8String];
  v12 = [v9 UTF8String];

  v13 = [v10 UTF8String];
  printf("%s: item %s\tinterestedItem %s\tname '%s'\n", "[SMBClientToolUpdateHandler updatedItem:name:interestedItem:]", v11, v12, v13);
}

- (void)updatedName:(id)a3 interestedItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a3 UTF8String];
  v9 = [v7 UTF8String];

  printf("%s: name %s\tinterestedItem %s\n", "[SMBClientToolUpdateHandler updatedName:interestedItem:]", v8, v9);
}

- (void)volumeWideDeletedName:(id)a3 interestedItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a3 UTF8String];
  v9 = [v7 UTF8String];

  printf("%s: path %s\tinterestedItem %s\n", "[SMBClientToolUpdateHandler volumeWideDeletedName:interestedItem:]", v8, v9);
}

- (void)volumeWideUpdatedName:(id)a3 interestedItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a3 UTF8String];
  v9 = [v7 UTF8String];

  printf("%s: path %s\tinterestedItem %s\n", "[SMBClientToolUpdateHandler volumeWideUpdatedName:interestedItem:]", v8, v9);
}

@end