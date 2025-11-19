@interface RMSubscribedStatusKeyPathUpdater
+ (RMSubscribedStatusKeyPathUpdater)sharedUpdater;
- (BOOL)_updateSubscribedStatusKeyPathsWithFetchPredicate:(id)a3;
- (BOOL)notifyStatusDidChangeForDeclarations;
- (BOOL)notifyStatusDidChangeForKeyPath:(id)a3;
- (BOOL)notifyStatusDidChangeForKeyPaths:(id)a3;
- (BOOL)notifyStatusDidChangeForKeyPaths:(id)a3 managementSourceIdentifier:(id)a4;
- (BOOL)notifyStatusDidChangeForKeyPathsByManagementSourceObjectID:(id)a3;
- (RMSubscribedStatusKeyPathUpdater)initWithPersistentContainer:(id)a3;
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

- (RMSubscribedStatusKeyPathUpdater)initWithPersistentContainer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RMSubscribedStatusKeyPathUpdater;
  v6 = [(RMSubscribedStatusKeyPathUpdater *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistentContainer, a3);
  }

  return v7;
}

- (BOOL)notifyStatusDidChangeForDeclarations
{
  v3 = [NSSet setWithObject:RMModelStatusItemManagementDeclarations];
  LOBYTE(self) = [(RMSubscribedStatusKeyPathUpdater *)self notifyStatusDidChangeForKeyPaths:v3];

  return self;
}

- (BOOL)notifyStatusDidChangeForKeyPath:(id)a3
{
  v4 = [NSSet setWithObject:a3];
  LOBYTE(self) = [(RMSubscribedStatusKeyPathUpdater *)self notifyStatusDidChangeForKeyPaths:v4];

  return self;
}

- (BOOL)notifyStatusDidChangeForKeyPaths:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = v3;
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
        v11 = [v10 pathExtension];
        v12 = [v11 length];

        if (v12)
        {
          while (([v4 containsObject:v10] & 1) == 0)
          {
            [v4 addObject:v10];
            v13 = [v10 stringByDeletingPathExtension];

            v14 = [v13 pathExtension];
            v15 = [v14 length];

            v10 = v13;
            if (!v15)
            {
              goto LABEL_11;
            }
          }
        }

        v13 = v10;
LABEL_11:
        [v4 addObject:v13];

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

- (BOOL)notifyStatusDidChangeForKeyPathsByManagementSourceObjectID:(id)a3
{
  v4 = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008E620;
  v8[3] = &unk_1000D3380;
  v9 = objc_opt_new();
  v5 = v9;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];

  v6 = [NSCompoundPredicate orPredicateWithSubpredicates:v5];

  LOBYTE(self) = [(RMSubscribedStatusKeyPathUpdater *)self _updateSubscribedStatusKeyPathsWithFetchPredicate:v6];
  return self;
}

- (BOOL)notifyStatusDidChangeForKeyPaths:(id)a3 managementSourceIdentifier:(id)a4
{
  v6 = a3;
  v7 = [NSPredicate predicateWithFormat:@"%K == %@", @"managementSource.identifier", a4];
  v8 = v6;
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
        v16 = [v15 pathExtension];
        v17 = [v16 length];

        if (v17)
        {
          while (([v9 containsObject:v15] & 1) == 0)
          {
            [v9 addObject:v15];
            v18 = [v15 stringByDeletingPathExtension];

            v19 = [v18 pathExtension];
            v20 = [v19 length];

            v15 = v18;
            if (!v20)
            {
              goto LABEL_11;
            }
          }
        }

        v18 = v15;
LABEL_11:
        [v9 addObject:v18];

        v14 = v14 + 1;
      }

      while (v14 != v12);
      v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }

  v21 = [NSPredicate predicateWithFormat:@"%K IN %@", @"keyPath", v9, v26];

  v30[0] = v7;
  v30[1] = v21;
  v22 = [NSArray arrayWithObjects:v30 count:2];
  v23 = [NSCompoundPredicate andPredicateWithSubpredicates:v22];

  v24 = [(RMSubscribedStatusKeyPathUpdater *)self _updateSubscribedStatusKeyPathsWithFetchPredicate:v23];
  return v24;
}

- (BOOL)_updateSubscribedStatusKeyPathsWithFetchPredicate:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(RMSubscribedStatusKeyPathUpdater *)self persistentContainer];
  v7 = [v6 newBackgroundContext];

  [v7 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10008E370;
  v18 = &unk_1000D1B58;
  v8 = v4;
  v19 = v8;
  v9 = v5;
  v20 = v9;
  v10 = v7;
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