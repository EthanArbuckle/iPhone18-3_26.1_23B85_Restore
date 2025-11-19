@interface BYDaemonBackupController
- (BOOL)takeLock;
- (BYDaemonBackupController)initWithMigrationController:(id)a3;
- (BYDaemonBackupControllerDelegate)delegate;
- (void)attemptToBeginBackup:(unint64_t)a3;
- (void)manager:(id)a3 didFailBackupWithError:(id)a4;
- (void)manager:(id)a3 didUpdateProgress:(float)a4 estimatedTimeRemaining:(unint64_t)a5;
- (void)managerDidFinishBackup:(id)a3;
- (void)releaseLock;
- (void)startBackup;
@end

@implementation BYDaemonBackupController

- (BYDaemonBackupController)initWithMigrationController:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BYDaemonBackupController;
  v5 = [(BYDaemonBackupController *)&v10 init];
  if (v5)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v6 = qword_100028CD8;
    v15 = qword_100028CD8;
    if (!qword_100028CD8)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10000D9F8;
      v11[3] = &unk_100020568;
      v11[4] = &v12;
      sub_10000D9F8(v11);
      v6 = v13[3];
    }

    v7 = v6;
    _Block_object_dispose(&v12, 8);
    v8 = [[v6 alloc] initWithDelegate:v5];
    [(BYDaemonBackupController *)v5 setManager:v8];

    [(BYDaemonBackupController *)v5 setMigrationController:v4];
  }

  return v5;
}

- (void)startBackup
{
  v3 = [(BYDaemonBackupController *)self manager];
  v4 = [v3 isBackupEnabled];

  v5 = _BYLoggingFacility();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Ensuring migration is not running before attempting to start a backup...", buf, 2u);
    }

    v7 = [(BYDaemonBackupController *)self migrationController];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000CFEC;
    v9[3] = &unk_100020D80;
    v9[4] = self;
    [v7 waitForMigrationToCompleteWithTimeout:v9 completionBlock:1800.0];
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Backup is not enabled", buf, 2u);
    }

    v7 = [NSError errorWithDomain:@"BYDaemonBackupControllerErrorDomain" code:0 userInfo:0];
    v8 = [(BYDaemonBackupController *)self delegate];
    [v8 backupCompletedWithError:v7 dateOfLastBackup:0];
  }
}

- (void)attemptToBeginBackup:(unint64_t)a3
{
  v5 = objc_alloc_init(MBStartBackupOptions);
  v6 = +[MBCellularAccess inexpensiveCellularAccess];
  [v5 setCellularAccess:v6];

  v7 = [(BYDaemonBackupController *)self manager];
  v16 = 0;
  v8 = [v7 startBackupWithOptions:v5 error:&v16];
  v9 = v16;

  v10 = _BYLoggingFacility();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Backup started!", buf, 2u);
    }
  }

  else
  {
    if (v11)
    {
      *buf = 138412290;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Backup failed to start returning error: %@", buf, 0xCu);
    }

    if (a3)
    {
      v12 = _BYLoggingFacility();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v18 = 0x4024000000000000;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Will retry to start backup again in %f seconds...", buf, 0xCu);
      }

      v13 = dispatch_time(0, 10000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000D48C;
      block[3] = &unk_100020DA8;
      block[4] = self;
      block[5] = a3;
      dispatch_after(v13, &_dispatch_main_q, block);
    }

    else
    {
      [(BYDaemonBackupController *)self releaseLock];
      v14 = [(BYDaemonBackupController *)self delegate];
      [v14 backupCompletedWithError:v9 dateOfLastBackup:0];
    }
  }
}

- (BOOL)takeLock
{
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Taking device lock assertion during backup...", &buf, 2u);
  }

  v16 = @"MKBAssertionKey";
  v17 = @"RestoreFromBackup";
  v4 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  cf = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v5 = off_100028CE8;
  v15 = off_100028CE8;
  if (!off_100028CE8)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v19 = sub_10000DBB0;
    v20 = &unk_100020568;
    v21 = &v12;
    sub_10000DBB0(&buf);
    v5 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v5)
  {
    sub_100010C40();
    __break(1u);
  }

  [(BYDaemonBackupController *)self setBackupLockAssertion:v5(v4, &cf)];
  v6 = [(BYDaemonBackupController *)self backupLockAssertion]== 0;
  v7 = _BYLoggingFacility();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = cf;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to take device lock assertion: %@", &buf, 0xCu);
    }

    CFRelease(cf);
  }

  else
  {
    if (v8)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device lock assertion successful", &buf, 2u);
    }
  }

  v9 = [(BYDaemonBackupController *)self backupLockAssertion]!= 0;

  return v9;
}

- (void)releaseLock
{
  if ([(BYDaemonBackupController *)self backupLockAssertion])
  {
    v3 = _BYLoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Releasing device lock assertion taken during backup", v4, 2u);
    }

    CFRelease([(BYDaemonBackupController *)self backupLockAssertion]);
    [(BYDaemonBackupController *)self setBackupLockAssertion:0];
  }
}

- (void)manager:(id)a3 didFailBackupWithError:(id)a4
{
  v5 = a4;
  [(BYDaemonBackupController *)self releaseLock];
  v6 = [(BYDaemonBackupController *)self delegate];
  [v6 backupCompletedWithError:v5 dateOfLastBackup:0];
}

- (void)managerDidFinishBackup:(id)a3
{
  v4 = a3;
  [(BYDaemonBackupController *)self releaseLock];
  v6 = [(BYDaemonBackupController *)self delegate];
  v5 = [v4 dateOfLastBackup];

  [v6 backupCompletedWithError:0 dateOfLastBackup:v5];
}

- (void)manager:(id)a3 didUpdateProgress:(float)a4 estimatedTimeRemaining:(unint64_t)a5
{
  [(BYDaemonBackupController *)self lastPercentComplete];
  v8 = a4;
  if (v9 < 0.0 || ([(BYDaemonBackupController *)self lastPercentComplete], v8 - v10 >= 0.05))
  {
    [(BYDaemonBackupController *)self setLastPercentComplete:v8];
    v11 = [(BYDaemonBackupController *)self delegate];
    [v11 backupUpdatedProgress:a5 estimatedTimeRemaining:v8];
  }
}

- (BYDaemonBackupControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end