@interface FTPersistentDataSource
- (BOOL)addConversationLinkDescriptors:(id)a3 error:(id *)a4;
- (BOOL)addConversationLinkDescriptors:(id)a3 managedObjectContext:(id)a4 error:(id *)a5;
- (BOOL)addOrUpdateConversationLinkDescriptors:(id)a3 error:(id *)a4;
- (BOOL)addOrUpdateConversationLinkDescriptors:(id)a3 managedObjectContext:(id)a4 error:(id *)a5;
- (BOOL)addOrUpdateKey:(id)a3 forIntegerValue:(int64_t)a4 stringValue:(id)a5 managedObjectContext:(id)a6 error:(id *)a7;
- (BOOL)setInteger:(int64_t)a3 forKey:(id)a4 error:(id *)a5;
- (BOOL)setString:(id)a3 forKey:(id)a4 error:(id *)a5;
- (FTPersistentDataSource)initWithStoreType:(int64_t)a3;
- (id)conversationLinkDescriptorsWithPredicate:(id)a3 limit:(unint64_t)a4 offset:(unint64_t)a5 error:(id *)a6;
- (id)conversationLinkDescriptorsWithPredicate:(id)a3 managedObjectContext:(id)a4 limit:(unint64_t)a5 offset:(unint64_t)a6 error:(id *)a7;
- (id)keyValueForKey:(id)a3 managedObjectContext:(id)a4 error:(id *)a5;
- (id)stringForKey:(id)a3 error:(id *)a4;
- (int64_t)integerForKey:(id)a3 error:(id *)a4;
- (unint64_t)conversationLinkDescriptorCountWithPredicate:(id)a3 error:(id *)a4;
- (unint64_t)conversationLinkDescriptorCountWithPredicate:(id)a3 managedObjectContext:(id)a4 error:(id *)a5;
- (unint64_t)removeConversationLinkDescriptorsWithPredicate:(id)a3 deleteReason:(int64_t)a4 error:(id *)a5;
- (unint64_t)removeConversationLinkDescriptorsWithPredicate:(id)a3 deleteReason:(int64_t)a4 managedObjectContext:(id)a5 error:(id *)a6;
- (unint64_t)removeLinkDescriptorsFromDataSourceWithPredicate:(id)a3 error:(id *)a4;
- (unint64_t)removeLinkDescriptorsFromDataSourceWithPredicate:(id)a3 managedObjectContext:(id)a4 error:(id *)a5;
- (unint64_t)setActivated:(BOOL)a3 withRevision:(int64_t)a4 forConversationLinkDescriptorsWithPredicate:(id)a5 error:(id *)a6;
- (unint64_t)setExpirationDate:(id)a3 withRevision:(int64_t)a4 forConversationLinkDescriptorsWithPredicate:(id)a5 error:(id *)a6;
- (unint64_t)setExpirationDate:(id)a3 withRevision:(int64_t)a4 forConversationLinkDescriptorsWithPredicate:(id)a5 managedObjectContext:(id)a6 error:(id *)a7;
- (unint64_t)setInvitedHandles:(id)a3 withRevision:(int64_t)a4 forConversationLinkDescriptorsWithPredicate:(id)a5 error:(id *)a6;
- (unint64_t)setInvitedHandles:(id)a3 withRevision:(int64_t)a4 forConversationLinkDescriptorsWithPredicate:(id)a5 managedObjectContext:(id)a6 error:(id *)a7;
- (unint64_t)setName:(id)a3 withRevision:(int64_t)a4 forConversationLinkDescriptorsWithPredicate:(id)a5 error:(id *)a6;
- (unint64_t)setName:(id)a3 withRevision:(int64_t)a4 forConversationLinkDescriptorsWithPredicate:(id)a5 managedObjectContext:(id)a6 error:(id *)a7;
- (void)addConversationLinkDescriptors:(id)a3 completion:(id)a4;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)addOrUpdateConversationLinkDescriptors:(id)a3 completion:(id)a4;
- (void)conversationLinkDescriptorCountWithPredicate:(id)a3 completion:(id)a4;
- (void)conversationLinkDescriptorsWithPredicate:(id)a3 limit:(unint64_t)a4 offset:(unint64_t)a5 completion:(id)a6;
- (void)deleteConversationLink:(id)a3 deleteReason:(int64_t)a4 inContext:(id)a5;
- (void)integerForKey:(id)a3 completion:(id)a4;
- (void)notifyDelegatesConversationLinkDescriptorsDidChange;
- (void)removeConversationLinkDescriptorsWithPredicate:(id)a3 deleteReason:(int64_t)a4 completion:(id)a5;
- (void)removeDelegate:(id)a3;
- (void)removeLinkDescriptorsFromDataSourceWithPredicate:(id)a3 completion:(id)a4;
- (void)removeLinkFromDatabase:(id)a3 inContext:(id)a4;
- (void)setActivated:(BOOL)a3 withRevision:(int64_t)a4 forConversationLinkDescriptorsWithPredicate:(id)a5 completion:(id)a6;
- (void)setExpirationDate:(id)a3 withRevision:(int64_t)a4 forConversationLinkDescriptorsWithPredicate:(id)a5 completion:(id)a6;
- (void)setInteger:(int64_t)a3 forKey:(id)a4 completion:(id)a5;
- (void)setInvitedHandles:(id)a3 withRevision:(int64_t)a4 forConversationLinkDescriptorsWithPredicate:(id)a5 completion:(id)a6;
- (void)setName:(id)a3 withRevision:(int64_t)a4 forConversationLinkDescriptorsWithPredicate:(id)a5 completion:(id)a6;
- (void)setString:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)stringForKey:(id)a3 completion:(id)a4;
@end

