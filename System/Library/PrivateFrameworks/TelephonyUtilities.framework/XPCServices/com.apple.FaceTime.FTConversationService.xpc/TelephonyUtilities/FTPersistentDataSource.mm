@interface FTPersistentDataSource
- (BOOL)addConversationLinkDescriptors:(id)descriptors error:(id *)error;
- (BOOL)addConversationLinkDescriptors:(id)descriptors managedObjectContext:(id)context error:(id *)error;
- (BOOL)addOrUpdateConversationLinkDescriptors:(id)descriptors error:(id *)error;
- (BOOL)addOrUpdateConversationLinkDescriptors:(id)descriptors managedObjectContext:(id)context error:(id *)error;
- (BOOL)addOrUpdateKey:(id)key forIntegerValue:(int64_t)value stringValue:(id)stringValue managedObjectContext:(id)context error:(id *)error;
- (BOOL)setInteger:(int64_t)integer forKey:(id)key error:(id *)error;
- (BOOL)setString:(id)string forKey:(id)key error:(id *)error;
- (FTPersistentDataSource)initWithStoreType:(int64_t)type;
- (id)conversationLinkDescriptorsWithPredicate:(id)predicate limit:(unint64_t)limit offset:(unint64_t)offset error:(id *)error;
- (id)conversationLinkDescriptorsWithPredicate:(id)predicate managedObjectContext:(id)context limit:(unint64_t)limit offset:(unint64_t)offset error:(id *)error;
- (id)keyValueForKey:(id)key managedObjectContext:(id)context error:(id *)error;
- (id)stringForKey:(id)key error:(id *)error;
- (int64_t)integerForKey:(id)key error:(id *)error;
- (unint64_t)conversationLinkDescriptorCountWithPredicate:(id)predicate error:(id *)error;
- (unint64_t)conversationLinkDescriptorCountWithPredicate:(id)predicate managedObjectContext:(id)context error:(id *)error;
- (unint64_t)removeConversationLinkDescriptorsWithPredicate:(id)predicate deleteReason:(int64_t)reason error:(id *)error;
- (unint64_t)removeConversationLinkDescriptorsWithPredicate:(id)predicate deleteReason:(int64_t)reason managedObjectContext:(id)context error:(id *)error;
- (unint64_t)removeLinkDescriptorsFromDataSourceWithPredicate:(id)predicate error:(id *)error;
- (unint64_t)removeLinkDescriptorsFromDataSourceWithPredicate:(id)predicate managedObjectContext:(id)context error:(id *)error;
- (unint64_t)setActivated:(BOOL)activated withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate error:(id *)error;
- (unint64_t)setExpirationDate:(id)date withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate error:(id *)error;
- (unint64_t)setExpirationDate:(id)date withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate managedObjectContext:(id)context error:(id *)error;
- (unint64_t)setInvitedHandles:(id)handles withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate error:(id *)error;
- (unint64_t)setInvitedHandles:(id)handles withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate managedObjectContext:(id)context error:(id *)error;
- (unint64_t)setName:(id)name withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate error:(id *)error;
- (unint64_t)setName:(id)name withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate managedObjectContext:(id)context error:(id *)error;
- (void)addConversationLinkDescriptors:(id)descriptors completion:(id)completion;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)addOrUpdateConversationLinkDescriptors:(id)descriptors completion:(id)completion;
- (void)conversationLinkDescriptorCountWithPredicate:(id)predicate completion:(id)completion;
- (void)conversationLinkDescriptorsWithPredicate:(id)predicate limit:(unint64_t)limit offset:(unint64_t)offset completion:(id)completion;
- (void)deleteConversationLink:(id)link deleteReason:(int64_t)reason inContext:(id)context;
- (void)integerForKey:(id)key completion:(id)completion;
- (void)notifyDelegatesConversationLinkDescriptorsDidChange;
- (void)removeConversationLinkDescriptorsWithPredicate:(id)predicate deleteReason:(int64_t)reason completion:(id)completion;
- (void)removeDelegate:(id)delegate;
- (void)removeLinkDescriptorsFromDataSourceWithPredicate:(id)predicate completion:(id)completion;
- (void)removeLinkFromDatabase:(id)database inContext:(id)context;
- (void)setActivated:(BOOL)activated withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate completion:(id)completion;
- (void)setExpirationDate:(id)date withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate completion:(id)completion;
- (void)setInteger:(int64_t)integer forKey:(id)key completion:(id)completion;
- (void)setInvitedHandles:(id)handles withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate completion:(id)completion;
- (void)setName:(id)name withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate completion:(id)completion;
- (void)setString:(id)string forKey:(id)key completion:(id)completion;
- (void)stringForKey:(id)key completion:(id)completion;
@end

