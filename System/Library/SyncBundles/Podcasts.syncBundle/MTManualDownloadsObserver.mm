@interface MTManualDownloadsObserver
- (MTManualDownloadsObserver)initWithDelegate:(id)delegate;
- (MTManualDownloadsObserverDelegate)delegate;
- (void)_createFRC;
- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
- (void)controller:(id)controller didChangeSection:(id)section atIndex:(unint64_t)index forChangeType:(unint64_t)type;
- (void)controllerDidChangeContent:(id)content;
- (void)extensionAccessDidChange;
@end

@implementation MTManualDownloadsObserver

- (MTManualDownloadsObserver)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = MTManualDownloadsObserver;
  v5 = [(MTManualDownloadsObserver *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(MTManualDownloadsObserver *)v5 setDelegate:delegateCopy];
    sharedInstance = [sub_123C() sharedInstance];
    [sharedInstance addObserver:v6];

    [(MTManualDownloadsObserver *)v6 _createFRC];
  }

  return v6;
}

- (void)controller:(id)controller didChangeSection:(id)section atIndex:(unint64_t)index forChangeType:(unint64_t)type
{
  if (type - 1 <= 1)
  {
    [(MTManualDownloadsObserver *)self setHasChanges:1, section, index];
  }
}

- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  if (type - 1 <= 2)
  {
    [(MTManualDownloadsObserver *)self setHasChanges:1, object, path];
  }
}

- (void)controllerDidChangeContent:(id)content
{
  if ([(MTManualDownloadsObserver *)self hasChanges])
  {
    delegate = [(MTManualDownloadsObserver *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = _MTLogCategoryDatabase();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "MTManualDownloadsObserver manual downloads did change", v8, 2u);
      }

      delegate2 = [(MTManualDownloadsObserver *)self delegate];
      [delegate2 manualDownloadsDidChange];
    }
  }
}

- (void)extensionAccessDidChange
{
  sharedInstance = [sub_123C() sharedInstance];
  isReady = [sharedInstance isReady];

  if (isReady)
  {
    v5 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "MTManualDownloadsObserver extension access did change. Will create FRC.", v6, 2u);
    }

    [(MTManualDownloadsObserver *)self _createFRC];
  }
}

- (void)_createFRC
{
  v3 = [(MTManualDownloadsObserver *)self frc];

  if (!v3)
  {
    sharedInstance = [sub_123C() sharedInstance];
    isReady = [sharedInstance isReady];

    if (isReady)
    {
      v6 = _MTLogCategoryDatabase();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v32) = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "MTManualDownloadsObserver creating fetched results controller", &v32, 2u);
      }

      v37 = 0;
      v38 = &v37;
      v39 = 0x2020000000;
      v7 = qword_19A68;
      v40 = qword_19A68;
      if (!qword_19A68)
      {
        v32 = _NSConcreteStackBlock;
        v33 = 3221225472;
        v34 = sub_1DFC;
        v35 = &unk_14348;
        v36 = &v37;
        v8 = sub_1C88();
        v9 = dlsym(v8, "kMTEpisodeEntityName");
        *(v36[1] + 24) = v9;
        qword_19A68 = *(v36[1] + 24);
        v7 = v38[3];
      }

      _Block_object_dispose(&v37, 8);
      if (!v7)
      {
        sub_AA9C();
      }

      v10 = [NSFetchRequest fetchRequestWithEntityName:*v7];
      v11 = [sub_19AC() predicateForDownloadBehavior:2];
      v12 = [sub_19AC() predicateForDownloadBehavior:3];
      v13 = [v11 OR:v12];
      [v10 setPredicate:v13];

      v14 = sub_1A8C();
      v15 = [NSSortDescriptor sortDescriptorWithKey:v14 ascending:1];
      v37 = 0;
      v38 = &v37;
      v39 = 0x2020000000;
      v16 = qword_19A80;
      v40 = qword_19A80;
      v41[0] = v15;
      if (!qword_19A80)
      {
        v32 = _NSConcreteStackBlock;
        v33 = 3221225472;
        v34 = sub_1EF4;
        v35 = &unk_14348;
        v36 = &v37;
        v17 = sub_1C88();
        v18 = dlsym(v17, "kEpisodeUuid");
        *(v36[1] + 24) = v18;
        qword_19A80 = *(v36[1] + 24);
        v16 = v38[3];
      }

      _Block_object_dispose(&v37, 8);
      if (!v16)
      {
        sub_AA9C();
      }

      v19 = *v16;
      v20 = [NSSortDescriptor sortDescriptorWithKey:v19 ascending:1];
      v41[1] = v20;
      v21 = [NSArray arrayWithObjects:v41 count:2];
      [v10 setSortDescriptors:v21];

      v22 = [NSFetchedResultsController alloc];
      v37 = 0;
      v38 = &v37;
      v39 = 0x2050000000;
      v23 = qword_19A88;
      v40 = qword_19A88;
      if (!qword_19A88)
      {
        v32 = _NSConcreteStackBlock;
        v33 = 3221225472;
        v34 = sub_1F44;
        v35 = &unk_14348;
        v36 = &v37;
        sub_1F44(&v32);
        v23 = v38[3];
      }

      v24 = v23;
      _Block_object_dispose(&v37, 8);
      sharedInstance2 = [v23 sharedInstance];
      privateQueueContext = [sharedInstance2 privateQueueContext];
      v27 = sub_1A8C();
      v28 = [v22 initWithFetchRequest:v10 managedObjectContext:privateQueueContext sectionNameKeyPath:v27 cacheName:0];
      [(MTManualDownloadsObserver *)self setFrc:v28];

      v29 = [(MTManualDownloadsObserver *)self frc];
      [v29 setDelegate:self];

      v30 = _MTLogCategoryDatabase();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v32) = 0;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "MTManualDownloadsObserver performing first fetch", &v32, 2u);
      }

      v31 = [(MTManualDownloadsObserver *)self frc];
      [v31 performFetch:0];
    }
  }
}

- (MTManualDownloadsObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end