@implementation FTPersistentDataSource

- (BOOL)addConversationLinkDescriptors:(id)a3 error:(id *)a4
{
  v6 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1000037B0;
  v23 = sub_1000037C0;
  v24 = 0;
  v7 = [(FTPersistentDataSource *)self persistentContainer];
  v8 = [v7 managedObjectContext];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000037C8;
  v14[3] = &unk_100018460;
  v17 = &v25;
  v14[4] = self;
  v9 = v6;
  v15 = v9;
  v10 = v8;
  v16 = v10;
  v18 = &v19;
  [v10 performBlockAndWait:v14];
  if (a4)
  {
    v11 = v20[5];
    if (v11)
    {
      *a4 = v11;
    }
  }

  v12 = *(v26 + 24);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v12;
}

- (void)addConversationLinkDescriptors:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(FTPersistentDataSource *)self persistentContainer];
    v9 = [v8 managedObjectContext];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100003958;
    v11[3] = &unk_100018488;
    v11[4] = self;
    v12 = v6;
    v13 = v9;
    v14 = v7;
    v10 = v9;
    [v10 performBlock:v11];
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (BOOL)addOrUpdateConversationLinkDescriptors:(id)a3 error:(id *)a4
{
  v6 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1000037B0;
  v23 = sub_1000037C0;
  v24 = 0;
  v7 = FTCServiceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "addOrUpdateConversationLinkDescriptors: %@", buf, 0xCu);
  }

  if ([v6 count])
  {
    v8 = [(FTPersistentDataSource *)self persistentContainer];
    v9 = [v8 managedObjectContext];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100003C10;
    v14[3] = &unk_100018460;
    v17 = &v25;
    v14[4] = self;
    v15 = v6;
    v10 = v9;
    v16 = v10;
    v18 = &v19;
    [v10 performBlockAndWait:v14];
    if (a4)
    {
      v11 = v20[5];
      if (v11)
      {
        *a4 = v11;
      }
    }
  }

  v12 = *(v26 + 24);
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  return v12 & 1;
}

- (void)addOrUpdateConversationLinkDescriptors:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(FTPersistentDataSource *)self persistentContainer];
    v9 = [v8 managedObjectContext];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100003DA0;
    v11[3] = &unk_100018488;
    v11[4] = self;
    v12 = v6;
    v13 = v9;
    v14 = v7;
    v10 = v9;
    [v10 performBlock:v11];
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (unint64_t)conversationLinkDescriptorCountWithPredicate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0x7FFFFFFFFFFFFFFFLL;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1000037B0;
  v23 = sub_1000037C0;
  v24 = 0;
  v7 = [(FTPersistentDataSource *)self persistentContainer];
  v8 = [v7 managedObjectContext];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100003FC8;
  v14[3] = &unk_100018460;
  v17 = &v25;
  v14[4] = self;
  v9 = v6;
  v15 = v9;
  v10 = v8;
  v16 = v10;
  v18 = &v19;
  [v10 performBlockAndWait:v14];
  if (a4)
  {
    v11 = v20[5];
    if (v11)
    {
      *a4 = v11;
    }
  }

  v12 = v26[3];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v12;
}

- (void)conversationLinkDescriptorCountWithPredicate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FTPersistentDataSource *)self persistentContainer];
  v9 = [v8 managedObjectContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100004134;
  v13[3] = &unk_100018488;
  v13[4] = self;
  v14 = v6;
  v15 = v9;
  v16 = v7;
  v10 = v7;
  v11 = v9;
  v12 = v6;
  [v11 performBlock:v13];
}