@implementation FTPersistentDataSource

- (BOOL)addConversationLinkDescriptors:(id)descriptors error:(id *)error
{
  descriptorsCopy = descriptors;
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
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000037C8;
  v14[3] = &unk_100018460;
  v17 = &v25;
  v14[4] = self;
  v9 = descriptorsCopy;
  v15 = v9;
  v10 = managedObjectContext;
  v16 = v10;
  v18 = &v19;
  [v10 performBlockAndWait:v14];
  if (error)
  {
    v11 = v20[5];
    if (v11)
    {
      *error = v11;
    }
  }

  v12 = *(v26 + 24);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v12;
}

- (void)addConversationLinkDescriptors:(id)descriptors completion:(id)completion
{
  descriptorsCopy = descriptors;
  completionCopy = completion;
  if ([descriptorsCopy count])
  {
    persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
    managedObjectContext = [persistentContainer managedObjectContext];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100003958;
    v11[3] = &unk_100018488;
    v11[4] = self;
    v12 = descriptorsCopy;
    v13 = managedObjectContext;
    v14 = completionCopy;
    v10 = managedObjectContext;
    [v10 performBlock:v11];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (BOOL)addOrUpdateConversationLinkDescriptors:(id)descriptors error:(id *)error
{
  descriptorsCopy = descriptors;
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
    v30 = descriptorsCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "addOrUpdateConversationLinkDescriptors: %@", buf, 0xCu);
  }

  if ([descriptorsCopy count])
  {
    persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
    managedObjectContext = [persistentContainer managedObjectContext];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100003C10;
    v14[3] = &unk_100018460;
    v17 = &v25;
    v14[4] = self;
    v15 = descriptorsCopy;
    v10 = managedObjectContext;
    v16 = v10;
    v18 = &v19;
    [v10 performBlockAndWait:v14];
    if (error)
    {
      v11 = v20[5];
      if (v11)
      {
        *error = v11;
      }
    }
  }

  v12 = *(v26 + 24);
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  return v12 & 1;
}

