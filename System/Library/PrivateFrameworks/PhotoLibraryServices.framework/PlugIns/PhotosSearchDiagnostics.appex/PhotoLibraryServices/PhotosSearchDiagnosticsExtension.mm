@interface PhotosSearchDiagnosticsExtension
- (id)annotatedAttachmentsForParameters:(id)parameters;
- (id)filesystemQueue;
- (id)getContentsOfFileAtPath:(id)path timeout:(double)timeout;
@end

@implementation PhotosSearchDiagnosticsExtension

- (id)filesystemQueue
{
  if (qword_1000081C8 != -1)
  {
    dispatch_once(&qword_1000081C8, &stru_100004268);
  }

  v3 = qword_1000081C0;

  return v3;
}

- (id)getContentsOfFileAtPath:(id)path timeout:(double)timeout
{
  pathCopy = path;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "PhotosSearchDiagnostics is attempting to read file.", buf, 2u);
  }

  *buf = 0;
  v25 = buf;
  v26 = 0x3032000000;
  v27 = sub_1000011B8;
  v28 = sub_1000011C8;
  v29 = 0;
  v7 = dispatch_semaphore_create(0);
  v8 = [NSString stringWithContentsOfURL:pathCopy encoding:4 error:0];
  v9 = *(v25 + 5);
  *(v25 + 5) = v8;

  if (*(v25 + 5))
  {
    v10 = 0;
  }

  else
  {
    uRLByDeletingLastPathComponent = [pathCopy URLByDeletingLastPathComponent];
    v12 = uRLByDeletingLastPathComponent;
    v13 = open([uRLByDeletingLastPathComponent fileSystemRepresentation], 0x8000);

    if ((v13 & 0x80000000) != 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *v30 = 67109120;
        v31 = v13;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "PhotosSearchDiagnostics could not monitor filesystem. FD returned: %d", v30, 8u);
      }

      v10 = 0;
    }

    else
    {
      filesystemQueue = [(PhotosSearchDiagnosticsExtension *)self filesystemQueue];
      v10 = dispatch_source_create(&_dispatch_source_type_vnode, v13, 2uLL, filesystemQueue);

      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1000011D0;
      handler[3] = &unk_100004208;
      v23 = buf;
      v21 = pathCopy;
      v22 = v7;
      dispatch_source_set_event_handler(v10, handler);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000012CC;
      v18[3] = &unk_100004228;
      v19 = v13;
      dispatch_source_set_cancel_handler(v10, v18);
      dispatch_resume(v10);
    }

    v15 = dispatch_time(0, 1000000000 * timeout);
    if (dispatch_semaphore_wait(v7, v15) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *v30 = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "PhotosSearchDiagnostics timed out waiting for the diagnostic file to be created", v30, 2u);
    }
  }

  v16 = *(v25 + 5);

  _Block_object_dispose(buf, 8);

  return v16;
}

- (id)annotatedAttachmentsForParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = [PHPhotoLibrary alloc];
  v6 = +[PHPhotoLibrary systemPhotoLibraryURL];
  v7 = [v5 initWithPhotoLibraryURL:v6];

  v8 = NSTemporaryDirectory();
  v9 = [parametersCopy objectForKey:PHSearchFeedbackDiagnosticExtensionParameterKey];

  firstObject = [v9 firstObject];

  if (firstObject && ([NSURL URLWithString:firstObject], v11 = objc_claimAutoreleasedReturnValue(), [(PhotosSearchDiagnosticsExtension *)self getContentsOfFileAtPath:v11 timeout:5.0], v12 = objc_claimAutoreleasedReturnValue(), v11, v12))
  {
    v13 = [[NSData alloc] initWithBase64EncodedString:v12 options:0];
    v51 = 0;
    v14 = [NSJSONSerialization JSONObjectWithData:v13 options:0 error:&v51];
    v15 = v51;

    if (v14)
    {
      v16 = v15 == 0;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      v17 = [v14 objectForKeyedSubscript:PHSearchFeedbackDiagnosticExtensionSearchQueryInfoKey];
      v18 = [v14 objectForKeyedSubscript:PHSearchFeedbackDiagnosticExtensionVisibleAssetUUIDsKey];
      v15 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v53 = v15;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "PhotosSearchDiagnostics was unable to read data provided by Photos: %@", buf, 0xCu);
  }

  v17 = &off_100004510;
  v18 = &off_100004538;
LABEL_13:
  v47 = v14;
  v48 = firstObject;
  v49 = v8;
  v50 = v7;
  v45 = v18;
  v46 = v17;
  v19 = [PHSearchFeedbackDiagnostics collectDiagnosticsForLibrary:v7 resultJSON:v17 onScreenAssets:v18 toPath:v8];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v53 = v19;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "PhotosSearchDiagnostics gathered diagnostics from the following path: %@", buf, 0xCu);
  }

  v20 = +[NSMutableArray array];
  v44 = sub_1000018F0(v19, 3);
  path = [v44 path];
  v22 = [DEAttachmentItem attachmentWithPath:path];
  [v20 addObject:v22];

  v23 = PXLemonadeLocalizedString();
  v24 = PXLemonadeLocalizedString();
  [DEAnnotation annotateURL:v44 displayName:v23 description:v24 iconType:@"text" additionalInfo:0 error:0];

  v25 = sub_1000018F0(v19, 1);
  path2 = [v25 path];
  v27 = [DEAttachmentItem attachmentWithPath:path2];
  [v20 addObject:v27];

  v28 = PXLemonadeLocalizedString();
  [DEAnnotation annotateURL:v25 displayName:v28 description:&stru_1000043E8 iconType:@"text" additionalInfo:0 error:0];

  v29 = sub_1000018F0(v19, 2);
  path3 = [v29 path];
  v31 = [DEAttachmentItem attachmentWithPath:path3];
  [v20 addObject:v31];

  v32 = PXLemonadeLocalizedString();
  v33 = PXLemonadeLocalizedString();
  [DEAnnotation annotateURL:v29 displayName:v32 description:v33 iconType:@"text" additionalInfo:0 error:0];

  v34 = sub_1000018F0(v19, 4);
  path4 = [v34 path];
  v36 = [DEAttachmentItem attachmentWithPath:path4];
  [v20 addObject:v36];

  v37 = PXLemonadeLocalizedString();
  v38 = PXLemonadeLocalizedString();
  [DEAnnotation annotateURL:v34 displayName:v37 description:v38 iconType:@"folder" additionalInfo:0 error:0];

  v39 = [DEAnnotatedGroup alloc];
  v40 = PXLemonadeLocalizedString();
  v41 = PXLemonadeLocalizedString();
  v42 = [v39 initWithDisplayName:v40 localizedDescription:v41 iconType:@"folder" additionalInfo:0 attachmentItems:v20];

  return v42;
}

@end