- (id)conversationLinkDescriptorsWithPredicate:(id)a3 limit:(unint64_t)a4 offset:(unint64_t)a5 error:(id *)a6
{
  v10 = a3;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_1000037B0;
  v36 = sub_1000037C0;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1000037B0;
  v30 = sub_1000037C0;
  v31 = 0;
  v11 = [(FTPersistentDataSource *)self persistentContainer];
  v12 = [v11 managedObjectContext];

  v13 = FTCServiceLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "conversationLinkDescriptorsWithPredicate: %@", buf, 0xCu);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100004430;
  v19[3] = &unk_1000184B0;
  v22 = &v32;
  v19[4] = self;
  v14 = v10;
  v20 = v14;
  v15 = v12;
  v24 = a4;
  v25 = a5;
  v21 = v15;
  v23 = &v26;
  [v15 performBlockAndWait:v19];
  if (a6)
  {
    v16 = v27[5];
    if (v16)
    {
      *a6 = v16;
    }
  }

  v17 = v33[5];

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v17;
}

- (void)conversationLinkDescriptorsWithPredicate:(id)a3 limit:(unint64_t)a4 offset:(unint64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [(FTPersistentDataSource *)self persistentContainer];
  v13 = [v12 managedObjectContext];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000045C0;
  v17[3] = &unk_1000184D8;
  v17[4] = self;
  v18 = v10;
  v21 = a4;
  v22 = a5;
  v19 = v13;
  v20 = v11;
  v14 = v11;
  v15 = v13;
  v16 = v10;
  [v15 performBlock:v17];
}

- (unint64_t)removeConversationLinkDescriptorsWithPredicate:(id)a3 deleteReason:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0x7FFFFFFFFFFFFFFFLL;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1000037B0;
  v26 = sub_1000037C0;
  v27 = 0;
  v9 = [(FTPersistentDataSource *)self persistentContainer];
  v10 = [v9 managedObjectContext];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000047FC;
  v16[3] = &unk_100018500;
  v19 = &v28;
  v16[4] = self;
  v11 = v8;
  v17 = v11;
  v21 = a4;
  v12 = v10;
  v18 = v12;
  v20 = &v22;
  [v12 performBlockAndWait:v16];
  if (a5)
  {
    v13 = v23[5];
    if (v13)
    {
      *a5 = v13;
    }
  }

  v14 = v29[3];

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v14;
}

- (void)removeConversationLinkDescriptorsWithPredicate:(id)a3 deleteReason:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(FTPersistentDataSource *)self persistentContainer];
  v11 = [v10 managedObjectContext];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100004970;
  v15[3] = &unk_100018528;
  v15[4] = self;
  v16 = v8;
  v18 = v9;
  v19 = a4;
  v17 = v11;
  v12 = v9;
  v13 = v11;
  v14 = v8;
  [v13 performBlock:v15];
}

- (unint64_t)removeLinkDescriptorsFromDataSourceWithPredicate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0x7FFFFFFFFFFFFFFFLL;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1000037B0;
  v23 = sub_1000037C0;
  v24 = 0;
  v7 = [(FTPersistentDataSource *)self persistentContainer];
  v8 = [v7 managedObjectContext];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100004B9C;
  v14[3] = &unk_100018460;
  v17 = &v25;
  v14[4] = self;
  v9 = v6;
  v15 = v9;
  v10 = v8;
  v16 = v10;
  v18 = &v19;
  [v10 performBlockAndWait:v14];
  if (a4)
  {
    v11 = v20[5];
    if (v11)
    {
      *a4 = v11;
    }
  }

  v12 = v26[3];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v12;
}

- (void)removeLinkDescriptorsFromDataSourceWithPredicate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FTPersistentDataSource *)self persistentContainer];
  v9 = [v8 managedObjectContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100004D08;
  v13[3] = &unk_100018488;
  v13[4] = self;
  v14 = v6;
  v15 = v9;
  v16 = v7;
  v10 = v7;
  v11 = v9;
  v12 = v6;
  [v11 performBlock:v13];
}

- (unint64_t)setActivated:(BOOL)a3 withRevision:(int64_t)a4 forConversationLinkDescriptorsWithPredicate:(id)a5 error:(id *)a6
{
  v10 = a5;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0x7FFFFFFFFFFFFFFFLL;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1000037B0;
  v29 = sub_1000037C0;
  v30 = 0;
  v11 = [(FTPersistentDataSource *)self persistentContainer];
  v12 = [v11 managedObjectContext];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100004F48;
  v18[3] = &unk_100018550;
  v21 = &v31;
  v18[4] = self;
  v24 = a3;
  v23 = a4;
  v13 = v10;
  v19 = v13;
  v14 = v12;
  v20 = v14;
  v22 = &v25;
  [v14 performBlockAndWait:v18];
  if (a6)
  {
    v15 = v26[5];
    if (v15)
    {
      *a6 = v15;
    }
  }

  v16 = v32[3];

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v16;
}