- (void)addOrUpdateConversationLinkDescriptors:(id)descriptors completion:(id)completion
{
  descriptorsCopy = descriptors;
  completionCopy = completion;
  if ([descriptorsCopy count])
  {
    persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
    managedObjectContext = [persistentContainer managedObjectContext];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100003DA0;
    v11[3] = &unk_100018488;
    v11[4] = self;
    v12 = descriptorsCopy;
    v13 = managedObjectContext;
    v14 = completionCopy;
    v10 = managedObjectContext;
    [v10 performBlock:v11];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (unint64_t)conversationLinkDescriptorCountWithPredicate:(id)predicate error:(id *)error
{
  predicateCopy = predicate;
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
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100003FC8;
  v14[3] = &unk_100018460;
  v17 = &v25;
  v14[4] = self;
  v9 = predicateCopy;
  v15 = v9;
  v10 = managedObjectContext;
  v16 = v10;
  v18 = &v19;
  [v10 performBlockAndWait:v14];
  if (error)
  {
    v11 = v20[5];
    if (v11)
    {
      *error = v11;
    }
  }

  v12 = v26[3];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v12;
}

- (void)conversationLinkDescriptorCountWithPredicate:(id)predicate completion:(id)completion
{
  predicateCopy = predicate;
  completionCopy = completion;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100004134;
  v13[3] = &unk_100018488;
  v13[4] = self;
  v14 = predicateCopy;
  v15 = managedObjectContext;
  v16 = completionCopy;
  v10 = completionCopy;
  v11 = managedObjectContext;
  v12 = predicateCopy;
  [v11 performBlock:v13];
}

- (id)conversationLinkDescriptorsWithPredicate:(id)predicate limit:(unint64_t)limit offset:(unint64_t)offset error:(id *)error
{
  predicateCopy = predicate;
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
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v13 = FTCServiceLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = predicateCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "conversationLinkDescriptorsWithPredicate: %@", buf, 0xCu);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100004430;
  v19[3] = &unk_1000184B0;
  v22 = &v32;
  v19[4] = self;
  v14 = predicateCopy;
  v20 = v14;
  v15 = managedObjectContext;
  limitCopy = limit;
  offsetCopy = offset;
  v21 = v15;
  v23 = &v26;
  [v15 performBlockAndWait:v19];
  if (error)
  {
    v16 = v27[5];
    if (v16)
    {
      *error = v16;
    }
  }

  v17 = v33[5];

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v17;
}

- (void)conversationLinkDescriptorsWithPredicate:(id)predicate limit:(unint64_t)limit offset:(unint64_t)offset completion:(id)completion
{
  predicateCopy = predicate;
  completionCopy = completion;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000045C0;
  v17[3] = &unk_1000184D8;
  v17[4] = self;
  v18 = predicateCopy;
  limitCopy = limit;
  offsetCopy = offset;
  v19 = managedObjectContext;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = managedObjectContext;
  v16 = predicateCopy;
  [v15 performBlock:v17];
}

- (unint64_t)removeConversationLinkDescriptorsWithPredicate:(id)predicate deleteReason:(int64_t)reason error:(id *)error
{
  predicateCopy = predicate;
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
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000047FC;
  v16[3] = &unk_100018500;
  v19 = &v28;
  v16[4] = self;
  v11 = predicateCopy;
  v17 = v11;
  reasonCopy = reason;
  v12 = managedObjectContext;
  v18 = v12;
  v20 = &v22;
  [v12 performBlockAndWait:v16];
  if (error)
  {
    v13 = v23[5];
    if (v13)
    {
      *error = v13;
    }
  }

  v14 = v29[3];

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v14;
}

- (void)removeConversationLinkDescriptorsWithPredicate:(id)predicate deleteReason:(int64_t)reason completion:(id)completion
{
  predicateCopy = predicate;
  completionCopy = completion;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100004970;
  v15[3] = &unk_100018528;
  v15[4] = self;
  v16 = predicateCopy;
  v18 = completionCopy;
  reasonCopy = reason;
  v17 = managedObjectContext;
  v12 = completionCopy;
  v13 = managedObjectContext;
  v14 = predicateCopy;
  [v13 performBlock:v15];
}

- (unint64_t)removeLinkDescriptorsFromDataSourceWithPredicate:(id)predicate error:(id *)error
{
  predicateCopy = predicate;
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
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100004B9C;
  v14[3] = &unk_100018460;
  v17 = &v25;
  v14[4] = self;
  v9 = predicateCopy;
  v15 = v9;
  v10 = managedObjectContext;
  v16 = v10;
  v18 = &v19;
  [v10 performBlockAndWait:v14];
  if (error)
  {
    v11 = v20[5];
    if (v11)
    {
      *error = v11;
    }
  }

  v12 = v26[3];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v12;
}

- (void)removeLinkDescriptorsFromDataSourceWithPredicate:(id)predicate completion:(id)completion
{
  predicateCopy = predicate;
  completionCopy = completion;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100004D08;
  v13[3] = &unk_100018488;
  v13[4] = self;
  v14 = predicateCopy;
  v15 = managedObjectContext;
  v16 = completionCopy;
  v10 = completionCopy;
  v11 = managedObjectContext;
  v12 = predicateCopy;
  [v11 performBlock:v13];
}

- (unint64_t)setActivated:(BOOL)activated withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate error:(id *)error
{
  predicateCopy = predicate;
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
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100004F48;
  v18[3] = &unk_100018550;
  v21 = &v31;
  v18[4] = self;
  activatedCopy = activated;
  revisionCopy = revision;
  v13 = predicateCopy;
  v19 = v13;
  v14 = managedObjectContext;
  v20 = v14;
  v22 = &v25;
  [v14 performBlockAndWait:v18];
  if (error)
  {
    v15 = v26[5];
    if (v15)
    {
      *error = v15;
    }
  }

  v16 = v32[3];

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v16;
}

- (void)setActivated:(BOOL)activated withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate completion:(id)completion
{
  predicateCopy = predicate;
  completionCopy = completion;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000050D0;
  v17[3] = &unk_100018578;
  activatedCopy = activated;
  v20 = completionCopy;
  revisionCopy = revision;
  v17[4] = self;
  v18 = predicateCopy;
  v19 = managedObjectContext;
  v14 = completionCopy;
  v15 = managedObjectContext;
  v16 = predicateCopy;
  [v15 performBlock:v17];
}

- (unint64_t)setExpirationDate:(id)date withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate error:(id *)error
{
  dateCopy = date;
  predicateCopy = predicate;
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
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100005334;
  v20[3] = &unk_1000185A0;
  v24 = &v33;
  v20[4] = self;
  v14 = dateCopy;
  v21 = v14;
  revisionCopy = revision;
  v15 = predicateCopy;
  v22 = v15;
  v16 = managedObjectContext;
  v23 = v16;
  v25 = &v27;
  [v16 performBlockAndWait:v20];
  if (error)
  {
    v17 = v28[5];
    if (v17)
    {
      *error = v17;
    }
  }

  v18 = v34[3];

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v18;
}

- (void)setExpirationDate:(id)date withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate completion:(id)completion
{
  dateCopy = date;
  predicateCopy = predicate;
  completionCopy = completion;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000054D4;
  v19[3] = &unk_1000185C8;
  v19[4] = self;
  v20 = dateCopy;
  v21 = predicateCopy;
  v22 = managedObjectContext;
  v23 = completionCopy;
  revisionCopy = revision;
  v15 = completionCopy;
  v16 = managedObjectContext;
  v17 = predicateCopy;
  v18 = dateCopy;
  [v16 performBlock:v19];
}

- (unint64_t)setInvitedHandles:(id)handles withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate error:(id *)error
{
  handlesCopy = handles;
  predicateCopy = predicate;
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
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100005738;
  v20[3] = &unk_1000185A0;
  v24 = &v33;
  v20[4] = self;
  v14 = handlesCopy;
  v21 = v14;
  revisionCopy = revision;
  v15 = predicateCopy;
  v22 = v15;
  v16 = managedObjectContext;
  v23 = v16;
  v25 = &v27;
  [v16 performBlockAndWait:v20];
  if (error)
  {
    v17 = v28[5];
    if (v17)
    {
      *error = v17;
    }
  }

  v18 = v34[3];

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v18;
}

- (void)setInvitedHandles:(id)handles withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate completion:(id)completion
{
  handlesCopy = handles;
  predicateCopy = predicate;
  completionCopy = completion;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000058D8;
  v19[3] = &unk_1000185C8;
  v19[4] = self;
  v20 = handlesCopy;
  v21 = predicateCopy;
  v22 = managedObjectContext;
  v23 = completionCopy;
  revisionCopy = revision;
  v15 = completionCopy;
  v16 = managedObjectContext;
  v17 = predicateCopy;
  v18 = handlesCopy;
  [v16 performBlock:v19];
}

- (unint64_t)setName:(id)name withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate error:(id *)error
{
  nameCopy = name;
  predicateCopy = predicate;
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
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100005B3C;
  v20[3] = &unk_1000185A0;
  v24 = &v33;
  v20[4] = self;
  v14 = nameCopy;
  v21 = v14;
  revisionCopy = revision;
  v15 = predicateCopy;
  v22 = v15;
  v16 = managedObjectContext;
  v23 = v16;
  v25 = &v27;
  [v16 performBlockAndWait:v20];
  if (error)
  {
    v17 = v28[5];
    if (v17)
    {
      *error = v17;
    }
  }

  v18 = v34[3];

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);

  return v18;
}

