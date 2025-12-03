@interface RMSubscribedStatusKeyPathUpdater
+ (RMSubscribedStatusKeyPathUpdater)sharedUpdater;
- (BOOL)_updateSubscribedStatusKeyPathsWithFetchPredicate:(id)predicate;
- (BOOL)notifyStatusDidChangeForDeclarations;
- (BOOL)notifyStatusDidChangeForKeyPath:(id)path;
- (BOOL)notifyStatusDidChangeForKeyPaths:(id)paths;
- (BOOL)notifyStatusDidChangeForKeyPaths:(id)paths managementSourceIdentifier:(id)identifier;
- (BOOL)notifyStatusDidChangeForKeyPathsByManagementSourceObjectID:(id)d;
- (RMSubscribedStatusKeyPathUpdater)initWithPersistentContainer:(id)container;
@end

@implementation RMSubscribedStatusKeyPathUpdater

+ (RMSubscribedStatusKeyPathUpdater)sharedUpdater
{
  if (qword_1000E6BB0 != -1)
  {
    sub_10008E89C();
  }

  v3 = qword_1000E6BA8;

  return v3;
}

- (RMSubscribedStatusKeyPathUpdater)initWithPersistentContainer:(id)container
{
  containerCopy = container;
  v9.receiver = self;
  v9.super_class = RMSubscribedStatusKeyPathUpdater;
  v6 = [(RMSubscribedStatusKeyPathUpdater *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistentContainer, container);
  }

  return v7;
}

- (BOOL)notifyStatusDidChangeForDeclarations
{
  v3 = [NSSet setWithObject:RMModelStatusItemManagementDeclarations];
  LOBYTE(self) = [(RMSubscribedStatusKeyPathUpdater *)self notifyStatusDidChangeForKeyPaths:v3];

  return self;
}

- (BOOL)notifyStatusDidChangeForKeyPath:(id)path
{
  v4 = [NSSet setWithObject:path];
  LOBYTE(self) = [(RMSubscribedStatusKeyPathUpdater *)self notifyStatusDidChangeForKeyPaths:v4];

  return self;
}

- (BOOL)notifyStatusDidChangeForKeyPaths:(id)paths
{
  pathsCopy = paths;
  v4 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = pathsCopy;
  v6 = [v5 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v39;
    do
    {
      v9 = 0;
      do
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v38 + 1) + 8 * v9);
        pathExtension = [v10 pathExtension];
        v12 = [pathExtension length];

        if (v12)
        {
          while (([v4 containsObject:v10] & 1) == 0)
          {
            [v4 addObject:v10];
            stringByDeletingPathExtension = [v10 stringByDeletingPathExtension];

            pathExtension2 = [stringByDeletingPathExtension pathExtension];
            v15 = [pathExtension2 length];

            v10 = stringByDeletingPathExtension;
            if (!v15)
            {
              goto LABEL_11;
            }
          }
        }

        stringByDeletingPathExtension = v10;
LABEL_11:
        [v4 addObject:stringByDeletingPathExtension];

        v9 = v9 + 1;
      }

      while (v9 != v7);
      v7 = [v5 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v7);
  }

  v36 = [NSPredicate predicateWithFormat:@"%K IN %@", @"keyPath", v4];

  v16 = v5;
  v17 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v18 = v16;
  v19 = [v18 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v39;
    do
    {
      v22 = 0;
      do
      {
        if (*v39 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v38 + 1) + 8 * v22) stringByAppendingString:@"."];
        [v17 addObject:v23];

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v20);
  }

  v24 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v25 = v17;
  v26 = [v25 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v39;
    do
    {
      v29 = 0;
      do
      {
        if (*v39 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [NSPredicate predicateWithFormat:@"%K BEGINSWITH %@", @"keyPath", *(*(&v38 + 1) + 8 * v29)];
        [v24 addObject:v30];

        v29 = v29 + 1;
      }

      while (v27 != v29);
      v27 = [v25 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v27);
  }

  v31 = [NSCompoundPredicate orPredicateWithSubpredicates:v24];

  v42[0] = v36;
  v42[1] = v31;
  v32 = [NSArray arrayWithObjects:v42 count:2];
  v33 = [NSCompoundPredicate orPredicateWithSubpredicates:v32];

  v34 = [(RMSubscribedStatusKeyPathUpdater *)self _updateSubscribedStatusKeyPathsWithFetchPredicate:v33];
  return v34;
}

- (BOOL)notifyStatusDidChangeForKeyPathsByManagementSourceObjectID:(id)d
{
  dCopy = d;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008E620;
  v8[3] = &unk_1000D3380;
  v9 = objc_opt_new();
  v5 = v9;
  [dCopy enumerateKeysAndObjectsUsingBlock:v8];

  v6 = [NSCompoundPredicate orPredicateWithSubpredicates:v5];

  LOBYTE(self) = [(RMSubscribedStatusKeyPathUpdater *)self _updateSubscribedStatusKeyPathsWithFetchPredicate:v6];
  return self;
}

- (BOOL)notifyStatusDidChangeForKeyPaths:(id)paths managementSourceIdentifier:(id)identifier
{
  pathsCopy = paths;
  identifier = [NSPredicate predicateWithFormat:@"%K == %@", @"managementSource.identifier", identifier];
  v8 = pathsCopy;
  v9 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      v14 = 0;
      do
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v26 + 1) + 8 * v14);
        pathExtension = [v15 pathExtension];
        v17 = [pathExtension length];

        if (v17)
        {
          while (([v9 containsObject:v15] & 1) == 0)
          {
            [v9 addObject:v15];
            stringByDeletingPathExtension = [v15 stringByDeletingPathExtension];

            pathExtension2 = [stringByDeletingPathExtension pathExtension];
            v20 = [pathExtension2 length];

            v15 = stringByDeletingPathExtension;
            if (!v20)
            {
              goto LABEL_11;
            }
          }
        }

        stringByDeletingPathExtension = v15;
LABEL_11:
        [v9 addObject:stringByDeletingPathExtension];

        v14 = v14 + 1;
      }

      while (v14 != v12);
      v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }

  v21 = [NSPredicate predicateWithFormat:@"%K IN %@", @"keyPath", v9, v26];

  v30[0] = identifier;
  v30[1] = v21;
  v22 = [NSArray arrayWithObjects:v30 count:2];
  v23 = [NSCompoundPredicate andPredicateWithSubpredicates:v22];

  v24 = [(RMSubscribedStatusKeyPathUpdater *)self _updateSubscribedStatusKeyPathsWithFetchPredicate:v23];
  return v24;
}

- (BOOL)_updateSubscribedStatusKeyPathsWithFetchPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = objc_opt_new();
  persistentContainer = [(RMSubscribedStatusKeyPathUpdater *)self persistentContainer];
  newBackgroundContext = [persistentContainer newBackgroundContext];

  [newBackgroundContext setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10008E370;
  v18 = &unk_1000D1B58;
  v8 = predicateCopy;
  v19 = v8;
  v9 = v5;
  v20 = v9;
  v10 = newBackgroundContext;
  v21 = v10;
  [v10 performBlockAndWait:&v15];
  v11 = [v9 count];
  if (v11)
  {
    v12 = +[NSNotificationCenter defaultCenter];
    v22 = @"RMUserInfoKeyUpdatedManagementSourceObjectIDs";
    v23 = v9;
    v13 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    [v12 postNotificationName:@"RMSubscribedStatusKeyPathDidChangeNotification" object:self userInfo:v13];
  }

  return v11 != 0;
}

@end