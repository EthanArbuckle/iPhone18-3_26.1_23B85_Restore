@interface ABSContactsResetSource
- (ABSContactsResetSource)initWithKeys:(id)a3 store:(id)a4;
- (ABSContactsResetSource)initWithKeys:(id)a3 store:(id)a4 lmaData:(id)a5;
- (double)progress;
- (void)enumerateContactsAdd:(id)a3 remove:(id)a4 lmaAdd:(id)a5;
@end

@implementation ABSContactsResetSource

- (ABSContactsResetSource)initWithKeys:(id)a3 store:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = ABSContactsResetSource;
  v7 = [(ABSContactsSource *)&v10 initWithKeys:a3 store:v6];
  if (v7)
  {
    v8 = [v6 currentHistoryToken];
    [(ABSContactsSource *)v7 setHistoryAnchor:v8];
  }

  return v7;
}

- (ABSContactsResetSource)initWithKeys:(id)a3 store:(id)a4 lmaData:(id)a5
{
  v8 = a5;
  v9 = [(ABSContactsResetSource *)self initWithKeys:a3 store:a4];
  v10 = v9;
  if (v9)
  {
    [(ABSContactsResetSource *)v9 setLmaData:v8];
  }

  return v10;
}

- (void)enumerateContactsAdd:(id)a3 remove:(id)a4 lmaAdd:(id)a5
{
  v8 = a3;
  v35 = a4;
  v36 = a5;
  v9 = [(ABSContactsSource *)self store];
  v52 = 0;
  v10 = [v9 unifiedContactCountWithError:&v52];
  v11 = v52;
  v12 = [v10 integerValue];

  if ([(ABSContactsResetSource *)self shouldRunPartialResetSync])
  {
    v13 = 1000;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = [(ABSContactsResetSource *)self shouldRunPartialResetSync];
    *buf = 67109120;
    *&buf[4] = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Running partial reset sync = %d", buf, 8u);
  }

  if (v11)
  {
    v17 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100039F40(v11, v17);
    }
  }

  else
  {
    [(ABSContactsResetSource *)self setCountSoFar:0.0];
    if (v13)
    {
      [(ABSContactsResetSource *)self setCountRecip:1.0 / v13];
      if (v13 >= 1)
      {
        *buf = 0;
        v59 = buf;
        v60 = 0x2020000000;
        v61 = 0;
        v48 = 0;
        v49 = &v48;
        v50 = 0x2020000000;
        v51 = 0;
        *&v18 = 138543362;
        v34 = v18;
        do
        {
          if (v49[3])
          {
            break;
          }

          v45[0] = _NSConcreteStackBlock;
          v45[1] = 3221225472;
          v45[2] = sub_10000892C;
          v45[3] = &unk_10005CE68;
          v46 = v8;
          v47 = &v48;
          v45[4] = self;
          v19 = objc_retainBlock(v45);
          [(ABSContactsSource *)self gtLogger];
          v20 = getCTGreenTeaOsLogHandle();
          v21 = v20;
          if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            LOWORD(v55) = 0;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Reading contacts", &v55, 2u);
          }

          if ([(ABSContactsResetSource *)self shouldRunPartialResetSync])
          {
            v22 = objc_alloc_init(_PSPredictionContext);
            v23 = objc_alloc_init(_PSSuggester);
            v24 = [v23 suggestInteractionsFromContext:v22];
            *&v55 = 0;
            *(&v55 + 1) = &v55;
            v56 = 0x2020000000;
            v57 = 0;
            v40[0] = _NSConcreteStackBlock;
            v40[1] = 3221225472;
            v40[2] = sub_100008B20;
            v40[3] = &unk_10005CE90;
            v41 = v19;
            v42 = &v55;
            v43 = buf;
            v44 = v13;
            [v24 enumerateObjectsUsingBlock:v40];
            v25 = *(qword_100071D00 + 8);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v26 = *(*(&v55 + 1) + 24);
              *v53 = 67109120;
              v54 = v26;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "ResetSource enqueued %d contacts for partial sync", v53, 8u);
            }

            *(v59 + 3) = v13;

            _Block_object_dispose(&v55, 8);
          }

          else
          {
            v23 = [CNContact predicateForPreferredNameInRange:*(v59 + 3), 50];
            v27 = [CNContactFetchRequest alloc];
            v28 = [(ABSContactsSource *)self keysToFetch];
            v24 = [v27 initWithKeysToFetch:v28];

            [v24 setSortOrder:3];
            [v24 setPredicate:v23];
            [v24 setUnifyResults:1];
            v29 = [(ABSContactsSource *)self store];
            v39 = 0;
            v37[0] = _NSConcreteStackBlock;
            v37[1] = 3221225472;
            v37[2] = sub_100008C8C;
            v37[3] = &unk_10005CEB8;
            v38 = v19;
            [v29 enumerateContactsAndMatchInfoWithFetchRequest:v24 error:&v39 usingBlock:v37];
            v22 = v39;

            if (v22)
            {
              v30 = *(qword_100071D00 + 8);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                LODWORD(v55) = v34;
                *(&v55 + 4) = v22;
                _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "enumerateContactsAndMatchInfoWithFetchRequest call failed: %{public}@", &v55, 0xCu);
              }
            }

            *(v59 + 3) += 50;
          }
        }

        while (*(v59 + 3) < v13);
        _Block_object_dispose(&v48, 8);
        _Block_object_dispose(buf, 8);
      }
    }

    else
    {
      [(ABSContactsResetSource *)self setCountRecip:0.0];
    }

    v31 = [(ABSContactsResetSource *)self lmaData];
    v32 = v31 == 0;

    if (!v32)
    {
      v33 = [(ABSContactsResetSource *)self lmaData];
      v36[2](v36, v33);
    }
  }
}

- (double)progress
{
  [(ABSContactsResetSource *)self countSoFar];
  v4 = v3;
  [(ABSContactsResetSource *)self countRecip];
  return v4 * v5;
}

@end