- (void)setName:(id)name withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate completion:(id)completion
{
  nameCopy = name;
  predicateCopy = predicate;
  completionCopy = completion;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100005CDC;
  v19[3] = &unk_1000185C8;
  v19[4] = self;
  v20 = nameCopy;
  v21 = predicateCopy;
  v22 = managedObjectContext;
  v23 = completionCopy;
  revisionCopy = revision;
  v15 = completionCopy;
  v16 = managedObjectContext;
  v17 = predicateCopy;
  v18 = nameCopy;
  [v16 performBlock:v19];
}

- (BOOL)addConversationLinkDescriptors:(id)descriptors managedObjectContext:(id)context error:(id *)error
{
  descriptorsCopy = descriptors;
  contextCopy = context;
  if (![descriptorsCopy count])
  {
    goto LABEL_15;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = descriptorsCopy;
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

        v15 = [FTManagedConversationLink managedConversationLinkForTUConversationLinkDescriptor:*(*(&v18 + 1) + 8 * i) inManagedObjectContext:contextCopy, v18];
        if (v15)
        {
          [contextCopy insertObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  if (![contextCopy hasChanges])
  {
    goto LABEL_15;
  }

  if (![contextCopy save:error])
  {
    [contextCopy rollback];
LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  [(FTPersistentDataSource *)self notifyDelegatesConversationLinkDescriptorsDidChange];
  v16 = 1;
LABEL_16:

  return v16;
}

- (BOOL)addOrUpdateConversationLinkDescriptors:(id)descriptors managedObjectContext:(id)context error:(id *)error
{
  descriptorsCopy = descriptors;
  contextCopy = context;
  if (![descriptorsCopy count])
  {
LABEL_31:
    v27 = 0;
    goto LABEL_32;
  }

  selfCopy = self;
  v31 = descriptorsCopy;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = descriptorsCopy;
  v34 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v34)
  {
    v10 = *v40;
    v11 = &stru_10001D000;
    v32 = contextCopy;
    do
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v39 + 1) + 8 * i);
        fetchRequest = [&v11[199].attr fetchRequest];
        pseudonym = [v13 pseudonym];
        v16 = [NSPredicate tu_predicateForConversationLinkDescriptorsWithPseudonym:pseudonym];
        [fetchRequest setPredicate:v16];

        v17 = [contextCopy executeFetchRequest:fetchRequest error:error];
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
            errorCopy = error;
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
            error = errorCopy;
            v10 = v22;
            contextCopy = v32;
            v11 = &stru_10001D000;
          }
        }

        else
        {
          v19 = [&v11[199].attr managedConversationLinkForTUConversationLinkDescriptor:v13 inManagedObjectContext:contextCopy];
          v26 = FTCServiceLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v45 = v19;
            v46 = 2112;
            v47 = contextCopy;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "add managedConversationLink: %@ to managedObjectContext: %@", buf, 0x16u);
          }

          if (v19)
          {
            [contextCopy insertObject:v19];
          }
        }
      }

      v34 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v34);
  }

  if (![contextCopy hasChanges])
  {
    v27 = 0;
    descriptorsCopy = v31;
    goto LABEL_32;
  }

  descriptorsCopy = v31;
  if (![contextCopy save:error])
  {
    [contextCopy rollback];
    v28 = FTCServiceLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_10000CC48(obj, v28);
    }

    goto LABEL_31;
  }

  [(FTPersistentDataSource *)selfCopy notifyDelegatesConversationLinkDescriptorsDidChange];
  v27 = 1;
