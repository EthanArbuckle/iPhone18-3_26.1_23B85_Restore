@interface PBItem
- (id)persistentBookmarkFileNameForType:(id)a3;
- (id)persistentFileNameForType:(id)a3;
- (void)_saveRepresentationsToBaseURL:(id)a3 types:(id)a4 fileProtectionType:(id)a5 allowedToCopyOnPaste:(BOOL)a6 completionBlock:(id)a7;
- (void)setStorageBaseURL:(id)a3;
@end

@implementation PBItem

- (id)persistentBookmarkFileNameForType:(id)a3
{
  v4 = a3;
  v5 = [(PBItem *)self UUID];
  v6 = sub_100014A3C(v5, v4);

  v7 = [v6 stringByAppendingString:@".bookmark"];

  return v7;
}

- (id)persistentFileNameForType:(id)a3
{
  v4 = a3;
  v5 = [(PBItem *)self UUID];
  v6 = sub_100014A3C(v5, v4);

  return v6;
}

- (void)setStorageBaseURL:(id)a3
{
  v4 = a3;
  v5 = PBItemQueue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100014BF4;
  v7[3] = &unk_100031388;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)_saveRepresentationsToBaseURL:(id)a3 types:(id)a4 fileProtectionType:(id)a5 allowedToCopyOnPaste:(BOOL)a6 completionBlock:(id)a7
{
  v13 = a3;
  v14 = a4;
  v41 = a5;
  v42 = a7;
  if ([v14 count])
  {
    v38 = a6;
    v15 = [v14 firstObject];
    v39 = self;
    v16 = [(PBItem *)self UUID];
    v17 = sub_100014E64(v16, v13, v15);

    v18 = [v17 URLByAppendingPathExtension:@"bookmark"];
    v19 = [v17 isFileURL];
    v37 = v13;
    v40 = v18;
    if (v19)
    {
      v16 = +[NSFileManager defaultManager];
      v7 = [v17 path];
      if ([v16 fileExistsAtPath:v7])
      {

LABEL_14:
        v23 = _PBLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v82 = v17;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Skipping save for already existing item representation: %@", buf, 0xCu);
        }

        v24 = [v14 subarrayWithRange:{1, objc_msgSend(v14, "count") - 1}];
        v71 = _NSConcreteStackBlock;
        v72 = 3221225472;
        v73 = sub_100015FB4;
        v74 = &unk_100031B08;
        v75 = v39;
        v13 = v37;
        v76 = v37;
        v77 = v24;
        v78 = v41;
        v80 = v38;
        v79 = v42;
        v25 = v24;
        PBDispatchAsyncCallback();

        v26 = v40;
        goto LABEL_25;
      }

      if (([v18 isFileURL] & 1) == 0)
      {

        goto LABEL_18;
      }
    }

    else if (([v18 isFileURL] & 1) == 0)
    {
      goto LABEL_18;
    }

    v20 = +[NSFileManager defaultManager];
    v21 = [v40 path];
    v22 = [v20 fileExistsAtPath:v21];

    if (v19)
    {

      v17 = v36;
      if (v22)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v17 = v36;
      if (v22)
      {
        goto LABEL_14;
      }
    }

LABEL_18:
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_100015FCC;
    v64[3] = &unk_100031B08;
    v65 = v14;
    v66 = v39;
    v13 = v37;
    v67 = v37;
    v27 = v41;
    v68 = v27;
    v70 = v38;
    v28 = v42;
    v69 = v28;
    v29 = objc_retainBlock(v64);
    v30 = [(PBItem *)v39 representationConformingToType:v15];
    if ([v30 preferredRepresentation])
    {
      if ([v30 preferredRepresentation] == 2)
      {
        v49[0] = _NSConcreteStackBlock;
        v49[1] = 3221225472;
        v49[2] = sub_100016354;
        v49[3] = &unk_100031B58;
        v56 = v38;
        v31 = &v50;
        v26 = v40;
        v50 = v40;
        v51 = v17;
        v52 = v39;
        v53 = v15;
        v54 = v29;
        v55 = v28;
        v32 = [v30 loadOpenInPlaceWithCompletion:v49];

LABEL_24:
        v25 = v65;
LABEL_25:

        goto LABEL_26;
      }

      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_100016668;
      v44[3] = &unk_100031B80;
      v31 = v45;
      v45[0] = v17;
      v45[1] = v39;
      v46 = v15;
      v47 = v28;
      v48 = v29;
      v35 = [v30 loadFileCopyWithCompletion:v44];

      v34 = v46;
    }

    else
    {
      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = sub_1000160D8;
      v57[3] = &unk_100031B30;
      v31 = &v58;
      v58 = v17;
      v59 = v27;
      v60 = v39;
      v61 = v15;
      v62 = v28;
      v63 = v29;
      v33 = [v30 loadDataWithCompletion:v57];

      v34 = v59;
    }

    v26 = v40;
    goto LABEL_24;
  }

  if (v42)
  {
    v43 = v42;
    PBDispatchAsyncCallback();
    v15 = v43;
LABEL_26:
  }
}

@end