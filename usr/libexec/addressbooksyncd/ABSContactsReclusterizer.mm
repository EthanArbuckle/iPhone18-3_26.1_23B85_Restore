@interface ABSContactsReclusterizer
+ (id)sharedInstance;
- (ABSContactsReclusterizer)init;
- (void)_insureContact:(id)contact isClustered:(id)clustered;
- (void)_insureContactsAreSolo:(id)solo;
- (void)_processClusters;
- (void)_registerForNotifications;
- (void)stashCluster:(id)cluster forGuid:(id)guid;
@end

@implementation ABSContactsReclusterizer

+ (id)sharedInstance
{
  if (qword_100071C20 != -1)
  {
    sub_10003A1E8();
  }

  v3 = qword_100071C18;

  return v3;
}

- (ABSContactsReclusterizer)init
{
  v8.receiver = self;
  v8.super_class = ABSContactsReclusterizer;
  v2 = [(ABSContactsReclusterizer *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    clusters = v2->_clusters;
    v2->_clusters = v3;

    v5 = sub_10002AD40("LinkReclusterizer");
    q = v2->_q;
    v2->_q = v5;

    [(ABSContactsReclusterizer *)v2 _registerForNotifications];
  }

  return v2;
}

- (void)stashCluster:(id)cluster forGuid:(id)guid
{
  clusterCopy = cluster;
  guidCopy = guid;
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000144E8;
  block[3] = &unk_10005D100;
  block[4] = self;
  v12 = guidCopy;
  v13 = clusterCopy;
  v9 = clusterCopy;
  v10 = guidCopy;
  dispatch_sync(q, block);
}

- (void)_registerForNotifications
{
  v3 = +[ABSContactsInterface sharedInstance];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100014588;
  v4[3] = &unk_10005CDF0;
  v4[4] = self;
  [v3 registerPostSaveBlock:v4];
}

- (void)_processClusters
{
  kdebug_trace();
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1000149C4;
  v30 = sub_1000149D4;
  v31 = 0;
  q = self->_q;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000149DC;
  block[3] = &unk_10005D018;
  block[4] = self;
  block[5] = &v26;
  selfCopy = self;
  dispatch_sync(q, block);
  if ([v27[5] count])
  {
    v4 = +[ABSContactsInterface sharedInstance];
    [v4 incrementInUse];

    v5 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v27[5] count];
      *buf = 67109120;
      LODWORD(v33) = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting link cluster processing for %d clusters.", buf, 8u);
    }

    v7 = [NSMutableArray alloc];
    v8 = [v7 initWithCapacity:{objc_msgSend(v27[5], "count")}];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v27[5];
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v36 count:16];
    if (v10)
    {
      v12 = *v22;
      *&v11 = 138412546;
      v19 = v11;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [v27[5] objectForKeyedSubscript:{v14, v19}];
          v16 = *(qword_100071D00 + 8);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v19;
            v33 = v14;
            v34 = 2112;
            v35 = v15;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Cluster %@ -> %@", buf, 0x16u);
          }

          if ([v15 isNull])
          {
            [v8 addObject:v14];
          }

          else
          {
            [(ABSContactsReclusterizer *)selfCopy _insureContact:v14 isClustered:v15];
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v21 objects:v36 count:16];
      }

      while (v10);
    }

    if ([v8 count])
    {
      [(ABSContactsReclusterizer *)selfCopy _insureContactsAreSolo:v8];
    }

    v17 = +[ABSContactsInterface sharedInstance];
    [v17 decrementInUse];

    v18 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Completed link cluster processing.", buf, 2u);
    }
  }

  kdebug_trace();
  _Block_object_dispose(&v26, 8);
}

- (void)_insureContactsAreSolo:(id)solo
{
  soloCopy = solo;
  v4 = +[ABSContactsInterface sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100014AE4;
  v6[3] = &unk_10005D190;
  v7 = soloCopy;
  v5 = soloCopy;
  [v4 accessAssert:v6];
}

- (void)_insureContact:(id)contact isClustered:(id)clustered
{
  contactCopy = contact;
  clusteredCopy = clustered;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1000149C4;
  v23 = sub_1000149D4;
  v24 = 0;
  v7 = +[ABSContactsInterface sharedInstance];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100015038;
  v16[3] = &unk_10005D1B8;
  v18 = &v19;
  v8 = contactCopy;
  v17 = v8;
  [v7 accessAssert:v16];

  if (([v20[5] isEqual:clusteredCopy] & 1) == 0 && objc_msgSend(clusteredCopy, "haveAllContacts_LOCKED"))
  {
    v9 = +[ABSContactsInterface sharedInstance];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001508C;
    v15[3] = &unk_10005D208;
    v15[4] = &v19;
    [v9 mutateAssert:v15];

    v10 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Building cluster for %{public}@", buf, 0xCu);
    }

    v11 = +[ABSContactsInterface sharedInstance];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10001513C;
    v12[3] = &unk_10005D258;
    v13 = clusteredCopy;
    v14 = v8;
    [v11 mutateAssert:v12];
  }

  _Block_object_dispose(&v19, 8);
}

@end