- (void)setActivated:(BOOL)a3 withRevision:(int64_t)a4 forConversationLinkDescriptorsWithPredicate:(id)a5 completion:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = [(FTPersistentDataSource *)self persistentContainer];
  v13 = [v12 managedObjectContext];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000050D0;
  v17[3] = &unk_100018578;
  v22 = a3;
  v20 = v11;
  v21 = a4;
  v17[4] = self;
  v18 = v10;
  v19 = v13;
  v14 = v11;
  v15 = v13;
  v16 = v10;
  [v15 performBlock:v17];
}

- (unint64_t)setExpirationDate:(id)a3 withRevision:(int64_t)a4 forConversationLinkDescriptorsWithPredicate:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0x7FFFFFFFFFFFFFFFLL;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1000037B0;
  v31 = sub_1000037C0;
  v32 = 0;
  v12 = [(FTPersistentDataSource *)self persistentContainer];
  v13 = [v12 managedObjectContext];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100005334;
  v20[3] = &unk_1000185A0;
  v24 = &v33;
  v20[4] = self;
  v14 = v10;
  v21 = v14;
  v26 = a4;
  v15 = v11;
  v22 = v15;
  v16 = v13;
  v23 = v16;
  v25 = &v27;
  [v16 performBlockAndWait:v20];
  if (a6)
  {
    v17 = v28[5];
    if (v17)
    {
      *a6 = v17;
    }
  }

  v18 = v34[3];

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v18;
}

- (void)setExpirationDate:(id)a3 withRevision:(int64_t)a4 forConversationLinkDescriptorsWithPredicate:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(FTPersistentDataSource *)self persistentContainer];
  v14 = [v13 managedObjectContext];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000054D4;
  v19[3] = &unk_1000185C8;
  v19[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v14;
  v23 = v12;
  v24 = a4;
  v15 = v12;
  v16 = v14;
  v17 = v11;
  v18 = v10;
  [v16 performBlock:v19];
}

- (unint64_t)setInvitedHandles:(id)a3 withRevision:(int64_t)a4 forConversationLinkDescriptorsWithPredicate:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0x7FFFFFFFFFFFFFFFLL;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1000037B0;
  v31 = sub_1000037C0;
  v32 = 0;
  v12 = [(FTPersistentDataSource *)self persistentContainer];
  v13 = [v12 managedObjectContext];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100005738;
  v20[3] = &unk_1000185A0;
  v24 = &v33;
  v20[4] = self;
  v14 = v10;
  v21 = v14;
  v26 = a4;
  v15 = v11;
  v22 = v15;
  v16 = v13;
  v23 = v16;
  v25 = &v27;
  [v16 performBlockAndWait:v20];
  if (a6)
  {
    v17 = v28[5];
    if (v17)
    {
      *a6 = v17;
    }
  }

  v18 = v34[3];

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v18;
}

- (void)setInvitedHandles:(id)a3 withRevision:(int64_t)a4 forConversationLinkDescriptorsWithPredicate:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(FTPersistentDataSource *)self persistentContainer];
  v14 = [v13 managedObjectContext];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000058D8;
  v19[3] = &unk_1000185C8;
  v19[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v14;
  v23 = v12;
  v24 = a4;
  v15 = v12;
  v16 = v14;
  v17 = v11;
  v18 = v10;
  [v16 performBlock:v19];
}

- (unint64_t)setName:(id)a3 withRevision:(int64_t)a4 forConversationLinkDescriptorsWithPredicate:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0x7FFFFFFFFFFFFFFFLL;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1000037B0;
  v31 = sub_1000037C0;
  v32 = 0;
  v12 = [(FTPersistentDataSource *)self persistentContainer];
  v13 = [v12 managedObjectContext];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100005B3C;
  v20[3] = &unk_1000185A0;
  v24 = &v33;
  v20[4] = self;
  v14 = v10;
  v21 = v14;
  v26 = a4;
  v15 = v11;
  v22 = v15;
  v16 = v13;
  v23 = v16;
  v25 = &v27;
  [v16 performBlockAndWait:v20];
  if (a6)
  {
    v17 = v28[5];
    if (v17)
    {
      *a6 = v17;
    }
  }

  v18 = v34[3];

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v18;
}

- (void)setName:(id)a3 withRevision:(int64_t)a4 forConversationLinkDescriptorsWithPredicate:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(FTPersistentDataSource *)self persistentContainer];
  v14 = [v13 managedObjectContext];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100005CDC;
  v19[3] = &unk_1000185C8;
  v19[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v14;
  v23 = v12;
  v24 = a4;
  v15 = v12;
  v16 = v14;
  v17 = v11;
  v18 = v10;
  [v16 performBlock:v19];
}

