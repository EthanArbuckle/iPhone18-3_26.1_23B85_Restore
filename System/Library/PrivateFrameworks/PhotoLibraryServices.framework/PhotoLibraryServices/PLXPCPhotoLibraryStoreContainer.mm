@interface PLXPCPhotoLibraryStoreContainer
+ (id)newContainerWithPathManager:(id)a3 connectionAuthorization:(id)a4;
- (PLXPCPhotoLibraryStoreContainer)initWithServer:(id)a3 listener:(id)a4;
@end

@implementation PLXPCPhotoLibraryStoreContainer

- (PLXPCPhotoLibraryStoreContainer)initWithServer:(id)a3 listener:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = PLXPCPhotoLibraryStoreContainer;
  v9 = [(PLXPCPhotoLibraryStoreContainer *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_server, a3);
    objc_storeStrong(&v10->_listener, a4);
    v11 = v10;
  }

  return v10;
}

+ (id)newContainerWithPathManager:(id)a3 connectionAuthorization:(id)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"PLXPCPhotoLibraryStoreContainer.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];
  }

  v9 = [MEMORY[0x1E696B0D8] anonymousListener];
  v10 = +[PLManagedObjectContext managedObjectModelURL];
  v21 = 0;
  v22 = 0;
  v11 = [v7 photosDatabasePath];
  [PLManagedObjectContext getPersistentStoreURL:&v22 options:&v21 forDatabasePath:v11];
  v12 = v22;
  v13 = v21;

  v14 = [MEMORY[0x1E695DF90] dictionary];
  [v14 setValue:v9 forKey:*MEMORY[0x1E695D4F0]];
  v23[0] = @"com.apple.private.assetsd.xpcstore_restricted.access";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  [v14 setValue:v15 forKey:*MEMORY[0x1E695D500]];

  if (v13)
  {
    [v14 addEntriesFromDictionary:v13];
  }

  v16 = [[PLXPCPhotoLibraryStoreServerRequestHandlingPolicy alloc] initWithConnectionAuthorization:v8];
  v17 = [objc_alloc(MEMORY[0x1E695D6F8]) initForStoreWithURL:v12 usingModelAtURL:v10 options:v14 policy:v16];
  [v9 setDelegate:v17];
  [v17 startListening];
  v18 = [[PLXPCPhotoLibraryStoreContainer alloc] initWithServer:v17 listener:v9];

  return v18;
}

@end