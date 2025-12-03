@interface PBItem
- (id)persistentBookmarkFileNameForType:(id)type;
- (id)persistentFileNameForType:(id)type;
- (void)_saveRepresentationsToBaseURL:(id)l types:(id)types fileProtectionType:(id)type allowedToCopyOnPaste:(BOOL)paste completionBlock:(id)block;
- (void)setStorageBaseURL:(id)l;
@end

@implementation PBItem

- (id)persistentBookmarkFileNameForType:(id)type
{
  typeCopy = type;
  uUID = [(PBItem *)self UUID];
  v6 = sub_100014A3C(uUID, typeCopy);

  v7 = [v6 stringByAppendingString:@".bookmark"];

  return v7;
}

- (id)persistentFileNameForType:(id)type
{
  typeCopy = type;
  uUID = [(PBItem *)self UUID];
  v6 = sub_100014A3C(uUID, typeCopy);

  return v6;
}

- (void)setStorageBaseURL:(id)l
{
  lCopy = l;
  v5 = PBItemQueue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100014BF4;
  v7[3] = &unk_100031388;
  v7[4] = self;
  v8 = lCopy;
  v6 = lCopy;
  dispatch_sync(v5, v7);
}

- (void)_saveRepresentationsToBaseURL:(id)l types:(id)types fileProtectionType:(id)type allowedToCopyOnPaste:(BOOL)paste completionBlock:(id)block
{
  lCopy = l;
  typesCopy = types;
  typeCopy = type;
  blockCopy = block;
  if ([typesCopy count])
  {
    pasteCopy = paste;
    firstObject = [typesCopy firstObject];
    selfCopy = self;
    uUID = [(PBItem *)self UUID];
    v17 = sub_100014E64(uUID, lCopy, firstObject);

    v18 = [v17 URLByAppendingPathExtension:@"bookmark"];
    isFileURL = [v17 isFileURL];
    v37 = lCopy;
    v40 = v18;
    if (isFileURL)
    {
      uUID = +[NSFileManager defaultManager];
      path = [v17 path];
      if ([uUID fileExistsAtPath:path])
      {

LABEL_14:
        v23 = _PBLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v82 = v17;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Skipping save for already existing item representation: %@", buf, 0xCu);
        }

        v24 = [typesCopy subarrayWithRange:{1, objc_msgSend(typesCopy, "count") - 1}];
        v71 = _NSConcreteStackBlock;
        v72 = 3221225472;
        v73 = sub_100015FB4;
        v74 = &unk_100031B08;
        v75 = selfCopy;
        lCopy = v37;
        v76 = v37;
        v77 = v24;
        v78 = typeCopy;
        v80 = pasteCopy;
        v79 = blockCopy;
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
    path2 = [v40 path];
    v22 = [v20 fileExistsAtPath:path2];

    if (isFileURL)
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
    v65 = typesCopy;
    v66 = selfCopy;
    lCopy = v37;
    v67 = v37;
    v27 = typeCopy;
    v68 = v27;
    v70 = pasteCopy;
    v28 = blockCopy;
    v69 = v28;
    v29 = objc_retainBlock(v64);
    v30 = [(PBItem *)selfCopy representationConformingToType:firstObject];
    if ([v30 preferredRepresentation])
    {
      if ([v30 preferredRepresentation] == 2)
      {
        v49[0] = _NSConcreteStackBlock;
        v49[1] = 3221225472;
        v49[2] = sub_100016354;
        v49[3] = &unk_100031B58;
        v56 = pasteCopy;
        v31 = &v50;
        v26 = v40;
        v50 = v40;
        v51 = v17;
        v52 = selfCopy;
        v53 = firstObject;
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
      v45[1] = selfCopy;
      v46 = firstObject;
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
      v60 = selfCopy;
      v61 = firstObject;
      v62 = v28;
      v63 = v29;
      v33 = [v30 loadDataWithCompletion:v57];

      v34 = v59;
    }

    v26 = v40;
    goto LABEL_24;
  }

  if (blockCopy)
  {
    v43 = blockCopy;
    PBDispatchAsyncCallback();
    firstObject = v43;
LABEL_26:
  }
}

@end