LABEL_32:

  return v27;
}

- (unint64_t)conversationLinkDescriptorCountWithPredicate:(id)predicate managedObjectContext:(id)context error:(id *)error
{
  contextCopy = context;
  predicateCopy = predicate;
  v9 = +[FTManagedConversationLink fetchRequest];
  [v9 setPredicate:predicateCopy];

  v10 = [contextCopy countForFetchRequest:v9 error:error];
  return v10;
}

- (id)conversationLinkDescriptorsWithPredicate:(id)predicate managedObjectContext:(id)context limit:(unint64_t)limit offset:(unint64_t)offset error:(id *)error
{
  predicateCopy = predicate;
  contextCopy = context;
  v13 = +[FTManagedConversationLink fetchRequest];
  [v13 setFetchLimit:limit];
  [v13 setFetchOffset:offset];
  [v13 setPredicate:predicateCopy];
  [v13 setRelationshipKeyPathsForPrefetching:&off_100018D78];
  [v13 setRelationshipKeyPathsForPrefetching:&off_100018D90];
  [v13 setReturnsObjectsAsFaults:0];
  v14 = [contextCopy executeFetchRequest:v13 error:error];
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

          tuConversationLinkDescriptor = [*(*(&v26 + 1) + 8 * i) tuConversationLinkDescriptor];
          [v16 addObject:tuConversationLinkDescriptor];
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

- (unint64_t)removeConversationLinkDescriptorsWithPredicate:(id)predicate deleteReason:(int64_t)reason managedObjectContext:(id)context error:(id *)error
{
  predicateCopy = predicate;
  contextCopy = context;
  v12 = +[FTManagedConversationLink fetchRequest];
  [v12 setPredicate:predicateCopy];
  v13 = [contextCopy executeFetchRequest:v12 error:error];
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

        [(FTPersistentDataSource *)self deleteConversationLink:*(*(&v26 + 1) + 8 * v18) deleteReason:reason inContext:contextCopy];
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v16);
  }

  if (![contextCopy hasChanges])
  {
    goto LABEL_15;
  }

  updatedObjects = [contextCopy updatedObjects];
  v20 = [updatedObjects count];
  deletedObjects = [contextCopy deletedObjects];
  v22 = [deletedObjects count];

  if (![contextCopy save:error])
  {
    [contextCopy rollback];
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

- (unint64_t)removeLinkDescriptorsFromDataSourceWithPredicate:(id)predicate managedObjectContext:(id)context error:(id *)error
{
  predicateCopy = predicate;
  contextCopy = context;
  v10 = +[FTManagedConversationLink fetchRequest];
  [v10 setPredicate:predicateCopy];
  v11 = [contextCopy executeFetchRequest:v10 error:error];
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

        [(FTPersistentDataSource *)self removeLinkFromDatabase:*(*(&v24 + 1) + 8 * v16) inContext:contextCopy];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  if (![contextCopy hasChanges])
  {
    goto LABEL_15;
  }

  updatedObjects = [contextCopy updatedObjects];
  v18 = [updatedObjects count];
  deletedObjects = [contextCopy deletedObjects];
  v20 = [deletedObjects count];

  if (![contextCopy save:error])
  {
    [contextCopy rollback];
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

- (void)deleteConversationLink:(id)link deleteReason:(int64_t)reason inContext:(id)context
{
  linkCopy = link;
  deletionDate = [linkCopy deletionDate];

  if (deletionDate)
  {
    v8 = FTCServiceLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      deleteReason = [linkCopy deleteReason];
      deletionDate2 = [linkCopy deletionDate];
      pseudonym = [linkCopy pseudonym];
      v16 = 134218754;
      reasonCopy2 = reason;
      v18 = 2048;
      v19 = deleteReason;
      v20 = 2112;
      v21 = deletionDate2;
      v22 = 2112;
      v23 = pseudonym;
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
    [linkCopy setDeletionDate:v15];

    [linkCopy setDeleteReason:reason];
    v8 = FTCServiceLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      deletionDate2 = [linkCopy deletionDate];
      pseudonym = [linkCopy pseudonym];
      v16 = 134218498;
      reasonCopy2 = reason;
      v18 = 2112;
      v19 = deletionDate2;
      v20 = 2112;
      v21 = pseudonym;
      v12 = "deleteConversationLink: reason: %ld, deletionDate: %@ for %@";
      v13 = v8;
      v14 = 32;
      goto LABEL_6;
    }
  }
}

- (void)removeLinkFromDatabase:(id)database inContext:(id)context
{
  databaseCopy = database;
  [context deleteObject:databaseCopy];
  v6 = FTCServiceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = databaseCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "removeLinkFromDatabase: remove link: %@", &v7, 0xCu);
  }
}