- (BOOL)addConversationLinkDescriptors:(id)a3 managedObjectContext:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (![v8 count])
  {
    goto LABEL_15;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [FTManagedConversationLink managedConversationLinkForTUConversationLinkDescriptor:*(*(&v18 + 1) + 8 * i) inManagedObjectContext:v9, v18];
        if (v15)
        {
          [v9 insertObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  if (![v9 hasChanges])
  {
    goto LABEL_15;
  }

  if (![v9 save:a5])
  {
    [v9 rollback];
LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  [(FTPersistentDataSource *)self notifyDelegatesConversationLinkDescriptorsDidChange];
  v16 = 1;
LABEL_16:

  return v16;
}

- (BOOL)addOrUpdateConversationLinkDescriptors:(id)a3 managedObjectContext:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (![v8 count])
  {
LABEL_31:
    v27 = 0;
    goto LABEL_32;
  }

  v30 = self;
  v31 = v8;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v8;
  v34 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v34)
  {
    v10 = *v40;
    v11 = &stru_10001D000;
    v32 = v9;
    do
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v39 + 1) + 8 * i);
        v14 = [&v11[199].attr fetchRequest];
        v15 = [v13 pseudonym];
        v16 = [NSPredicate tu_predicateForConversationLinkDescriptorsWithPseudonym:v15];
        [v14 setPredicate:v16];

        v17 = [v9 executeFetchRequest:v14 error:a5];
        if ([v17 count])
        {
          v18 = FTCServiceLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v45 = v17;
            v46 = 2112;
            v47 = v13;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "update managedObjects: %@ with link: %@", buf, 0x16u);
          }

          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v19 = v17;
          v20 = [v19 countByEnumeratingWithState:&v35 objects:v43 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = v10;
            v23 = a5;
            v24 = *v36;
            do
            {
              for (j = 0; j != v21; j = j + 1)
              {
                if (*v36 != v24)
                {
                  objc_enumerationMutation(v19);
                }

                [*(*(&v35 + 1) + 8 * j) updateWithDescriptor:v13];
              }

              v21 = [v19 countByEnumeratingWithState:&v35 objects:v43 count:16];
            }

            while (v21);
            a5 = v23;
            v10 = v22;
            v9 = v32;
            v11 = &stru_10001D000;
          }
        }

        else
        {
          v19 = [&v11[199].attr managedConversationLinkForTUConversationLinkDescriptor:v13 inManagedObjectContext:v9];
          v26 = FTCServiceLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v45 = v19;
            v46 = 2112;
            v47 = v9;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "add managedConversationLink: %@ to managedObjectContext: %@", buf, 0x16u);
          }

          if (v19)
          {
            [v9 insertObject:v19];
          }
        }
      }

      v34 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v34);
  }

  if (![v9 hasChanges])
  {
    v27 = 0;
    v8 = v31;
    goto LABEL_32;
  }

  v8 = v31;
  if (![v9 save:a5])
  {
    [v9 rollback];
    v28 = FTCServiceLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_10000CC48(obj, v28);
    }

    goto LABEL_31;
  }

  [(FTPersistentDataSource *)v30 notifyDelegatesConversationLinkDescriptorsDidChange];
  v27 = 1;
LABEL_32:

  return v27;
}

- (unint64_t)conversationLinkDescriptorCountWithPredicate:(id)a3 managedObjectContext:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = +[FTManagedConversationLink fetchRequest];
  [v9 setPredicate:v8];

  v10 = [v7 countForFetchRequest:v9 error:a5];
  return v10;
}

- (id)conversationLinkDescriptorsWithPredicate:(id)a3 managedObjectContext:(id)a4 limit:(unint64_t)a5 offset:(unint64_t)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = +[FTManagedConversationLink fetchRequest];
  [v13 setFetchLimit:a5];
  [v13 setFetchOffset:a6];
  [v13 setPredicate:v11];
  [v13 setRelationshipKeyPathsForPrefetching:&off_100018D78];
  [v13 setRelationshipKeyPathsForPrefetching:&off_100018D90];
  [v13 setReturnsObjectsAsFaults:0];
  v14 = [v12 executeFetchRequest:v13 error:a7];
  v15 = v14;
  if (v14)
  {
    v16 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v14 count]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v27;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v26 + 1) + 8 * i) tuConversationLinkDescriptor];
          [v16 addObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v19);
    }

    v23 = [v16 copy];
    v24 = FTCServiceLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "get conversationLinkDescriptors: %@", buf, 0xCu);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (unint64_t)removeConversationLinkDescriptorsWithPredicate:(id)a3 deleteReason:(int64_t)a4 managedObjectContext:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = +[FTManagedConversationLink fetchRequest];
  [v12 setPredicate:v10];
  v13 = [v11 executeFetchRequest:v12 error:a6];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_15;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    do
    {
      v18 = 0;
      do
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(FTPersistentDataSource *)self deleteConversationLink:*(*(&v26 + 1) + 8 * v18) deleteReason:a4 inContext:v11];
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v16);
  }

  if (![v11 hasChanges])
  {
    goto LABEL_15;
  }

  v19 = [v11 updatedObjects];
  v20 = [v19 count];
  v21 = [v11 deletedObjects];
  v22 = [v21 count];

  if (![v11 save:a6])
  {
    [v11 rollback];
    v24 = FTCServiceLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10000CCC0(v24);
    }

