@interface RMInternalStateArchiver
+ (RMInternalStateArchiver)sharedArchiver;
- (NSDictionary)deviceStatusByKeyPath;
- (NSDictionary)pushTokenByEnvironmentName;
- (NSPersistentHistoryToken)commandAndDeclarationStatusPersistentHistoryToken;
- (RMInternalStateArchiver)initWithPersistentContainer:(id)container;
- (RMPersistentActiveIdentifiers)persistentActiveIdentifiers;
- (id)_unarchiveObjectOfClass:(Class)class forKey:(id)key;
- (id)_unarchiveObjectOfClasses:(id)classes forKey:(id)key;
- (void)_archiveObject:(id)object forKey:(id)key;
@end

@implementation RMInternalStateArchiver

+ (RMInternalStateArchiver)sharedArchiver
{
  if (qword_1000E68B8 != -1)
  {
    sub_10003ECAC();
  }

  v3 = qword_1000E68B0;

  return v3;
}

- (NSPersistentHistoryToken)commandAndDeclarationStatusPersistentHistoryToken
{
  v3 = objc_opt_class();

  return [(RMInternalStateArchiver *)self _unarchiveObjectOfClass:v3 forKey:@"InternalStateArchiver.CommandAndDeclarationsPersistentHistoryToken"];
}

- (NSDictionary)deviceStatusByKeyPath
{
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [NSSet setWithObjects:v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0];
  v11 = [(RMInternalStateArchiver *)self _unarchiveObjectOfClasses:v10 forKey:@"InternalStateArchiver.DeviceStatusByKeyPath"];

  return v11;
}

- (RMPersistentActiveIdentifiers)persistentActiveIdentifiers
{
  v3 = objc_opt_class();

  return [(RMInternalStateArchiver *)self _unarchiveObjectOfClass:v3 forKey:@"InternalStateArchiver.PersistentActiveIdentifiers"];
}

- (NSDictionary)pushTokenByEnvironmentName
{
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v3, v4, objc_opt_class(), 0];
  v6 = [(RMInternalStateArchiver *)self _unarchiveObjectOfClasses:v5 forKey:@"InternalStateArchiver.PushTokenByEnvironmentName"];

  return v6;
}

- (RMInternalStateArchiver)initWithPersistentContainer:(id)container
{
  containerCopy = container;
  v9.receiver = self;
  v9.super_class = RMInternalStateArchiver;
  v6 = [(RMInternalStateArchiver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistentContainer, container);
  }

  return v7;
}

- (void)_archiveObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  persistentContainer = [(RMInternalStateArchiver *)self persistentContainer];
  persistentStoreCoordinator = [persistentContainer persistentStoreCoordinator];
  persistentStores = [persistentStoreCoordinator persistentStores];
  firstObject = [persistentStores firstObject];
  [RMPersistentController archiveObject:objectCopy forKey:keyCopy intoMetadataForPersistentStore:firstObject];
}

- (id)_unarchiveObjectOfClass:(Class)class forKey:(id)key
{
  keyCopy = key;
  persistentContainer = [(RMInternalStateArchiver *)self persistentContainer];
  persistentStoreCoordinator = [persistentContainer persistentStoreCoordinator];
  persistentStores = [persistentStoreCoordinator persistentStores];
  firstObject = [persistentStores firstObject];
  v11 = [RMPersistentController unarchiveObjectOfClass:class forKey:keyCopy fromMetadataForPersistentStore:firstObject];

  return v11;
}

- (id)_unarchiveObjectOfClasses:(id)classes forKey:(id)key
{
  keyCopy = key;
  classesCopy = classes;
  persistentContainer = [(RMInternalStateArchiver *)self persistentContainer];
  persistentStoreCoordinator = [persistentContainer persistentStoreCoordinator];
  persistentStores = [persistentStoreCoordinator persistentStores];
  firstObject = [persistentStores firstObject];
  v12 = [RMPersistentController unarchiveObjectOfClasses:classesCopy forKey:keyCopy fromMetadataForPersistentStore:firstObject];

  return v12;
}

@end