- (unint64_t)setExpirationDate:(id)date withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate managedObjectContext:(id)context error:(id *)error
{
  dateCopy = date;
  predicateCopy = predicate;
  contextCopy = context;
  v15 = +[FTManagedConversationLink fetchRequest];
  [v15 setPredicate:predicateCopy];
  v16 = [contextCopy executeFetchRequest:v15 error:error];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_15;
  }

  selfCopy = self;
  errorCopy = error;
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
        [v22 setExpirationDate:dateCopy];
        if (revision >= 1)
        {
          [v22 setOriginatorRevision:revision];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v19);
  }

  if (![contextCopy hasChanges])
  {
    goto LABEL_15;
  }

  updatedObjects = [contextCopy updatedObjects];
  v24 = [updatedObjects count];

  if (![contextCopy save:errorCopy])
  {
    [contextCopy rollback];
LABEL_15:
    v24 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_16;
  }

  [(FTPersistentDataSource *)selfCopy notifyDelegatesConversationLinkDescriptorsDidChange];
LABEL_16:

  return v24;
}

- (unint64_t)setInvitedHandles:(id)handles withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate managedObjectContext:(id)context error:(id *)error
{
  handlesCopy = handles;
  predicateCopy = predicate;
  contextCopy = context;
  v15 = +[FTManagedConversationLink fetchRequest];
  [v15 setPredicate:predicateCopy];
  v16 = [contextCopy executeFetchRequest:v15 error:error];
  if (v16)
  {
    selfCopy = self;
    errorCopy = error;
    v29 = predicateCopy;
    v30 = handlesCopy;
    v17 = [FTManagedHandle managedHandlesForTUHandles:handlesCopy inManagedObjectContext:contextCopy];
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
          if (revision >= 1)
          {
            [v23 setOriginatorRevision:revision];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v20);
    }

    if ([contextCopy hasChanges])
    {
      updatedObjects = [contextCopy updatedObjects];
      v25 = [updatedObjects count];

      handlesCopy = v30;
      if ([contextCopy save:errorCopy])
      {
        [(FTPersistentDataSource *)selfCopy notifyDelegatesConversationLinkDescriptorsDidChange];
      }

      else
      {
        [contextCopy rollback];
        v25 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v25 = 0x7FFFFFFFFFFFFFFFLL;
      handlesCopy = v30;
    }

    predicateCopy = v29;
  }

  else
  {
    v25 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v25;
}

- (unint64_t)setName:(id)name withRevision:(int64_t)revision forConversationLinkDescriptorsWithPredicate:(id)predicate managedObjectContext:(id)context error:(id *)error
{
  nameCopy = name;
  predicateCopy = predicate;
  contextCopy = context;
  v15 = +[FTManagedConversationLink fetchRequest];
  [v15 setPredicate:predicateCopy];
  v16 = [contextCopy executeFetchRequest:v15 error:error];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_15;
  }

  selfCopy = self;
  errorCopy = error;
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
        [v22 setName:nameCopy];
        if (revision >= 1)
        {
          [v22 setOriginatorRevision:revision];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v19);
  }

  if (![contextCopy hasChanges])
  {
    goto LABEL_15;
  }

  updatedObjects = [contextCopy updatedObjects];
  v24 = [updatedObjects count];

  if (![contextCopy save:errorCopy])
  {
    [contextCopy rollback];
LABEL_15:
    v24 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_16;
  }

  [(FTPersistentDataSource *)selfCopy notifyDelegatesConversationLinkDescriptorsDidChange];