LABEL_15:
    v23 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_16;
  }

  v23 = v20 + v22;
  [(FTPersistentDataSource *)self notifyDelegatesConversationLinkDescriptorsDidChange];
LABEL_16:

  return v23;
}

- (unint64_t)removeLinkDescriptorsFromDataSourceWithPredicate:(id)a3 managedObjectContext:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = +[FTManagedConversationLink fetchRequest];
  [v10 setPredicate:v8];
  v11 = [v9 executeFetchRequest:v10 error:a5];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_15;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      v16 = 0;
      do
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(FTPersistentDataSource *)self removeLinkFromDatabase:*(*(&v24 + 1) + 8 * v16) inContext:v9];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  if (![v9 hasChanges])
  {
    goto LABEL_15;
  }

  v17 = [v9 updatedObjects];
  v18 = [v17 count];
  v19 = [v9 deletedObjects];
  v20 = [v19 count];

  if (![v9 save:a5])
  {
    [v9 rollback];
    v22 = FTCServiceLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10000CD04(v22);
    }

LABEL_15:
    v21 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_16;
  }

  v21 = v18 + v20;
  [(FTPersistentDataSource *)self notifyDelegatesConversationLinkDescriptorsDidChange];
LABEL_16:

  return v21;
}

- (void)deleteConversationLink:(id)a3 deleteReason:(int64_t)a4 inContext:(id)a5
{
  v6 = a3;
  v7 = [v6 deletionDate];

  if (v7)
  {
    v8 = FTCServiceLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v6 deleteReason];
      v10 = [v6 deletionDate];
      v11 = [v6 pseudonym];
      v16 = 134218754;
      v17 = a4;
      v18 = 2048;
      v19 = v9;
      v20 = 2112;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      v12 = "deleteConversationLink: current reason: %ld, link is already deleted with reason: %ld, deletionDate: %@ for %@";
      v13 = v8;
      v14 = 42;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, &v16, v14);
    }
  }

  else
  {
    v15 = +[NSDate date];
    [v6 setDeletionDate:v15];

    [v6 setDeleteReason:a4];
    v8 = FTCServiceLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 deletionDate];
      v11 = [v6 pseudonym];
      v16 = 134218498;
      v17 = a4;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      v12 = "deleteConversationLink: reason: %ld, deletionDate: %@ for %@";
      v13 = v8;
      v14 = 32;
      goto LABEL_6;
    }
  }
}

- (void)removeLinkFromDatabase:(id)a3 inContext:(id)a4
{
  v5 = a3;
  [a4 deleteObject:v5];
  v6 = FTCServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "removeLinkFromDatabase: remove link: %@", &v7, 0xCu);
  }
}

- (unint64_t)setExpirationDate:(id)a3 withRevision:(int64_t)a4 forConversationLinkDescriptorsWithPredicate:(id)a5 managedObjectContext:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = +[FTManagedConversationLink fetchRequest];
  [v15 setPredicate:v13];
  v16 = [v14 executeFetchRequest:v15 error:a7];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_15;
  }

  v26 = self;
  v27 = a7;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v29;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v28 + 1) + 8 * i);
        [v22 setExpirationDate:v12];
        if (a4 >= 1)
        {
          [v22 setOriginatorRevision:a4];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v19);
  }

  if (![v14 hasChanges])
  {
    goto LABEL_15;
  }

  v23 = [v14 updatedObjects];
  v24 = [v23 count];

  if (![v14 save:v27])
  {
    [v14 rollback];
LABEL_15:
    v24 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_16;
  }

  [(FTPersistentDataSource *)v26 notifyDelegatesConversationLinkDescriptorsDidChange];
LABEL_16:

  return v24;
}

