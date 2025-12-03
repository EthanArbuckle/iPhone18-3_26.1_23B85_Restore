@interface PLXPCPhotoLibraryStoreContainer
+ (id)newContainerWithPathManager:(id)manager connectionAuthorization:(id)authorization;
- (PLXPCPhotoLibraryStoreContainer)initWithServer:(id)server listener:(id)listener;
@end

@implementation PLXPCPhotoLibraryStoreContainer

- (PLXPCPhotoLibraryStoreContainer)initWithServer:(id)server listener:(id)listener
{
  serverCopy = server;
  listenerCopy = listener;
  v13.receiver = self;
  v13.super_class = PLXPCPhotoLibraryStoreContainer;
  v9 = [(PLXPCPhotoLibraryStoreContainer *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_server, server);
    objc_storeStrong(&v10->_listener, listener);
    v11 = v10;
  }

  return v10;
}

+ (id)newContainerWithPathManager:(id)manager connectionAuthorization:(id)authorization
{
  v23[1] = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  authorizationCopy = authorization;
  if (!managerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLXPCPhotoLibraryStoreContainer.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];
  }

  anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
  v10 = +[PLManagedObjectContext managedObjectModelURL];
  v21 = 0;
  v22 = 0;
  photosDatabasePath = [managerCopy photosDatabasePath];
  [PLManagedObjectContext getPersistentStoreURL:&v22 options:&v21 forDatabasePath:photosDatabasePath];
  v12 = v22;
  v13 = v21;

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setValue:anonymousListener forKey:*MEMORY[0x1E695D4F0]];
  v23[0] = @"com.apple.private.assetsd.xpcstore_restricted.access";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  [dictionary setValue:v15 forKey:*MEMORY[0x1E695D500]];

  if (v13)
  {
    [dictionary addEntriesFromDictionary:v13];
  }

  v16 = [[PLXPCPhotoLibraryStoreServerRequestHandlingPolicy alloc] initWithConnectionAuthorization:authorizationCopy];
  v17 = [objc_alloc(MEMORY[0x1E695D6F8]) initForStoreWithURL:v12 usingModelAtURL:v10 options:dictionary policy:v16];
  [anonymousListener setDelegate:v17];
  [v17 startListening];
  v18 = [[PLXPCPhotoLibraryStoreContainer alloc] initWithServer:v17 listener:anonymousListener];

  return v18;
}

@end