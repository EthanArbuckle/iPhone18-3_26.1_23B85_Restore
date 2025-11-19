@interface RMInternalStateArchiver
+ (RMInternalStateArchiver)sharedArchiver;
- (NSDictionary)deviceStatusByKeyPath;
- (NSDictionary)pushTokenByEnvironmentName;
- (NSPersistentHistoryToken)commandAndDeclarationStatusPersistentHistoryToken;
- (RMInternalStateArchiver)initWithPersistentContainer:(id)a3;
- (RMPersistentActiveIdentifiers)persistentActiveIdentifiers;
- (id)_unarchiveObjectOfClass:(Class)a3 forKey:(id)a4;
- (id)_unarchiveObjectOfClasses:(id)a3 forKey:(id)a4;
- (void)_archiveObject:(id)a3 forKey:(id)a4;
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

- (RMInternalStateArchiver)initWithPersistentContainer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RMInternalStateArchiver;
  v6 = [(RMInternalStateArchiver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistentContainer, a3);
  }

  return v7;
}

- (void)_archiveObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = [(RMInternalStateArchiver *)self persistentContainer];
  v8 = [v11 persistentStoreCoordinator];
  v9 = [v8 persistentStores];
  v10 = [v9 firstObject];
  [RMPersistentController archiveObject:v7 forKey:v6 intoMetadataForPersistentStore:v10];
}

- (id)_unarchiveObjectOfClass:(Class)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = [(RMInternalStateArchiver *)self persistentContainer];
  v8 = [v7 persistentStoreCoordinator];
  v9 = [v8 persistentStores];
  v10 = [v9 firstObject];
  v11 = [RMPersistentController unarchiveObjectOfClass:a3 forKey:v6 fromMetadataForPersistentStore:v10];

  return v11;
}

- (id)_unarchiveObjectOfClasses:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RMInternalStateArchiver *)self persistentContainer];
  v9 = [v8 persistentStoreCoordinator];
  v10 = [v9 persistentStores];
  v11 = [v10 firstObject];
  v12 = [RMPersistentController unarchiveObjectOfClasses:v7 forKey:v6 fromMetadataForPersistentStore:v11];

  return v12;
}

@end