- (unint64_t)setInvitedHandles:(id)a3 withRevision:(int64_t)a4 forConversationLinkDescriptorsWithPredicate:(id)a5 managedObjectContext:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = +[FTManagedConversationLink fetchRequest];
  [v15 setPredicate:v13];
  v16 = [v14 executeFetchRequest:v15 error:a7];
  if (v16)
  {
    v27 = self;
    v28 = a7;
    v29 = v13;
    v30 = v12;
    v17 = [FTManagedHandle managedHandlesForTUHandles:v12 inManagedObjectContext:v14];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v18 = v16;
    v19 = [v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v32;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v31 + 1) + 8 * i);
          [v23 setInvitedHandles:v17];
          if (a4 >= 1)
          {
            [v23 setOriginatorRevision:a4];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v20);
    }

    if ([v14 hasChanges])
    {
      v24 = [v14 updatedObjects];
      v25 = [v24 count];

      v12 = v30;
      if ([v14 save:v28])
      {
        [(FTPersistentDataSource *)v27 notifyDelegatesConversationLinkDescriptorsDidChange];
      }

      else
      {
        [v14 rollback];
        v25 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v25 = 0x7FFFFFFFFFFFFFFFLL;
      v12 = v30;
    }

    v13 = v29;
  }

  else
  {
    v25 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v25;
}

- (unint64_t)setName:(id)a3 withRevision:(int64_t)a4 forConversationLinkDescriptorsWithPredicate:(id)a5 managedObjectContext:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = +[FTManagedConversationLink fetchRequest];
  [v15 setPredicate:v13];
  v16 = [v14 executeFetchRequest:v15 error:a7];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_15;
  }

  v26 = self;
  v27 = a7;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v29;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v28 + 1) + 8 * i);
        [v22 setName:v12];
        if (a4 >= 1)
        {
          [v22 setOriginatorRevision:a4];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v19);
  }

  if (![v14 hasChanges])
  {
    goto LABEL_15;
  }

  v23 = [v14 updatedObjects];
  v24 = [v23 count];

  if (![v14 save:v27])
  {
    [v14 rollback];
LABEL_15:
    v24 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_16;
  }

  [(FTPersistentDataSource *)v26 notifyDelegatesConversationLinkDescriptorsDidChange];
LABEL_16:

  return v24;
}

- (void)notifyDelegatesConversationLinkDescriptorsDidChange
{
  v3 = [(FTPersistentDataSource *)self delegateController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000743C;
  v4[3] = &unk_100018618;
  v4[4] = self;
  [v3 enumerateDelegatesUsingBlock:v4];
}

- (FTPersistentDataSource)initWithStoreType:(int64_t)a3
{
  v11.receiver = self;
  v11.super_class = FTPersistentDataSource;
  v4 = [(FTPersistentDataSource *)&v11 init];
  if (v4)
  {
    v5 = objc_alloc_init(TUDelegateController);
    delegateController = v4->_delegateController;
    v4->_delegateController = v5;

    v7 = [[FTPersistentContainer alloc] initWithStoreType:a3];
    persistentContainer = v4->_persistentContainer;
    v4->_persistentContainer = v7;

    v9 = FTCServiceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10000CD48(v9);
    }

    [(FTPersistentContainer *)v4->_persistentContainer loadPersistentStoresWithCompletionHandler:&stru_100018670];
  }

  return v4;
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FTPersistentDataSource *)self delegateController];
  [v8 addDelegate:v7 queue:v6];
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  v5 = [(FTPersistentDataSource *)self delegateController];
  [v5 removeDelegate:v4];
}

- (BOOL)setInteger:(int64_t)a3 forKey:(id)a4 error:(id *)a5
{
  v8 = a4;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100007E78;
  v25 = sub_100007E88;
  v26 = 0;
  v9 = [(FTPersistentDataSource *)self persistentContainer];
  v10 = [v9 managedObjectContext];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100007E90;
  v15[3] = &unk_100018500;
  v18 = &v27;
  v15[4] = self;
  v11 = v8;
  v16 = v11;
  v20 = a3;
  v12 = v10;
  v17 = v12;
  v19 = &v21;
  [v12 performBlockAndWait:v15];
  if (a5)
  {
    *a5 = v22[5];
  }

  v13 = *(v28 + 24);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v13;
}

- (void)setInteger:(int64_t)a3 forKey:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(FTPersistentDataSource *)self persistentContainer];
  v11 = [v10 managedObjectContext];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100008008;
  v15[3] = &unk_100018528;
  v15[4] = self;
  v16 = v8;
  v18 = v9;
  v19 = a3;
  v17 = v11;
  v12 = v9;
  v13 = v11;
  v14 = v8;
  [v13 performBlock:v15];
}

- (void)integerForKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FTPersistentDataSource *)self persistentContainer];
  v9 = [v8 managedObjectContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100008184;
  v13[3] = &unk_100018488;
  v13[4] = self;
  v14 = v6;
  v15 = v9;
  v16 = v7;
  v10 = v7;
  v11 = v9;
  v12 = v6;
  [v11 performBlock:v13];
}

