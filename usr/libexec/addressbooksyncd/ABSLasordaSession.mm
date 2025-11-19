@interface ABSLasordaSession
- (unsigned)syncSession:(id)a3 enqueueChanges:(id)a4 error:(id *)a5;
- (void)_batchSupplier;
- (void)dealloc;
- (void)lateSetupForSession:(id)a3;
- (void)syncSession:(id)a3 didEndWithError:(id)a4;
@end

@implementation ABSLasordaSession

- (void)lateSetupForSession:(id)a3
{
  v14.receiver = self;
  v14.super_class = ABSLasordaSession;
  v4 = a3;
  [(ABSSyncSession *)&v14 lateSetupForSession:v4];
  v5 = [(ABSSyncSession *)self options];
  v6 = [v5 objectForKeyedSubscript:off_1000719B8];
  self->_sessionSupportsContactAccountIDs = [v6 BOOLValue];

  v7 = 3;
  if (self->_sessionSupportsContactAccountIDs)
  {
    v7 = 1;
  }

  self->_state = v7;
  v8 = [[NDTResultsFIFO alloc] initWithFIFOLength:50 name:@"com.apple.contactsPipe"];
  fifo = self->_fifo;
  self->_fifo = v8;

  +[ABSContactsSyncObject clearMeCardSet];
  self->_gtLogger = ct_green_tea_logger_create();
  v10 = [v4 isResetSync];

  self->_isReset = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100029914;
  v13[3] = &unk_10005CDF0;
  v13[4] = self;
  v11 = [[NSThread alloc] initWithBlock:v13];
  producerThread = self->_producerThread;
  self->_producerThread = v11;

  [(NSThread *)self->_producerThread start];
}

- (unsigned)syncSession:(id)a3 enqueueChanges:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v63.receiver = self;
  v63.super_class = ABSLasordaSession;
  [(ABSSyncSession *)&v63 syncSession:v8 enqueueChanges:v9 error:a5];
  v10 = objc_retainBlock(v9);
  if ([(ABSLasordaSession *)self delayUs])
  {
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_10002A2F8;
    v61[3] = &unk_10005D718;
    v61[4] = self;
    v62 = v9;
    v11 = objc_retainBlock(v61);

    v10 = v11;
  }

  context = objc_autoreleasePoolPush();
  if ([v8 state] == 5)
  {
    v12 = [v8 error];

    if (v12)
    {
      v13 = *(qword_100071D00 + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10003B33C(v13, v8);
      }

      [(NDTResultsFIFO *)self->_fifo terminate];
      producerThread = self->_producerThread;
      self->_producerThread = 0;

      v15 = [v8 error];
      [(ABSSyncSession *)self setCapturedError:v15];

      goto LABEL_16;
    }
  }

  if (!self->_fifo)
  {
LABEL_16:
    v21 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "FIFO finished. Canceling session.", buf, 2u);
    }

    v22 = 3;
    goto LABEL_66;
  }

  v42 = 160;
  state = self->_state;
  if (state != 3)
  {
    if (state != 2)
    {
      if (state != 1)
      {
LABEL_36:
        if (state != 4)
        {
          goto LABEL_48;
        }

        v19 = objc_alloc_init(ABSFavoritesSyncObject);
        v24 = objc_alloc_init(ABSFavoritesDiffObject);
        v31 = [(ABSFavoritesSyncObject *)v19 sha];
        favsSha = self->_favsSha;
        self->_favsSha = v31;

        v33 = [(ABSFavoritesDiffObject *)v24 matches:v19];
        v34 = *(qword_100071D00 + 8);
        v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
        if (v33)
        {
          if (v35)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Not enqueuing favorites", buf, 2u);
          }

LABEL_47:
          *(&self->super.super.isa + v42) = 5;

          state = *(&self->super.super.isa + v42);
LABEL_48:
          if (state == 5 && self->_startCensus)
          {
            v36 = objc_alloc_init(ABSValidationSyncObject);
            v37 = [(ABSValidationSyncObject *)v36 isEqual:self->_startCensus];
            v38 = *(qword_100071D00 + 8);
            v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
            if (v37)
            {
              if (v39)
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Enqueuing validation", buf, 2u);
              }

              v40 = objc_alloc_init(ABSValidationSyncObject);
              if (((*(v10 + 2))(v10, v40) & 1) == 0 && os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
              {
                sub_10003B4F0();
              }
            }

            else if (v39)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Not enqueuing validation message.", buf, 2u);
            }
          }

          [(NDTResultsFIFO *)self->_fifo terminate];
          v22 = 2;
          goto LABEL_66;
        }

        if (v35)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Enqueuing favorites", buf, 2u);
        }

        [(ABSFavoritesSyncObject *)v19 setChangeType:2, 160];
        if ((*(v10 + 2))(v10, v19))
        {
          goto LABEL_47;
        }

        if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
        {
          sub_10003B4BC();
        }

LABEL_65:
        +[ABSSyncObject oops];

        v22 = 1;