LABEL_16:

  return v24;
}

- (void)notifyDelegatesConversationLinkDescriptorsDidChange
{
  delegateController = [(FTPersistentDataSource *)self delegateController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000743C;
  v4[3] = &unk_100018618;
  v4[4] = self;
  [delegateController enumerateDelegatesUsingBlock:v4];
}

- (FTPersistentDataSource)initWithStoreType:(int64_t)type
{
  v11.receiver = self;
  v11.super_class = FTPersistentDataSource;
  v4 = [(FTPersistentDataSource *)&v11 init];
  if (v4)
  {
    v5 = objc_alloc_init(TUDelegateController);
    delegateController = v4->_delegateController;
    v4->_delegateController = v5;

    v7 = [[FTPersistentContainer alloc] initWithStoreType:type];
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

- (void)addDelegate:(id)delegate queue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  delegateController = [(FTPersistentDataSource *)self delegateController];
  [delegateController addDelegate:delegateCopy queue:queueCopy];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegateController = [(FTPersistentDataSource *)self delegateController];
  [delegateController removeDelegate:delegateCopy];
}

- (BOOL)setInteger:(int64_t)integer forKey:(id)key error:(id *)error
{
  keyCopy = key;
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
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100007E90;
  v15[3] = &unk_100018500;
  v18 = &v27;
  v15[4] = self;
  v11 = keyCopy;
  v16 = v11;
  integerCopy = integer;
  v12 = managedObjectContext;
  v17 = v12;
  v19 = &v21;
  [v12 performBlockAndWait:v15];
  if (error)
  {
    *error = v22[5];
  }

  v13 = *(v28 + 24);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v13;
}

- (void)setInteger:(int64_t)integer forKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100008008;
  v15[3] = &unk_100018528;
  v15[4] = self;
  v16 = keyCopy;
  v18 = completionCopy;
  integerCopy = integer;
  v17 = managedObjectContext;
  v12 = completionCopy;
  v13 = managedObjectContext;
  v14 = keyCopy;
  [v13 performBlock:v15];
}

- (void)integerForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100008184;
  v13[3] = &unk_100018488;
  v13[4] = self;
  v14 = keyCopy;
  v15 = managedObjectContext;
  v16 = completionCopy;
  v10 = completionCopy;
  v11 = managedObjectContext;
  v12 = keyCopy;
  [v11 performBlock:v13];
}