- (int64_t)integerForKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0x7FFFFFFFFFFFFFFFLL;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100007E78;
  v22 = sub_100007E88;
  v23 = 0;
  v7 = [(FTPersistentDataSource *)self persistentContainer];
  v8 = [v7 managedObjectContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000083C4;
  v13[3] = &unk_1000186C0;
  v13[4] = self;
  v9 = v6;
  v14 = v9;
  v10 = v8;
  v15 = v10;
  v16 = &v18;
  v17 = &v24;
  [v10 performBlockAndWait:v13];
  if (a4)
  {
    *a4 = v19[5];
  }

  v11 = v25[3];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

- (BOOL)setString:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100007E78;
  v27 = sub_100007E88;
  v28 = 0;
  v10 = [(FTPersistentDataSource *)self persistentContainer];
  v11 = [v10 managedObjectContext];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100008614;
  v17[3] = &unk_1000186E8;
  v21 = &v29;
  v17[4] = self;
  v12 = v9;
  v18 = v12;
  v13 = v8;
  v19 = v13;
  v14 = v11;
  v20 = v14;
  v22 = &v23;
  [v14 performBlockAndWait:v17];
  if (a5)
  {
    *a5 = v24[5];
  }

  v15 = *(v30 + 24);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v15;
}

- (void)setString:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(FTPersistentDataSource *)self persistentContainer];
  v12 = [v11 managedObjectContext];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000087AC;
  v17[3] = &unk_100018710;
  v17[4] = self;
  v18 = v9;
  v19 = v8;
  v20 = v12;
  v21 = v10;
  v13 = v10;
  v14 = v12;
  v15 = v8;
  v16 = v9;
  [v14 performBlock:v17];
}

- (void)stringForKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FTPersistentDataSource *)self persistentContainer];
  v9 = [v8 managedObjectContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100008928;
  v13[3] = &unk_100018488;
  v13[4] = self;
  v14 = v6;
  v15 = v9;
  v16 = v7;
  v10 = v7;
  v11 = v9;
  v12 = v6;
  [v11 performBlock:v13];
}

- (id)stringForKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100007E78;
  v28 = sub_100007E88;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100007E78;
  v22 = sub_100007E88;
  v23 = 0;
  v7 = [(FTPersistentDataSource *)self persistentContainer];
  v8 = [v7 managedObjectContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100008BC4;
  v13[3] = &unk_1000186C0;
  v13[4] = self;
  v9 = v6;
  v14 = v9;
  v10 = v8;
  v15 = v10;
  v16 = &v18;
  v17 = &v24;
  [v10 performBlockAndWait:v13];
  if (a4)
  {
    *a4 = v19[5];
  }

  v11 = v25[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

- (id)keyValueForKey:(id)a3 managedObjectContext:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = +[FTManagedKeyValue fetchRequest];
  v10 = [NSPredicate predicateWithFormat:@"key == %@", v8];

  [v9 setPredicate:v10];
  [v9 setReturnsObjectsAsFaults:0];
  v11 = [v7 executeFetchRequest:v9 error:a5];

  if (v11)
  {
    v12 = [v11 firstObject];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)addOrUpdateKey:(id)a3 forIntegerValue:(int64_t)a4 stringValue:(id)a5 managedObjectContext:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = +[FTManagedKeyValue fetchRequest];
  v15 = [NSPredicate predicateWithFormat:@"key == %@", v11];
  [v14 setPredicate:v15];

  [v14 setReturnsObjectsAsFaults:0];
  v16 = [v13 executeFetchRequest:v14 error:a7];
  if ([v16 count])
  {
    v17 = [v16 firstObject];
    if (!v17)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v19 = [v13 persistentStoreCoordinator];
  v20 = [v19 managedObjectModel];

  if (v20)
  {
    v21 = [v20 entitiesByName];
    v22 = [v21 objectForKeyedSubscript:@"KeyValue"];

    if (v22)
    {
      v23 = [[FTManagedKeyValue alloc] initWithEntity:v22 insertIntoManagedObjectContext:v13];
    }

    else
    {
      v25 = FTCServiceLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v27 = @"KeyValue";
        v28 = 2112;
        v29 = v13;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Could not find entity description with name %@ in managed object context %@. Falling back to convenience initializer.", buf, 0x16u);
      }

      v23 = [[FTManagedKeyValue alloc] initWithContext:v13];
    }

    v17 = v23;
    if (v23)
    {
      [v13 insertObject:v23];
    }
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
LABEL_3:
    [v17 setKey:v11];
    [v17 setStringValue:v12];
    [v17 setIntegerValue:a4];
  }

LABEL_4:
  if (![v13 hasChanges])
  {
LABEL_11:
    v18 = 0;
    goto LABEL_12;
  }

  if (([v13 save:a7] & 1) == 0)
  {
    [v13 rollback];
    goto LABEL_11;
  }

  v18 = 1;
LABEL_12:

  return v18;
}

@end