LABEL_66:
        v27 = v9;
        goto LABEL_67;
      }

      v17 = +[ABSAccountsSyncObject sha];
      acctsSha = self->_acctsSha;
      self->_acctsSha = v17;

      v19 = objc_alloc_init(ABSAccountsDiffObject);
      if (([v8 isResetSync] & 1) != 0 || !-[ABSSyncObject matches:](v19, "matches:", 0))
      {
        v23 = *(qword_100071D00 + 8);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Enqueuing accounts", buf, 2u);
        }

        v24 = objc_alloc_init(ABSAccountsSyncObject);
        [(ABSFavoritesDiffObject *)v24 setChangeType:2];
        if (((*(v10 + 2))(v10, v24) & 1) == 0)
        {
          if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
          {
            sub_10003B3E8();
          }

          goto LABEL_65;
        }
      }

      else
      {
        v20 = *(qword_100071D00 + 8);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Account data unchanged, skipping", buf, 2u);
        }
      }

      self->_state = 2;
    }

    v25 = objc_alloc_init(ABSContainerSyncObject);
    if (((*(v10 + 2))(v10, v25) & 1) == 0)
    {
      if (os_log_type_enabled(*(qword_100071D00 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_10003B41C();
      }

      +[ABSSyncObject oops];

      v22 = 1;
      goto LABEL_66;
    }

    self->_state = 3;
  }

  v26 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Enqueuing contacts", buf, 2u);
  }

  *buf = 0;
  v58 = buf;
  v59 = 0x2020000000;
  v60 = 1;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v51 = 0x2020000000;
  v52 = 50;
  v49 = 0;
  v50 = &v49;
  v27 = v9;
  do
  {
    if (v50[6] < 1)
    {
      break;
    }

    if ([(ABSSyncSession *)self abortAfter]>= 1)
    {
      if (+[NDTLog isInternalDevice])
      {
        [(ABSSyncSession *)self setAbortAfter:[(ABSSyncSession *)self abortAfter]- 1];
        if (![(ABSSyncSession *)self abortAfter])
        {
          sub_10003B450();
        }
      }
    }

    fifo = self->_fifo;
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_10002A358;
    v44[3] = &unk_10005D740;
    v46 = buf;
    v47 = &v53;
    v29 = v10;
    v48 = &v49;
    v44[4] = self;
    v45 = v29;
    v30 = fifo;
    v27 = v9;
    [(NDTResultsFIFO *)v30 conditionalPop:v44];
  }

  while ((v58[24] & 1) != 0);
  if (v54[3])
  {
    self->_state = 4;
    _Block_object_dispose(&v49, 8);
    _Block_object_dispose(&v53, 8);
    _Block_object_dispose(buf, 8);
    state = self->_state;
    goto LABEL_36;
  }

  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(buf, 8);
  v22 = 1;
LABEL_67:
  objc_autoreleasePoolPop(context);

  return v22;
}

- (void)_batchSupplier
{
  v3 = objc_alloc_init(ABSContactsReality);
  [(ABSContactsReality *)v3 setIgnoreContactAccountIDs:!self->_sessionSupportsContactAccountIDs];
  v4 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sessionSupportsContactAccountIDs = self->_sessionSupportsContactAccountIDs;
    *buf = 67109120;
    v25 = sessionSupportsContactAccountIDs;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_batchSupplier:sessionSupportsContactAccountIds:%d", buf, 8u);
  }

  v6 = +[ABSContactsInterface sharedInstance];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10002A764;
  v22[3] = &unk_10005D190;
  v7 = v3;
  v23 = v7;
  [v6 accessSync:v22];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10002A770;
  v21[3] = &unk_10005D768;
  v21[4] = self;
  v8 = objc_retainBlock(v21);
  v9 = [(ABSLasordaSession *)self contactsSource];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10002A84C;
  v18[3] = &unk_10005D548;
  v19 = v7;
  v20 = v8;
  v16 = v20;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10002A8F8;
  v17[3] = &unk_10005D790;
  v17[4] = self;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10002A968;
  v15 = &unk_10005D7B8;
  v10 = v20;
  v11 = v7;
  [v9 enumerateContactsAdd:v18 remove:v17 lmaAdd:&v12];

  [(NDTResultsFIFO *)self->_fifo finish:v12];
}

- (void)syncSession:(id)a3 didEndWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "There was a session ending error (%{public}@). Setting exitNow flag on session", buf, 0xCu);
    }

    [(NDTResultsFIFO *)self->_fifo terminate];
  }

  else if ([v6 isSending])
  {
    v9 = +[ABSyncInterface sharedInstance];
    v10 = [v9 serverState];
    [v10 setStringValue:self->_favsSha forKey:@"com.apple.absd.favorites.sha"];

    v11 = +[ABSyncInterface sharedInstance];
    v12 = [v11 serverState];
    [v12 setStringValue:self->_acctsSha forKey:@"com.apple.absd.accounts.sha"];
  }

  v13.receiver = self;
  v13.super_class = ABSLasordaSession;
  [(ABSSyncSession *)&v13 syncSession:v6 didEndWithError:v7];
}

- (void)dealloc
{
  gtLogger = self->_gtLogger;
  ct_green_tea_logger_destroy();
  v4.receiver = self;
  v4.super_class = ABSLasordaSession;
  [(ABSLasordaSession *)&v4 dealloc];
}

@end