- (int64_t)integerForKey:(id)key error:(id *)error
{
  keyCopy = key;
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
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000083C4;
  v13[3] = &unk_1000186C0;
  v13[4] = self;
  v9 = keyCopy;
  v14 = v9;
  v10 = managedObjectContext;
  v15 = v10;
  v16 = &v18;
  v17 = &v24;
  [v10 performBlockAndWait:v13];
  if (error)
  {
    *error = v19[5];
  }

  v11 = v25[3];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

- (BOOL)setString:(id)string forKey:(id)key error:(id *)error
{
  stringCopy = string;
  keyCopy = key;
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
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100008614;
  v17[3] = &unk_1000186E8;
  v21 = &v29;
  v17[4] = self;
  v12 = keyCopy;
  v18 = v12;
  v13 = stringCopy;
  v19 = v13;
  v14 = managedObjectContext;
  v20 = v14;
  v22 = &v23;
  [v14 performBlockAndWait:v17];
  if (error)
  {
    *error = v24[5];
  }

  v15 = *(v30 + 24);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v15;
}

- (void)setString:(id)string forKey:(id)key completion:(id)completion
{
  stringCopy = string;
  keyCopy = key;
  completionCopy = completion;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000087AC;
  v17[3] = &unk_100018710;
  v17[4] = self;
  v18 = keyCopy;
  v19 = stringCopy;
  v20 = managedObjectContext;
  v21 = completionCopy;
  v13 = completionCopy;
  v14 = managedObjectContext;
  v15 = stringCopy;
  v16 = keyCopy;
  [v14 performBlock:v17];
}

- (void)stringForKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100008928;
  v13[3] = &unk_100018488;
  v13[4] = self;
  v14 = keyCopy;
  v15 = managedObjectContext;
  v16 = completionCopy;
  v10 = completionCopy;
  v11 = managedObjectContext;
  v12 = keyCopy;
  [v11 performBlock:v13];
}

- (id)stringForKey:(id)key error:(id *)error
{
  keyCopy = key;
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
  persistentContainer = [(FTPersistentDataSource *)self persistentContainer];
  managedObjectContext = [persistentContainer managedObjectContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100008BC4;
  v13[3] = &unk_1000186C0;
  v13[4] = self;
  v9 = keyCopy;
  v14 = v9;
  v10 = managedObjectContext;
  v15 = v10;
  v16 = &v18;
  v17 = &v24;
  [v10 performBlockAndWait:v13];
  if (error)
  {
    *error = v19[5];
  }

  v11 = v25[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

- (id)keyValueForKey:(id)key managedObjectContext:(id)context error:(id *)error
{
  contextCopy = context;
  keyCopy = key;
  v9 = +[FTManagedKeyValue fetchRequest];
  keyCopy = [NSPredicate predicateWithFormat:@"key == %@", keyCopy];

  [v9 setPredicate:keyCopy];
  [v9 setReturnsObjectsAsFaults:0];
  v11 = [contextCopy executeFetchRequest:v9 error:error];

  if (v11)
  {
    firstObject = [v11 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (BOOL)addOrUpdateKey:(id)key forIntegerValue:(int64_t)value stringValue:(id)stringValue managedObjectContext:(id)context error:(id *)error
{
  keyCopy = key;
  stringValueCopy = stringValue;
  contextCopy = context;
  v14 = +[FTManagedKeyValue fetchRequest];
  keyCopy = [NSPredicate predicateWithFormat:@"key == %@", keyCopy];
  [v14 setPredicate:keyCopy];

  [v14 setReturnsObjectsAsFaults:0];
  v16 = [contextCopy executeFetchRequest:v14 error:error];
  if ([v16 count])
  {
    firstObject = [v16 firstObject];
    if (!firstObject)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  persistentStoreCoordinator = [contextCopy persistentStoreCoordinator];
  managedObjectModel = [persistentStoreCoordinator managedObjectModel];

  if (managedObjectModel)
  {
    entitiesByName = [managedObjectModel entitiesByName];
    v22 = [entitiesByName objectForKeyedSubscript:@"KeyValue"];

    if (v22)
    {
      v23 = [[FTManagedKeyValue alloc] initWithEntity:v22 insertIntoManagedObjectContext:contextCopy];
    }

    else
    {
      v25 = FTCServiceLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v27 = @"KeyValue";
        v28 = 2112;
        v29 = contextCopy;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Could not find entity description with name %@ in managed object context %@. Falling back to convenience initializer.", buf, 0x16u);
      }

      v23 = [[FTManagedKeyValue alloc] initWithContext:contextCopy];
    }

    firstObject = v23;
    if (v23)
    {
      [contextCopy insertObject:v23];
    }
  }

  else
  {
    firstObject = 0;
  }

  if (firstObject)
  {
LABEL_3:
    [firstObject setKey:keyCopy];
    [firstObject setStringValue:stringValueCopy];
    [firstObject setIntegerValue:value];
  }

LABEL_4:
  if (![contextCopy hasChanges])
  {
LABEL_11:
    v18 = 0;
    goto LABEL_12;
  }

  if (([contextCopy save:error] & 1) == 0)
  {
    [contextCopy rollback];
    goto LABEL_11;
  }

  v18 = 1;
LABEL_12:

  return v18;
}

@end